//
// Created by os on 7/14/23.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class TCB;

class Scheduler{

public:
    static void put(TCB* t);
    static TCB* get();

    struct Elem{
        TCB* t;
        Elem* next;
    };

private:
    static Elem* first;
    static Elem* last;
};


#endif //PROJECT_BASE_SCHEDULER_HPP
