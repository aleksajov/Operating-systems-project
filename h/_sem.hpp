//
// Created by os on 8/8/23.
//

#ifndef PROJECT_BASE__SEM_HPP
#define PROJECT_BASE__SEM_HPP

#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}

    static _sem* open(int val);
    int close();
    int wait();
    int signal();

    int value()const{return val;}

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    }

protected:
    void block();
    void unblock();

private:
    int val;
    List<TCB> blocked;
    bool closed;
};


#endif //PROJECT_BASE__SEM_HPP
