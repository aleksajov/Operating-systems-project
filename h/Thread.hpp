//
// Created by os on 7/14/23.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../h/Scheduler.hpp"

class Thread{
public:
    Thread(void (*fun)(void*), void* args);
    Thread(){}

    void start();

protected:
    //Thread();
    virtual void run(){}
};

#endif //PROJECT_BASE_THREAD_HPP
