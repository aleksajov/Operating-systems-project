//
// Created by os on 7/18/23.
//

//sa vezbi 7

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    }

    using Body=void (*)(void*);
    static TCB* createThread(Body body, uint64* stack, void* arg);

    static void yield();


    static TCB* running;

    static int thread_exit();
    static void thread_start();

    void* operator new(uint64 n);

private:
    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    void* arg;


    static void dispatch();
    static void contextSwitch(Context *old, Context* running);


    friend class Riscv;

    static void threadWrapper();

    static uint64 constexpr TIME_SLICE=DEFAULT_TIME_SLICE;

    static uint64  timeSliceCounter;

    explicit TCB(Body body, uint64* stack, void* arg, uint64 timeSlice);

};




#endif //PROJECT_BASE_TCB_HPP
