//
// Created by os on 7/18/23.
//

#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"

PCB* PCB::running=nullptr;

void PCB::yield() {
    pushRegs();

    dispatch();

    popRegs();
}

PCB *PCB::createThread(PCB::Body body, uint64* stack, void* arg) {
    return new PCB(body, stack, arg);
}

void PCB::dispatch() {
    PCB* old=running;
    if(!old->isFinished()){
        Scheduler::put(old);
    }
    running=Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
}

PCB::PCB(PCB::Body body, uint64* stack, void* arg):body(body),
                            stack(body!=nullptr? stack : nullptr),
                            context({body!=nullptr? (uint64) body : 0,
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
                                     }),
                            finished(false),
                            arg(arg)

    {
        if(body!=nullptr) Scheduler::put(this);
    }

PCB::~PCB() {
    mem_free(stack);
}

int PCB::thread_exit() {
    running->setFinished(true);
    yield();
    //delete running niti mozda ovde
    return 0;
}

void PCB::thread_start() {
    __asm__ volatile("csrw ra, sepc");
    __asm__ volatile("sret");

}
    