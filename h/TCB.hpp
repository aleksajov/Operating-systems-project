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

    bool isBlocked() const {
        return blocked;
    }

    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    }

    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    }

    using Body=void (*)(void*);
    static TCB* createThread(Body body, uint64* stack, void* arg);

    static int exit();

    static void join(TCB*);

    //ne koristiti
    static void yield();


    static TCB* running;

    static bool newThrUserMode;

    void* operator new(uint64 n);
    void operator delete[](void *p);

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
    bool blocked;
    bool sleeping;
    bool userMode;

    static void dispatch();
    static void contextSwitch(Context *old, Context* running);


    friend class Riscv;
    friend class _sem;

    static void threadWrapper();

    static uint64 constexpr TIME_SLICE=DEFAULT_TIME_SLICE;

    static uint64  timeSliceCounter;

    TCB(Body body, uint64* stack, void* arg, uint64 timeSlice);

};




#endif //PROJECT_BASE_TCB_HPP
