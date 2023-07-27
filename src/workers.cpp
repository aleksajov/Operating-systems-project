//
// Created by os on 7/23/23.
//

#include "../h/workers.hpp"

#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/print.hpp"

uint64 fibonacci(uint64 n)
{
    if(n==0 || n==1)return n;
    if(n%4==0)TCB::yield();
    return fibonacci(n-1)+ fibonacci(n-2);
}

void workerBodyC(void*) {
    uint8 i=0;
    for(;i<3;i++){
        printString("C: i=");
        printInteger(i);
        printString("\n");
    }
    printString("C: yield\n");
    __asm__("li t1, 7");
    TCB::yield();

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));

    printString("A: t1=");
    printInteger(t1);
    printString("\n");

    uint64 result= fibonacci(20);
    printString("C: fibonaci=");
    printInteger(result);
    printString("\n");

    for(;i<6;i++){
        printString("C: i=");
        printInteger(i);
        printString("\n");
    }


    /*TCB::running->setFinished(true);
    TCB::yield();*/
}

void workerBodyD(void*) {
    uint8 i=10;
    for(;i<13;i++){
        printString("D: i=");
        printInteger(i);
        printString("\n");
    }

    printString("D: yield\n");
    __asm__("li t1, 5");
    TCB::yield();

    /*
    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));


    printString("B: t1=");
    printInteger(t1);
    printString("\n");
     */

    uint64 result= fibonacci(23);
    printString("D: fibonaci=");
    printInteger(result);
    printString("\n");

    for(;i<16;i++){
        printString("D: i=");
        printInteger(i);
        printString("\n");
    }



    /*TCB::running->setFinished(true);
    TCB::yield();*/
}


void workerBodyA(void*){
    for (uint64 i=0;i<10;i++){
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
            for(uint64 k=0;k<30000;k++){
                //busy
            }
            //TCB::yield();
        }
    }
    printString("WorkerBodyA finished");
}

void workerBodyB(void*){
    for(uint64 i=0;i<16;i++){
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
            for(uint64 k=0;k<30000;k++){
            }
        }
    }
}