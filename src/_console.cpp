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
            char c = _console::outputBuff_get();
            *(char *) CONSOLE_TX_DATA = c;
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0){
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    spaceAvailable=_sem::open(BUFF_CAP);
    itemAvailable=_sem::open(0);
}

void BoundedBuffer::put(char c) {
    spaceAvailable->wait();
    buffer[tail]=c;
    tail=(tail+1)%BUFF_CAP;
    itemAvailable->signal();
}


char BoundedBuffer::take() {
    //poziva se ovaj wait dok nije usao u prekid sto nije dobro
    //itemAvailable->wait();
    sem_wait(itemAvailable);
    char c=buffer[head];
    head=(head+1)%BUFF_CAP;
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

void _console::inputBuff_put(char c) {
    inputBuff->put(c);
}

char _console::inputBuff_get() {
    return inputBuff->take();
}

void _console::outputBuff_put(char c) {
    outputBuff->put(c);
}

char _console::outputBuff_get() {
    return outputBuff->take();
}

