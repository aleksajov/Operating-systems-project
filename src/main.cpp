//
// Created by os on 6/29/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../h/trap.hpp"
#include "../h/syscall_c.hpp"
#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"

int main(){

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);

    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida




    uint64 *stack1=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    uint64 *stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    uint64 *stack3=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    uint64 *stack4=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);




    TCB *threads[5];

    threads[0]= TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running=threads[0];//main nit



    threads[1]= TCB::createThread(workerBodyA, stack1, nullptr);
    threads[2]= TCB::createThread(workerBodyB, stack2, nullptr);
    threads[3]= TCB::createThread(workerBodyC, stack3, nullptr);
    threads[4]= TCB::createThread(workerBodyD, stack4, nullptr);


    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        TCB::yield();

    for(auto &thread :threads)
        delete thread;
    printString("Finished\n");


    /*thread_t handle1;
    thread_t handle2;
    thread_create(&handle1, workerBodyA,nullptr);
    thread_create(&handle2, workerBodyB,nullptr);
    thread_dispatch();*/



    return 0;
}