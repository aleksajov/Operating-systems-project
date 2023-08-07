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
void userMainWrapper(void*){
    userMain();
}

int main(){

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);

    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida



    /*TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running=threads[0];

    //TCB::newThrUserMode=true;
    thread_create( &threads[1], workerBodyA,nullptr);
    thread_create(&threads[2], workerBodyB,nullptr);
    thread_create(&threads[3], workerBodyC,nullptr);
    thread_create(&threads[4], workerBodyD,nullptr);


    TCB::newThrUserMode=true;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        thread_dispatch();

    for(auto &thread :threads)
        delete thread;

    printString("Finished\n");*/




    TCB::newThrUserMode=false;
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    TCB::running=handleMain;

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);


    TCB::newThrUserMode=true;
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while (!handleUserMain->isFinished()){
        thread_dispatch();
    }

    delete handleUserMain;
    delete handleIdle;
    delete handleMain;

    return 0;
}