//
// Created by os on 6/29/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
#include "../h/Scheduler.hpp"
#include "../h/_console.hpp"

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

    _console::inputBuff=new BoundedBuffer();
    _console::outputBuff=new BoundedBuffer();


    TCB::newThrUserMode=false;
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    TCB::running=handleMain;

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);

    TCB* handleConsumerConsole;
    thread_create(&handleConsumerConsole, _console::consumerConsole,nullptr);

    //thread_dispatch();

    TCB::newThrUserMode=true;
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while (!handleUserMain->isFinished()){
        thread_dispatch();
    }


    thread_dispatch();//da nit za ispis na konzolu odradi pre returna

    delete handleUserMain;
    delete handleIdle;
    delete handleMain;
    delete handleConsumerConsole;


    /*delete _console::inputBuff;
    delete _console::outputBuff;*/


    //Scheduler::get();
    //Scheduler::get();

    return 0;
}