//
// Created by os on 8/15/23.
//

#ifndef PROJECT_BASE__CONSOLE_HPP
#define PROJECT_BASE__CONSOLE_HPP

#include "../h/_sem.hpp"



static const int BUFF_CAP=1000;

class BoundedBuffer{
public:
    BoundedBuffer();
    ~BoundedBuffer();

    void put(char);
    char take();

private:
    char* buffer;
    int head, tail;
    _sem* spaceAvailable, *itemAvailable;
};

class _console{
public:
    static void inputBuff_put(char);
    static char inputBuff_get();

    static void outputBuff_put(char);
    static char outputBuff_get();

    static void consumerConsole(void*);

private:
    static BoundedBuffer* outputBuff;
    static BoundedBuffer* inputBuff;


    friend int main();
};

#endif //PROJECT_BASE__CONSOLE_HPP
