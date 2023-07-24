//
// Created by os on 6/29/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../h/trap.hpp"
#include "../h/syscall_c.hpp"
#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/print.hpp"
#include "../src/workers.hpp"

int main(){

    __asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();

    PCB *threads[3];

    threads[0]= PCB::createThread(nullptr, nullptr);
    PCB::running=threads[0];//main nit

    uint64 *stack1=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    uint64 *stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);

    threads[1]= PCB::createThread(workerBodyA, stack1);
    threads[2]= PCB::createThread(workerBodyB, stack2);

    while(!(threads[1]->isFinished() && threads[2]->isFinished()))
        PCB::yield();

    for(auto &thread :threads)
        delete thread;
    printString("Finished\n");


    return 0;
}