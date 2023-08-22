//
// Created by os on 5/15/23.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator{
public:
    struct MemSeg {
        size_t size; //in blocks
        MemSeg* next;
    };


    static void* alloc(size_t);
    static int free(void*) ;

    static void initialize();

private:
    static MemSeg* firstFreeSeg;

};

#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
