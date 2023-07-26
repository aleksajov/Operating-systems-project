//
// Created by os on 7/23/23.
//

#ifndef PROJECT_BASE_WORKERS_HPP
#define PROJECT_BASE_WORKERS_HPP

#include "../lib/hw.h"

uint64 fibonacci(uint64 n);
void workerBodyC(void*);
void workerBodyD(void*);
void workerBodyA(void*);
void workerBodyB(void*);
#endif //PROJECT_BASE_WORKERS_HPP
