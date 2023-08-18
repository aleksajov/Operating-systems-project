//
// Created by os on 7/18/23.
//

//sa vezbi 7

#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"

uint64  TCB::timeSliceCounter=0;
TCB* TCB::running=nullptr;
bool TCB::newThrUserMode=false;

void TCB::yield() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    return new TCB(body, stack, arg, DEFAULT_TIME_SLICE);
}

void TCB::dispatch() {
    TCB* old=running;
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
        Scheduler::put(old);
    }

    running=Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
                                    stack(body!=nullptr? stack : nullptr),
                                    context({(uint64)&threadWrapper,
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
                                     }),
                                     timeSlice(timeSlice),
                                     finished(false),
                                     arg(arg),
                                     blocked(false),
                                     sleeping(false)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    //mem_free(stack);
    delete[] stack;
}

void TCB::threadWrapper() {
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();
}

void *TCB::operator new(uint64 n) {
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    return ptr;
}

void TCB::operator delete[](void *p) {
    MemoryAllocator::free(p);
}

int TCB::exit() {
    if(TCB::running->isFinished()){
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
        TCB::dispatch();
        return 0;
    }
}

void TCB::join(TCB *thr) {
    while(!thr->isFinished()){
        TCB::timeSliceCounter=0;
        TCB::dispatch();
    }
}






    