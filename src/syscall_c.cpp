//
// Created by os on 7/6/23.
//


#include "../h/syscall_c.hpp"

void commonPartSysCalls(int code, ...){
    __asm__ volatile("ecall");
}


void *mem_alloc(size_t size) {
    /*
    __asm__ volatile("mv a1, %0": : "r"((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */

    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return (void*)ret;
}

int mem_free(void *ptr) {
    /*
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));

    __asm__ volatile("ecall");
     */
    commonPartSysCalls(0x02, (uint64)ptr);
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    if(stack==nullptr)return -1;
    commonPartSysCalls(0x11, handle, start_routine, arg, stack);

    return 0;
}

int time_sleep(time_t) {
    return 0;
}

int thread_exit() {
    commonPartSysCalls(0x12);

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}

void thread_dispatch() {

}

void thread_join(thread_t handle) {

}

int sem_open(sem_t *handle, unsigned int init) {
    return 0;
}

int sem_close(sem_t handle) {
    return 0;
}

int sem_wait(sem_t id) {
    return 0;
}

int sem_signal(sem_t id) {
    return 0;
}

char getc() {
    return 0;
}

void putc(char) {

}
