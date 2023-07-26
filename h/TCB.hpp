//
// Created by os on 7/18/23.
//

#ifndef PROJECT_BASE_PCB_HPP
#define PROJECT_BASE_PCB_HPP

#include "../lib/hw.h"

class PCB{
public:
    virtual ~PCB();
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        PCB::finished = finished;
    }

    using Body=void (*)(void*);
    static PCB* createThread(Body body, uint64* stack, void* arg);

    static void yield();


    static PCB* running;

    static void pushRegs();
    static void popRegs();

    static int thread_exit();
    static void thread_start();

private:
    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    bool finished;
    void* arg;


    static void dispatch();
    static void contextSwitch(Context *old, Context* running);




    PCB(Body body, uint64* stack, void* arg);

};




#endif //PROJECT_BASE_PCB_HPP
