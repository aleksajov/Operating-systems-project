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
#include "../test/printing.hpp"

extern void userMain();

void idleThread(void *p) {
    while(true){ thread_dispatch(); }
}

int main(){

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);

    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida




    /*uint64 *stack1=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);
    uint64 *stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);
    uint64 *stack3=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);
    uint64 *stack4=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);




    TCB *threads[5];

    threads[0]= TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running=threads[0];//main nit



    threads[1]= TCB::createThread(workerBodyA, stack1, nullptr);
    threads[2]= TCB::createThread(workerBodyB, stack2, nullptr);
    threads[3]= TCB::createThread(workerBodyC, stack3, nullptr);
    threads[4]= TCB::createThread(workerBodyD, stack4, nullptr);


    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        TCB::yield();

    for(auto &thread :threads)
        delete thread;
    printString("Finished\n");*/











    //TCB::newThrUserMode=true;

    TCB *threads[5];
    /*thread_t* handle1=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle2=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle3=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle4=(thread_t*) mem_alloc(sizeof (thread_t));*/

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running=threads[0];

    /*thread_create( handle1, workerBodyA,nullptr);
    thread_create(handle2, workerBodyB,nullptr);
    thread_create(handle3, workerBodyC,nullptr);
    thread_create(handle4, workerBodyD,nullptr);*/

    thread_create( &threads[1], workerBodyA,nullptr);
    thread_create(&threads[2], workerBodyB,nullptr);
    thread_create(&threads[3], workerBodyC,nullptr);
    thread_create(&threads[4], workerBodyD,nullptr);

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida


    //while(!((*(TCB**)handle1)->isFinished() && (*(TCB**)handle2)->isFinished()&& (*(TCB**)handle3)->isFinished())&& (*(TCB**)handle4)->isFinished())
        //thread_dispatch();

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        thread_dispatch();

    for(auto &thread :threads)
        delete thread;

    printString("Finished\n");

    /*delete *handle1;
    delete *handle2;
    delete *handle3;
    delete *handle4;
    delete handle1;
    delete handle2;
    delete handle3;
    delete handle4;*/
















    /*TCB::newThrUserMode=false;
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    TCB::running=handleMain;

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);

    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    TCB::newThrUserMode=true;
    Riscv::popSppSpie();
    userMain();*/

    return 0;
}