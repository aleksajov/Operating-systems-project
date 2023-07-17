
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	4d013103          	ld	sp,1232(sp) # 800044d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7c8010ef          	jal	ra,800017e4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handleSupervisorTrap
.global supervisorTrap
.align 4
supervisorTrap:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    sd x0, 0x00(sp)
    80001004:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    80001008:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    80001014:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    80001018:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    80001024:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    80001028:	04913423          	sd	s1,72(sp)
    sd x10, 0x50(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    sd x11, 0x58(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001044:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    80001048:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)


    call handleSupervisorTrap
    80001084:	100000ef          	jal	ra,80001184 <handleSupervisorTrap>


    ld x0, 0x00(sp)
    80001088:	00013003          	ld	zero,0(sp)
    ld x1, 0x08(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    ld x2, 0x10(sp)
    80001090:	01013103          	ld	sp,16(sp)
    ld x3, 0x18(sp)
    80001094:	01813183          	ld	gp,24(sp)
    ld x4, 0x20(sp)
    80001098:	02013203          	ld	tp,32(sp)
    ld x5, 0x28(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    ld x6, 0x30(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    ld x7, 0x38(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    ld x8, 0x40(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    ld x9, 0x48(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    ld x10, 0x50(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    ld x11, 0x58(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    ld x12, 0x60(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    ld x13, 0x68(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    ld x14, 0x70(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    ld x15, 0x78(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    ld x16, 0x80(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    ld x17, 0x88(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    ld x18, 0x90(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    ld x19, 0x98(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    ld x20, 0xa0(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    ld x21, 0xa8(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    ld x22, 0xb0(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    ld x23, 0xb8(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    ld x24, 0xc0(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    ld x25, 0xc8(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    ld x26, 0xd0(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    ld x27, 0xd8(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    ld x28, 0xe0(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    ld x29, 0xe8(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    ld x30, 0xf0(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    ld x31, 0xf8(sp)
    80001104:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_Z9mem_allocm>:


#include "../h/syscall_c.hpp"


void *mem_alloc(size_t size) {
    80001110:	fe010113          	addi	sp,sp,-32
    80001114:	00813c23          	sd	s0,24(sp)
    80001118:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0": : "r"((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    8000111c:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
    80001120:	00655513          	srli	a0,a0,0x6
    80001124:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva
    80001128:	00100793          	li	a5,1
    8000112c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001130:	00000073          	ecall

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001134:	00050793          	mv	a5,a0
    80001138:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    8000113c:	fe843503          	ld	a0,-24(s0)
}
    80001140:	01813403          	ld	s0,24(sp)
    80001144:	02010113          	addi	sp,sp,32
    80001148:	00008067          	ret

000000008000114c <_Z8mem_freePv>:

int mem_free(void *ptr) {
    8000114c:	fe010113          	addi	sp,sp,-32
    80001150:	00813c23          	sd	s0,24(sp)
    80001154:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    80001158:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));
    8000115c:	00200793          	li	a5,2
    80001160:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001164:	00000073          	ecall

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001168:	00050793          	mv	a5,a0
    8000116c:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001170:	fec42503          	lw	a0,-20(s0)
}
    80001174:	0005051b          	sext.w	a0,a0
    80001178:	01813403          	ld	s0,24(sp)
    8000117c:	02010113          	addi	sp,sp,32
    80001180:	00008067          	ret

0000000080001184 <handleSupervisorTrap>:
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"


extern "C" void handleSupervisorTrap(){
    80001184:	fe010113          	addi	sp,sp,-32
    80001188:	00113c23          	sd	ra,24(sp)
    8000118c:	00813823          	sd	s0,16(sp)
    80001190:	00913423          	sd	s1,8(sp)
    80001194:	01213023          	sd	s2,0(sp)
    80001198:	02010413          	addi	s0,sp,32
    uint64 valScause;
    //__asm__ volatile("csrr %[scause], scause" : [scause] "=r" (valScause));
    __asm__ volatile("csrr %0, scause" : "=r" (valScause));
    8000119c:	142024f3          	csrr	s1,scause

    if(valScause==0x02UL || valScause==0x05UL || valScause==0x07UL){
    800011a0:	00200793          	li	a5,2
    800011a4:	02f48863          	beq	s1,a5,800011d4 <handleSupervisorTrap+0x50>
    800011a8:	00500793          	li	a5,5
    800011ac:	02f48463          	beq	s1,a5,800011d4 <handleSupervisorTrap+0x50>
    800011b0:	00700793          	li	a5,7
    800011b4:	02f48063          	beq	s1,a5,800011d4 <handleSupervisorTrap+0x50>
        //ovi prekidi se ne obradjuju
        return;

    }

    else if(valScause==0x09UL || valScause==0x08UL)
    800011b8:	ff848793          	addi	a5,s1,-8
    800011bc:	00100713          	li	a4,1
    800011c0:	02f77663          	bgeu	a4,a5,800011ec <handleSupervisorTrap+0x68>
        //vratiti vrednost u sstatus
        __asm__ volatile("csrw sepc, %0": :"r"(sepcSaved+4));

    }

    if(valScause==(1UL<<63 | 0x09)){
    800011c4:	fff00793          	li	a5,-1
    800011c8:	03f79793          	slli	a5,a5,0x3f
    800011cc:	00978793          	addi	a5,a5,9
    800011d0:	06f48063          	beq	s1,a5,80001230 <handleSupervisorTrap+0xac>
        console_handler();
    }

}
    800011d4:	01813083          	ld	ra,24(sp)
    800011d8:	01013403          	ld	s0,16(sp)
    800011dc:	00813483          	ld	s1,8(sp)
    800011e0:	00013903          	ld	s2,0(sp)
    800011e4:	02010113          	addi	sp,sp,32
    800011e8:	00008067          	ret
        __asm__ volatile("csrr %0, sepc": "=r"(sepcSaved));
    800011ec:	14102973          	csrr	s2,sepc
        __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    800011f0:	05043783          	ld	a5,80(s0)
        __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800011f4:	05843503          	ld	a0,88(s0)
        if(a0==0x01){
    800011f8:	00e78c63          	beq	a5,a4,80001210 <handleSupervisorTrap+0x8c>
        else if(a0==0x02){
    800011fc:	00200713          	li	a4,2
    80001200:	02e78063          	beq	a5,a4,80001220 <handleSupervisorTrap+0x9c>
        __asm__ volatile("csrw sepc, %0": :"r"(sepcSaved+4));
    80001204:	00490913          	addi	s2,s2,4
    80001208:	14191073          	csrw	sepc,s2
    8000120c:	fb9ff06f          	j	800011c4 <handleSupervisorTrap+0x40>
            void *ptr=MemoryAllocator::alloc(a1);
    80001210:	00000097          	auipc	ra,0x0
    80001214:	310080e7          	jalr	784(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80001218:	04a43823          	sd	a0,80(s0)
    8000121c:	fe9ff06f          	j	80001204 <handleSupervisorTrap+0x80>
           int stat=MemoryAllocator::free((void*)a1);
    80001220:	00000097          	auipc	ra,0x0
    80001224:	3d4080e7          	jalr	980(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80001228:	04a43823          	sd	a0,80(s0)
    8000122c:	fd9ff06f          	j	80001204 <handleSupervisorTrap+0x80>
        console_handler();
    80001230:	00002097          	auipc	ra,0x2
    80001234:	6f0080e7          	jalr	1776(ra) # 80003920 <console_handler>
    80001238:	f9dff06f          	j	800011d4 <handleSupervisorTrap+0x50>

000000008000123c <_ZN6ThreadC1EPFvPvES0_>:
//
// Created by os on 7/14/23.
//
#include "../h/Thread.hpp"

Thread::Thread(void (*fun)(void *), void *args) {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    80001248:	00003797          	auipc	a5,0x3
    8000124c:	26878793          	addi	a5,a5,616 # 800044b0 <_ZTV6Thread+0x10>
    80001250:	00f53023          	sd	a5,0(a0)

}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret

0000000080001260 <_ZN6Thread5startEv>:

void Thread::start() {
    80001260:	ff010113          	addi	sp,sp,-16
    80001264:	00813423          	sd	s0,8(sp)
    80001268:	01010413          	addi	s0,sp,16

}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_ZN6Thread3runEv>:

    void start();

protected:
    //Thread();
    virtual void run(){}
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16
    80001284:	00813403          	ld	s0,8(sp)
    80001288:	01010113          	addi	sp,sp,16
    8000128c:	00008067          	ret

0000000080001290 <_ZN9Scheduler3putEP6Thread>:
#include "../h/MemoryAllocator.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(Thread *t) {
    80001290:	fe010113          	addi	sp,sp,-32
    80001294:	00113c23          	sd	ra,24(sp)
    80001298:	00813823          	sd	s0,16(sp)
    8000129c:	00913423          	sd	s1,8(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050493          	mv	s1,a0
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800012a8:	00100513          	li	a0,1
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	274080e7          	jalr	628(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    800012b4:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    800012b8:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    800012bc:	00003797          	auipc	a5,0x3
    800012c0:	2747b783          	ld	a5,628(a5) # 80004530 <_ZN9Scheduler5firstE>
    800012c4:	02078663          	beqz	a5,800012f0 <_ZN9Scheduler3putEP6Thread+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    800012c8:	00003797          	auipc	a5,0x3
    800012cc:	26878793          	addi	a5,a5,616 # 80004530 <_ZN9Scheduler5firstE>
    800012d0:	0087b703          	ld	a4,8(a5)
    800012d4:	00a73423          	sd	a0,8(a4)
    800012d8:	00a7b423          	sd	a0,8(a5)
    }
}
    800012dc:	01813083          	ld	ra,24(sp)
    800012e0:	01013403          	ld	s0,16(sp)
    800012e4:	00813483          	ld	s1,8(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret
        first=last=newElem;
    800012f0:	00003797          	auipc	a5,0x3
    800012f4:	24078793          	addi	a5,a5,576 # 80004530 <_ZN9Scheduler5firstE>
    800012f8:	00a7b423          	sd	a0,8(a5)
    800012fc:	00a7b023          	sd	a0,0(a5)
    80001300:	fddff06f          	j	800012dc <_ZN9Scheduler3putEP6Thread+0x4c>

0000000080001304 <_ZN9Scheduler3getEv>:

Thread *Scheduler::get() {
    80001304:	fe010113          	addi	sp,sp,-32
    80001308:	00113c23          	sd	ra,24(sp)
    8000130c:	00813823          	sd	s0,16(sp)
    80001310:	00913423          	sd	s1,8(sp)
    80001314:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    80001318:	00003517          	auipc	a0,0x3
    8000131c:	21853503          	ld	a0,536(a0) # 80004530 <_ZN9Scheduler5firstE>
    80001320:	04050663          	beqz	a0,8000136c <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    Thread* t=elem->t;
    80001324:	00053483          	ld	s1,0(a0)

    MemoryAllocator::free(elem);
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	2cc080e7          	jalr	716(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>

    first=first->next;
    80001330:	00003717          	auipc	a4,0x3
    80001334:	20070713          	addi	a4,a4,512 # 80004530 <_ZN9Scheduler5firstE>
    80001338:	00073783          	ld	a5,0(a4)
    8000133c:	0087b783          	ld	a5,8(a5)
    80001340:	00f73023          	sd	a5,0(a4)
    if(first==nullptr)last=nullptr;
    80001344:	00078e63          	beqz	a5,80001360 <_ZN9Scheduler3getEv+0x5c>

    return t;
}
    80001348:	00048513          	mv	a0,s1
    8000134c:	01813083          	ld	ra,24(sp)
    80001350:	01013403          	ld	s0,16(sp)
    80001354:	00813483          	ld	s1,8(sp)
    80001358:	02010113          	addi	sp,sp,32
    8000135c:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001360:	00003797          	auipc	a5,0x3
    80001364:	1c07bc23          	sd	zero,472(a5) # 80004538 <_ZN9Scheduler4lastE>
    80001368:	fe1ff06f          	j	80001348 <_ZN9Scheduler3getEv+0x44>
    if(first==nullptr)return nullptr;
    8000136c:	00050493          	mv	s1,a0
    80001370:	fd9ff06f          	j	80001348 <_ZN9Scheduler3getEv+0x44>

0000000080001374 <main>:
#include "../lib/console.h"
#include "../h/trap.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

int main(){
    80001374:	fd010113          	addi	sp,sp,-48
    80001378:	02113423          	sd	ra,40(sp)
    8000137c:	02813023          	sd	s0,32(sp)
    80001380:	00913c23          	sd	s1,24(sp)
    80001384:	01213823          	sd	s2,16(sp)
    80001388:	01313423          	sd	s3,8(sp)
    8000138c:	01413023          	sd	s4,0(sp)
    80001390:	03010413          	addi	s0,sp,48

    __asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    80001394:	00003797          	auipc	a5,0x3
    80001398:	1347b783          	ld	a5,308(a5) # 800044c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000139c:	10579073          	csrw	stvec,a5
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	3c0080e7          	jalr	960(ra) # 80001760 <_ZN15MemoryAllocator10initializeEv>

    Thread* t1=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800013a8:	00100513          	li	a0,1
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	174080e7          	jalr	372(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
    800013b4:	00050a13          	mv	s4,a0
    Thread* t2=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800013b8:	00100513          	li	a0,1
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	164080e7          	jalr	356(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
    800013c4:	00050493          	mv	s1,a0
    Thread* t3=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800013c8:	00100513          	li	a0,1
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	154080e7          	jalr	340(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
    800013d4:	00050913          	mv	s2,a0
    Thread* t4=(Thread*)MemoryAllocator::alloc((sizeof (Thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800013d8:	00100513          	li	a0,1
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	144080e7          	jalr	324(ra) # 80001520 <_ZN15MemoryAllocator5allocEm>
    800013e4:	00050993          	mv	s3,a0

    Scheduler::put(t1);
    800013e8:	000a0513          	mv	a0,s4
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	ea4080e7          	jalr	-348(ra) # 80001290 <_ZN9Scheduler3putEP6Thread>
    Scheduler::put(t2);
    800013f4:	00048513          	mv	a0,s1
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e98080e7          	jalr	-360(ra) # 80001290 <_ZN9Scheduler3putEP6Thread>
    Scheduler::put(t3);
    80001400:	00090513          	mv	a0,s2
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e8c080e7          	jalr	-372(ra) # 80001290 <_ZN9Scheduler3putEP6Thread>
    Scheduler::put(t4);
    8000140c:	00098513          	mv	a0,s3
    80001410:	00000097          	auipc	ra,0x0
    80001414:	e80080e7          	jalr	-384(ra) # 80001290 <_ZN9Scheduler3putEP6Thread>

    t1=Scheduler::get();
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	eec080e7          	jalr	-276(ra) # 80001304 <_ZN9Scheduler3getEv>
    80001420:	00050a13          	mv	s4,a0
    Scheduler::get();
    80001424:	00000097          	auipc	ra,0x0
    80001428:	ee0080e7          	jalr	-288(ra) # 80001304 <_ZN9Scheduler3getEv>
    Scheduler::get();
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	ed8080e7          	jalr	-296(ra) # 80001304 <_ZN9Scheduler3getEv>
    Scheduler::get();
    80001434:	00000097          	auipc	ra,0x0
    80001438:	ed0080e7          	jalr	-304(ra) # 80001304 <_ZN9Scheduler3getEv>

    MemoryAllocator::free(t4);
    8000143c:	00098513          	mv	a0,s3
    80001440:	00000097          	auipc	ra,0x0
    80001444:	1b4080e7          	jalr	436(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>
    MemoryAllocator::free(t3);
    80001448:	00090513          	mv	a0,s2
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	1a8080e7          	jalr	424(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>
    MemoryAllocator::free(t2);
    80001454:	00048513          	mv	a0,s1
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	19c080e7          	jalr	412(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>
    MemoryAllocator::free(t1);
    80001460:	000a0513          	mv	a0,s4
    80001464:	00000097          	auipc	ra,0x0
    80001468:	190080e7          	jalr	400(ra) # 800015f4 <_ZN15MemoryAllocator4freeEPv>

    void* ptr=mem_alloc(129);
    8000146c:	08100513          	li	a0,129
    80001470:	00000097          	auipc	ra,0x0
    80001474:	ca0080e7          	jalr	-864(ra) # 80001110 <_Z9mem_allocm>
    80001478:	00050913          	mv	s2,a0
    void* ptr2= mem_alloc(68);
    8000147c:	04400513          	li	a0,68
    80001480:	00000097          	auipc	ra,0x0
    80001484:	c90080e7          	jalr	-880(ra) # 80001110 <_Z9mem_allocm>
    80001488:	00050493          	mv	s1,a0
    int stat=mem_free(ptr);
    8000148c:	00090513          	mv	a0,s2
    80001490:	00000097          	auipc	ra,0x0
    80001494:	cbc080e7          	jalr	-836(ra) # 8000114c <_Z8mem_freePv>
    stat= mem_free(ptr2);
    80001498:	00048513          	mv	a0,s1
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	cb0080e7          	jalr	-848(ra) # 8000114c <_Z8mem_freePv>
    if(stat<0){
    800014a4:	02054463          	bltz	a0,800014cc <main+0x158>
    if(ptr);



    return 0;
    800014a8:	00000513          	li	a0,0
    800014ac:	02813083          	ld	ra,40(sp)
    800014b0:	02013403          	ld	s0,32(sp)
    800014b4:	01813483          	ld	s1,24(sp)
    800014b8:	01013903          	ld	s2,16(sp)
    800014bc:	00813983          	ld	s3,8(sp)
    800014c0:	00013a03          	ld	s4,0(sp)
    800014c4:	03010113          	addi	sp,sp,48
    800014c8:	00008067          	ret
        __putc('c');
    800014cc:	06300513          	li	a0,99
    800014d0:	00002097          	auipc	ra,0x2
    800014d4:	3dc080e7          	jalr	988(ra) # 800038ac <__putc>
    800014d8:	fd1ff06f          	j	800014a8 <main+0x134>

00000000800014dc <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    800014e8:	00100793          	li	a5,1
    800014ec:	00f50863          	beq	a0,a5,800014fc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014f0:	00813403          	ld	s0,8(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret
    800014fc:	000107b7          	lui	a5,0x10
    80001500:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001504:	fef596e3          	bne	a1,a5,800014f0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80001508:	00003797          	auipc	a5,0x3
    8000150c:	fb87b783          	ld	a5,-72(a5) # 800044c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001510:	0007b783          	ld	a5,0(a5)
    80001514:	00003717          	auipc	a4,0x3
    80001518:	02f73623          	sd	a5,44(a4) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    8000151c:	fd5ff06f          	j	800014f0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001520 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    8000152c:	0a050c63          	beqz	a0,800015e4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80001530:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80001534:	00003797          	auipc	a5,0x3
    80001538:	00c7b783          	ld	a5,12(a5) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    8000153c:	00000613          	li	a2,0
    while(free){
    80001540:	00078e63          	beqz	a5,8000155c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80001544:	0007b703          	ld	a4,0(a5)
    80001548:	fff70713          	addi	a4,a4,-1
    8000154c:	00d77863          	bgeu	a4,a3,8000155c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80001550:	00078613          	mv	a2,a5
        free=free->next;
    80001554:	0087b783          	ld	a5,8(a5)
    while(free){
    80001558:	fe9ff06f          	j	80001540 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000155c:	08078863          	beqz	a5,800015ec <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80001560:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80001564:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80001568:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000156c:	fff70593          	addi	a1,a4,-1
    80001570:	04d58063          	beq	a1,a3,800015b0 <_ZN15MemoryAllocator5allocEm+0x90>
    80001574:	ffe70593          	addi	a1,a4,-2
    80001578:	02d58c63          	beq	a1,a3,800015b0 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000157c:	40d70733          	sub	a4,a4,a3
    80001580:	fff70713          	addi	a4,a4,-1
    80001584:	00100593          	li	a1,1
    80001588:	02e5fa63          	bgeu	a1,a4,800015bc <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000158c:	00168693          	addi	a3,a3,1
    80001590:	00669593          	slli	a1,a3,0x6
    80001594:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80001598:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    8000159c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    800015a0:	02060c63          	beqz	a2,800015d8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    800015a4:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    800015a8:	00d7b023          	sd	a3,0(a5)
    800015ac:	0100006f          	j	800015bc <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    800015b0:	00060e63          	beqz	a2,800015cc <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    800015b4:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    800015b8:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    800015bc:	0007b423          	sd	zero,8(a5)
}
    800015c0:	00813403          	ld	s0,8(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret
            firstFreeSeg=free->next;
    800015cc:	00003697          	auipc	a3,0x3
    800015d0:	f706ba23          	sd	a6,-140(a3) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    800015d4:	fe5ff06f          	j	800015b8 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    800015d8:	00003717          	auipc	a4,0x3
    800015dc:	f6b73423          	sd	a1,-152(a4) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    800015e0:	fc9ff06f          	j	800015a8 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    800015e4:	00000513          	li	a0,0
    800015e8:	fd9ff06f          	j	800015c0 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    800015ec:	00078513          	mv	a0,a5
    800015f0:	fd1ff06f          	j	800015c0 <_ZN15MemoryAllocator5allocEm+0xa0>

00000000800015f4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80001600:	14050c63          	beqz	a0,80001758 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80001604:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80001608:	00003797          	auipc	a5,0x3
    8000160c:	f387b783          	ld	a5,-200(a5) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    80001610:	02078a63          	beqz	a5,80001644 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80001614:	06f77863          	bgeu	a4,a5,80001684 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80001618:	fc053603          	ld	a2,-64(a0)
    8000161c:	00661693          	slli	a3,a2,0x6
    80001620:	00d706b3          	add	a3,a4,a3
    80001624:	02d78a63          	beq	a5,a3,80001658 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80001628:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    8000162c:	00003797          	auipc	a5,0x3
    80001630:	f0e7ba23          	sd	a4,-236(a5) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80001634:	00000513          	li	a0,0
}
    80001638:	00813403          	ld	s0,8(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret
        freeFromAddr->next=nullptr;
    80001644:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80001648:	00003797          	auipc	a5,0x3
    8000164c:	eee7bc23          	sd	a4,-264(a5) # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80001650:	00000513          	li	a0,0
    80001654:	fe5ff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80001658:	0007b783          	ld	a5,0(a5)
    8000165c:	00f60633          	add	a2,a2,a5
    80001660:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80001664:	00003797          	auipc	a5,0x3
    80001668:	edc78793          	addi	a5,a5,-292 # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    8000166c:	0007b683          	ld	a3,0(a5)
    80001670:	0086b683          	ld	a3,8(a3)
    80001674:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80001678:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000167c:	00000513          	li	a0,0
    80001680:	fb9ff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80001684:	00000693          	li	a3,0
    while(nextFree){
    80001688:	00078a63          	beqz	a5,8000169c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000168c:	00f76863          	bltu	a4,a5,8000169c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80001690:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80001694:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80001698:	ff1ff06f          	j	80001688 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000169c:	02078a63          	beqz	a5,800016d0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800016a0:	0006b583          	ld	a1,0(a3)
    800016a4:	00659613          	slli	a2,a1,0x6
    800016a8:	00c68633          	add	a2,a3,a2
    800016ac:	04e60c63          	beq	a2,a4,80001704 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    800016b0:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800016b4:	fc053683          	ld	a3,-64(a0)
    800016b8:	00669613          	slli	a2,a3,0x6
    800016bc:	00c70733          	add	a4,a4,a2
    800016c0:	06f70e63          	beq	a4,a5,8000173c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    800016c4:	fcf53423          	sd	a5,-56(a0)
    return 0;
    800016c8:	00000513          	li	a0,0
    800016cc:	f6dff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800016d0:	0006b603          	ld	a2,0(a3)
    800016d4:	00661793          	slli	a5,a2,0x6
    800016d8:	00f687b3          	add	a5,a3,a5
    800016dc:	00e78a63          	beq	a5,a4,800016f0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800016e0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800016e4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800016e8:	00000513          	li	a0,0
    800016ec:	f4dff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800016f0:	fc053783          	ld	a5,-64(a0)
    800016f4:	00f60633          	add	a2,a2,a5
    800016f8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800016fc:	00000513          	li	a0,0
    80001700:	f39ff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80001704:	fc053703          	ld	a4,-64(a0)
    80001708:	00e585b3          	add	a1,a1,a4
    8000170c:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80001710:	00659713          	slli	a4,a1,0x6
    80001714:	00e68733          	add	a4,a3,a4
    80001718:	00f70663          	beq	a4,a5,80001724 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    8000171c:	00000513          	li	a0,0
    80001720:	f19ff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80001724:	0007b703          	ld	a4,0(a5)
    80001728:	00e585b3          	add	a1,a1,a4
    8000172c:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80001730:	0087b783          	ld	a5,8(a5)
    80001734:	00f6b423          	sd	a5,8(a3)
    80001738:	fe5ff06f          	j	8000171c <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    8000173c:	0007b703          	ld	a4,0(a5)
    80001740:	00e686b3          	add	a3,a3,a4
    80001744:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80001748:	0087b783          	ld	a5,8(a5)
    8000174c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80001750:	00000513          	li	a0,0
    80001754:	ee5ff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80001758:	fff00513          	li	a0,-1
    8000175c:	eddff06f          	j	80001638 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080001760 <_ZN15MemoryAllocator10initializeEv>:
{
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000176c:	00003797          	auipc	a5,0x3
    80001770:	d547b783          	ld	a5,-684(a5) # 800044c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001774:	0007b703          	ld	a4,0(a5)
    80001778:	00003697          	auipc	a3,0x3
    8000177c:	dc868693          	addi	a3,a3,-568 # 80004540 <_ZN15MemoryAllocator12firstFreeSegE>
    80001780:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80001784:	00003797          	auipc	a5,0x3
    80001788:	d547b783          	ld	a5,-684(a5) # 800044d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000178c:	0007b783          	ld	a5,0(a5)
    80001790:	40e787b3          	sub	a5,a5,a4
    80001794:	0067d793          	srli	a5,a5,0x6
    80001798:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    8000179c:	0006b783          	ld	a5,0(a3)
    800017a0:	0007b423          	sd	zero,8(a5)
    800017a4:	00813403          	ld	s0,8(sp)
    800017a8:	01010113          	addi	sp,sp,16
    800017ac:	00008067          	ret

00000000800017b0 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00113423          	sd	ra,8(sp)
    800017b8:	00813023          	sd	s0,0(sp)
    800017bc:	01010413          	addi	s0,sp,16
    800017c0:	000105b7          	lui	a1,0x10
    800017c4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017c8:	00100513          	li	a0,1
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	d10080e7          	jalr	-752(ra) # 800014dc <_Z41__static_initialization_and_destruction_0ii>
    800017d4:	00813083          	ld	ra,8(sp)
    800017d8:	00013403          	ld	s0,0(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret

00000000800017e4 <start>:
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00813423          	sd	s0,8(sp)
    800017ec:	01010413          	addi	s0,sp,16
    800017f0:	300027f3          	csrr	a5,mstatus
    800017f4:	ffffe737          	lui	a4,0xffffe
    800017f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff905f>
    800017fc:	00e7f7b3          	and	a5,a5,a4
    80001800:	00001737          	lui	a4,0x1
    80001804:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001808:	00e7e7b3          	or	a5,a5,a4
    8000180c:	30079073          	csrw	mstatus,a5
    80001810:	00000797          	auipc	a5,0x0
    80001814:	16078793          	addi	a5,a5,352 # 80001970 <system_main>
    80001818:	34179073          	csrw	mepc,a5
    8000181c:	00000793          	li	a5,0
    80001820:	18079073          	csrw	satp,a5
    80001824:	000107b7          	lui	a5,0x10
    80001828:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000182c:	30279073          	csrw	medeleg,a5
    80001830:	30379073          	csrw	mideleg,a5
    80001834:	104027f3          	csrr	a5,sie
    80001838:	2227e793          	ori	a5,a5,546
    8000183c:	10479073          	csrw	sie,a5
    80001840:	fff00793          	li	a5,-1
    80001844:	00a7d793          	srli	a5,a5,0xa
    80001848:	3b079073          	csrw	pmpaddr0,a5
    8000184c:	00f00793          	li	a5,15
    80001850:	3a079073          	csrw	pmpcfg0,a5
    80001854:	f14027f3          	csrr	a5,mhartid
    80001858:	0200c737          	lui	a4,0x200c
    8000185c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001860:	0007869b          	sext.w	a3,a5
    80001864:	00269713          	slli	a4,a3,0x2
    80001868:	000f4637          	lui	a2,0xf4
    8000186c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001870:	00d70733          	add	a4,a4,a3
    80001874:	0037979b          	slliw	a5,a5,0x3
    80001878:	020046b7          	lui	a3,0x2004
    8000187c:	00d787b3          	add	a5,a5,a3
    80001880:	00c585b3          	add	a1,a1,a2
    80001884:	00371693          	slli	a3,a4,0x3
    80001888:	00003717          	auipc	a4,0x3
    8000188c:	cc870713          	addi	a4,a4,-824 # 80004550 <timer_scratch>
    80001890:	00b7b023          	sd	a1,0(a5)
    80001894:	00d70733          	add	a4,a4,a3
    80001898:	00f73c23          	sd	a5,24(a4)
    8000189c:	02c73023          	sd	a2,32(a4)
    800018a0:	34071073          	csrw	mscratch,a4
    800018a4:	00000797          	auipc	a5,0x0
    800018a8:	6ec78793          	addi	a5,a5,1772 # 80001f90 <timervec>
    800018ac:	30579073          	csrw	mtvec,a5
    800018b0:	300027f3          	csrr	a5,mstatus
    800018b4:	0087e793          	ori	a5,a5,8
    800018b8:	30079073          	csrw	mstatus,a5
    800018bc:	304027f3          	csrr	a5,mie
    800018c0:	0807e793          	ori	a5,a5,128
    800018c4:	30479073          	csrw	mie,a5
    800018c8:	f14027f3          	csrr	a5,mhartid
    800018cc:	0007879b          	sext.w	a5,a5
    800018d0:	00078213          	mv	tp,a5
    800018d4:	30200073          	mret
    800018d8:	00813403          	ld	s0,8(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <timerinit>:
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813423          	sd	s0,8(sp)
    800018ec:	01010413          	addi	s0,sp,16
    800018f0:	f14027f3          	csrr	a5,mhartid
    800018f4:	0200c737          	lui	a4,0x200c
    800018f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800018fc:	0007869b          	sext.w	a3,a5
    80001900:	00269713          	slli	a4,a3,0x2
    80001904:	000f4637          	lui	a2,0xf4
    80001908:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000190c:	00d70733          	add	a4,a4,a3
    80001910:	0037979b          	slliw	a5,a5,0x3
    80001914:	020046b7          	lui	a3,0x2004
    80001918:	00d787b3          	add	a5,a5,a3
    8000191c:	00c585b3          	add	a1,a1,a2
    80001920:	00371693          	slli	a3,a4,0x3
    80001924:	00003717          	auipc	a4,0x3
    80001928:	c2c70713          	addi	a4,a4,-980 # 80004550 <timer_scratch>
    8000192c:	00b7b023          	sd	a1,0(a5)
    80001930:	00d70733          	add	a4,a4,a3
    80001934:	00f73c23          	sd	a5,24(a4)
    80001938:	02c73023          	sd	a2,32(a4)
    8000193c:	34071073          	csrw	mscratch,a4
    80001940:	00000797          	auipc	a5,0x0
    80001944:	65078793          	addi	a5,a5,1616 # 80001f90 <timervec>
    80001948:	30579073          	csrw	mtvec,a5
    8000194c:	300027f3          	csrr	a5,mstatus
    80001950:	0087e793          	ori	a5,a5,8
    80001954:	30079073          	csrw	mstatus,a5
    80001958:	304027f3          	csrr	a5,mie
    8000195c:	0807e793          	ori	a5,a5,128
    80001960:	30479073          	csrw	mie,a5
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <system_main>:
    80001970:	fe010113          	addi	sp,sp,-32
    80001974:	00813823          	sd	s0,16(sp)
    80001978:	00913423          	sd	s1,8(sp)
    8000197c:	00113c23          	sd	ra,24(sp)
    80001980:	02010413          	addi	s0,sp,32
    80001984:	00000097          	auipc	ra,0x0
    80001988:	0c4080e7          	jalr	196(ra) # 80001a48 <cpuid>
    8000198c:	00003497          	auipc	s1,0x3
    80001990:	b7448493          	addi	s1,s1,-1164 # 80004500 <started>
    80001994:	02050263          	beqz	a0,800019b8 <system_main+0x48>
    80001998:	0004a783          	lw	a5,0(s1)
    8000199c:	0007879b          	sext.w	a5,a5
    800019a0:	fe078ce3          	beqz	a5,80001998 <system_main+0x28>
    800019a4:	0ff0000f          	fence
    800019a8:	00002517          	auipc	a0,0x2
    800019ac:	6a850513          	addi	a0,a0,1704 # 80004050 <CONSOLE_STATUS+0x40>
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	a7c080e7          	jalr	-1412(ra) # 8000242c <panic>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	9d0080e7          	jalr	-1584(ra) # 80002388 <consoleinit>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	15c080e7          	jalr	348(ra) # 80002b1c <printfinit>
    800019c8:	00002517          	auipc	a0,0x2
    800019cc:	76850513          	addi	a0,a0,1896 # 80004130 <CONSOLE_STATUS+0x120>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	ab8080e7          	jalr	-1352(ra) # 80002488 <__printf>
    800019d8:	00002517          	auipc	a0,0x2
    800019dc:	64850513          	addi	a0,a0,1608 # 80004020 <CONSOLE_STATUS+0x10>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	aa8080e7          	jalr	-1368(ra) # 80002488 <__printf>
    800019e8:	00002517          	auipc	a0,0x2
    800019ec:	74850513          	addi	a0,a0,1864 # 80004130 <CONSOLE_STATUS+0x120>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	a98080e7          	jalr	-1384(ra) # 80002488 <__printf>
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	4b0080e7          	jalr	1200(ra) # 80002ea8 <kinit>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	148080e7          	jalr	328(ra) # 80001b48 <trapinit>
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	16c080e7          	jalr	364(ra) # 80001b74 <trapinithart>
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	5c0080e7          	jalr	1472(ra) # 80001fd0 <plicinit>
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	5e0080e7          	jalr	1504(ra) # 80001ff8 <plicinithart>
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	078080e7          	jalr	120(ra) # 80001a98 <userinit>
    80001a28:	0ff0000f          	fence
    80001a2c:	00100793          	li	a5,1
    80001a30:	00002517          	auipc	a0,0x2
    80001a34:	60850513          	addi	a0,a0,1544 # 80004038 <CONSOLE_STATUS+0x28>
    80001a38:	00f4a023          	sw	a5,0(s1)
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	a4c080e7          	jalr	-1460(ra) # 80002488 <__printf>
    80001a44:	0000006f          	j	80001a44 <system_main+0xd4>

0000000080001a48 <cpuid>:
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00813423          	sd	s0,8(sp)
    80001a50:	01010413          	addi	s0,sp,16
    80001a54:	00020513          	mv	a0,tp
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	0005051b          	sext.w	a0,a0
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <mycpu>:
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    80001a74:	00020793          	mv	a5,tp
    80001a78:	00813403          	ld	s0,8(sp)
    80001a7c:	0007879b          	sext.w	a5,a5
    80001a80:	00779793          	slli	a5,a5,0x7
    80001a84:	00004517          	auipc	a0,0x4
    80001a88:	afc50513          	addi	a0,a0,-1284 # 80005580 <cpus>
    80001a8c:	00f50533          	add	a0,a0,a5
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <userinit>:
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00813423          	sd	s0,8(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    80001aa4:	00813403          	ld	s0,8(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00000317          	auipc	t1,0x0
    80001ab0:	8c830067          	jr	-1848(t1) # 80001374 <main>

0000000080001ab4 <either_copyout>:
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	01010413          	addi	s0,sp,16
    80001ac4:	02051663          	bnez	a0,80001af0 <either_copyout+0x3c>
    80001ac8:	00058513          	mv	a0,a1
    80001acc:	00060593          	mv	a1,a2
    80001ad0:	0006861b          	sext.w	a2,a3
    80001ad4:	00002097          	auipc	ra,0x2
    80001ad8:	c60080e7          	jalr	-928(ra) # 80003734 <__memmove>
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	00000513          	li	a0,0
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret
    80001af0:	00002517          	auipc	a0,0x2
    80001af4:	58850513          	addi	a0,a0,1416 # 80004078 <CONSOLE_STATUS+0x68>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	934080e7          	jalr	-1740(ra) # 8000242c <panic>

0000000080001b00 <either_copyin>:
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813023          	sd	s0,0(sp)
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    80001b10:	02059463          	bnez	a1,80001b38 <either_copyin+0x38>
    80001b14:	00060593          	mv	a1,a2
    80001b18:	0006861b          	sext.w	a2,a3
    80001b1c:	00002097          	auipc	ra,0x2
    80001b20:	c18080e7          	jalr	-1000(ra) # 80003734 <__memmove>
    80001b24:	00813083          	ld	ra,8(sp)
    80001b28:	00013403          	ld	s0,0(sp)
    80001b2c:	00000513          	li	a0,0
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret
    80001b38:	00002517          	auipc	a0,0x2
    80001b3c:	56850513          	addi	a0,a0,1384 # 800040a0 <CONSOLE_STATUS+0x90>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	8ec080e7          	jalr	-1812(ra) # 8000242c <panic>

0000000080001b48 <trapinit>:
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00813423          	sd	s0,8(sp)
    80001b50:	01010413          	addi	s0,sp,16
    80001b54:	00813403          	ld	s0,8(sp)
    80001b58:	00002597          	auipc	a1,0x2
    80001b5c:	57058593          	addi	a1,a1,1392 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001b60:	00004517          	auipc	a0,0x4
    80001b64:	aa050513          	addi	a0,a0,-1376 # 80005600 <tickslock>
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00001317          	auipc	t1,0x1
    80001b70:	5cc30067          	jr	1484(t1) # 80003138 <initlock>

0000000080001b74 <trapinithart>:
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    80001b80:	00000797          	auipc	a5,0x0
    80001b84:	30078793          	addi	a5,a5,768 # 80001e80 <kernelvec>
    80001b88:	10579073          	csrw	stvec,a5
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <usertrap>:
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <usertrapret>:
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00813403          	ld	s0,8(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <kerneltrap>:
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00113c23          	sd	ra,24(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    80001bdc:	142025f3          	csrr	a1,scause
    80001be0:	100027f3          	csrr	a5,sstatus
    80001be4:	0027f793          	andi	a5,a5,2
    80001be8:	10079c63          	bnez	a5,80001d00 <kerneltrap+0x138>
    80001bec:	142027f3          	csrr	a5,scause
    80001bf0:	0207ce63          	bltz	a5,80001c2c <kerneltrap+0x64>
    80001bf4:	00002517          	auipc	a0,0x2
    80001bf8:	51c50513          	addi	a0,a0,1308 # 80004110 <CONSOLE_STATUS+0x100>
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	88c080e7          	jalr	-1908(ra) # 80002488 <__printf>
    80001c04:	141025f3          	csrr	a1,sepc
    80001c08:	14302673          	csrr	a2,stval
    80001c0c:	00002517          	auipc	a0,0x2
    80001c10:	51450513          	addi	a0,a0,1300 # 80004120 <CONSOLE_STATUS+0x110>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	874080e7          	jalr	-1932(ra) # 80002488 <__printf>
    80001c1c:	00002517          	auipc	a0,0x2
    80001c20:	51c50513          	addi	a0,a0,1308 # 80004138 <CONSOLE_STATUS+0x128>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	808080e7          	jalr	-2040(ra) # 8000242c <panic>
    80001c2c:	0ff7f713          	andi	a4,a5,255
    80001c30:	00900693          	li	a3,9
    80001c34:	04d70063          	beq	a4,a3,80001c74 <kerneltrap+0xac>
    80001c38:	fff00713          	li	a4,-1
    80001c3c:	03f71713          	slli	a4,a4,0x3f
    80001c40:	00170713          	addi	a4,a4,1
    80001c44:	fae798e3          	bne	a5,a4,80001bf4 <kerneltrap+0x2c>
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	e00080e7          	jalr	-512(ra) # 80001a48 <cpuid>
    80001c50:	06050663          	beqz	a0,80001cbc <kerneltrap+0xf4>
    80001c54:	144027f3          	csrr	a5,sip
    80001c58:	ffd7f793          	andi	a5,a5,-3
    80001c5c:	14479073          	csrw	sip,a5
    80001c60:	01813083          	ld	ra,24(sp)
    80001c64:	01013403          	ld	s0,16(sp)
    80001c68:	00813483          	ld	s1,8(sp)
    80001c6c:	02010113          	addi	sp,sp,32
    80001c70:	00008067          	ret
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	3d0080e7          	jalr	976(ra) # 80002044 <plic_claim>
    80001c7c:	00a00793          	li	a5,10
    80001c80:	00050493          	mv	s1,a0
    80001c84:	06f50863          	beq	a0,a5,80001cf4 <kerneltrap+0x12c>
    80001c88:	fc050ce3          	beqz	a0,80001c60 <kerneltrap+0x98>
    80001c8c:	00050593          	mv	a1,a0
    80001c90:	00002517          	auipc	a0,0x2
    80001c94:	46050513          	addi	a0,a0,1120 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	7f0080e7          	jalr	2032(ra) # 80002488 <__printf>
    80001ca0:	01013403          	ld	s0,16(sp)
    80001ca4:	01813083          	ld	ra,24(sp)
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00813483          	ld	s1,8(sp)
    80001cb0:	02010113          	addi	sp,sp,32
    80001cb4:	00000317          	auipc	t1,0x0
    80001cb8:	3c830067          	jr	968(t1) # 8000207c <plic_complete>
    80001cbc:	00004517          	auipc	a0,0x4
    80001cc0:	94450513          	addi	a0,a0,-1724 # 80005600 <tickslock>
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	498080e7          	jalr	1176(ra) # 8000315c <acquire>
    80001ccc:	00003717          	auipc	a4,0x3
    80001cd0:	83870713          	addi	a4,a4,-1992 # 80004504 <ticks>
    80001cd4:	00072783          	lw	a5,0(a4)
    80001cd8:	00004517          	auipc	a0,0x4
    80001cdc:	92850513          	addi	a0,a0,-1752 # 80005600 <tickslock>
    80001ce0:	0017879b          	addiw	a5,a5,1
    80001ce4:	00f72023          	sw	a5,0(a4)
    80001ce8:	00001097          	auipc	ra,0x1
    80001cec:	540080e7          	jalr	1344(ra) # 80003228 <release>
    80001cf0:	f65ff06f          	j	80001c54 <kerneltrap+0x8c>
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	09c080e7          	jalr	156(ra) # 80002d90 <uartintr>
    80001cfc:	fa5ff06f          	j	80001ca0 <kerneltrap+0xd8>
    80001d00:	00002517          	auipc	a0,0x2
    80001d04:	3d050513          	addi	a0,a0,976 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	724080e7          	jalr	1828(ra) # 8000242c <panic>

0000000080001d10 <clockintr>:
    80001d10:	fe010113          	addi	sp,sp,-32
    80001d14:	00813823          	sd	s0,16(sp)
    80001d18:	00913423          	sd	s1,8(sp)
    80001d1c:	00113c23          	sd	ra,24(sp)
    80001d20:	02010413          	addi	s0,sp,32
    80001d24:	00004497          	auipc	s1,0x4
    80001d28:	8dc48493          	addi	s1,s1,-1828 # 80005600 <tickslock>
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	42c080e7          	jalr	1068(ra) # 8000315c <acquire>
    80001d38:	00002717          	auipc	a4,0x2
    80001d3c:	7cc70713          	addi	a4,a4,1996 # 80004504 <ticks>
    80001d40:	00072783          	lw	a5,0(a4)
    80001d44:	01013403          	ld	s0,16(sp)
    80001d48:	01813083          	ld	ra,24(sp)
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	0017879b          	addiw	a5,a5,1
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	00f72023          	sw	a5,0(a4)
    80001d5c:	02010113          	addi	sp,sp,32
    80001d60:	00001317          	auipc	t1,0x1
    80001d64:	4c830067          	jr	1224(t1) # 80003228 <release>

0000000080001d68 <devintr>:
    80001d68:	142027f3          	csrr	a5,scause
    80001d6c:	00000513          	li	a0,0
    80001d70:	0007c463          	bltz	a5,80001d78 <devintr+0x10>
    80001d74:	00008067          	ret
    80001d78:	fe010113          	addi	sp,sp,-32
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00113c23          	sd	ra,24(sp)
    80001d84:	00913423          	sd	s1,8(sp)
    80001d88:	02010413          	addi	s0,sp,32
    80001d8c:	0ff7f713          	andi	a4,a5,255
    80001d90:	00900693          	li	a3,9
    80001d94:	04d70c63          	beq	a4,a3,80001dec <devintr+0x84>
    80001d98:	fff00713          	li	a4,-1
    80001d9c:	03f71713          	slli	a4,a4,0x3f
    80001da0:	00170713          	addi	a4,a4,1
    80001da4:	00e78c63          	beq	a5,a4,80001dbc <devintr+0x54>
    80001da8:	01813083          	ld	ra,24(sp)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	c8c080e7          	jalr	-884(ra) # 80001a48 <cpuid>
    80001dc4:	06050663          	beqz	a0,80001e30 <devintr+0xc8>
    80001dc8:	144027f3          	csrr	a5,sip
    80001dcc:	ffd7f793          	andi	a5,a5,-3
    80001dd0:	14479073          	csrw	sip,a5
    80001dd4:	01813083          	ld	ra,24(sp)
    80001dd8:	01013403          	ld	s0,16(sp)
    80001ddc:	00813483          	ld	s1,8(sp)
    80001de0:	00200513          	li	a0,2
    80001de4:	02010113          	addi	sp,sp,32
    80001de8:	00008067          	ret
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	258080e7          	jalr	600(ra) # 80002044 <plic_claim>
    80001df4:	00a00793          	li	a5,10
    80001df8:	00050493          	mv	s1,a0
    80001dfc:	06f50663          	beq	a0,a5,80001e68 <devintr+0x100>
    80001e00:	00100513          	li	a0,1
    80001e04:	fa0482e3          	beqz	s1,80001da8 <devintr+0x40>
    80001e08:	00048593          	mv	a1,s1
    80001e0c:	00002517          	auipc	a0,0x2
    80001e10:	2e450513          	addi	a0,a0,740 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	674080e7          	jalr	1652(ra) # 80002488 <__printf>
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	25c080e7          	jalr	604(ra) # 8000207c <plic_complete>
    80001e28:	00100513          	li	a0,1
    80001e2c:	f7dff06f          	j	80001da8 <devintr+0x40>
    80001e30:	00003517          	auipc	a0,0x3
    80001e34:	7d050513          	addi	a0,a0,2000 # 80005600 <tickslock>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	324080e7          	jalr	804(ra) # 8000315c <acquire>
    80001e40:	00002717          	auipc	a4,0x2
    80001e44:	6c470713          	addi	a4,a4,1732 # 80004504 <ticks>
    80001e48:	00072783          	lw	a5,0(a4)
    80001e4c:	00003517          	auipc	a0,0x3
    80001e50:	7b450513          	addi	a0,a0,1972 # 80005600 <tickslock>
    80001e54:	0017879b          	addiw	a5,a5,1
    80001e58:	00f72023          	sw	a5,0(a4)
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	3cc080e7          	jalr	972(ra) # 80003228 <release>
    80001e64:	f65ff06f          	j	80001dc8 <devintr+0x60>
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	f28080e7          	jalr	-216(ra) # 80002d90 <uartintr>
    80001e70:	fadff06f          	j	80001e1c <devintr+0xb4>
	...

0000000080001e80 <kernelvec>:
    80001e80:	f0010113          	addi	sp,sp,-256
    80001e84:	00113023          	sd	ra,0(sp)
    80001e88:	00213423          	sd	sp,8(sp)
    80001e8c:	00313823          	sd	gp,16(sp)
    80001e90:	00413c23          	sd	tp,24(sp)
    80001e94:	02513023          	sd	t0,32(sp)
    80001e98:	02613423          	sd	t1,40(sp)
    80001e9c:	02713823          	sd	t2,48(sp)
    80001ea0:	02813c23          	sd	s0,56(sp)
    80001ea4:	04913023          	sd	s1,64(sp)
    80001ea8:	04a13423          	sd	a0,72(sp)
    80001eac:	04b13823          	sd	a1,80(sp)
    80001eb0:	04c13c23          	sd	a2,88(sp)
    80001eb4:	06d13023          	sd	a3,96(sp)
    80001eb8:	06e13423          	sd	a4,104(sp)
    80001ebc:	06f13823          	sd	a5,112(sp)
    80001ec0:	07013c23          	sd	a6,120(sp)
    80001ec4:	09113023          	sd	a7,128(sp)
    80001ec8:	09213423          	sd	s2,136(sp)
    80001ecc:	09313823          	sd	s3,144(sp)
    80001ed0:	09413c23          	sd	s4,152(sp)
    80001ed4:	0b513023          	sd	s5,160(sp)
    80001ed8:	0b613423          	sd	s6,168(sp)
    80001edc:	0b713823          	sd	s7,176(sp)
    80001ee0:	0b813c23          	sd	s8,184(sp)
    80001ee4:	0d913023          	sd	s9,192(sp)
    80001ee8:	0da13423          	sd	s10,200(sp)
    80001eec:	0db13823          	sd	s11,208(sp)
    80001ef0:	0dc13c23          	sd	t3,216(sp)
    80001ef4:	0fd13023          	sd	t4,224(sp)
    80001ef8:	0fe13423          	sd	t5,232(sp)
    80001efc:	0ff13823          	sd	t6,240(sp)
    80001f00:	cc9ff0ef          	jal	ra,80001bc8 <kerneltrap>
    80001f04:	00013083          	ld	ra,0(sp)
    80001f08:	00813103          	ld	sp,8(sp)
    80001f0c:	01013183          	ld	gp,16(sp)
    80001f10:	02013283          	ld	t0,32(sp)
    80001f14:	02813303          	ld	t1,40(sp)
    80001f18:	03013383          	ld	t2,48(sp)
    80001f1c:	03813403          	ld	s0,56(sp)
    80001f20:	04013483          	ld	s1,64(sp)
    80001f24:	04813503          	ld	a0,72(sp)
    80001f28:	05013583          	ld	a1,80(sp)
    80001f2c:	05813603          	ld	a2,88(sp)
    80001f30:	06013683          	ld	a3,96(sp)
    80001f34:	06813703          	ld	a4,104(sp)
    80001f38:	07013783          	ld	a5,112(sp)
    80001f3c:	07813803          	ld	a6,120(sp)
    80001f40:	08013883          	ld	a7,128(sp)
    80001f44:	08813903          	ld	s2,136(sp)
    80001f48:	09013983          	ld	s3,144(sp)
    80001f4c:	09813a03          	ld	s4,152(sp)
    80001f50:	0a013a83          	ld	s5,160(sp)
    80001f54:	0a813b03          	ld	s6,168(sp)
    80001f58:	0b013b83          	ld	s7,176(sp)
    80001f5c:	0b813c03          	ld	s8,184(sp)
    80001f60:	0c013c83          	ld	s9,192(sp)
    80001f64:	0c813d03          	ld	s10,200(sp)
    80001f68:	0d013d83          	ld	s11,208(sp)
    80001f6c:	0d813e03          	ld	t3,216(sp)
    80001f70:	0e013e83          	ld	t4,224(sp)
    80001f74:	0e813f03          	ld	t5,232(sp)
    80001f78:	0f013f83          	ld	t6,240(sp)
    80001f7c:	10010113          	addi	sp,sp,256
    80001f80:	10200073          	sret
    80001f84:	00000013          	nop
    80001f88:	00000013          	nop
    80001f8c:	00000013          	nop

0000000080001f90 <timervec>:
    80001f90:	34051573          	csrrw	a0,mscratch,a0
    80001f94:	00b53023          	sd	a1,0(a0)
    80001f98:	00c53423          	sd	a2,8(a0)
    80001f9c:	00d53823          	sd	a3,16(a0)
    80001fa0:	01853583          	ld	a1,24(a0)
    80001fa4:	02053603          	ld	a2,32(a0)
    80001fa8:	0005b683          	ld	a3,0(a1)
    80001fac:	00c686b3          	add	a3,a3,a2
    80001fb0:	00d5b023          	sd	a3,0(a1)
    80001fb4:	00200593          	li	a1,2
    80001fb8:	14459073          	csrw	sip,a1
    80001fbc:	01053683          	ld	a3,16(a0)
    80001fc0:	00853603          	ld	a2,8(a0)
    80001fc4:	00053583          	ld	a1,0(a0)
    80001fc8:	34051573          	csrrw	a0,mscratch,a0
    80001fcc:	30200073          	mret

0000000080001fd0 <plicinit>:
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	0c0007b7          	lui	a5,0xc000
    80001fe4:	00100713          	li	a4,1
    80001fe8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001fec:	00e7a223          	sw	a4,4(a5)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <plicinithart>:
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813023          	sd	s0,0(sp)
    80002000:	00113423          	sd	ra,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	a40080e7          	jalr	-1472(ra) # 80001a48 <cpuid>
    80002010:	0085171b          	slliw	a4,a0,0x8
    80002014:	0c0027b7          	lui	a5,0xc002
    80002018:	00e787b3          	add	a5,a5,a4
    8000201c:	40200713          	li	a4,1026
    80002020:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	00d5151b          	slliw	a0,a0,0xd
    80002030:	0c2017b7          	lui	a5,0xc201
    80002034:	00a78533          	add	a0,a5,a0
    80002038:	00052023          	sw	zero,0(a0)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <plic_claim>:
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	01010413          	addi	s0,sp,16
    80002054:	00000097          	auipc	ra,0x0
    80002058:	9f4080e7          	jalr	-1548(ra) # 80001a48 <cpuid>
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	00d5151b          	slliw	a0,a0,0xd
    80002068:	0c2017b7          	lui	a5,0xc201
    8000206c:	00a78533          	add	a0,a5,a0
    80002070:	00452503          	lw	a0,4(a0)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <plic_complete>:
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00813823          	sd	s0,16(sp)
    80002084:	00913423          	sd	s1,8(sp)
    80002088:	00113c23          	sd	ra,24(sp)
    8000208c:	02010413          	addi	s0,sp,32
    80002090:	00050493          	mv	s1,a0
    80002094:	00000097          	auipc	ra,0x0
    80002098:	9b4080e7          	jalr	-1612(ra) # 80001a48 <cpuid>
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00d5179b          	slliw	a5,a0,0xd
    800020a8:	0c201737          	lui	a4,0xc201
    800020ac:	00f707b3          	add	a5,a4,a5
    800020b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800020b4:	00813483          	ld	s1,8(sp)
    800020b8:	02010113          	addi	sp,sp,32
    800020bc:	00008067          	ret

00000000800020c0 <consolewrite>:
    800020c0:	fb010113          	addi	sp,sp,-80
    800020c4:	04813023          	sd	s0,64(sp)
    800020c8:	04113423          	sd	ra,72(sp)
    800020cc:	02913c23          	sd	s1,56(sp)
    800020d0:	03213823          	sd	s2,48(sp)
    800020d4:	03313423          	sd	s3,40(sp)
    800020d8:	03413023          	sd	s4,32(sp)
    800020dc:	01513c23          	sd	s5,24(sp)
    800020e0:	05010413          	addi	s0,sp,80
    800020e4:	06c05c63          	blez	a2,8000215c <consolewrite+0x9c>
    800020e8:	00060993          	mv	s3,a2
    800020ec:	00050a13          	mv	s4,a0
    800020f0:	00058493          	mv	s1,a1
    800020f4:	00000913          	li	s2,0
    800020f8:	fff00a93          	li	s5,-1
    800020fc:	01c0006f          	j	80002118 <consolewrite+0x58>
    80002100:	fbf44503          	lbu	a0,-65(s0)
    80002104:	0019091b          	addiw	s2,s2,1
    80002108:	00148493          	addi	s1,s1,1
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	a9c080e7          	jalr	-1380(ra) # 80002ba8 <uartputc>
    80002114:	03298063          	beq	s3,s2,80002134 <consolewrite+0x74>
    80002118:	00048613          	mv	a2,s1
    8000211c:	00100693          	li	a3,1
    80002120:	000a0593          	mv	a1,s4
    80002124:	fbf40513          	addi	a0,s0,-65
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	9d8080e7          	jalr	-1576(ra) # 80001b00 <either_copyin>
    80002130:	fd5518e3          	bne	a0,s5,80002100 <consolewrite+0x40>
    80002134:	04813083          	ld	ra,72(sp)
    80002138:	04013403          	ld	s0,64(sp)
    8000213c:	03813483          	ld	s1,56(sp)
    80002140:	02813983          	ld	s3,40(sp)
    80002144:	02013a03          	ld	s4,32(sp)
    80002148:	01813a83          	ld	s5,24(sp)
    8000214c:	00090513          	mv	a0,s2
    80002150:	03013903          	ld	s2,48(sp)
    80002154:	05010113          	addi	sp,sp,80
    80002158:	00008067          	ret
    8000215c:	00000913          	li	s2,0
    80002160:	fd5ff06f          	j	80002134 <consolewrite+0x74>

0000000080002164 <consoleread>:
    80002164:	f9010113          	addi	sp,sp,-112
    80002168:	06813023          	sd	s0,96(sp)
    8000216c:	04913c23          	sd	s1,88(sp)
    80002170:	05213823          	sd	s2,80(sp)
    80002174:	05313423          	sd	s3,72(sp)
    80002178:	05413023          	sd	s4,64(sp)
    8000217c:	03513c23          	sd	s5,56(sp)
    80002180:	03613823          	sd	s6,48(sp)
    80002184:	03713423          	sd	s7,40(sp)
    80002188:	03813023          	sd	s8,32(sp)
    8000218c:	06113423          	sd	ra,104(sp)
    80002190:	01913c23          	sd	s9,24(sp)
    80002194:	07010413          	addi	s0,sp,112
    80002198:	00060b93          	mv	s7,a2
    8000219c:	00050913          	mv	s2,a0
    800021a0:	00058c13          	mv	s8,a1
    800021a4:	00060b1b          	sext.w	s6,a2
    800021a8:	00003497          	auipc	s1,0x3
    800021ac:	47048493          	addi	s1,s1,1136 # 80005618 <cons>
    800021b0:	00400993          	li	s3,4
    800021b4:	fff00a13          	li	s4,-1
    800021b8:	00a00a93          	li	s5,10
    800021bc:	05705e63          	blez	s7,80002218 <consoleread+0xb4>
    800021c0:	09c4a703          	lw	a4,156(s1)
    800021c4:	0984a783          	lw	a5,152(s1)
    800021c8:	0007071b          	sext.w	a4,a4
    800021cc:	08e78463          	beq	a5,a4,80002254 <consoleread+0xf0>
    800021d0:	07f7f713          	andi	a4,a5,127
    800021d4:	00e48733          	add	a4,s1,a4
    800021d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800021dc:	0017869b          	addiw	a3,a5,1
    800021e0:	08d4ac23          	sw	a3,152(s1)
    800021e4:	00070c9b          	sext.w	s9,a4
    800021e8:	0b370663          	beq	a4,s3,80002294 <consoleread+0x130>
    800021ec:	00100693          	li	a3,1
    800021f0:	f9f40613          	addi	a2,s0,-97
    800021f4:	000c0593          	mv	a1,s8
    800021f8:	00090513          	mv	a0,s2
    800021fc:	f8e40fa3          	sb	a4,-97(s0)
    80002200:	00000097          	auipc	ra,0x0
    80002204:	8b4080e7          	jalr	-1868(ra) # 80001ab4 <either_copyout>
    80002208:	01450863          	beq	a0,s4,80002218 <consoleread+0xb4>
    8000220c:	001c0c13          	addi	s8,s8,1
    80002210:	fffb8b9b          	addiw	s7,s7,-1
    80002214:	fb5c94e3          	bne	s9,s5,800021bc <consoleread+0x58>
    80002218:	000b851b          	sext.w	a0,s7
    8000221c:	06813083          	ld	ra,104(sp)
    80002220:	06013403          	ld	s0,96(sp)
    80002224:	05813483          	ld	s1,88(sp)
    80002228:	05013903          	ld	s2,80(sp)
    8000222c:	04813983          	ld	s3,72(sp)
    80002230:	04013a03          	ld	s4,64(sp)
    80002234:	03813a83          	ld	s5,56(sp)
    80002238:	02813b83          	ld	s7,40(sp)
    8000223c:	02013c03          	ld	s8,32(sp)
    80002240:	01813c83          	ld	s9,24(sp)
    80002244:	40ab053b          	subw	a0,s6,a0
    80002248:	03013b03          	ld	s6,48(sp)
    8000224c:	07010113          	addi	sp,sp,112
    80002250:	00008067          	ret
    80002254:	00001097          	auipc	ra,0x1
    80002258:	1d8080e7          	jalr	472(ra) # 8000342c <push_on>
    8000225c:	0984a703          	lw	a4,152(s1)
    80002260:	09c4a783          	lw	a5,156(s1)
    80002264:	0007879b          	sext.w	a5,a5
    80002268:	fef70ce3          	beq	a4,a5,80002260 <consoleread+0xfc>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	234080e7          	jalr	564(ra) # 800034a0 <pop_on>
    80002274:	0984a783          	lw	a5,152(s1)
    80002278:	07f7f713          	andi	a4,a5,127
    8000227c:	00e48733          	add	a4,s1,a4
    80002280:	01874703          	lbu	a4,24(a4)
    80002284:	0017869b          	addiw	a3,a5,1
    80002288:	08d4ac23          	sw	a3,152(s1)
    8000228c:	00070c9b          	sext.w	s9,a4
    80002290:	f5371ee3          	bne	a4,s3,800021ec <consoleread+0x88>
    80002294:	000b851b          	sext.w	a0,s7
    80002298:	f96bf2e3          	bgeu	s7,s6,8000221c <consoleread+0xb8>
    8000229c:	08f4ac23          	sw	a5,152(s1)
    800022a0:	f7dff06f          	j	8000221c <consoleread+0xb8>

00000000800022a4 <consputc>:
    800022a4:	10000793          	li	a5,256
    800022a8:	00f50663          	beq	a0,a5,800022b4 <consputc+0x10>
    800022ac:	00001317          	auipc	t1,0x1
    800022b0:	9f430067          	jr	-1548(t1) # 80002ca0 <uartputc_sync>
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00800513          	li	a0,8
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	9d8080e7          	jalr	-1576(ra) # 80002ca0 <uartputc_sync>
    800022d0:	02000513          	li	a0,32
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	9cc080e7          	jalr	-1588(ra) # 80002ca0 <uartputc_sync>
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00800513          	li	a0,8
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00001317          	auipc	t1,0x1
    800022f0:	9b430067          	jr	-1612(t1) # 80002ca0 <uartputc_sync>

00000000800022f4 <consoleintr>:
    800022f4:	fe010113          	addi	sp,sp,-32
    800022f8:	00813823          	sd	s0,16(sp)
    800022fc:	00913423          	sd	s1,8(sp)
    80002300:	01213023          	sd	s2,0(sp)
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	00003917          	auipc	s2,0x3
    80002310:	30c90913          	addi	s2,s2,780 # 80005618 <cons>
    80002314:	00050493          	mv	s1,a0
    80002318:	00090513          	mv	a0,s2
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	e40080e7          	jalr	-448(ra) # 8000315c <acquire>
    80002324:	02048c63          	beqz	s1,8000235c <consoleintr+0x68>
    80002328:	0a092783          	lw	a5,160(s2)
    8000232c:	09892703          	lw	a4,152(s2)
    80002330:	07f00693          	li	a3,127
    80002334:	40e7873b          	subw	a4,a5,a4
    80002338:	02e6e263          	bltu	a3,a4,8000235c <consoleintr+0x68>
    8000233c:	00d00713          	li	a4,13
    80002340:	04e48063          	beq	s1,a4,80002380 <consoleintr+0x8c>
    80002344:	07f7f713          	andi	a4,a5,127
    80002348:	00e90733          	add	a4,s2,a4
    8000234c:	0017879b          	addiw	a5,a5,1
    80002350:	0af92023          	sw	a5,160(s2)
    80002354:	00970c23          	sb	s1,24(a4)
    80002358:	08f92e23          	sw	a5,156(s2)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	01813083          	ld	ra,24(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	00013903          	ld	s2,0(sp)
    8000236c:	00003517          	auipc	a0,0x3
    80002370:	2ac50513          	addi	a0,a0,684 # 80005618 <cons>
    80002374:	02010113          	addi	sp,sp,32
    80002378:	00001317          	auipc	t1,0x1
    8000237c:	eb030067          	jr	-336(t1) # 80003228 <release>
    80002380:	00a00493          	li	s1,10
    80002384:	fc1ff06f          	j	80002344 <consoleintr+0x50>

0000000080002388 <consoleinit>:
    80002388:	fe010113          	addi	sp,sp,-32
    8000238c:	00113c23          	sd	ra,24(sp)
    80002390:	00813823          	sd	s0,16(sp)
    80002394:	00913423          	sd	s1,8(sp)
    80002398:	02010413          	addi	s0,sp,32
    8000239c:	00003497          	auipc	s1,0x3
    800023a0:	27c48493          	addi	s1,s1,636 # 80005618 <cons>
    800023a4:	00048513          	mv	a0,s1
    800023a8:	00002597          	auipc	a1,0x2
    800023ac:	da058593          	addi	a1,a1,-608 # 80004148 <CONSOLE_STATUS+0x138>
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	d88080e7          	jalr	-632(ra) # 80003138 <initlock>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	7ac080e7          	jalr	1964(ra) # 80002b64 <uartinit>
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	01013403          	ld	s0,16(sp)
    800023c8:	00000797          	auipc	a5,0x0
    800023cc:	d9c78793          	addi	a5,a5,-612 # 80002164 <consoleread>
    800023d0:	0af4bc23          	sd	a5,184(s1)
    800023d4:	00000797          	auipc	a5,0x0
    800023d8:	cec78793          	addi	a5,a5,-788 # 800020c0 <consolewrite>
    800023dc:	0cf4b023          	sd	a5,192(s1)
    800023e0:	00813483          	ld	s1,8(sp)
    800023e4:	02010113          	addi	sp,sp,32
    800023e8:	00008067          	ret

00000000800023ec <console_read>:
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00813423          	sd	s0,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	00003317          	auipc	t1,0x3
    80002400:	2d433303          	ld	t1,724(t1) # 800056d0 <devsw+0x10>
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00030067          	jr	t1

000000008000240c <console_write>:
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    80002418:	00813403          	ld	s0,8(sp)
    8000241c:	00003317          	auipc	t1,0x3
    80002420:	2bc33303          	ld	t1,700(t1) # 800056d8 <devsw+0x18>
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00030067          	jr	t1

000000008000242c <panic>:
    8000242c:	fe010113          	addi	sp,sp,-32
    80002430:	00113c23          	sd	ra,24(sp)
    80002434:	00813823          	sd	s0,16(sp)
    80002438:	00913423          	sd	s1,8(sp)
    8000243c:	02010413          	addi	s0,sp,32
    80002440:	00050493          	mv	s1,a0
    80002444:	00002517          	auipc	a0,0x2
    80002448:	d0c50513          	addi	a0,a0,-756 # 80004150 <CONSOLE_STATUS+0x140>
    8000244c:	00003797          	auipc	a5,0x3
    80002450:	3207a623          	sw	zero,812(a5) # 80005778 <pr+0x18>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	034080e7          	jalr	52(ra) # 80002488 <__printf>
    8000245c:	00048513          	mv	a0,s1
    80002460:	00000097          	auipc	ra,0x0
    80002464:	028080e7          	jalr	40(ra) # 80002488 <__printf>
    80002468:	00002517          	auipc	a0,0x2
    8000246c:	cc850513          	addi	a0,a0,-824 # 80004130 <CONSOLE_STATUS+0x120>
    80002470:	00000097          	auipc	ra,0x0
    80002474:	018080e7          	jalr	24(ra) # 80002488 <__printf>
    80002478:	00100793          	li	a5,1
    8000247c:	00002717          	auipc	a4,0x2
    80002480:	08f72623          	sw	a5,140(a4) # 80004508 <panicked>
    80002484:	0000006f          	j	80002484 <panic+0x58>

0000000080002488 <__printf>:
    80002488:	f3010113          	addi	sp,sp,-208
    8000248c:	08813023          	sd	s0,128(sp)
    80002490:	07313423          	sd	s3,104(sp)
    80002494:	09010413          	addi	s0,sp,144
    80002498:	05813023          	sd	s8,64(sp)
    8000249c:	08113423          	sd	ra,136(sp)
    800024a0:	06913c23          	sd	s1,120(sp)
    800024a4:	07213823          	sd	s2,112(sp)
    800024a8:	07413023          	sd	s4,96(sp)
    800024ac:	05513c23          	sd	s5,88(sp)
    800024b0:	05613823          	sd	s6,80(sp)
    800024b4:	05713423          	sd	s7,72(sp)
    800024b8:	03913c23          	sd	s9,56(sp)
    800024bc:	03a13823          	sd	s10,48(sp)
    800024c0:	03b13423          	sd	s11,40(sp)
    800024c4:	00003317          	auipc	t1,0x3
    800024c8:	29c30313          	addi	t1,t1,668 # 80005760 <pr>
    800024cc:	01832c03          	lw	s8,24(t1)
    800024d0:	00b43423          	sd	a1,8(s0)
    800024d4:	00c43823          	sd	a2,16(s0)
    800024d8:	00d43c23          	sd	a3,24(s0)
    800024dc:	02e43023          	sd	a4,32(s0)
    800024e0:	02f43423          	sd	a5,40(s0)
    800024e4:	03043823          	sd	a6,48(s0)
    800024e8:	03143c23          	sd	a7,56(s0)
    800024ec:	00050993          	mv	s3,a0
    800024f0:	4a0c1663          	bnez	s8,8000299c <__printf+0x514>
    800024f4:	60098c63          	beqz	s3,80002b0c <__printf+0x684>
    800024f8:	0009c503          	lbu	a0,0(s3)
    800024fc:	00840793          	addi	a5,s0,8
    80002500:	f6f43c23          	sd	a5,-136(s0)
    80002504:	00000493          	li	s1,0
    80002508:	22050063          	beqz	a0,80002728 <__printf+0x2a0>
    8000250c:	00002a37          	lui	s4,0x2
    80002510:	00018ab7          	lui	s5,0x18
    80002514:	000f4b37          	lui	s6,0xf4
    80002518:	00989bb7          	lui	s7,0x989
    8000251c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002520:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002524:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002528:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000252c:	00148c9b          	addiw	s9,s1,1
    80002530:	02500793          	li	a5,37
    80002534:	01998933          	add	s2,s3,s9
    80002538:	38f51263          	bne	a0,a5,800028bc <__printf+0x434>
    8000253c:	00094783          	lbu	a5,0(s2)
    80002540:	00078c9b          	sext.w	s9,a5
    80002544:	1e078263          	beqz	a5,80002728 <__printf+0x2a0>
    80002548:	0024849b          	addiw	s1,s1,2
    8000254c:	07000713          	li	a4,112
    80002550:	00998933          	add	s2,s3,s1
    80002554:	38e78a63          	beq	a5,a4,800028e8 <__printf+0x460>
    80002558:	20f76863          	bltu	a4,a5,80002768 <__printf+0x2e0>
    8000255c:	42a78863          	beq	a5,a0,8000298c <__printf+0x504>
    80002560:	06400713          	li	a4,100
    80002564:	40e79663          	bne	a5,a4,80002970 <__printf+0x4e8>
    80002568:	f7843783          	ld	a5,-136(s0)
    8000256c:	0007a603          	lw	a2,0(a5)
    80002570:	00878793          	addi	a5,a5,8
    80002574:	f6f43c23          	sd	a5,-136(s0)
    80002578:	42064a63          	bltz	a2,800029ac <__printf+0x524>
    8000257c:	00a00713          	li	a4,10
    80002580:	02e677bb          	remuw	a5,a2,a4
    80002584:	00002d97          	auipc	s11,0x2
    80002588:	bf4d8d93          	addi	s11,s11,-1036 # 80004178 <digits>
    8000258c:	00900593          	li	a1,9
    80002590:	0006051b          	sext.w	a0,a2
    80002594:	00000c93          	li	s9,0
    80002598:	02079793          	slli	a5,a5,0x20
    8000259c:	0207d793          	srli	a5,a5,0x20
    800025a0:	00fd87b3          	add	a5,s11,a5
    800025a4:	0007c783          	lbu	a5,0(a5)
    800025a8:	02e656bb          	divuw	a3,a2,a4
    800025ac:	f8f40023          	sb	a5,-128(s0)
    800025b0:	14c5d863          	bge	a1,a2,80002700 <__printf+0x278>
    800025b4:	06300593          	li	a1,99
    800025b8:	00100c93          	li	s9,1
    800025bc:	02e6f7bb          	remuw	a5,a3,a4
    800025c0:	02079793          	slli	a5,a5,0x20
    800025c4:	0207d793          	srli	a5,a5,0x20
    800025c8:	00fd87b3          	add	a5,s11,a5
    800025cc:	0007c783          	lbu	a5,0(a5)
    800025d0:	02e6d73b          	divuw	a4,a3,a4
    800025d4:	f8f400a3          	sb	a5,-127(s0)
    800025d8:	12a5f463          	bgeu	a1,a0,80002700 <__printf+0x278>
    800025dc:	00a00693          	li	a3,10
    800025e0:	00900593          	li	a1,9
    800025e4:	02d777bb          	remuw	a5,a4,a3
    800025e8:	02079793          	slli	a5,a5,0x20
    800025ec:	0207d793          	srli	a5,a5,0x20
    800025f0:	00fd87b3          	add	a5,s11,a5
    800025f4:	0007c503          	lbu	a0,0(a5)
    800025f8:	02d757bb          	divuw	a5,a4,a3
    800025fc:	f8a40123          	sb	a0,-126(s0)
    80002600:	48e5f263          	bgeu	a1,a4,80002a84 <__printf+0x5fc>
    80002604:	06300513          	li	a0,99
    80002608:	02d7f5bb          	remuw	a1,a5,a3
    8000260c:	02059593          	slli	a1,a1,0x20
    80002610:	0205d593          	srli	a1,a1,0x20
    80002614:	00bd85b3          	add	a1,s11,a1
    80002618:	0005c583          	lbu	a1,0(a1)
    8000261c:	02d7d7bb          	divuw	a5,a5,a3
    80002620:	f8b401a3          	sb	a1,-125(s0)
    80002624:	48e57263          	bgeu	a0,a4,80002aa8 <__printf+0x620>
    80002628:	3e700513          	li	a0,999
    8000262c:	02d7f5bb          	remuw	a1,a5,a3
    80002630:	02059593          	slli	a1,a1,0x20
    80002634:	0205d593          	srli	a1,a1,0x20
    80002638:	00bd85b3          	add	a1,s11,a1
    8000263c:	0005c583          	lbu	a1,0(a1)
    80002640:	02d7d7bb          	divuw	a5,a5,a3
    80002644:	f8b40223          	sb	a1,-124(s0)
    80002648:	46e57663          	bgeu	a0,a4,80002ab4 <__printf+0x62c>
    8000264c:	02d7f5bb          	remuw	a1,a5,a3
    80002650:	02059593          	slli	a1,a1,0x20
    80002654:	0205d593          	srli	a1,a1,0x20
    80002658:	00bd85b3          	add	a1,s11,a1
    8000265c:	0005c583          	lbu	a1,0(a1)
    80002660:	02d7d7bb          	divuw	a5,a5,a3
    80002664:	f8b402a3          	sb	a1,-123(s0)
    80002668:	46ea7863          	bgeu	s4,a4,80002ad8 <__printf+0x650>
    8000266c:	02d7f5bb          	remuw	a1,a5,a3
    80002670:	02059593          	slli	a1,a1,0x20
    80002674:	0205d593          	srli	a1,a1,0x20
    80002678:	00bd85b3          	add	a1,s11,a1
    8000267c:	0005c583          	lbu	a1,0(a1)
    80002680:	02d7d7bb          	divuw	a5,a5,a3
    80002684:	f8b40323          	sb	a1,-122(s0)
    80002688:	3eeaf863          	bgeu	s5,a4,80002a78 <__printf+0x5f0>
    8000268c:	02d7f5bb          	remuw	a1,a5,a3
    80002690:	02059593          	slli	a1,a1,0x20
    80002694:	0205d593          	srli	a1,a1,0x20
    80002698:	00bd85b3          	add	a1,s11,a1
    8000269c:	0005c583          	lbu	a1,0(a1)
    800026a0:	02d7d7bb          	divuw	a5,a5,a3
    800026a4:	f8b403a3          	sb	a1,-121(s0)
    800026a8:	42eb7e63          	bgeu	s6,a4,80002ae4 <__printf+0x65c>
    800026ac:	02d7f5bb          	remuw	a1,a5,a3
    800026b0:	02059593          	slli	a1,a1,0x20
    800026b4:	0205d593          	srli	a1,a1,0x20
    800026b8:	00bd85b3          	add	a1,s11,a1
    800026bc:	0005c583          	lbu	a1,0(a1)
    800026c0:	02d7d7bb          	divuw	a5,a5,a3
    800026c4:	f8b40423          	sb	a1,-120(s0)
    800026c8:	42ebfc63          	bgeu	s7,a4,80002b00 <__printf+0x678>
    800026cc:	02079793          	slli	a5,a5,0x20
    800026d0:	0207d793          	srli	a5,a5,0x20
    800026d4:	00fd8db3          	add	s11,s11,a5
    800026d8:	000dc703          	lbu	a4,0(s11)
    800026dc:	00a00793          	li	a5,10
    800026e0:	00900c93          	li	s9,9
    800026e4:	f8e404a3          	sb	a4,-119(s0)
    800026e8:	00065c63          	bgez	a2,80002700 <__printf+0x278>
    800026ec:	f9040713          	addi	a4,s0,-112
    800026f0:	00f70733          	add	a4,a4,a5
    800026f4:	02d00693          	li	a3,45
    800026f8:	fed70823          	sb	a3,-16(a4)
    800026fc:	00078c93          	mv	s9,a5
    80002700:	f8040793          	addi	a5,s0,-128
    80002704:	01978cb3          	add	s9,a5,s9
    80002708:	f7f40d13          	addi	s10,s0,-129
    8000270c:	000cc503          	lbu	a0,0(s9)
    80002710:	fffc8c93          	addi	s9,s9,-1
    80002714:	00000097          	auipc	ra,0x0
    80002718:	b90080e7          	jalr	-1136(ra) # 800022a4 <consputc>
    8000271c:	ffac98e3          	bne	s9,s10,8000270c <__printf+0x284>
    80002720:	00094503          	lbu	a0,0(s2)
    80002724:	e00514e3          	bnez	a0,8000252c <__printf+0xa4>
    80002728:	1a0c1663          	bnez	s8,800028d4 <__printf+0x44c>
    8000272c:	08813083          	ld	ra,136(sp)
    80002730:	08013403          	ld	s0,128(sp)
    80002734:	07813483          	ld	s1,120(sp)
    80002738:	07013903          	ld	s2,112(sp)
    8000273c:	06813983          	ld	s3,104(sp)
    80002740:	06013a03          	ld	s4,96(sp)
    80002744:	05813a83          	ld	s5,88(sp)
    80002748:	05013b03          	ld	s6,80(sp)
    8000274c:	04813b83          	ld	s7,72(sp)
    80002750:	04013c03          	ld	s8,64(sp)
    80002754:	03813c83          	ld	s9,56(sp)
    80002758:	03013d03          	ld	s10,48(sp)
    8000275c:	02813d83          	ld	s11,40(sp)
    80002760:	0d010113          	addi	sp,sp,208
    80002764:	00008067          	ret
    80002768:	07300713          	li	a4,115
    8000276c:	1ce78a63          	beq	a5,a4,80002940 <__printf+0x4b8>
    80002770:	07800713          	li	a4,120
    80002774:	1ee79e63          	bne	a5,a4,80002970 <__printf+0x4e8>
    80002778:	f7843783          	ld	a5,-136(s0)
    8000277c:	0007a703          	lw	a4,0(a5)
    80002780:	00878793          	addi	a5,a5,8
    80002784:	f6f43c23          	sd	a5,-136(s0)
    80002788:	28074263          	bltz	a4,80002a0c <__printf+0x584>
    8000278c:	00002d97          	auipc	s11,0x2
    80002790:	9ecd8d93          	addi	s11,s11,-1556 # 80004178 <digits>
    80002794:	00f77793          	andi	a5,a4,15
    80002798:	00fd87b3          	add	a5,s11,a5
    8000279c:	0007c683          	lbu	a3,0(a5)
    800027a0:	00f00613          	li	a2,15
    800027a4:	0007079b          	sext.w	a5,a4
    800027a8:	f8d40023          	sb	a3,-128(s0)
    800027ac:	0047559b          	srliw	a1,a4,0x4
    800027b0:	0047569b          	srliw	a3,a4,0x4
    800027b4:	00000c93          	li	s9,0
    800027b8:	0ee65063          	bge	a2,a4,80002898 <__printf+0x410>
    800027bc:	00f6f693          	andi	a3,a3,15
    800027c0:	00dd86b3          	add	a3,s11,a3
    800027c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800027c8:	0087d79b          	srliw	a5,a5,0x8
    800027cc:	00100c93          	li	s9,1
    800027d0:	f8d400a3          	sb	a3,-127(s0)
    800027d4:	0cb67263          	bgeu	a2,a1,80002898 <__printf+0x410>
    800027d8:	00f7f693          	andi	a3,a5,15
    800027dc:	00dd86b3          	add	a3,s11,a3
    800027e0:	0006c583          	lbu	a1,0(a3)
    800027e4:	00f00613          	li	a2,15
    800027e8:	0047d69b          	srliw	a3,a5,0x4
    800027ec:	f8b40123          	sb	a1,-126(s0)
    800027f0:	0047d593          	srli	a1,a5,0x4
    800027f4:	28f67e63          	bgeu	a2,a5,80002a90 <__printf+0x608>
    800027f8:	00f6f693          	andi	a3,a3,15
    800027fc:	00dd86b3          	add	a3,s11,a3
    80002800:	0006c503          	lbu	a0,0(a3)
    80002804:	0087d813          	srli	a6,a5,0x8
    80002808:	0087d69b          	srliw	a3,a5,0x8
    8000280c:	f8a401a3          	sb	a0,-125(s0)
    80002810:	28b67663          	bgeu	a2,a1,80002a9c <__printf+0x614>
    80002814:	00f6f693          	andi	a3,a3,15
    80002818:	00dd86b3          	add	a3,s11,a3
    8000281c:	0006c583          	lbu	a1,0(a3)
    80002820:	00c7d513          	srli	a0,a5,0xc
    80002824:	00c7d69b          	srliw	a3,a5,0xc
    80002828:	f8b40223          	sb	a1,-124(s0)
    8000282c:	29067a63          	bgeu	a2,a6,80002ac0 <__printf+0x638>
    80002830:	00f6f693          	andi	a3,a3,15
    80002834:	00dd86b3          	add	a3,s11,a3
    80002838:	0006c583          	lbu	a1,0(a3)
    8000283c:	0107d813          	srli	a6,a5,0x10
    80002840:	0107d69b          	srliw	a3,a5,0x10
    80002844:	f8b402a3          	sb	a1,-123(s0)
    80002848:	28a67263          	bgeu	a2,a0,80002acc <__printf+0x644>
    8000284c:	00f6f693          	andi	a3,a3,15
    80002850:	00dd86b3          	add	a3,s11,a3
    80002854:	0006c683          	lbu	a3,0(a3)
    80002858:	0147d79b          	srliw	a5,a5,0x14
    8000285c:	f8d40323          	sb	a3,-122(s0)
    80002860:	21067663          	bgeu	a2,a6,80002a6c <__printf+0x5e4>
    80002864:	02079793          	slli	a5,a5,0x20
    80002868:	0207d793          	srli	a5,a5,0x20
    8000286c:	00fd8db3          	add	s11,s11,a5
    80002870:	000dc683          	lbu	a3,0(s11)
    80002874:	00800793          	li	a5,8
    80002878:	00700c93          	li	s9,7
    8000287c:	f8d403a3          	sb	a3,-121(s0)
    80002880:	00075c63          	bgez	a4,80002898 <__printf+0x410>
    80002884:	f9040713          	addi	a4,s0,-112
    80002888:	00f70733          	add	a4,a4,a5
    8000288c:	02d00693          	li	a3,45
    80002890:	fed70823          	sb	a3,-16(a4)
    80002894:	00078c93          	mv	s9,a5
    80002898:	f8040793          	addi	a5,s0,-128
    8000289c:	01978cb3          	add	s9,a5,s9
    800028a0:	f7f40d13          	addi	s10,s0,-129
    800028a4:	000cc503          	lbu	a0,0(s9)
    800028a8:	fffc8c93          	addi	s9,s9,-1
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	9f8080e7          	jalr	-1544(ra) # 800022a4 <consputc>
    800028b4:	ff9d18e3          	bne	s10,s9,800028a4 <__printf+0x41c>
    800028b8:	0100006f          	j	800028c8 <__printf+0x440>
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	9e8080e7          	jalr	-1560(ra) # 800022a4 <consputc>
    800028c4:	000c8493          	mv	s1,s9
    800028c8:	00094503          	lbu	a0,0(s2)
    800028cc:	c60510e3          	bnez	a0,8000252c <__printf+0xa4>
    800028d0:	e40c0ee3          	beqz	s8,8000272c <__printf+0x2a4>
    800028d4:	00003517          	auipc	a0,0x3
    800028d8:	e8c50513          	addi	a0,a0,-372 # 80005760 <pr>
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	94c080e7          	jalr	-1716(ra) # 80003228 <release>
    800028e4:	e49ff06f          	j	8000272c <__printf+0x2a4>
    800028e8:	f7843783          	ld	a5,-136(s0)
    800028ec:	03000513          	li	a0,48
    800028f0:	01000d13          	li	s10,16
    800028f4:	00878713          	addi	a4,a5,8
    800028f8:	0007bc83          	ld	s9,0(a5)
    800028fc:	f6e43c23          	sd	a4,-136(s0)
    80002900:	00000097          	auipc	ra,0x0
    80002904:	9a4080e7          	jalr	-1628(ra) # 800022a4 <consputc>
    80002908:	07800513          	li	a0,120
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	998080e7          	jalr	-1640(ra) # 800022a4 <consputc>
    80002914:	00002d97          	auipc	s11,0x2
    80002918:	864d8d93          	addi	s11,s11,-1948 # 80004178 <digits>
    8000291c:	03ccd793          	srli	a5,s9,0x3c
    80002920:	00fd87b3          	add	a5,s11,a5
    80002924:	0007c503          	lbu	a0,0(a5)
    80002928:	fffd0d1b          	addiw	s10,s10,-1
    8000292c:	004c9c93          	slli	s9,s9,0x4
    80002930:	00000097          	auipc	ra,0x0
    80002934:	974080e7          	jalr	-1676(ra) # 800022a4 <consputc>
    80002938:	fe0d12e3          	bnez	s10,8000291c <__printf+0x494>
    8000293c:	f8dff06f          	j	800028c8 <__printf+0x440>
    80002940:	f7843783          	ld	a5,-136(s0)
    80002944:	0007bc83          	ld	s9,0(a5)
    80002948:	00878793          	addi	a5,a5,8
    8000294c:	f6f43c23          	sd	a5,-136(s0)
    80002950:	000c9a63          	bnez	s9,80002964 <__printf+0x4dc>
    80002954:	1080006f          	j	80002a5c <__printf+0x5d4>
    80002958:	001c8c93          	addi	s9,s9,1
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	948080e7          	jalr	-1720(ra) # 800022a4 <consputc>
    80002964:	000cc503          	lbu	a0,0(s9)
    80002968:	fe0518e3          	bnez	a0,80002958 <__printf+0x4d0>
    8000296c:	f5dff06f          	j	800028c8 <__printf+0x440>
    80002970:	02500513          	li	a0,37
    80002974:	00000097          	auipc	ra,0x0
    80002978:	930080e7          	jalr	-1744(ra) # 800022a4 <consputc>
    8000297c:	000c8513          	mv	a0,s9
    80002980:	00000097          	auipc	ra,0x0
    80002984:	924080e7          	jalr	-1756(ra) # 800022a4 <consputc>
    80002988:	f41ff06f          	j	800028c8 <__printf+0x440>
    8000298c:	02500513          	li	a0,37
    80002990:	00000097          	auipc	ra,0x0
    80002994:	914080e7          	jalr	-1772(ra) # 800022a4 <consputc>
    80002998:	f31ff06f          	j	800028c8 <__printf+0x440>
    8000299c:	00030513          	mv	a0,t1
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	7bc080e7          	jalr	1980(ra) # 8000315c <acquire>
    800029a8:	b4dff06f          	j	800024f4 <__printf+0x6c>
    800029ac:	40c0053b          	negw	a0,a2
    800029b0:	00a00713          	li	a4,10
    800029b4:	02e576bb          	remuw	a3,a0,a4
    800029b8:	00001d97          	auipc	s11,0x1
    800029bc:	7c0d8d93          	addi	s11,s11,1984 # 80004178 <digits>
    800029c0:	ff700593          	li	a1,-9
    800029c4:	02069693          	slli	a3,a3,0x20
    800029c8:	0206d693          	srli	a3,a3,0x20
    800029cc:	00dd86b3          	add	a3,s11,a3
    800029d0:	0006c683          	lbu	a3,0(a3)
    800029d4:	02e557bb          	divuw	a5,a0,a4
    800029d8:	f8d40023          	sb	a3,-128(s0)
    800029dc:	10b65e63          	bge	a2,a1,80002af8 <__printf+0x670>
    800029e0:	06300593          	li	a1,99
    800029e4:	02e7f6bb          	remuw	a3,a5,a4
    800029e8:	02069693          	slli	a3,a3,0x20
    800029ec:	0206d693          	srli	a3,a3,0x20
    800029f0:	00dd86b3          	add	a3,s11,a3
    800029f4:	0006c683          	lbu	a3,0(a3)
    800029f8:	02e7d73b          	divuw	a4,a5,a4
    800029fc:	00200793          	li	a5,2
    80002a00:	f8d400a3          	sb	a3,-127(s0)
    80002a04:	bca5ece3          	bltu	a1,a0,800025dc <__printf+0x154>
    80002a08:	ce5ff06f          	j	800026ec <__printf+0x264>
    80002a0c:	40e007bb          	negw	a5,a4
    80002a10:	00001d97          	auipc	s11,0x1
    80002a14:	768d8d93          	addi	s11,s11,1896 # 80004178 <digits>
    80002a18:	00f7f693          	andi	a3,a5,15
    80002a1c:	00dd86b3          	add	a3,s11,a3
    80002a20:	0006c583          	lbu	a1,0(a3)
    80002a24:	ff100613          	li	a2,-15
    80002a28:	0047d69b          	srliw	a3,a5,0x4
    80002a2c:	f8b40023          	sb	a1,-128(s0)
    80002a30:	0047d59b          	srliw	a1,a5,0x4
    80002a34:	0ac75e63          	bge	a4,a2,80002af0 <__printf+0x668>
    80002a38:	00f6f693          	andi	a3,a3,15
    80002a3c:	00dd86b3          	add	a3,s11,a3
    80002a40:	0006c603          	lbu	a2,0(a3)
    80002a44:	00f00693          	li	a3,15
    80002a48:	0087d79b          	srliw	a5,a5,0x8
    80002a4c:	f8c400a3          	sb	a2,-127(s0)
    80002a50:	d8b6e4e3          	bltu	a3,a1,800027d8 <__printf+0x350>
    80002a54:	00200793          	li	a5,2
    80002a58:	e2dff06f          	j	80002884 <__printf+0x3fc>
    80002a5c:	00001c97          	auipc	s9,0x1
    80002a60:	6fcc8c93          	addi	s9,s9,1788 # 80004158 <CONSOLE_STATUS+0x148>
    80002a64:	02800513          	li	a0,40
    80002a68:	ef1ff06f          	j	80002958 <__printf+0x4d0>
    80002a6c:	00700793          	li	a5,7
    80002a70:	00600c93          	li	s9,6
    80002a74:	e0dff06f          	j	80002880 <__printf+0x3f8>
    80002a78:	00700793          	li	a5,7
    80002a7c:	00600c93          	li	s9,6
    80002a80:	c69ff06f          	j	800026e8 <__printf+0x260>
    80002a84:	00300793          	li	a5,3
    80002a88:	00200c93          	li	s9,2
    80002a8c:	c5dff06f          	j	800026e8 <__printf+0x260>
    80002a90:	00300793          	li	a5,3
    80002a94:	00200c93          	li	s9,2
    80002a98:	de9ff06f          	j	80002880 <__printf+0x3f8>
    80002a9c:	00400793          	li	a5,4
    80002aa0:	00300c93          	li	s9,3
    80002aa4:	dddff06f          	j	80002880 <__printf+0x3f8>
    80002aa8:	00400793          	li	a5,4
    80002aac:	00300c93          	li	s9,3
    80002ab0:	c39ff06f          	j	800026e8 <__printf+0x260>
    80002ab4:	00500793          	li	a5,5
    80002ab8:	00400c93          	li	s9,4
    80002abc:	c2dff06f          	j	800026e8 <__printf+0x260>
    80002ac0:	00500793          	li	a5,5
    80002ac4:	00400c93          	li	s9,4
    80002ac8:	db9ff06f          	j	80002880 <__printf+0x3f8>
    80002acc:	00600793          	li	a5,6
    80002ad0:	00500c93          	li	s9,5
    80002ad4:	dadff06f          	j	80002880 <__printf+0x3f8>
    80002ad8:	00600793          	li	a5,6
    80002adc:	00500c93          	li	s9,5
    80002ae0:	c09ff06f          	j	800026e8 <__printf+0x260>
    80002ae4:	00800793          	li	a5,8
    80002ae8:	00700c93          	li	s9,7
    80002aec:	bfdff06f          	j	800026e8 <__printf+0x260>
    80002af0:	00100793          	li	a5,1
    80002af4:	d91ff06f          	j	80002884 <__printf+0x3fc>
    80002af8:	00100793          	li	a5,1
    80002afc:	bf1ff06f          	j	800026ec <__printf+0x264>
    80002b00:	00900793          	li	a5,9
    80002b04:	00800c93          	li	s9,8
    80002b08:	be1ff06f          	j	800026e8 <__printf+0x260>
    80002b0c:	00001517          	auipc	a0,0x1
    80002b10:	65450513          	addi	a0,a0,1620 # 80004160 <CONSOLE_STATUS+0x150>
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	918080e7          	jalr	-1768(ra) # 8000242c <panic>

0000000080002b1c <printfinit>:
    80002b1c:	fe010113          	addi	sp,sp,-32
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	00113c23          	sd	ra,24(sp)
    80002b2c:	02010413          	addi	s0,sp,32
    80002b30:	00003497          	auipc	s1,0x3
    80002b34:	c3048493          	addi	s1,s1,-976 # 80005760 <pr>
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	00001597          	auipc	a1,0x1
    80002b40:	63458593          	addi	a1,a1,1588 # 80004170 <CONSOLE_STATUS+0x160>
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	5f4080e7          	jalr	1524(ra) # 80003138 <initlock>
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	0004ac23          	sw	zero,24(s1)
    80002b58:	00813483          	ld	s1,8(sp)
    80002b5c:	02010113          	addi	sp,sp,32
    80002b60:	00008067          	ret

0000000080002b64 <uartinit>:
    80002b64:	ff010113          	addi	sp,sp,-16
    80002b68:	00813423          	sd	s0,8(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    80002b70:	100007b7          	lui	a5,0x10000
    80002b74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002b78:	f8000713          	li	a4,-128
    80002b7c:	00e781a3          	sb	a4,3(a5)
    80002b80:	00300713          	li	a4,3
    80002b84:	00e78023          	sb	a4,0(a5)
    80002b88:	000780a3          	sb	zero,1(a5)
    80002b8c:	00e781a3          	sb	a4,3(a5)
    80002b90:	00700693          	li	a3,7
    80002b94:	00d78123          	sb	a3,2(a5)
    80002b98:	00e780a3          	sb	a4,1(a5)
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <uartputc>:
    80002ba8:	00002797          	auipc	a5,0x2
    80002bac:	9607a783          	lw	a5,-1696(a5) # 80004508 <panicked>
    80002bb0:	00078463          	beqz	a5,80002bb8 <uartputc+0x10>
    80002bb4:	0000006f          	j	80002bb4 <uartputc+0xc>
    80002bb8:	fd010113          	addi	sp,sp,-48
    80002bbc:	02813023          	sd	s0,32(sp)
    80002bc0:	00913c23          	sd	s1,24(sp)
    80002bc4:	01213823          	sd	s2,16(sp)
    80002bc8:	01313423          	sd	s3,8(sp)
    80002bcc:	02113423          	sd	ra,40(sp)
    80002bd0:	03010413          	addi	s0,sp,48
    80002bd4:	00002917          	auipc	s2,0x2
    80002bd8:	93c90913          	addi	s2,s2,-1732 # 80004510 <uart_tx_r>
    80002bdc:	00093783          	ld	a5,0(s2)
    80002be0:	00002497          	auipc	s1,0x2
    80002be4:	93848493          	addi	s1,s1,-1736 # 80004518 <uart_tx_w>
    80002be8:	0004b703          	ld	a4,0(s1)
    80002bec:	02078693          	addi	a3,a5,32
    80002bf0:	00050993          	mv	s3,a0
    80002bf4:	02e69c63          	bne	a3,a4,80002c2c <uartputc+0x84>
    80002bf8:	00001097          	auipc	ra,0x1
    80002bfc:	834080e7          	jalr	-1996(ra) # 8000342c <push_on>
    80002c00:	00093783          	ld	a5,0(s2)
    80002c04:	0004b703          	ld	a4,0(s1)
    80002c08:	02078793          	addi	a5,a5,32
    80002c0c:	00e79463          	bne	a5,a4,80002c14 <uartputc+0x6c>
    80002c10:	0000006f          	j	80002c10 <uartputc+0x68>
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	88c080e7          	jalr	-1908(ra) # 800034a0 <pop_on>
    80002c1c:	00093783          	ld	a5,0(s2)
    80002c20:	0004b703          	ld	a4,0(s1)
    80002c24:	02078693          	addi	a3,a5,32
    80002c28:	fce688e3          	beq	a3,a4,80002bf8 <uartputc+0x50>
    80002c2c:	01f77693          	andi	a3,a4,31
    80002c30:	00003597          	auipc	a1,0x3
    80002c34:	b5058593          	addi	a1,a1,-1200 # 80005780 <uart_tx_buf>
    80002c38:	00d586b3          	add	a3,a1,a3
    80002c3c:	00170713          	addi	a4,a4,1
    80002c40:	01368023          	sb	s3,0(a3)
    80002c44:	00e4b023          	sd	a4,0(s1)
    80002c48:	10000637          	lui	a2,0x10000
    80002c4c:	02f71063          	bne	a4,a5,80002c6c <uartputc+0xc4>
    80002c50:	0340006f          	j	80002c84 <uartputc+0xdc>
    80002c54:	00074703          	lbu	a4,0(a4)
    80002c58:	00f93023          	sd	a5,0(s2)
    80002c5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002c60:	00093783          	ld	a5,0(s2)
    80002c64:	0004b703          	ld	a4,0(s1)
    80002c68:	00f70e63          	beq	a4,a5,80002c84 <uartputc+0xdc>
    80002c6c:	00564683          	lbu	a3,5(a2)
    80002c70:	01f7f713          	andi	a4,a5,31
    80002c74:	00e58733          	add	a4,a1,a4
    80002c78:	0206f693          	andi	a3,a3,32
    80002c7c:	00178793          	addi	a5,a5,1
    80002c80:	fc069ae3          	bnez	a3,80002c54 <uartputc+0xac>
    80002c84:	02813083          	ld	ra,40(sp)
    80002c88:	02013403          	ld	s0,32(sp)
    80002c8c:	01813483          	ld	s1,24(sp)
    80002c90:	01013903          	ld	s2,16(sp)
    80002c94:	00813983          	ld	s3,8(sp)
    80002c98:	03010113          	addi	sp,sp,48
    80002c9c:	00008067          	ret

0000000080002ca0 <uartputc_sync>:
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00813423          	sd	s0,8(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    80002cac:	00002717          	auipc	a4,0x2
    80002cb0:	85c72703          	lw	a4,-1956(a4) # 80004508 <panicked>
    80002cb4:	02071663          	bnez	a4,80002ce0 <uartputc_sync+0x40>
    80002cb8:	00050793          	mv	a5,a0
    80002cbc:	100006b7          	lui	a3,0x10000
    80002cc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002cc4:	02077713          	andi	a4,a4,32
    80002cc8:	fe070ce3          	beqz	a4,80002cc0 <uartputc_sync+0x20>
    80002ccc:	0ff7f793          	andi	a5,a5,255
    80002cd0:	00f68023          	sb	a5,0(a3)
    80002cd4:	00813403          	ld	s0,8(sp)
    80002cd8:	01010113          	addi	sp,sp,16
    80002cdc:	00008067          	ret
    80002ce0:	0000006f          	j	80002ce0 <uartputc_sync+0x40>

0000000080002ce4 <uartstart>:
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00813423          	sd	s0,8(sp)
    80002cec:	01010413          	addi	s0,sp,16
    80002cf0:	00002617          	auipc	a2,0x2
    80002cf4:	82060613          	addi	a2,a2,-2016 # 80004510 <uart_tx_r>
    80002cf8:	00002517          	auipc	a0,0x2
    80002cfc:	82050513          	addi	a0,a0,-2016 # 80004518 <uart_tx_w>
    80002d00:	00063783          	ld	a5,0(a2)
    80002d04:	00053703          	ld	a4,0(a0)
    80002d08:	04f70263          	beq	a4,a5,80002d4c <uartstart+0x68>
    80002d0c:	100005b7          	lui	a1,0x10000
    80002d10:	00003817          	auipc	a6,0x3
    80002d14:	a7080813          	addi	a6,a6,-1424 # 80005780 <uart_tx_buf>
    80002d18:	01c0006f          	j	80002d34 <uartstart+0x50>
    80002d1c:	0006c703          	lbu	a4,0(a3)
    80002d20:	00f63023          	sd	a5,0(a2)
    80002d24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d28:	00063783          	ld	a5,0(a2)
    80002d2c:	00053703          	ld	a4,0(a0)
    80002d30:	00f70e63          	beq	a4,a5,80002d4c <uartstart+0x68>
    80002d34:	01f7f713          	andi	a4,a5,31
    80002d38:	00e806b3          	add	a3,a6,a4
    80002d3c:	0055c703          	lbu	a4,5(a1)
    80002d40:	00178793          	addi	a5,a5,1
    80002d44:	02077713          	andi	a4,a4,32
    80002d48:	fc071ae3          	bnez	a4,80002d1c <uartstart+0x38>
    80002d4c:	00813403          	ld	s0,8(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret

0000000080002d58 <uartgetc>:
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16
    80002d64:	10000737          	lui	a4,0x10000
    80002d68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002d6c:	0017f793          	andi	a5,a5,1
    80002d70:	00078c63          	beqz	a5,80002d88 <uartgetc+0x30>
    80002d74:	00074503          	lbu	a0,0(a4)
    80002d78:	0ff57513          	andi	a0,a0,255
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret
    80002d88:	fff00513          	li	a0,-1
    80002d8c:	ff1ff06f          	j	80002d7c <uartgetc+0x24>

0000000080002d90 <uartintr>:
    80002d90:	100007b7          	lui	a5,0x10000
    80002d94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002d98:	0017f793          	andi	a5,a5,1
    80002d9c:	0a078463          	beqz	a5,80002e44 <uartintr+0xb4>
    80002da0:	fe010113          	addi	sp,sp,-32
    80002da4:	00813823          	sd	s0,16(sp)
    80002da8:	00913423          	sd	s1,8(sp)
    80002dac:	00113c23          	sd	ra,24(sp)
    80002db0:	02010413          	addi	s0,sp,32
    80002db4:	100004b7          	lui	s1,0x10000
    80002db8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002dbc:	0ff57513          	andi	a0,a0,255
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	534080e7          	jalr	1332(ra) # 800022f4 <consoleintr>
    80002dc8:	0054c783          	lbu	a5,5(s1)
    80002dcc:	0017f793          	andi	a5,a5,1
    80002dd0:	fe0794e3          	bnez	a5,80002db8 <uartintr+0x28>
    80002dd4:	00001617          	auipc	a2,0x1
    80002dd8:	73c60613          	addi	a2,a2,1852 # 80004510 <uart_tx_r>
    80002ddc:	00001517          	auipc	a0,0x1
    80002de0:	73c50513          	addi	a0,a0,1852 # 80004518 <uart_tx_w>
    80002de4:	00063783          	ld	a5,0(a2)
    80002de8:	00053703          	ld	a4,0(a0)
    80002dec:	04f70263          	beq	a4,a5,80002e30 <uartintr+0xa0>
    80002df0:	100005b7          	lui	a1,0x10000
    80002df4:	00003817          	auipc	a6,0x3
    80002df8:	98c80813          	addi	a6,a6,-1652 # 80005780 <uart_tx_buf>
    80002dfc:	01c0006f          	j	80002e18 <uartintr+0x88>
    80002e00:	0006c703          	lbu	a4,0(a3)
    80002e04:	00f63023          	sd	a5,0(a2)
    80002e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e0c:	00063783          	ld	a5,0(a2)
    80002e10:	00053703          	ld	a4,0(a0)
    80002e14:	00f70e63          	beq	a4,a5,80002e30 <uartintr+0xa0>
    80002e18:	01f7f713          	andi	a4,a5,31
    80002e1c:	00e806b3          	add	a3,a6,a4
    80002e20:	0055c703          	lbu	a4,5(a1)
    80002e24:	00178793          	addi	a5,a5,1
    80002e28:	02077713          	andi	a4,a4,32
    80002e2c:	fc071ae3          	bnez	a4,80002e00 <uartintr+0x70>
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret
    80002e44:	00001617          	auipc	a2,0x1
    80002e48:	6cc60613          	addi	a2,a2,1740 # 80004510 <uart_tx_r>
    80002e4c:	00001517          	auipc	a0,0x1
    80002e50:	6cc50513          	addi	a0,a0,1740 # 80004518 <uart_tx_w>
    80002e54:	00063783          	ld	a5,0(a2)
    80002e58:	00053703          	ld	a4,0(a0)
    80002e5c:	04f70263          	beq	a4,a5,80002ea0 <uartintr+0x110>
    80002e60:	100005b7          	lui	a1,0x10000
    80002e64:	00003817          	auipc	a6,0x3
    80002e68:	91c80813          	addi	a6,a6,-1764 # 80005780 <uart_tx_buf>
    80002e6c:	01c0006f          	j	80002e88 <uartintr+0xf8>
    80002e70:	0006c703          	lbu	a4,0(a3)
    80002e74:	00f63023          	sd	a5,0(a2)
    80002e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e7c:	00063783          	ld	a5,0(a2)
    80002e80:	00053703          	ld	a4,0(a0)
    80002e84:	02f70063          	beq	a4,a5,80002ea4 <uartintr+0x114>
    80002e88:	01f7f713          	andi	a4,a5,31
    80002e8c:	00e806b3          	add	a3,a6,a4
    80002e90:	0055c703          	lbu	a4,5(a1)
    80002e94:	00178793          	addi	a5,a5,1
    80002e98:	02077713          	andi	a4,a4,32
    80002e9c:	fc071ae3          	bnez	a4,80002e70 <uartintr+0xe0>
    80002ea0:	00008067          	ret
    80002ea4:	00008067          	ret

0000000080002ea8 <kinit>:
    80002ea8:	fc010113          	addi	sp,sp,-64
    80002eac:	02913423          	sd	s1,40(sp)
    80002eb0:	fffff7b7          	lui	a5,0xfffff
    80002eb4:	00004497          	auipc	s1,0x4
    80002eb8:	8eb48493          	addi	s1,s1,-1813 # 8000679f <end+0xfff>
    80002ebc:	02813823          	sd	s0,48(sp)
    80002ec0:	01313c23          	sd	s3,24(sp)
    80002ec4:	00f4f4b3          	and	s1,s1,a5
    80002ec8:	02113c23          	sd	ra,56(sp)
    80002ecc:	03213023          	sd	s2,32(sp)
    80002ed0:	01413823          	sd	s4,16(sp)
    80002ed4:	01513423          	sd	s5,8(sp)
    80002ed8:	04010413          	addi	s0,sp,64
    80002edc:	000017b7          	lui	a5,0x1
    80002ee0:	01100993          	li	s3,17
    80002ee4:	00f487b3          	add	a5,s1,a5
    80002ee8:	01b99993          	slli	s3,s3,0x1b
    80002eec:	06f9e063          	bltu	s3,a5,80002f4c <kinit+0xa4>
    80002ef0:	00003a97          	auipc	s5,0x3
    80002ef4:	8b0a8a93          	addi	s5,s5,-1872 # 800057a0 <end>
    80002ef8:	0754ec63          	bltu	s1,s5,80002f70 <kinit+0xc8>
    80002efc:	0734fa63          	bgeu	s1,s3,80002f70 <kinit+0xc8>
    80002f00:	00088a37          	lui	s4,0x88
    80002f04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002f08:	00001917          	auipc	s2,0x1
    80002f0c:	61890913          	addi	s2,s2,1560 # 80004520 <kmem>
    80002f10:	00ca1a13          	slli	s4,s4,0xc
    80002f14:	0140006f          	j	80002f28 <kinit+0x80>
    80002f18:	000017b7          	lui	a5,0x1
    80002f1c:	00f484b3          	add	s1,s1,a5
    80002f20:	0554e863          	bltu	s1,s5,80002f70 <kinit+0xc8>
    80002f24:	0534f663          	bgeu	s1,s3,80002f70 <kinit+0xc8>
    80002f28:	00001637          	lui	a2,0x1
    80002f2c:	00100593          	li	a1,1
    80002f30:	00048513          	mv	a0,s1
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	5e4080e7          	jalr	1508(ra) # 80003518 <__memset>
    80002f3c:	00093783          	ld	a5,0(s2)
    80002f40:	00f4b023          	sd	a5,0(s1)
    80002f44:	00993023          	sd	s1,0(s2)
    80002f48:	fd4498e3          	bne	s1,s4,80002f18 <kinit+0x70>
    80002f4c:	03813083          	ld	ra,56(sp)
    80002f50:	03013403          	ld	s0,48(sp)
    80002f54:	02813483          	ld	s1,40(sp)
    80002f58:	02013903          	ld	s2,32(sp)
    80002f5c:	01813983          	ld	s3,24(sp)
    80002f60:	01013a03          	ld	s4,16(sp)
    80002f64:	00813a83          	ld	s5,8(sp)
    80002f68:	04010113          	addi	sp,sp,64
    80002f6c:	00008067          	ret
    80002f70:	00001517          	auipc	a0,0x1
    80002f74:	22050513          	addi	a0,a0,544 # 80004190 <digits+0x18>
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	4b4080e7          	jalr	1204(ra) # 8000242c <panic>

0000000080002f80 <freerange>:
    80002f80:	fc010113          	addi	sp,sp,-64
    80002f84:	000017b7          	lui	a5,0x1
    80002f88:	02913423          	sd	s1,40(sp)
    80002f8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002f90:	009504b3          	add	s1,a0,s1
    80002f94:	fffff537          	lui	a0,0xfffff
    80002f98:	02813823          	sd	s0,48(sp)
    80002f9c:	02113c23          	sd	ra,56(sp)
    80002fa0:	03213023          	sd	s2,32(sp)
    80002fa4:	01313c23          	sd	s3,24(sp)
    80002fa8:	01413823          	sd	s4,16(sp)
    80002fac:	01513423          	sd	s5,8(sp)
    80002fb0:	01613023          	sd	s6,0(sp)
    80002fb4:	04010413          	addi	s0,sp,64
    80002fb8:	00a4f4b3          	and	s1,s1,a0
    80002fbc:	00f487b3          	add	a5,s1,a5
    80002fc0:	06f5e463          	bltu	a1,a5,80003028 <freerange+0xa8>
    80002fc4:	00002a97          	auipc	s5,0x2
    80002fc8:	7dca8a93          	addi	s5,s5,2012 # 800057a0 <end>
    80002fcc:	0954e263          	bltu	s1,s5,80003050 <freerange+0xd0>
    80002fd0:	01100993          	li	s3,17
    80002fd4:	01b99993          	slli	s3,s3,0x1b
    80002fd8:	0734fc63          	bgeu	s1,s3,80003050 <freerange+0xd0>
    80002fdc:	00058a13          	mv	s4,a1
    80002fe0:	00001917          	auipc	s2,0x1
    80002fe4:	54090913          	addi	s2,s2,1344 # 80004520 <kmem>
    80002fe8:	00002b37          	lui	s6,0x2
    80002fec:	0140006f          	j	80003000 <freerange+0x80>
    80002ff0:	000017b7          	lui	a5,0x1
    80002ff4:	00f484b3          	add	s1,s1,a5
    80002ff8:	0554ec63          	bltu	s1,s5,80003050 <freerange+0xd0>
    80002ffc:	0534fa63          	bgeu	s1,s3,80003050 <freerange+0xd0>
    80003000:	00001637          	lui	a2,0x1
    80003004:	00100593          	li	a1,1
    80003008:	00048513          	mv	a0,s1
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	50c080e7          	jalr	1292(ra) # 80003518 <__memset>
    80003014:	00093703          	ld	a4,0(s2)
    80003018:	016487b3          	add	a5,s1,s6
    8000301c:	00e4b023          	sd	a4,0(s1)
    80003020:	00993023          	sd	s1,0(s2)
    80003024:	fcfa76e3          	bgeu	s4,a5,80002ff0 <freerange+0x70>
    80003028:	03813083          	ld	ra,56(sp)
    8000302c:	03013403          	ld	s0,48(sp)
    80003030:	02813483          	ld	s1,40(sp)
    80003034:	02013903          	ld	s2,32(sp)
    80003038:	01813983          	ld	s3,24(sp)
    8000303c:	01013a03          	ld	s4,16(sp)
    80003040:	00813a83          	ld	s5,8(sp)
    80003044:	00013b03          	ld	s6,0(sp)
    80003048:	04010113          	addi	sp,sp,64
    8000304c:	00008067          	ret
    80003050:	00001517          	auipc	a0,0x1
    80003054:	14050513          	addi	a0,a0,320 # 80004190 <digits+0x18>
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	3d4080e7          	jalr	980(ra) # 8000242c <panic>

0000000080003060 <kfree>:
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00813823          	sd	s0,16(sp)
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	02010413          	addi	s0,sp,32
    80003074:	03451793          	slli	a5,a0,0x34
    80003078:	04079c63          	bnez	a5,800030d0 <kfree+0x70>
    8000307c:	00002797          	auipc	a5,0x2
    80003080:	72478793          	addi	a5,a5,1828 # 800057a0 <end>
    80003084:	00050493          	mv	s1,a0
    80003088:	04f56463          	bltu	a0,a5,800030d0 <kfree+0x70>
    8000308c:	01100793          	li	a5,17
    80003090:	01b79793          	slli	a5,a5,0x1b
    80003094:	02f57e63          	bgeu	a0,a5,800030d0 <kfree+0x70>
    80003098:	00001637          	lui	a2,0x1
    8000309c:	00100593          	li	a1,1
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	478080e7          	jalr	1144(ra) # 80003518 <__memset>
    800030a8:	00001797          	auipc	a5,0x1
    800030ac:	47878793          	addi	a5,a5,1144 # 80004520 <kmem>
    800030b0:	0007b703          	ld	a4,0(a5)
    800030b4:	01813083          	ld	ra,24(sp)
    800030b8:	01013403          	ld	s0,16(sp)
    800030bc:	00e4b023          	sd	a4,0(s1)
    800030c0:	0097b023          	sd	s1,0(a5)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret
    800030d0:	00001517          	auipc	a0,0x1
    800030d4:	0c050513          	addi	a0,a0,192 # 80004190 <digits+0x18>
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	354080e7          	jalr	852(ra) # 8000242c <panic>

00000000800030e0 <kalloc>:
    800030e0:	fe010113          	addi	sp,sp,-32
    800030e4:	00813823          	sd	s0,16(sp)
    800030e8:	00913423          	sd	s1,8(sp)
    800030ec:	00113c23          	sd	ra,24(sp)
    800030f0:	02010413          	addi	s0,sp,32
    800030f4:	00001797          	auipc	a5,0x1
    800030f8:	42c78793          	addi	a5,a5,1068 # 80004520 <kmem>
    800030fc:	0007b483          	ld	s1,0(a5)
    80003100:	02048063          	beqz	s1,80003120 <kalloc+0x40>
    80003104:	0004b703          	ld	a4,0(s1)
    80003108:	00001637          	lui	a2,0x1
    8000310c:	00500593          	li	a1,5
    80003110:	00048513          	mv	a0,s1
    80003114:	00e7b023          	sd	a4,0(a5)
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	400080e7          	jalr	1024(ra) # 80003518 <__memset>
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00048513          	mv	a0,s1
    8000312c:	00813483          	ld	s1,8(sp)
    80003130:	02010113          	addi	sp,sp,32
    80003134:	00008067          	ret

0000000080003138 <initlock>:
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
    80003144:	00813403          	ld	s0,8(sp)
    80003148:	00b53423          	sd	a1,8(a0)
    8000314c:	00052023          	sw	zero,0(a0)
    80003150:	00053823          	sd	zero,16(a0)
    80003154:	01010113          	addi	sp,sp,16
    80003158:	00008067          	ret

000000008000315c <acquire>:
    8000315c:	fe010113          	addi	sp,sp,-32
    80003160:	00813823          	sd	s0,16(sp)
    80003164:	00913423          	sd	s1,8(sp)
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	01213023          	sd	s2,0(sp)
    80003170:	02010413          	addi	s0,sp,32
    80003174:	00050493          	mv	s1,a0
    80003178:	10002973          	csrr	s2,sstatus
    8000317c:	100027f3          	csrr	a5,sstatus
    80003180:	ffd7f793          	andi	a5,a5,-3
    80003184:	10079073          	csrw	sstatus,a5
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	8e0080e7          	jalr	-1824(ra) # 80001a68 <mycpu>
    80003190:	07852783          	lw	a5,120(a0)
    80003194:	06078e63          	beqz	a5,80003210 <acquire+0xb4>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	8d0080e7          	jalr	-1840(ra) # 80001a68 <mycpu>
    800031a0:	07852783          	lw	a5,120(a0)
    800031a4:	0004a703          	lw	a4,0(s1)
    800031a8:	0017879b          	addiw	a5,a5,1
    800031ac:	06f52c23          	sw	a5,120(a0)
    800031b0:	04071063          	bnez	a4,800031f0 <acquire+0x94>
    800031b4:	00100713          	li	a4,1
    800031b8:	00070793          	mv	a5,a4
    800031bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800031c0:	0007879b          	sext.w	a5,a5
    800031c4:	fe079ae3          	bnez	a5,800031b8 <acquire+0x5c>
    800031c8:	0ff0000f          	fence
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	89c080e7          	jalr	-1892(ra) # 80001a68 <mycpu>
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00a4b823          	sd	a0,16(s1)
    800031e0:	00013903          	ld	s2,0(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret
    800031f0:	0104b903          	ld	s2,16(s1)
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	874080e7          	jalr	-1932(ra) # 80001a68 <mycpu>
    800031fc:	faa91ce3          	bne	s2,a0,800031b4 <acquire+0x58>
    80003200:	00001517          	auipc	a0,0x1
    80003204:	f9850513          	addi	a0,a0,-104 # 80004198 <digits+0x20>
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	224080e7          	jalr	548(ra) # 8000242c <panic>
    80003210:	00195913          	srli	s2,s2,0x1
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	854080e7          	jalr	-1964(ra) # 80001a68 <mycpu>
    8000321c:	00197913          	andi	s2,s2,1
    80003220:	07252e23          	sw	s2,124(a0)
    80003224:	f75ff06f          	j	80003198 <acquire+0x3c>

0000000080003228 <release>:
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00052783          	lw	a5,0(a0)
    80003244:	00079a63          	bnez	a5,80003258 <release+0x30>
    80003248:	00001517          	auipc	a0,0x1
    8000324c:	f5850513          	addi	a0,a0,-168 # 800041a0 <digits+0x28>
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	1dc080e7          	jalr	476(ra) # 8000242c <panic>
    80003258:	01053903          	ld	s2,16(a0)
    8000325c:	00050493          	mv	s1,a0
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	808080e7          	jalr	-2040(ra) # 80001a68 <mycpu>
    80003268:	fea910e3          	bne	s2,a0,80003248 <release+0x20>
    8000326c:	0004b823          	sd	zero,16(s1)
    80003270:	0ff0000f          	fence
    80003274:	0f50000f          	fence	iorw,ow
    80003278:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	7ec080e7          	jalr	2028(ra) # 80001a68 <mycpu>
    80003284:	100027f3          	csrr	a5,sstatus
    80003288:	0027f793          	andi	a5,a5,2
    8000328c:	04079a63          	bnez	a5,800032e0 <release+0xb8>
    80003290:	07852783          	lw	a5,120(a0)
    80003294:	02f05e63          	blez	a5,800032d0 <release+0xa8>
    80003298:	fff7871b          	addiw	a4,a5,-1
    8000329c:	06e52c23          	sw	a4,120(a0)
    800032a0:	00071c63          	bnez	a4,800032b8 <release+0x90>
    800032a4:	07c52783          	lw	a5,124(a0)
    800032a8:	00078863          	beqz	a5,800032b8 <release+0x90>
    800032ac:	100027f3          	csrr	a5,sstatus
    800032b0:	0027e793          	ori	a5,a5,2
    800032b4:	10079073          	csrw	sstatus,a5
    800032b8:	01813083          	ld	ra,24(sp)
    800032bc:	01013403          	ld	s0,16(sp)
    800032c0:	00813483          	ld	s1,8(sp)
    800032c4:	00013903          	ld	s2,0(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret
    800032d0:	00001517          	auipc	a0,0x1
    800032d4:	ef050513          	addi	a0,a0,-272 # 800041c0 <digits+0x48>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	154080e7          	jalr	340(ra) # 8000242c <panic>
    800032e0:	00001517          	auipc	a0,0x1
    800032e4:	ec850513          	addi	a0,a0,-312 # 800041a8 <digits+0x30>
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	144080e7          	jalr	324(ra) # 8000242c <panic>

00000000800032f0 <holding>:
    800032f0:	00052783          	lw	a5,0(a0)
    800032f4:	00079663          	bnez	a5,80003300 <holding+0x10>
    800032f8:	00000513          	li	a0,0
    800032fc:	00008067          	ret
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	02010413          	addi	s0,sp,32
    80003314:	01053483          	ld	s1,16(a0)
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	750080e7          	jalr	1872(ra) # 80001a68 <mycpu>
    80003320:	01813083          	ld	ra,24(sp)
    80003324:	01013403          	ld	s0,16(sp)
    80003328:	40a48533          	sub	a0,s1,a0
    8000332c:	00153513          	seqz	a0,a0
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret

000000008000333c <push_off>:
    8000333c:	fe010113          	addi	sp,sp,-32
    80003340:	00813823          	sd	s0,16(sp)
    80003344:	00113c23          	sd	ra,24(sp)
    80003348:	00913423          	sd	s1,8(sp)
    8000334c:	02010413          	addi	s0,sp,32
    80003350:	100024f3          	csrr	s1,sstatus
    80003354:	100027f3          	csrr	a5,sstatus
    80003358:	ffd7f793          	andi	a5,a5,-3
    8000335c:	10079073          	csrw	sstatus,a5
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	708080e7          	jalr	1800(ra) # 80001a68 <mycpu>
    80003368:	07852783          	lw	a5,120(a0)
    8000336c:	02078663          	beqz	a5,80003398 <push_off+0x5c>
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	6f8080e7          	jalr	1784(ra) # 80001a68 <mycpu>
    80003378:	07852783          	lw	a5,120(a0)
    8000337c:	01813083          	ld	ra,24(sp)
    80003380:	01013403          	ld	s0,16(sp)
    80003384:	0017879b          	addiw	a5,a5,1
    80003388:	06f52c23          	sw	a5,120(a0)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	02010113          	addi	sp,sp,32
    80003394:	00008067          	ret
    80003398:	0014d493          	srli	s1,s1,0x1
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	6cc080e7          	jalr	1740(ra) # 80001a68 <mycpu>
    800033a4:	0014f493          	andi	s1,s1,1
    800033a8:	06952e23          	sw	s1,124(a0)
    800033ac:	fc5ff06f          	j	80003370 <push_off+0x34>

00000000800033b0 <pop_off>:
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00813023          	sd	s0,0(sp)
    800033b8:	00113423          	sd	ra,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	6a8080e7          	jalr	1704(ra) # 80001a68 <mycpu>
    800033c8:	100027f3          	csrr	a5,sstatus
    800033cc:	0027f793          	andi	a5,a5,2
    800033d0:	04079663          	bnez	a5,8000341c <pop_off+0x6c>
    800033d4:	07852783          	lw	a5,120(a0)
    800033d8:	02f05a63          	blez	a5,8000340c <pop_off+0x5c>
    800033dc:	fff7871b          	addiw	a4,a5,-1
    800033e0:	06e52c23          	sw	a4,120(a0)
    800033e4:	00071c63          	bnez	a4,800033fc <pop_off+0x4c>
    800033e8:	07c52783          	lw	a5,124(a0)
    800033ec:	00078863          	beqz	a5,800033fc <pop_off+0x4c>
    800033f0:	100027f3          	csrr	a5,sstatus
    800033f4:	0027e793          	ori	a5,a5,2
    800033f8:	10079073          	csrw	sstatus,a5
    800033fc:	00813083          	ld	ra,8(sp)
    80003400:	00013403          	ld	s0,0(sp)
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00008067          	ret
    8000340c:	00001517          	auipc	a0,0x1
    80003410:	db450513          	addi	a0,a0,-588 # 800041c0 <digits+0x48>
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	018080e7          	jalr	24(ra) # 8000242c <panic>
    8000341c:	00001517          	auipc	a0,0x1
    80003420:	d8c50513          	addi	a0,a0,-628 # 800041a8 <digits+0x30>
    80003424:	fffff097          	auipc	ra,0xfffff
    80003428:	008080e7          	jalr	8(ra) # 8000242c <panic>

000000008000342c <push_on>:
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	100024f3          	csrr	s1,sstatus
    80003444:	100027f3          	csrr	a5,sstatus
    80003448:	0027e793          	ori	a5,a5,2
    8000344c:	10079073          	csrw	sstatus,a5
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	618080e7          	jalr	1560(ra) # 80001a68 <mycpu>
    80003458:	07852783          	lw	a5,120(a0)
    8000345c:	02078663          	beqz	a5,80003488 <push_on+0x5c>
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	608080e7          	jalr	1544(ra) # 80001a68 <mycpu>
    80003468:	07852783          	lw	a5,120(a0)
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	0017879b          	addiw	a5,a5,1
    80003478:	06f52c23          	sw	a5,120(a0)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret
    80003488:	0014d493          	srli	s1,s1,0x1
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	5dc080e7          	jalr	1500(ra) # 80001a68 <mycpu>
    80003494:	0014f493          	andi	s1,s1,1
    80003498:	06952e23          	sw	s1,124(a0)
    8000349c:	fc5ff06f          	j	80003460 <push_on+0x34>

00000000800034a0 <pop_on>:
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813023          	sd	s0,0(sp)
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	01010413          	addi	s0,sp,16
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	5b8080e7          	jalr	1464(ra) # 80001a68 <mycpu>
    800034b8:	100027f3          	csrr	a5,sstatus
    800034bc:	0027f793          	andi	a5,a5,2
    800034c0:	04078463          	beqz	a5,80003508 <pop_on+0x68>
    800034c4:	07852783          	lw	a5,120(a0)
    800034c8:	02f05863          	blez	a5,800034f8 <pop_on+0x58>
    800034cc:	fff7879b          	addiw	a5,a5,-1
    800034d0:	06f52c23          	sw	a5,120(a0)
    800034d4:	07853783          	ld	a5,120(a0)
    800034d8:	00079863          	bnez	a5,800034e8 <pop_on+0x48>
    800034dc:	100027f3          	csrr	a5,sstatus
    800034e0:	ffd7f793          	andi	a5,a5,-3
    800034e4:	10079073          	csrw	sstatus,a5
    800034e8:	00813083          	ld	ra,8(sp)
    800034ec:	00013403          	ld	s0,0(sp)
    800034f0:	01010113          	addi	sp,sp,16
    800034f4:	00008067          	ret
    800034f8:	00001517          	auipc	a0,0x1
    800034fc:	cf050513          	addi	a0,a0,-784 # 800041e8 <digits+0x70>
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	f2c080e7          	jalr	-212(ra) # 8000242c <panic>
    80003508:	00001517          	auipc	a0,0x1
    8000350c:	cc050513          	addi	a0,a0,-832 # 800041c8 <digits+0x50>
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	f1c080e7          	jalr	-228(ra) # 8000242c <panic>

0000000080003518 <__memset>:
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813423          	sd	s0,8(sp)
    80003520:	01010413          	addi	s0,sp,16
    80003524:	1a060e63          	beqz	a2,800036e0 <__memset+0x1c8>
    80003528:	40a007b3          	neg	a5,a0
    8000352c:	0077f793          	andi	a5,a5,7
    80003530:	00778693          	addi	a3,a5,7
    80003534:	00b00813          	li	a6,11
    80003538:	0ff5f593          	andi	a1,a1,255
    8000353c:	fff6071b          	addiw	a4,a2,-1
    80003540:	1b06e663          	bltu	a3,a6,800036ec <__memset+0x1d4>
    80003544:	1cd76463          	bltu	a4,a3,8000370c <__memset+0x1f4>
    80003548:	1a078e63          	beqz	a5,80003704 <__memset+0x1ec>
    8000354c:	00b50023          	sb	a1,0(a0)
    80003550:	00100713          	li	a4,1
    80003554:	1ae78463          	beq	a5,a4,800036fc <__memset+0x1e4>
    80003558:	00b500a3          	sb	a1,1(a0)
    8000355c:	00200713          	li	a4,2
    80003560:	1ae78a63          	beq	a5,a4,80003714 <__memset+0x1fc>
    80003564:	00b50123          	sb	a1,2(a0)
    80003568:	00300713          	li	a4,3
    8000356c:	18e78463          	beq	a5,a4,800036f4 <__memset+0x1dc>
    80003570:	00b501a3          	sb	a1,3(a0)
    80003574:	00400713          	li	a4,4
    80003578:	1ae78263          	beq	a5,a4,8000371c <__memset+0x204>
    8000357c:	00b50223          	sb	a1,4(a0)
    80003580:	00500713          	li	a4,5
    80003584:	1ae78063          	beq	a5,a4,80003724 <__memset+0x20c>
    80003588:	00b502a3          	sb	a1,5(a0)
    8000358c:	00700713          	li	a4,7
    80003590:	18e79e63          	bne	a5,a4,8000372c <__memset+0x214>
    80003594:	00b50323          	sb	a1,6(a0)
    80003598:	00700e93          	li	t4,7
    8000359c:	00859713          	slli	a4,a1,0x8
    800035a0:	00e5e733          	or	a4,a1,a4
    800035a4:	01059e13          	slli	t3,a1,0x10
    800035a8:	01c76e33          	or	t3,a4,t3
    800035ac:	01859313          	slli	t1,a1,0x18
    800035b0:	006e6333          	or	t1,t3,t1
    800035b4:	02059893          	slli	a7,a1,0x20
    800035b8:	40f60e3b          	subw	t3,a2,a5
    800035bc:	011368b3          	or	a7,t1,a7
    800035c0:	02859813          	slli	a6,a1,0x28
    800035c4:	0108e833          	or	a6,a7,a6
    800035c8:	03059693          	slli	a3,a1,0x30
    800035cc:	003e589b          	srliw	a7,t3,0x3
    800035d0:	00d866b3          	or	a3,a6,a3
    800035d4:	03859713          	slli	a4,a1,0x38
    800035d8:	00389813          	slli	a6,a7,0x3
    800035dc:	00f507b3          	add	a5,a0,a5
    800035e0:	00e6e733          	or	a4,a3,a4
    800035e4:	000e089b          	sext.w	a7,t3
    800035e8:	00f806b3          	add	a3,a6,a5
    800035ec:	00e7b023          	sd	a4,0(a5)
    800035f0:	00878793          	addi	a5,a5,8
    800035f4:	fed79ce3          	bne	a5,a3,800035ec <__memset+0xd4>
    800035f8:	ff8e7793          	andi	a5,t3,-8
    800035fc:	0007871b          	sext.w	a4,a5
    80003600:	01d787bb          	addw	a5,a5,t4
    80003604:	0ce88e63          	beq	a7,a4,800036e0 <__memset+0x1c8>
    80003608:	00f50733          	add	a4,a0,a5
    8000360c:	00b70023          	sb	a1,0(a4)
    80003610:	0017871b          	addiw	a4,a5,1
    80003614:	0cc77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003618:	00e50733          	add	a4,a0,a4
    8000361c:	00b70023          	sb	a1,0(a4)
    80003620:	0027871b          	addiw	a4,a5,2
    80003624:	0ac77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003628:	00e50733          	add	a4,a0,a4
    8000362c:	00b70023          	sb	a1,0(a4)
    80003630:	0037871b          	addiw	a4,a5,3
    80003634:	0ac77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003638:	00e50733          	add	a4,a0,a4
    8000363c:	00b70023          	sb	a1,0(a4)
    80003640:	0047871b          	addiw	a4,a5,4
    80003644:	08c77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003648:	00e50733          	add	a4,a0,a4
    8000364c:	00b70023          	sb	a1,0(a4)
    80003650:	0057871b          	addiw	a4,a5,5
    80003654:	08c77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003658:	00e50733          	add	a4,a0,a4
    8000365c:	00b70023          	sb	a1,0(a4)
    80003660:	0067871b          	addiw	a4,a5,6
    80003664:	06c77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003668:	00e50733          	add	a4,a0,a4
    8000366c:	00b70023          	sb	a1,0(a4)
    80003670:	0077871b          	addiw	a4,a5,7
    80003674:	06c77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003678:	00e50733          	add	a4,a0,a4
    8000367c:	00b70023          	sb	a1,0(a4)
    80003680:	0087871b          	addiw	a4,a5,8
    80003684:	04c77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003688:	00e50733          	add	a4,a0,a4
    8000368c:	00b70023          	sb	a1,0(a4)
    80003690:	0097871b          	addiw	a4,a5,9
    80003694:	04c77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    80003698:	00e50733          	add	a4,a0,a4
    8000369c:	00b70023          	sb	a1,0(a4)
    800036a0:	00a7871b          	addiw	a4,a5,10
    800036a4:	02c77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    800036a8:	00e50733          	add	a4,a0,a4
    800036ac:	00b70023          	sb	a1,0(a4)
    800036b0:	00b7871b          	addiw	a4,a5,11
    800036b4:	02c77663          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    800036b8:	00e50733          	add	a4,a0,a4
    800036bc:	00b70023          	sb	a1,0(a4)
    800036c0:	00c7871b          	addiw	a4,a5,12
    800036c4:	00c77e63          	bgeu	a4,a2,800036e0 <__memset+0x1c8>
    800036c8:	00e50733          	add	a4,a0,a4
    800036cc:	00b70023          	sb	a1,0(a4)
    800036d0:	00d7879b          	addiw	a5,a5,13
    800036d4:	00c7f663          	bgeu	a5,a2,800036e0 <__memset+0x1c8>
    800036d8:	00f507b3          	add	a5,a0,a5
    800036dc:	00b78023          	sb	a1,0(a5)
    800036e0:	00813403          	ld	s0,8(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret
    800036ec:	00b00693          	li	a3,11
    800036f0:	e55ff06f          	j	80003544 <__memset+0x2c>
    800036f4:	00300e93          	li	t4,3
    800036f8:	ea5ff06f          	j	8000359c <__memset+0x84>
    800036fc:	00100e93          	li	t4,1
    80003700:	e9dff06f          	j	8000359c <__memset+0x84>
    80003704:	00000e93          	li	t4,0
    80003708:	e95ff06f          	j	8000359c <__memset+0x84>
    8000370c:	00000793          	li	a5,0
    80003710:	ef9ff06f          	j	80003608 <__memset+0xf0>
    80003714:	00200e93          	li	t4,2
    80003718:	e85ff06f          	j	8000359c <__memset+0x84>
    8000371c:	00400e93          	li	t4,4
    80003720:	e7dff06f          	j	8000359c <__memset+0x84>
    80003724:	00500e93          	li	t4,5
    80003728:	e75ff06f          	j	8000359c <__memset+0x84>
    8000372c:	00600e93          	li	t4,6
    80003730:	e6dff06f          	j	8000359c <__memset+0x84>

0000000080003734 <__memmove>:
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00813423          	sd	s0,8(sp)
    8000373c:	01010413          	addi	s0,sp,16
    80003740:	0e060863          	beqz	a2,80003830 <__memmove+0xfc>
    80003744:	fff6069b          	addiw	a3,a2,-1
    80003748:	0006881b          	sext.w	a6,a3
    8000374c:	0ea5e863          	bltu	a1,a0,8000383c <__memmove+0x108>
    80003750:	00758713          	addi	a4,a1,7
    80003754:	00a5e7b3          	or	a5,a1,a0
    80003758:	40a70733          	sub	a4,a4,a0
    8000375c:	0077f793          	andi	a5,a5,7
    80003760:	00f73713          	sltiu	a4,a4,15
    80003764:	00174713          	xori	a4,a4,1
    80003768:	0017b793          	seqz	a5,a5
    8000376c:	00e7f7b3          	and	a5,a5,a4
    80003770:	10078863          	beqz	a5,80003880 <__memmove+0x14c>
    80003774:	00900793          	li	a5,9
    80003778:	1107f463          	bgeu	a5,a6,80003880 <__memmove+0x14c>
    8000377c:	0036581b          	srliw	a6,a2,0x3
    80003780:	fff8081b          	addiw	a6,a6,-1
    80003784:	02081813          	slli	a6,a6,0x20
    80003788:	01d85893          	srli	a7,a6,0x1d
    8000378c:	00858813          	addi	a6,a1,8
    80003790:	00058793          	mv	a5,a1
    80003794:	00050713          	mv	a4,a0
    80003798:	01088833          	add	a6,a7,a6
    8000379c:	0007b883          	ld	a7,0(a5)
    800037a0:	00878793          	addi	a5,a5,8
    800037a4:	00870713          	addi	a4,a4,8
    800037a8:	ff173c23          	sd	a7,-8(a4)
    800037ac:	ff0798e3          	bne	a5,a6,8000379c <__memmove+0x68>
    800037b0:	ff867713          	andi	a4,a2,-8
    800037b4:	02071793          	slli	a5,a4,0x20
    800037b8:	0207d793          	srli	a5,a5,0x20
    800037bc:	00f585b3          	add	a1,a1,a5
    800037c0:	40e686bb          	subw	a3,a3,a4
    800037c4:	00f507b3          	add	a5,a0,a5
    800037c8:	06e60463          	beq	a2,a4,80003830 <__memmove+0xfc>
    800037cc:	0005c703          	lbu	a4,0(a1)
    800037d0:	00e78023          	sb	a4,0(a5)
    800037d4:	04068e63          	beqz	a3,80003830 <__memmove+0xfc>
    800037d8:	0015c603          	lbu	a2,1(a1)
    800037dc:	00100713          	li	a4,1
    800037e0:	00c780a3          	sb	a2,1(a5)
    800037e4:	04e68663          	beq	a3,a4,80003830 <__memmove+0xfc>
    800037e8:	0025c603          	lbu	a2,2(a1)
    800037ec:	00200713          	li	a4,2
    800037f0:	00c78123          	sb	a2,2(a5)
    800037f4:	02e68e63          	beq	a3,a4,80003830 <__memmove+0xfc>
    800037f8:	0035c603          	lbu	a2,3(a1)
    800037fc:	00300713          	li	a4,3
    80003800:	00c781a3          	sb	a2,3(a5)
    80003804:	02e68663          	beq	a3,a4,80003830 <__memmove+0xfc>
    80003808:	0045c603          	lbu	a2,4(a1)
    8000380c:	00400713          	li	a4,4
    80003810:	00c78223          	sb	a2,4(a5)
    80003814:	00e68e63          	beq	a3,a4,80003830 <__memmove+0xfc>
    80003818:	0055c603          	lbu	a2,5(a1)
    8000381c:	00500713          	li	a4,5
    80003820:	00c782a3          	sb	a2,5(a5)
    80003824:	00e68663          	beq	a3,a4,80003830 <__memmove+0xfc>
    80003828:	0065c703          	lbu	a4,6(a1)
    8000382c:	00e78323          	sb	a4,6(a5)
    80003830:	00813403          	ld	s0,8(sp)
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00008067          	ret
    8000383c:	02061713          	slli	a4,a2,0x20
    80003840:	02075713          	srli	a4,a4,0x20
    80003844:	00e587b3          	add	a5,a1,a4
    80003848:	f0f574e3          	bgeu	a0,a5,80003750 <__memmove+0x1c>
    8000384c:	02069613          	slli	a2,a3,0x20
    80003850:	02065613          	srli	a2,a2,0x20
    80003854:	fff64613          	not	a2,a2
    80003858:	00e50733          	add	a4,a0,a4
    8000385c:	00c78633          	add	a2,a5,a2
    80003860:	fff7c683          	lbu	a3,-1(a5)
    80003864:	fff78793          	addi	a5,a5,-1
    80003868:	fff70713          	addi	a4,a4,-1
    8000386c:	00d70023          	sb	a3,0(a4)
    80003870:	fec798e3          	bne	a5,a2,80003860 <__memmove+0x12c>
    80003874:	00813403          	ld	s0,8(sp)
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00008067          	ret
    80003880:	02069713          	slli	a4,a3,0x20
    80003884:	02075713          	srli	a4,a4,0x20
    80003888:	00170713          	addi	a4,a4,1
    8000388c:	00e50733          	add	a4,a0,a4
    80003890:	00050793          	mv	a5,a0
    80003894:	0005c683          	lbu	a3,0(a1)
    80003898:	00178793          	addi	a5,a5,1
    8000389c:	00158593          	addi	a1,a1,1
    800038a0:	fed78fa3          	sb	a3,-1(a5)
    800038a4:	fee798e3          	bne	a5,a4,80003894 <__memmove+0x160>
    800038a8:	f89ff06f          	j	80003830 <__memmove+0xfc>

00000000800038ac <__putc>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00113c23          	sd	ra,24(sp)
    800038b8:	02010413          	addi	s0,sp,32
    800038bc:	00050793          	mv	a5,a0
    800038c0:	fef40593          	addi	a1,s0,-17
    800038c4:	00100613          	li	a2,1
    800038c8:	00000513          	li	a0,0
    800038cc:	fef407a3          	sb	a5,-17(s0)
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	b3c080e7          	jalr	-1220(ra) # 8000240c <console_write>
    800038d8:	01813083          	ld	ra,24(sp)
    800038dc:	01013403          	ld	s0,16(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret

00000000800038e8 <__getc>:
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	02010413          	addi	s0,sp,32
    800038f8:	fe840593          	addi	a1,s0,-24
    800038fc:	00100613          	li	a2,1
    80003900:	00000513          	li	a0,0
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	ae8080e7          	jalr	-1304(ra) # 800023ec <console_read>
    8000390c:	fe844503          	lbu	a0,-24(s0)
    80003910:	01813083          	ld	ra,24(sp)
    80003914:	01013403          	ld	s0,16(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret

0000000080003920 <console_handler>:
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00913423          	sd	s1,8(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	14202773          	csrr	a4,scause
    80003938:	100027f3          	csrr	a5,sstatus
    8000393c:	0027f793          	andi	a5,a5,2
    80003940:	06079e63          	bnez	a5,800039bc <console_handler+0x9c>
    80003944:	00074c63          	bltz	a4,8000395c <console_handler+0x3c>
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret
    8000395c:	0ff77713          	andi	a4,a4,255
    80003960:	00900793          	li	a5,9
    80003964:	fef712e3          	bne	a4,a5,80003948 <console_handler+0x28>
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	6dc080e7          	jalr	1756(ra) # 80002044 <plic_claim>
    80003970:	00a00793          	li	a5,10
    80003974:	00050493          	mv	s1,a0
    80003978:	02f50c63          	beq	a0,a5,800039b0 <console_handler+0x90>
    8000397c:	fc0506e3          	beqz	a0,80003948 <console_handler+0x28>
    80003980:	00050593          	mv	a1,a0
    80003984:	00000517          	auipc	a0,0x0
    80003988:	76c50513          	addi	a0,a0,1900 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000398c:	fffff097          	auipc	ra,0xfffff
    80003990:	afc080e7          	jalr	-1284(ra) # 80002488 <__printf>
    80003994:	01013403          	ld	s0,16(sp)
    80003998:	01813083          	ld	ra,24(sp)
    8000399c:	00048513          	mv	a0,s1
    800039a0:	00813483          	ld	s1,8(sp)
    800039a4:	02010113          	addi	sp,sp,32
    800039a8:	ffffe317          	auipc	t1,0xffffe
    800039ac:	6d430067          	jr	1748(t1) # 8000207c <plic_complete>
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	3e0080e7          	jalr	992(ra) # 80002d90 <uartintr>
    800039b8:	fddff06f          	j	80003994 <console_handler+0x74>
    800039bc:	00001517          	auipc	a0,0x1
    800039c0:	83450513          	addi	a0,a0,-1996 # 800041f0 <digits+0x78>
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	a68080e7          	jalr	-1432(ra) # 8000242c <panic>
	...
