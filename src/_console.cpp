//
// Created by os on 8/15/23.
//

#include "../h/_console.hpp"
#include "../h/syscall_c.hpp"

BoundedBuffer* _console::outputBuff= nullptr;
BoundedBuffer* _console::inputBuff= nullptr;


void _console::consumerConsole(void*){
    while(true) {
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
            char c = _console::outputBuff_take();
            *(char *) CONSOLE_TX_DATA = c;
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0), count(0){
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    spaceAvailable=_sem::open(BUFF_CAP);
    itemAvailable=_sem::open(0);
}

void BoundedBuffer::put(char c) {
    spaceAvailable->wait();
    buffer[tail]=c;
    tail=(tail+1)%BUFF_CAP;
    count++;
    itemAvailable->signal();
}


char BoundedBuffer::takeFromInterrupt() {
    itemAvailable->wait();
    char c=buffer[head];
    head=(head+1)%BUFF_CAP;
    count--;
    spaceAvailable->signal();
    return c;
}

BoundedBuffer::~BoundedBuffer() {
    MemoryAllocator::free(buffer);
    /*itemAvailable->close();
    spaceAvailable->close();*/
    sem_close(itemAvailable);
    sem_close(spaceAvailable);
}

char BoundedBuffer::takeFromSysThread() {
    sem_wait(itemAvailable);
    char c=buffer[head];
    head=(head+1)%BUFF_CAP;
    count--;
    sem_signal(spaceAvailable);
    return c;
}

bool BoundedBuffer::isFull() {
    return count==BUFF_CAP;
}

void _console::inputBuff_put(char c) {
    inputBuff->put(c);
}

char _console::inputBuff_take() {
    return inputBuff->takeFromInterrupt();
}

void _console::outputBuff_put(char c) {
    outputBuff->put(c);
}

char _console::outputBuff_take() {
    return outputBuff->takeFromSysThread();
}

bool _console::inputBuff_full() {
    return inputBuff->isFull();
}

