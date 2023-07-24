//
// Created by os on 7/5/23.
//
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../h/syscall_c.hpp"


extern "C" void handleSupervisorTrap(){
    uint64 valScause;
    //__asm__ volatile("csrr %[scause], scause" : [scause] "=r" (valScause));
    __asm__ volatile("csrr %0, scause" : "=r" (valScause));

    if(valScause==0x02UL || valScause==0x05UL || valScause==0x07UL){

        //odstampati scause kad se odradi fja za ispis
        //ovi prekidi se ne obradjuju
        __putc('x');
        return;

    }

    else if(valScause==0x09UL || valScause==0x08UL)
    {
        //sist. poziv iz sist. ili korisn. rezima
        uint64 sepcSaved;
        __asm__ volatile("csrr %0, sepc": "=r"(sepcSaved));

        /*
        cuvanje sstatus, videcemo da li je potrebno
        uint64 sstatusSaved;
        __asm__ volatile("csrr %0, sstatus": "=r"(sstatusSaved));
         */

        uint64 a0;
        __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));


        if(a0==0x01){
            //mem_alloc
            uint64 a1;
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));

            void *ptr=MemoryAllocator::alloc(a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
        }
        else if(a0==0x02){
           //mem_free
            uint64 a1;
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));

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
            uint64 a1;
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
            uint64 a2;
            __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
            uint64 a3;
            __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
            uint64 a4;
            __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));

            PCB* handle= PCB::createThread((PCB::Body)a2,(uint64*)a4, (void*)a3);

        }

        else if(a0==0x12){//thread_exit()
            int stat=PCB::thread_exit();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }


        //vratiti vrednost u sstatus
        __asm__ volatile("csrw sepc, %0": :"r"(sepcSaved+4));

    }

    if(valScause==(1UL<<63 | 0x09)){
        console_handler();
    }

}

