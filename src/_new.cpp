//
// Created by os on 7/21/23.
// sa vezbi 7
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    return mem_alloc(n);
}

void *operator new[](uint64 n)
{
    return mem_alloc(n);
}

void operator delete(void *p)noexcept{
    mem_free(p);
}

void operator delete[](void *p)noexcept{
    mem_free(p);
}