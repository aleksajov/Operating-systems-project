//
// Created by os on 7/14/23.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class Thread;

class Scheduler{

public:
    static void put(Thread* t);
    static Thread* get();

    Scheduler(const Scheduler&)=delete;
    Scheduler& operator=(const Scheduler&)=delete;

    struct Elem{
        Thread* t;
        Elem* next;
    };

private:
    static Elem* first;
    static Elem* last;
};


#endif //PROJECT_BASE_SCHEDULER_HPP
