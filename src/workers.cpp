//
// Created by os on 7/23/23.
//

#include "../h/workers.hpp"

#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

uint64 fibonacci(uint64 n)
{
    if(n==0 || n==1)return n;
    //if(n%4==0)TCB::yield();
    return fibonacci(n-1)+ fibonacci(n-2);
}

void workerBodyC(void*) {
    uint8 i=0;
    for(;i<3;i++){
        prtString("C: i=");
        prtInt(i);
        prtString("\n");
    }
    prtString("C: yield\n");
    __asm__("li t1, 7");
    TCB::yield();

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));

    prtString("C: t1=");
    prtInt(t1);
    prtString("\n");

    uint64 result= fibonacci(20);
    prtString("C: fibonaci=");
    prtInt(result);
    prtString("\n");

    for(;i<6;i++){
        prtString("C: i=");
        prtInt(i);
        prtString("\n");
    }


    /*TCB::running->setFinished(true);
    TCB::yield();*/
    prtString("WorkerBodyC finished\n");
}

void workerBodyD(void*) {
    uint8 i=10;
    for(;i<13;i++){
        prtString("D: i=");
        prtInt(i);
        prtString("\n");
    }

    prtString("D: yield\n");
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
    prtString("D: fibonaci=");
    prtInt(result);
    prtString("\n");

    for(;i<16;i++){
        prtString("D: i=");
        prtInt(i);
        prtString("\n");
    }



    /*TCB::running->setFinished(true);
    TCB::yield();*/

    prtString("WorkerBodyD finished\n");
}


void workerBodyA(void*){
    for (uint64 i=0;i<10;i++){
        prtString("A: i=");
        prtInt(i);
        prtString("\n");
        for(uint64 j=0;j<10000;j++){
            for(uint64 k=0;k<30000;k++){
                //busy
            }
            //TCB::yield();
        }
    }
    prtString("WorkerBodyA finished\n");
}

void workerBodyB(void*){
    for(uint64 i=0;i<16;i++){
        printString("B: i=");
        printInt(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
            for(uint64 k=0;k<30000;k++){
            }
        }
    }
    prtString("WorkerBodyB finished\n");
}