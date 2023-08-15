//
// Created by os on 7/24/23.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP

#include "../lib/hw.h"
#include "../h/TCB.hpp"
//sa vezbi 7

class Riscv{

public:

    //supervisor previous privileged, previousInterruptEnable
    //mora da bude ne inline da se poziva
    static void popSppSpie();

    static uint64 r_scause();
    static void w_scause(uint64 scause);
    static uint64 r_sepc();
    static void w_sepc(uint64 sepc);
    static uint64 r_stvec();
    static void w_stvec(uint64 stvec);
    static uint64 r_stval();
    static void w_stval(uint64 stval);

    enum BitMaskSStatus{
        SSTATUS_SIE=(1<<1),
        SSTATUS_SPIE=(1<<5),
        SSTATUS_SPP=(1<<8)
    };

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);
    static uint64 r_sstatus();
    static void w_sstatus(uint64 sstatus);


    enum BitMaskSip{
        SIP_SSIP=(1<<1),//software interrupt pending
        SIP_STIP=(1 << 5),
        SIP_SEIP=(1 << 9)
    };

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);
    static uint64 r_sip();
    static void w_sip(uint64 sip);

    static void supervisorTrap();

    struct SleepingElem{
        TCB* thr;
        time_t toSleepRel;
        SleepingElem* next;
    };

    static int putToSleep(time_t);
    static void updateSleepingList();

private:

    static void handleEcallException();
    static void timerInterrupt();
    static void hardwareInterrupt();

    static SleepingElem* headSleeping;

};

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    return scause;
}
inline void Riscv::w_scause(uint64 scause) {
    __asm__ volatile("csrw scause, %[scause]"::[scause]"r"(scause));
}

inline uint64 Riscv::r_sepc(){
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    return sepc;
}
inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
}
inline uint64 Riscv::r_stvec(){
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
}
inline uint64 Riscv::r_stval(){
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::w_stval(uint64 stval) {
    __asm__ volatile("csrw stval, %[stval]"::[stval]"r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
}


inline uint64 Riscv::r_sip(){
    uint64 volatile sip;
    __asm__ volatile("csrr %[sip], sip":[sip]"=r"(sip));
    return sip;
}
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
}

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    return sstatus;
}
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
}

#endif //PROJECT_BASE_RISCV_HPP
