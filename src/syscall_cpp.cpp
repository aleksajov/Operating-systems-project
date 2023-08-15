//
// Created by os on 7/21/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    ((Thread*)t)->run();
}


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

Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}

void Thread::join() {
    thread_join(myHandle);
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
    //delete myHandle;
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

/*Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {

}

int Semaphore::wait() {
    return 0;
}

int Semaphore::signal() {
    return 0;
}*/

void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}



