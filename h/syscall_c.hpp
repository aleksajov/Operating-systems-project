//
// Created by os on 7/6/23.
//

#include "../lib/hw.h"

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

void* mem_alloc (size_t size);

int mem_free (void*);

/*class _thread;
typedef _thread* thread_t;

int thread_create(
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
        );

int thread_exit();
void thread_dispatch();

void thread_join(
        thread_t handle
        );
*/

#endif //PROJECT_BASE_SYSCALL_C_HPP
