//
// Created by os on 7/23/23.
//

#include "workers.hpp"

#include "../lib/hw.h"
#include "../h/PCB.hpp"
#include "../h/print.hpp"

uint64 fibonacci(uint64 n)
{
    if(n==0 || n==1)return n;
    if(n%4==0)PCB::yield();
    return fibonacci(n-1)+ fibonacci(n-2);
}

void workerBodyA() {
    uint8 i=0;
    for(;i<3;i++){
        printString("A: i=");
        printInteger(i);
        printString("\n");
    }
    printString("A: yield\n");
    __asm__("li t1, 7");
    PCB::yield();

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));

    printString("A: t1=");
    printInteger(t1);
    printString("\n");

    uint64 result= fibonacci(20);
    printString("A: fibonaci=");
    printInteger(result);
    printString("\n");

    for(;i<6;i++){
        printString("A: i=");
        printInteger(i);
        printString("\n");
    }


    PCB::running->setFinished(true);
    PCB::yield();
}

void workerBodyB() {
    uint8 i=10;
    for(;i<13;i++){
        printString("B: i=");
        printInteger(i);
        printString("\n");
    }

    printString("B: yield\n");
    __asm__("li t1, 5");
    PCB::yield();

    /*
    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));


    printString("B: t1=");
    printInteger(t1);
    printString("\n");
     */

    uint64 result= fibonacci(23);
    printString("B: fibonaci=");
    printInteger(result);
    printString("\n");

    for(;i<16;i++){
        printString("B: i=");
        printInteger(i);
        printString("\n");
    }



    PCB::running->setFinished(true);
    PCB::yield();
}
