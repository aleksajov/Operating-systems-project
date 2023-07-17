//
// Created by os on 7/6/23.
//


#include "../h/syscall_c.hpp"


void *mem_alloc(size_t size) {
    __asm__ volatile("mv a1, %0": : "r"((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return (void*)ret;
}

int mem_free(void *ptr) {
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));

    __asm__ volatile("ecall");

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    return ret;
}
