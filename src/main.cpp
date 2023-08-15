//
// Created by os on 6/29/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
#include "../h/Scheduler.hpp"

extern void userMain();

void idleThread(void *p) {
    while(true){ thread_dispatch(); }
}
void userMainWrapper(void*){
    userMain();
}

int main(){

    MemoryAllocator::initialize();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);


    TCB::newThrUserMode=false;
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    TCB::running=handleMain;

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);

    //thread_dispatch();

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

    //Scheduler::get();
    //Scheduler::get();


    return 0;
}