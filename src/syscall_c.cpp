//
// Created by os on 7/6/23.
//


#include "../h/syscall_c.hpp"

void commonPartSysCalls(int code, ...){
    __asm__ volatile("ecall");
}




void *mem_alloc(size_t size) {
    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));

    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return (void*)ret;

    /*
    __asm__ volatile("mv a1, %0": : "r"((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */
}

int mem_free(void *ptr) {
    commonPartSysCalls(0x02, (uint64)ptr);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    if(start_routine!=nullptr){
        char* stack=(char*) mem_alloc(DEFAULT_STACK_SIZE);
        if(stack==nullptr)return -1;
        commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    }
    else{
        commonPartSysCalls(0x11, handle, start_routine, arg, nullptr);
    }

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int time_sleep(time_t t) {
    commonPartSysCalls(0x31, t);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int thread_exit() {
    commonPartSysCalls(0x12);

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

void thread_dispatch() {
    commonPartSysCalls(0x13);
}

void thread_join(thread_t handle) {
    commonPartSysCalls(0x14, handle);
}

int sem_open(sem_t *handle, unsigned int init) {
    commonPartSysCalls(0x21, handle, init);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int sem_close(sem_t handle) {
    if(!handle)return -3;
    commonPartSysCalls(0x22, handle);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int sem_wait(sem_t id) {
    if(!id)return -3;
    commonPartSysCalls(0x23, id);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int sem_signal(sem_t id) {
    if(!id)return -3;
    commonPartSysCalls(0x24, id);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

char getc() {
    commonPartSysCalls(0x41);

    volatile char ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

void putc(char c) {
    commonPartSysCalls(0x42, c);
}

