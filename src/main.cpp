//
// Created by os on 6/29/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../h/trap.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

int main(){

    __asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();

    /*
    Thread* t1=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    Thread* t2=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    Thread* t3=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    Thread* t4=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);

    Scheduler::put(t1);
    Scheduler::put(t2);
    Scheduler::put(t3);
    Scheduler::put(t4);

    t1=Scheduler::get();
    Scheduler::get();
    Scheduler::get();
    Scheduler::get();

    MemoryAllocator::free(t4);
    MemoryAllocator::free(t3);
    MemoryAllocator::free(t2);
    MemoryAllocator::free(t1);

    void* ptr=mem_alloc(129);
    void* ptr2= mem_alloc(68);
    int stat=mem_free(ptr);
    stat= mem_free(ptr2);
    if(stat<0){
        __putc('c');
    }
    if(ptr);
*/


    return 0;
}