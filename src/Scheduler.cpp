//
// Created by os on 7/14/23.
//
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(TCB *t) {
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    //Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    newElem->t=t;
    newElem->next= nullptr;

    if(first==nullptr){
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    }
}

TCB *Scheduler::get() {
    if(first==nullptr)return nullptr;

    Elem* elem=first;
    TCB* t=elem->t;

    MemoryAllocator::free(elem);
    //mem_free(elem);

    first=first->next;
    if(first==nullptr)last=nullptr;

    return t;
}

