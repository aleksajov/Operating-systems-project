//
// Created by os on 8/8/23.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP

#include "MemoryAllocator.hpp"

//sa vezbi 7
template<typename T>
class List{
private:
    struct Elem{
        T* data;
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    List(const List<T> &)=delete;
    List<T> &operator=(const List<T> &)=delete;

    void addFirst(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
        newElem->data=data;
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
        newElem->data=data;
        newElem->next=nullptr;
        if(tail){
            tail->next=newElem;
            tail=newElem;
        }
        else{
            head=tail=newElem;
        }
    }

    T* removeFirst(){
        if(!head){
            return 0;
        }

        Elem* elem=head;
        head=head->next;
        if(!head){tail=nullptr;}

        T* ret=elem->data;
        MemoryAllocator::free(elem);
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
        return head->data;
    }


};

#endif //PROJECT_BASE_LIST_HPP
