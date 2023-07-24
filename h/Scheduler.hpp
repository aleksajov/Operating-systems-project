//
// Created by os on 7/14/23.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class PCB;

class Scheduler{

public:
    static void put(PCB* t);
    static PCB* get();

    Scheduler(const Scheduler&)=delete;
    Scheduler& operator=(const Scheduler&)=delete;

    struct Elem{
        PCB* t;
        Elem* next;
    };

private:
    static Elem* first;
    static Elem* last;
};


#endif //PROJECT_BASE_SCHEDULER_HPP
