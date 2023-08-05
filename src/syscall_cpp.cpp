//
// Created by os on 7/21/23.
//

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    //myHandle->setFinished(true);
    delete myHandle;
}

int Thread::start() {
    return thread_create(&myHandle,this->body, this->arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() {

}

void Thread::join() {

}

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {

}

int Semaphore::wait() {
    return 0;
}

int Semaphore::signal() {
    return 0;
}

void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return 0;
}

void Console::putc(char) {

}
