//
// Created by os on 7/24/23.
//
//sa vezbi 7
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
#include "../h/_sem.hpp"
#include "../h/Scheduler.hpp"

Riscv::SleepingElem* Riscv::headSleeping=nullptr;

void Riscv::handleEcallException(){
    uint64 scause=r_scause();

    uint64 volatile a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    uint64 volatile a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    uint64 volatile a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    uint64 volatile a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    uint64 volatile a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));

    if(scause==0x09UL || scause==0x08UL){
        //09 iz sist rezima, 08 iz korisnickog
        uint64 volatile sepc=r_sepc()+4;
        uint64 volatile sstatus=r_sstatus();

        if(a0==0x01){
            //mem_alloc
            void *ptr=MemoryAllocator::alloc(a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
        }
        else if(a0==0x02){
            //mem_free
            int stat=MemoryAllocator::free((void*)a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }

        else if(a0==0x11){
            /*thread_create
            a1- thread_t* handle
             a2- *start_routine
             a3- void* arg
             a4- uint64* stack
            */

            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);

            if(!handle){
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
            }
            else{
                //*han=(thread_t)handle;
                TCB** retHandle=(TCB**)a1;
                *retHandle=handle;
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
            }

        }
        else if(a0==0x12){
            //thread_exit()
            /*if(TCB::running->isFinished()){
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
            }
            else{
                //TCB* exited=TCB::running;
                TCB::running->setFinished(true);
                TCB::dispatch();
                //delete exited; ovde se nikad ne vraca
            }*/
            int stat=TCB::exit();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }
        else if(a0==0x13){
            //thread_dispatch()
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        else if(a0==0x41){
            //char getc();
            char c=__getc();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
        }
        else if(a0==0x42){
            //void putc()

            __putc((char)a1);
        }
        else if(a0==0x21){
            //sem_open
            //a1 - sem_t* handle
            //a2 - unsigned int init
            _sem* handle=_sem::open((int)a2);
            if(!handle){
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
            }
            else{
                _sem** retHandle=(_sem**)a1;
                *retHandle=handle;
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
            }
        }
        else if(a0==0x23){
            //sem_wait(sem_t id)
            _sem* handle=(_sem*) a1;
            int stat=handle->wait();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }
        else if(a0==0x22){
            //sem_close(sem_t handle)
            _sem* handle=(_sem*) a1;
            int stat=handle->close();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }
        else if(a0==0x24){
            //sem_signal(sem_t id)
            _sem* handle=(_sem*) a1;
            int stat=handle->signal();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }
        else if(a0==0x14){
            //thread_join(thread_t)
            TCB::join((TCB*)a1);
        }
        else if(a0==0x31){
            //time_sleep(time_t)
            time_t time=(time_t)a1;
            int stat=Riscv::putToSleep(time);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }

    else{
        printString("GRESKA:");
        printInt(scause);
        printString("\n");
        while(true);
    }

}

void Riscv::timerInterrupt() {
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
        //prekid od tajmera, softverski prekid

        updateSleepingList();

        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
            uint64 volatile sepc=r_sepc();
            uint64 volatile sstatus=r_sstatus();
            TCB::timeSliceCounter=0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
}

void Riscv::hardwareInterrupt() {
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
        //prekid konzola
        console_handler();
    }
}



void Riscv::popSppSpie() {


    //Riscv::mc_sstatus(SSTATUS_SPIE);
    /*if(TCB::newThrUserMode){
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }*/
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::running->userMode){
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    TCB::running->setSleeping(true);

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    newElem->thr=TCB::running;

    if(!Riscv::headSleeping){
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
            newElem->toSleepRel=time;
            newElem->next=Riscv::headSleeping;
            headSleeping->toSleepRel-=time;
            headSleeping=newElem;
        }
        else{
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
            SleepingElem* pom=headSleeping->next;
            SleepingElem* prev=headSleeping;
            while(pom!=nullptr && relTime>pom->toSleepRel){
                relTime-=pom->toSleepRel;
                prev=pom;
                pom=pom->next;
            }
            if(pom==nullptr){
                newElem->next= nullptr;
            }
            else{
                newElem->next=pom;
                pom->toSleepRel-=relTime;
            }
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    TCB::dispatch();
    return 0;
}

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
        if(--headSleeping->toSleepRel==0){
            headSleeping->thr->setSleeping(false);
            Scheduler::put(headSleeping->thr);
            SleepingElem* old=headSleeping;
            headSleeping=headSleeping->next;
            MemoryAllocator::free(old);
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
                headSleeping->thr->setSleeping(false);
                Scheduler::put(headSleeping->thr);
                old=headSleeping;
                headSleeping=headSleeping->next;
                MemoryAllocator::free(old);
            }
        }
    }
}
