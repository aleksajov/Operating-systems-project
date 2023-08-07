//
// Created by os on 7/24/23.
//
//sa vezbi 7
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"



void Riscv::handleSupervisorTrap(){
    uint64 scause=r_scause();

    volatile uint64 a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    volatile uint64 a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    volatile uint64 a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    volatile uint64 a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    volatile uint64 a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));

    if(scause==0x09UL || scause==0x08UL){
        //09 iz sist rezima, 08 iz korisnickog
        uint64 sepc=r_sepc()+4;
        uint64 sstatus=r_sstatus();

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


            //thread_t *han=(thread_t *)a1;
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
            if(TCB::running->isFinished()){
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
            }
            else{
                //TCB* exited=TCB::running;
                TCB::running->setFinished(true);
                TCB::dispatch();
                //delete exited; ovde se nikad ne vraca
            }
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


        w_sstatus(sstatus);
        w_sepc(sepc);
    }

    else{
        //exception
        //za sada nepoznato dodati odradjeni deo
        //print scause
        //print sepc
        //print stval
        printInt(scause);
        //while(true);
    }

}

void Riscv::timerInterrupt() {
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
        //prekid od tajmera, softverski prekid

        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
            uint64 sepc=r_sepc();
            uint64 sstatus=r_sstatus();
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

    Riscv::ms_sstatus(SSTATUS_SPIE);
    //Riscv::mc_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}