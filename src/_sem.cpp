//
// Created by os on 8/8/23.
//

#include "../h/_sem.hpp"
#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    return ptr;
}

void _sem::operator delete(void *p) {
    MemoryAllocator::free(p);
}

int _sem::wait() {
    if(this->isClosed())return -1;
    if(--val<0){
        block();
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    TCB::running->setBlocked(true);
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    TCB::dispatch();
}

int _sem::signal() {
    if(this->isClosed())return -1;
    if(++val<=0){
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
}

int _sem::close() {
    if(this->isClosed())return -1;
    this->setClosed(true);
    while(blocked.peekFirst()){
        unblock();
    }
    return 0;
}
