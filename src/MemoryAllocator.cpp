//
// Created by os on 5/15/23.
//
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;


void* MemoryAllocator::alloc(size_t sz) {
    //sz parametar velicina u blokovima

    if(sz<=0)return nullptr;
    MemSeg* free=firstFreeSeg, *prev=nullptr;

    while(free){

        if(free->size-1>=sz)
            break;

        prev=free;
        free=free->next;
    }
    if(!free)return nullptr;


    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    size_t oldFreeSize=free->size;
    MemSeg* next=free->next;
    if(free->size-1==sz || ((free->size-1-1)==sz)){
        if(prev!=nullptr){
            prev->next=free->next;
        }
        else{
            firstFreeSeg=free->next;
        }
        taken->size=oldFreeSize;
    }
    else if(oldFreeSize-sz-1>=2){

        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
        free->size=oldFreeSize-sz-1;
        free->next=next;
        if(prev!=nullptr){
            prev->next=free;
        }
        else{
            firstFreeSeg=free;
        }
        taken->size=sz+1;
    }

    taken->next=nullptr;
    return ret;
}

int MemoryAllocator::free(void *ptr) {
    //u slucaju da se prosledi ptr koji ne ukazuje na prethodno alocirani segment nepredvidjeno ponasanje

    if(!ptr)return -1;

    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);

    if(!firstFreeSeg){
        freeFromAddr->next=nullptr;
        firstFreeSeg=freeFromAddr;
        return 0;
    }

    if(firstFreeSeg>freeFromAddr){
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
            freeFromAddr->size+=firstFreeSeg->size;
            freeFromAddr->next=firstFreeSeg->next;
            firstFreeSeg=freeFromAddr;
            return 0;
        }
        else{
            freeFromAddr->next=firstFreeSeg;
            firstFreeSeg=freeFromAddr;
            return 0;
        }
    }

    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    while(nextFree){

        if(nextFree>freeFromAddr)break;

        prev=nextFree;
        nextFree=nextFree->next;
    }

    if(nextFree==nullptr){
        //dealokacija segmenta do kraja hipa
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
            prev->size+=freeFromAddr->size;
            //prev->next=nullptr;
            return 0;
        }
        else{
            freeFromAddr->next=nullptr;
            prev->next=freeFromAddr;
            return 0;
        }

    }


    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
        prev->size+=freeFromAddr->size;
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
            prev->size+=nextFree->size;
            prev->next=nextFree->next;
        }
        return 0;
    }
    //ne moze da se spoji sa prethodnim
    prev->next=freeFromAddr;
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
        //moze da se spoji sa narednim
        freeFromAddr->size+=nextFree->size;
        freeFromAddr->next=nextFree->next;
        return 0;
    }
    //ne moze ni sa prethodnim ni sa narednim
    freeFromAddr->next=nextFree;
    return 0;
}

void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
}