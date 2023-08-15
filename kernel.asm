
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	64813103          	ld	sp,1608(sp) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	420060ef          	jal	ra,8000643c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.extern _ZN5Riscv17hardwareInterruptEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    j ecall_exc
    80001000:	0280006f          	j	80001028 <ecall_exc>
    j timer
    80001004:	12c0006f          	j	80001130 <timer>
	...
    .skip 28
    j hardwareInt
    80001024:	2140006f          	j	80001238 <hardwareInt>

0000000080001028 <ecall_exc>:


ecall_exc:
    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04a13823          	sd	a0,80(sp)
    80001054:	04b13c23          	sd	a1,88(sp)
    80001058:	06c13023          	sd	a2,96(sp)
    8000105c:	06d13423          	sd	a3,104(sp)
    80001060:	06e13823          	sd	a4,112(sp)
    80001064:	06f13c23          	sd	a5,120(sp)
    80001068:	09013023          	sd	a6,128(sp)
    8000106c:	09113423          	sd	a7,136(sp)
    80001070:	09213823          	sd	s2,144(sp)
    80001074:	09313c23          	sd	s3,152(sp)
    80001078:	0b413023          	sd	s4,160(sp)
    8000107c:	0b513423          	sd	s5,168(sp)
    80001080:	0b613823          	sd	s6,176(sp)
    80001084:	0b713c23          	sd	s7,184(sp)
    80001088:	0d813023          	sd	s8,192(sp)
    8000108c:	0d913423          	sd	s9,200(sp)
    80001090:	0da13823          	sd	s10,208(sp)
    80001094:	0db13c23          	sd	s11,216(sp)
    80001098:	0fc13023          	sd	t3,224(sp)
    8000109c:	0fd13423          	sd	t4,232(sp)
    800010a0:	0fe13823          	sd	t5,240(sp)
    800010a4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleEcallExceptionEv
    800010a8:	73d000ef          	jal	ra,80001fe4 <_ZN5Riscv20handleEcallExceptionEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800010ac:	00813083          	ld	ra,8(sp)
    800010b0:	01013103          	ld	sp,16(sp)
    800010b4:	01813183          	ld	gp,24(sp)
    800010b8:	02013203          	ld	tp,32(sp)
    800010bc:	02813283          	ld	t0,40(sp)
    800010c0:	03013303          	ld	t1,48(sp)
    800010c4:	03813383          	ld	t2,56(sp)
    800010c8:	04013403          	ld	s0,64(sp)
    800010cc:	04813483          	ld	s1,72(sp)
    800010d0:	05013503          	ld	a0,80(sp)
    800010d4:	05813583          	ld	a1,88(sp)
    800010d8:	06013603          	ld	a2,96(sp)
    800010dc:	06813683          	ld	a3,104(sp)
    800010e0:	07013703          	ld	a4,112(sp)
    800010e4:	07813783          	ld	a5,120(sp)
    800010e8:	08013803          	ld	a6,128(sp)
    800010ec:	08813883          	ld	a7,136(sp)
    800010f0:	09013903          	ld	s2,144(sp)
    800010f4:	09813983          	ld	s3,152(sp)
    800010f8:	0a013a03          	ld	s4,160(sp)
    800010fc:	0a813a83          	ld	s5,168(sp)
    80001100:	0b013b03          	ld	s6,176(sp)
    80001104:	0b813b83          	ld	s7,184(sp)
    80001108:	0c013c03          	ld	s8,192(sp)
    8000110c:	0c813c83          	ld	s9,200(sp)
    80001110:	0d013d03          	ld	s10,208(sp)
    80001114:	0d813d83          	ld	s11,216(sp)
    80001118:	0e013e03          	ld	t3,224(sp)
    8000111c:	0e813e83          	ld	t4,232(sp)
    80001120:	0f013f03          	ld	t5,240(sp)
    80001124:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001128:	10010113          	addi	sp,sp,256

    sret
    8000112c:	10200073          	sret

0000000080001130 <timer>:

timer:
    addi sp, sp, -256
    80001130:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    80001134:	00113423          	sd	ra,8(sp)
    80001138:	00213823          	sd	sp,16(sp)
    8000113c:	00313c23          	sd	gp,24(sp)
    80001140:	02413023          	sd	tp,32(sp)
    80001144:	02513423          	sd	t0,40(sp)
    80001148:	02613823          	sd	t1,48(sp)
    8000114c:	02713c23          	sd	t2,56(sp)
    80001150:	04813023          	sd	s0,64(sp)
    80001154:	04913423          	sd	s1,72(sp)
    80001158:	04a13823          	sd	a0,80(sp)
    8000115c:	04b13c23          	sd	a1,88(sp)
    80001160:	06c13023          	sd	a2,96(sp)
    80001164:	06d13423          	sd	a3,104(sp)
    80001168:	06e13823          	sd	a4,112(sp)
    8000116c:	06f13c23          	sd	a5,120(sp)
    80001170:	09013023          	sd	a6,128(sp)
    80001174:	09113423          	sd	a7,136(sp)
    80001178:	09213823          	sd	s2,144(sp)
    8000117c:	09313c23          	sd	s3,152(sp)
    80001180:	0b413023          	sd	s4,160(sp)
    80001184:	0b513423          	sd	s5,168(sp)
    80001188:	0b613823          	sd	s6,176(sp)
    8000118c:	0b713c23          	sd	s7,184(sp)
    80001190:	0d813023          	sd	s8,192(sp)
    80001194:	0d913423          	sd	s9,200(sp)
    80001198:	0da13823          	sd	s10,208(sp)
    8000119c:	0db13c23          	sd	s11,216(sp)
    800011a0:	0fc13023          	sd	t3,224(sp)
    800011a4:	0fd13423          	sd	t4,232(sp)
    800011a8:	0fe13823          	sd	t5,240(sp)
    800011ac:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv14timerInterruptEv
    800011b0:	198010ef          	jal	ra,80002348 <_ZN5Riscv14timerInterruptEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800011b4:	00813083          	ld	ra,8(sp)
    800011b8:	01013103          	ld	sp,16(sp)
    800011bc:	01813183          	ld	gp,24(sp)
    800011c0:	02013203          	ld	tp,32(sp)
    800011c4:	02813283          	ld	t0,40(sp)
    800011c8:	03013303          	ld	t1,48(sp)
    800011cc:	03813383          	ld	t2,56(sp)
    800011d0:	04013403          	ld	s0,64(sp)
    800011d4:	04813483          	ld	s1,72(sp)
    800011d8:	05013503          	ld	a0,80(sp)
    800011dc:	05813583          	ld	a1,88(sp)
    800011e0:	06013603          	ld	a2,96(sp)
    800011e4:	06813683          	ld	a3,104(sp)
    800011e8:	07013703          	ld	a4,112(sp)
    800011ec:	07813783          	ld	a5,120(sp)
    800011f0:	08013803          	ld	a6,128(sp)
    800011f4:	08813883          	ld	a7,136(sp)
    800011f8:	09013903          	ld	s2,144(sp)
    800011fc:	09813983          	ld	s3,152(sp)
    80001200:	0a013a03          	ld	s4,160(sp)
    80001204:	0a813a83          	ld	s5,168(sp)
    80001208:	0b013b03          	ld	s6,176(sp)
    8000120c:	0b813b83          	ld	s7,184(sp)
    80001210:	0c013c03          	ld	s8,192(sp)
    80001214:	0c813c83          	ld	s9,200(sp)
    80001218:	0d013d03          	ld	s10,208(sp)
    8000121c:	0d813d83          	ld	s11,216(sp)
    80001220:	0e013e03          	ld	t3,224(sp)
    80001224:	0e813e83          	ld	t4,232(sp)
    80001228:	0f013f03          	ld	t5,240(sp)
    8000122c:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001230:	10010113          	addi	sp,sp,256

    sret
    80001234:	10200073          	sret

0000000080001238 <hardwareInt>:

hardwareInt:
    addi sp, sp, -256
    80001238:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    8000123c:	00113423          	sd	ra,8(sp)
    80001240:	00213823          	sd	sp,16(sp)
    80001244:	00313c23          	sd	gp,24(sp)
    80001248:	02413023          	sd	tp,32(sp)
    8000124c:	02513423          	sd	t0,40(sp)
    80001250:	02613823          	sd	t1,48(sp)
    80001254:	02713c23          	sd	t2,56(sp)
    80001258:	04813023          	sd	s0,64(sp)
    8000125c:	04913423          	sd	s1,72(sp)
    80001260:	04a13823          	sd	a0,80(sp)
    80001264:	04b13c23          	sd	a1,88(sp)
    80001268:	06c13023          	sd	a2,96(sp)
    8000126c:	06d13423          	sd	a3,104(sp)
    80001270:	06e13823          	sd	a4,112(sp)
    80001274:	06f13c23          	sd	a5,120(sp)
    80001278:	09013023          	sd	a6,128(sp)
    8000127c:	09113423          	sd	a7,136(sp)
    80001280:	09213823          	sd	s2,144(sp)
    80001284:	09313c23          	sd	s3,152(sp)
    80001288:	0b413023          	sd	s4,160(sp)
    8000128c:	0b513423          	sd	s5,168(sp)
    80001290:	0b613823          	sd	s6,176(sp)
    80001294:	0b713c23          	sd	s7,184(sp)
    80001298:	0d813023          	sd	s8,192(sp)
    8000129c:	0d913423          	sd	s9,200(sp)
    800012a0:	0da13823          	sd	s10,208(sp)
    800012a4:	0db13c23          	sd	s11,216(sp)
    800012a8:	0fc13023          	sd	t3,224(sp)
    800012ac:	0fd13423          	sd	t4,232(sp)
    800012b0:	0fe13823          	sd	t5,240(sp)
    800012b4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv17hardwareInterruptEv
    800012b8:	385000ef          	jal	ra,80001e3c <_ZN5Riscv17hardwareInterruptEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800012bc:	00813083          	ld	ra,8(sp)
    800012c0:	01013103          	ld	sp,16(sp)
    800012c4:	01813183          	ld	gp,24(sp)
    800012c8:	02013203          	ld	tp,32(sp)
    800012cc:	02813283          	ld	t0,40(sp)
    800012d0:	03013303          	ld	t1,48(sp)
    800012d4:	03813383          	ld	t2,56(sp)
    800012d8:	04013403          	ld	s0,64(sp)
    800012dc:	04813483          	ld	s1,72(sp)
    800012e0:	05013503          	ld	a0,80(sp)
    800012e4:	05813583          	ld	a1,88(sp)
    800012e8:	06013603          	ld	a2,96(sp)
    800012ec:	06813683          	ld	a3,104(sp)
    800012f0:	07013703          	ld	a4,112(sp)
    800012f4:	07813783          	ld	a5,120(sp)
    800012f8:	08013803          	ld	a6,128(sp)
    800012fc:	08813883          	ld	a7,136(sp)
    80001300:	09013903          	ld	s2,144(sp)
    80001304:	09813983          	ld	s3,152(sp)
    80001308:	0a013a03          	ld	s4,160(sp)
    8000130c:	0a813a83          	ld	s5,168(sp)
    80001310:	0b013b03          	ld	s6,176(sp)
    80001314:	0b813b83          	ld	s7,184(sp)
    80001318:	0c013c03          	ld	s8,192(sp)
    8000131c:	0c813c83          	ld	s9,200(sp)
    80001320:	0d013d03          	ld	s10,208(sp)
    80001324:	0d813d83          	ld	s11,216(sp)
    80001328:	0e013e03          	ld	t3,224(sp)
    8000132c:	0e813e83          	ld	t4,232(sp)
    80001330:	0f013f03          	ld	t5,240(sp)
    80001334:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001338:	10010113          	addi	sp,sp,256

    8000133c:	10200073          	sret
	...

0000000080001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
#sa vezbi 7.
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #u a0 &old->context, u a1 &running->context
    sd ra, 0*8(a0)
    80001348:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    8000134c:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001350:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    80001354:	0085b103          	ld	sp,8(a1)

    80001358:	00008067          	ret

000000008000135c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000135c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001360:	00b29a63          	bne	t0,a1,80001374 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001364:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001368:	fe029ae3          	bnez	t0,8000135c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000136c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001370:	00008067          	ret

0000000080001374 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001374:	00100513          	li	a0,1
    80001378:	00008067          	ret

000000008000137c <_Z18commonPartSysCallsiz>:


#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void commonPartSysCalls(int code, ...){
    8000137c:	fb010113          	addi	sp,sp,-80
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    80001388:	00b43423          	sd	a1,8(s0)
    8000138c:	00c43823          	sd	a2,16(s0)
    80001390:	00d43c23          	sd	a3,24(s0)
    80001394:	02e43023          	sd	a4,32(s0)
    80001398:	02f43423          	sd	a5,40(s0)
    8000139c:	03043823          	sd	a6,48(s0)
    800013a0:	03143c23          	sd	a7,56(s0)
    __asm__ volatile("ecall");
    800013a4:	00000073          	ecall
}
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	05010113          	addi	sp,sp,80
    800013b0:	00008067          	ret

00000000800013b4 <_Z9mem_allocm>:




void *mem_alloc(size_t size) {
    800013b4:	fe010113          	addi	sp,sp,-32
    800013b8:	00113c23          	sd	ra,24(sp)
    800013bc:	00813823          	sd	s0,16(sp)
    800013c0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */

    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800013c4:	03f50593          	addi	a1,a0,63
    800013c8:	0065d593          	srli	a1,a1,0x6
    800013cc:	00100513          	li	a0,1
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	fac080e7          	jalr	-84(ra) # 8000137c <_Z18commonPartSysCallsiz>

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800013d8:	00050793          	mv	a5,a0
    800013dc:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    800013e0:	fe843503          	ld	a0,-24(s0)
}
    800013e4:	01813083          	ld	ra,24(sp)
    800013e8:	01013403          	ld	s0,16(sp)
    800013ec:	02010113          	addi	sp,sp,32
    800013f0:	00008067          	ret

00000000800013f4 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800013f4:	fe010113          	addi	sp,sp,-32
    800013f8:	00113c23          	sd	ra,24(sp)
    800013fc:	00813823          	sd	s0,16(sp)
    80001400:	02010413          	addi	s0,sp,32
    80001404:	00050593          	mv	a1,a0
    commonPartSysCalls(0x02, (uint64)ptr);
    80001408:	00200513          	li	a0,2
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	f70080e7          	jalr	-144(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001414:	00050793          	mv	a5,a0
    80001418:	fef42623          	sw	a5,-20(s0)
    return ret;
    8000141c:	fec42503          	lw	a0,-20(s0)
}
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	01813083          	ld	ra,24(sp)
    80001428:	01013403          	ld	s0,16(sp)
    8000142c:	02010113          	addi	sp,sp,32
    80001430:	00008067          	ret

0000000080001434 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001434:	fc010113          	addi	sp,sp,-64
    80001438:	02113c23          	sd	ra,56(sp)
    8000143c:	02813823          	sd	s0,48(sp)
    80001440:	02913423          	sd	s1,40(sp)
    80001444:	03213023          	sd	s2,32(sp)
    80001448:	01313c23          	sd	s3,24(sp)
    8000144c:	04010413          	addi	s0,sp,64
    80001450:	00050913          	mv	s2,a0
    80001454:	00058493          	mv	s1,a1
    80001458:	00060993          	mv	s3,a2
    if(start_routine!=nullptr){
    8000145c:	04058e63          	beqz	a1,800014b8 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
        uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);
    80001460:	00008537          	lui	a0,0x8
    80001464:	00000097          	auipc	ra,0x0
    80001468:	f50080e7          	jalr	-176(ra) # 800013b4 <_Z9mem_allocm>
    8000146c:	00050713          	mv	a4,a0
        if(stack==nullptr)return -1;
    80001470:	06050463          	beqz	a0,800014d8 <_Z13thread_createPP3TCBPFvPvES2_+0xa4>
        commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    80001474:	00098693          	mv	a3,s3
    80001478:	00048613          	mv	a2,s1
    8000147c:	00090593          	mv	a1,s2
    80001480:	01100513          	li	a0,17
    80001484:	00000097          	auipc	ra,0x0
    80001488:	ef8080e7          	jalr	-264(ra) # 8000137c <_Z18commonPartSysCallsiz>
    else{
        commonPartSysCalls(0x11, handle, start_routine, arg, nullptr);
    }

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    8000148c:	00050793          	mv	a5,a0
    80001490:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001494:	fcc42503          	lw	a0,-52(s0)
    80001498:	0005051b          	sext.w	a0,a0
}
    8000149c:	03813083          	ld	ra,56(sp)
    800014a0:	03013403          	ld	s0,48(sp)
    800014a4:	02813483          	ld	s1,40(sp)
    800014a8:	02013903          	ld	s2,32(sp)
    800014ac:	01813983          	ld	s3,24(sp)
    800014b0:	04010113          	addi	sp,sp,64
    800014b4:	00008067          	ret
        commonPartSysCalls(0x11, handle, start_routine, arg, nullptr);
    800014b8:	00000713          	li	a4,0
    800014bc:	00060693          	mv	a3,a2
    800014c0:	00058613          	mv	a2,a1
    800014c4:	00050593          	mv	a1,a0
    800014c8:	01100513          	li	a0,17
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	eb0080e7          	jalr	-336(ra) # 8000137c <_Z18commonPartSysCallsiz>
    800014d4:	fb9ff06f          	j	8000148c <_Z13thread_createPP3TCBPFvPvES2_+0x58>
        if(stack==nullptr)return -1;
    800014d8:	fff00513          	li	a0,-1
    800014dc:	fc1ff06f          	j	8000149c <_Z13thread_createPP3TCBPFvPvES2_+0x68>

00000000800014e0 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    800014e0:	fe010113          	addi	sp,sp,-32
    800014e4:	00113c23          	sd	ra,24(sp)
    800014e8:	00813823          	sd	s0,16(sp)
    800014ec:	02010413          	addi	s0,sp,32
    800014f0:	00050593          	mv	a1,a0
    commonPartSysCalls(0x31, t);
    800014f4:	03100513          	li	a0,49
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	e84080e7          	jalr	-380(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001500:	00050793          	mv	a5,a0
    80001504:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001508:	fec42503          	lw	a0,-20(s0)
}
    8000150c:	0005051b          	sext.w	a0,a0
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret

0000000080001520 <_Z11thread_exitv>:

int thread_exit() {
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x12);
    80001530:	01200513          	li	a0,18
    80001534:	00000097          	auipc	ra,0x0
    80001538:	e48080e7          	jalr	-440(ra) # 8000137c <_Z18commonPartSysCallsiz>

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    8000153c:	00050793          	mv	a5,a0
    80001540:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001544:	fec42503          	lw	a0,-20(s0)
}
    80001548:	0005051b          	sext.w	a0,a0
    8000154c:	01813083          	ld	ra,24(sp)
    80001550:	01013403          	ld	s0,16(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    commonPartSysCalls(0x13);
    8000156c:	01300513          	li	a0,19
    80001570:	00000097          	auipc	ra,0x0
    80001574:	e0c080e7          	jalr	-500(ra) # 8000137c <_Z18commonPartSysCallsiz>
}
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
    80001598:	00050593          	mv	a1,a0
    commonPartSysCalls(0x14, handle);
    8000159c:	01400513          	li	a0,20
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	ddc080e7          	jalr	-548(ra) # 8000137c <_Z18commonPartSysCallsiz>
}
    800015a8:	00813083          	ld	ra,8(sp)
    800015ac:	00013403          	ld	s0,0(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	02010413          	addi	s0,sp,32
    800015c8:	00058613          	mv	a2,a1
    commonPartSysCalls(0x21, handle, init);
    800015cc:	00050593          	mv	a1,a0
    800015d0:	02100513          	li	a0,33
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	da8080e7          	jalr	-600(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800015dc:	00050793          	mv	a5,a0
    800015e0:	fef42623          	sw	a5,-20(s0)
    return ret;
    800015e4:	fec42503          	lw	a0,-20(s0)
}
    800015e8:	0005051b          	sext.w	a0,a0
    800015ec:	01813083          	ld	ra,24(sp)
    800015f0:	01013403          	ld	s0,16(sp)
    800015f4:	02010113          	addi	sp,sp,32
    800015f8:	00008067          	ret

00000000800015fc <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    if(!handle)return -3;
    800015fc:	04050263          	beqz	a0,80001640 <_Z9sem_closeP4_sem+0x44>
int sem_close(sem_t handle) {
    80001600:	fe010113          	addi	sp,sp,-32
    80001604:	00113c23          	sd	ra,24(sp)
    80001608:	00813823          	sd	s0,16(sp)
    8000160c:	02010413          	addi	s0,sp,32
    80001610:	00050593          	mv	a1,a0
    commonPartSysCalls(0x22, handle);
    80001614:	02200513          	li	a0,34
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	d64080e7          	jalr	-668(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001620:	00050793          	mv	a5,a0
    80001624:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001628:	fec42503          	lw	a0,-20(s0)
    8000162c:	0005051b          	sext.w	a0,a0
}
    80001630:	01813083          	ld	ra,24(sp)
    80001634:	01013403          	ld	s0,16(sp)
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret
    if(!handle)return -3;
    80001640:	ffd00513          	li	a0,-3
}
    80001644:	00008067          	ret

0000000080001648 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    if(!id)return -3;
    80001648:	04050263          	beqz	a0,8000168c <_Z8sem_waitP4_sem+0x44>
int sem_wait(sem_t id) {
    8000164c:	fe010113          	addi	sp,sp,-32
    80001650:	00113c23          	sd	ra,24(sp)
    80001654:	00813823          	sd	s0,16(sp)
    80001658:	02010413          	addi	s0,sp,32
    8000165c:	00050593          	mv	a1,a0
    commonPartSysCalls(0x23, id);
    80001660:	02300513          	li	a0,35
    80001664:	00000097          	auipc	ra,0x0
    80001668:	d18080e7          	jalr	-744(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    8000166c:	00050793          	mv	a5,a0
    80001670:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001674:	fec42503          	lw	a0,-20(s0)
    80001678:	0005051b          	sext.w	a0,a0
}
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret
    if(!id)return -3;
    8000168c:	ffd00513          	li	a0,-3
}
    80001690:	00008067          	ret

0000000080001694 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    if(!id)return -3;
    80001694:	04050263          	beqz	a0,800016d8 <_Z10sem_signalP4_sem+0x44>
int sem_signal(sem_t id) {
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050593          	mv	a1,a0
    commonPartSysCalls(0x24, id);
    800016ac:	02400513          	li	a0,36
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	ccc080e7          	jalr	-820(ra) # 8000137c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800016b8:	00050793          	mv	a5,a0
    800016bc:	fef42623          	sw	a5,-20(s0)
    return ret;
    800016c0:	fec42503          	lw	a0,-20(s0)
    800016c4:	0005051b          	sext.w	a0,a0
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	02010113          	addi	sp,sp,32
    800016d4:	00008067          	ret
    if(!id)return -3;
    800016d8:	ffd00513          	li	a0,-3
}
    800016dc:	00008067          	ret

00000000800016e0 <_Z4getcv>:

char getc() {
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x41);
    800016f0:	04100513          	li	a0,65
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	c88080e7          	jalr	-888(ra) # 8000137c <_Z18commonPartSysCallsiz>

    volatile char ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800016fc:	00050793          	mv	a5,a0
    80001700:	fef407a3          	sb	a5,-17(s0)
    return ret;
    80001704:	fef44503          	lbu	a0,-17(s0)
}
    80001708:	0ff57513          	andi	a0,a0,255
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret

000000008000171c <_Z4putcc>:

void putc(char c) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00113423          	sd	ra,8(sp)
    80001724:	00813023          	sd	s0,0(sp)
    80001728:	01010413          	addi	s0,sp,16
    8000172c:	00050593          	mv	a1,a0
    commonPartSysCalls(0x42, c);
    80001730:	04200513          	li	a0,66
    80001734:	00000097          	auipc	ra,0x0
    80001738:	c48080e7          	jalr	-952(ra) # 8000137c <_Z18commonPartSysCallsiz>
}
    8000173c:	00813083          	ld	ra,8(sp)
    80001740:	00013403          	ld	s0,0(sp)
    80001744:	01010113          	addi	sp,sp,16
    80001748:	00008067          	ret

000000008000174c <_ZN9Scheduler3putEP3TCB>:
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(TCB *t) {
    8000174c:	fe010113          	addi	sp,sp,-32
    80001750:	00113c23          	sd	ra,24(sp)
    80001754:	00813823          	sd	s0,16(sp)
    80001758:	00913423          	sd	s1,8(sp)
    8000175c:	02010413          	addi	s0,sp,32
    80001760:	00050493          	mv	s1,a0
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80001764:	00100513          	li	a0,1
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	348080e7          	jalr	840(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 8000 <_entry-0x7fff8000>
    newElem->next= nullptr;
    80001774:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	f387b783          	ld	a5,-200(a5) # 8000b6b0 <_ZN9Scheduler5firstE>
    80001780:	02078663          	beqz	a5,800017ac <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	f2c78793          	addi	a5,a5,-212 # 8000b6b0 <_ZN9Scheduler5firstE>
    8000178c:	0087b703          	ld	a4,8(a5)
    80001790:	00a73423          	sd	a0,8(a4)
    80001794:	00a7b423          	sd	a0,8(a5)
    }
}
    80001798:	01813083          	ld	ra,24(sp)
    8000179c:	01013403          	ld	s0,16(sp)
    800017a0:	00813483          	ld	s1,8(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret
        first=last=newElem;
    800017ac:	0000a797          	auipc	a5,0xa
    800017b0:	f0478793          	addi	a5,a5,-252 # 8000b6b0 <_ZN9Scheduler5firstE>
    800017b4:	00a7b423          	sd	a0,8(a5)
    800017b8:	00a7b023          	sd	a0,0(a5)
    800017bc:	fddff06f          	j	80001798 <_ZN9Scheduler3putEP3TCB+0x4c>

00000000800017c0 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    800017d4:	0000a517          	auipc	a0,0xa
    800017d8:	edc53503          	ld	a0,-292(a0) # 8000b6b0 <_ZN9Scheduler5firstE>
    800017dc:	04050263          	beqz	a0,80001820 <_ZN9Scheduler3getEv+0x60>

    Elem* elem=first;
    TCB* t=elem->t;
    800017e0:	00053483          	ld	s1,0(a0)

    first=first->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	0000a717          	auipc	a4,0xa
    800017ec:	ecf73423          	sd	a5,-312(a4) # 8000b6b0 <_ZN9Scheduler5firstE>
    if(first==nullptr)last=nullptr;
    800017f0:	02078263          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x54>


    MemoryAllocator::free(elem);
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	390080e7          	jalr	912(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>

    return t;
}
    800017fc:	00048513          	mv	a0,s1
    80001800:	01813083          	ld	ra,24(sp)
    80001804:	01013403          	ld	s0,16(sp)
    80001808:	00813483          	ld	s1,8(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001814:	0000a797          	auipc	a5,0xa
    80001818:	ea07b223          	sd	zero,-348(a5) # 8000b6b8 <_ZN9Scheduler4lastE>
    8000181c:	fd9ff06f          	j	800017f4 <_ZN9Scheduler3getEv+0x34>
    if(first==nullptr)return nullptr;
    80001820:	00050493          	mv	s1,a0
    80001824:	fd9ff06f          	j	800017fc <_ZN9Scheduler3getEv+0x3c>

0000000080001828 <_Z10idleThreadPv>:
#include "../test/printing.hpp"
#include "../h/Scheduler.hpp"

extern void userMain();

void idleThread(void *p) {
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00113423          	sd	ra,8(sp)
    80001830:	00813023          	sd	s0,0(sp)
    80001834:	01010413          	addi	s0,sp,16
    while(true){ thread_dispatch(); }
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	d24080e7          	jalr	-732(ra) # 8000155c <_Z15thread_dispatchv>
    80001840:	ff9ff06f          	j	80001838 <_Z10idleThreadPv+0x10>

0000000080001844 <_Z15userMainWrapperPv>:
}
void userMainWrapper(void*){
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00113423          	sd	ra,8(sp)
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	01010413          	addi	s0,sp,16
    userMain();
    80001854:	00004097          	auipc	ra,0x4
    80001858:	060080e7          	jalr	96(ra) # 800058b4 <_Z8userMainv>
}
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <main>:

int main(){
    8000186c:	fc010113          	addi	sp,sp,-64
    80001870:	02113c23          	sd	ra,56(sp)
    80001874:	02813823          	sd	s0,48(sp)
    80001878:	02913423          	sd	s1,40(sp)
    8000187c:	04010413          	addi	s0,sp,64

    MemoryAllocator::initialize();
    80001880:	00001097          	auipc	ra,0x1
    80001884:	470080e7          	jalr	1136(ra) # 80002cf0 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    80001888:	0000a797          	auipc	a5,0xa
    8000188c:	db07b783          	ld	a5,-592(a5) # 8000b638 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001890:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001894:	10579073          	csrw	stvec,a5


    TCB::newThrUserMode=false;
    80001898:	0000a497          	auipc	s1,0xa
    8000189c:	db84b483          	ld	s1,-584(s1) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018a0:	00048023          	sb	zero,0(s1)
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    800018a4:	00000613          	li	a2,0
    800018a8:	00000593          	li	a1,0
    800018ac:	fd840513          	addi	a0,s0,-40
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	b84080e7          	jalr	-1148(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=handleMain;
    800018b8:	0000a797          	auipc	a5,0xa
    800018bc:	da07b783          	ld	a5,-608(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018c0:	fd843703          	ld	a4,-40(s0)
    800018c4:	00e7b023          	sd	a4,0(a5)

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);
    800018c8:	00000613          	li	a2,0
    800018cc:	00000597          	auipc	a1,0x0
    800018d0:	f5c58593          	addi	a1,a1,-164 # 80001828 <_Z10idleThreadPv>
    800018d4:	fd040513          	addi	a0,s0,-48
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	b5c080e7          	jalr	-1188(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>

    //thread_dispatch();

    TCB::newThrUserMode=true;
    800018e0:	00100793          	li	a5,1
    800018e4:	00f48023          	sb	a5,0(s1)
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);
    800018e8:	00000613          	li	a2,0
    800018ec:	00000597          	auipc	a1,0x0
    800018f0:	f5858593          	addi	a1,a1,-168 # 80001844 <_Z15userMainWrapperPv>
    800018f4:	fc840513          	addi	a0,s0,-56
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	b3c080e7          	jalr	-1220(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001900:	00200793          	li	a5,2
    80001904:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while (!handleUserMain->isFinished()){
    80001908:	fc843503          	ld	a0,-56(s0)
    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    }

    bool isFinished() const{
        return finished;
    8000190c:	03054783          	lbu	a5,48(a0)
    80001910:	00079863          	bnez	a5,80001920 <main+0xb4>
        thread_dispatch();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	c48080e7          	jalr	-952(ra) # 8000155c <_Z15thread_dispatchv>
    8000191c:	fedff06f          	j	80001908 <main+0x9c>
    }

    delete handleUserMain;
    80001920:	00050863          	beqz	a0,80001930 <main+0xc4>
    80001924:	00053783          	ld	a5,0(a0)
    80001928:	0087b783          	ld	a5,8(a5)
    8000192c:	000780e7          	jalr	a5
    delete handleIdle;
    80001930:	fd043503          	ld	a0,-48(s0)
    80001934:	00050863          	beqz	a0,80001944 <main+0xd8>
    80001938:	00053783          	ld	a5,0(a0)
    8000193c:	0087b783          	ld	a5,8(a5)
    80001940:	000780e7          	jalr	a5
    delete handleMain;
    80001944:	fd843503          	ld	a0,-40(s0)
    80001948:	00050863          	beqz	a0,80001958 <main+0xec>
    8000194c:	00053783          	ld	a5,0(a0)
    80001950:	0087b783          	ld	a5,8(a5)
    80001954:	000780e7          	jalr	a5
    /*Scheduler::get();
    Scheduler::get();*/


    return 0;
    80001958:	00000513          	li	a0,0
    8000195c:	03813083          	ld	ra,56(sp)
    80001960:	03013403          	ld	s0,48(sp)
    80001964:	02813483          	ld	s1,40(sp)
    80001968:	04010113          	addi	sp,sp,64
    8000196c:	00008067          	ret

0000000080001970 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001980:	00000097          	auipc	ra,0x0
    80001984:	a34080e7          	jalr	-1484(ra) # 800013b4 <_Z9mem_allocm>
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_Znam>:

void *operator new[](uint64 n)
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	a0c080e7          	jalr	-1524(ra) # 800013b4 <_Z9mem_allocm>
}
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZdlPv>:

void operator delete(void *p)noexcept{
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	a24080e7          	jalr	-1500(ra) # 800013f4 <_Z8mem_freePv>
}
    800019d8:	00813083          	ld	ra,8(sp)
    800019dc:	00013403          	ld	s0,0(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00113423          	sd	ra,8(sp)
    800019f0:	00813023          	sd	s0,0(sp)
    800019f4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	9fc080e7          	jalr	-1540(ra) # 800013f4 <_Z8mem_freePv>
    80001a00:	00813083          	ld	ra,8(sp)
    80001a04:	00013403          	ld	s0,0(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN6Thread22wrapperPolymorphThreadEPv>:

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001a20:	00053783          	ld	a5,0(a0)
    80001a24:	0107b783          	ld	a5,16(a5)
    80001a28:	000780e7          	jalr	a5
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001a3c:	0000a797          	auipc	a5,0xa
    80001a40:	9ec78793          	addi	a5,a5,-1556 # 8000b428 <_ZTV6Thread+0x10>
    80001a44:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001a48:	00853503          	ld	a0,8(a0)
    80001a4c:	02050863          	beqz	a0,80001a7c <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00113423          	sd	ra,8(sp)
    80001a58:	00813023          	sd	s0,0(sp)
    80001a5c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001a60:	00053783          	ld	a5,0(a0)
    80001a64:	0087b783          	ld	a5,8(a5)
    80001a68:	000780e7          	jalr	a5
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	02010413          	addi	s0,sp,32
    80001a94:	00050493          	mv	s1,a0
}
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	fa4080e7          	jalr	-92(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80001aa0:	00048513          	mv	a0,s1
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	f1c080e7          	jalr	-228(ra) # 800019c0 <_ZdlPv>
    80001aac:	01813083          	ld	ra,24(sp)
    80001ab0:	01013403          	ld	s0,16(sp)
    80001ab4:	00813483          	ld	s1,8(sp)
    80001ab8:	02010113          	addi	sp,sp,32
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00113423          	sd	ra,8(sp)
    80001ac8:	00813023          	sd	s0,0(sp)
    80001acc:	01010413          	addi	s0,sp,16
    80001ad0:	0000a797          	auipc	a5,0xa
    80001ad4:	98078793          	addi	a5,a5,-1664 # 8000b450 <_ZTV9Semaphore+0x10>
    80001ad8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001adc:	00853503          	ld	a0,8(a0)
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	b1c080e7          	jalr	-1252(ra) # 800015fc <_Z9sem_closeP4_sem>
    //delete myHandle;
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001af8:	fe010113          	addi	sp,sp,-32
    80001afc:	00113c23          	sd	ra,24(sp)
    80001b00:	00813823          	sd	s0,16(sp)
    80001b04:	00913423          	sd	s1,8(sp)
    80001b08:	02010413          	addi	s0,sp,32
    80001b0c:	00050493          	mv	s1,a0
}
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	fb0080e7          	jalr	-80(ra) # 80001ac0 <_ZN9SemaphoreD1Ev>
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	ea4080e7          	jalr	-348(ra) # 800019c0 <_ZdlPv>
    80001b24:	01813083          	ld	ra,24(sp)
    80001b28:	01013403          	ld	s0,16(sp)
    80001b2c:	00813483          	ld	s1,8(sp)
    80001b30:	02010113          	addi	sp,sp,32
    80001b34:	00008067          	ret

0000000080001b38 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	0000a797          	auipc	a5,0xa
    80001b48:	8e478793          	addi	a5,a5,-1820 # 8000b428 <_ZTV6Thread+0x10>
    80001b4c:	00f53023          	sd	a5,0(a0)
    80001b50:	00053423          	sd	zero,8(a0)
    80001b54:	00b53823          	sd	a1,16(a0)
    80001b58:	00c53c23          	sd	a2,24(a0)
    80001b5c:	00813403          	ld	s0,8(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001b78:	01853603          	ld	a2,24(a0)
    80001b7c:	01053583          	ld	a1,16(a0)
    80001b80:	00850513          	addi	a0,a0,8
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	8b0080e7          	jalr	-1872(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00113423          	sd	ra,8(sp)
    80001ba4:	00813023          	sd	s0,0(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	9b0080e7          	jalr	-1616(ra) # 8000155c <_Z15thread_dispatchv>
}
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	0000a797          	auipc	a5,0xa
    80001bd4:	85878793          	addi	a5,a5,-1960 # 8000b428 <_ZTV6Thread+0x10>
    80001bd8:	00f53023          	sd	a5,0(a0)
    80001bdc:	00053423          	sd	zero,8(a0)
    80001be0:	00000797          	auipc	a5,0x0
    80001be4:	e3078793          	addi	a5,a5,-464 # 80001a10 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80001be8:	00f53823          	sd	a5,16(a0)
    80001bec:	00a53c23          	sd	a0,24(a0)
    80001bf0:	00813403          	ld	s0,8(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN6Thread4joinEv>:
void Thread::join() {
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001c0c:	00853503          	ld	a0,8(a0)
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	978080e7          	jalr	-1672(ra) # 80001588 <_Z11thread_joinP3TCB>
}
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	8a8080e7          	jalr	-1880(ra) # 800014e0 <_Z10time_sleepm>
}
    80001c40:	00813083          	ld	ra,8(sp)
    80001c44:	00013403          	ld	s0,0(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00113423          	sd	ra,8(sp)
    80001c58:	00813023          	sd	s0,0(sp)
    80001c5c:	01010413          	addi	s0,sp,16
    80001c60:	00009797          	auipc	a5,0x9
    80001c64:	7f078793          	addi	a5,a5,2032 # 8000b450 <_ZTV9Semaphore+0x10>
    80001c68:	00f53023          	sd	a5,0(a0)
    80001c6c:	00053423          	sd	zero,8(a0)
    sem_open(&this->myHandle, init);
    80001c70:	00850513          	addi	a0,a0,8
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	944080e7          	jalr	-1724(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00113423          	sd	ra,8(sp)
    80001c94:	00813023          	sd	s0,0(sp)
    80001c98:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c9c:	00853503          	ld	a0,8(a0)
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	9a8080e7          	jalr	-1624(ra) # 80001648 <_Z8sem_waitP4_sem>
}
    80001ca8:	00813083          	ld	ra,8(sp)
    80001cac:	00013403          	ld	s0,0(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001cc8:	00853503          	ld	a0,8(a0)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	9c8080e7          	jalr	-1592(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN14PeriodicThread9terminateEv>:

int Semaphore::signal() {
    return 0;
}*/

void PeriodicThread::terminate() {
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16

}
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001cfc:	fe010113          	addi	sp,sp,-32
    80001d00:	00113c23          	sd	ra,24(sp)
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	02010413          	addi	s0,sp,32
    80001d10:	00050493          	mv	s1,a0
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	eb0080e7          	jalr	-336(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80001d1c:	00009797          	auipc	a5,0x9
    80001d20:	6dc78793          	addi	a5,a5,1756 # 8000b3f8 <_ZTV14PeriodicThread+0x10>
    80001d24:	00f4b023          	sd	a5,0(s1)

}
    80001d28:	01813083          	ld	ra,24(sp)
    80001d2c:	01013403          	ld	s0,16(sp)
    80001d30:	00813483          	ld	s1,8(sp)
    80001d34:	02010113          	addi	sp,sp,32
    80001d38:	00008067          	ret

0000000080001d3c <_ZN7Console4getcEv>:

char Console::getc() {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00113423          	sd	ra,8(sp)
    80001d44:	00813023          	sd	s0,0(sp)
    80001d48:	01010413          	addi	s0,sp,16
    return ::getc();
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	994080e7          	jalr	-1644(ra) # 800016e0 <_Z4getcv>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	9a8080e7          	jalr	-1624(ra) # 8000171c <_Z4putcc>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
    80001db0:	00813403          	ld	s0,8(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00113423          	sd	ra,8(sp)
    80001dc4:	00813023          	sd	s0,0(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    80001dcc:	00009797          	auipc	a5,0x9
    80001dd0:	62c78793          	addi	a5,a5,1580 # 8000b3f8 <_ZTV14PeriodicThread+0x10>
    80001dd4:	00f53023          	sd	a5,0(a0)
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	c64080e7          	jalr	-924(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80001de0:	00813083          	ld	ra,8(sp)
    80001de4:	00013403          	ld	s0,0(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_ZN14PeriodicThreadD0Ev>:
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050493          	mv	s1,a0
    80001e08:	00009797          	auipc	a5,0x9
    80001e0c:	5f078793          	addi	a5,a5,1520 # 8000b3f8 <_ZTV14PeriodicThread+0x10>
    80001e10:	00f53023          	sd	a5,0(a0)
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	c28080e7          	jalr	-984(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	ba0080e7          	jalr	-1120(ra) # 800019c0 <_ZdlPv>
    80001e28:	01813083          	ld	ra,24(sp)
    80001e2c:	01013403          	ld	s0,16(sp)
    80001e30:	00813483          	ld	s1,8(sp)
    80001e34:	02010113          	addi	sp,sp,32
    80001e38:	00008067          	ret

0000000080001e3c <_ZN5Riscv17hardwareInterruptEv>:
        }
        mc_sip(SIP_SSIP);
    }
}

void Riscv::hardwareInterrupt() {
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00113c23          	sd	ra,24(sp)
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001e4c:	142027f3          	csrr	a5,scause
    80001e50:	fef43423          	sd	a5,-24(s0)
    return scause;
    80001e54:	fe843703          	ld	a4,-24(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80001e58:	fff00793          	li	a5,-1
    80001e5c:	03f79793          	slli	a5,a5,0x3f
    80001e60:	00978793          	addi	a5,a5,9
    80001e64:	00f70a63          	beq	a4,a5,80001e78 <_ZN5Riscv17hardwareInterruptEv+0x3c>
        //prekid konzola
        console_handler();
    }
}
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	02010113          	addi	sp,sp,32
    80001e74:	00008067          	ret
        console_handler();
    80001e78:	00006097          	auipc	ra,0x6
    80001e7c:	6f8080e7          	jalr	1784(ra) # 80008570 <console_handler>
}
    80001e80:	fe9ff06f          	j	80001e68 <_ZN5Riscv17hardwareInterruptEv+0x2c>

0000000080001e84 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00813423          	sd	s0,8(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001e90:	02000793          	li	a5,32
    80001e94:	1007a073          	csrs	sstatus,a5
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }*/
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::running->userMode){
    80001e98:	00009797          	auipc	a5,0x9
    80001e9c:	7c07b783          	ld	a5,1984(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ea0:	0007b783          	ld	a5,0(a5)
    80001ea4:	0427c783          	lbu	a5,66(a5)
    80001ea8:	02078063          	beqz	a5,80001ec8 <_ZN5Riscv10popSppSpieEv+0x44>
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80001eac:	10000793          	li	a5,256
    80001eb0:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    80001eb4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001eb8:	10200073          	sret
}
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001ec8:	10000793          	li	a5,256
    80001ecc:	1007a073          	csrs	sstatus,a5
}
    80001ed0:	fe5ff06f          	j	80001eb4 <_ZN5Riscv10popSppSpieEv+0x30>

0000000080001ed4 <_ZN5Riscv10putToSleepEm>:


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    80001ed4:	10050463          	beqz	a0,80001fdc <_ZN5Riscv10putToSleepEm+0x108>
int Riscv::putToSleep(time_t time) {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	01213023          	sd	s2,0(sp)
    80001eec:	02010413          	addi	s0,sp,32
    80001ef0:	00050493          	mv	s1,a0
    TCB::running->setSleeping(true);
    80001ef4:	00009917          	auipc	s2,0x9
    80001ef8:	76493903          	ld	s2,1892(s2) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001efc:	00093783          	ld	a5,0(s2)
    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    80001f00:	00100713          	li	a4,1
    80001f04:	04e780a3          	sb	a4,65(a5)

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80001f08:	00100513          	li	a0,1
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	ba4080e7          	jalr	-1116(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
    newElem->thr=TCB::running;
    80001f14:	00093783          	ld	a5,0(s2)
    80001f18:	00f53023          	sd	a5,0(a0)

    if(!Riscv::headSleeping){
    80001f1c:	00009617          	auipc	a2,0x9
    80001f20:	7a463603          	ld	a2,1956(a2) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80001f24:	04060c63          	beqz	a2,80001f7c <_ZN5Riscv10putToSleepEm+0xa8>
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
    80001f28:	00863703          	ld	a4,8(a2)
    80001f2c:	06976263          	bltu	a4,s1,80001f90 <_ZN5Riscv10putToSleepEm+0xbc>
            newElem->toSleepRel=time;
    80001f30:	00953423          	sd	s1,8(a0)
            newElem->next=Riscv::headSleeping;
    80001f34:	00c53823          	sd	a2,16(a0)
            headSleeping->toSleepRel-=time;
    80001f38:	00863703          	ld	a4,8(a2)
    80001f3c:	40970733          	sub	a4,a4,s1
    80001f40:	00e63423          	sd	a4,8(a2)
            headSleeping=newElem;
    80001f44:	00009797          	auipc	a5,0x9
    80001f48:	76a7be23          	sd	a0,1916(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    80001f4c:	00009797          	auipc	a5,0x9
    80001f50:	6f47b783          	ld	a5,1780(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f54:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	5ac080e7          	jalr	1452(ra) # 80002504 <_ZN3TCB8dispatchEv>
    return 0;
    80001f60:	00000513          	li	a0,0
}
    80001f64:	01813083          	ld	ra,24(sp)
    80001f68:	01013403          	ld	s0,16(sp)
    80001f6c:	00813483          	ld	s1,8(sp)
    80001f70:	00013903          	ld	s2,0(sp)
    80001f74:	02010113          	addi	sp,sp,32
    80001f78:	00008067          	ret
        newElem->toSleepRel=time;
    80001f7c:	00953423          	sd	s1,8(a0)
        newElem->next=nullptr;
    80001f80:	00053823          	sd	zero,16(a0)
        headSleeping=newElem;
    80001f84:	00009797          	auipc	a5,0x9
    80001f88:	72a7be23          	sd	a0,1852(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80001f8c:	fc1ff06f          	j	80001f4c <_ZN5Riscv10putToSleepEm+0x78>
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
    80001f90:	40e48733          	sub	a4,s1,a4
            SleepingElem* pom=headSleeping->next;
    80001f94:	01063783          	ld	a5,16(a2)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80001f98:	00078e63          	beqz	a5,80001fb4 <_ZN5Riscv10putToSleepEm+0xe0>
    80001f9c:	0087b683          	ld	a3,8(a5)
    80001fa0:	00e6fa63          	bgeu	a3,a4,80001fb4 <_ZN5Riscv10putToSleepEm+0xe0>
                relTime-=pom->toSleepRel;
    80001fa4:	40d70733          	sub	a4,a4,a3
                prev=pom;
    80001fa8:	00078613          	mv	a2,a5
                pom=pom->next;
    80001fac:	0107b783          	ld	a5,16(a5)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80001fb0:	fe9ff06f          	j	80001f98 <_ZN5Riscv10putToSleepEm+0xc4>
            if(pom==nullptr){
    80001fb4:	02078063          	beqz	a5,80001fd4 <_ZN5Riscv10putToSleepEm+0x100>
                newElem->next=pom;
    80001fb8:	00f53823          	sd	a5,16(a0)
                pom->toSleepRel-=relTime;
    80001fbc:	0087b683          	ld	a3,8(a5)
    80001fc0:	40e686b3          	sub	a3,a3,a4
    80001fc4:	00d7b423          	sd	a3,8(a5)
            newElem->toSleepRel=relTime;
    80001fc8:	00e53423          	sd	a4,8(a0)
            prev->next=newElem;
    80001fcc:	00a63823          	sd	a0,16(a2)
    80001fd0:	f7dff06f          	j	80001f4c <_ZN5Riscv10putToSleepEm+0x78>
                newElem->next= nullptr;
    80001fd4:	00053823          	sd	zero,16(a0)
    80001fd8:	ff1ff06f          	j	80001fc8 <_ZN5Riscv10putToSleepEm+0xf4>
    if(time<=0)return -1;
    80001fdc:	fff00513          	li	a0,-1
}
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN5Riscv20handleEcallExceptionEv>:
void Riscv::handleEcallException(){
    80001fe4:	f9010113          	addi	sp,sp,-112
    80001fe8:	06113423          	sd	ra,104(sp)
    80001fec:	06813023          	sd	s0,96(sp)
    80001ff0:	04913c23          	sd	s1,88(sp)
    80001ff4:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001ff8:	142027f3          	csrr	a5,scause
    80001ffc:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002000:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    80002004:	05043783          	ld	a5,80(s0)
    80002008:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    8000200c:	05843783          	ld	a5,88(s0)
    80002010:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    80002014:	06043783          	ld	a5,96(s0)
    80002018:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    8000201c:	06843783          	ld	a5,104(s0)
    80002020:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    80002024:	07043783          	ld	a5,112(s0)
    80002028:	faf43c23          	sd	a5,-72(s0)
    if(scause==0x09UL || scause==0x08UL){
    8000202c:	ff848713          	addi	a4,s1,-8
    80002030:	00100793          	li	a5,1
    80002034:	22e7e263          	bltu	a5,a4,80002258 <_ZN5Riscv20handleEcallExceptionEv+0x274>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002038:	141027f3          	csrr	a5,sepc
    8000203c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002040:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc=r_sepc()+4;
    80002044:	00478793          	addi	a5,a5,4
    80002048:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    8000204c:	100027f3          	csrr	a5,sstatus
    80002050:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002054:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus=r_sstatus();
    80002058:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    8000205c:	fd843703          	ld	a4,-40(s0)
    80002060:	00100793          	li	a5,1
    80002064:	0af70463          	beq	a4,a5,8000210c <_ZN5Riscv20handleEcallExceptionEv+0x128>
        else if(a0==0x02){
    80002068:	fd843703          	ld	a4,-40(s0)
    8000206c:	00200793          	li	a5,2
    80002070:	0cf70863          	beq	a4,a5,80002140 <_ZN5Riscv20handleEcallExceptionEv+0x15c>
        else if(a0==0x11){
    80002074:	fd843703          	ld	a4,-40(s0)
    80002078:	01100793          	li	a5,17
    8000207c:	0cf70c63          	beq	a4,a5,80002154 <_ZN5Riscv20handleEcallExceptionEv+0x170>
        else if(a0==0x12){
    80002080:	fd843703          	ld	a4,-40(s0)
    80002084:	01200793          	li	a5,18
    80002088:	10f70263          	beq	a4,a5,8000218c <_ZN5Riscv20handleEcallExceptionEv+0x1a8>
        else if(a0==0x13){
    8000208c:	fd843703          	ld	a4,-40(s0)
    80002090:	01300793          	li	a5,19
    80002094:	10f70463          	beq	a4,a5,8000219c <_ZN5Riscv20handleEcallExceptionEv+0x1b8>
        else if(a0==0x41){
    80002098:	fd843703          	ld	a4,-40(s0)
    8000209c:	04100793          	li	a5,65
    800020a0:	10f70a63          	beq	a4,a5,800021b4 <_ZN5Riscv20handleEcallExceptionEv+0x1d0>
        else if(a0==0x42){
    800020a4:	fd843703          	ld	a4,-40(s0)
    800020a8:	04200793          	li	a5,66
    800020ac:	10f70c63          	beq	a4,a5,800021c4 <_ZN5Riscv20handleEcallExceptionEv+0x1e0>
        else if(a0==0x21){
    800020b0:	fd843703          	ld	a4,-40(s0)
    800020b4:	02100793          	li	a5,33
    800020b8:	12f70063          	beq	a4,a5,800021d8 <_ZN5Riscv20handleEcallExceptionEv+0x1f4>
        else if(a0==0x23){
    800020bc:	fd843703          	ld	a4,-40(s0)
    800020c0:	02300793          	li	a5,35
    800020c4:	14f70463          	beq	a4,a5,8000220c <_ZN5Riscv20handleEcallExceptionEv+0x228>
        else if(a0==0x22){
    800020c8:	fd843703          	ld	a4,-40(s0)
    800020cc:	02200793          	li	a5,34
    800020d0:	14f70863          	beq	a4,a5,80002220 <_ZN5Riscv20handleEcallExceptionEv+0x23c>
        else if(a0==0x24){
    800020d4:	fd843703          	ld	a4,-40(s0)
    800020d8:	02400793          	li	a5,36
    800020dc:	14f70c63          	beq	a4,a5,80002234 <_ZN5Riscv20handleEcallExceptionEv+0x250>
        else if(a0==0x14){
    800020e0:	fd843703          	ld	a4,-40(s0)
    800020e4:	01400793          	li	a5,20
    800020e8:	16f70063          	beq	a4,a5,80002248 <_ZN5Riscv20handleEcallExceptionEv+0x264>
        else if(a0==0x31){
    800020ec:	fd843703          	ld	a4,-40(s0)
    800020f0:	03100793          	li	a5,49
    800020f4:	02f71463          	bne	a4,a5,8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            time_t time=(time_t)a1;
    800020f8:	fd043503          	ld	a0,-48(s0)
            int stat=Riscv::putToSleep(time);
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	dd8080e7          	jalr	-552(ra) # 80001ed4 <_ZN5Riscv10putToSleepEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002104:	04a43823          	sd	a0,80(s0)
    80002108:	0140006f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            void *ptr=MemoryAllocator::alloc(a1);
    8000210c:	fd043503          	ld	a0,-48(s0)
    80002110:	00001097          	auipc	ra,0x1
    80002114:	9a0080e7          	jalr	-1632(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80002118:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    8000211c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002120:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002124:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002128:	14179073          	csrw	sepc,a5
}
    8000212c:	06813083          	ld	ra,104(sp)
    80002130:	06013403          	ld	s0,96(sp)
    80002134:	05813483          	ld	s1,88(sp)
    80002138:	07010113          	addi	sp,sp,112
    8000213c:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    80002140:	fd043503          	ld	a0,-48(s0)
    80002144:	00001097          	auipc	ra,0x1
    80002148:	a40080e7          	jalr	-1472(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000214c:	04a43823          	sd	a0,80(s0)
    80002150:	fcdff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);
    80002154:	fc843503          	ld	a0,-56(s0)
    80002158:	fb843583          	ld	a1,-72(s0)
    8000215c:	fc043603          	ld	a2,-64(s0)
    80002160:	00000097          	auipc	ra,0x0
    80002164:	4e0080e7          	jalr	1248(ra) # 80002640 <_ZN3TCB12createThreadEPFvPvEPmS0_>
            if(!handle){
    80002168:	00050c63          	beqz	a0,80002180 <_ZN5Riscv20handleEcallExceptionEv+0x19c>
                TCB** retHandle=(TCB**)a1;
    8000216c:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    80002170:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002174:	00000793          	li	a5,0
    80002178:	04f43823          	sd	a5,80(s0)
    8000217c:	fa1ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002180:	fff00793          	li	a5,-1
    80002184:	04f43823          	sd	a5,80(s0)
    80002188:	f95ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            int stat=TCB::exit();
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	574080e7          	jalr	1396(ra) # 80002700 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002194:	04a43823          	sd	a0,80(s0)
    80002198:	f85ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    8000219c:	00009797          	auipc	a5,0x9
    800021a0:	4a47b783          	ld	a5,1188(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021a4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	35c080e7          	jalr	860(ra) # 80002504 <_ZN3TCB8dispatchEv>
    800021b0:	f6dff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=__getc();
    800021b4:	00006097          	auipc	ra,0x6
    800021b8:	384080e7          	jalr	900(ra) # 80008538 <__getc>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    800021bc:	04a43823          	sd	a0,80(s0)
    800021c0:	f5dff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            __putc((char)a1);
    800021c4:	fd043503          	ld	a0,-48(s0)
    800021c8:	0ff57513          	andi	a0,a0,255
    800021cc:	00006097          	auipc	ra,0x6
    800021d0:	330080e7          	jalr	816(ra) # 800084fc <__putc>
    800021d4:	f49ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=_sem::open((int)a2);
    800021d8:	fc843503          	ld	a0,-56(s0)
    800021dc:	0005051b          	sext.w	a0,a0
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	5ec080e7          	jalr	1516(ra) # 800027cc <_ZN4_sem4openEi>
            if(!handle){
    800021e8:	00050c63          	beqz	a0,80002200 <_ZN5Riscv20handleEcallExceptionEv+0x21c>
                _sem** retHandle=(_sem**)a1;
    800021ec:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    800021f0:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    800021f4:	00000793          	li	a5,0
    800021f8:	04f43823          	sd	a5,80(s0)
    800021fc:	f21ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002200:	fff00793          	li	a5,-1
    80002204:	04f43823          	sd	a5,80(s0)
    80002208:	f15ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    8000220c:	fd043503          	ld	a0,-48(s0)
            int stat=handle->wait();
    80002210:	00000097          	auipc	ra,0x0
    80002214:	6b8080e7          	jalr	1720(ra) # 800028c8 <_ZN4_sem4waitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002218:	04a43823          	sd	a0,80(s0)
    8000221c:	f01ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002220:	fd043503          	ld	a0,-48(s0)
            int stat=handle->close();
    80002224:	00000097          	auipc	ra,0x0
    80002228:	7d8080e7          	jalr	2008(ra) # 800029fc <_ZN4_sem5closeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000222c:	04a43823          	sd	a0,80(s0)
    80002230:	eedff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002234:	fd043503          	ld	a0,-48(s0)
            int stat=handle->signal();
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	76c080e7          	jalr	1900(ra) # 800029a4 <_ZN4_sem6signalEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002240:	04a43823          	sd	a0,80(s0)
    80002244:	ed9ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    80002248:	fd043503          	ld	a0,-48(s0)
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	508080e7          	jalr	1288(ra) # 80002754 <_ZN3TCB4joinEPS_>
    80002254:	ec9ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    80002258:	00007517          	auipc	a0,0x7
    8000225c:	dc850513          	addi	a0,a0,-568 # 80009020 <CONSOLE_STATUS+0x10>
    80002260:	00003097          	auipc	ra,0x3
    80002264:	f8c080e7          	jalr	-116(ra) # 800051ec <_Z11printStringPKc>
        printInt(scause);
    80002268:	00000613          	li	a2,0
    8000226c:	00a00593          	li	a1,10
    80002270:	0004851b          	sext.w	a0,s1
    80002274:	00003097          	auipc	ra,0x3
    80002278:	128080e7          	jalr	296(ra) # 8000539c <_Z8printIntiii>
        printString("\n");
    8000227c:	00007517          	auipc	a0,0x7
    80002280:	0f450513          	addi	a0,a0,244 # 80009370 <CONSOLE_STATUS+0x360>
    80002284:	00003097          	auipc	ra,0x3
    80002288:	f68080e7          	jalr	-152(ra) # 800051ec <_Z11printStringPKc>
        while(true);
    8000228c:	0000006f          	j	8000228c <_ZN5Riscv20handleEcallExceptionEv+0x2a8>

0000000080002290 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    80002290:	00009797          	auipc	a5,0x9
    80002294:	4307b783          	ld	a5,1072(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80002298:	00078a63          	beqz	a5,800022ac <_ZN5Riscv18updateSleepingListEv+0x1c>
        if(--headSleeping->toSleepRel==0){
    8000229c:	0087b703          	ld	a4,8(a5)
    800022a0:	fff70713          	addi	a4,a4,-1
    800022a4:	00e7b423          	sd	a4,8(a5)
    800022a8:	00070463          	beqz	a4,800022b0 <_ZN5Riscv18updateSleepingListEv+0x20>
    800022ac:	00008067          	ret
void Riscv::updateSleepingList() {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
            headSleeping->thr->setSleeping(false);
    800022c0:	0007b703          	ld	a4,0(a5)
    800022c4:	040700a3          	sb	zero,65(a4)
            Scheduler::put(headSleeping->thr);
    800022c8:	0007b503          	ld	a0,0(a5)
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	480080e7          	jalr	1152(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
            SleepingElem* old=headSleeping;
    800022d4:	00009797          	auipc	a5,0x9
    800022d8:	3ec78793          	addi	a5,a5,1004 # 8000b6c0 <_ZN5Riscv12headSleepingE>
    800022dc:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    800022e0:	01053703          	ld	a4,16(a0)
    800022e4:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	89c080e7          	jalr	-1892(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    800022f0:	00009797          	auipc	a5,0x9
    800022f4:	3d07b783          	ld	a5,976(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    800022f8:	04078063          	beqz	a5,80002338 <_ZN5Riscv18updateSleepingListEv+0xa8>
    800022fc:	0087b703          	ld	a4,8(a5)
    80002300:	02071c63          	bnez	a4,80002338 <_ZN5Riscv18updateSleepingListEv+0xa8>
                headSleeping->thr->setSleeping(false);
    80002304:	0007b703          	ld	a4,0(a5)
    80002308:	040700a3          	sb	zero,65(a4)
                Scheduler::put(headSleeping->thr);
    8000230c:	0007b503          	ld	a0,0(a5)
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	43c080e7          	jalr	1084(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
                old=headSleeping;
    80002318:	00009797          	auipc	a5,0x9
    8000231c:	3a878793          	addi	a5,a5,936 # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80002320:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    80002324:	01053703          	ld	a4,16(a0)
    80002328:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	858080e7          	jalr	-1960(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002334:	fbdff06f          	j	800022f0 <_ZN5Riscv18updateSleepingListEv+0x60>
            }
        }
    }
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN5Riscv14timerInterruptEv>:
void Riscv::timerInterrupt() {
    80002348:	fc010113          	addi	sp,sp,-64
    8000234c:	02113c23          	sd	ra,56(sp)
    80002350:	02813823          	sd	s0,48(sp)
    80002354:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002358:	142027f3          	csrr	a5,scause
    8000235c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002360:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000001UL){
    80002364:	fff00793          	li	a5,-1
    80002368:	03f79793          	slli	a5,a5,0x3f
    8000236c:	00178793          	addi	a5,a5,1
    80002370:	00f70a63          	beq	a4,a5,80002384 <_ZN5Riscv14timerInterruptEv+0x3c>
}
    80002374:	03813083          	ld	ra,56(sp)
    80002378:	03013403          	ld	s0,48(sp)
    8000237c:	04010113          	addi	sp,sp,64
    80002380:	00008067          	ret
        updateSleepingList();
    80002384:	00000097          	auipc	ra,0x0
    80002388:	f0c080e7          	jalr	-244(ra) # 80002290 <_ZN5Riscv18updateSleepingListEv>
        TCB::timeSliceCounter++;
    8000238c:	00009717          	auipc	a4,0x9
    80002390:	2b473703          	ld	a4,692(a4) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002394:	00073783          	ld	a5,0(a4)
    80002398:	00178793          	addi	a5,a5,1
    8000239c:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800023a0:	00009717          	auipc	a4,0x9
    800023a4:	2b873703          	ld	a4,696(a4) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    800023a8:	00073703          	ld	a4,0(a4)
        return timeSlice;
    800023ac:	02873703          	ld	a4,40(a4)
    800023b0:	00e7f863          	bgeu	a5,a4,800023c0 <_ZN5Riscv14timerInterruptEv+0x78>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    800023b4:	00200793          	li	a5,2
    800023b8:	1447b073          	csrc	sip,a5
}
    800023bc:	fb9ff06f          	j	80002374 <_ZN5Riscv14timerInterruptEv+0x2c>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800023c0:	141027f3          	csrr	a5,sepc
    800023c4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800023c8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc=r_sepc();
    800023cc:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800023d0:	100027f3          	csrr	a5,sstatus
    800023d4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800023d8:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus=r_sstatus();
    800023dc:	fcf43823          	sd	a5,-48(s0)
            TCB::timeSliceCounter=0;
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	2607b783          	ld	a5,608(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023e8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	118080e7          	jalr	280(ra) # 80002504 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800023f4:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800023f8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800023fc:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002400:	14179073          	csrw	sepc,a5
}
    80002404:	fb1ff06f          	j	800023b4 <_ZN5Riscv14timerInterruptEv+0x6c>

0000000080002408 <_ZN3TCBD1Ev>:
                                     userMode(TCB::newThrUserMode)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002408:	00009797          	auipc	a5,0x9
    8000240c:	06878793          	addi	a5,a5,104 # 8000b470 <_ZTV3TCB+0x10>
    80002410:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    80002414:	01053503          	ld	a0,16(a0)
    80002418:	02050663          	beqz	a0,80002444 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00113423          	sd	ra,8(sp)
    80002424:	00813023          	sd	s0,0(sp)
    80002428:	01010413          	addi	s0,sp,16
    delete[] stack;
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	5bc080e7          	jalr	1468(ra) # 800019e8 <_ZdaPv>
}
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret
    80002444:	00008067          	ret

0000000080002448 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	02010413          	addi	s0,sp,32
    8000245c:	00050493          	mv	s1,a0
}
    80002460:	00000097          	auipc	ra,0x0
    80002464:	fa8080e7          	jalr	-88(ra) # 80002408 <_ZN3TCBD1Ev>
    80002468:	00048513          	mv	a0,s1
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	554080e7          	jalr	1364(ra) # 800019c0 <_ZdlPv>
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	02010113          	addi	sp,sp,32
    80002484:	00008067          	ret

0000000080002488 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	9e8080e7          	jalr	-1560(ra) # 80001e84 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800024a4:	00009497          	auipc	s1,0x9
    800024a8:	22448493          	addi	s1,s1,548 # 8000b6c8 <_ZN3TCB7runningE>
    800024ac:	0004b783          	ld	a5,0(s1)
    800024b0:	0087b703          	ld	a4,8(a5)
    800024b4:	0387b503          	ld	a0,56(a5)
    800024b8:	000700e7          	jalr	a4
    running->setFinished(true);
    800024bc:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800024c0:	00100713          	li	a4,1
    800024c4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	094080e7          	jalr	148(ra) # 8000155c <_Z15thread_dispatchv>
}
    800024d0:	01813083          	ld	ra,24(sp)
    800024d4:	01013403          	ld	s0,16(sp)
    800024d8:	00813483          	ld	s1,8(sp)
    800024dc:	02010113          	addi	sp,sp,32
    800024e0:	00008067          	ret

00000000800024e4 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00813423          	sd	s0,8(sp)
    800024ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800024f0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800024f4:	00000073          	ecall
}
    800024f8:	00813403          	ld	s0,8(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002504:	fe010113          	addi	sp,sp,-32
    80002508:	00113c23          	sd	ra,24(sp)
    8000250c:	00813823          	sd	s0,16(sp)
    80002510:	00913423          	sd	s1,8(sp)
    80002514:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002518:	00009497          	auipc	s1,0x9
    8000251c:	1b04b483          	ld	s1,432(s1) # 8000b6c8 <_ZN3TCB7runningE>
        return finished;
    80002520:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    80002524:	00079a63          	bnez	a5,80002538 <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    80002528:	0404c783          	lbu	a5,64(s1)
    8000252c:	00079663          	bnez	a5,80002538 <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    80002530:	0414c783          	lbu	a5,65(s1)
    80002534:	02078c63          	beqz	a5,8000256c <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	288080e7          	jalr	648(ra) # 800017c0 <_ZN9Scheduler3getEv>
    80002540:	00009797          	auipc	a5,0x9
    80002544:	18a7b423          	sd	a0,392(a5) # 8000b6c8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002548:	01850593          	addi	a1,a0,24
    8000254c:	01848513          	addi	a0,s1,24
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	df8080e7          	jalr	-520(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002558:	01813083          	ld	ra,24(sp)
    8000255c:	01013403          	ld	s0,16(sp)
    80002560:	00813483          	ld	s1,8(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret
        Scheduler::put(old);
    8000256c:	00048513          	mv	a0,s1
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	1dc080e7          	jalr	476(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    80002578:	fc1ff06f          	j	80002538 <_ZN3TCB8dispatchEv+0x34>

000000008000257c <_ZN3TCBC1EPFvPvEPmS0_m>:
                                     userMode(TCB::newThrUserMode)
    8000257c:	00009797          	auipc	a5,0x9
    80002580:	ef478793          	addi	a5,a5,-268 # 8000b470 <_ZTV3TCB+0x10>
    80002584:	00f53023          	sd	a5,0(a0)
    80002588:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    8000258c:	06058863          	beqz	a1,800025fc <_ZN3TCBC1EPFvPvEPmS0_m+0x80>
                                     userMode(TCB::newThrUserMode)
    80002590:	00c53823          	sd	a2,16(a0)
    80002594:	00000797          	auipc	a5,0x0
    80002598:	ef478793          	addi	a5,a5,-268 # 80002488 <_ZN3TCB13threadWrapperEv>
    8000259c:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800025a0:	06060263          	beqz	a2,80002604 <_ZN3TCBC1EPFvPvEPmS0_m+0x88>
    800025a4:	000087b7          	lui	a5,0x8
    800025a8:	00f60633          	add	a2,a2,a5
                                     userMode(TCB::newThrUserMode)
    800025ac:	02c53023          	sd	a2,32(a0)
    800025b0:	02e53423          	sd	a4,40(a0)
    800025b4:	02050823          	sb	zero,48(a0)
    800025b8:	02d53c23          	sd	a3,56(a0)
    800025bc:	04050023          	sb	zero,64(a0)
    800025c0:	040500a3          	sb	zero,65(a0)
    800025c4:	00009797          	auipc	a5,0x9
    800025c8:	10c7c783          	lbu	a5,268(a5) # 8000b6d0 <_ZN3TCB14newThrUserModeE>
    800025cc:	04f50123          	sb	a5,66(a0)
        if(body!=nullptr) Scheduler::put(this);
    800025d0:	02058e63          	beqz	a1,8000260c <_ZN3TCBC1EPFvPvEPmS0_m+0x90>
TCB::TCB(TCB::Body body, uint64* stack, void* arg, uint64 timeSlice): body(body),
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00113423          	sd	ra,8(sp)
    800025dc:	00813023          	sd	s0,0(sp)
    800025e0:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	168080e7          	jalr	360(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    800025ec:	00813083          	ld	ra,8(sp)
    800025f0:	00013403          	ld	s0,0(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800025fc:	00000613          	li	a2,0
    80002600:	f91ff06f          	j	80002590 <_ZN3TCBC1EPFvPvEPmS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002604:	00000613          	li	a2,0
    80002608:	fa5ff06f          	j	800025ac <_ZN3TCBC1EPFvPvEPmS0_m+0x30>
    8000260c:	00008067          	ret

0000000080002610 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00113423          	sd	ra,8(sp)
    80002618:	00813023          	sd	s0,0(sp)
    8000261c:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002620:	03f50513          	addi	a0,a0,63
    80002624:	00655513          	srli	a0,a0,0x6
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	488080e7          	jalr	1160(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00013403          	ld	s0,0(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::createThread(TCB::Body body, uint64* stack, void* arg) {
    80002640:	fd010113          	addi	sp,sp,-48
    80002644:	02113423          	sd	ra,40(sp)
    80002648:	02813023          	sd	s0,32(sp)
    8000264c:	00913c23          	sd	s1,24(sp)
    80002650:	01213823          	sd	s2,16(sp)
    80002654:	01313423          	sd	s3,8(sp)
    80002658:	01413023          	sd	s4,0(sp)
    8000265c:	03010413          	addi	s0,sp,48
    80002660:	00050913          	mv	s2,a0
    80002664:	00058993          	mv	s3,a1
    80002668:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    8000266c:	04800513          	li	a0,72
    80002670:	00000097          	auipc	ra,0x0
    80002674:	fa0080e7          	jalr	-96(ra) # 80002610 <_ZN3TCBnwEm>
    80002678:	00050493          	mv	s1,a0
    8000267c:	00200713          	li	a4,2
    80002680:	000a0693          	mv	a3,s4
    80002684:	00098613          	mv	a2,s3
    80002688:	00090593          	mv	a1,s2
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	ef0080e7          	jalr	-272(ra) # 8000257c <_ZN3TCBC1EPFvPvEPmS0_m>
    80002694:	0200006f          	j	800026b4 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x74>
    80002698:	00050913          	mv	s2,a0
    8000269c:	00048513          	mv	a0,s1
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	320080e7          	jalr	800(ra) # 800019c0 <_ZdlPv>
    800026a8:	00090513          	mv	a0,s2
    800026ac:	0000a097          	auipc	ra,0xa
    800026b0:	15c080e7          	jalr	348(ra) # 8000c808 <_Unwind_Resume>
}
    800026b4:	00048513          	mv	a0,s1
    800026b8:	02813083          	ld	ra,40(sp)
    800026bc:	02013403          	ld	s0,32(sp)
    800026c0:	01813483          	ld	s1,24(sp)
    800026c4:	01013903          	ld	s2,16(sp)
    800026c8:	00813983          	ld	s3,8(sp)
    800026cc:	00013a03          	ld	s4,0(sp)
    800026d0:	03010113          	addi	sp,sp,48
    800026d4:	00008067          	ret

00000000800026d8 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	49c080e7          	jalr	1180(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
}
    800026f0:	00813083          	ld	ra,8(sp)
    800026f4:	00013403          	ld	s0,0(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(TCB::running->isFinished()){
    80002700:	00009797          	auipc	a5,0x9
    80002704:	fc87b783          	ld	a5,-56(a5) # 8000b6c8 <_ZN3TCB7runningE>
        return finished;
    80002708:	0307c703          	lbu	a4,48(a5)
    8000270c:	04071063          	bnez	a4,8000274c <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
        TCB::finished = finished;
    80002720:	00100713          	li	a4,1
    80002724:	02e78823          	sb	a4,48(a5)
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
    80002728:	00009797          	auipc	a5,0x9
    8000272c:	fa07b823          	sd	zero,-80(a5) # 8000b6d8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002730:	00000097          	auipc	ra,0x0
    80002734:	dd4080e7          	jalr	-556(ra) # 80002504 <_ZN3TCB8dispatchEv>
        return 0;
    80002738:	00000513          	li	a0,0
    }
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret
        return -1;
    8000274c:	fff00513          	li	a0,-1
}
    80002750:	00008067          	ret

0000000080002754 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    80002754:	fe010113          	addi	sp,sp,-32
    80002758:	00113c23          	sd	ra,24(sp)
    8000275c:	00813823          	sd	s0,16(sp)
    80002760:	00913423          	sd	s1,8(sp)
    80002764:	02010413          	addi	s0,sp,32
    80002768:	00050493          	mv	s1,a0
        return finished;
    8000276c:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    80002770:	00079c63          	bnez	a5,80002788 <_ZN3TCB4joinEPS_+0x34>
        TCB::timeSliceCounter=0;
    80002774:	00009797          	auipc	a5,0x9
    80002778:	f607b223          	sd	zero,-156(a5) # 8000b6d8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	d88080e7          	jalr	-632(ra) # 80002504 <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    80002784:	fe9ff06f          	j	8000276c <_ZN3TCB4joinEPS_+0x18>
    }
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret

000000008000279c <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	00813023          	sd	s0,0(sp)
    800027a8:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800027ac:	03f50513          	addi	a0,a0,63
    800027b0:	00655513          	srli	a0,a0,0x6
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	2fc080e7          	jalr	764(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800027bc:	00813083          	ld	ra,8(sp)
    800027c0:	00013403          	ld	s0,0(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00113c23          	sd	ra,24(sp)
    800027d4:	00813823          	sd	s0,16(sp)
    800027d8:	00913423          	sd	s1,8(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00050493          	mv	s1,a0
    return new _sem(val);
    800027e4:	02000513          	li	a0,32
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	fb4080e7          	jalr	-76(ra) # 8000279c <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    800027f0:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    800027f4:	00053423          	sd	zero,8(a0)
    800027f8:	00053823          	sd	zero,16(a0)
    800027fc:	00050c23          	sb	zero,24(a0)
}
    80002800:	01813083          	ld	ra,24(sp)
    80002804:	01013403          	ld	s0,16(sp)
    80002808:	00813483          	ld	s1,8(sp)
    8000280c:	02010113          	addi	sp,sp,32
    80002810:	00008067          	ret

0000000080002814 <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002824:	00000097          	auipc	ra,0x0
    80002828:	360080e7          	jalr	864(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
}
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    8000283c:	fe010113          	addi	sp,sp,-32
    80002840:	00113c23          	sd	ra,24(sp)
    80002844:	00813823          	sd	s0,16(sp)
    80002848:	00913423          	sd	s1,8(sp)
    8000284c:	01213023          	sd	s2,0(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    80002858:	00009797          	auipc	a5,0x9
    8000285c:	e007b783          	ld	a5,-512(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002860:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002864:	00100793          	li	a5,1
    80002868:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    8000286c:	00100513          	li	a0,1
    80002870:	00000097          	auipc	ra,0x0
    80002874:	240080e7          	jalr	576(ra) # 80002ab0 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    80002878:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    8000287c:	00053423          	sd	zero,8(a0)
        if(tail){
    80002880:	0104b783          	ld	a5,16(s1)
    80002884:	02078c63          	beqz	a5,800028bc <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    80002888:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    8000288c:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    80002890:	00009797          	auipc	a5,0x9
    80002894:	db07b783          	ld	a5,-592(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002898:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	c68080e7          	jalr	-920(ra) # 80002504 <_ZN3TCB8dispatchEv>
}
    800028a4:	01813083          	ld	ra,24(sp)
    800028a8:	01013403          	ld	s0,16(sp)
    800028ac:	00813483          	ld	s1,8(sp)
    800028b0:	00013903          	ld	s2,0(sp)
    800028b4:	02010113          	addi	sp,sp,32
    800028b8:	00008067          	ret
        }
        else{
            head=tail=newElem;
    800028bc:	00a4b823          	sd	a0,16(s1)
    800028c0:	00a4b423          	sd	a0,8(s1)
    800028c4:	fcdff06f          	j	80002890 <_ZN4_sem5blockEv+0x54>

00000000800028c8 <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    800028c8:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    800028cc:	04079e63          	bnez	a5,80002928 <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    800028d0:	fe010113          	addi	sp,sp,-32
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	02010413          	addi	s0,sp,32
    800028e4:	00050493          	mv	s1,a0
    if(--val<0){
    800028e8:	00052783          	lw	a5,0(a0)
    800028ec:	fff7879b          	addiw	a5,a5,-1
    800028f0:	00f52023          	sw	a5,0(a0)
    800028f4:	02079713          	slli	a4,a5,0x20
    800028f8:	02074263          	bltz	a4,8000291c <_ZN4_sem4waitEv+0x54>
    800028fc:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002900:	02079863          	bnez	a5,80002930 <_ZN4_sem4waitEv+0x68>
    return 0;
    80002904:	00000513          	li	a0,0
}
    80002908:	01813083          	ld	ra,24(sp)
    8000290c:	01013403          	ld	s0,16(sp)
    80002910:	00813483          	ld	s1,8(sp)
    80002914:	02010113          	addi	sp,sp,32
    80002918:	00008067          	ret
        block();
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	f20080e7          	jalr	-224(ra) # 8000283c <_ZN4_sem5blockEv>
    80002924:	fd9ff06f          	j	800028fc <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002928:	fff00513          	li	a0,-1
}
    8000292c:	00008067          	ret
    if(this->isClosed())return -2;
    80002930:	ffe00513          	li	a0,-2
    80002934:	fd5ff06f          	j	80002908 <_ZN4_sem4waitEv+0x40>

0000000080002938 <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002938:	fe010113          	addi	sp,sp,-32
    8000293c:	00113c23          	sd	ra,24(sp)
    80002940:	00813823          	sd	s0,16(sp)
    80002944:	00913423          	sd	s1,8(sp)
    80002948:	02010413          	addi	s0,sp,32
    8000294c:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002950:	00853503          	ld	a0,8(a0)
    80002954:	04050463          	beqz	a0,8000299c <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002958:	00853703          	ld	a4,8(a0)
    8000295c:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002960:	02070a63          	beqz	a4,80002994 <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002964:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	21c080e7          	jalr	540(ra) # 80002b84 <_ZN15MemoryAllocator4freeEPv>
    80002970:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    80002974:	00048513          	mv	a0,s1
    80002978:	fffff097          	auipc	ra,0xfffff
    8000297c:	dd4080e7          	jalr	-556(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    80002980:	01813083          	ld	ra,24(sp)
    80002984:	01013403          	ld	s0,16(sp)
    80002988:	00813483          	ld	s1,8(sp)
    8000298c:	02010113          	addi	sp,sp,32
    80002990:	00008067          	ret
        if(!head){tail=nullptr;}
    80002994:	0007b823          	sd	zero,16(a5)
    80002998:	fcdff06f          	j	80002964 <_ZN4_sem7unblockEv+0x2c>
            return 0;
    8000299c:	00050493          	mv	s1,a0
    800029a0:	fd1ff06f          	j	80002970 <_ZN4_sem7unblockEv+0x38>

00000000800029a4 <_ZN4_sem6signalEv>:
    800029a4:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    800029a8:	04079663          	bnez	a5,800029f4 <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    800029ac:	00052783          	lw	a5,0(a0)
    800029b0:	0017879b          	addiw	a5,a5,1
    800029b4:	0007871b          	sext.w	a4,a5
    800029b8:	00f52023          	sw	a5,0(a0)
    800029bc:	00e05663          	blez	a4,800029c8 <_ZN4_sem6signalEv+0x24>
    return 0;
    800029c0:	00000513          	li	a0,0
}
    800029c4:	00008067          	ret
int _sem::signal() {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
        unblock();
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	f60080e7          	jalr	-160(ra) # 80002938 <_ZN4_sem7unblockEv>
    return 0;
    800029e0:	00000513          	li	a0,0
}
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret
    if(this->isClosed())return -1;
    800029f4:	fff00513          	li	a0,-1
    800029f8:	00008067          	ret

00000000800029fc <_ZN4_sem5closeEv>:
    800029fc:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002a00:	04079263          	bnez	a5,80002a44 <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002a1c:	00100793          	li	a5,1
    80002a20:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002a24:	0084b783          	ld	a5,8(s1)
    80002a28:	02078263          	beqz	a5,80002a4c <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002a2c:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002a30:	02078a63          	beqz	a5,80002a64 <_ZN4_sem5closeEv+0x68>
        unblock();
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	f00080e7          	jalr	-256(ra) # 80002938 <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002a40:	fe5ff06f          	j	80002a24 <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002a44:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002a48:	00008067          	ret
    return 0;
    80002a4c:	00000513          	li	a0,0
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret
    return 0;
    80002a64:	00000513          	li	a0,0
    80002a68:	fe9ff06f          	j	80002a50 <_ZN4_sem5closeEv+0x54>

0000000080002a6c <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00813423          	sd	s0,8(sp)
    80002a74:	01010413          	addi	s0,sp,16
    80002a78:	00100793          	li	a5,1
    80002a7c:	00f50863          	beq	a0,a5,80002a8c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a80:	00813403          	ld	s0,8(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret
    80002a8c:	000107b7          	lui	a5,0x10
    80002a90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a94:	fef596e3          	bne	a1,a5,80002a80 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002a98:	00009797          	auipc	a5,0x9
    80002a9c:	b987b783          	ld	a5,-1128(a5) # 8000b630 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002aa0:	0007b783          	ld	a5,0(a5)
    80002aa4:	00009717          	auipc	a4,0x9
    80002aa8:	c2f73e23          	sd	a5,-964(a4) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002aac:	fd5ff06f          	j	80002a80 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ab0 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00813423          	sd	s0,8(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80002abc:	0a050c63          	beqz	a0,80002b74 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002ac0:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002ac4:	00009797          	auipc	a5,0x9
    80002ac8:	c1c7b783          	ld	a5,-996(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002acc:	00000613          	li	a2,0
    while(free){
    80002ad0:	00078e63          	beqz	a5,80002aec <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002ad4:	0007b703          	ld	a4,0(a5)
    80002ad8:	fff70713          	addi	a4,a4,-1
    80002adc:	00d77863          	bgeu	a4,a3,80002aec <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002ae0:	00078613          	mv	a2,a5
        free=free->next;
    80002ae4:	0087b783          	ld	a5,8(a5)
    while(free){
    80002ae8:	fe9ff06f          	j	80002ad0 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    80002aec:	08078863          	beqz	a5,80002b7c <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002af0:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002af4:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002af8:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    80002afc:	fff70593          	addi	a1,a4,-1
    80002b00:	04d58063          	beq	a1,a3,80002b40 <_ZN15MemoryAllocator5allocEm+0x90>
    80002b04:	ffe70593          	addi	a1,a4,-2
    80002b08:	02d58c63          	beq	a1,a3,80002b40 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    80002b0c:	40d70733          	sub	a4,a4,a3
    80002b10:	fff70713          	addi	a4,a4,-1
    80002b14:	00100593          	li	a1,1
    80002b18:	02e5fa63          	bgeu	a1,a4,80002b4c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    80002b1c:	00168693          	addi	a3,a3,1
    80002b20:	00669593          	slli	a1,a3,0x6
    80002b24:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002b28:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80002b2c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002b30:	02060c63          	beqz	a2,80002b68 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80002b34:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002b38:	00d7b023          	sd	a3,0(a5)
    80002b3c:	0100006f          	j	80002b4c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002b40:	00060e63          	beqz	a2,80002b5c <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80002b44:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002b48:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80002b4c:	0007b423          	sd	zero,8(a5)
}
    80002b50:	00813403          	ld	s0,8(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret
            firstFreeSeg=free->next;
    80002b5c:	00009697          	auipc	a3,0x9
    80002b60:	b906b223          	sd	a6,-1148(a3) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002b64:	fe5ff06f          	j	80002b48 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80002b68:	00009717          	auipc	a4,0x9
    80002b6c:	b6b73c23          	sd	a1,-1160(a4) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002b70:	fc9ff06f          	j	80002b38 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80002b74:	00000513          	li	a0,0
    80002b78:	fd9ff06f          	j	80002b50 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80002b7c:	00078513          	mv	a0,a5
    80002b80:	fd1ff06f          	j	80002b50 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080002b84 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00813423          	sd	s0,8(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80002b90:	14050c63          	beqz	a0,80002ce8 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80002b94:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80002b98:	00009797          	auipc	a5,0x9
    80002b9c:	b487b783          	ld	a5,-1208(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002ba0:	02078a63          	beqz	a5,80002bd4 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80002ba4:	06f77863          	bgeu	a4,a5,80002c14 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80002ba8:	fc053603          	ld	a2,-64(a0)
    80002bac:	00661693          	slli	a3,a2,0x6
    80002bb0:	00d706b3          	add	a3,a4,a3
    80002bb4:	02d78a63          	beq	a5,a3,80002be8 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80002bb8:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002bbc:	00009797          	auipc	a5,0x9
    80002bc0:	b2e7b223          	sd	a4,-1244(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002bc4:	00000513          	li	a0,0
}
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret
        freeFromAddr->next=nullptr;
    80002bd4:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	b0e7b423          	sd	a4,-1272(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002be0:	00000513          	li	a0,0
    80002be4:	fe5ff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002be8:	0007b783          	ld	a5,0(a5)
    80002bec:	00f60633          	add	a2,a2,a5
    80002bf0:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80002bf4:	00009797          	auipc	a5,0x9
    80002bf8:	aec78793          	addi	a5,a5,-1300 # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002bfc:	0007b683          	ld	a3,0(a5)
    80002c00:	0086b683          	ld	a3,8(a3)
    80002c04:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002c08:	00e7b023          	sd	a4,0(a5)
            return 0;
    80002c0c:	00000513          	li	a0,0
    80002c10:	fb9ff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80002c14:	00000693          	li	a3,0
    while(nextFree){
    80002c18:	00078a63          	beqz	a5,80002c2c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    80002c1c:	00f76863          	bltu	a4,a5,80002c2c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80002c20:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80002c24:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80002c28:	ff1ff06f          	j	80002c18 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    80002c2c:	02078a63          	beqz	a5,80002c60 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002c30:	0006b583          	ld	a1,0(a3)
    80002c34:	00659613          	slli	a2,a1,0x6
    80002c38:	00c68633          	add	a2,a3,a2
    80002c3c:	04e60c63          	beq	a2,a4,80002c94 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80002c40:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002c44:	fc053683          	ld	a3,-64(a0)
    80002c48:	00669613          	slli	a2,a3,0x6
    80002c4c:	00c70733          	add	a4,a4,a2
    80002c50:	06f70e63          	beq	a4,a5,80002ccc <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80002c54:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80002c58:	00000513          	li	a0,0
    80002c5c:	f6dff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002c60:	0006b603          	ld	a2,0(a3)
    80002c64:	00661793          	slli	a5,a2,0x6
    80002c68:	00f687b3          	add	a5,a3,a5
    80002c6c:	00e78a63          	beq	a5,a4,80002c80 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80002c70:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    80002c74:	00e6b423          	sd	a4,8(a3)
            return 0;
    80002c78:	00000513          	li	a0,0
    80002c7c:	f4dff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80002c80:	fc053783          	ld	a5,-64(a0)
    80002c84:	00f60633          	add	a2,a2,a5
    80002c88:	00c6b023          	sd	a2,0(a3)
            return 0;
    80002c8c:	00000513          	li	a0,0
    80002c90:	f39ff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80002c94:	fc053703          	ld	a4,-64(a0)
    80002c98:	00e585b3          	add	a1,a1,a4
    80002c9c:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002ca0:	00659713          	slli	a4,a1,0x6
    80002ca4:	00e68733          	add	a4,a3,a4
    80002ca8:	00f70663          	beq	a4,a5,80002cb4 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    80002cac:	00000513          	li	a0,0
    80002cb0:	f19ff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80002cb4:	0007b703          	ld	a4,0(a5)
    80002cb8:	00e585b3          	add	a1,a1,a4
    80002cbc:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80002cc0:	0087b783          	ld	a5,8(a5)
    80002cc4:	00f6b423          	sd	a5,8(a3)
    80002cc8:	fe5ff06f          	j	80002cac <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    80002ccc:	0007b703          	ld	a4,0(a5)
    80002cd0:	00e686b3          	add	a3,a3,a4
    80002cd4:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80002cd8:	0087b783          	ld	a5,8(a5)
    80002cdc:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80002ce0:	00000513          	li	a0,0
    80002ce4:	ee5ff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002ce8:	fff00513          	li	a0,-1
    80002cec:	eddff06f          	j	80002bc8 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002cf0 <_ZN15MemoryAllocator10initializeEv>:
{
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813423          	sd	s0,8(sp)
    80002cf8:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002cfc:	00009797          	auipc	a5,0x9
    80002d00:	9347b783          	ld	a5,-1740(a5) # 8000b630 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d04:	0007b703          	ld	a4,0(a5)
    80002d08:	00009697          	auipc	a3,0x9
    80002d0c:	9d868693          	addi	a3,a3,-1576 # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002d10:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002d14:	00009797          	auipc	a5,0x9
    80002d18:	94c7b783          	ld	a5,-1716(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d1c:	0007b783          	ld	a5,0(a5)
    80002d20:	40e787b3          	sub	a5,a5,a4
    80002d24:	0067d793          	srli	a5,a5,0x6
    80002d28:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80002d2c:	0006b783          	ld	a5,0(a3)
    80002d30:	0007b423          	sd	zero,8(a5)
    80002d34:	00813403          	ld	s0,8(sp)
    80002d38:	01010113          	addi	sp,sp,16
    80002d3c:	00008067          	ret

0000000080002d40 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002d40:	ff010113          	addi	sp,sp,-16
    80002d44:	00113423          	sd	ra,8(sp)
    80002d48:	00813023          	sd	s0,0(sp)
    80002d4c:	01010413          	addi	s0,sp,16
    80002d50:	000105b7          	lui	a1,0x10
    80002d54:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002d58:	00100513          	li	a0,1
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	d10080e7          	jalr	-752(ra) # 80002a6c <_Z41__static_initialization_and_destruction_0ii>
    80002d64:	00813083          	ld	ra,8(sp)
    80002d68:	00013403          	ld	s0,0(sp)
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret

0000000080002d74 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d74:	fe010113          	addi	sp,sp,-32
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	00813823          	sd	s0,16(sp)
    80002d80:	00913423          	sd	s1,8(sp)
    80002d84:	01213023          	sd	s2,0(sp)
    80002d88:	02010413          	addi	s0,sp,32
    80002d8c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d90:	00000913          	li	s2,0
    80002d94:	00c0006f          	j	80002da0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d98:	ffffe097          	auipc	ra,0xffffe
    80002d9c:	7c4080e7          	jalr	1988(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	940080e7          	jalr	-1728(ra) # 800016e0 <_Z4getcv>
    80002da8:	0005059b          	sext.w	a1,a0
    80002dac:	01b00793          	li	a5,27
    80002db0:	02f58a63          	beq	a1,a5,80002de4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002db4:	0084b503          	ld	a0,8(s1)
    80002db8:	00003097          	auipc	ra,0x3
    80002dbc:	400080e7          	jalr	1024(ra) # 800061b8 <_ZN6Buffer3putEi>
        i++;
    80002dc0:	0019071b          	addiw	a4,s2,1
    80002dc4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002dc8:	0004a683          	lw	a3,0(s1)
    80002dcc:	0026979b          	slliw	a5,a3,0x2
    80002dd0:	00d787bb          	addw	a5,a5,a3
    80002dd4:	0017979b          	slliw	a5,a5,0x1
    80002dd8:	02f767bb          	remw	a5,a4,a5
    80002ddc:	fc0792e3          	bnez	a5,80002da0 <_ZL16producerKeyboardPv+0x2c>
    80002de0:	fb9ff06f          	j	80002d98 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002de4:	00100793          	li	a5,1
    80002de8:	00009717          	auipc	a4,0x9
    80002dec:	90f72023          	sw	a5,-1792(a4) # 8000b6e8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002df0:	02100593          	li	a1,33
    80002df4:	0084b503          	ld	a0,8(s1)
    80002df8:	00003097          	auipc	ra,0x3
    80002dfc:	3c0080e7          	jalr	960(ra) # 800061b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e00:	0104b503          	ld	a0,16(s1)
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	890080e7          	jalr	-1904(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002e0c:	01813083          	ld	ra,24(sp)
    80002e10:	01013403          	ld	s0,16(sp)
    80002e14:	00813483          	ld	s1,8(sp)
    80002e18:	00013903          	ld	s2,0(sp)
    80002e1c:	02010113          	addi	sp,sp,32
    80002e20:	00008067          	ret

0000000080002e24 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e24:	fe010113          	addi	sp,sp,-32
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	00813823          	sd	s0,16(sp)
    80002e30:	00913423          	sd	s1,8(sp)
    80002e34:	01213023          	sd	s2,0(sp)
    80002e38:	02010413          	addi	s0,sp,32
    80002e3c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e40:	00000913          	li	s2,0
    80002e44:	00c0006f          	j	80002e50 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	714080e7          	jalr	1812(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e50:	00009797          	auipc	a5,0x9
    80002e54:	8987a783          	lw	a5,-1896(a5) # 8000b6e8 <_ZL9threadEnd>
    80002e58:	02079e63          	bnez	a5,80002e94 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e5c:	0004a583          	lw	a1,0(s1)
    80002e60:	0305859b          	addiw	a1,a1,48
    80002e64:	0084b503          	ld	a0,8(s1)
    80002e68:	00003097          	auipc	ra,0x3
    80002e6c:	350080e7          	jalr	848(ra) # 800061b8 <_ZN6Buffer3putEi>
        i++;
    80002e70:	0019071b          	addiw	a4,s2,1
    80002e74:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e78:	0004a683          	lw	a3,0(s1)
    80002e7c:	0026979b          	slliw	a5,a3,0x2
    80002e80:	00d787bb          	addw	a5,a5,a3
    80002e84:	0017979b          	slliw	a5,a5,0x1
    80002e88:	02f767bb          	remw	a5,a4,a5
    80002e8c:	fc0792e3          	bnez	a5,80002e50 <_ZL8producerPv+0x2c>
    80002e90:	fb9ff06f          	j	80002e48 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002e94:	0104b503          	ld	a0,16(s1)
    80002e98:	ffffe097          	auipc	ra,0xffffe
    80002e9c:	7fc080e7          	jalr	2044(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002ea0:	01813083          	ld	ra,24(sp)
    80002ea4:	01013403          	ld	s0,16(sp)
    80002ea8:	00813483          	ld	s1,8(sp)
    80002eac:	00013903          	ld	s2,0(sp)
    80002eb0:	02010113          	addi	sp,sp,32
    80002eb4:	00008067          	ret

0000000080002eb8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002eb8:	fd010113          	addi	sp,sp,-48
    80002ebc:	02113423          	sd	ra,40(sp)
    80002ec0:	02813023          	sd	s0,32(sp)
    80002ec4:	00913c23          	sd	s1,24(sp)
    80002ec8:	01213823          	sd	s2,16(sp)
    80002ecc:	01313423          	sd	s3,8(sp)
    80002ed0:	03010413          	addi	s0,sp,48
    80002ed4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ed8:	00000993          	li	s3,0
    80002edc:	01c0006f          	j	80002ef8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	67c080e7          	jalr	1660(ra) # 8000155c <_Z15thread_dispatchv>
    80002ee8:	0500006f          	j	80002f38 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002eec:	00a00513          	li	a0,10
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	82c080e7          	jalr	-2004(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80002ef8:	00008797          	auipc	a5,0x8
    80002efc:	7f07a783          	lw	a5,2032(a5) # 8000b6e8 <_ZL9threadEnd>
    80002f00:	06079063          	bnez	a5,80002f60 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f04:	00893503          	ld	a0,8(s2)
    80002f08:	00003097          	auipc	ra,0x3
    80002f0c:	340080e7          	jalr	832(ra) # 80006248 <_ZN6Buffer3getEv>
        i++;
    80002f10:	0019849b          	addiw	s1,s3,1
    80002f14:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f18:	0ff57513          	andi	a0,a0,255
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	800080e7          	jalr	-2048(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f24:	00092703          	lw	a4,0(s2)
    80002f28:	0027179b          	slliw	a5,a4,0x2
    80002f2c:	00e787bb          	addw	a5,a5,a4
    80002f30:	02f4e7bb          	remw	a5,s1,a5
    80002f34:	fa0786e3          	beqz	a5,80002ee0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f38:	05000793          	li	a5,80
    80002f3c:	02f4e4bb          	remw	s1,s1,a5
    80002f40:	fa049ce3          	bnez	s1,80002ef8 <_ZL8consumerPv+0x40>
    80002f44:	fa9ff06f          	j	80002eec <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f48:	00893503          	ld	a0,8(s2)
    80002f4c:	00003097          	auipc	ra,0x3
    80002f50:	2fc080e7          	jalr	764(ra) # 80006248 <_ZN6Buffer3getEv>
        putc(key);
    80002f54:	0ff57513          	andi	a0,a0,255
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	7c4080e7          	jalr	1988(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f60:	00893503          	ld	a0,8(s2)
    80002f64:	00003097          	auipc	ra,0x3
    80002f68:	370080e7          	jalr	880(ra) # 800062d4 <_ZN6Buffer6getCntEv>
    80002f6c:	fca04ee3          	bgtz	a0,80002f48 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f70:	01093503          	ld	a0,16(s2)
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	720080e7          	jalr	1824(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002f7c:	02813083          	ld	ra,40(sp)
    80002f80:	02013403          	ld	s0,32(sp)
    80002f84:	01813483          	ld	s1,24(sp)
    80002f88:	01013903          	ld	s2,16(sp)
    80002f8c:	00813983          	ld	s3,8(sp)
    80002f90:	03010113          	addi	sp,sp,48
    80002f94:	00008067          	ret

0000000080002f98 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f98:	f9010113          	addi	sp,sp,-112
    80002f9c:	06113423          	sd	ra,104(sp)
    80002fa0:	06813023          	sd	s0,96(sp)
    80002fa4:	04913c23          	sd	s1,88(sp)
    80002fa8:	05213823          	sd	s2,80(sp)
    80002fac:	05313423          	sd	s3,72(sp)
    80002fb0:	05413023          	sd	s4,64(sp)
    80002fb4:	03513c23          	sd	s5,56(sp)
    80002fb8:	03613823          	sd	s6,48(sp)
    80002fbc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002fc0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fc4:	00006517          	auipc	a0,0x6
    80002fc8:	06450513          	addi	a0,a0,100 # 80009028 <CONSOLE_STATUS+0x18>
    80002fcc:	00002097          	auipc	ra,0x2
    80002fd0:	220080e7          	jalr	544(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80002fd4:	01e00593          	li	a1,30
    80002fd8:	fa040493          	addi	s1,s0,-96
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00002097          	auipc	ra,0x2
    80002fe4:	294080e7          	jalr	660(ra) # 80005274 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fe8:	00048513          	mv	a0,s1
    80002fec:	00002097          	auipc	ra,0x2
    80002ff0:	360080e7          	jalr	864(ra) # 8000534c <_Z11stringToIntPKc>
    80002ff4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002ff8:	00006517          	auipc	a0,0x6
    80002ffc:	05050513          	addi	a0,a0,80 # 80009048 <CONSOLE_STATUS+0x38>
    80003000:	00002097          	auipc	ra,0x2
    80003004:	1ec080e7          	jalr	492(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80003008:	01e00593          	li	a1,30
    8000300c:	00048513          	mv	a0,s1
    80003010:	00002097          	auipc	ra,0x2
    80003014:	264080e7          	jalr	612(ra) # 80005274 <_Z9getStringPci>
    n = stringToInt(input);
    80003018:	00048513          	mv	a0,s1
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	330080e7          	jalr	816(ra) # 8000534c <_Z11stringToIntPKc>
    80003024:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003028:	00006517          	auipc	a0,0x6
    8000302c:	04050513          	addi	a0,a0,64 # 80009068 <CONSOLE_STATUS+0x58>
    80003030:	00002097          	auipc	ra,0x2
    80003034:	1bc080e7          	jalr	444(ra) # 800051ec <_Z11printStringPKc>
    80003038:	00000613          	li	a2,0
    8000303c:	00a00593          	li	a1,10
    80003040:	00090513          	mv	a0,s2
    80003044:	00002097          	auipc	ra,0x2
    80003048:	358080e7          	jalr	856(ra) # 8000539c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	03450513          	addi	a0,a0,52 # 80009080 <CONSOLE_STATUS+0x70>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	198080e7          	jalr	408(ra) # 800051ec <_Z11printStringPKc>
    8000305c:	00000613          	li	a2,0
    80003060:	00a00593          	li	a1,10
    80003064:	00048513          	mv	a0,s1
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	334080e7          	jalr	820(ra) # 8000539c <_Z8printIntiii>
    printString(".\n");
    80003070:	00006517          	auipc	a0,0x6
    80003074:	02850513          	addi	a0,a0,40 # 80009098 <CONSOLE_STATUS+0x88>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	174080e7          	jalr	372(ra) # 800051ec <_Z11printStringPKc>
    if(threadNum > n) {
    80003080:	0324c463          	blt	s1,s2,800030a8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003084:	03205c63          	blez	s2,800030bc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003088:	03800513          	li	a0,56
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	8e4080e7          	jalr	-1820(ra) # 80001970 <_Znwm>
    80003094:	00050a13          	mv	s4,a0
    80003098:	00048593          	mv	a1,s1
    8000309c:	00003097          	auipc	ra,0x3
    800030a0:	080080e7          	jalr	128(ra) # 8000611c <_ZN6BufferC1Ei>
    800030a4:	0300006f          	j	800030d4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030a8:	00006517          	auipc	a0,0x6
    800030ac:	ff850513          	addi	a0,a0,-8 # 800090a0 <CONSOLE_STATUS+0x90>
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	13c080e7          	jalr	316(ra) # 800051ec <_Z11printStringPKc>
        return;
    800030b8:	0140006f          	j	800030cc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030bc:	00006517          	auipc	a0,0x6
    800030c0:	02450513          	addi	a0,a0,36 # 800090e0 <CONSOLE_STATUS+0xd0>
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	128080e7          	jalr	296(ra) # 800051ec <_Z11printStringPKc>
        return;
    800030cc:	000b0113          	mv	sp,s6
    800030d0:	1500006f          	j	80003220 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800030d4:	00000593          	li	a1,0
    800030d8:	00008517          	auipc	a0,0x8
    800030dc:	61850513          	addi	a0,a0,1560 # 8000b6f0 <_ZL10waitForAll>
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	4d8080e7          	jalr	1240(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800030e8:	00391793          	slli	a5,s2,0x3
    800030ec:	00f78793          	addi	a5,a5,15
    800030f0:	ff07f793          	andi	a5,a5,-16
    800030f4:	40f10133          	sub	sp,sp,a5
    800030f8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800030fc:	0019071b          	addiw	a4,s2,1
    80003100:	00171793          	slli	a5,a4,0x1
    80003104:	00e787b3          	add	a5,a5,a4
    80003108:	00379793          	slli	a5,a5,0x3
    8000310c:	00f78793          	addi	a5,a5,15
    80003110:	ff07f793          	andi	a5,a5,-16
    80003114:	40f10133          	sub	sp,sp,a5
    80003118:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000311c:	00191613          	slli	a2,s2,0x1
    80003120:	012607b3          	add	a5,a2,s2
    80003124:	00379793          	slli	a5,a5,0x3
    80003128:	00f987b3          	add	a5,s3,a5
    8000312c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003130:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003134:	00008717          	auipc	a4,0x8
    80003138:	5bc73703          	ld	a4,1468(a4) # 8000b6f0 <_ZL10waitForAll>
    8000313c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003140:	00078613          	mv	a2,a5
    80003144:	00000597          	auipc	a1,0x0
    80003148:	d7458593          	addi	a1,a1,-652 # 80002eb8 <_ZL8consumerPv>
    8000314c:	f9840513          	addi	a0,s0,-104
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	2e4080e7          	jalr	740(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003158:	00000493          	li	s1,0
    8000315c:	0280006f          	j	80003184 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003160:	00000597          	auipc	a1,0x0
    80003164:	c1458593          	addi	a1,a1,-1004 # 80002d74 <_ZL16producerKeyboardPv>
                      data + i);
    80003168:	00179613          	slli	a2,a5,0x1
    8000316c:	00f60633          	add	a2,a2,a5
    80003170:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003174:	00c98633          	add	a2,s3,a2
    80003178:	ffffe097          	auipc	ra,0xffffe
    8000317c:	2bc080e7          	jalr	700(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003180:	0014849b          	addiw	s1,s1,1
    80003184:	0524d263          	bge	s1,s2,800031c8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003188:	00149793          	slli	a5,s1,0x1
    8000318c:	009787b3          	add	a5,a5,s1
    80003190:	00379793          	slli	a5,a5,0x3
    80003194:	00f987b3          	add	a5,s3,a5
    80003198:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000319c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031a0:	00008717          	auipc	a4,0x8
    800031a4:	55073703          	ld	a4,1360(a4) # 8000b6f0 <_ZL10waitForAll>
    800031a8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031ac:	00048793          	mv	a5,s1
    800031b0:	00349513          	slli	a0,s1,0x3
    800031b4:	00aa8533          	add	a0,s5,a0
    800031b8:	fa9054e3          	blez	s1,80003160 <_Z22producerConsumer_C_APIv+0x1c8>
    800031bc:	00000597          	auipc	a1,0x0
    800031c0:	c6858593          	addi	a1,a1,-920 # 80002e24 <_ZL8producerPv>
    800031c4:	fa5ff06f          	j	80003168 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	394080e7          	jalr	916(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800031d0:	00000493          	li	s1,0
    800031d4:	00994e63          	blt	s2,s1,800031f0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031d8:	00008517          	auipc	a0,0x8
    800031dc:	51853503          	ld	a0,1304(a0) # 8000b6f0 <_ZL10waitForAll>
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	468080e7          	jalr	1128(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800031e8:	0014849b          	addiw	s1,s1,1
    800031ec:	fe9ff06f          	j	800031d4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800031f0:	00008517          	auipc	a0,0x8
    800031f4:	50053503          	ld	a0,1280(a0) # 8000b6f0 <_ZL10waitForAll>
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	404080e7          	jalr	1028(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003200:	000a0e63          	beqz	s4,8000321c <_Z22producerConsumer_C_APIv+0x284>
    80003204:	000a0513          	mv	a0,s4
    80003208:	00003097          	auipc	ra,0x3
    8000320c:	154080e7          	jalr	340(ra) # 8000635c <_ZN6BufferD1Ev>
    80003210:	000a0513          	mv	a0,s4
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	7ac080e7          	jalr	1964(ra) # 800019c0 <_ZdlPv>
    8000321c:	000b0113          	mv	sp,s6

}
    80003220:	f9040113          	addi	sp,s0,-112
    80003224:	06813083          	ld	ra,104(sp)
    80003228:	06013403          	ld	s0,96(sp)
    8000322c:	05813483          	ld	s1,88(sp)
    80003230:	05013903          	ld	s2,80(sp)
    80003234:	04813983          	ld	s3,72(sp)
    80003238:	04013a03          	ld	s4,64(sp)
    8000323c:	03813a83          	ld	s5,56(sp)
    80003240:	03013b03          	ld	s6,48(sp)
    80003244:	07010113          	addi	sp,sp,112
    80003248:	00008067          	ret
    8000324c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003250:	000a0513          	mv	a0,s4
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	76c080e7          	jalr	1900(ra) # 800019c0 <_ZdlPv>
    8000325c:	00048513          	mv	a0,s1
    80003260:	00009097          	auipc	ra,0x9
    80003264:	5a8080e7          	jalr	1448(ra) # 8000c808 <_Unwind_Resume>

0000000080003268 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003268:	fe010113          	addi	sp,sp,-32
    8000326c:	00113c23          	sd	ra,24(sp)
    80003270:	00813823          	sd	s0,16(sp)
    80003274:	00913423          	sd	s1,8(sp)
    80003278:	01213023          	sd	s2,0(sp)
    8000327c:	02010413          	addi	s0,sp,32
    80003280:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003284:	00100793          	li	a5,1
    80003288:	02a7f863          	bgeu	a5,a0,800032b8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000328c:	00a00793          	li	a5,10
    80003290:	02f577b3          	remu	a5,a0,a5
    80003294:	02078e63          	beqz	a5,800032d0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003298:	fff48513          	addi	a0,s1,-1
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	fcc080e7          	jalr	-52(ra) # 80003268 <_ZL9fibonaccim>
    800032a4:	00050913          	mv	s2,a0
    800032a8:	ffe48513          	addi	a0,s1,-2
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	fbc080e7          	jalr	-68(ra) # 80003268 <_ZL9fibonaccim>
    800032b4:	00a90533          	add	a0,s2,a0
}
    800032b8:	01813083          	ld	ra,24(sp)
    800032bc:	01013403          	ld	s0,16(sp)
    800032c0:	00813483          	ld	s1,8(sp)
    800032c4:	00013903          	ld	s2,0(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	28c080e7          	jalr	652(ra) # 8000155c <_Z15thread_dispatchv>
    800032d8:	fc1ff06f          	j	80003298 <_ZL9fibonaccim+0x30>

00000000800032dc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00113c23          	sd	ra,24(sp)
    800032e4:	00813823          	sd	s0,16(sp)
    800032e8:	00913423          	sd	s1,8(sp)
    800032ec:	01213023          	sd	s2,0(sp)
    800032f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800032f4:	00000913          	li	s2,0
    800032f8:	0380006f          	j	80003330 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	260080e7          	jalr	608(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003304:	00148493          	addi	s1,s1,1
    80003308:	000027b7          	lui	a5,0x2
    8000330c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003310:	0097ee63          	bltu	a5,s1,8000332c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003314:	00000713          	li	a4,0
    80003318:	000077b7          	lui	a5,0x7
    8000331c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003320:	fce7eee3          	bltu	a5,a4,800032fc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003324:	00170713          	addi	a4,a4,1
    80003328:	ff1ff06f          	j	80003318 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000332c:	00190913          	addi	s2,s2,1
    80003330:	00900793          	li	a5,9
    80003334:	0527e063          	bltu	a5,s2,80003374 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003338:	00006517          	auipc	a0,0x6
    8000333c:	dd850513          	addi	a0,a0,-552 # 80009110 <CONSOLE_STATUS+0x100>
    80003340:	00002097          	auipc	ra,0x2
    80003344:	eac080e7          	jalr	-340(ra) # 800051ec <_Z11printStringPKc>
    80003348:	00000613          	li	a2,0
    8000334c:	00a00593          	li	a1,10
    80003350:	0009051b          	sext.w	a0,s2
    80003354:	00002097          	auipc	ra,0x2
    80003358:	048080e7          	jalr	72(ra) # 8000539c <_Z8printIntiii>
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	01450513          	addi	a0,a0,20 # 80009370 <CONSOLE_STATUS+0x360>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	e88080e7          	jalr	-376(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000336c:	00000493          	li	s1,0
    80003370:	f99ff06f          	j	80003308 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003374:	00006517          	auipc	a0,0x6
    80003378:	da450513          	addi	a0,a0,-604 # 80009118 <CONSOLE_STATUS+0x108>
    8000337c:	00002097          	auipc	ra,0x2
    80003380:	e70080e7          	jalr	-400(ra) # 800051ec <_Z11printStringPKc>
    finishedA = true;
    80003384:	00100793          	li	a5,1
    80003388:	00008717          	auipc	a4,0x8
    8000338c:	36f70823          	sb	a5,880(a4) # 8000b6f8 <_ZL9finishedA>
}
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	00013903          	ld	s2,0(sp)
    800033a0:	02010113          	addi	sp,sp,32
    800033a4:	00008067          	ret

00000000800033a8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033a8:	fe010113          	addi	sp,sp,-32
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	01213023          	sd	s2,0(sp)
    800033bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033c0:	00000913          	li	s2,0
    800033c4:	0380006f          	j	800033fc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033c8:	ffffe097          	auipc	ra,0xffffe
    800033cc:	194080e7          	jalr	404(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033d0:	00148493          	addi	s1,s1,1
    800033d4:	000027b7          	lui	a5,0x2
    800033d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800033dc:	0097ee63          	bltu	a5,s1,800033f8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033e0:	00000713          	li	a4,0
    800033e4:	000077b7          	lui	a5,0x7
    800033e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033ec:	fce7eee3          	bltu	a5,a4,800033c8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800033f0:	00170713          	addi	a4,a4,1
    800033f4:	ff1ff06f          	j	800033e4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800033f8:	00190913          	addi	s2,s2,1
    800033fc:	00f00793          	li	a5,15
    80003400:	0527e063          	bltu	a5,s2,80003440 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003404:	00006517          	auipc	a0,0x6
    80003408:	d2450513          	addi	a0,a0,-732 # 80009128 <CONSOLE_STATUS+0x118>
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	de0080e7          	jalr	-544(ra) # 800051ec <_Z11printStringPKc>
    80003414:	00000613          	li	a2,0
    80003418:	00a00593          	li	a1,10
    8000341c:	0009051b          	sext.w	a0,s2
    80003420:	00002097          	auipc	ra,0x2
    80003424:	f7c080e7          	jalr	-132(ra) # 8000539c <_Z8printIntiii>
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	f4850513          	addi	a0,a0,-184 # 80009370 <CONSOLE_STATUS+0x360>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	dbc080e7          	jalr	-580(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003438:	00000493          	li	s1,0
    8000343c:	f99ff06f          	j	800033d4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003440:	00006517          	auipc	a0,0x6
    80003444:	cf050513          	addi	a0,a0,-784 # 80009130 <CONSOLE_STATUS+0x120>
    80003448:	00002097          	auipc	ra,0x2
    8000344c:	da4080e7          	jalr	-604(ra) # 800051ec <_Z11printStringPKc>
    finishedB = true;
    80003450:	00100793          	li	a5,1
    80003454:	00008717          	auipc	a4,0x8
    80003458:	2af702a3          	sb	a5,677(a4) # 8000b6f9 <_ZL9finishedB>
    thread_dispatch();
    8000345c:	ffffe097          	auipc	ra,0xffffe
    80003460:	100080e7          	jalr	256(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003464:	01813083          	ld	ra,24(sp)
    80003468:	01013403          	ld	s0,16(sp)
    8000346c:	00813483          	ld	s1,8(sp)
    80003470:	00013903          	ld	s2,0(sp)
    80003474:	02010113          	addi	sp,sp,32
    80003478:	00008067          	ret

000000008000347c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00113c23          	sd	ra,24(sp)
    80003484:	00813823          	sd	s0,16(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	01213023          	sd	s2,0(sp)
    80003490:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003494:	00000493          	li	s1,0
    80003498:	0400006f          	j	800034d8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	ca450513          	addi	a0,a0,-860 # 80009140 <CONSOLE_STATUS+0x130>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	d48080e7          	jalr	-696(ra) # 800051ec <_Z11printStringPKc>
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	00048513          	mv	a0,s1
    800034b8:	00002097          	auipc	ra,0x2
    800034bc:	ee4080e7          	jalr	-284(ra) # 8000539c <_Z8printIntiii>
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	eb050513          	addi	a0,a0,-336 # 80009370 <CONSOLE_STATUS+0x360>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	d24080e7          	jalr	-732(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034d0:	0014849b          	addiw	s1,s1,1
    800034d4:	0ff4f493          	andi	s1,s1,255
    800034d8:	00200793          	li	a5,2
    800034dc:	fc97f0e3          	bgeu	a5,s1,8000349c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800034e0:	00006517          	auipc	a0,0x6
    800034e4:	c6850513          	addi	a0,a0,-920 # 80009148 <CONSOLE_STATUS+0x138>
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	d04080e7          	jalr	-764(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034f0:	00700313          	li	t1,7
    thread_dispatch();
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	068080e7          	jalr	104(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034fc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	c5850513          	addi	a0,a0,-936 # 80009158 <CONSOLE_STATUS+0x148>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	ce4080e7          	jalr	-796(ra) # 800051ec <_Z11printStringPKc>
    80003510:	00000613          	li	a2,0
    80003514:	00a00593          	li	a1,10
    80003518:	0009051b          	sext.w	a0,s2
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	e80080e7          	jalr	-384(ra) # 8000539c <_Z8printIntiii>
    80003524:	00006517          	auipc	a0,0x6
    80003528:	e4c50513          	addi	a0,a0,-436 # 80009370 <CONSOLE_STATUS+0x360>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	cc0080e7          	jalr	-832(ra) # 800051ec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003534:	00c00513          	li	a0,12
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	d30080e7          	jalr	-720(ra) # 80003268 <_ZL9fibonaccim>
    80003540:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003544:	00006517          	auipc	a0,0x6
    80003548:	c1c50513          	addi	a0,a0,-996 # 80009160 <CONSOLE_STATUS+0x150>
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	ca0080e7          	jalr	-864(ra) # 800051ec <_Z11printStringPKc>
    80003554:	00000613          	li	a2,0
    80003558:	00a00593          	li	a1,10
    8000355c:	0009051b          	sext.w	a0,s2
    80003560:	00002097          	auipc	ra,0x2
    80003564:	e3c080e7          	jalr	-452(ra) # 8000539c <_Z8printIntiii>
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	e0850513          	addi	a0,a0,-504 # 80009370 <CONSOLE_STATUS+0x360>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	c7c080e7          	jalr	-900(ra) # 800051ec <_Z11printStringPKc>
    80003578:	0400006f          	j	800035b8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	bc450513          	addi	a0,a0,-1084 # 80009140 <CONSOLE_STATUS+0x130>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	c68080e7          	jalr	-920(ra) # 800051ec <_Z11printStringPKc>
    8000358c:	00000613          	li	a2,0
    80003590:	00a00593          	li	a1,10
    80003594:	00048513          	mv	a0,s1
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	e04080e7          	jalr	-508(ra) # 8000539c <_Z8printIntiii>
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	dd050513          	addi	a0,a0,-560 # 80009370 <CONSOLE_STATUS+0x360>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	c44080e7          	jalr	-956(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035b0:	0014849b          	addiw	s1,s1,1
    800035b4:	0ff4f493          	andi	s1,s1,255
    800035b8:	00500793          	li	a5,5
    800035bc:	fc97f0e3          	bgeu	a5,s1,8000357c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	bb050513          	addi	a0,a0,-1104 # 80009170 <CONSOLE_STATUS+0x160>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	c24080e7          	jalr	-988(ra) # 800051ec <_Z11printStringPKc>
    finishedC = true;
    800035d0:	00100793          	li	a5,1
    800035d4:	00008717          	auipc	a4,0x8
    800035d8:	12f70323          	sb	a5,294(a4) # 8000b6fa <_ZL9finishedC>
    thread_dispatch();
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	f80080e7          	jalr	-128(ra) # 8000155c <_Z15thread_dispatchv>
}
    800035e4:	01813083          	ld	ra,24(sp)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	00013903          	ld	s2,0(sp)
    800035f4:	02010113          	addi	sp,sp,32
    800035f8:	00008067          	ret

00000000800035fc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800035fc:	fe010113          	addi	sp,sp,-32
    80003600:	00113c23          	sd	ra,24(sp)
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	01213023          	sd	s2,0(sp)
    80003610:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003614:	00a00493          	li	s1,10
    80003618:	0400006f          	j	80003658 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	b6450513          	addi	a0,a0,-1180 # 80009180 <CONSOLE_STATUS+0x170>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	bc8080e7          	jalr	-1080(ra) # 800051ec <_Z11printStringPKc>
    8000362c:	00000613          	li	a2,0
    80003630:	00a00593          	li	a1,10
    80003634:	00048513          	mv	a0,s1
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	d64080e7          	jalr	-668(ra) # 8000539c <_Z8printIntiii>
    80003640:	00006517          	auipc	a0,0x6
    80003644:	d3050513          	addi	a0,a0,-720 # 80009370 <CONSOLE_STATUS+0x360>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	ba4080e7          	jalr	-1116(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003650:	0014849b          	addiw	s1,s1,1
    80003654:	0ff4f493          	andi	s1,s1,255
    80003658:	00c00793          	li	a5,12
    8000365c:	fc97f0e3          	bgeu	a5,s1,8000361c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003660:	00006517          	auipc	a0,0x6
    80003664:	b2850513          	addi	a0,a0,-1240 # 80009188 <CONSOLE_STATUS+0x178>
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	b84080e7          	jalr	-1148(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003670:	00500313          	li	t1,5
    thread_dispatch();
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	ee8080e7          	jalr	-280(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000367c:	01000513          	li	a0,16
    80003680:	00000097          	auipc	ra,0x0
    80003684:	be8080e7          	jalr	-1048(ra) # 80003268 <_ZL9fibonaccim>
    80003688:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	b0c50513          	addi	a0,a0,-1268 # 80009198 <CONSOLE_STATUS+0x188>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	b58080e7          	jalr	-1192(ra) # 800051ec <_Z11printStringPKc>
    8000369c:	00000613          	li	a2,0
    800036a0:	00a00593          	li	a1,10
    800036a4:	0009051b          	sext.w	a0,s2
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	cf4080e7          	jalr	-780(ra) # 8000539c <_Z8printIntiii>
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	cc050513          	addi	a0,a0,-832 # 80009370 <CONSOLE_STATUS+0x360>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	b34080e7          	jalr	-1228(ra) # 800051ec <_Z11printStringPKc>
    800036c0:	0400006f          	j	80003700 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036c4:	00006517          	auipc	a0,0x6
    800036c8:	abc50513          	addi	a0,a0,-1348 # 80009180 <CONSOLE_STATUS+0x170>
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	b20080e7          	jalr	-1248(ra) # 800051ec <_Z11printStringPKc>
    800036d4:	00000613          	li	a2,0
    800036d8:	00a00593          	li	a1,10
    800036dc:	00048513          	mv	a0,s1
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	cbc080e7          	jalr	-836(ra) # 8000539c <_Z8printIntiii>
    800036e8:	00006517          	auipc	a0,0x6
    800036ec:	c8850513          	addi	a0,a0,-888 # 80009370 <CONSOLE_STATUS+0x360>
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	afc080e7          	jalr	-1284(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    800036f8:	0014849b          	addiw	s1,s1,1
    800036fc:	0ff4f493          	andi	s1,s1,255
    80003700:	00f00793          	li	a5,15
    80003704:	fc97f0e3          	bgeu	a5,s1,800036c4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003708:	00006517          	auipc	a0,0x6
    8000370c:	aa050513          	addi	a0,a0,-1376 # 800091a8 <CONSOLE_STATUS+0x198>
    80003710:	00002097          	auipc	ra,0x2
    80003714:	adc080e7          	jalr	-1316(ra) # 800051ec <_Z11printStringPKc>
    finishedD = true;
    80003718:	00100793          	li	a5,1
    8000371c:	00008717          	auipc	a4,0x8
    80003720:	fcf70fa3          	sb	a5,-33(a4) # 8000b6fb <_ZL9finishedD>
    thread_dispatch();
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	e38080e7          	jalr	-456(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000372c:	01813083          	ld	ra,24(sp)
    80003730:	01013403          	ld	s0,16(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	00013903          	ld	s2,0(sp)
    8000373c:	02010113          	addi	sp,sp,32
    80003740:	00008067          	ret

0000000080003744 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003744:	fc010113          	addi	sp,sp,-64
    80003748:	02113c23          	sd	ra,56(sp)
    8000374c:	02813823          	sd	s0,48(sp)
    80003750:	02913423          	sd	s1,40(sp)
    80003754:	03213023          	sd	s2,32(sp)
    80003758:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000375c:	02000513          	li	a0,32
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	210080e7          	jalr	528(ra) # 80001970 <_Znwm>
    80003768:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	458080e7          	jalr	1112(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003774:	00008797          	auipc	a5,0x8
    80003778:	d1c78793          	addi	a5,a5,-740 # 8000b490 <_ZTV7WorkerA+0x10>
    8000377c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003780:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	a3450513          	addi	a0,a0,-1484 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	a60080e7          	jalr	-1440(ra) # 800051ec <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003794:	02000513          	li	a0,32
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	1d8080e7          	jalr	472(ra) # 80001970 <_Znwm>
    800037a0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	420080e7          	jalr	1056(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    800037ac:	00008797          	auipc	a5,0x8
    800037b0:	d0c78793          	addi	a5,a5,-756 # 8000b4b8 <_ZTV7WorkerB+0x10>
    800037b4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037b8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037bc:	00006517          	auipc	a0,0x6
    800037c0:	a1450513          	addi	a0,a0,-1516 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800037c4:	00002097          	auipc	ra,0x2
    800037c8:	a28080e7          	jalr	-1496(ra) # 800051ec <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037cc:	02000513          	li	a0,32
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	1a0080e7          	jalr	416(ra) # 80001970 <_Znwm>
    800037d8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	3e8080e7          	jalr	1000(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    800037e4:	00008797          	auipc	a5,0x8
    800037e8:	cfc78793          	addi	a5,a5,-772 # 8000b4e0 <_ZTV7WorkerC+0x10>
    800037ec:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800037f0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800037f4:	00006517          	auipc	a0,0x6
    800037f8:	9f450513          	addi	a0,a0,-1548 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800037fc:	00002097          	auipc	ra,0x2
    80003800:	9f0080e7          	jalr	-1552(ra) # 800051ec <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003804:	02000513          	li	a0,32
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	168080e7          	jalr	360(ra) # 80001970 <_Znwm>
    80003810:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	3b0080e7          	jalr	944(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    8000381c:	00008797          	auipc	a5,0x8
    80003820:	cec78793          	addi	a5,a5,-788 # 8000b508 <_ZTV7WorkerD+0x10>
    80003824:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003828:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000382c:	00006517          	auipc	a0,0x6
    80003830:	9d450513          	addi	a0,a0,-1580 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003834:	00002097          	auipc	ra,0x2
    80003838:	9b8080e7          	jalr	-1608(ra) # 800051ec <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000383c:	00000493          	li	s1,0
    80003840:	00300793          	li	a5,3
    80003844:	0297c663          	blt	a5,s1,80003870 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003848:	00349793          	slli	a5,s1,0x3
    8000384c:	fe040713          	addi	a4,s0,-32
    80003850:	00f707b3          	add	a5,a4,a5
    80003854:	fe07b503          	ld	a0,-32(a5)
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	310080e7          	jalr	784(ra) # 80001b68 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003860:	0014849b          	addiw	s1,s1,1
    80003864:	fddff06f          	j	80003840 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	334080e7          	jalr	820(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003870:	00008797          	auipc	a5,0x8
    80003874:	e887c783          	lbu	a5,-376(a5) # 8000b6f8 <_ZL9finishedA>
    80003878:	fe0788e3          	beqz	a5,80003868 <_Z20Threads_CPP_API_testv+0x124>
    8000387c:	00008797          	auipc	a5,0x8
    80003880:	e7d7c783          	lbu	a5,-387(a5) # 8000b6f9 <_ZL9finishedB>
    80003884:	fe0782e3          	beqz	a5,80003868 <_Z20Threads_CPP_API_testv+0x124>
    80003888:	00008797          	auipc	a5,0x8
    8000388c:	e727c783          	lbu	a5,-398(a5) # 8000b6fa <_ZL9finishedC>
    80003890:	fc078ce3          	beqz	a5,80003868 <_Z20Threads_CPP_API_testv+0x124>
    80003894:	00008797          	auipc	a5,0x8
    80003898:	e677c783          	lbu	a5,-409(a5) # 8000b6fb <_ZL9finishedD>
    8000389c:	fc0786e3          	beqz	a5,80003868 <_Z20Threads_CPP_API_testv+0x124>
    800038a0:	fc040493          	addi	s1,s0,-64
    800038a4:	0080006f          	j	800038ac <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038a8:	00848493          	addi	s1,s1,8
    800038ac:	fe040793          	addi	a5,s0,-32
    800038b0:	08f48663          	beq	s1,a5,8000393c <_Z20Threads_CPP_API_testv+0x1f8>
    800038b4:	0004b503          	ld	a0,0(s1)
    800038b8:	fe0508e3          	beqz	a0,800038a8 <_Z20Threads_CPP_API_testv+0x164>
    800038bc:	00053783          	ld	a5,0(a0)
    800038c0:	0087b783          	ld	a5,8(a5)
    800038c4:	000780e7          	jalr	a5
    800038c8:	fe1ff06f          	j	800038a8 <_Z20Threads_CPP_API_testv+0x164>
    800038cc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800038d0:	00048513          	mv	a0,s1
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	0ec080e7          	jalr	236(ra) # 800019c0 <_ZdlPv>
    800038dc:	00090513          	mv	a0,s2
    800038e0:	00009097          	auipc	ra,0x9
    800038e4:	f28080e7          	jalr	-216(ra) # 8000c808 <_Unwind_Resume>
    800038e8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800038ec:	00048513          	mv	a0,s1
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	0d0080e7          	jalr	208(ra) # 800019c0 <_ZdlPv>
    800038f8:	00090513          	mv	a0,s2
    800038fc:	00009097          	auipc	ra,0x9
    80003900:	f0c080e7          	jalr	-244(ra) # 8000c808 <_Unwind_Resume>
    80003904:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003908:	00048513          	mv	a0,s1
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	0b4080e7          	jalr	180(ra) # 800019c0 <_ZdlPv>
    80003914:	00090513          	mv	a0,s2
    80003918:	00009097          	auipc	ra,0x9
    8000391c:	ef0080e7          	jalr	-272(ra) # 8000c808 <_Unwind_Resume>
    80003920:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003924:	00048513          	mv	a0,s1
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	098080e7          	jalr	152(ra) # 800019c0 <_ZdlPv>
    80003930:	00090513          	mv	a0,s2
    80003934:	00009097          	auipc	ra,0x9
    80003938:	ed4080e7          	jalr	-300(ra) # 8000c808 <_Unwind_Resume>
}
    8000393c:	03813083          	ld	ra,56(sp)
    80003940:	03013403          	ld	s0,48(sp)
    80003944:	02813483          	ld	s1,40(sp)
    80003948:	02013903          	ld	s2,32(sp)
    8000394c:	04010113          	addi	sp,sp,64
    80003950:	00008067          	ret

0000000080003954 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003954:	ff010113          	addi	sp,sp,-16
    80003958:	00113423          	sd	ra,8(sp)
    8000395c:	00813023          	sd	s0,0(sp)
    80003960:	01010413          	addi	s0,sp,16
    80003964:	00008797          	auipc	a5,0x8
    80003968:	b2c78793          	addi	a5,a5,-1236 # 8000b490 <_ZTV7WorkerA+0x10>
    8000396c:	00f53023          	sd	a5,0(a0)
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	0cc080e7          	jalr	204(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003978:	00813083          	ld	ra,8(sp)
    8000397c:	00013403          	ld	s0,0(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret

0000000080003988 <_ZN7WorkerAD0Ev>:
    80003988:	fe010113          	addi	sp,sp,-32
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00913423          	sd	s1,8(sp)
    80003998:	02010413          	addi	s0,sp,32
    8000399c:	00050493          	mv	s1,a0
    800039a0:	00008797          	auipc	a5,0x8
    800039a4:	af078793          	addi	a5,a5,-1296 # 8000b490 <_ZTV7WorkerA+0x10>
    800039a8:	00f53023          	sd	a5,0(a0)
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	090080e7          	jalr	144(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800039b4:	00048513          	mv	a0,s1
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	008080e7          	jalr	8(ra) # 800019c0 <_ZdlPv>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	00813023          	sd	s0,0(sp)
    800039e0:	01010413          	addi	s0,sp,16
    800039e4:	00008797          	auipc	a5,0x8
    800039e8:	ad478793          	addi	a5,a5,-1324 # 8000b4b8 <_ZTV7WorkerB+0x10>
    800039ec:	00f53023          	sd	a5,0(a0)
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	04c080e7          	jalr	76(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800039f8:	00813083          	ld	ra,8(sp)
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <_ZN7WorkerBD0Ev>:
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00113c23          	sd	ra,24(sp)
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    80003a20:	00008797          	auipc	a5,0x8
    80003a24:	a9878793          	addi	a5,a5,-1384 # 8000b4b8 <_ZTV7WorkerB+0x10>
    80003a28:	00f53023          	sd	a5,0(a0)
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	010080e7          	jalr	16(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003a34:	00048513          	mv	a0,s1
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	f88080e7          	jalr	-120(ra) # 800019c0 <_ZdlPv>
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00813483          	ld	s1,8(sp)
    80003a4c:	02010113          	addi	sp,sp,32
    80003a50:	00008067          	ret

0000000080003a54 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a54:	ff010113          	addi	sp,sp,-16
    80003a58:	00113423          	sd	ra,8(sp)
    80003a5c:	00813023          	sd	s0,0(sp)
    80003a60:	01010413          	addi	s0,sp,16
    80003a64:	00008797          	auipc	a5,0x8
    80003a68:	a7c78793          	addi	a5,a5,-1412 # 8000b4e0 <_ZTV7WorkerC+0x10>
    80003a6c:	00f53023          	sd	a5,0(a0)
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	fcc080e7          	jalr	-52(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003a78:	00813083          	ld	ra,8(sp)
    80003a7c:	00013403          	ld	s0,0(sp)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret

0000000080003a88 <_ZN7WorkerCD0Ev>:
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	02010413          	addi	s0,sp,32
    80003a9c:	00050493          	mv	s1,a0
    80003aa0:	00008797          	auipc	a5,0x8
    80003aa4:	a4078793          	addi	a5,a5,-1472 # 8000b4e0 <_ZTV7WorkerC+0x10>
    80003aa8:	00f53023          	sd	a5,0(a0)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	f90080e7          	jalr	-112(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	f08080e7          	jalr	-248(ra) # 800019c0 <_ZdlPv>
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	02010113          	addi	sp,sp,32
    80003ad0:	00008067          	ret

0000000080003ad4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    80003ae4:	00008797          	auipc	a5,0x8
    80003ae8:	a2478793          	addi	a5,a5,-1500 # 8000b508 <_ZTV7WorkerD+0x10>
    80003aec:	00f53023          	sd	a5,0(a0)
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	f4c080e7          	jalr	-180(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003af8:	00813083          	ld	ra,8(sp)
    80003afc:	00013403          	ld	s0,0(sp)
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	00008067          	ret

0000000080003b08 <_ZN7WorkerDD0Ev>:
    80003b08:	fe010113          	addi	sp,sp,-32
    80003b0c:	00113c23          	sd	ra,24(sp)
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	02010413          	addi	s0,sp,32
    80003b1c:	00050493          	mv	s1,a0
    80003b20:	00008797          	auipc	a5,0x8
    80003b24:	9e878793          	addi	a5,a5,-1560 # 8000b508 <_ZTV7WorkerD+0x10>
    80003b28:	00f53023          	sd	a5,0(a0)
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	f10080e7          	jalr	-240(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003b34:	00048513          	mv	a0,s1
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	e88080e7          	jalr	-376(ra) # 800019c0 <_ZdlPv>
    80003b40:	01813083          	ld	ra,24(sp)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	00813483          	ld	s1,8(sp)
    80003b4c:	02010113          	addi	sp,sp,32
    80003b50:	00008067          	ret

0000000080003b54 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b54:	ff010113          	addi	sp,sp,-16
    80003b58:	00113423          	sd	ra,8(sp)
    80003b5c:	00813023          	sd	s0,0(sp)
    80003b60:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b64:	00000593          	li	a1,0
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	774080e7          	jalr	1908(ra) # 800032dc <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b70:	00813083          	ld	ra,8(sp)
    80003b74:	00013403          	ld	s0,0(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00113423          	sd	ra,8(sp)
    80003b88:	00813023          	sd	s0,0(sp)
    80003b8c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003b90:	00000593          	li	a1,0
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	814080e7          	jalr	-2028(ra) # 800033a8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003b9c:	00813083          	ld	ra,8(sp)
    80003ba0:	00013403          	ld	s0,0(sp)
    80003ba4:	01010113          	addi	sp,sp,16
    80003ba8:	00008067          	ret

0000000080003bac <_ZN7WorkerC3runEv>:
    void run() override {
    80003bac:	ff010113          	addi	sp,sp,-16
    80003bb0:	00113423          	sd	ra,8(sp)
    80003bb4:	00813023          	sd	s0,0(sp)
    80003bb8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003bbc:	00000593          	li	a1,0
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	8bc080e7          	jalr	-1860(ra) # 8000347c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bc8:	00813083          	ld	ra,8(sp)
    80003bcc:	00013403          	ld	s0,0(sp)
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN7WorkerD3runEv>:
    void run() override {
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00113423          	sd	ra,8(sp)
    80003be0:	00813023          	sd	s0,0(sp)
    80003be4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003be8:	00000593          	li	a1,0
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	a10080e7          	jalr	-1520(ra) # 800035fc <_ZN7WorkerD11workerBodyDEPv>
    }
    80003bf4:	00813083          	ld	ra,8(sp)
    80003bf8:	00013403          	ld	s0,0(sp)
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret

0000000080003c04 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c04:	f8010113          	addi	sp,sp,-128
    80003c08:	06113c23          	sd	ra,120(sp)
    80003c0c:	06813823          	sd	s0,112(sp)
    80003c10:	06913423          	sd	s1,104(sp)
    80003c14:	07213023          	sd	s2,96(sp)
    80003c18:	05313c23          	sd	s3,88(sp)
    80003c1c:	05413823          	sd	s4,80(sp)
    80003c20:	05513423          	sd	s5,72(sp)
    80003c24:	05613023          	sd	s6,64(sp)
    80003c28:	03713c23          	sd	s7,56(sp)
    80003c2c:	03813823          	sd	s8,48(sp)
    80003c30:	03913423          	sd	s9,40(sp)
    80003c34:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c38:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c3c:	00005517          	auipc	a0,0x5
    80003c40:	3ec50513          	addi	a0,a0,1004 # 80009028 <CONSOLE_STATUS+0x18>
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	5a8080e7          	jalr	1448(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80003c4c:	01e00593          	li	a1,30
    80003c50:	f8040493          	addi	s1,s0,-128
    80003c54:	00048513          	mv	a0,s1
    80003c58:	00001097          	auipc	ra,0x1
    80003c5c:	61c080e7          	jalr	1564(ra) # 80005274 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c60:	00048513          	mv	a0,s1
    80003c64:	00001097          	auipc	ra,0x1
    80003c68:	6e8080e7          	jalr	1768(ra) # 8000534c <_Z11stringToIntPKc>
    80003c6c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c70:	00005517          	auipc	a0,0x5
    80003c74:	3d850513          	addi	a0,a0,984 # 80009048 <CONSOLE_STATUS+0x38>
    80003c78:	00001097          	auipc	ra,0x1
    80003c7c:	574080e7          	jalr	1396(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80003c80:	01e00593          	li	a1,30
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	5ec080e7          	jalr	1516(ra) # 80005274 <_Z9getStringPci>
    n = stringToInt(input);
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	6b8080e7          	jalr	1720(ra) # 8000534c <_Z11stringToIntPKc>
    80003c9c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	3c850513          	addi	a0,a0,968 # 80009068 <CONSOLE_STATUS+0x58>
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	544080e7          	jalr	1348(ra) # 800051ec <_Z11printStringPKc>
    printInt(threadNum);
    80003cb0:	00000613          	li	a2,0
    80003cb4:	00a00593          	li	a1,10
    80003cb8:	00098513          	mv	a0,s3
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	6e0080e7          	jalr	1760(ra) # 8000539c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003cc4:	00005517          	auipc	a0,0x5
    80003cc8:	3bc50513          	addi	a0,a0,956 # 80009080 <CONSOLE_STATUS+0x70>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	520080e7          	jalr	1312(ra) # 800051ec <_Z11printStringPKc>
    printInt(n);
    80003cd4:	00000613          	li	a2,0
    80003cd8:	00a00593          	li	a1,10
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	6bc080e7          	jalr	1724(ra) # 8000539c <_Z8printIntiii>
    printString(".\n");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	3b050513          	addi	a0,a0,944 # 80009098 <CONSOLE_STATUS+0x88>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	4fc080e7          	jalr	1276(ra) # 800051ec <_Z11printStringPKc>
    if (threadNum > n) {
    80003cf8:	0334c463          	blt	s1,s3,80003d20 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003cfc:	03305c63          	blez	s3,80003d34 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d00:	03800513          	li	a0,56
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	c6c080e7          	jalr	-916(ra) # 80001970 <_Znwm>
    80003d0c:	00050a93          	mv	s5,a0
    80003d10:	00048593          	mv	a1,s1
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	7a8080e7          	jalr	1960(ra) # 800054bc <_ZN9BufferCPPC1Ei>
    80003d1c:	0300006f          	j	80003d4c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d20:	00005517          	auipc	a0,0x5
    80003d24:	38050513          	addi	a0,a0,896 # 800090a0 <CONSOLE_STATUS+0x90>
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	4c4080e7          	jalr	1220(ra) # 800051ec <_Z11printStringPKc>
        return;
    80003d30:	0140006f          	j	80003d44 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d34:	00005517          	auipc	a0,0x5
    80003d38:	3ac50513          	addi	a0,a0,940 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	4b0080e7          	jalr	1200(ra) # 800051ec <_Z11printStringPKc>
        return;
    80003d44:	000c0113          	mv	sp,s8
    80003d48:	2140006f          	j	80003f5c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d4c:	01000513          	li	a0,16
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	c20080e7          	jalr	-992(ra) # 80001970 <_Znwm>
    80003d58:	00050913          	mv	s2,a0
    80003d5c:	00000593          	li	a1,0
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	ef0080e7          	jalr	-272(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80003d68:	00008797          	auipc	a5,0x8
    80003d6c:	9b27b023          	sd	s2,-1632(a5) # 8000b708 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d70:	00399793          	slli	a5,s3,0x3
    80003d74:	00f78793          	addi	a5,a5,15
    80003d78:	ff07f793          	andi	a5,a5,-16
    80003d7c:	40f10133          	sub	sp,sp,a5
    80003d80:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d84:	0019871b          	addiw	a4,s3,1
    80003d88:	00171793          	slli	a5,a4,0x1
    80003d8c:	00e787b3          	add	a5,a5,a4
    80003d90:	00379793          	slli	a5,a5,0x3
    80003d94:	00f78793          	addi	a5,a5,15
    80003d98:	ff07f793          	andi	a5,a5,-16
    80003d9c:	40f10133          	sub	sp,sp,a5
    80003da0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003da4:	00199493          	slli	s1,s3,0x1
    80003da8:	013484b3          	add	s1,s1,s3
    80003dac:	00349493          	slli	s1,s1,0x3
    80003db0:	009b04b3          	add	s1,s6,s1
    80003db4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003db8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003dbc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003dc0:	02800513          	li	a0,40
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	bac080e7          	jalr	-1108(ra) # 80001970 <_Znwm>
    80003dcc:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	df4080e7          	jalr	-524(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003dd8:	00007797          	auipc	a5,0x7
    80003ddc:	7a878793          	addi	a5,a5,1960 # 8000b580 <_ZTV8Consumer+0x10>
    80003de0:	00fbb023          	sd	a5,0(s7)
    80003de4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003de8:	000b8513          	mv	a0,s7
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	d7c080e7          	jalr	-644(ra) # 80001b68 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003df4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003df8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003dfc:	00008797          	auipc	a5,0x8
    80003e00:	90c7b783          	ld	a5,-1780(a5) # 8000b708 <_ZL10waitForAll>
    80003e04:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e08:	02800513          	li	a0,40
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	b64080e7          	jalr	-1180(ra) # 80001970 <_Znwm>
    80003e14:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	dac080e7          	jalr	-596(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003e20:	00007797          	auipc	a5,0x7
    80003e24:	71078793          	addi	a5,a5,1808 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    80003e28:	00f4b023          	sd	a5,0(s1)
    80003e2c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e30:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e34:	00048513          	mv	a0,s1
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	d30080e7          	jalr	-720(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e40:	00100913          	li	s2,1
    80003e44:	0300006f          	j	80003e74 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e48:	00007797          	auipc	a5,0x7
    80003e4c:	71078793          	addi	a5,a5,1808 # 8000b558 <_ZTV8Producer+0x10>
    80003e50:	00fcb023          	sd	a5,0(s9)
    80003e54:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e58:	00391793          	slli	a5,s2,0x3
    80003e5c:	00fa07b3          	add	a5,s4,a5
    80003e60:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e64:	000c8513          	mv	a0,s9
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	d00080e7          	jalr	-768(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e70:	0019091b          	addiw	s2,s2,1
    80003e74:	05395263          	bge	s2,s3,80003eb8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e78:	00191493          	slli	s1,s2,0x1
    80003e7c:	012484b3          	add	s1,s1,s2
    80003e80:	00349493          	slli	s1,s1,0x3
    80003e84:	009b04b3          	add	s1,s6,s1
    80003e88:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003e8c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003e90:	00008797          	auipc	a5,0x8
    80003e94:	8787b783          	ld	a5,-1928(a5) # 8000b708 <_ZL10waitForAll>
    80003e98:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003e9c:	02800513          	li	a0,40
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	ad0080e7          	jalr	-1328(ra) # 80001970 <_Znwm>
    80003ea8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	d18080e7          	jalr	-744(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003eb4:	f95ff06f          	j	80003e48 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	ce4080e7          	jalr	-796(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ec0:	00000493          	li	s1,0
    80003ec4:	0099ce63          	blt	s3,s1,80003ee0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ec8:	00008517          	auipc	a0,0x8
    80003ecc:	84053503          	ld	a0,-1984(a0) # 8000b708 <_ZL10waitForAll>
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	dbc080e7          	jalr	-580(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ed8:	0014849b          	addiw	s1,s1,1
    80003edc:	fe9ff06f          	j	80003ec4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ee0:	00008517          	auipc	a0,0x8
    80003ee4:	82853503          	ld	a0,-2008(a0) # 8000b708 <_ZL10waitForAll>
    80003ee8:	00050863          	beqz	a0,80003ef8 <_Z20testConsumerProducerv+0x2f4>
    80003eec:	00053783          	ld	a5,0(a0)
    80003ef0:	0087b783          	ld	a5,8(a5)
    80003ef4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003ef8:	00000493          	li	s1,0
    80003efc:	0080006f          	j	80003f04 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f00:	0014849b          	addiw	s1,s1,1
    80003f04:	0334d263          	bge	s1,s3,80003f28 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f08:	00349793          	slli	a5,s1,0x3
    80003f0c:	00fa07b3          	add	a5,s4,a5
    80003f10:	0007b503          	ld	a0,0(a5)
    80003f14:	fe0506e3          	beqz	a0,80003f00 <_Z20testConsumerProducerv+0x2fc>
    80003f18:	00053783          	ld	a5,0(a0)
    80003f1c:	0087b783          	ld	a5,8(a5)
    80003f20:	000780e7          	jalr	a5
    80003f24:	fddff06f          	j	80003f00 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f28:	000b8a63          	beqz	s7,80003f3c <_Z20testConsumerProducerv+0x338>
    80003f2c:	000bb783          	ld	a5,0(s7)
    80003f30:	0087b783          	ld	a5,8(a5)
    80003f34:	000b8513          	mv	a0,s7
    80003f38:	000780e7          	jalr	a5
    delete buffer;
    80003f3c:	000a8e63          	beqz	s5,80003f58 <_Z20testConsumerProducerv+0x354>
    80003f40:	000a8513          	mv	a0,s5
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	870080e7          	jalr	-1936(ra) # 800057b4 <_ZN9BufferCPPD1Ev>
    80003f4c:	000a8513          	mv	a0,s5
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	a70080e7          	jalr	-1424(ra) # 800019c0 <_ZdlPv>
    80003f58:	000c0113          	mv	sp,s8
}
    80003f5c:	f8040113          	addi	sp,s0,-128
    80003f60:	07813083          	ld	ra,120(sp)
    80003f64:	07013403          	ld	s0,112(sp)
    80003f68:	06813483          	ld	s1,104(sp)
    80003f6c:	06013903          	ld	s2,96(sp)
    80003f70:	05813983          	ld	s3,88(sp)
    80003f74:	05013a03          	ld	s4,80(sp)
    80003f78:	04813a83          	ld	s5,72(sp)
    80003f7c:	04013b03          	ld	s6,64(sp)
    80003f80:	03813b83          	ld	s7,56(sp)
    80003f84:	03013c03          	ld	s8,48(sp)
    80003f88:	02813c83          	ld	s9,40(sp)
    80003f8c:	08010113          	addi	sp,sp,128
    80003f90:	00008067          	ret
    80003f94:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f98:	000a8513          	mv	a0,s5
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	a24080e7          	jalr	-1500(ra) # 800019c0 <_ZdlPv>
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00009097          	auipc	ra,0x9
    80003fac:	860080e7          	jalr	-1952(ra) # 8000c808 <_Unwind_Resume>
    80003fb0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fb4:	00090513          	mv	a0,s2
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	a08080e7          	jalr	-1528(ra) # 800019c0 <_ZdlPv>
    80003fc0:	00048513          	mv	a0,s1
    80003fc4:	00009097          	auipc	ra,0x9
    80003fc8:	844080e7          	jalr	-1980(ra) # 8000c808 <_Unwind_Resume>
    80003fcc:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003fd0:	000b8513          	mv	a0,s7
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	9ec080e7          	jalr	-1556(ra) # 800019c0 <_ZdlPv>
    80003fdc:	00048513          	mv	a0,s1
    80003fe0:	00009097          	auipc	ra,0x9
    80003fe4:	828080e7          	jalr	-2008(ra) # 8000c808 <_Unwind_Resume>
    80003fe8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	9d0080e7          	jalr	-1584(ra) # 800019c0 <_ZdlPv>
    80003ff8:	00090513          	mv	a0,s2
    80003ffc:	00009097          	auipc	ra,0x9
    80004000:	80c080e7          	jalr	-2036(ra) # 8000c808 <_Unwind_Resume>
    80004004:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004008:	000c8513          	mv	a0,s9
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	9b4080e7          	jalr	-1612(ra) # 800019c0 <_ZdlPv>
    80004014:	00048513          	mv	a0,s1
    80004018:	00008097          	auipc	ra,0x8
    8000401c:	7f0080e7          	jalr	2032(ra) # 8000c808 <_Unwind_Resume>

0000000080004020 <_ZN8Consumer3runEv>:
    void run() override {
    80004020:	fd010113          	addi	sp,sp,-48
    80004024:	02113423          	sd	ra,40(sp)
    80004028:	02813023          	sd	s0,32(sp)
    8000402c:	00913c23          	sd	s1,24(sp)
    80004030:	01213823          	sd	s2,16(sp)
    80004034:	01313423          	sd	s3,8(sp)
    80004038:	03010413          	addi	s0,sp,48
    8000403c:	00050913          	mv	s2,a0
        int i = 0;
    80004040:	00000993          	li	s3,0
    80004044:	0100006f          	j	80004054 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004048:	00a00513          	li	a0,10
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	d18080e7          	jalr	-744(ra) # 80001d64 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004054:	00007797          	auipc	a5,0x7
    80004058:	6ac7a783          	lw	a5,1708(a5) # 8000b700 <_ZL9threadEnd>
    8000405c:	04079a63          	bnez	a5,800040b0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004060:	02093783          	ld	a5,32(s2)
    80004064:	0087b503          	ld	a0,8(a5)
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	638080e7          	jalr	1592(ra) # 800056a0 <_ZN9BufferCPP3getEv>
            i++;
    80004070:	0019849b          	addiw	s1,s3,1
    80004074:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004078:	0ff57513          	andi	a0,a0,255
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	ce8080e7          	jalr	-792(ra) # 80001d64 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004084:	05000793          	li	a5,80
    80004088:	02f4e4bb          	remw	s1,s1,a5
    8000408c:	fc0494e3          	bnez	s1,80004054 <_ZN8Consumer3runEv+0x34>
    80004090:	fb9ff06f          	j	80004048 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004094:	02093783          	ld	a5,32(s2)
    80004098:	0087b503          	ld	a0,8(a5)
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	604080e7          	jalr	1540(ra) # 800056a0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040a4:	0ff57513          	andi	a0,a0,255
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	cbc080e7          	jalr	-836(ra) # 80001d64 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040b0:	02093783          	ld	a5,32(s2)
    800040b4:	0087b503          	ld	a0,8(a5)
    800040b8:	00001097          	auipc	ra,0x1
    800040bc:	674080e7          	jalr	1652(ra) # 8000572c <_ZN9BufferCPP6getCntEv>
    800040c0:	fca04ae3          	bgtz	a0,80004094 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040c4:	02093783          	ld	a5,32(s2)
    800040c8:	0107b503          	ld	a0,16(a5)
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	bec080e7          	jalr	-1044(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    800040d4:	02813083          	ld	ra,40(sp)
    800040d8:	02013403          	ld	s0,32(sp)
    800040dc:	01813483          	ld	s1,24(sp)
    800040e0:	01013903          	ld	s2,16(sp)
    800040e4:	00813983          	ld	s3,8(sp)
    800040e8:	03010113          	addi	sp,sp,48
    800040ec:	00008067          	ret

00000000800040f0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800040f0:	ff010113          	addi	sp,sp,-16
    800040f4:	00113423          	sd	ra,8(sp)
    800040f8:	00813023          	sd	s0,0(sp)
    800040fc:	01010413          	addi	s0,sp,16
    80004100:	00007797          	auipc	a5,0x7
    80004104:	48078793          	addi	a5,a5,1152 # 8000b580 <_ZTV8Consumer+0x10>
    80004108:	00f53023          	sd	a5,0(a0)
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	930080e7          	jalr	-1744(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN8ConsumerD0Ev>:
    80004124:	fe010113          	addi	sp,sp,-32
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	00813823          	sd	s0,16(sp)
    80004130:	00913423          	sd	s1,8(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	00050493          	mv	s1,a0
    8000413c:	00007797          	auipc	a5,0x7
    80004140:	44478793          	addi	a5,a5,1092 # 8000b580 <_ZTV8Consumer+0x10>
    80004144:	00f53023          	sd	a5,0(a0)
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	8f4080e7          	jalr	-1804(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004150:	00048513          	mv	a0,s1
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	86c080e7          	jalr	-1940(ra) # 800019c0 <_ZdlPv>
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret

0000000080004170 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004170:	ff010113          	addi	sp,sp,-16
    80004174:	00113423          	sd	ra,8(sp)
    80004178:	00813023          	sd	s0,0(sp)
    8000417c:	01010413          	addi	s0,sp,16
    80004180:	00007797          	auipc	a5,0x7
    80004184:	3b078793          	addi	a5,a5,944 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    80004188:	00f53023          	sd	a5,0(a0)
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	8b0080e7          	jalr	-1872(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN16ProducerKeyboradD0Ev>:
    800041a4:	fe010113          	addi	sp,sp,-32
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	00813823          	sd	s0,16(sp)
    800041b0:	00913423          	sd	s1,8(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050493          	mv	s1,a0
    800041bc:	00007797          	auipc	a5,0x7
    800041c0:	37478793          	addi	a5,a5,884 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    800041c4:	00f53023          	sd	a5,0(a0)
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	874080e7          	jalr	-1932(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800041d0:	00048513          	mv	a0,s1
    800041d4:	ffffd097          	auipc	ra,0xffffd
    800041d8:	7ec080e7          	jalr	2028(ra) # 800019c0 <_ZdlPv>
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret

00000000800041f0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800041f0:	ff010113          	addi	sp,sp,-16
    800041f4:	00113423          	sd	ra,8(sp)
    800041f8:	00813023          	sd	s0,0(sp)
    800041fc:	01010413          	addi	s0,sp,16
    80004200:	00007797          	auipc	a5,0x7
    80004204:	35878793          	addi	a5,a5,856 # 8000b558 <_ZTV8Producer+0x10>
    80004208:	00f53023          	sd	a5,0(a0)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	830080e7          	jalr	-2000(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN8ProducerD0Ev>:
    80004224:	fe010113          	addi	sp,sp,-32
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00913423          	sd	s1,8(sp)
    80004234:	02010413          	addi	s0,sp,32
    80004238:	00050493          	mv	s1,a0
    8000423c:	00007797          	auipc	a5,0x7
    80004240:	31c78793          	addi	a5,a5,796 # 8000b558 <_ZTV8Producer+0x10>
    80004244:	00f53023          	sd	a5,0(a0)
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	7f4080e7          	jalr	2036(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004250:	00048513          	mv	a0,s1
    80004254:	ffffd097          	auipc	ra,0xffffd
    80004258:	76c080e7          	jalr	1900(ra) # 800019c0 <_ZdlPv>
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	01013403          	ld	s0,16(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004270:	fe010113          	addi	sp,sp,-32
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	00813823          	sd	s0,16(sp)
    8000427c:	00913423          	sd	s1,8(sp)
    80004280:	02010413          	addi	s0,sp,32
    80004284:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	458080e7          	jalr	1112(ra) # 800016e0 <_Z4getcv>
    80004290:	0005059b          	sext.w	a1,a0
    80004294:	01b00793          	li	a5,27
    80004298:	00f58c63          	beq	a1,a5,800042b0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000429c:	0204b783          	ld	a5,32(s1)
    800042a0:	0087b503          	ld	a0,8(a5)
    800042a4:	00001097          	auipc	ra,0x1
    800042a8:	36c080e7          	jalr	876(ra) # 80005610 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042ac:	fddff06f          	j	80004288 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042b0:	00100793          	li	a5,1
    800042b4:	00007717          	auipc	a4,0x7
    800042b8:	44f72623          	sw	a5,1100(a4) # 8000b700 <_ZL9threadEnd>
        td->buffer->put('!');
    800042bc:	0204b783          	ld	a5,32(s1)
    800042c0:	02100593          	li	a1,33
    800042c4:	0087b503          	ld	a0,8(a5)
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	348080e7          	jalr	840(ra) # 80005610 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800042d0:	0204b783          	ld	a5,32(s1)
    800042d4:	0107b503          	ld	a0,16(a5)
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	9e0080e7          	jalr	-1568(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret

00000000800042f4 <_ZN8Producer3runEv>:
    void run() override {
    800042f4:	fe010113          	addi	sp,sp,-32
    800042f8:	00113c23          	sd	ra,24(sp)
    800042fc:	00813823          	sd	s0,16(sp)
    80004300:	00913423          	sd	s1,8(sp)
    80004304:	01213023          	sd	s2,0(sp)
    80004308:	02010413          	addi	s0,sp,32
    8000430c:	00050493          	mv	s1,a0
        int i = 0;
    80004310:	00000913          	li	s2,0
        while (!threadEnd) {
    80004314:	00007797          	auipc	a5,0x7
    80004318:	3ec7a783          	lw	a5,1004(a5) # 8000b700 <_ZL9threadEnd>
    8000431c:	04079263          	bnez	a5,80004360 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004320:	0204b783          	ld	a5,32(s1)
    80004324:	0007a583          	lw	a1,0(a5)
    80004328:	0305859b          	addiw	a1,a1,48
    8000432c:	0087b503          	ld	a0,8(a5)
    80004330:	00001097          	auipc	ra,0x1
    80004334:	2e0080e7          	jalr	736(ra) # 80005610 <_ZN9BufferCPP3putEi>
            i++;
    80004338:	0019071b          	addiw	a4,s2,1
    8000433c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004340:	0204b783          	ld	a5,32(s1)
    80004344:	0007a783          	lw	a5,0(a5)
    80004348:	00e787bb          	addw	a5,a5,a4
    8000434c:	00500513          	li	a0,5
    80004350:	02a7e53b          	remw	a0,a5,a0
    80004354:	ffffe097          	auipc	ra,0xffffe
    80004358:	8d4080e7          	jalr	-1836(ra) # 80001c28 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000435c:	fb9ff06f          	j	80004314 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004360:	0204b783          	ld	a5,32(s1)
    80004364:	0107b503          	ld	a0,16(a5)
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	950080e7          	jalr	-1712(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	00013903          	ld	s2,0(sp)
    80004380:	02010113          	addi	sp,sp,32
    80004384:	00008067          	ret

0000000080004388 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004388:	fe010113          	addi	sp,sp,-32
    8000438c:	00113c23          	sd	ra,24(sp)
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	01213023          	sd	s2,0(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043a4:	00100793          	li	a5,1
    800043a8:	02a7f863          	bgeu	a5,a0,800043d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043ac:	00a00793          	li	a5,10
    800043b0:	02f577b3          	remu	a5,a0,a5
    800043b4:	02078e63          	beqz	a5,800043f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043b8:	fff48513          	addi	a0,s1,-1
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	fcc080e7          	jalr	-52(ra) # 80004388 <_ZL9fibonaccim>
    800043c4:	00050913          	mv	s2,a0
    800043c8:	ffe48513          	addi	a0,s1,-2
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	fbc080e7          	jalr	-68(ra) # 80004388 <_ZL9fibonaccim>
    800043d4:	00a90533          	add	a0,s2,a0
}
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	16c080e7          	jalr	364(ra) # 8000155c <_Z15thread_dispatchv>
    800043f8:	fc1ff06f          	j	800043b8 <_ZL9fibonaccim+0x30>

00000000800043fc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00113c23          	sd	ra,24(sp)
    80004404:	00813823          	sd	s0,16(sp)
    80004408:	00913423          	sd	s1,8(sp)
    8000440c:	01213023          	sd	s2,0(sp)
    80004410:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004414:	00a00493          	li	s1,10
    80004418:	0400006f          	j	80004458 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000441c:	00005517          	auipc	a0,0x5
    80004420:	d6450513          	addi	a0,a0,-668 # 80009180 <CONSOLE_STATUS+0x170>
    80004424:	00001097          	auipc	ra,0x1
    80004428:	dc8080e7          	jalr	-568(ra) # 800051ec <_Z11printStringPKc>
    8000442c:	00000613          	li	a2,0
    80004430:	00a00593          	li	a1,10
    80004434:	00048513          	mv	a0,s1
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	f64080e7          	jalr	-156(ra) # 8000539c <_Z8printIntiii>
    80004440:	00005517          	auipc	a0,0x5
    80004444:	f3050513          	addi	a0,a0,-208 # 80009370 <CONSOLE_STATUS+0x360>
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	da4080e7          	jalr	-604(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004450:	0014849b          	addiw	s1,s1,1
    80004454:	0ff4f493          	andi	s1,s1,255
    80004458:	00c00793          	li	a5,12
    8000445c:	fc97f0e3          	bgeu	a5,s1,8000441c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	d2850513          	addi	a0,a0,-728 # 80009188 <CONSOLE_STATUS+0x178>
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	d84080e7          	jalr	-636(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004470:	00500313          	li	t1,5
    thread_dispatch();
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	0e8080e7          	jalr	232(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000447c:	01000513          	li	a0,16
    80004480:	00000097          	auipc	ra,0x0
    80004484:	f08080e7          	jalr	-248(ra) # 80004388 <_ZL9fibonaccim>
    80004488:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	d0c50513          	addi	a0,a0,-756 # 80009198 <CONSOLE_STATUS+0x188>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	d58080e7          	jalr	-680(ra) # 800051ec <_Z11printStringPKc>
    8000449c:	00000613          	li	a2,0
    800044a0:	00a00593          	li	a1,10
    800044a4:	0009051b          	sext.w	a0,s2
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	ef4080e7          	jalr	-268(ra) # 8000539c <_Z8printIntiii>
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	ec050513          	addi	a0,a0,-320 # 80009370 <CONSOLE_STATUS+0x360>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	d34080e7          	jalr	-716(ra) # 800051ec <_Z11printStringPKc>
    800044c0:	0400006f          	j	80004500 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	cbc50513          	addi	a0,a0,-836 # 80009180 <CONSOLE_STATUS+0x170>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	d20080e7          	jalr	-736(ra) # 800051ec <_Z11printStringPKc>
    800044d4:	00000613          	li	a2,0
    800044d8:	00a00593          	li	a1,10
    800044dc:	00048513          	mv	a0,s1
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	ebc080e7          	jalr	-324(ra) # 8000539c <_Z8printIntiii>
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	e8850513          	addi	a0,a0,-376 # 80009370 <CONSOLE_STATUS+0x360>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	cfc080e7          	jalr	-772(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    800044f8:	0014849b          	addiw	s1,s1,1
    800044fc:	0ff4f493          	andi	s1,s1,255
    80004500:	00f00793          	li	a5,15
    80004504:	fc97f0e3          	bgeu	a5,s1,800044c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004508:	00005517          	auipc	a0,0x5
    8000450c:	ca050513          	addi	a0,a0,-864 # 800091a8 <CONSOLE_STATUS+0x198>
    80004510:	00001097          	auipc	ra,0x1
    80004514:	cdc080e7          	jalr	-804(ra) # 800051ec <_Z11printStringPKc>
    finishedD = true;
    80004518:	00100793          	li	a5,1
    8000451c:	00007717          	auipc	a4,0x7
    80004520:	1ef70a23          	sb	a5,500(a4) # 8000b710 <_ZL9finishedD>
    thread_dispatch();
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	038080e7          	jalr	56(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000452c:	01813083          	ld	ra,24(sp)
    80004530:	01013403          	ld	s0,16(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	00013903          	ld	s2,0(sp)
    8000453c:	02010113          	addi	sp,sp,32
    80004540:	00008067          	ret

0000000080004544 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004544:	fe010113          	addi	sp,sp,-32
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	00813823          	sd	s0,16(sp)
    80004550:	00913423          	sd	s1,8(sp)
    80004554:	01213023          	sd	s2,0(sp)
    80004558:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000455c:	00000493          	li	s1,0
    80004560:	0400006f          	j	800045a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	bdc50513          	addi	a0,a0,-1060 # 80009140 <CONSOLE_STATUS+0x130>
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	c80080e7          	jalr	-896(ra) # 800051ec <_Z11printStringPKc>
    80004574:	00000613          	li	a2,0
    80004578:	00a00593          	li	a1,10
    8000457c:	00048513          	mv	a0,s1
    80004580:	00001097          	auipc	ra,0x1
    80004584:	e1c080e7          	jalr	-484(ra) # 8000539c <_Z8printIntiii>
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	de850513          	addi	a0,a0,-536 # 80009370 <CONSOLE_STATUS+0x360>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	c5c080e7          	jalr	-932(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004598:	0014849b          	addiw	s1,s1,1
    8000459c:	0ff4f493          	andi	s1,s1,255
    800045a0:	00200793          	li	a5,2
    800045a4:	fc97f0e3          	bgeu	a5,s1,80004564 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045a8:	00005517          	auipc	a0,0x5
    800045ac:	ba050513          	addi	a0,a0,-1120 # 80009148 <CONSOLE_STATUS+0x138>
    800045b0:	00001097          	auipc	ra,0x1
    800045b4:	c3c080e7          	jalr	-964(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045b8:	00700313          	li	t1,7
    thread_dispatch();
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	fa0080e7          	jalr	-96(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045c8:	00005517          	auipc	a0,0x5
    800045cc:	b9050513          	addi	a0,a0,-1136 # 80009158 <CONSOLE_STATUS+0x148>
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	c1c080e7          	jalr	-996(ra) # 800051ec <_Z11printStringPKc>
    800045d8:	00000613          	li	a2,0
    800045dc:	00a00593          	li	a1,10
    800045e0:	0009051b          	sext.w	a0,s2
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	db8080e7          	jalr	-584(ra) # 8000539c <_Z8printIntiii>
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	d8450513          	addi	a0,a0,-636 # 80009370 <CONSOLE_STATUS+0x360>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	bf8080e7          	jalr	-1032(ra) # 800051ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800045fc:	00c00513          	li	a0,12
    80004600:	00000097          	auipc	ra,0x0
    80004604:	d88080e7          	jalr	-632(ra) # 80004388 <_ZL9fibonaccim>
    80004608:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	b5450513          	addi	a0,a0,-1196 # 80009160 <CONSOLE_STATUS+0x150>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	bd8080e7          	jalr	-1064(ra) # 800051ec <_Z11printStringPKc>
    8000461c:	00000613          	li	a2,0
    80004620:	00a00593          	li	a1,10
    80004624:	0009051b          	sext.w	a0,s2
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	d74080e7          	jalr	-652(ra) # 8000539c <_Z8printIntiii>
    80004630:	00005517          	auipc	a0,0x5
    80004634:	d4050513          	addi	a0,a0,-704 # 80009370 <CONSOLE_STATUS+0x360>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	bb4080e7          	jalr	-1100(ra) # 800051ec <_Z11printStringPKc>
    80004640:	0400006f          	j	80004680 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004644:	00005517          	auipc	a0,0x5
    80004648:	afc50513          	addi	a0,a0,-1284 # 80009140 <CONSOLE_STATUS+0x130>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	ba0080e7          	jalr	-1120(ra) # 800051ec <_Z11printStringPKc>
    80004654:	00000613          	li	a2,0
    80004658:	00a00593          	li	a1,10
    8000465c:	00048513          	mv	a0,s1
    80004660:	00001097          	auipc	ra,0x1
    80004664:	d3c080e7          	jalr	-708(ra) # 8000539c <_Z8printIntiii>
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	d0850513          	addi	a0,a0,-760 # 80009370 <CONSOLE_STATUS+0x360>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	b7c080e7          	jalr	-1156(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004678:	0014849b          	addiw	s1,s1,1
    8000467c:	0ff4f493          	andi	s1,s1,255
    80004680:	00500793          	li	a5,5
    80004684:	fc97f0e3          	bgeu	a5,s1,80004644 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004688:	00005517          	auipc	a0,0x5
    8000468c:	a9050513          	addi	a0,a0,-1392 # 80009118 <CONSOLE_STATUS+0x108>
    80004690:	00001097          	auipc	ra,0x1
    80004694:	b5c080e7          	jalr	-1188(ra) # 800051ec <_Z11printStringPKc>
    finishedC = true;
    80004698:	00100793          	li	a5,1
    8000469c:	00007717          	auipc	a4,0x7
    800046a0:	06f70aa3          	sb	a5,117(a4) # 8000b711 <_ZL9finishedC>
    thread_dispatch();
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	eb8080e7          	jalr	-328(ra) # 8000155c <_Z15thread_dispatchv>
}
    800046ac:	01813083          	ld	ra,24(sp)
    800046b0:	01013403          	ld	s0,16(sp)
    800046b4:	00813483          	ld	s1,8(sp)
    800046b8:	00013903          	ld	s2,0(sp)
    800046bc:	02010113          	addi	sp,sp,32
    800046c0:	00008067          	ret

00000000800046c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046c4:	fe010113          	addi	sp,sp,-32
    800046c8:	00113c23          	sd	ra,24(sp)
    800046cc:	00813823          	sd	s0,16(sp)
    800046d0:	00913423          	sd	s1,8(sp)
    800046d4:	01213023          	sd	s2,0(sp)
    800046d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800046dc:	00000913          	li	s2,0
    800046e0:	0380006f          	j	80004718 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800046e4:	ffffd097          	auipc	ra,0xffffd
    800046e8:	e78080e7          	jalr	-392(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046ec:	00148493          	addi	s1,s1,1
    800046f0:	000027b7          	lui	a5,0x2
    800046f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046f8:	0097ee63          	bltu	a5,s1,80004714 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046fc:	00000713          	li	a4,0
    80004700:	000077b7          	lui	a5,0x7
    80004704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004708:	fce7eee3          	bltu	a5,a4,800046e4 <_ZL11workerBodyBPv+0x20>
    8000470c:	00170713          	addi	a4,a4,1
    80004710:	ff1ff06f          	j	80004700 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004714:	00190913          	addi	s2,s2,1
    80004718:	00f00793          	li	a5,15
    8000471c:	0527e063          	bltu	a5,s2,8000475c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004720:	00005517          	auipc	a0,0x5
    80004724:	a0850513          	addi	a0,a0,-1528 # 80009128 <CONSOLE_STATUS+0x118>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	ac4080e7          	jalr	-1340(ra) # 800051ec <_Z11printStringPKc>
    80004730:	00000613          	li	a2,0
    80004734:	00a00593          	li	a1,10
    80004738:	0009051b          	sext.w	a0,s2
    8000473c:	00001097          	auipc	ra,0x1
    80004740:	c60080e7          	jalr	-928(ra) # 8000539c <_Z8printIntiii>
    80004744:	00005517          	auipc	a0,0x5
    80004748:	c2c50513          	addi	a0,a0,-980 # 80009370 <CONSOLE_STATUS+0x360>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	aa0080e7          	jalr	-1376(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004754:	00000493          	li	s1,0
    80004758:	f99ff06f          	j	800046f0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	9d450513          	addi	a0,a0,-1580 # 80009130 <CONSOLE_STATUS+0x120>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	a88080e7          	jalr	-1400(ra) # 800051ec <_Z11printStringPKc>
    finishedB = true;
    8000476c:	00100793          	li	a5,1
    80004770:	00007717          	auipc	a4,0x7
    80004774:	faf70123          	sb	a5,-94(a4) # 8000b712 <_ZL9finishedB>
    thread_dispatch();
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	de4080e7          	jalr	-540(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004780:	01813083          	ld	ra,24(sp)
    80004784:	01013403          	ld	s0,16(sp)
    80004788:	00813483          	ld	s1,8(sp)
    8000478c:	00013903          	ld	s2,0(sp)
    80004790:	02010113          	addi	sp,sp,32
    80004794:	00008067          	ret

0000000080004798 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004798:	fe010113          	addi	sp,sp,-32
    8000479c:	00113c23          	sd	ra,24(sp)
    800047a0:	00813823          	sd	s0,16(sp)
    800047a4:	00913423          	sd	s1,8(sp)
    800047a8:	01213023          	sd	s2,0(sp)
    800047ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047b0:	00000913          	li	s2,0
    800047b4:	0380006f          	j	800047ec <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	da4080e7          	jalr	-604(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047c0:	00148493          	addi	s1,s1,1
    800047c4:	000027b7          	lui	a5,0x2
    800047c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047cc:	0097ee63          	bltu	a5,s1,800047e8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047d0:	00000713          	li	a4,0
    800047d4:	000077b7          	lui	a5,0x7
    800047d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047dc:	fce7eee3          	bltu	a5,a4,800047b8 <_ZL11workerBodyAPv+0x20>
    800047e0:	00170713          	addi	a4,a4,1
    800047e4:	ff1ff06f          	j	800047d4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047e8:	00190913          	addi	s2,s2,1
    800047ec:	00900793          	li	a5,9
    800047f0:	0527e063          	bltu	a5,s2,80004830 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047f4:	00005517          	auipc	a0,0x5
    800047f8:	91c50513          	addi	a0,a0,-1764 # 80009110 <CONSOLE_STATUS+0x100>
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	9f0080e7          	jalr	-1552(ra) # 800051ec <_Z11printStringPKc>
    80004804:	00000613          	li	a2,0
    80004808:	00a00593          	li	a1,10
    8000480c:	0009051b          	sext.w	a0,s2
    80004810:	00001097          	auipc	ra,0x1
    80004814:	b8c080e7          	jalr	-1140(ra) # 8000539c <_Z8printIntiii>
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	b5850513          	addi	a0,a0,-1192 # 80009370 <CONSOLE_STATUS+0x360>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	9cc080e7          	jalr	-1588(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004828:	00000493          	li	s1,0
    8000482c:	f99ff06f          	j	800047c4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004830:	00005517          	auipc	a0,0x5
    80004834:	8e850513          	addi	a0,a0,-1816 # 80009118 <CONSOLE_STATUS+0x108>
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	9b4080e7          	jalr	-1612(ra) # 800051ec <_Z11printStringPKc>
    finishedA = true;
    80004840:	00100793          	li	a5,1
    80004844:	00007717          	auipc	a4,0x7
    80004848:	ecf707a3          	sb	a5,-305(a4) # 8000b713 <_ZL9finishedA>
}
    8000484c:	01813083          	ld	ra,24(sp)
    80004850:	01013403          	ld	s0,16(sp)
    80004854:	00813483          	ld	s1,8(sp)
    80004858:	00013903          	ld	s2,0(sp)
    8000485c:	02010113          	addi	sp,sp,32
    80004860:	00008067          	ret

0000000080004864 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004864:	fd010113          	addi	sp,sp,-48
    80004868:	02113423          	sd	ra,40(sp)
    8000486c:	02813023          	sd	s0,32(sp)
    80004870:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004874:	00000613          	li	a2,0
    80004878:	00000597          	auipc	a1,0x0
    8000487c:	f2058593          	addi	a1,a1,-224 # 80004798 <_ZL11workerBodyAPv>
    80004880:	fd040513          	addi	a0,s0,-48
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	bb0080e7          	jalr	-1104(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000488c:	00005517          	auipc	a0,0x5
    80004890:	92c50513          	addi	a0,a0,-1748 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004894:	00001097          	auipc	ra,0x1
    80004898:	958080e7          	jalr	-1704(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000489c:	00000613          	li	a2,0
    800048a0:	00000597          	auipc	a1,0x0
    800048a4:	e2458593          	addi	a1,a1,-476 # 800046c4 <_ZL11workerBodyBPv>
    800048a8:	fd840513          	addi	a0,s0,-40
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	b88080e7          	jalr	-1144(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	91c50513          	addi	a0,a0,-1764 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	930080e7          	jalr	-1744(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048c4:	00000613          	li	a2,0
    800048c8:	00000597          	auipc	a1,0x0
    800048cc:	c7c58593          	addi	a1,a1,-900 # 80004544 <_ZL11workerBodyCPv>
    800048d0:	fe040513          	addi	a0,s0,-32
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	b60080e7          	jalr	-1184(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	90c50513          	addi	a0,a0,-1780 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	908080e7          	jalr	-1784(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800048ec:	00000613          	li	a2,0
    800048f0:	00000597          	auipc	a1,0x0
    800048f4:	b0c58593          	addi	a1,a1,-1268 # 800043fc <_ZL11workerBodyDPv>
    800048f8:	fe840513          	addi	a0,s0,-24
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	b38080e7          	jalr	-1224(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004904:	00005517          	auipc	a0,0x5
    80004908:	8fc50513          	addi	a0,a0,-1796 # 80009200 <CONSOLE_STATUS+0x1f0>
    8000490c:	00001097          	auipc	ra,0x1
    80004910:	8e0080e7          	jalr	-1824(ra) # 800051ec <_Z11printStringPKc>
    80004914:	00c0006f          	j	80004920 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	c44080e7          	jalr	-956(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004920:	00007797          	auipc	a5,0x7
    80004924:	df37c783          	lbu	a5,-525(a5) # 8000b713 <_ZL9finishedA>
    80004928:	fe0788e3          	beqz	a5,80004918 <_Z18Threads_C_API_testv+0xb4>
    8000492c:	00007797          	auipc	a5,0x7
    80004930:	de67c783          	lbu	a5,-538(a5) # 8000b712 <_ZL9finishedB>
    80004934:	fe0782e3          	beqz	a5,80004918 <_Z18Threads_C_API_testv+0xb4>
    80004938:	00007797          	auipc	a5,0x7
    8000493c:	dd97c783          	lbu	a5,-551(a5) # 8000b711 <_ZL9finishedC>
    80004940:	fc078ce3          	beqz	a5,80004918 <_Z18Threads_C_API_testv+0xb4>
    80004944:	00007797          	auipc	a5,0x7
    80004948:	dcc7c783          	lbu	a5,-564(a5) # 8000b710 <_ZL9finishedD>
    8000494c:	fc0786e3          	beqz	a5,80004918 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004950:	02813083          	ld	ra,40(sp)
    80004954:	02013403          	ld	s0,32(sp)
    80004958:	03010113          	addi	sp,sp,48
    8000495c:	00008067          	ret

0000000080004960 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004960:	fd010113          	addi	sp,sp,-48
    80004964:	02113423          	sd	ra,40(sp)
    80004968:	02813023          	sd	s0,32(sp)
    8000496c:	00913c23          	sd	s1,24(sp)
    80004970:	01213823          	sd	s2,16(sp)
    80004974:	01313423          	sd	s3,8(sp)
    80004978:	03010413          	addi	s0,sp,48
    8000497c:	00050993          	mv	s3,a0
    80004980:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004984:	00000913          	li	s2,0
    80004988:	00c0006f          	j	80004994 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	210080e7          	jalr	528(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	d4c080e7          	jalr	-692(ra) # 800016e0 <_Z4getcv>
    8000499c:	0005059b          	sext.w	a1,a0
    800049a0:	01b00793          	li	a5,27
    800049a4:	02f58a63          	beq	a1,a5,800049d8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049a8:	0084b503          	ld	a0,8(s1)
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	c64080e7          	jalr	-924(ra) # 80005610 <_ZN9BufferCPP3putEi>
        i++;
    800049b4:	0019071b          	addiw	a4,s2,1
    800049b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049bc:	0004a683          	lw	a3,0(s1)
    800049c0:	0026979b          	slliw	a5,a3,0x2
    800049c4:	00d787bb          	addw	a5,a5,a3
    800049c8:	0017979b          	slliw	a5,a5,0x1
    800049cc:	02f767bb          	remw	a5,a4,a5
    800049d0:	fc0792e3          	bnez	a5,80004994 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800049d4:	fb9ff06f          	j	8000498c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049d8:	00100793          	li	a5,1
    800049dc:	00007717          	auipc	a4,0x7
    800049e0:	d2f72e23          	sw	a5,-708(a4) # 8000b718 <_ZL9threadEnd>
    td->buffer->put('!');
    800049e4:	0209b783          	ld	a5,32(s3)
    800049e8:	02100593          	li	a1,33
    800049ec:	0087b503          	ld	a0,8(a5)
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	c20080e7          	jalr	-992(ra) # 80005610 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800049f8:	0104b503          	ld	a0,16(s1)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	2bc080e7          	jalr	700(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004a04:	02813083          	ld	ra,40(sp)
    80004a08:	02013403          	ld	s0,32(sp)
    80004a0c:	01813483          	ld	s1,24(sp)
    80004a10:	01013903          	ld	s2,16(sp)
    80004a14:	00813983          	ld	s3,8(sp)
    80004a18:	03010113          	addi	sp,sp,48
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a20:	fe010113          	addi	sp,sp,-32
    80004a24:	00113c23          	sd	ra,24(sp)
    80004a28:	00813823          	sd	s0,16(sp)
    80004a2c:	00913423          	sd	s1,8(sp)
    80004a30:	01213023          	sd	s2,0(sp)
    80004a34:	02010413          	addi	s0,sp,32
    80004a38:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a3c:	00000913          	li	s2,0
    80004a40:	00c0006f          	j	80004a4c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	158080e7          	jalr	344(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a4c:	00007797          	auipc	a5,0x7
    80004a50:	ccc7a783          	lw	a5,-820(a5) # 8000b718 <_ZL9threadEnd>
    80004a54:	02079e63          	bnez	a5,80004a90 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a58:	0004a583          	lw	a1,0(s1)
    80004a5c:	0305859b          	addiw	a1,a1,48
    80004a60:	0084b503          	ld	a0,8(s1)
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	bac080e7          	jalr	-1108(ra) # 80005610 <_ZN9BufferCPP3putEi>
        i++;
    80004a6c:	0019071b          	addiw	a4,s2,1
    80004a70:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a74:	0004a683          	lw	a3,0(s1)
    80004a78:	0026979b          	slliw	a5,a3,0x2
    80004a7c:	00d787bb          	addw	a5,a5,a3
    80004a80:	0017979b          	slliw	a5,a5,0x1
    80004a84:	02f767bb          	remw	a5,a4,a5
    80004a88:	fc0792e3          	bnez	a5,80004a4c <_ZN12ProducerSync8producerEPv+0x2c>
    80004a8c:	fb9ff06f          	j	80004a44 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004a90:	0104b503          	ld	a0,16(s1)
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	224080e7          	jalr	548(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004a9c:	01813083          	ld	ra,24(sp)
    80004aa0:	01013403          	ld	s0,16(sp)
    80004aa4:	00813483          	ld	s1,8(sp)
    80004aa8:	00013903          	ld	s2,0(sp)
    80004aac:	02010113          	addi	sp,sp,32
    80004ab0:	00008067          	ret

0000000080004ab4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ab4:	fd010113          	addi	sp,sp,-48
    80004ab8:	02113423          	sd	ra,40(sp)
    80004abc:	02813023          	sd	s0,32(sp)
    80004ac0:	00913c23          	sd	s1,24(sp)
    80004ac4:	01213823          	sd	s2,16(sp)
    80004ac8:	01313423          	sd	s3,8(sp)
    80004acc:	01413023          	sd	s4,0(sp)
    80004ad0:	03010413          	addi	s0,sp,48
    80004ad4:	00050993          	mv	s3,a0
    80004ad8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004adc:	00000a13          	li	s4,0
    80004ae0:	01c0006f          	j	80004afc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	0b8080e7          	jalr	184(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    80004aec:	0500006f          	j	80004b3c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004af0:	00a00513          	li	a0,10
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	c28080e7          	jalr	-984(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80004afc:	00007797          	auipc	a5,0x7
    80004b00:	c1c7a783          	lw	a5,-996(a5) # 8000b718 <_ZL9threadEnd>
    80004b04:	06079263          	bnez	a5,80004b68 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b08:	00893503          	ld	a0,8(s2)
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	b94080e7          	jalr	-1132(ra) # 800056a0 <_ZN9BufferCPP3getEv>
        i++;
    80004b14:	001a049b          	addiw	s1,s4,1
    80004b18:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b1c:	0ff57513          	andi	a0,a0,255
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	bfc080e7          	jalr	-1028(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b28:	00092703          	lw	a4,0(s2)
    80004b2c:	0027179b          	slliw	a5,a4,0x2
    80004b30:	00e787bb          	addw	a5,a5,a4
    80004b34:	02f4e7bb          	remw	a5,s1,a5
    80004b38:	fa0786e3          	beqz	a5,80004ae4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b3c:	05000793          	li	a5,80
    80004b40:	02f4e4bb          	remw	s1,s1,a5
    80004b44:	fa049ce3          	bnez	s1,80004afc <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b48:	fa9ff06f          	j	80004af0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b4c:	0209b783          	ld	a5,32(s3)
    80004b50:	0087b503          	ld	a0,8(a5)
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	b4c080e7          	jalr	-1204(ra) # 800056a0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b5c:	0ff57513          	andi	a0,a0,255
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	204080e7          	jalr	516(ra) # 80001d64 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b68:	0209b783          	ld	a5,32(s3)
    80004b6c:	0087b503          	ld	a0,8(a5)
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	bbc080e7          	jalr	-1092(ra) # 8000572c <_ZN9BufferCPP6getCntEv>
    80004b78:	fca04ae3          	bgtz	a0,80004b4c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b7c:	01093503          	ld	a0,16(s2)
    80004b80:	ffffd097          	auipc	ra,0xffffd
    80004b84:	138080e7          	jalr	312(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004b88:	02813083          	ld	ra,40(sp)
    80004b8c:	02013403          	ld	s0,32(sp)
    80004b90:	01813483          	ld	s1,24(sp)
    80004b94:	01013903          	ld	s2,16(sp)
    80004b98:	00813983          	ld	s3,8(sp)
    80004b9c:	00013a03          	ld	s4,0(sp)
    80004ba0:	03010113          	addi	sp,sp,48
    80004ba4:	00008067          	ret

0000000080004ba8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004ba8:	f8010113          	addi	sp,sp,-128
    80004bac:	06113c23          	sd	ra,120(sp)
    80004bb0:	06813823          	sd	s0,112(sp)
    80004bb4:	06913423          	sd	s1,104(sp)
    80004bb8:	07213023          	sd	s2,96(sp)
    80004bbc:	05313c23          	sd	s3,88(sp)
    80004bc0:	05413823          	sd	s4,80(sp)
    80004bc4:	05513423          	sd	s5,72(sp)
    80004bc8:	05613023          	sd	s6,64(sp)
    80004bcc:	03713c23          	sd	s7,56(sp)
    80004bd0:	03813823          	sd	s8,48(sp)
    80004bd4:	03913423          	sd	s9,40(sp)
    80004bd8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004bdc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004be0:	00004517          	auipc	a0,0x4
    80004be4:	44850513          	addi	a0,a0,1096 # 80009028 <CONSOLE_STATUS+0x18>
    80004be8:	00000097          	auipc	ra,0x0
    80004bec:	604080e7          	jalr	1540(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80004bf0:	01e00593          	li	a1,30
    80004bf4:	f8040493          	addi	s1,s0,-128
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	678080e7          	jalr	1656(ra) # 80005274 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c04:	00048513          	mv	a0,s1
    80004c08:	00000097          	auipc	ra,0x0
    80004c0c:	744080e7          	jalr	1860(ra) # 8000534c <_Z11stringToIntPKc>
    80004c10:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c14:	00004517          	auipc	a0,0x4
    80004c18:	43450513          	addi	a0,a0,1076 # 80009048 <CONSOLE_STATUS+0x38>
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	5d0080e7          	jalr	1488(ra) # 800051ec <_Z11printStringPKc>
    getString(input, 30);
    80004c24:	01e00593          	li	a1,30
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	648080e7          	jalr	1608(ra) # 80005274 <_Z9getStringPci>
    n = stringToInt(input);
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00000097          	auipc	ra,0x0
    80004c3c:	714080e7          	jalr	1812(ra) # 8000534c <_Z11stringToIntPKc>
    80004c40:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c44:	00004517          	auipc	a0,0x4
    80004c48:	42450513          	addi	a0,a0,1060 # 80009068 <CONSOLE_STATUS+0x58>
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	5a0080e7          	jalr	1440(ra) # 800051ec <_Z11printStringPKc>
    80004c54:	00000613          	li	a2,0
    80004c58:	00a00593          	li	a1,10
    80004c5c:	00090513          	mv	a0,s2
    80004c60:	00000097          	auipc	ra,0x0
    80004c64:	73c080e7          	jalr	1852(ra) # 8000539c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c68:	00004517          	auipc	a0,0x4
    80004c6c:	41850513          	addi	a0,a0,1048 # 80009080 <CONSOLE_STATUS+0x70>
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	57c080e7          	jalr	1404(ra) # 800051ec <_Z11printStringPKc>
    80004c78:	00000613          	li	a2,0
    80004c7c:	00a00593          	li	a1,10
    80004c80:	00048513          	mv	a0,s1
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	718080e7          	jalr	1816(ra) # 8000539c <_Z8printIntiii>
    printString(".\n");
    80004c8c:	00004517          	auipc	a0,0x4
    80004c90:	40c50513          	addi	a0,a0,1036 # 80009098 <CONSOLE_STATUS+0x88>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	558080e7          	jalr	1368(ra) # 800051ec <_Z11printStringPKc>
    if(threadNum > n) {
    80004c9c:	0324c463          	blt	s1,s2,80004cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ca0:	03205c63          	blez	s2,80004cd8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ca4:	03800513          	li	a0,56
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	cc8080e7          	jalr	-824(ra) # 80001970 <_Znwm>
    80004cb0:	00050a93          	mv	s5,a0
    80004cb4:	00048593          	mv	a1,s1
    80004cb8:	00001097          	auipc	ra,0x1
    80004cbc:	804080e7          	jalr	-2044(ra) # 800054bc <_ZN9BufferCPPC1Ei>
    80004cc0:	0300006f          	j	80004cf0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004cc4:	00004517          	auipc	a0,0x4
    80004cc8:	3dc50513          	addi	a0,a0,988 # 800090a0 <CONSOLE_STATUS+0x90>
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	520080e7          	jalr	1312(ra) # 800051ec <_Z11printStringPKc>
        return;
    80004cd4:	0140006f          	j	80004ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	40850513          	addi	a0,a0,1032 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	50c080e7          	jalr	1292(ra) # 800051ec <_Z11printStringPKc>
        return;
    80004ce8:	000b8113          	mv	sp,s7
    80004cec:	2380006f          	j	80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004cf0:	01000513          	li	a0,16
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	c7c080e7          	jalr	-900(ra) # 80001970 <_Znwm>
    80004cfc:	00050493          	mv	s1,a0
    80004d00:	00000593          	li	a1,0
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	f4c080e7          	jalr	-180(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80004d0c:	00007797          	auipc	a5,0x7
    80004d10:	a097ba23          	sd	s1,-1516(a5) # 8000b720 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d14:	00391793          	slli	a5,s2,0x3
    80004d18:	00f78793          	addi	a5,a5,15
    80004d1c:	ff07f793          	andi	a5,a5,-16
    80004d20:	40f10133          	sub	sp,sp,a5
    80004d24:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d28:	0019071b          	addiw	a4,s2,1
    80004d2c:	00171793          	slli	a5,a4,0x1
    80004d30:	00e787b3          	add	a5,a5,a4
    80004d34:	00379793          	slli	a5,a5,0x3
    80004d38:	00f78793          	addi	a5,a5,15
    80004d3c:	ff07f793          	andi	a5,a5,-16
    80004d40:	40f10133          	sub	sp,sp,a5
    80004d44:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d48:	00191c13          	slli	s8,s2,0x1
    80004d4c:	012c07b3          	add	a5,s8,s2
    80004d50:	00379793          	slli	a5,a5,0x3
    80004d54:	00fa07b3          	add	a5,s4,a5
    80004d58:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d5c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d60:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d64:	02800513          	li	a0,40
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	c08080e7          	jalr	-1016(ra) # 80001970 <_Znwm>
    80004d70:	00050b13          	mv	s6,a0
    80004d74:	012c0c33          	add	s8,s8,s2
    80004d78:	003c1c13          	slli	s8,s8,0x3
    80004d7c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d80:	ffffd097          	auipc	ra,0xffffd
    80004d84:	e44080e7          	jalr	-444(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004d88:	00007797          	auipc	a5,0x7
    80004d8c:	87078793          	addi	a5,a5,-1936 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    80004d90:	00fb3023          	sd	a5,0(s6)
    80004d94:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004d98:	000b0513          	mv	a0,s6
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	dcc080e7          	jalr	-564(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004da4:	00000493          	li	s1,0
    80004da8:	0380006f          	j	80004de0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dac:	00007797          	auipc	a5,0x7
    80004db0:	82478793          	addi	a5,a5,-2012 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    80004db4:	00fcb023          	sd	a5,0(s9)
    80004db8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004dbc:	00349793          	slli	a5,s1,0x3
    80004dc0:	00f987b3          	add	a5,s3,a5
    80004dc4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004dc8:	00349793          	slli	a5,s1,0x3
    80004dcc:	00f987b3          	add	a5,s3,a5
    80004dd0:	0007b503          	ld	a0,0(a5)
    80004dd4:	ffffd097          	auipc	ra,0xffffd
    80004dd8:	d94080e7          	jalr	-620(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004ddc:	0014849b          	addiw	s1,s1,1
    80004de0:	0b24d063          	bge	s1,s2,80004e80 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004de4:	00149793          	slli	a5,s1,0x1
    80004de8:	009787b3          	add	a5,a5,s1
    80004dec:	00379793          	slli	a5,a5,0x3
    80004df0:	00fa07b3          	add	a5,s4,a5
    80004df4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004df8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004dfc:	00007717          	auipc	a4,0x7
    80004e00:	92473703          	ld	a4,-1756(a4) # 8000b720 <_ZL10waitForAll>
    80004e04:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e08:	02905863          	blez	s1,80004e38 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e0c:	02800513          	li	a0,40
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	b60080e7          	jalr	-1184(ra) # 80001970 <_Znwm>
    80004e18:	00050c93          	mv	s9,a0
    80004e1c:	00149c13          	slli	s8,s1,0x1
    80004e20:	009c0c33          	add	s8,s8,s1
    80004e24:	003c1c13          	slli	s8,s8,0x3
    80004e28:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	d98080e7          	jalr	-616(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004e34:	f79ff06f          	j	80004dac <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e38:	02800513          	li	a0,40
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	b34080e7          	jalr	-1228(ra) # 80001970 <_Znwm>
    80004e44:	00050c93          	mv	s9,a0
    80004e48:	00149c13          	slli	s8,s1,0x1
    80004e4c:	009c0c33          	add	s8,s8,s1
    80004e50:	003c1c13          	slli	s8,s8,0x3
    80004e54:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	d6c080e7          	jalr	-660(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004e60:	00006797          	auipc	a5,0x6
    80004e64:	74878793          	addi	a5,a5,1864 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    80004e68:	00fcb023          	sd	a5,0(s9)
    80004e6c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e70:	00349793          	slli	a5,s1,0x3
    80004e74:	00f987b3          	add	a5,s3,a5
    80004e78:	0197b023          	sd	s9,0(a5)
    80004e7c:	f4dff06f          	j	80004dc8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	d1c080e7          	jalr	-740(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e88:	00000493          	li	s1,0
    80004e8c:	00994e63          	blt	s2,s1,80004ea8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004e90:	00007517          	auipc	a0,0x7
    80004e94:	89053503          	ld	a0,-1904(a0) # 8000b720 <_ZL10waitForAll>
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	df4080e7          	jalr	-524(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ea0:	0014849b          	addiw	s1,s1,1
    80004ea4:	fe9ff06f          	j	80004e8c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ea8:	00000493          	li	s1,0
    80004eac:	0080006f          	j	80004eb4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004eb0:	0014849b          	addiw	s1,s1,1
    80004eb4:	0324d263          	bge	s1,s2,80004ed8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004eb8:	00349793          	slli	a5,s1,0x3
    80004ebc:	00f987b3          	add	a5,s3,a5
    80004ec0:	0007b503          	ld	a0,0(a5)
    80004ec4:	fe0506e3          	beqz	a0,80004eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ec8:	00053783          	ld	a5,0(a0)
    80004ecc:	0087b783          	ld	a5,8(a5)
    80004ed0:	000780e7          	jalr	a5
    80004ed4:	fddff06f          	j	80004eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ed8:	000b0a63          	beqz	s6,80004eec <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004edc:	000b3783          	ld	a5,0(s6)
    80004ee0:	0087b783          	ld	a5,8(a5)
    80004ee4:	000b0513          	mv	a0,s6
    80004ee8:	000780e7          	jalr	a5
    delete waitForAll;
    80004eec:	00007517          	auipc	a0,0x7
    80004ef0:	83453503          	ld	a0,-1996(a0) # 8000b720 <_ZL10waitForAll>
    80004ef4:	00050863          	beqz	a0,80004f04 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004ef8:	00053783          	ld	a5,0(a0)
    80004efc:	0087b783          	ld	a5,8(a5)
    80004f00:	000780e7          	jalr	a5
    delete buffer;
    80004f04:	000a8e63          	beqz	s5,80004f20 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f08:	000a8513          	mv	a0,s5
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	8a8080e7          	jalr	-1880(ra) # 800057b4 <_ZN9BufferCPPD1Ev>
    80004f14:	000a8513          	mv	a0,s5
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	aa8080e7          	jalr	-1368(ra) # 800019c0 <_ZdlPv>
    80004f20:	000b8113          	mv	sp,s7

}
    80004f24:	f8040113          	addi	sp,s0,-128
    80004f28:	07813083          	ld	ra,120(sp)
    80004f2c:	07013403          	ld	s0,112(sp)
    80004f30:	06813483          	ld	s1,104(sp)
    80004f34:	06013903          	ld	s2,96(sp)
    80004f38:	05813983          	ld	s3,88(sp)
    80004f3c:	05013a03          	ld	s4,80(sp)
    80004f40:	04813a83          	ld	s5,72(sp)
    80004f44:	04013b03          	ld	s6,64(sp)
    80004f48:	03813b83          	ld	s7,56(sp)
    80004f4c:	03013c03          	ld	s8,48(sp)
    80004f50:	02813c83          	ld	s9,40(sp)
    80004f54:	08010113          	addi	sp,sp,128
    80004f58:	00008067          	ret
    80004f5c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f60:	000a8513          	mv	a0,s5
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	a5c080e7          	jalr	-1444(ra) # 800019c0 <_ZdlPv>
    80004f6c:	00048513          	mv	a0,s1
    80004f70:	00008097          	auipc	ra,0x8
    80004f74:	898080e7          	jalr	-1896(ra) # 8000c808 <_Unwind_Resume>
    80004f78:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f7c:	00048513          	mv	a0,s1
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	a40080e7          	jalr	-1472(ra) # 800019c0 <_ZdlPv>
    80004f88:	00090513          	mv	a0,s2
    80004f8c:	00008097          	auipc	ra,0x8
    80004f90:	87c080e7          	jalr	-1924(ra) # 8000c808 <_Unwind_Resume>
    80004f94:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004f98:	000b0513          	mv	a0,s6
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	a24080e7          	jalr	-1500(ra) # 800019c0 <_ZdlPv>
    80004fa4:	00048513          	mv	a0,s1
    80004fa8:	00008097          	auipc	ra,0x8
    80004fac:	860080e7          	jalr	-1952(ra) # 8000c808 <_Unwind_Resume>
    80004fb0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fb4:	000c8513          	mv	a0,s9
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	a08080e7          	jalr	-1528(ra) # 800019c0 <_ZdlPv>
    80004fc0:	00048513          	mv	a0,s1
    80004fc4:	00008097          	auipc	ra,0x8
    80004fc8:	844080e7          	jalr	-1980(ra) # 8000c808 <_Unwind_Resume>
    80004fcc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004fd0:	000c8513          	mv	a0,s9
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	9ec080e7          	jalr	-1556(ra) # 800019c0 <_ZdlPv>
    80004fdc:	00048513          	mv	a0,s1
    80004fe0:	00008097          	auipc	ra,0x8
    80004fe4:	828080e7          	jalr	-2008(ra) # 8000c808 <_Unwind_Resume>

0000000080004fe8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004fe8:	ff010113          	addi	sp,sp,-16
    80004fec:	00113423          	sd	ra,8(sp)
    80004ff0:	00813023          	sd	s0,0(sp)
    80004ff4:	01010413          	addi	s0,sp,16
    80004ff8:	00006797          	auipc	a5,0x6
    80004ffc:	60078793          	addi	a5,a5,1536 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    80005000:	00f53023          	sd	a5,0(a0)
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	a38080e7          	jalr	-1480(ra) # 80001a3c <_ZN6ThreadD1Ev>
    8000500c:	00813083          	ld	ra,8(sp)
    80005010:	00013403          	ld	s0,0(sp)
    80005014:	01010113          	addi	sp,sp,16
    80005018:	00008067          	ret

000000008000501c <_ZN12ConsumerSyncD0Ev>:
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00113c23          	sd	ra,24(sp)
    80005024:	00813823          	sd	s0,16(sp)
    80005028:	00913423          	sd	s1,8(sp)
    8000502c:	02010413          	addi	s0,sp,32
    80005030:	00050493          	mv	s1,a0
    80005034:	00006797          	auipc	a5,0x6
    80005038:	5c478793          	addi	a5,a5,1476 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    8000503c:	00f53023          	sd	a5,0(a0)
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	9fc080e7          	jalr	-1540(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80005048:	00048513          	mv	a0,s1
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	974080e7          	jalr	-1676(ra) # 800019c0 <_ZdlPv>
    80005054:	01813083          	ld	ra,24(sp)
    80005058:	01013403          	ld	s0,16(sp)
    8000505c:	00813483          	ld	s1,8(sp)
    80005060:	02010113          	addi	sp,sp,32
    80005064:	00008067          	ret

0000000080005068 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005068:	ff010113          	addi	sp,sp,-16
    8000506c:	00113423          	sd	ra,8(sp)
    80005070:	00813023          	sd	s0,0(sp)
    80005074:	01010413          	addi	s0,sp,16
    80005078:	00006797          	auipc	a5,0x6
    8000507c:	55878793          	addi	a5,a5,1368 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    80005080:	00f53023          	sd	a5,0(a0)
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	9b8080e7          	jalr	-1608(ra) # 80001a3c <_ZN6ThreadD1Ev>
    8000508c:	00813083          	ld	ra,8(sp)
    80005090:	00013403          	ld	s0,0(sp)
    80005094:	01010113          	addi	sp,sp,16
    80005098:	00008067          	ret

000000008000509c <_ZN12ProducerSyncD0Ev>:
    8000509c:	fe010113          	addi	sp,sp,-32
    800050a0:	00113c23          	sd	ra,24(sp)
    800050a4:	00813823          	sd	s0,16(sp)
    800050a8:	00913423          	sd	s1,8(sp)
    800050ac:	02010413          	addi	s0,sp,32
    800050b0:	00050493          	mv	s1,a0
    800050b4:	00006797          	auipc	a5,0x6
    800050b8:	51c78793          	addi	a5,a5,1308 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    800050bc:	00f53023          	sd	a5,0(a0)
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	97c080e7          	jalr	-1668(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800050c8:	00048513          	mv	a0,s1
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	8f4080e7          	jalr	-1804(ra) # 800019c0 <_ZdlPv>
    800050d4:	01813083          	ld	ra,24(sp)
    800050d8:	01013403          	ld	s0,16(sp)
    800050dc:	00813483          	ld	s1,8(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret

00000000800050e8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800050e8:	ff010113          	addi	sp,sp,-16
    800050ec:	00113423          	sd	ra,8(sp)
    800050f0:	00813023          	sd	s0,0(sp)
    800050f4:	01010413          	addi	s0,sp,16
    800050f8:	00006797          	auipc	a5,0x6
    800050fc:	4b078793          	addi	a5,a5,1200 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    80005100:	00f53023          	sd	a5,0(a0)
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	938080e7          	jalr	-1736(ra) # 80001a3c <_ZN6ThreadD1Ev>
    8000510c:	00813083          	ld	ra,8(sp)
    80005110:	00013403          	ld	s0,0(sp)
    80005114:	01010113          	addi	sp,sp,16
    80005118:	00008067          	ret

000000008000511c <_ZN16ProducerKeyboardD0Ev>:
    8000511c:	fe010113          	addi	sp,sp,-32
    80005120:	00113c23          	sd	ra,24(sp)
    80005124:	00813823          	sd	s0,16(sp)
    80005128:	00913423          	sd	s1,8(sp)
    8000512c:	02010413          	addi	s0,sp,32
    80005130:	00050493          	mv	s1,a0
    80005134:	00006797          	auipc	a5,0x6
    80005138:	47478793          	addi	a5,a5,1140 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    8000513c:	00f53023          	sd	a5,0(a0)
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	8fc080e7          	jalr	-1796(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80005148:	00048513          	mv	a0,s1
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	874080e7          	jalr	-1932(ra) # 800019c0 <_ZdlPv>
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00813483          	ld	s1,8(sp)
    80005160:	02010113          	addi	sp,sp,32
    80005164:	00008067          	ret

0000000080005168 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005168:	ff010113          	addi	sp,sp,-16
    8000516c:	00113423          	sd	ra,8(sp)
    80005170:	00813023          	sd	s0,0(sp)
    80005174:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005178:	02053583          	ld	a1,32(a0)
    8000517c:	fffff097          	auipc	ra,0xfffff
    80005180:	7e4080e7          	jalr	2020(ra) # 80004960 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005184:	00813083          	ld	ra,8(sp)
    80005188:	00013403          	ld	s0,0(sp)
    8000518c:	01010113          	addi	sp,sp,16
    80005190:	00008067          	ret

0000000080005194 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005194:	ff010113          	addi	sp,sp,-16
    80005198:	00113423          	sd	ra,8(sp)
    8000519c:	00813023          	sd	s0,0(sp)
    800051a0:	01010413          	addi	s0,sp,16
        producer(td);
    800051a4:	02053583          	ld	a1,32(a0)
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	878080e7          	jalr	-1928(ra) # 80004a20 <_ZN12ProducerSync8producerEPv>
    }
    800051b0:	00813083          	ld	ra,8(sp)
    800051b4:	00013403          	ld	s0,0(sp)
    800051b8:	01010113          	addi	sp,sp,16
    800051bc:	00008067          	ret

00000000800051c0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051c0:	ff010113          	addi	sp,sp,-16
    800051c4:	00113423          	sd	ra,8(sp)
    800051c8:	00813023          	sd	s0,0(sp)
    800051cc:	01010413          	addi	s0,sp,16
        consumer(td);
    800051d0:	02053583          	ld	a1,32(a0)
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	8e0080e7          	jalr	-1824(ra) # 80004ab4 <_ZN12ConsumerSync8consumerEPv>
    }
    800051dc:	00813083          	ld	ra,8(sp)
    800051e0:	00013403          	ld	s0,0(sp)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret

00000000800051ec <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800051ec:	fe010113          	addi	sp,sp,-32
    800051f0:	00113c23          	sd	ra,24(sp)
    800051f4:	00813823          	sd	s0,16(sp)
    800051f8:	00913423          	sd	s1,8(sp)
    800051fc:	02010413          	addi	s0,sp,32
    80005200:	00050493          	mv	s1,a0
    LOCK();
    80005204:	00100613          	li	a2,1
    80005208:	00000593          	li	a1,0
    8000520c:	00006517          	auipc	a0,0x6
    80005210:	51c50513          	addi	a0,a0,1308 # 8000b728 <lockPrint>
    80005214:	ffffc097          	auipc	ra,0xffffc
    80005218:	148080e7          	jalr	328(ra) # 8000135c <copy_and_swap>
    8000521c:	00050863          	beqz	a0,8000522c <_Z11printStringPKc+0x40>
    80005220:	ffffc097          	auipc	ra,0xffffc
    80005224:	33c080e7          	jalr	828(ra) # 8000155c <_Z15thread_dispatchv>
    80005228:	fddff06f          	j	80005204 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000522c:	0004c503          	lbu	a0,0(s1)
    80005230:	00050a63          	beqz	a0,80005244 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	4e8080e7          	jalr	1256(ra) # 8000171c <_Z4putcc>
        string++;
    8000523c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005240:	fedff06f          	j	8000522c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005244:	00000613          	li	a2,0
    80005248:	00100593          	li	a1,1
    8000524c:	00006517          	auipc	a0,0x6
    80005250:	4dc50513          	addi	a0,a0,1244 # 8000b728 <lockPrint>
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	108080e7          	jalr	264(ra) # 8000135c <copy_and_swap>
    8000525c:	fe0514e3          	bnez	a0,80005244 <_Z11printStringPKc+0x58>
}
    80005260:	01813083          	ld	ra,24(sp)
    80005264:	01013403          	ld	s0,16(sp)
    80005268:	00813483          	ld	s1,8(sp)
    8000526c:	02010113          	addi	sp,sp,32
    80005270:	00008067          	ret

0000000080005274 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005274:	fd010113          	addi	sp,sp,-48
    80005278:	02113423          	sd	ra,40(sp)
    8000527c:	02813023          	sd	s0,32(sp)
    80005280:	00913c23          	sd	s1,24(sp)
    80005284:	01213823          	sd	s2,16(sp)
    80005288:	01313423          	sd	s3,8(sp)
    8000528c:	01413023          	sd	s4,0(sp)
    80005290:	03010413          	addi	s0,sp,48
    80005294:	00050993          	mv	s3,a0
    80005298:	00058a13          	mv	s4,a1
    LOCK();
    8000529c:	00100613          	li	a2,1
    800052a0:	00000593          	li	a1,0
    800052a4:	00006517          	auipc	a0,0x6
    800052a8:	48450513          	addi	a0,a0,1156 # 8000b728 <lockPrint>
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	0b0080e7          	jalr	176(ra) # 8000135c <copy_and_swap>
    800052b4:	00050863          	beqz	a0,800052c4 <_Z9getStringPci+0x50>
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	2a4080e7          	jalr	676(ra) # 8000155c <_Z15thread_dispatchv>
    800052c0:	fddff06f          	j	8000529c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052c4:	00000913          	li	s2,0
    800052c8:	00090493          	mv	s1,s2
    800052cc:	0019091b          	addiw	s2,s2,1
    800052d0:	03495a63          	bge	s2,s4,80005304 <_Z9getStringPci+0x90>
        cc = getc();
    800052d4:	ffffc097          	auipc	ra,0xffffc
    800052d8:	40c080e7          	jalr	1036(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    800052dc:	02050463          	beqz	a0,80005304 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800052e0:	009984b3          	add	s1,s3,s1
    800052e4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052e8:	00a00793          	li	a5,10
    800052ec:	00f50a63          	beq	a0,a5,80005300 <_Z9getStringPci+0x8c>
    800052f0:	00d00793          	li	a5,13
    800052f4:	fcf51ae3          	bne	a0,a5,800052c8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800052f8:	00090493          	mv	s1,s2
    800052fc:	0080006f          	j	80005304 <_Z9getStringPci+0x90>
    80005300:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005304:	009984b3          	add	s1,s3,s1
    80005308:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000530c:	00000613          	li	a2,0
    80005310:	00100593          	li	a1,1
    80005314:	00006517          	auipc	a0,0x6
    80005318:	41450513          	addi	a0,a0,1044 # 8000b728 <lockPrint>
    8000531c:	ffffc097          	auipc	ra,0xffffc
    80005320:	040080e7          	jalr	64(ra) # 8000135c <copy_and_swap>
    80005324:	fe0514e3          	bnez	a0,8000530c <_Z9getStringPci+0x98>
    return buf;
}
    80005328:	00098513          	mv	a0,s3
    8000532c:	02813083          	ld	ra,40(sp)
    80005330:	02013403          	ld	s0,32(sp)
    80005334:	01813483          	ld	s1,24(sp)
    80005338:	01013903          	ld	s2,16(sp)
    8000533c:	00813983          	ld	s3,8(sp)
    80005340:	00013a03          	ld	s4,0(sp)
    80005344:	03010113          	addi	sp,sp,48
    80005348:	00008067          	ret

000000008000534c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000534c:	ff010113          	addi	sp,sp,-16
    80005350:	00813423          	sd	s0,8(sp)
    80005354:	01010413          	addi	s0,sp,16
    80005358:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000535c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005360:	0006c603          	lbu	a2,0(a3)
    80005364:	fd06071b          	addiw	a4,a2,-48
    80005368:	0ff77713          	andi	a4,a4,255
    8000536c:	00900793          	li	a5,9
    80005370:	02e7e063          	bltu	a5,a4,80005390 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005374:	0025179b          	slliw	a5,a0,0x2
    80005378:	00a787bb          	addw	a5,a5,a0
    8000537c:	0017979b          	slliw	a5,a5,0x1
    80005380:	00168693          	addi	a3,a3,1
    80005384:	00c787bb          	addw	a5,a5,a2
    80005388:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000538c:	fd5ff06f          	j	80005360 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005390:	00813403          	ld	s0,8(sp)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000539c:	fc010113          	addi	sp,sp,-64
    800053a0:	02113c23          	sd	ra,56(sp)
    800053a4:	02813823          	sd	s0,48(sp)
    800053a8:	02913423          	sd	s1,40(sp)
    800053ac:	03213023          	sd	s2,32(sp)
    800053b0:	01313c23          	sd	s3,24(sp)
    800053b4:	04010413          	addi	s0,sp,64
    800053b8:	00050493          	mv	s1,a0
    800053bc:	00058913          	mv	s2,a1
    800053c0:	00060993          	mv	s3,a2
    LOCK();
    800053c4:	00100613          	li	a2,1
    800053c8:	00000593          	li	a1,0
    800053cc:	00006517          	auipc	a0,0x6
    800053d0:	35c50513          	addi	a0,a0,860 # 8000b728 <lockPrint>
    800053d4:	ffffc097          	auipc	ra,0xffffc
    800053d8:	f88080e7          	jalr	-120(ra) # 8000135c <copy_and_swap>
    800053dc:	00050863          	beqz	a0,800053ec <_Z8printIntiii+0x50>
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	17c080e7          	jalr	380(ra) # 8000155c <_Z15thread_dispatchv>
    800053e8:	fddff06f          	j	800053c4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800053ec:	00098463          	beqz	s3,800053f4 <_Z8printIntiii+0x58>
    800053f0:	0804c463          	bltz	s1,80005478 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053f4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053f8:	00000593          	li	a1,0
    }

    i = 0;
    800053fc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005400:	0009079b          	sext.w	a5,s2
    80005404:	0325773b          	remuw	a4,a0,s2
    80005408:	00048613          	mv	a2,s1
    8000540c:	0014849b          	addiw	s1,s1,1
    80005410:	02071693          	slli	a3,a4,0x20
    80005414:	0206d693          	srli	a3,a3,0x20
    80005418:	00006717          	auipc	a4,0x6
    8000541c:	1f870713          	addi	a4,a4,504 # 8000b610 <digits>
    80005420:	00d70733          	add	a4,a4,a3
    80005424:	00074683          	lbu	a3,0(a4)
    80005428:	fd040713          	addi	a4,s0,-48
    8000542c:	00c70733          	add	a4,a4,a2
    80005430:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005434:	0005071b          	sext.w	a4,a0
    80005438:	0325553b          	divuw	a0,a0,s2
    8000543c:	fcf772e3          	bgeu	a4,a5,80005400 <_Z8printIntiii+0x64>
    if(neg)
    80005440:	00058c63          	beqz	a1,80005458 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005444:	fd040793          	addi	a5,s0,-48
    80005448:	009784b3          	add	s1,a5,s1
    8000544c:	02d00793          	li	a5,45
    80005450:	fef48823          	sb	a5,-16(s1)
    80005454:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005458:	fff4849b          	addiw	s1,s1,-1
    8000545c:	0204c463          	bltz	s1,80005484 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005460:	fd040793          	addi	a5,s0,-48
    80005464:	009787b3          	add	a5,a5,s1
    80005468:	ff07c503          	lbu	a0,-16(a5)
    8000546c:	ffffc097          	auipc	ra,0xffffc
    80005470:	2b0080e7          	jalr	688(ra) # 8000171c <_Z4putcc>
    80005474:	fe5ff06f          	j	80005458 <_Z8printIntiii+0xbc>
        x = -xx;
    80005478:	4090053b          	negw	a0,s1
        neg = 1;
    8000547c:	00100593          	li	a1,1
        x = -xx;
    80005480:	f7dff06f          	j	800053fc <_Z8printIntiii+0x60>

    UNLOCK();
    80005484:	00000613          	li	a2,0
    80005488:	00100593          	li	a1,1
    8000548c:	00006517          	auipc	a0,0x6
    80005490:	29c50513          	addi	a0,a0,668 # 8000b728 <lockPrint>
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	ec8080e7          	jalr	-312(ra) # 8000135c <copy_and_swap>
    8000549c:	fe0514e3          	bnez	a0,80005484 <_Z8printIntiii+0xe8>
    800054a0:	03813083          	ld	ra,56(sp)
    800054a4:	03013403          	ld	s0,48(sp)
    800054a8:	02813483          	ld	s1,40(sp)
    800054ac:	02013903          	ld	s2,32(sp)
    800054b0:	01813983          	ld	s3,24(sp)
    800054b4:	04010113          	addi	sp,sp,64
    800054b8:	00008067          	ret

00000000800054bc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054bc:	fd010113          	addi	sp,sp,-48
    800054c0:	02113423          	sd	ra,40(sp)
    800054c4:	02813023          	sd	s0,32(sp)
    800054c8:	00913c23          	sd	s1,24(sp)
    800054cc:	01213823          	sd	s2,16(sp)
    800054d0:	01313423          	sd	s3,8(sp)
    800054d4:	03010413          	addi	s0,sp,48
    800054d8:	00050493          	mv	s1,a0
    800054dc:	00058913          	mv	s2,a1
    800054e0:	0015879b          	addiw	a5,a1,1
    800054e4:	0007851b          	sext.w	a0,a5
    800054e8:	00f4a023          	sw	a5,0(s1)
    800054ec:	0004a823          	sw	zero,16(s1)
    800054f0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054f4:	00251513          	slli	a0,a0,0x2
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	ebc080e7          	jalr	-324(ra) # 800013b4 <_Z9mem_allocm>
    80005500:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005504:	01000513          	li	a0,16
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	468080e7          	jalr	1128(ra) # 80001970 <_Znwm>
    80005510:	00050993          	mv	s3,a0
    80005514:	00000593          	li	a1,0
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	738080e7          	jalr	1848(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005520:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005524:	01000513          	li	a0,16
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	448080e7          	jalr	1096(ra) # 80001970 <_Znwm>
    80005530:	00050993          	mv	s3,a0
    80005534:	00090593          	mv	a1,s2
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	718080e7          	jalr	1816(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005540:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005544:	01000513          	li	a0,16
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	428080e7          	jalr	1064(ra) # 80001970 <_Znwm>
    80005550:	00050913          	mv	s2,a0
    80005554:	00100593          	li	a1,1
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	6f8080e7          	jalr	1784(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005560:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005564:	01000513          	li	a0,16
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	408080e7          	jalr	1032(ra) # 80001970 <_Znwm>
    80005570:	00050913          	mv	s2,a0
    80005574:	00100593          	li	a1,1
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	6d8080e7          	jalr	1752(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005580:	0324b823          	sd	s2,48(s1)
}
    80005584:	02813083          	ld	ra,40(sp)
    80005588:	02013403          	ld	s0,32(sp)
    8000558c:	01813483          	ld	s1,24(sp)
    80005590:	01013903          	ld	s2,16(sp)
    80005594:	00813983          	ld	s3,8(sp)
    80005598:	03010113          	addi	sp,sp,48
    8000559c:	00008067          	ret
    800055a0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055a4:	00098513          	mv	a0,s3
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	418080e7          	jalr	1048(ra) # 800019c0 <_ZdlPv>
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00007097          	auipc	ra,0x7
    800055b8:	254080e7          	jalr	596(ra) # 8000c808 <_Unwind_Resume>
    800055bc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055c0:	00098513          	mv	a0,s3
    800055c4:	ffffc097          	auipc	ra,0xffffc
    800055c8:	3fc080e7          	jalr	1020(ra) # 800019c0 <_ZdlPv>
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00007097          	auipc	ra,0x7
    800055d4:	238080e7          	jalr	568(ra) # 8000c808 <_Unwind_Resume>
    800055d8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055dc:	00090513          	mv	a0,s2
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	3e0080e7          	jalr	992(ra) # 800019c0 <_ZdlPv>
    800055e8:	00048513          	mv	a0,s1
    800055ec:	00007097          	auipc	ra,0x7
    800055f0:	21c080e7          	jalr	540(ra) # 8000c808 <_Unwind_Resume>
    800055f4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055f8:	00090513          	mv	a0,s2
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	3c4080e7          	jalr	964(ra) # 800019c0 <_ZdlPv>
    80005604:	00048513          	mv	a0,s1
    80005608:	00007097          	auipc	ra,0x7
    8000560c:	200080e7          	jalr	512(ra) # 8000c808 <_Unwind_Resume>

0000000080005610 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	00813823          	sd	s0,16(sp)
    8000561c:	00913423          	sd	s1,8(sp)
    80005620:	01213023          	sd	s2,0(sp)
    80005624:	02010413          	addi	s0,sp,32
    80005628:	00050493          	mv	s1,a0
    8000562c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005630:	01853503          	ld	a0,24(a0)
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	658080e7          	jalr	1624(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000563c:	0304b503          	ld	a0,48(s1)
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	64c080e7          	jalr	1612(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005648:	0084b783          	ld	a5,8(s1)
    8000564c:	0144a703          	lw	a4,20(s1)
    80005650:	00271713          	slli	a4,a4,0x2
    80005654:	00e787b3          	add	a5,a5,a4
    80005658:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000565c:	0144a783          	lw	a5,20(s1)
    80005660:	0017879b          	addiw	a5,a5,1
    80005664:	0004a703          	lw	a4,0(s1)
    80005668:	02e7e7bb          	remw	a5,a5,a4
    8000566c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005670:	0304b503          	ld	a0,48(s1)
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	644080e7          	jalr	1604(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000567c:	0204b503          	ld	a0,32(s1)
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	638080e7          	jalr	1592(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

}
    80005688:	01813083          	ld	ra,24(sp)
    8000568c:	01013403          	ld	s0,16(sp)
    80005690:	00813483          	ld	s1,8(sp)
    80005694:	00013903          	ld	s2,0(sp)
    80005698:	02010113          	addi	sp,sp,32
    8000569c:	00008067          	ret

00000000800056a0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056a0:	fe010113          	addi	sp,sp,-32
    800056a4:	00113c23          	sd	ra,24(sp)
    800056a8:	00813823          	sd	s0,16(sp)
    800056ac:	00913423          	sd	s1,8(sp)
    800056b0:	01213023          	sd	s2,0(sp)
    800056b4:	02010413          	addi	s0,sp,32
    800056b8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056bc:	02053503          	ld	a0,32(a0)
    800056c0:	ffffc097          	auipc	ra,0xffffc
    800056c4:	5cc080e7          	jalr	1484(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056c8:	0284b503          	ld	a0,40(s1)
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	5c0080e7          	jalr	1472(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056d4:	0084b703          	ld	a4,8(s1)
    800056d8:	0104a783          	lw	a5,16(s1)
    800056dc:	00279693          	slli	a3,a5,0x2
    800056e0:	00d70733          	add	a4,a4,a3
    800056e4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056e8:	0017879b          	addiw	a5,a5,1
    800056ec:	0004a703          	lw	a4,0(s1)
    800056f0:	02e7e7bb          	remw	a5,a5,a4
    800056f4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800056f8:	0284b503          	ld	a0,40(s1)
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	5bc080e7          	jalr	1468(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005704:	0184b503          	ld	a0,24(s1)
    80005708:	ffffc097          	auipc	ra,0xffffc
    8000570c:	5b0080e7          	jalr	1456(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005710:	00090513          	mv	a0,s2
    80005714:	01813083          	ld	ra,24(sp)
    80005718:	01013403          	ld	s0,16(sp)
    8000571c:	00813483          	ld	s1,8(sp)
    80005720:	00013903          	ld	s2,0(sp)
    80005724:	02010113          	addi	sp,sp,32
    80005728:	00008067          	ret

000000008000572c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000572c:	fe010113          	addi	sp,sp,-32
    80005730:	00113c23          	sd	ra,24(sp)
    80005734:	00813823          	sd	s0,16(sp)
    80005738:	00913423          	sd	s1,8(sp)
    8000573c:	01213023          	sd	s2,0(sp)
    80005740:	02010413          	addi	s0,sp,32
    80005744:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005748:	02853503          	ld	a0,40(a0)
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	540080e7          	jalr	1344(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005754:	0304b503          	ld	a0,48(s1)
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	534080e7          	jalr	1332(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005760:	0144a783          	lw	a5,20(s1)
    80005764:	0104a903          	lw	s2,16(s1)
    80005768:	0327ce63          	blt	a5,s2,800057a4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000576c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005770:	0304b503          	ld	a0,48(s1)
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	544080e7          	jalr	1348(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000577c:	0284b503          	ld	a0,40(s1)
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	538080e7          	jalr	1336(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005788:	00090513          	mv	a0,s2
    8000578c:	01813083          	ld	ra,24(sp)
    80005790:	01013403          	ld	s0,16(sp)
    80005794:	00813483          	ld	s1,8(sp)
    80005798:	00013903          	ld	s2,0(sp)
    8000579c:	02010113          	addi	sp,sp,32
    800057a0:	00008067          	ret
        ret = cap - head + tail;
    800057a4:	0004a703          	lw	a4,0(s1)
    800057a8:	4127093b          	subw	s2,a4,s2
    800057ac:	00f9093b          	addw	s2,s2,a5
    800057b0:	fc1ff06f          	j	80005770 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057b4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057b4:	fe010113          	addi	sp,sp,-32
    800057b8:	00113c23          	sd	ra,24(sp)
    800057bc:	00813823          	sd	s0,16(sp)
    800057c0:	00913423          	sd	s1,8(sp)
    800057c4:	02010413          	addi	s0,sp,32
    800057c8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057cc:	00a00513          	li	a0,10
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	594080e7          	jalr	1428(ra) # 80001d64 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	a4050513          	addi	a0,a0,-1472 # 80009218 <CONSOLE_STATUS+0x208>
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	a0c080e7          	jalr	-1524(ra) # 800051ec <_Z11printStringPKc>
    while (getCnt()) {
    800057e8:	00048513          	mv	a0,s1
    800057ec:	00000097          	auipc	ra,0x0
    800057f0:	f40080e7          	jalr	-192(ra) # 8000572c <_ZN9BufferCPP6getCntEv>
    800057f4:	02050c63          	beqz	a0,8000582c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800057f8:	0084b783          	ld	a5,8(s1)
    800057fc:	0104a703          	lw	a4,16(s1)
    80005800:	00271713          	slli	a4,a4,0x2
    80005804:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005808:	0007c503          	lbu	a0,0(a5)
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	558080e7          	jalr	1368(ra) # 80001d64 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005814:	0104a783          	lw	a5,16(s1)
    80005818:	0017879b          	addiw	a5,a5,1
    8000581c:	0004a703          	lw	a4,0(s1)
    80005820:	02e7e7bb          	remw	a5,a5,a4
    80005824:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005828:	fc1ff06f          	j	800057e8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000582c:	02100513          	li	a0,33
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	534080e7          	jalr	1332(ra) # 80001d64 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005838:	00a00513          	li	a0,10
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	528080e7          	jalr	1320(ra) # 80001d64 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005844:	0084b503          	ld	a0,8(s1)
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	bac080e7          	jalr	-1108(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005850:	0204b503          	ld	a0,32(s1)
    80005854:	00050863          	beqz	a0,80005864 <_ZN9BufferCPPD1Ev+0xb0>
    80005858:	00053783          	ld	a5,0(a0)
    8000585c:	0087b783          	ld	a5,8(a5)
    80005860:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005864:	0184b503          	ld	a0,24(s1)
    80005868:	00050863          	beqz	a0,80005878 <_ZN9BufferCPPD1Ev+0xc4>
    8000586c:	00053783          	ld	a5,0(a0)
    80005870:	0087b783          	ld	a5,8(a5)
    80005874:	000780e7          	jalr	a5
    delete mutexTail;
    80005878:	0304b503          	ld	a0,48(s1)
    8000587c:	00050863          	beqz	a0,8000588c <_ZN9BufferCPPD1Ev+0xd8>
    80005880:	00053783          	ld	a5,0(a0)
    80005884:	0087b783          	ld	a5,8(a5)
    80005888:	000780e7          	jalr	a5
    delete mutexHead;
    8000588c:	0284b503          	ld	a0,40(s1)
    80005890:	00050863          	beqz	a0,800058a0 <_ZN9BufferCPPD1Ev+0xec>
    80005894:	00053783          	ld	a5,0(a0)
    80005898:	0087b783          	ld	a5,8(a5)
    8000589c:	000780e7          	jalr	a5
}
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	02010113          	addi	sp,sp,32
    800058b0:	00008067          	ret

00000000800058b4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058b4:	fe010113          	addi	sp,sp,-32
    800058b8:	00113c23          	sd	ra,24(sp)
    800058bc:	00813823          	sd	s0,16(sp)
    800058c0:	00913423          	sd	s1,8(sp)
    800058c4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058c8:	00004517          	auipc	a0,0x4
    800058cc:	96850513          	addi	a0,a0,-1688 # 80009230 <CONSOLE_STATUS+0x220>
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	91c080e7          	jalr	-1764(ra) # 800051ec <_Z11printStringPKc>
    int test = getc() - '0';
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	e08080e7          	jalr	-504(ra) # 800016e0 <_Z4getcv>
    800058e0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	dfc080e7          	jalr	-516(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800058ec:	00700793          	li	a5,7
    800058f0:	1097e263          	bltu	a5,s1,800059f4 <_Z8userMainv+0x140>
    800058f4:	00249493          	slli	s1,s1,0x2
    800058f8:	00004717          	auipc	a4,0x4
    800058fc:	b9070713          	addi	a4,a4,-1136 # 80009488 <CONSOLE_STATUS+0x478>
    80005900:	00e484b3          	add	s1,s1,a4
    80005904:	0004a783          	lw	a5,0(s1)
    80005908:	00e787b3          	add	a5,a5,a4
    8000590c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005910:	fffff097          	auipc	ra,0xfffff
    80005914:	f54080e7          	jalr	-172(ra) # 80004864 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	93850513          	addi	a0,a0,-1736 # 80009250 <CONSOLE_STATUS+0x240>
    80005920:	00000097          	auipc	ra,0x0
    80005924:	8cc080e7          	jalr	-1844(ra) # 800051ec <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	00813483          	ld	s1,8(sp)
    80005934:	02010113          	addi	sp,sp,32
    80005938:	00008067          	ret
            Threads_CPP_API_test();
    8000593c:	ffffe097          	auipc	ra,0xffffe
    80005940:	e08080e7          	jalr	-504(ra) # 80003744 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005944:	00004517          	auipc	a0,0x4
    80005948:	94c50513          	addi	a0,a0,-1716 # 80009290 <CONSOLE_STATUS+0x280>
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	8a0080e7          	jalr	-1888(ra) # 800051ec <_Z11printStringPKc>
            break;
    80005954:	fd5ff06f          	j	80005928 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005958:	ffffd097          	auipc	ra,0xffffd
    8000595c:	640080e7          	jalr	1600(ra) # 80002f98 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005960:	00004517          	auipc	a0,0x4
    80005964:	97050513          	addi	a0,a0,-1680 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	884080e7          	jalr	-1916(ra) # 800051ec <_Z11printStringPKc>
            break;
    80005970:	fb9ff06f          	j	80005928 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005974:	fffff097          	auipc	ra,0xfffff
    80005978:	234080e7          	jalr	564(ra) # 80004ba8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000597c:	00004517          	auipc	a0,0x4
    80005980:	9a450513          	addi	a0,a0,-1628 # 80009320 <CONSOLE_STATUS+0x310>
    80005984:	00000097          	auipc	ra,0x0
    80005988:	868080e7          	jalr	-1944(ra) # 800051ec <_Z11printStringPKc>
            break;
    8000598c:	f9dff06f          	j	80005928 <_Z8userMainv+0x74>
            testSleeping();
    80005990:	00000097          	auipc	ra,0x0
    80005994:	11c080e7          	jalr	284(ra) # 80005aac <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	9e050513          	addi	a0,a0,-1568 # 80009378 <CONSOLE_STATUS+0x368>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	84c080e7          	jalr	-1972(ra) # 800051ec <_Z11printStringPKc>
            break;
    800059a8:	f81ff06f          	j	80005928 <_Z8userMainv+0x74>
            testConsumerProducer();
    800059ac:	ffffe097          	auipc	ra,0xffffe
    800059b0:	258080e7          	jalr	600(ra) # 80003c04 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800059b4:	00004517          	auipc	a0,0x4
    800059b8:	9f450513          	addi	a0,a0,-1548 # 800093a8 <CONSOLE_STATUS+0x398>
    800059bc:	00000097          	auipc	ra,0x0
    800059c0:	830080e7          	jalr	-2000(ra) # 800051ec <_Z11printStringPKc>
            break;
    800059c4:	f65ff06f          	j	80005928 <_Z8userMainv+0x74>
            System_Mode_test();
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	658080e7          	jalr	1624(ra) # 80006020 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800059d0:	00004517          	auipc	a0,0x4
    800059d4:	a1850513          	addi	a0,a0,-1512 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	814080e7          	jalr	-2028(ra) # 800051ec <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800059e0:	00004517          	auipc	a0,0x4
    800059e4:	a2850513          	addi	a0,a0,-1496 # 80009408 <CONSOLE_STATUS+0x3f8>
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	804080e7          	jalr	-2044(ra) # 800051ec <_Z11printStringPKc>
            break;
    800059f0:	f39ff06f          	j	80005928 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	a6c50513          	addi	a0,a0,-1428 # 80009460 <CONSOLE_STATUS+0x450>
    800059fc:	fffff097          	auipc	ra,0xfffff
    80005a00:	7f0080e7          	jalr	2032(ra) # 800051ec <_Z11printStringPKc>
    80005a04:	f25ff06f          	j	80005928 <_Z8userMainv+0x74>

0000000080005a08 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a08:	fe010113          	addi	sp,sp,-32
    80005a0c:	00113c23          	sd	ra,24(sp)
    80005a10:	00813823          	sd	s0,16(sp)
    80005a14:	00913423          	sd	s1,8(sp)
    80005a18:	01213023          	sd	s2,0(sp)
    80005a1c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a20:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a24:	00600493          	li	s1,6
    while (--i > 0) {
    80005a28:	fff4849b          	addiw	s1,s1,-1
    80005a2c:	04905463          	blez	s1,80005a74 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a30:	00004517          	auipc	a0,0x4
    80005a34:	a7850513          	addi	a0,a0,-1416 # 800094a8 <CONSOLE_STATUS+0x498>
    80005a38:	fffff097          	auipc	ra,0xfffff
    80005a3c:	7b4080e7          	jalr	1972(ra) # 800051ec <_Z11printStringPKc>
        printInt(sleep_time);
    80005a40:	00000613          	li	a2,0
    80005a44:	00a00593          	li	a1,10
    80005a48:	0009051b          	sext.w	a0,s2
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	950080e7          	jalr	-1712(ra) # 8000539c <_Z8printIntiii>
        printString(" !\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	a5c50513          	addi	a0,a0,-1444 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005a5c:	fffff097          	auipc	ra,0xfffff
    80005a60:	790080e7          	jalr	1936(ra) # 800051ec <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a64:	00090513          	mv	a0,s2
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	a78080e7          	jalr	-1416(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80005a70:	fb9ff06f          	j	80005a28 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a74:	00a00793          	li	a5,10
    80005a78:	02f95933          	divu	s2,s2,a5
    80005a7c:	fff90913          	addi	s2,s2,-1
    80005a80:	00006797          	auipc	a5,0x6
    80005a84:	cb078793          	addi	a5,a5,-848 # 8000b730 <_ZL8finished>
    80005a88:	01278933          	add	s2,a5,s2
    80005a8c:	00100793          	li	a5,1
    80005a90:	00f90023          	sb	a5,0(s2)
}
    80005a94:	01813083          	ld	ra,24(sp)
    80005a98:	01013403          	ld	s0,16(sp)
    80005a9c:	00813483          	ld	s1,8(sp)
    80005aa0:	00013903          	ld	s2,0(sp)
    80005aa4:	02010113          	addi	sp,sp,32
    80005aa8:	00008067          	ret

0000000080005aac <_Z12testSleepingv>:

void testSleeping() {
    80005aac:	fc010113          	addi	sp,sp,-64
    80005ab0:	02113c23          	sd	ra,56(sp)
    80005ab4:	02813823          	sd	s0,48(sp)
    80005ab8:	02913423          	sd	s1,40(sp)
    80005abc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ac0:	00a00793          	li	a5,10
    80005ac4:	fcf43823          	sd	a5,-48(s0)
    80005ac8:	01400793          	li	a5,20
    80005acc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ad0:	00000493          	li	s1,0
    80005ad4:	02c0006f          	j	80005b00 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ad8:	00349793          	slli	a5,s1,0x3
    80005adc:	fd040613          	addi	a2,s0,-48
    80005ae0:	00f60633          	add	a2,a2,a5
    80005ae4:	00000597          	auipc	a1,0x0
    80005ae8:	f2458593          	addi	a1,a1,-220 # 80005a08 <_ZL9sleepyRunPv>
    80005aec:	fc040513          	addi	a0,s0,-64
    80005af0:	00f50533          	add	a0,a0,a5
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	940080e7          	jalr	-1728(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005afc:	0014849b          	addiw	s1,s1,1
    80005b00:	00100793          	li	a5,1
    80005b04:	fc97dae3          	bge	a5,s1,80005ad8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b08:	00006797          	auipc	a5,0x6
    80005b0c:	c287c783          	lbu	a5,-984(a5) # 8000b730 <_ZL8finished>
    80005b10:	fe078ce3          	beqz	a5,80005b08 <_Z12testSleepingv+0x5c>
    80005b14:	00006797          	auipc	a5,0x6
    80005b18:	c1d7c783          	lbu	a5,-995(a5) # 8000b731 <_ZL8finished+0x1>
    80005b1c:	fe0786e3          	beqz	a5,80005b08 <_Z12testSleepingv+0x5c>
}
    80005b20:	03813083          	ld	ra,56(sp)
    80005b24:	03013403          	ld	s0,48(sp)
    80005b28:	02813483          	ld	s1,40(sp)
    80005b2c:	04010113          	addi	sp,sp,64
    80005b30:	00008067          	ret

0000000080005b34 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b34:	fe010113          	addi	sp,sp,-32
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	00813823          	sd	s0,16(sp)
    80005b40:	00913423          	sd	s1,8(sp)
    80005b44:	01213023          	sd	s2,0(sp)
    80005b48:	02010413          	addi	s0,sp,32
    80005b4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b50:	00100793          	li	a5,1
    80005b54:	02a7f863          	bgeu	a5,a0,80005b84 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b58:	00a00793          	li	a5,10
    80005b5c:	02f577b3          	remu	a5,a0,a5
    80005b60:	02078e63          	beqz	a5,80005b9c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b64:	fff48513          	addi	a0,s1,-1
    80005b68:	00000097          	auipc	ra,0x0
    80005b6c:	fcc080e7          	jalr	-52(ra) # 80005b34 <_ZL9fibonaccim>
    80005b70:	00050913          	mv	s2,a0
    80005b74:	ffe48513          	addi	a0,s1,-2
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	fbc080e7          	jalr	-68(ra) # 80005b34 <_ZL9fibonaccim>
    80005b80:	00a90533          	add	a0,s2,a0
}
    80005b84:	01813083          	ld	ra,24(sp)
    80005b88:	01013403          	ld	s0,16(sp)
    80005b8c:	00813483          	ld	s1,8(sp)
    80005b90:	00013903          	ld	s2,0(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b9c:	ffffc097          	auipc	ra,0xffffc
    80005ba0:	9c0080e7          	jalr	-1600(ra) # 8000155c <_Z15thread_dispatchv>
    80005ba4:	fc1ff06f          	j	80005b64 <_ZL9fibonaccim+0x30>

0000000080005ba8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005ba8:	fe010113          	addi	sp,sp,-32
    80005bac:	00113c23          	sd	ra,24(sp)
    80005bb0:	00813823          	sd	s0,16(sp)
    80005bb4:	00913423          	sd	s1,8(sp)
    80005bb8:	01213023          	sd	s2,0(sp)
    80005bbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bc0:	00a00493          	li	s1,10
    80005bc4:	0400006f          	j	80005c04 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bc8:	00003517          	auipc	a0,0x3
    80005bcc:	5b850513          	addi	a0,a0,1464 # 80009180 <CONSOLE_STATUS+0x170>
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	61c080e7          	jalr	1564(ra) # 800051ec <_Z11printStringPKc>
    80005bd8:	00000613          	li	a2,0
    80005bdc:	00a00593          	li	a1,10
    80005be0:	00048513          	mv	a0,s1
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	7b8080e7          	jalr	1976(ra) # 8000539c <_Z8printIntiii>
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	78450513          	addi	a0,a0,1924 # 80009370 <CONSOLE_STATUS+0x360>
    80005bf4:	fffff097          	auipc	ra,0xfffff
    80005bf8:	5f8080e7          	jalr	1528(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005bfc:	0014849b          	addiw	s1,s1,1
    80005c00:	0ff4f493          	andi	s1,s1,255
    80005c04:	00c00793          	li	a5,12
    80005c08:	fc97f0e3          	bgeu	a5,s1,80005bc8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c0c:	00003517          	auipc	a0,0x3
    80005c10:	57c50513          	addi	a0,a0,1404 # 80009188 <CONSOLE_STATUS+0x178>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	5d8080e7          	jalr	1496(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c1c:	00500313          	li	t1,5
    thread_dispatch();
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	93c080e7          	jalr	-1732(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c28:	01000513          	li	a0,16
    80005c2c:	00000097          	auipc	ra,0x0
    80005c30:	f08080e7          	jalr	-248(ra) # 80005b34 <_ZL9fibonaccim>
    80005c34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c38:	00003517          	auipc	a0,0x3
    80005c3c:	56050513          	addi	a0,a0,1376 # 80009198 <CONSOLE_STATUS+0x188>
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	5ac080e7          	jalr	1452(ra) # 800051ec <_Z11printStringPKc>
    80005c48:	00000613          	li	a2,0
    80005c4c:	00a00593          	li	a1,10
    80005c50:	0009051b          	sext.w	a0,s2
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	748080e7          	jalr	1864(ra) # 8000539c <_Z8printIntiii>
    80005c5c:	00003517          	auipc	a0,0x3
    80005c60:	71450513          	addi	a0,a0,1812 # 80009370 <CONSOLE_STATUS+0x360>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	588080e7          	jalr	1416(ra) # 800051ec <_Z11printStringPKc>
    80005c6c:	0400006f          	j	80005cac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c70:	00003517          	auipc	a0,0x3
    80005c74:	51050513          	addi	a0,a0,1296 # 80009180 <CONSOLE_STATUS+0x170>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	574080e7          	jalr	1396(ra) # 800051ec <_Z11printStringPKc>
    80005c80:	00000613          	li	a2,0
    80005c84:	00a00593          	li	a1,10
    80005c88:	00048513          	mv	a0,s1
    80005c8c:	fffff097          	auipc	ra,0xfffff
    80005c90:	710080e7          	jalr	1808(ra) # 8000539c <_Z8printIntiii>
    80005c94:	00003517          	auipc	a0,0x3
    80005c98:	6dc50513          	addi	a0,a0,1756 # 80009370 <CONSOLE_STATUS+0x360>
    80005c9c:	fffff097          	auipc	ra,0xfffff
    80005ca0:	550080e7          	jalr	1360(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ca4:	0014849b          	addiw	s1,s1,1
    80005ca8:	0ff4f493          	andi	s1,s1,255
    80005cac:	00f00793          	li	a5,15
    80005cb0:	fc97f0e3          	bgeu	a5,s1,80005c70 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005cb4:	00003517          	auipc	a0,0x3
    80005cb8:	4f450513          	addi	a0,a0,1268 # 800091a8 <CONSOLE_STATUS+0x198>
    80005cbc:	fffff097          	auipc	ra,0xfffff
    80005cc0:	530080e7          	jalr	1328(ra) # 800051ec <_Z11printStringPKc>
    finishedD = true;
    80005cc4:	00100793          	li	a5,1
    80005cc8:	00006717          	auipc	a4,0x6
    80005ccc:	a6f70523          	sb	a5,-1430(a4) # 8000b732 <_ZL9finishedD>
    thread_dispatch();
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	88c080e7          	jalr	-1908(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005cd8:	01813083          	ld	ra,24(sp)
    80005cdc:	01013403          	ld	s0,16(sp)
    80005ce0:	00813483          	ld	s1,8(sp)
    80005ce4:	00013903          	ld	s2,0(sp)
    80005ce8:	02010113          	addi	sp,sp,32
    80005cec:	00008067          	ret

0000000080005cf0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005cf0:	fe010113          	addi	sp,sp,-32
    80005cf4:	00113c23          	sd	ra,24(sp)
    80005cf8:	00813823          	sd	s0,16(sp)
    80005cfc:	00913423          	sd	s1,8(sp)
    80005d00:	01213023          	sd	s2,0(sp)
    80005d04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d08:	00000493          	li	s1,0
    80005d0c:	0400006f          	j	80005d4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d10:	00003517          	auipc	a0,0x3
    80005d14:	43050513          	addi	a0,a0,1072 # 80009140 <CONSOLE_STATUS+0x130>
    80005d18:	fffff097          	auipc	ra,0xfffff
    80005d1c:	4d4080e7          	jalr	1236(ra) # 800051ec <_Z11printStringPKc>
    80005d20:	00000613          	li	a2,0
    80005d24:	00a00593          	li	a1,10
    80005d28:	00048513          	mv	a0,s1
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	670080e7          	jalr	1648(ra) # 8000539c <_Z8printIntiii>
    80005d34:	00003517          	auipc	a0,0x3
    80005d38:	63c50513          	addi	a0,a0,1596 # 80009370 <CONSOLE_STATUS+0x360>
    80005d3c:	fffff097          	auipc	ra,0xfffff
    80005d40:	4b0080e7          	jalr	1200(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d44:	0014849b          	addiw	s1,s1,1
    80005d48:	0ff4f493          	andi	s1,s1,255
    80005d4c:	00200793          	li	a5,2
    80005d50:	fc97f0e3          	bgeu	a5,s1,80005d10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d54:	00003517          	auipc	a0,0x3
    80005d58:	3f450513          	addi	a0,a0,1012 # 80009148 <CONSOLE_STATUS+0x138>
    80005d5c:	fffff097          	auipc	ra,0xfffff
    80005d60:	490080e7          	jalr	1168(ra) # 800051ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d64:	00700313          	li	t1,7
    thread_dispatch();
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	7f4080e7          	jalr	2036(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d74:	00003517          	auipc	a0,0x3
    80005d78:	3e450513          	addi	a0,a0,996 # 80009158 <CONSOLE_STATUS+0x148>
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	470080e7          	jalr	1136(ra) # 800051ec <_Z11printStringPKc>
    80005d84:	00000613          	li	a2,0
    80005d88:	00a00593          	li	a1,10
    80005d8c:	0009051b          	sext.w	a0,s2
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	60c080e7          	jalr	1548(ra) # 8000539c <_Z8printIntiii>
    80005d98:	00003517          	auipc	a0,0x3
    80005d9c:	5d850513          	addi	a0,a0,1496 # 80009370 <CONSOLE_STATUS+0x360>
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	44c080e7          	jalr	1100(ra) # 800051ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005da8:	00c00513          	li	a0,12
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	d88080e7          	jalr	-632(ra) # 80005b34 <_ZL9fibonaccim>
    80005db4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005db8:	00003517          	auipc	a0,0x3
    80005dbc:	3a850513          	addi	a0,a0,936 # 80009160 <CONSOLE_STATUS+0x150>
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	42c080e7          	jalr	1068(ra) # 800051ec <_Z11printStringPKc>
    80005dc8:	00000613          	li	a2,0
    80005dcc:	00a00593          	li	a1,10
    80005dd0:	0009051b          	sext.w	a0,s2
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	5c8080e7          	jalr	1480(ra) # 8000539c <_Z8printIntiii>
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	59450513          	addi	a0,a0,1428 # 80009370 <CONSOLE_STATUS+0x360>
    80005de4:	fffff097          	auipc	ra,0xfffff
    80005de8:	408080e7          	jalr	1032(ra) # 800051ec <_Z11printStringPKc>
    80005dec:	0400006f          	j	80005e2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	35050513          	addi	a0,a0,848 # 80009140 <CONSOLE_STATUS+0x130>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	3f4080e7          	jalr	1012(ra) # 800051ec <_Z11printStringPKc>
    80005e00:	00000613          	li	a2,0
    80005e04:	00a00593          	li	a1,10
    80005e08:	00048513          	mv	a0,s1
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	590080e7          	jalr	1424(ra) # 8000539c <_Z8printIntiii>
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	55c50513          	addi	a0,a0,1372 # 80009370 <CONSOLE_STATUS+0x360>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	3d0080e7          	jalr	976(ra) # 800051ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e24:	0014849b          	addiw	s1,s1,1
    80005e28:	0ff4f493          	andi	s1,s1,255
    80005e2c:	00500793          	li	a5,5
    80005e30:	fc97f0e3          	bgeu	a5,s1,80005df0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e34:	00003517          	auipc	a0,0x3
    80005e38:	2e450513          	addi	a0,a0,740 # 80009118 <CONSOLE_STATUS+0x108>
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	3b0080e7          	jalr	944(ra) # 800051ec <_Z11printStringPKc>
    finishedC = true;
    80005e44:	00100793          	li	a5,1
    80005e48:	00006717          	auipc	a4,0x6
    80005e4c:	8ef705a3          	sb	a5,-1813(a4) # 8000b733 <_ZL9finishedC>
    thread_dispatch();
    80005e50:	ffffb097          	auipc	ra,0xffffb
    80005e54:	70c080e7          	jalr	1804(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005e58:	01813083          	ld	ra,24(sp)
    80005e5c:	01013403          	ld	s0,16(sp)
    80005e60:	00813483          	ld	s1,8(sp)
    80005e64:	00013903          	ld	s2,0(sp)
    80005e68:	02010113          	addi	sp,sp,32
    80005e6c:	00008067          	ret

0000000080005e70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e70:	fe010113          	addi	sp,sp,-32
    80005e74:	00113c23          	sd	ra,24(sp)
    80005e78:	00813823          	sd	s0,16(sp)
    80005e7c:	00913423          	sd	s1,8(sp)
    80005e80:	01213023          	sd	s2,0(sp)
    80005e84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e88:	00000913          	li	s2,0
    80005e8c:	0400006f          	j	80005ecc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	6cc080e7          	jalr	1740(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e98:	00148493          	addi	s1,s1,1
    80005e9c:	000027b7          	lui	a5,0x2
    80005ea0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005ea4:	0097ee63          	bltu	a5,s1,80005ec0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ea8:	00000713          	li	a4,0
    80005eac:	000077b7          	lui	a5,0x7
    80005eb0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005eb4:	fce7eee3          	bltu	a5,a4,80005e90 <_ZL11workerBodyBPv+0x20>
    80005eb8:	00170713          	addi	a4,a4,1
    80005ebc:	ff1ff06f          	j	80005eac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ec0:	00a00793          	li	a5,10
    80005ec4:	04f90663          	beq	s2,a5,80005f10 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ec8:	00190913          	addi	s2,s2,1
    80005ecc:	00f00793          	li	a5,15
    80005ed0:	0527e463          	bltu	a5,s2,80005f18 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	25450513          	addi	a0,a0,596 # 80009128 <CONSOLE_STATUS+0x118>
    80005edc:	fffff097          	auipc	ra,0xfffff
    80005ee0:	310080e7          	jalr	784(ra) # 800051ec <_Z11printStringPKc>
    80005ee4:	00000613          	li	a2,0
    80005ee8:	00a00593          	li	a1,10
    80005eec:	0009051b          	sext.w	a0,s2
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	4ac080e7          	jalr	1196(ra) # 8000539c <_Z8printIntiii>
    80005ef8:	00003517          	auipc	a0,0x3
    80005efc:	47850513          	addi	a0,a0,1144 # 80009370 <CONSOLE_STATUS+0x360>
    80005f00:	fffff097          	auipc	ra,0xfffff
    80005f04:	2ec080e7          	jalr	748(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f08:	00000493          	li	s1,0
    80005f0c:	f91ff06f          	j	80005e9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f10:	14102ff3          	csrr	t6,sepc
    80005f14:	fb5ff06f          	j	80005ec8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	21850513          	addi	a0,a0,536 # 80009130 <CONSOLE_STATUS+0x120>
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	2cc080e7          	jalr	716(ra) # 800051ec <_Z11printStringPKc>
    finishedB = true;
    80005f28:	00100793          	li	a5,1
    80005f2c:	00006717          	auipc	a4,0x6
    80005f30:	80f70423          	sb	a5,-2040(a4) # 8000b734 <_ZL9finishedB>
    thread_dispatch();
    80005f34:	ffffb097          	auipc	ra,0xffffb
    80005f38:	628080e7          	jalr	1576(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005f3c:	01813083          	ld	ra,24(sp)
    80005f40:	01013403          	ld	s0,16(sp)
    80005f44:	00813483          	ld	s1,8(sp)
    80005f48:	00013903          	ld	s2,0(sp)
    80005f4c:	02010113          	addi	sp,sp,32
    80005f50:	00008067          	ret

0000000080005f54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f54:	fe010113          	addi	sp,sp,-32
    80005f58:	00113c23          	sd	ra,24(sp)
    80005f5c:	00813823          	sd	s0,16(sp)
    80005f60:	00913423          	sd	s1,8(sp)
    80005f64:	01213023          	sd	s2,0(sp)
    80005f68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f6c:	00000913          	li	s2,0
    80005f70:	0380006f          	j	80005fa8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f74:	ffffb097          	auipc	ra,0xffffb
    80005f78:	5e8080e7          	jalr	1512(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f7c:	00148493          	addi	s1,s1,1
    80005f80:	000027b7          	lui	a5,0x2
    80005f84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f88:	0097ee63          	bltu	a5,s1,80005fa4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f8c:	00000713          	li	a4,0
    80005f90:	000077b7          	lui	a5,0x7
    80005f94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f98:	fce7eee3          	bltu	a5,a4,80005f74 <_ZL11workerBodyAPv+0x20>
    80005f9c:	00170713          	addi	a4,a4,1
    80005fa0:	ff1ff06f          	j	80005f90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fa4:	00190913          	addi	s2,s2,1
    80005fa8:	00900793          	li	a5,9
    80005fac:	0527e063          	bltu	a5,s2,80005fec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fb0:	00003517          	auipc	a0,0x3
    80005fb4:	16050513          	addi	a0,a0,352 # 80009110 <CONSOLE_STATUS+0x100>
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	234080e7          	jalr	564(ra) # 800051ec <_Z11printStringPKc>
    80005fc0:	00000613          	li	a2,0
    80005fc4:	00a00593          	li	a1,10
    80005fc8:	0009051b          	sext.w	a0,s2
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	3d0080e7          	jalr	976(ra) # 8000539c <_Z8printIntiii>
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	39c50513          	addi	a0,a0,924 # 80009370 <CONSOLE_STATUS+0x360>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	210080e7          	jalr	528(ra) # 800051ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fe4:	00000493          	li	s1,0
    80005fe8:	f99ff06f          	j	80005f80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	12c50513          	addi	a0,a0,300 # 80009118 <CONSOLE_STATUS+0x108>
    80005ff4:	fffff097          	auipc	ra,0xfffff
    80005ff8:	1f8080e7          	jalr	504(ra) # 800051ec <_Z11printStringPKc>
    finishedA = true;
    80005ffc:	00100793          	li	a5,1
    80006000:	00005717          	auipc	a4,0x5
    80006004:	72f70aa3          	sb	a5,1845(a4) # 8000b735 <_ZL9finishedA>
}
    80006008:	01813083          	ld	ra,24(sp)
    8000600c:	01013403          	ld	s0,16(sp)
    80006010:	00813483          	ld	s1,8(sp)
    80006014:	00013903          	ld	s2,0(sp)
    80006018:	02010113          	addi	sp,sp,32
    8000601c:	00008067          	ret

0000000080006020 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006020:	fd010113          	addi	sp,sp,-48
    80006024:	02113423          	sd	ra,40(sp)
    80006028:	02813023          	sd	s0,32(sp)
    8000602c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006030:	00000613          	li	a2,0
    80006034:	00000597          	auipc	a1,0x0
    80006038:	f2058593          	addi	a1,a1,-224 # 80005f54 <_ZL11workerBodyAPv>
    8000603c:	fd040513          	addi	a0,s0,-48
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	3f4080e7          	jalr	1012(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006048:	00003517          	auipc	a0,0x3
    8000604c:	17050513          	addi	a0,a0,368 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80006050:	fffff097          	auipc	ra,0xfffff
    80006054:	19c080e7          	jalr	412(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006058:	00000613          	li	a2,0
    8000605c:	00000597          	auipc	a1,0x0
    80006060:	e1458593          	addi	a1,a1,-492 # 80005e70 <_ZL11workerBodyBPv>
    80006064:	fd840513          	addi	a0,s0,-40
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	3cc080e7          	jalr	972(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006070:	00003517          	auipc	a0,0x3
    80006074:	16050513          	addi	a0,a0,352 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80006078:	fffff097          	auipc	ra,0xfffff
    8000607c:	174080e7          	jalr	372(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006080:	00000613          	li	a2,0
    80006084:	00000597          	auipc	a1,0x0
    80006088:	c6c58593          	addi	a1,a1,-916 # 80005cf0 <_ZL11workerBodyCPv>
    8000608c:	fe040513          	addi	a0,s0,-32
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	3a4080e7          	jalr	932(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006098:	00003517          	auipc	a0,0x3
    8000609c:	15050513          	addi	a0,a0,336 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800060a0:	fffff097          	auipc	ra,0xfffff
    800060a4:	14c080e7          	jalr	332(ra) # 800051ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060a8:	00000613          	li	a2,0
    800060ac:	00000597          	auipc	a1,0x0
    800060b0:	afc58593          	addi	a1,a1,-1284 # 80005ba8 <_ZL11workerBodyDPv>
    800060b4:	fe840513          	addi	a0,s0,-24
    800060b8:	ffffb097          	auipc	ra,0xffffb
    800060bc:	37c080e7          	jalr	892(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	14050513          	addi	a0,a0,320 # 80009200 <CONSOLE_STATUS+0x1f0>
    800060c8:	fffff097          	auipc	ra,0xfffff
    800060cc:	124080e7          	jalr	292(ra) # 800051ec <_Z11printStringPKc>
    800060d0:	00c0006f          	j	800060dc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	488080e7          	jalr	1160(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060dc:	00005797          	auipc	a5,0x5
    800060e0:	6597c783          	lbu	a5,1625(a5) # 8000b735 <_ZL9finishedA>
    800060e4:	fe0788e3          	beqz	a5,800060d4 <_Z16System_Mode_testv+0xb4>
    800060e8:	00005797          	auipc	a5,0x5
    800060ec:	64c7c783          	lbu	a5,1612(a5) # 8000b734 <_ZL9finishedB>
    800060f0:	fe0782e3          	beqz	a5,800060d4 <_Z16System_Mode_testv+0xb4>
    800060f4:	00005797          	auipc	a5,0x5
    800060f8:	63f7c783          	lbu	a5,1599(a5) # 8000b733 <_ZL9finishedC>
    800060fc:	fc078ce3          	beqz	a5,800060d4 <_Z16System_Mode_testv+0xb4>
    80006100:	00005797          	auipc	a5,0x5
    80006104:	6327c783          	lbu	a5,1586(a5) # 8000b732 <_ZL9finishedD>
    80006108:	fc0786e3          	beqz	a5,800060d4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000610c:	02813083          	ld	ra,40(sp)
    80006110:	02013403          	ld	s0,32(sp)
    80006114:	03010113          	addi	sp,sp,48
    80006118:	00008067          	ret

000000008000611c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	01213023          	sd	s2,0(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00050493          	mv	s1,a0
    80006138:	00058913          	mv	s2,a1
    8000613c:	0015879b          	addiw	a5,a1,1
    80006140:	0007851b          	sext.w	a0,a5
    80006144:	00f4a023          	sw	a5,0(s1)
    80006148:	0004a823          	sw	zero,16(s1)
    8000614c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006150:	00251513          	slli	a0,a0,0x2
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	260080e7          	jalr	608(ra) # 800013b4 <_Z9mem_allocm>
    8000615c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006160:	00000593          	li	a1,0
    80006164:	02048513          	addi	a0,s1,32
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	450080e7          	jalr	1104(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006170:	00090593          	mv	a1,s2
    80006174:	01848513          	addi	a0,s1,24
    80006178:	ffffb097          	auipc	ra,0xffffb
    8000617c:	440080e7          	jalr	1088(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006180:	00100593          	li	a1,1
    80006184:	02848513          	addi	a0,s1,40
    80006188:	ffffb097          	auipc	ra,0xffffb
    8000618c:	430080e7          	jalr	1072(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006190:	00100593          	li	a1,1
    80006194:	03048513          	addi	a0,s1,48
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	420080e7          	jalr	1056(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	00813483          	ld	s1,8(sp)
    800061ac:	00013903          	ld	s2,0(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret

00000000800061b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061b8:	fe010113          	addi	sp,sp,-32
    800061bc:	00113c23          	sd	ra,24(sp)
    800061c0:	00813823          	sd	s0,16(sp)
    800061c4:	00913423          	sd	s1,8(sp)
    800061c8:	01213023          	sd	s2,0(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00050493          	mv	s1,a0
    800061d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061d8:	01853503          	ld	a0,24(a0)
    800061dc:	ffffb097          	auipc	ra,0xffffb
    800061e0:	46c080e7          	jalr	1132(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800061e4:	0304b503          	ld	a0,48(s1)
    800061e8:	ffffb097          	auipc	ra,0xffffb
    800061ec:	460080e7          	jalr	1120(ra) # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800061f0:	0084b783          	ld	a5,8(s1)
    800061f4:	0144a703          	lw	a4,20(s1)
    800061f8:	00271713          	slli	a4,a4,0x2
    800061fc:	00e787b3          	add	a5,a5,a4
    80006200:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006204:	0144a783          	lw	a5,20(s1)
    80006208:	0017879b          	addiw	a5,a5,1
    8000620c:	0004a703          	lw	a4,0(s1)
    80006210:	02e7e7bb          	remw	a5,a5,a4
    80006214:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006218:	0304b503          	ld	a0,48(s1)
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	478080e7          	jalr	1144(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006224:	0204b503          	ld	a0,32(s1)
    80006228:	ffffb097          	auipc	ra,0xffffb
    8000622c:	46c080e7          	jalr	1132(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006230:	01813083          	ld	ra,24(sp)
    80006234:	01013403          	ld	s0,16(sp)
    80006238:	00813483          	ld	s1,8(sp)
    8000623c:	00013903          	ld	s2,0(sp)
    80006240:	02010113          	addi	sp,sp,32
    80006244:	00008067          	ret

0000000080006248 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006248:	fe010113          	addi	sp,sp,-32
    8000624c:	00113c23          	sd	ra,24(sp)
    80006250:	00813823          	sd	s0,16(sp)
    80006254:	00913423          	sd	s1,8(sp)
    80006258:	01213023          	sd	s2,0(sp)
    8000625c:	02010413          	addi	s0,sp,32
    80006260:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006264:	02053503          	ld	a0,32(a0)
    80006268:	ffffb097          	auipc	ra,0xffffb
    8000626c:	3e0080e7          	jalr	992(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006270:	0284b503          	ld	a0,40(s1)
    80006274:	ffffb097          	auipc	ra,0xffffb
    80006278:	3d4080e7          	jalr	980(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000627c:	0084b703          	ld	a4,8(s1)
    80006280:	0104a783          	lw	a5,16(s1)
    80006284:	00279693          	slli	a3,a5,0x2
    80006288:	00d70733          	add	a4,a4,a3
    8000628c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006290:	0017879b          	addiw	a5,a5,1
    80006294:	0004a703          	lw	a4,0(s1)
    80006298:	02e7e7bb          	remw	a5,a5,a4
    8000629c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062a0:	0284b503          	ld	a0,40(s1)
    800062a4:	ffffb097          	auipc	ra,0xffffb
    800062a8:	3f0080e7          	jalr	1008(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800062ac:	0184b503          	ld	a0,24(s1)
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	3e4080e7          	jalr	996(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    800062b8:	00090513          	mv	a0,s2
    800062bc:	01813083          	ld	ra,24(sp)
    800062c0:	01013403          	ld	s0,16(sp)
    800062c4:	00813483          	ld	s1,8(sp)
    800062c8:	00013903          	ld	s2,0(sp)
    800062cc:	02010113          	addi	sp,sp,32
    800062d0:	00008067          	ret

00000000800062d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062d4:	fe010113          	addi	sp,sp,-32
    800062d8:	00113c23          	sd	ra,24(sp)
    800062dc:	00813823          	sd	s0,16(sp)
    800062e0:	00913423          	sd	s1,8(sp)
    800062e4:	01213023          	sd	s2,0(sp)
    800062e8:	02010413          	addi	s0,sp,32
    800062ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062f0:	02853503          	ld	a0,40(a0)
    800062f4:	ffffb097          	auipc	ra,0xffffb
    800062f8:	354080e7          	jalr	852(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800062fc:	0304b503          	ld	a0,48(s1)
    80006300:	ffffb097          	auipc	ra,0xffffb
    80006304:	348080e7          	jalr	840(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006308:	0144a783          	lw	a5,20(s1)
    8000630c:	0104a903          	lw	s2,16(s1)
    80006310:	0327ce63          	blt	a5,s2,8000634c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006314:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006318:	0304b503          	ld	a0,48(s1)
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	378080e7          	jalr	888(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006324:	0284b503          	ld	a0,40(s1)
    80006328:	ffffb097          	auipc	ra,0xffffb
    8000632c:	36c080e7          	jalr	876(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006330:	00090513          	mv	a0,s2
    80006334:	01813083          	ld	ra,24(sp)
    80006338:	01013403          	ld	s0,16(sp)
    8000633c:	00813483          	ld	s1,8(sp)
    80006340:	00013903          	ld	s2,0(sp)
    80006344:	02010113          	addi	sp,sp,32
    80006348:	00008067          	ret
        ret = cap - head + tail;
    8000634c:	0004a703          	lw	a4,0(s1)
    80006350:	4127093b          	subw	s2,a4,s2
    80006354:	00f9093b          	addw	s2,s2,a5
    80006358:	fc1ff06f          	j	80006318 <_ZN6Buffer6getCntEv+0x44>

000000008000635c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	02010413          	addi	s0,sp,32
    80006370:	00050493          	mv	s1,a0
    putc('\n');
    80006374:	00a00513          	li	a0,10
    80006378:	ffffb097          	auipc	ra,0xffffb
    8000637c:	3a4080e7          	jalr	932(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006380:	00003517          	auipc	a0,0x3
    80006384:	e9850513          	addi	a0,a0,-360 # 80009218 <CONSOLE_STATUS+0x208>
    80006388:	fffff097          	auipc	ra,0xfffff
    8000638c:	e64080e7          	jalr	-412(ra) # 800051ec <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006390:	00048513          	mv	a0,s1
    80006394:	00000097          	auipc	ra,0x0
    80006398:	f40080e7          	jalr	-192(ra) # 800062d4 <_ZN6Buffer6getCntEv>
    8000639c:	02a05c63          	blez	a0,800063d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063a0:	0084b783          	ld	a5,8(s1)
    800063a4:	0104a703          	lw	a4,16(s1)
    800063a8:	00271713          	slli	a4,a4,0x2
    800063ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063b0:	0007c503          	lbu	a0,0(a5)
    800063b4:	ffffb097          	auipc	ra,0xffffb
    800063b8:	368080e7          	jalr	872(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    800063bc:	0104a783          	lw	a5,16(s1)
    800063c0:	0017879b          	addiw	a5,a5,1
    800063c4:	0004a703          	lw	a4,0(s1)
    800063c8:	02e7e7bb          	remw	a5,a5,a4
    800063cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063d0:	fc1ff06f          	j	80006390 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063d4:	02100513          	li	a0,33
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	344080e7          	jalr	836(ra) # 8000171c <_Z4putcc>
    putc('\n');
    800063e0:	00a00513          	li	a0,10
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	338080e7          	jalr	824(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    800063ec:	0084b503          	ld	a0,8(s1)
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	004080e7          	jalr	4(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063f8:	0204b503          	ld	a0,32(s1)
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	200080e7          	jalr	512(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006404:	0184b503          	ld	a0,24(s1)
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	1f4080e7          	jalr	500(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006410:	0304b503          	ld	a0,48(s1)
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	1e8080e7          	jalr	488(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000641c:	0284b503          	ld	a0,40(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	1dc080e7          	jalr	476(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80006428:	01813083          	ld	ra,24(sp)
    8000642c:	01013403          	ld	s0,16(sp)
    80006430:	00813483          	ld	s1,8(sp)
    80006434:	02010113          	addi	sp,sp,32
    80006438:	00008067          	ret

000000008000643c <start>:
    8000643c:	ff010113          	addi	sp,sp,-16
    80006440:	00813423          	sd	s0,8(sp)
    80006444:	01010413          	addi	s0,sp,16
    80006448:	300027f3          	csrr	a5,mstatus
    8000644c:	ffffe737          	lui	a4,0xffffe
    80006450:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e5f>
    80006454:	00e7f7b3          	and	a5,a5,a4
    80006458:	00001737          	lui	a4,0x1
    8000645c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006460:	00e7e7b3          	or	a5,a5,a4
    80006464:	30079073          	csrw	mstatus,a5
    80006468:	00000797          	auipc	a5,0x0
    8000646c:	16078793          	addi	a5,a5,352 # 800065c8 <system_main>
    80006470:	34179073          	csrw	mepc,a5
    80006474:	00000793          	li	a5,0
    80006478:	18079073          	csrw	satp,a5
    8000647c:	000107b7          	lui	a5,0x10
    80006480:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006484:	30279073          	csrw	medeleg,a5
    80006488:	30379073          	csrw	mideleg,a5
    8000648c:	104027f3          	csrr	a5,sie
    80006490:	2227e793          	ori	a5,a5,546
    80006494:	10479073          	csrw	sie,a5
    80006498:	fff00793          	li	a5,-1
    8000649c:	00a7d793          	srli	a5,a5,0xa
    800064a0:	3b079073          	csrw	pmpaddr0,a5
    800064a4:	00f00793          	li	a5,15
    800064a8:	3a079073          	csrw	pmpcfg0,a5
    800064ac:	f14027f3          	csrr	a5,mhartid
    800064b0:	0200c737          	lui	a4,0x200c
    800064b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064b8:	0007869b          	sext.w	a3,a5
    800064bc:	00269713          	slli	a4,a3,0x2
    800064c0:	000f4637          	lui	a2,0xf4
    800064c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064c8:	00d70733          	add	a4,a4,a3
    800064cc:	0037979b          	slliw	a5,a5,0x3
    800064d0:	020046b7          	lui	a3,0x2004
    800064d4:	00d787b3          	add	a5,a5,a3
    800064d8:	00c585b3          	add	a1,a1,a2
    800064dc:	00371693          	slli	a3,a4,0x3
    800064e0:	00005717          	auipc	a4,0x5
    800064e4:	26070713          	addi	a4,a4,608 # 8000b740 <timer_scratch>
    800064e8:	00b7b023          	sd	a1,0(a5)
    800064ec:	00d70733          	add	a4,a4,a3
    800064f0:	00f73c23          	sd	a5,24(a4)
    800064f4:	02c73023          	sd	a2,32(a4)
    800064f8:	34071073          	csrw	mscratch,a4
    800064fc:	00000797          	auipc	a5,0x0
    80006500:	6e478793          	addi	a5,a5,1764 # 80006be0 <timervec>
    80006504:	30579073          	csrw	mtvec,a5
    80006508:	300027f3          	csrr	a5,mstatus
    8000650c:	0087e793          	ori	a5,a5,8
    80006510:	30079073          	csrw	mstatus,a5
    80006514:	304027f3          	csrr	a5,mie
    80006518:	0807e793          	ori	a5,a5,128
    8000651c:	30479073          	csrw	mie,a5
    80006520:	f14027f3          	csrr	a5,mhartid
    80006524:	0007879b          	sext.w	a5,a5
    80006528:	00078213          	mv	tp,a5
    8000652c:	30200073          	mret
    80006530:	00813403          	ld	s0,8(sp)
    80006534:	01010113          	addi	sp,sp,16
    80006538:	00008067          	ret

000000008000653c <timerinit>:
    8000653c:	ff010113          	addi	sp,sp,-16
    80006540:	00813423          	sd	s0,8(sp)
    80006544:	01010413          	addi	s0,sp,16
    80006548:	f14027f3          	csrr	a5,mhartid
    8000654c:	0200c737          	lui	a4,0x200c
    80006550:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006554:	0007869b          	sext.w	a3,a5
    80006558:	00269713          	slli	a4,a3,0x2
    8000655c:	000f4637          	lui	a2,0xf4
    80006560:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006564:	00d70733          	add	a4,a4,a3
    80006568:	0037979b          	slliw	a5,a5,0x3
    8000656c:	020046b7          	lui	a3,0x2004
    80006570:	00d787b3          	add	a5,a5,a3
    80006574:	00c585b3          	add	a1,a1,a2
    80006578:	00371693          	slli	a3,a4,0x3
    8000657c:	00005717          	auipc	a4,0x5
    80006580:	1c470713          	addi	a4,a4,452 # 8000b740 <timer_scratch>
    80006584:	00b7b023          	sd	a1,0(a5)
    80006588:	00d70733          	add	a4,a4,a3
    8000658c:	00f73c23          	sd	a5,24(a4)
    80006590:	02c73023          	sd	a2,32(a4)
    80006594:	34071073          	csrw	mscratch,a4
    80006598:	00000797          	auipc	a5,0x0
    8000659c:	64878793          	addi	a5,a5,1608 # 80006be0 <timervec>
    800065a0:	30579073          	csrw	mtvec,a5
    800065a4:	300027f3          	csrr	a5,mstatus
    800065a8:	0087e793          	ori	a5,a5,8
    800065ac:	30079073          	csrw	mstatus,a5
    800065b0:	304027f3          	csrr	a5,mie
    800065b4:	0807e793          	ori	a5,a5,128
    800065b8:	30479073          	csrw	mie,a5
    800065bc:	00813403          	ld	s0,8(sp)
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret

00000000800065c8 <system_main>:
    800065c8:	fe010113          	addi	sp,sp,-32
    800065cc:	00813823          	sd	s0,16(sp)
    800065d0:	00913423          	sd	s1,8(sp)
    800065d4:	00113c23          	sd	ra,24(sp)
    800065d8:	02010413          	addi	s0,sp,32
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	0c4080e7          	jalr	196(ra) # 800066a0 <cpuid>
    800065e4:	00005497          	auipc	s1,0x5
    800065e8:	09c48493          	addi	s1,s1,156 # 8000b680 <started>
    800065ec:	02050263          	beqz	a0,80006610 <system_main+0x48>
    800065f0:	0004a783          	lw	a5,0(s1)
    800065f4:	0007879b          	sext.w	a5,a5
    800065f8:	fe078ce3          	beqz	a5,800065f0 <system_main+0x28>
    800065fc:	0ff0000f          	fence
    80006600:	00003517          	auipc	a0,0x3
    80006604:	ee850513          	addi	a0,a0,-280 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006608:	00001097          	auipc	ra,0x1
    8000660c:	a74080e7          	jalr	-1420(ra) # 8000707c <panic>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	9c8080e7          	jalr	-1592(ra) # 80006fd8 <consoleinit>
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	154080e7          	jalr	340(ra) # 8000776c <printfinit>
    80006620:	00003517          	auipc	a0,0x3
    80006624:	d5050513          	addi	a0,a0,-688 # 80009370 <CONSOLE_STATUS+0x360>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	ab0080e7          	jalr	-1360(ra) # 800070d8 <__printf>
    80006630:	00003517          	auipc	a0,0x3
    80006634:	e8850513          	addi	a0,a0,-376 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	aa0080e7          	jalr	-1376(ra) # 800070d8 <__printf>
    80006640:	00003517          	auipc	a0,0x3
    80006644:	d3050513          	addi	a0,a0,-720 # 80009370 <CONSOLE_STATUS+0x360>
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	a90080e7          	jalr	-1392(ra) # 800070d8 <__printf>
    80006650:	00001097          	auipc	ra,0x1
    80006654:	4a8080e7          	jalr	1192(ra) # 80007af8 <kinit>
    80006658:	00000097          	auipc	ra,0x0
    8000665c:	148080e7          	jalr	328(ra) # 800067a0 <trapinit>
    80006660:	00000097          	auipc	ra,0x0
    80006664:	16c080e7          	jalr	364(ra) # 800067cc <trapinithart>
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	5b8080e7          	jalr	1464(ra) # 80006c20 <plicinit>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	5d8080e7          	jalr	1496(ra) # 80006c48 <plicinithart>
    80006678:	00000097          	auipc	ra,0x0
    8000667c:	078080e7          	jalr	120(ra) # 800066f0 <userinit>
    80006680:	0ff0000f          	fence
    80006684:	00100793          	li	a5,1
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	e4850513          	addi	a0,a0,-440 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006690:	00f4a023          	sw	a5,0(s1)
    80006694:	00001097          	auipc	ra,0x1
    80006698:	a44080e7          	jalr	-1468(ra) # 800070d8 <__printf>
    8000669c:	0000006f          	j	8000669c <system_main+0xd4>

00000000800066a0 <cpuid>:
    800066a0:	ff010113          	addi	sp,sp,-16
    800066a4:	00813423          	sd	s0,8(sp)
    800066a8:	01010413          	addi	s0,sp,16
    800066ac:	00020513          	mv	a0,tp
    800066b0:	00813403          	ld	s0,8(sp)
    800066b4:	0005051b          	sext.w	a0,a0
    800066b8:	01010113          	addi	sp,sp,16
    800066bc:	00008067          	ret

00000000800066c0 <mycpu>:
    800066c0:	ff010113          	addi	sp,sp,-16
    800066c4:	00813423          	sd	s0,8(sp)
    800066c8:	01010413          	addi	s0,sp,16
    800066cc:	00020793          	mv	a5,tp
    800066d0:	00813403          	ld	s0,8(sp)
    800066d4:	0007879b          	sext.w	a5,a5
    800066d8:	00779793          	slli	a5,a5,0x7
    800066dc:	00006517          	auipc	a0,0x6
    800066e0:	09450513          	addi	a0,a0,148 # 8000c770 <cpus>
    800066e4:	00f50533          	add	a0,a0,a5
    800066e8:	01010113          	addi	sp,sp,16
    800066ec:	00008067          	ret

00000000800066f0 <userinit>:
    800066f0:	ff010113          	addi	sp,sp,-16
    800066f4:	00813423          	sd	s0,8(sp)
    800066f8:	01010413          	addi	s0,sp,16
    800066fc:	00813403          	ld	s0,8(sp)
    80006700:	01010113          	addi	sp,sp,16
    80006704:	ffffb317          	auipc	t1,0xffffb
    80006708:	16830067          	jr	360(t1) # 8000186c <main>

000000008000670c <either_copyout>:
    8000670c:	ff010113          	addi	sp,sp,-16
    80006710:	00813023          	sd	s0,0(sp)
    80006714:	00113423          	sd	ra,8(sp)
    80006718:	01010413          	addi	s0,sp,16
    8000671c:	02051663          	bnez	a0,80006748 <either_copyout+0x3c>
    80006720:	00058513          	mv	a0,a1
    80006724:	00060593          	mv	a1,a2
    80006728:	0006861b          	sext.w	a2,a3
    8000672c:	00002097          	auipc	ra,0x2
    80006730:	c58080e7          	jalr	-936(ra) # 80008384 <__memmove>
    80006734:	00813083          	ld	ra,8(sp)
    80006738:	00013403          	ld	s0,0(sp)
    8000673c:	00000513          	li	a0,0
    80006740:	01010113          	addi	sp,sp,16
    80006744:	00008067          	ret
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	dc850513          	addi	a0,a0,-568 # 80009510 <CONSOLE_STATUS+0x500>
    80006750:	00001097          	auipc	ra,0x1
    80006754:	92c080e7          	jalr	-1748(ra) # 8000707c <panic>

0000000080006758 <either_copyin>:
    80006758:	ff010113          	addi	sp,sp,-16
    8000675c:	00813023          	sd	s0,0(sp)
    80006760:	00113423          	sd	ra,8(sp)
    80006764:	01010413          	addi	s0,sp,16
    80006768:	02059463          	bnez	a1,80006790 <either_copyin+0x38>
    8000676c:	00060593          	mv	a1,a2
    80006770:	0006861b          	sext.w	a2,a3
    80006774:	00002097          	auipc	ra,0x2
    80006778:	c10080e7          	jalr	-1008(ra) # 80008384 <__memmove>
    8000677c:	00813083          	ld	ra,8(sp)
    80006780:	00013403          	ld	s0,0(sp)
    80006784:	00000513          	li	a0,0
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	00008067          	ret
    80006790:	00003517          	auipc	a0,0x3
    80006794:	da850513          	addi	a0,a0,-600 # 80009538 <CONSOLE_STATUS+0x528>
    80006798:	00001097          	auipc	ra,0x1
    8000679c:	8e4080e7          	jalr	-1820(ra) # 8000707c <panic>

00000000800067a0 <trapinit>:
    800067a0:	ff010113          	addi	sp,sp,-16
    800067a4:	00813423          	sd	s0,8(sp)
    800067a8:	01010413          	addi	s0,sp,16
    800067ac:	00813403          	ld	s0,8(sp)
    800067b0:	00003597          	auipc	a1,0x3
    800067b4:	db058593          	addi	a1,a1,-592 # 80009560 <CONSOLE_STATUS+0x550>
    800067b8:	00006517          	auipc	a0,0x6
    800067bc:	03850513          	addi	a0,a0,56 # 8000c7f0 <tickslock>
    800067c0:	01010113          	addi	sp,sp,16
    800067c4:	00001317          	auipc	t1,0x1
    800067c8:	5c430067          	jr	1476(t1) # 80007d88 <initlock>

00000000800067cc <trapinithart>:
    800067cc:	ff010113          	addi	sp,sp,-16
    800067d0:	00813423          	sd	s0,8(sp)
    800067d4:	01010413          	addi	s0,sp,16
    800067d8:	00000797          	auipc	a5,0x0
    800067dc:	2f878793          	addi	a5,a5,760 # 80006ad0 <kernelvec>
    800067e0:	10579073          	csrw	stvec,a5
    800067e4:	00813403          	ld	s0,8(sp)
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret

00000000800067f0 <usertrap>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813423          	sd	s0,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret

0000000080006808 <usertrapret>:
    80006808:	ff010113          	addi	sp,sp,-16
    8000680c:	00813423          	sd	s0,8(sp)
    80006810:	01010413          	addi	s0,sp,16
    80006814:	00813403          	ld	s0,8(sp)
    80006818:	01010113          	addi	sp,sp,16
    8000681c:	00008067          	ret

0000000080006820 <kerneltrap>:
    80006820:	fe010113          	addi	sp,sp,-32
    80006824:	00813823          	sd	s0,16(sp)
    80006828:	00113c23          	sd	ra,24(sp)
    8000682c:	00913423          	sd	s1,8(sp)
    80006830:	02010413          	addi	s0,sp,32
    80006834:	142025f3          	csrr	a1,scause
    80006838:	100027f3          	csrr	a5,sstatus
    8000683c:	0027f793          	andi	a5,a5,2
    80006840:	10079c63          	bnez	a5,80006958 <kerneltrap+0x138>
    80006844:	142027f3          	csrr	a5,scause
    80006848:	0207ce63          	bltz	a5,80006884 <kerneltrap+0x64>
    8000684c:	00003517          	auipc	a0,0x3
    80006850:	d5c50513          	addi	a0,a0,-676 # 800095a8 <CONSOLE_STATUS+0x598>
    80006854:	00001097          	auipc	ra,0x1
    80006858:	884080e7          	jalr	-1916(ra) # 800070d8 <__printf>
    8000685c:	141025f3          	csrr	a1,sepc
    80006860:	14302673          	csrr	a2,stval
    80006864:	00003517          	auipc	a0,0x3
    80006868:	d5450513          	addi	a0,a0,-684 # 800095b8 <CONSOLE_STATUS+0x5a8>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	86c080e7          	jalr	-1940(ra) # 800070d8 <__printf>
    80006874:	00003517          	auipc	a0,0x3
    80006878:	d5c50513          	addi	a0,a0,-676 # 800095d0 <CONSOLE_STATUS+0x5c0>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	800080e7          	jalr	-2048(ra) # 8000707c <panic>
    80006884:	0ff7f713          	andi	a4,a5,255
    80006888:	00900693          	li	a3,9
    8000688c:	04d70063          	beq	a4,a3,800068cc <kerneltrap+0xac>
    80006890:	fff00713          	li	a4,-1
    80006894:	03f71713          	slli	a4,a4,0x3f
    80006898:	00170713          	addi	a4,a4,1
    8000689c:	fae798e3          	bne	a5,a4,8000684c <kerneltrap+0x2c>
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	e00080e7          	jalr	-512(ra) # 800066a0 <cpuid>
    800068a8:	06050663          	beqz	a0,80006914 <kerneltrap+0xf4>
    800068ac:	144027f3          	csrr	a5,sip
    800068b0:	ffd7f793          	andi	a5,a5,-3
    800068b4:	14479073          	csrw	sip,a5
    800068b8:	01813083          	ld	ra,24(sp)
    800068bc:	01013403          	ld	s0,16(sp)
    800068c0:	00813483          	ld	s1,8(sp)
    800068c4:	02010113          	addi	sp,sp,32
    800068c8:	00008067          	ret
    800068cc:	00000097          	auipc	ra,0x0
    800068d0:	3c8080e7          	jalr	968(ra) # 80006c94 <plic_claim>
    800068d4:	00a00793          	li	a5,10
    800068d8:	00050493          	mv	s1,a0
    800068dc:	06f50863          	beq	a0,a5,8000694c <kerneltrap+0x12c>
    800068e0:	fc050ce3          	beqz	a0,800068b8 <kerneltrap+0x98>
    800068e4:	00050593          	mv	a1,a0
    800068e8:	00003517          	auipc	a0,0x3
    800068ec:	ca050513          	addi	a0,a0,-864 # 80009588 <CONSOLE_STATUS+0x578>
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	7e8080e7          	jalr	2024(ra) # 800070d8 <__printf>
    800068f8:	01013403          	ld	s0,16(sp)
    800068fc:	01813083          	ld	ra,24(sp)
    80006900:	00048513          	mv	a0,s1
    80006904:	00813483          	ld	s1,8(sp)
    80006908:	02010113          	addi	sp,sp,32
    8000690c:	00000317          	auipc	t1,0x0
    80006910:	3c030067          	jr	960(t1) # 80006ccc <plic_complete>
    80006914:	00006517          	auipc	a0,0x6
    80006918:	edc50513          	addi	a0,a0,-292 # 8000c7f0 <tickslock>
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	490080e7          	jalr	1168(ra) # 80007dac <acquire>
    80006924:	00005717          	auipc	a4,0x5
    80006928:	d6070713          	addi	a4,a4,-672 # 8000b684 <ticks>
    8000692c:	00072783          	lw	a5,0(a4)
    80006930:	00006517          	auipc	a0,0x6
    80006934:	ec050513          	addi	a0,a0,-320 # 8000c7f0 <tickslock>
    80006938:	0017879b          	addiw	a5,a5,1
    8000693c:	00f72023          	sw	a5,0(a4)
    80006940:	00001097          	auipc	ra,0x1
    80006944:	538080e7          	jalr	1336(ra) # 80007e78 <release>
    80006948:	f65ff06f          	j	800068ac <kerneltrap+0x8c>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	094080e7          	jalr	148(ra) # 800079e0 <uartintr>
    80006954:	fa5ff06f          	j	800068f8 <kerneltrap+0xd8>
    80006958:	00003517          	auipc	a0,0x3
    8000695c:	c1050513          	addi	a0,a0,-1008 # 80009568 <CONSOLE_STATUS+0x558>
    80006960:	00000097          	auipc	ra,0x0
    80006964:	71c080e7          	jalr	1820(ra) # 8000707c <panic>

0000000080006968 <clockintr>:
    80006968:	fe010113          	addi	sp,sp,-32
    8000696c:	00813823          	sd	s0,16(sp)
    80006970:	00913423          	sd	s1,8(sp)
    80006974:	00113c23          	sd	ra,24(sp)
    80006978:	02010413          	addi	s0,sp,32
    8000697c:	00006497          	auipc	s1,0x6
    80006980:	e7448493          	addi	s1,s1,-396 # 8000c7f0 <tickslock>
    80006984:	00048513          	mv	a0,s1
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	424080e7          	jalr	1060(ra) # 80007dac <acquire>
    80006990:	00005717          	auipc	a4,0x5
    80006994:	cf470713          	addi	a4,a4,-780 # 8000b684 <ticks>
    80006998:	00072783          	lw	a5,0(a4)
    8000699c:	01013403          	ld	s0,16(sp)
    800069a0:	01813083          	ld	ra,24(sp)
    800069a4:	00048513          	mv	a0,s1
    800069a8:	0017879b          	addiw	a5,a5,1
    800069ac:	00813483          	ld	s1,8(sp)
    800069b0:	00f72023          	sw	a5,0(a4)
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00001317          	auipc	t1,0x1
    800069bc:	4c030067          	jr	1216(t1) # 80007e78 <release>

00000000800069c0 <devintr>:
    800069c0:	142027f3          	csrr	a5,scause
    800069c4:	00000513          	li	a0,0
    800069c8:	0007c463          	bltz	a5,800069d0 <devintr+0x10>
    800069cc:	00008067          	ret
    800069d0:	fe010113          	addi	sp,sp,-32
    800069d4:	00813823          	sd	s0,16(sp)
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00913423          	sd	s1,8(sp)
    800069e0:	02010413          	addi	s0,sp,32
    800069e4:	0ff7f713          	andi	a4,a5,255
    800069e8:	00900693          	li	a3,9
    800069ec:	04d70c63          	beq	a4,a3,80006a44 <devintr+0x84>
    800069f0:	fff00713          	li	a4,-1
    800069f4:	03f71713          	slli	a4,a4,0x3f
    800069f8:	00170713          	addi	a4,a4,1
    800069fc:	00e78c63          	beq	a5,a4,80006a14 <devintr+0x54>
    80006a00:	01813083          	ld	ra,24(sp)
    80006a04:	01013403          	ld	s0,16(sp)
    80006a08:	00813483          	ld	s1,8(sp)
    80006a0c:	02010113          	addi	sp,sp,32
    80006a10:	00008067          	ret
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	c8c080e7          	jalr	-884(ra) # 800066a0 <cpuid>
    80006a1c:	06050663          	beqz	a0,80006a88 <devintr+0xc8>
    80006a20:	144027f3          	csrr	a5,sip
    80006a24:	ffd7f793          	andi	a5,a5,-3
    80006a28:	14479073          	csrw	sip,a5
    80006a2c:	01813083          	ld	ra,24(sp)
    80006a30:	01013403          	ld	s0,16(sp)
    80006a34:	00813483          	ld	s1,8(sp)
    80006a38:	00200513          	li	a0,2
    80006a3c:	02010113          	addi	sp,sp,32
    80006a40:	00008067          	ret
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	250080e7          	jalr	592(ra) # 80006c94 <plic_claim>
    80006a4c:	00a00793          	li	a5,10
    80006a50:	00050493          	mv	s1,a0
    80006a54:	06f50663          	beq	a0,a5,80006ac0 <devintr+0x100>
    80006a58:	00100513          	li	a0,1
    80006a5c:	fa0482e3          	beqz	s1,80006a00 <devintr+0x40>
    80006a60:	00048593          	mv	a1,s1
    80006a64:	00003517          	auipc	a0,0x3
    80006a68:	b2450513          	addi	a0,a0,-1244 # 80009588 <CONSOLE_STATUS+0x578>
    80006a6c:	00000097          	auipc	ra,0x0
    80006a70:	66c080e7          	jalr	1644(ra) # 800070d8 <__printf>
    80006a74:	00048513          	mv	a0,s1
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	254080e7          	jalr	596(ra) # 80006ccc <plic_complete>
    80006a80:	00100513          	li	a0,1
    80006a84:	f7dff06f          	j	80006a00 <devintr+0x40>
    80006a88:	00006517          	auipc	a0,0x6
    80006a8c:	d6850513          	addi	a0,a0,-664 # 8000c7f0 <tickslock>
    80006a90:	00001097          	auipc	ra,0x1
    80006a94:	31c080e7          	jalr	796(ra) # 80007dac <acquire>
    80006a98:	00005717          	auipc	a4,0x5
    80006a9c:	bec70713          	addi	a4,a4,-1044 # 8000b684 <ticks>
    80006aa0:	00072783          	lw	a5,0(a4)
    80006aa4:	00006517          	auipc	a0,0x6
    80006aa8:	d4c50513          	addi	a0,a0,-692 # 8000c7f0 <tickslock>
    80006aac:	0017879b          	addiw	a5,a5,1
    80006ab0:	00f72023          	sw	a5,0(a4)
    80006ab4:	00001097          	auipc	ra,0x1
    80006ab8:	3c4080e7          	jalr	964(ra) # 80007e78 <release>
    80006abc:	f65ff06f          	j	80006a20 <devintr+0x60>
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	f20080e7          	jalr	-224(ra) # 800079e0 <uartintr>
    80006ac8:	fadff06f          	j	80006a74 <devintr+0xb4>
    80006acc:	0000                	unimp
	...

0000000080006ad0 <kernelvec>:
    80006ad0:	f0010113          	addi	sp,sp,-256
    80006ad4:	00113023          	sd	ra,0(sp)
    80006ad8:	00213423          	sd	sp,8(sp)
    80006adc:	00313823          	sd	gp,16(sp)
    80006ae0:	00413c23          	sd	tp,24(sp)
    80006ae4:	02513023          	sd	t0,32(sp)
    80006ae8:	02613423          	sd	t1,40(sp)
    80006aec:	02713823          	sd	t2,48(sp)
    80006af0:	02813c23          	sd	s0,56(sp)
    80006af4:	04913023          	sd	s1,64(sp)
    80006af8:	04a13423          	sd	a0,72(sp)
    80006afc:	04b13823          	sd	a1,80(sp)
    80006b00:	04c13c23          	sd	a2,88(sp)
    80006b04:	06d13023          	sd	a3,96(sp)
    80006b08:	06e13423          	sd	a4,104(sp)
    80006b0c:	06f13823          	sd	a5,112(sp)
    80006b10:	07013c23          	sd	a6,120(sp)
    80006b14:	09113023          	sd	a7,128(sp)
    80006b18:	09213423          	sd	s2,136(sp)
    80006b1c:	09313823          	sd	s3,144(sp)
    80006b20:	09413c23          	sd	s4,152(sp)
    80006b24:	0b513023          	sd	s5,160(sp)
    80006b28:	0b613423          	sd	s6,168(sp)
    80006b2c:	0b713823          	sd	s7,176(sp)
    80006b30:	0b813c23          	sd	s8,184(sp)
    80006b34:	0d913023          	sd	s9,192(sp)
    80006b38:	0da13423          	sd	s10,200(sp)
    80006b3c:	0db13823          	sd	s11,208(sp)
    80006b40:	0dc13c23          	sd	t3,216(sp)
    80006b44:	0fd13023          	sd	t4,224(sp)
    80006b48:	0fe13423          	sd	t5,232(sp)
    80006b4c:	0ff13823          	sd	t6,240(sp)
    80006b50:	cd1ff0ef          	jal	ra,80006820 <kerneltrap>
    80006b54:	00013083          	ld	ra,0(sp)
    80006b58:	00813103          	ld	sp,8(sp)
    80006b5c:	01013183          	ld	gp,16(sp)
    80006b60:	02013283          	ld	t0,32(sp)
    80006b64:	02813303          	ld	t1,40(sp)
    80006b68:	03013383          	ld	t2,48(sp)
    80006b6c:	03813403          	ld	s0,56(sp)
    80006b70:	04013483          	ld	s1,64(sp)
    80006b74:	04813503          	ld	a0,72(sp)
    80006b78:	05013583          	ld	a1,80(sp)
    80006b7c:	05813603          	ld	a2,88(sp)
    80006b80:	06013683          	ld	a3,96(sp)
    80006b84:	06813703          	ld	a4,104(sp)
    80006b88:	07013783          	ld	a5,112(sp)
    80006b8c:	07813803          	ld	a6,120(sp)
    80006b90:	08013883          	ld	a7,128(sp)
    80006b94:	08813903          	ld	s2,136(sp)
    80006b98:	09013983          	ld	s3,144(sp)
    80006b9c:	09813a03          	ld	s4,152(sp)
    80006ba0:	0a013a83          	ld	s5,160(sp)
    80006ba4:	0a813b03          	ld	s6,168(sp)
    80006ba8:	0b013b83          	ld	s7,176(sp)
    80006bac:	0b813c03          	ld	s8,184(sp)
    80006bb0:	0c013c83          	ld	s9,192(sp)
    80006bb4:	0c813d03          	ld	s10,200(sp)
    80006bb8:	0d013d83          	ld	s11,208(sp)
    80006bbc:	0d813e03          	ld	t3,216(sp)
    80006bc0:	0e013e83          	ld	t4,224(sp)
    80006bc4:	0e813f03          	ld	t5,232(sp)
    80006bc8:	0f013f83          	ld	t6,240(sp)
    80006bcc:	10010113          	addi	sp,sp,256
    80006bd0:	10200073          	sret
    80006bd4:	00000013          	nop
    80006bd8:	00000013          	nop
    80006bdc:	00000013          	nop

0000000080006be0 <timervec>:
    80006be0:	34051573          	csrrw	a0,mscratch,a0
    80006be4:	00b53023          	sd	a1,0(a0)
    80006be8:	00c53423          	sd	a2,8(a0)
    80006bec:	00d53823          	sd	a3,16(a0)
    80006bf0:	01853583          	ld	a1,24(a0)
    80006bf4:	02053603          	ld	a2,32(a0)
    80006bf8:	0005b683          	ld	a3,0(a1)
    80006bfc:	00c686b3          	add	a3,a3,a2
    80006c00:	00d5b023          	sd	a3,0(a1)
    80006c04:	00200593          	li	a1,2
    80006c08:	14459073          	csrw	sip,a1
    80006c0c:	01053683          	ld	a3,16(a0)
    80006c10:	00853603          	ld	a2,8(a0)
    80006c14:	00053583          	ld	a1,0(a0)
    80006c18:	34051573          	csrrw	a0,mscratch,a0
    80006c1c:	30200073          	mret

0000000080006c20 <plicinit>:
    80006c20:	ff010113          	addi	sp,sp,-16
    80006c24:	00813423          	sd	s0,8(sp)
    80006c28:	01010413          	addi	s0,sp,16
    80006c2c:	00813403          	ld	s0,8(sp)
    80006c30:	0c0007b7          	lui	a5,0xc000
    80006c34:	00100713          	li	a4,1
    80006c38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c3c:	00e7a223          	sw	a4,4(a5)
    80006c40:	01010113          	addi	sp,sp,16
    80006c44:	00008067          	ret

0000000080006c48 <plicinithart>:
    80006c48:	ff010113          	addi	sp,sp,-16
    80006c4c:	00813023          	sd	s0,0(sp)
    80006c50:	00113423          	sd	ra,8(sp)
    80006c54:	01010413          	addi	s0,sp,16
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	a48080e7          	jalr	-1464(ra) # 800066a0 <cpuid>
    80006c60:	0085171b          	slliw	a4,a0,0x8
    80006c64:	0c0027b7          	lui	a5,0xc002
    80006c68:	00e787b3          	add	a5,a5,a4
    80006c6c:	40200713          	li	a4,1026
    80006c70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c74:	00813083          	ld	ra,8(sp)
    80006c78:	00013403          	ld	s0,0(sp)
    80006c7c:	00d5151b          	slliw	a0,a0,0xd
    80006c80:	0c2017b7          	lui	a5,0xc201
    80006c84:	00a78533          	add	a0,a5,a0
    80006c88:	00052023          	sw	zero,0(a0)
    80006c8c:	01010113          	addi	sp,sp,16
    80006c90:	00008067          	ret

0000000080006c94 <plic_claim>:
    80006c94:	ff010113          	addi	sp,sp,-16
    80006c98:	00813023          	sd	s0,0(sp)
    80006c9c:	00113423          	sd	ra,8(sp)
    80006ca0:	01010413          	addi	s0,sp,16
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	9fc080e7          	jalr	-1540(ra) # 800066a0 <cpuid>
    80006cac:	00813083          	ld	ra,8(sp)
    80006cb0:	00013403          	ld	s0,0(sp)
    80006cb4:	00d5151b          	slliw	a0,a0,0xd
    80006cb8:	0c2017b7          	lui	a5,0xc201
    80006cbc:	00a78533          	add	a0,a5,a0
    80006cc0:	00452503          	lw	a0,4(a0)
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00008067          	ret

0000000080006ccc <plic_complete>:
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00813823          	sd	s0,16(sp)
    80006cd4:	00913423          	sd	s1,8(sp)
    80006cd8:	00113c23          	sd	ra,24(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	00050493          	mv	s1,a0
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	9bc080e7          	jalr	-1604(ra) # 800066a0 <cpuid>
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	00d5179b          	slliw	a5,a0,0xd
    80006cf8:	0c201737          	lui	a4,0xc201
    80006cfc:	00f707b3          	add	a5,a4,a5
    80006d00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret

0000000080006d10 <consolewrite>:
    80006d10:	fb010113          	addi	sp,sp,-80
    80006d14:	04813023          	sd	s0,64(sp)
    80006d18:	04113423          	sd	ra,72(sp)
    80006d1c:	02913c23          	sd	s1,56(sp)
    80006d20:	03213823          	sd	s2,48(sp)
    80006d24:	03313423          	sd	s3,40(sp)
    80006d28:	03413023          	sd	s4,32(sp)
    80006d2c:	01513c23          	sd	s5,24(sp)
    80006d30:	05010413          	addi	s0,sp,80
    80006d34:	06c05c63          	blez	a2,80006dac <consolewrite+0x9c>
    80006d38:	00060993          	mv	s3,a2
    80006d3c:	00050a13          	mv	s4,a0
    80006d40:	00058493          	mv	s1,a1
    80006d44:	00000913          	li	s2,0
    80006d48:	fff00a93          	li	s5,-1
    80006d4c:	01c0006f          	j	80006d68 <consolewrite+0x58>
    80006d50:	fbf44503          	lbu	a0,-65(s0)
    80006d54:	0019091b          	addiw	s2,s2,1
    80006d58:	00148493          	addi	s1,s1,1
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	a9c080e7          	jalr	-1380(ra) # 800077f8 <uartputc>
    80006d64:	03298063          	beq	s3,s2,80006d84 <consolewrite+0x74>
    80006d68:	00048613          	mv	a2,s1
    80006d6c:	00100693          	li	a3,1
    80006d70:	000a0593          	mv	a1,s4
    80006d74:	fbf40513          	addi	a0,s0,-65
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	9e0080e7          	jalr	-1568(ra) # 80006758 <either_copyin>
    80006d80:	fd5518e3          	bne	a0,s5,80006d50 <consolewrite+0x40>
    80006d84:	04813083          	ld	ra,72(sp)
    80006d88:	04013403          	ld	s0,64(sp)
    80006d8c:	03813483          	ld	s1,56(sp)
    80006d90:	02813983          	ld	s3,40(sp)
    80006d94:	02013a03          	ld	s4,32(sp)
    80006d98:	01813a83          	ld	s5,24(sp)
    80006d9c:	00090513          	mv	a0,s2
    80006da0:	03013903          	ld	s2,48(sp)
    80006da4:	05010113          	addi	sp,sp,80
    80006da8:	00008067          	ret
    80006dac:	00000913          	li	s2,0
    80006db0:	fd5ff06f          	j	80006d84 <consolewrite+0x74>

0000000080006db4 <consoleread>:
    80006db4:	f9010113          	addi	sp,sp,-112
    80006db8:	06813023          	sd	s0,96(sp)
    80006dbc:	04913c23          	sd	s1,88(sp)
    80006dc0:	05213823          	sd	s2,80(sp)
    80006dc4:	05313423          	sd	s3,72(sp)
    80006dc8:	05413023          	sd	s4,64(sp)
    80006dcc:	03513c23          	sd	s5,56(sp)
    80006dd0:	03613823          	sd	s6,48(sp)
    80006dd4:	03713423          	sd	s7,40(sp)
    80006dd8:	03813023          	sd	s8,32(sp)
    80006ddc:	06113423          	sd	ra,104(sp)
    80006de0:	01913c23          	sd	s9,24(sp)
    80006de4:	07010413          	addi	s0,sp,112
    80006de8:	00060b93          	mv	s7,a2
    80006dec:	00050913          	mv	s2,a0
    80006df0:	00058c13          	mv	s8,a1
    80006df4:	00060b1b          	sext.w	s6,a2
    80006df8:	00006497          	auipc	s1,0x6
    80006dfc:	a2048493          	addi	s1,s1,-1504 # 8000c818 <cons>
    80006e00:	00400993          	li	s3,4
    80006e04:	fff00a13          	li	s4,-1
    80006e08:	00a00a93          	li	s5,10
    80006e0c:	05705e63          	blez	s7,80006e68 <consoleread+0xb4>
    80006e10:	09c4a703          	lw	a4,156(s1)
    80006e14:	0984a783          	lw	a5,152(s1)
    80006e18:	0007071b          	sext.w	a4,a4
    80006e1c:	08e78463          	beq	a5,a4,80006ea4 <consoleread+0xf0>
    80006e20:	07f7f713          	andi	a4,a5,127
    80006e24:	00e48733          	add	a4,s1,a4
    80006e28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e2c:	0017869b          	addiw	a3,a5,1
    80006e30:	08d4ac23          	sw	a3,152(s1)
    80006e34:	00070c9b          	sext.w	s9,a4
    80006e38:	0b370663          	beq	a4,s3,80006ee4 <consoleread+0x130>
    80006e3c:	00100693          	li	a3,1
    80006e40:	f9f40613          	addi	a2,s0,-97
    80006e44:	000c0593          	mv	a1,s8
    80006e48:	00090513          	mv	a0,s2
    80006e4c:	f8e40fa3          	sb	a4,-97(s0)
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	8bc080e7          	jalr	-1860(ra) # 8000670c <either_copyout>
    80006e58:	01450863          	beq	a0,s4,80006e68 <consoleread+0xb4>
    80006e5c:	001c0c13          	addi	s8,s8,1
    80006e60:	fffb8b9b          	addiw	s7,s7,-1
    80006e64:	fb5c94e3          	bne	s9,s5,80006e0c <consoleread+0x58>
    80006e68:	000b851b          	sext.w	a0,s7
    80006e6c:	06813083          	ld	ra,104(sp)
    80006e70:	06013403          	ld	s0,96(sp)
    80006e74:	05813483          	ld	s1,88(sp)
    80006e78:	05013903          	ld	s2,80(sp)
    80006e7c:	04813983          	ld	s3,72(sp)
    80006e80:	04013a03          	ld	s4,64(sp)
    80006e84:	03813a83          	ld	s5,56(sp)
    80006e88:	02813b83          	ld	s7,40(sp)
    80006e8c:	02013c03          	ld	s8,32(sp)
    80006e90:	01813c83          	ld	s9,24(sp)
    80006e94:	40ab053b          	subw	a0,s6,a0
    80006e98:	03013b03          	ld	s6,48(sp)
    80006e9c:	07010113          	addi	sp,sp,112
    80006ea0:	00008067          	ret
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	1d8080e7          	jalr	472(ra) # 8000807c <push_on>
    80006eac:	0984a703          	lw	a4,152(s1)
    80006eb0:	09c4a783          	lw	a5,156(s1)
    80006eb4:	0007879b          	sext.w	a5,a5
    80006eb8:	fef70ce3          	beq	a4,a5,80006eb0 <consoleread+0xfc>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	234080e7          	jalr	564(ra) # 800080f0 <pop_on>
    80006ec4:	0984a783          	lw	a5,152(s1)
    80006ec8:	07f7f713          	andi	a4,a5,127
    80006ecc:	00e48733          	add	a4,s1,a4
    80006ed0:	01874703          	lbu	a4,24(a4)
    80006ed4:	0017869b          	addiw	a3,a5,1
    80006ed8:	08d4ac23          	sw	a3,152(s1)
    80006edc:	00070c9b          	sext.w	s9,a4
    80006ee0:	f5371ee3          	bne	a4,s3,80006e3c <consoleread+0x88>
    80006ee4:	000b851b          	sext.w	a0,s7
    80006ee8:	f96bf2e3          	bgeu	s7,s6,80006e6c <consoleread+0xb8>
    80006eec:	08f4ac23          	sw	a5,152(s1)
    80006ef0:	f7dff06f          	j	80006e6c <consoleread+0xb8>

0000000080006ef4 <consputc>:
    80006ef4:	10000793          	li	a5,256
    80006ef8:	00f50663          	beq	a0,a5,80006f04 <consputc+0x10>
    80006efc:	00001317          	auipc	t1,0x1
    80006f00:	9f430067          	jr	-1548(t1) # 800078f0 <uartputc_sync>
    80006f04:	ff010113          	addi	sp,sp,-16
    80006f08:	00113423          	sd	ra,8(sp)
    80006f0c:	00813023          	sd	s0,0(sp)
    80006f10:	01010413          	addi	s0,sp,16
    80006f14:	00800513          	li	a0,8
    80006f18:	00001097          	auipc	ra,0x1
    80006f1c:	9d8080e7          	jalr	-1576(ra) # 800078f0 <uartputc_sync>
    80006f20:	02000513          	li	a0,32
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	9cc080e7          	jalr	-1588(ra) # 800078f0 <uartputc_sync>
    80006f2c:	00013403          	ld	s0,0(sp)
    80006f30:	00813083          	ld	ra,8(sp)
    80006f34:	00800513          	li	a0,8
    80006f38:	01010113          	addi	sp,sp,16
    80006f3c:	00001317          	auipc	t1,0x1
    80006f40:	9b430067          	jr	-1612(t1) # 800078f0 <uartputc_sync>

0000000080006f44 <consoleintr>:
    80006f44:	fe010113          	addi	sp,sp,-32
    80006f48:	00813823          	sd	s0,16(sp)
    80006f4c:	00913423          	sd	s1,8(sp)
    80006f50:	01213023          	sd	s2,0(sp)
    80006f54:	00113c23          	sd	ra,24(sp)
    80006f58:	02010413          	addi	s0,sp,32
    80006f5c:	00006917          	auipc	s2,0x6
    80006f60:	8bc90913          	addi	s2,s2,-1860 # 8000c818 <cons>
    80006f64:	00050493          	mv	s1,a0
    80006f68:	00090513          	mv	a0,s2
    80006f6c:	00001097          	auipc	ra,0x1
    80006f70:	e40080e7          	jalr	-448(ra) # 80007dac <acquire>
    80006f74:	02048c63          	beqz	s1,80006fac <consoleintr+0x68>
    80006f78:	0a092783          	lw	a5,160(s2)
    80006f7c:	09892703          	lw	a4,152(s2)
    80006f80:	07f00693          	li	a3,127
    80006f84:	40e7873b          	subw	a4,a5,a4
    80006f88:	02e6e263          	bltu	a3,a4,80006fac <consoleintr+0x68>
    80006f8c:	00d00713          	li	a4,13
    80006f90:	04e48063          	beq	s1,a4,80006fd0 <consoleintr+0x8c>
    80006f94:	07f7f713          	andi	a4,a5,127
    80006f98:	00e90733          	add	a4,s2,a4
    80006f9c:	0017879b          	addiw	a5,a5,1
    80006fa0:	0af92023          	sw	a5,160(s2)
    80006fa4:	00970c23          	sb	s1,24(a4)
    80006fa8:	08f92e23          	sw	a5,156(s2)
    80006fac:	01013403          	ld	s0,16(sp)
    80006fb0:	01813083          	ld	ra,24(sp)
    80006fb4:	00813483          	ld	s1,8(sp)
    80006fb8:	00013903          	ld	s2,0(sp)
    80006fbc:	00006517          	auipc	a0,0x6
    80006fc0:	85c50513          	addi	a0,a0,-1956 # 8000c818 <cons>
    80006fc4:	02010113          	addi	sp,sp,32
    80006fc8:	00001317          	auipc	t1,0x1
    80006fcc:	eb030067          	jr	-336(t1) # 80007e78 <release>
    80006fd0:	00a00493          	li	s1,10
    80006fd4:	fc1ff06f          	j	80006f94 <consoleintr+0x50>

0000000080006fd8 <consoleinit>:
    80006fd8:	fe010113          	addi	sp,sp,-32
    80006fdc:	00113c23          	sd	ra,24(sp)
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00006497          	auipc	s1,0x6
    80006ff0:	82c48493          	addi	s1,s1,-2004 # 8000c818 <cons>
    80006ff4:	00048513          	mv	a0,s1
    80006ff8:	00002597          	auipc	a1,0x2
    80006ffc:	5e858593          	addi	a1,a1,1512 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80007000:	00001097          	auipc	ra,0x1
    80007004:	d88080e7          	jalr	-632(ra) # 80007d88 <initlock>
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	7ac080e7          	jalr	1964(ra) # 800077b4 <uartinit>
    80007010:	01813083          	ld	ra,24(sp)
    80007014:	01013403          	ld	s0,16(sp)
    80007018:	00000797          	auipc	a5,0x0
    8000701c:	d9c78793          	addi	a5,a5,-612 # 80006db4 <consoleread>
    80007020:	0af4bc23          	sd	a5,184(s1)
    80007024:	00000797          	auipc	a5,0x0
    80007028:	cec78793          	addi	a5,a5,-788 # 80006d10 <consolewrite>
    8000702c:	0cf4b023          	sd	a5,192(s1)
    80007030:	00813483          	ld	s1,8(sp)
    80007034:	02010113          	addi	sp,sp,32
    80007038:	00008067          	ret

000000008000703c <console_read>:
    8000703c:	ff010113          	addi	sp,sp,-16
    80007040:	00813423          	sd	s0,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00813403          	ld	s0,8(sp)
    8000704c:	00006317          	auipc	t1,0x6
    80007050:	88433303          	ld	t1,-1916(t1) # 8000c8d0 <devsw+0x10>
    80007054:	01010113          	addi	sp,sp,16
    80007058:	00030067          	jr	t1

000000008000705c <console_write>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813423          	sd	s0,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	00813403          	ld	s0,8(sp)
    8000706c:	00006317          	auipc	t1,0x6
    80007070:	86c33303          	ld	t1,-1940(t1) # 8000c8d8 <devsw+0x18>
    80007074:	01010113          	addi	sp,sp,16
    80007078:	00030067          	jr	t1

000000008000707c <panic>:
    8000707c:	fe010113          	addi	sp,sp,-32
    80007080:	00113c23          	sd	ra,24(sp)
    80007084:	00813823          	sd	s0,16(sp)
    80007088:	00913423          	sd	s1,8(sp)
    8000708c:	02010413          	addi	s0,sp,32
    80007090:	00050493          	mv	s1,a0
    80007094:	00002517          	auipc	a0,0x2
    80007098:	55450513          	addi	a0,a0,1364 # 800095e8 <CONSOLE_STATUS+0x5d8>
    8000709c:	00006797          	auipc	a5,0x6
    800070a0:	8c07ae23          	sw	zero,-1828(a5) # 8000c978 <pr+0x18>
    800070a4:	00000097          	auipc	ra,0x0
    800070a8:	034080e7          	jalr	52(ra) # 800070d8 <__printf>
    800070ac:	00048513          	mv	a0,s1
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	028080e7          	jalr	40(ra) # 800070d8 <__printf>
    800070b8:	00002517          	auipc	a0,0x2
    800070bc:	2b850513          	addi	a0,a0,696 # 80009370 <CONSOLE_STATUS+0x360>
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	018080e7          	jalr	24(ra) # 800070d8 <__printf>
    800070c8:	00100793          	li	a5,1
    800070cc:	00004717          	auipc	a4,0x4
    800070d0:	5af72e23          	sw	a5,1468(a4) # 8000b688 <panicked>
    800070d4:	0000006f          	j	800070d4 <panic+0x58>

00000000800070d8 <__printf>:
    800070d8:	f3010113          	addi	sp,sp,-208
    800070dc:	08813023          	sd	s0,128(sp)
    800070e0:	07313423          	sd	s3,104(sp)
    800070e4:	09010413          	addi	s0,sp,144
    800070e8:	05813023          	sd	s8,64(sp)
    800070ec:	08113423          	sd	ra,136(sp)
    800070f0:	06913c23          	sd	s1,120(sp)
    800070f4:	07213823          	sd	s2,112(sp)
    800070f8:	07413023          	sd	s4,96(sp)
    800070fc:	05513c23          	sd	s5,88(sp)
    80007100:	05613823          	sd	s6,80(sp)
    80007104:	05713423          	sd	s7,72(sp)
    80007108:	03913c23          	sd	s9,56(sp)
    8000710c:	03a13823          	sd	s10,48(sp)
    80007110:	03b13423          	sd	s11,40(sp)
    80007114:	00006317          	auipc	t1,0x6
    80007118:	84c30313          	addi	t1,t1,-1972 # 8000c960 <pr>
    8000711c:	01832c03          	lw	s8,24(t1)
    80007120:	00b43423          	sd	a1,8(s0)
    80007124:	00c43823          	sd	a2,16(s0)
    80007128:	00d43c23          	sd	a3,24(s0)
    8000712c:	02e43023          	sd	a4,32(s0)
    80007130:	02f43423          	sd	a5,40(s0)
    80007134:	03043823          	sd	a6,48(s0)
    80007138:	03143c23          	sd	a7,56(s0)
    8000713c:	00050993          	mv	s3,a0
    80007140:	4a0c1663          	bnez	s8,800075ec <__printf+0x514>
    80007144:	60098c63          	beqz	s3,8000775c <__printf+0x684>
    80007148:	0009c503          	lbu	a0,0(s3)
    8000714c:	00840793          	addi	a5,s0,8
    80007150:	f6f43c23          	sd	a5,-136(s0)
    80007154:	00000493          	li	s1,0
    80007158:	22050063          	beqz	a0,80007378 <__printf+0x2a0>
    8000715c:	00002a37          	lui	s4,0x2
    80007160:	00018ab7          	lui	s5,0x18
    80007164:	000f4b37          	lui	s6,0xf4
    80007168:	00989bb7          	lui	s7,0x989
    8000716c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007170:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007174:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007178:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000717c:	00148c9b          	addiw	s9,s1,1
    80007180:	02500793          	li	a5,37
    80007184:	01998933          	add	s2,s3,s9
    80007188:	38f51263          	bne	a0,a5,8000750c <__printf+0x434>
    8000718c:	00094783          	lbu	a5,0(s2)
    80007190:	00078c9b          	sext.w	s9,a5
    80007194:	1e078263          	beqz	a5,80007378 <__printf+0x2a0>
    80007198:	0024849b          	addiw	s1,s1,2
    8000719c:	07000713          	li	a4,112
    800071a0:	00998933          	add	s2,s3,s1
    800071a4:	38e78a63          	beq	a5,a4,80007538 <__printf+0x460>
    800071a8:	20f76863          	bltu	a4,a5,800073b8 <__printf+0x2e0>
    800071ac:	42a78863          	beq	a5,a0,800075dc <__printf+0x504>
    800071b0:	06400713          	li	a4,100
    800071b4:	40e79663          	bne	a5,a4,800075c0 <__printf+0x4e8>
    800071b8:	f7843783          	ld	a5,-136(s0)
    800071bc:	0007a603          	lw	a2,0(a5)
    800071c0:	00878793          	addi	a5,a5,8
    800071c4:	f6f43c23          	sd	a5,-136(s0)
    800071c8:	42064a63          	bltz	a2,800075fc <__printf+0x524>
    800071cc:	00a00713          	li	a4,10
    800071d0:	02e677bb          	remuw	a5,a2,a4
    800071d4:	00002d97          	auipc	s11,0x2
    800071d8:	43cd8d93          	addi	s11,s11,1084 # 80009610 <digits>
    800071dc:	00900593          	li	a1,9
    800071e0:	0006051b          	sext.w	a0,a2
    800071e4:	00000c93          	li	s9,0
    800071e8:	02079793          	slli	a5,a5,0x20
    800071ec:	0207d793          	srli	a5,a5,0x20
    800071f0:	00fd87b3          	add	a5,s11,a5
    800071f4:	0007c783          	lbu	a5,0(a5)
    800071f8:	02e656bb          	divuw	a3,a2,a4
    800071fc:	f8f40023          	sb	a5,-128(s0)
    80007200:	14c5d863          	bge	a1,a2,80007350 <__printf+0x278>
    80007204:	06300593          	li	a1,99
    80007208:	00100c93          	li	s9,1
    8000720c:	02e6f7bb          	remuw	a5,a3,a4
    80007210:	02079793          	slli	a5,a5,0x20
    80007214:	0207d793          	srli	a5,a5,0x20
    80007218:	00fd87b3          	add	a5,s11,a5
    8000721c:	0007c783          	lbu	a5,0(a5)
    80007220:	02e6d73b          	divuw	a4,a3,a4
    80007224:	f8f400a3          	sb	a5,-127(s0)
    80007228:	12a5f463          	bgeu	a1,a0,80007350 <__printf+0x278>
    8000722c:	00a00693          	li	a3,10
    80007230:	00900593          	li	a1,9
    80007234:	02d777bb          	remuw	a5,a4,a3
    80007238:	02079793          	slli	a5,a5,0x20
    8000723c:	0207d793          	srli	a5,a5,0x20
    80007240:	00fd87b3          	add	a5,s11,a5
    80007244:	0007c503          	lbu	a0,0(a5)
    80007248:	02d757bb          	divuw	a5,a4,a3
    8000724c:	f8a40123          	sb	a0,-126(s0)
    80007250:	48e5f263          	bgeu	a1,a4,800076d4 <__printf+0x5fc>
    80007254:	06300513          	li	a0,99
    80007258:	02d7f5bb          	remuw	a1,a5,a3
    8000725c:	02059593          	slli	a1,a1,0x20
    80007260:	0205d593          	srli	a1,a1,0x20
    80007264:	00bd85b3          	add	a1,s11,a1
    80007268:	0005c583          	lbu	a1,0(a1)
    8000726c:	02d7d7bb          	divuw	a5,a5,a3
    80007270:	f8b401a3          	sb	a1,-125(s0)
    80007274:	48e57263          	bgeu	a0,a4,800076f8 <__printf+0x620>
    80007278:	3e700513          	li	a0,999
    8000727c:	02d7f5bb          	remuw	a1,a5,a3
    80007280:	02059593          	slli	a1,a1,0x20
    80007284:	0205d593          	srli	a1,a1,0x20
    80007288:	00bd85b3          	add	a1,s11,a1
    8000728c:	0005c583          	lbu	a1,0(a1)
    80007290:	02d7d7bb          	divuw	a5,a5,a3
    80007294:	f8b40223          	sb	a1,-124(s0)
    80007298:	46e57663          	bgeu	a0,a4,80007704 <__printf+0x62c>
    8000729c:	02d7f5bb          	remuw	a1,a5,a3
    800072a0:	02059593          	slli	a1,a1,0x20
    800072a4:	0205d593          	srli	a1,a1,0x20
    800072a8:	00bd85b3          	add	a1,s11,a1
    800072ac:	0005c583          	lbu	a1,0(a1)
    800072b0:	02d7d7bb          	divuw	a5,a5,a3
    800072b4:	f8b402a3          	sb	a1,-123(s0)
    800072b8:	46ea7863          	bgeu	s4,a4,80007728 <__printf+0x650>
    800072bc:	02d7f5bb          	remuw	a1,a5,a3
    800072c0:	02059593          	slli	a1,a1,0x20
    800072c4:	0205d593          	srli	a1,a1,0x20
    800072c8:	00bd85b3          	add	a1,s11,a1
    800072cc:	0005c583          	lbu	a1,0(a1)
    800072d0:	02d7d7bb          	divuw	a5,a5,a3
    800072d4:	f8b40323          	sb	a1,-122(s0)
    800072d8:	3eeaf863          	bgeu	s5,a4,800076c8 <__printf+0x5f0>
    800072dc:	02d7f5bb          	remuw	a1,a5,a3
    800072e0:	02059593          	slli	a1,a1,0x20
    800072e4:	0205d593          	srli	a1,a1,0x20
    800072e8:	00bd85b3          	add	a1,s11,a1
    800072ec:	0005c583          	lbu	a1,0(a1)
    800072f0:	02d7d7bb          	divuw	a5,a5,a3
    800072f4:	f8b403a3          	sb	a1,-121(s0)
    800072f8:	42eb7e63          	bgeu	s6,a4,80007734 <__printf+0x65c>
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b40423          	sb	a1,-120(s0)
    80007318:	42ebfc63          	bgeu	s7,a4,80007750 <__printf+0x678>
    8000731c:	02079793          	slli	a5,a5,0x20
    80007320:	0207d793          	srli	a5,a5,0x20
    80007324:	00fd8db3          	add	s11,s11,a5
    80007328:	000dc703          	lbu	a4,0(s11)
    8000732c:	00a00793          	li	a5,10
    80007330:	00900c93          	li	s9,9
    80007334:	f8e404a3          	sb	a4,-119(s0)
    80007338:	00065c63          	bgez	a2,80007350 <__printf+0x278>
    8000733c:	f9040713          	addi	a4,s0,-112
    80007340:	00f70733          	add	a4,a4,a5
    80007344:	02d00693          	li	a3,45
    80007348:	fed70823          	sb	a3,-16(a4)
    8000734c:	00078c93          	mv	s9,a5
    80007350:	f8040793          	addi	a5,s0,-128
    80007354:	01978cb3          	add	s9,a5,s9
    80007358:	f7f40d13          	addi	s10,s0,-129
    8000735c:	000cc503          	lbu	a0,0(s9)
    80007360:	fffc8c93          	addi	s9,s9,-1
    80007364:	00000097          	auipc	ra,0x0
    80007368:	b90080e7          	jalr	-1136(ra) # 80006ef4 <consputc>
    8000736c:	ffac98e3          	bne	s9,s10,8000735c <__printf+0x284>
    80007370:	00094503          	lbu	a0,0(s2)
    80007374:	e00514e3          	bnez	a0,8000717c <__printf+0xa4>
    80007378:	1a0c1663          	bnez	s8,80007524 <__printf+0x44c>
    8000737c:	08813083          	ld	ra,136(sp)
    80007380:	08013403          	ld	s0,128(sp)
    80007384:	07813483          	ld	s1,120(sp)
    80007388:	07013903          	ld	s2,112(sp)
    8000738c:	06813983          	ld	s3,104(sp)
    80007390:	06013a03          	ld	s4,96(sp)
    80007394:	05813a83          	ld	s5,88(sp)
    80007398:	05013b03          	ld	s6,80(sp)
    8000739c:	04813b83          	ld	s7,72(sp)
    800073a0:	04013c03          	ld	s8,64(sp)
    800073a4:	03813c83          	ld	s9,56(sp)
    800073a8:	03013d03          	ld	s10,48(sp)
    800073ac:	02813d83          	ld	s11,40(sp)
    800073b0:	0d010113          	addi	sp,sp,208
    800073b4:	00008067          	ret
    800073b8:	07300713          	li	a4,115
    800073bc:	1ce78a63          	beq	a5,a4,80007590 <__printf+0x4b8>
    800073c0:	07800713          	li	a4,120
    800073c4:	1ee79e63          	bne	a5,a4,800075c0 <__printf+0x4e8>
    800073c8:	f7843783          	ld	a5,-136(s0)
    800073cc:	0007a703          	lw	a4,0(a5)
    800073d0:	00878793          	addi	a5,a5,8
    800073d4:	f6f43c23          	sd	a5,-136(s0)
    800073d8:	28074263          	bltz	a4,8000765c <__printf+0x584>
    800073dc:	00002d97          	auipc	s11,0x2
    800073e0:	234d8d93          	addi	s11,s11,564 # 80009610 <digits>
    800073e4:	00f77793          	andi	a5,a4,15
    800073e8:	00fd87b3          	add	a5,s11,a5
    800073ec:	0007c683          	lbu	a3,0(a5)
    800073f0:	00f00613          	li	a2,15
    800073f4:	0007079b          	sext.w	a5,a4
    800073f8:	f8d40023          	sb	a3,-128(s0)
    800073fc:	0047559b          	srliw	a1,a4,0x4
    80007400:	0047569b          	srliw	a3,a4,0x4
    80007404:	00000c93          	li	s9,0
    80007408:	0ee65063          	bge	a2,a4,800074e8 <__printf+0x410>
    8000740c:	00f6f693          	andi	a3,a3,15
    80007410:	00dd86b3          	add	a3,s11,a3
    80007414:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007418:	0087d79b          	srliw	a5,a5,0x8
    8000741c:	00100c93          	li	s9,1
    80007420:	f8d400a3          	sb	a3,-127(s0)
    80007424:	0cb67263          	bgeu	a2,a1,800074e8 <__printf+0x410>
    80007428:	00f7f693          	andi	a3,a5,15
    8000742c:	00dd86b3          	add	a3,s11,a3
    80007430:	0006c583          	lbu	a1,0(a3)
    80007434:	00f00613          	li	a2,15
    80007438:	0047d69b          	srliw	a3,a5,0x4
    8000743c:	f8b40123          	sb	a1,-126(s0)
    80007440:	0047d593          	srli	a1,a5,0x4
    80007444:	28f67e63          	bgeu	a2,a5,800076e0 <__printf+0x608>
    80007448:	00f6f693          	andi	a3,a3,15
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c503          	lbu	a0,0(a3)
    80007454:	0087d813          	srli	a6,a5,0x8
    80007458:	0087d69b          	srliw	a3,a5,0x8
    8000745c:	f8a401a3          	sb	a0,-125(s0)
    80007460:	28b67663          	bgeu	a2,a1,800076ec <__printf+0x614>
    80007464:	00f6f693          	andi	a3,a3,15
    80007468:	00dd86b3          	add	a3,s11,a3
    8000746c:	0006c583          	lbu	a1,0(a3)
    80007470:	00c7d513          	srli	a0,a5,0xc
    80007474:	00c7d69b          	srliw	a3,a5,0xc
    80007478:	f8b40223          	sb	a1,-124(s0)
    8000747c:	29067a63          	bgeu	a2,a6,80007710 <__printf+0x638>
    80007480:	00f6f693          	andi	a3,a3,15
    80007484:	00dd86b3          	add	a3,s11,a3
    80007488:	0006c583          	lbu	a1,0(a3)
    8000748c:	0107d813          	srli	a6,a5,0x10
    80007490:	0107d69b          	srliw	a3,a5,0x10
    80007494:	f8b402a3          	sb	a1,-123(s0)
    80007498:	28a67263          	bgeu	a2,a0,8000771c <__printf+0x644>
    8000749c:	00f6f693          	andi	a3,a3,15
    800074a0:	00dd86b3          	add	a3,s11,a3
    800074a4:	0006c683          	lbu	a3,0(a3)
    800074a8:	0147d79b          	srliw	a5,a5,0x14
    800074ac:	f8d40323          	sb	a3,-122(s0)
    800074b0:	21067663          	bgeu	a2,a6,800076bc <__printf+0x5e4>
    800074b4:	02079793          	slli	a5,a5,0x20
    800074b8:	0207d793          	srli	a5,a5,0x20
    800074bc:	00fd8db3          	add	s11,s11,a5
    800074c0:	000dc683          	lbu	a3,0(s11)
    800074c4:	00800793          	li	a5,8
    800074c8:	00700c93          	li	s9,7
    800074cc:	f8d403a3          	sb	a3,-121(s0)
    800074d0:	00075c63          	bgez	a4,800074e8 <__printf+0x410>
    800074d4:	f9040713          	addi	a4,s0,-112
    800074d8:	00f70733          	add	a4,a4,a5
    800074dc:	02d00693          	li	a3,45
    800074e0:	fed70823          	sb	a3,-16(a4)
    800074e4:	00078c93          	mv	s9,a5
    800074e8:	f8040793          	addi	a5,s0,-128
    800074ec:	01978cb3          	add	s9,a5,s9
    800074f0:	f7f40d13          	addi	s10,s0,-129
    800074f4:	000cc503          	lbu	a0,0(s9)
    800074f8:	fffc8c93          	addi	s9,s9,-1
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	9f8080e7          	jalr	-1544(ra) # 80006ef4 <consputc>
    80007504:	ff9d18e3          	bne	s10,s9,800074f4 <__printf+0x41c>
    80007508:	0100006f          	j	80007518 <__printf+0x440>
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9e8080e7          	jalr	-1560(ra) # 80006ef4 <consputc>
    80007514:	000c8493          	mv	s1,s9
    80007518:	00094503          	lbu	a0,0(s2)
    8000751c:	c60510e3          	bnez	a0,8000717c <__printf+0xa4>
    80007520:	e40c0ee3          	beqz	s8,8000737c <__printf+0x2a4>
    80007524:	00005517          	auipc	a0,0x5
    80007528:	43c50513          	addi	a0,a0,1084 # 8000c960 <pr>
    8000752c:	00001097          	auipc	ra,0x1
    80007530:	94c080e7          	jalr	-1716(ra) # 80007e78 <release>
    80007534:	e49ff06f          	j	8000737c <__printf+0x2a4>
    80007538:	f7843783          	ld	a5,-136(s0)
    8000753c:	03000513          	li	a0,48
    80007540:	01000d13          	li	s10,16
    80007544:	00878713          	addi	a4,a5,8
    80007548:	0007bc83          	ld	s9,0(a5)
    8000754c:	f6e43c23          	sd	a4,-136(s0)
    80007550:	00000097          	auipc	ra,0x0
    80007554:	9a4080e7          	jalr	-1628(ra) # 80006ef4 <consputc>
    80007558:	07800513          	li	a0,120
    8000755c:	00000097          	auipc	ra,0x0
    80007560:	998080e7          	jalr	-1640(ra) # 80006ef4 <consputc>
    80007564:	00002d97          	auipc	s11,0x2
    80007568:	0acd8d93          	addi	s11,s11,172 # 80009610 <digits>
    8000756c:	03ccd793          	srli	a5,s9,0x3c
    80007570:	00fd87b3          	add	a5,s11,a5
    80007574:	0007c503          	lbu	a0,0(a5)
    80007578:	fffd0d1b          	addiw	s10,s10,-1
    8000757c:	004c9c93          	slli	s9,s9,0x4
    80007580:	00000097          	auipc	ra,0x0
    80007584:	974080e7          	jalr	-1676(ra) # 80006ef4 <consputc>
    80007588:	fe0d12e3          	bnez	s10,8000756c <__printf+0x494>
    8000758c:	f8dff06f          	j	80007518 <__printf+0x440>
    80007590:	f7843783          	ld	a5,-136(s0)
    80007594:	0007bc83          	ld	s9,0(a5)
    80007598:	00878793          	addi	a5,a5,8
    8000759c:	f6f43c23          	sd	a5,-136(s0)
    800075a0:	000c9a63          	bnez	s9,800075b4 <__printf+0x4dc>
    800075a4:	1080006f          	j	800076ac <__printf+0x5d4>
    800075a8:	001c8c93          	addi	s9,s9,1
    800075ac:	00000097          	auipc	ra,0x0
    800075b0:	948080e7          	jalr	-1720(ra) # 80006ef4 <consputc>
    800075b4:	000cc503          	lbu	a0,0(s9)
    800075b8:	fe0518e3          	bnez	a0,800075a8 <__printf+0x4d0>
    800075bc:	f5dff06f          	j	80007518 <__printf+0x440>
    800075c0:	02500513          	li	a0,37
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	930080e7          	jalr	-1744(ra) # 80006ef4 <consputc>
    800075cc:	000c8513          	mv	a0,s9
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	924080e7          	jalr	-1756(ra) # 80006ef4 <consputc>
    800075d8:	f41ff06f          	j	80007518 <__printf+0x440>
    800075dc:	02500513          	li	a0,37
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	914080e7          	jalr	-1772(ra) # 80006ef4 <consputc>
    800075e8:	f31ff06f          	j	80007518 <__printf+0x440>
    800075ec:	00030513          	mv	a0,t1
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	7bc080e7          	jalr	1980(ra) # 80007dac <acquire>
    800075f8:	b4dff06f          	j	80007144 <__printf+0x6c>
    800075fc:	40c0053b          	negw	a0,a2
    80007600:	00a00713          	li	a4,10
    80007604:	02e576bb          	remuw	a3,a0,a4
    80007608:	00002d97          	auipc	s11,0x2
    8000760c:	008d8d93          	addi	s11,s11,8 # 80009610 <digits>
    80007610:	ff700593          	li	a1,-9
    80007614:	02069693          	slli	a3,a3,0x20
    80007618:	0206d693          	srli	a3,a3,0x20
    8000761c:	00dd86b3          	add	a3,s11,a3
    80007620:	0006c683          	lbu	a3,0(a3)
    80007624:	02e557bb          	divuw	a5,a0,a4
    80007628:	f8d40023          	sb	a3,-128(s0)
    8000762c:	10b65e63          	bge	a2,a1,80007748 <__printf+0x670>
    80007630:	06300593          	li	a1,99
    80007634:	02e7f6bb          	remuw	a3,a5,a4
    80007638:	02069693          	slli	a3,a3,0x20
    8000763c:	0206d693          	srli	a3,a3,0x20
    80007640:	00dd86b3          	add	a3,s11,a3
    80007644:	0006c683          	lbu	a3,0(a3)
    80007648:	02e7d73b          	divuw	a4,a5,a4
    8000764c:	00200793          	li	a5,2
    80007650:	f8d400a3          	sb	a3,-127(s0)
    80007654:	bca5ece3          	bltu	a1,a0,8000722c <__printf+0x154>
    80007658:	ce5ff06f          	j	8000733c <__printf+0x264>
    8000765c:	40e007bb          	negw	a5,a4
    80007660:	00002d97          	auipc	s11,0x2
    80007664:	fb0d8d93          	addi	s11,s11,-80 # 80009610 <digits>
    80007668:	00f7f693          	andi	a3,a5,15
    8000766c:	00dd86b3          	add	a3,s11,a3
    80007670:	0006c583          	lbu	a1,0(a3)
    80007674:	ff100613          	li	a2,-15
    80007678:	0047d69b          	srliw	a3,a5,0x4
    8000767c:	f8b40023          	sb	a1,-128(s0)
    80007680:	0047d59b          	srliw	a1,a5,0x4
    80007684:	0ac75e63          	bge	a4,a2,80007740 <__printf+0x668>
    80007688:	00f6f693          	andi	a3,a3,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c603          	lbu	a2,0(a3)
    80007694:	00f00693          	li	a3,15
    80007698:	0087d79b          	srliw	a5,a5,0x8
    8000769c:	f8c400a3          	sb	a2,-127(s0)
    800076a0:	d8b6e4e3          	bltu	a3,a1,80007428 <__printf+0x350>
    800076a4:	00200793          	li	a5,2
    800076a8:	e2dff06f          	j	800074d4 <__printf+0x3fc>
    800076ac:	00002c97          	auipc	s9,0x2
    800076b0:	f44c8c93          	addi	s9,s9,-188 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800076b4:	02800513          	li	a0,40
    800076b8:	ef1ff06f          	j	800075a8 <__printf+0x4d0>
    800076bc:	00700793          	li	a5,7
    800076c0:	00600c93          	li	s9,6
    800076c4:	e0dff06f          	j	800074d0 <__printf+0x3f8>
    800076c8:	00700793          	li	a5,7
    800076cc:	00600c93          	li	s9,6
    800076d0:	c69ff06f          	j	80007338 <__printf+0x260>
    800076d4:	00300793          	li	a5,3
    800076d8:	00200c93          	li	s9,2
    800076dc:	c5dff06f          	j	80007338 <__printf+0x260>
    800076e0:	00300793          	li	a5,3
    800076e4:	00200c93          	li	s9,2
    800076e8:	de9ff06f          	j	800074d0 <__printf+0x3f8>
    800076ec:	00400793          	li	a5,4
    800076f0:	00300c93          	li	s9,3
    800076f4:	dddff06f          	j	800074d0 <__printf+0x3f8>
    800076f8:	00400793          	li	a5,4
    800076fc:	00300c93          	li	s9,3
    80007700:	c39ff06f          	j	80007338 <__printf+0x260>
    80007704:	00500793          	li	a5,5
    80007708:	00400c93          	li	s9,4
    8000770c:	c2dff06f          	j	80007338 <__printf+0x260>
    80007710:	00500793          	li	a5,5
    80007714:	00400c93          	li	s9,4
    80007718:	db9ff06f          	j	800074d0 <__printf+0x3f8>
    8000771c:	00600793          	li	a5,6
    80007720:	00500c93          	li	s9,5
    80007724:	dadff06f          	j	800074d0 <__printf+0x3f8>
    80007728:	00600793          	li	a5,6
    8000772c:	00500c93          	li	s9,5
    80007730:	c09ff06f          	j	80007338 <__printf+0x260>
    80007734:	00800793          	li	a5,8
    80007738:	00700c93          	li	s9,7
    8000773c:	bfdff06f          	j	80007338 <__printf+0x260>
    80007740:	00100793          	li	a5,1
    80007744:	d91ff06f          	j	800074d4 <__printf+0x3fc>
    80007748:	00100793          	li	a5,1
    8000774c:	bf1ff06f          	j	8000733c <__printf+0x264>
    80007750:	00900793          	li	a5,9
    80007754:	00800c93          	li	s9,8
    80007758:	be1ff06f          	j	80007338 <__printf+0x260>
    8000775c:	00002517          	auipc	a0,0x2
    80007760:	e9c50513          	addi	a0,a0,-356 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80007764:	00000097          	auipc	ra,0x0
    80007768:	918080e7          	jalr	-1768(ra) # 8000707c <panic>

000000008000776c <printfinit>:
    8000776c:	fe010113          	addi	sp,sp,-32
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	02010413          	addi	s0,sp,32
    80007780:	00005497          	auipc	s1,0x5
    80007784:	1e048493          	addi	s1,s1,480 # 8000c960 <pr>
    80007788:	00048513          	mv	a0,s1
    8000778c:	00002597          	auipc	a1,0x2
    80007790:	e7c58593          	addi	a1,a1,-388 # 80009608 <CONSOLE_STATUS+0x5f8>
    80007794:	00000097          	auipc	ra,0x0
    80007798:	5f4080e7          	jalr	1524(ra) # 80007d88 <initlock>
    8000779c:	01813083          	ld	ra,24(sp)
    800077a0:	01013403          	ld	s0,16(sp)
    800077a4:	0004ac23          	sw	zero,24(s1)
    800077a8:	00813483          	ld	s1,8(sp)
    800077ac:	02010113          	addi	sp,sp,32
    800077b0:	00008067          	ret

00000000800077b4 <uartinit>:
    800077b4:	ff010113          	addi	sp,sp,-16
    800077b8:	00813423          	sd	s0,8(sp)
    800077bc:	01010413          	addi	s0,sp,16
    800077c0:	100007b7          	lui	a5,0x10000
    800077c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077c8:	f8000713          	li	a4,-128
    800077cc:	00e781a3          	sb	a4,3(a5)
    800077d0:	00300713          	li	a4,3
    800077d4:	00e78023          	sb	a4,0(a5)
    800077d8:	000780a3          	sb	zero,1(a5)
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00700693          	li	a3,7
    800077e4:	00d78123          	sb	a3,2(a5)
    800077e8:	00e780a3          	sb	a4,1(a5)
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret

00000000800077f8 <uartputc>:
    800077f8:	00004797          	auipc	a5,0x4
    800077fc:	e907a783          	lw	a5,-368(a5) # 8000b688 <panicked>
    80007800:	00078463          	beqz	a5,80007808 <uartputc+0x10>
    80007804:	0000006f          	j	80007804 <uartputc+0xc>
    80007808:	fd010113          	addi	sp,sp,-48
    8000780c:	02813023          	sd	s0,32(sp)
    80007810:	00913c23          	sd	s1,24(sp)
    80007814:	01213823          	sd	s2,16(sp)
    80007818:	01313423          	sd	s3,8(sp)
    8000781c:	02113423          	sd	ra,40(sp)
    80007820:	03010413          	addi	s0,sp,48
    80007824:	00004917          	auipc	s2,0x4
    80007828:	e6c90913          	addi	s2,s2,-404 # 8000b690 <uart_tx_r>
    8000782c:	00093783          	ld	a5,0(s2)
    80007830:	00004497          	auipc	s1,0x4
    80007834:	e6848493          	addi	s1,s1,-408 # 8000b698 <uart_tx_w>
    80007838:	0004b703          	ld	a4,0(s1)
    8000783c:	02078693          	addi	a3,a5,32
    80007840:	00050993          	mv	s3,a0
    80007844:	02e69c63          	bne	a3,a4,8000787c <uartputc+0x84>
    80007848:	00001097          	auipc	ra,0x1
    8000784c:	834080e7          	jalr	-1996(ra) # 8000807c <push_on>
    80007850:	00093783          	ld	a5,0(s2)
    80007854:	0004b703          	ld	a4,0(s1)
    80007858:	02078793          	addi	a5,a5,32
    8000785c:	00e79463          	bne	a5,a4,80007864 <uartputc+0x6c>
    80007860:	0000006f          	j	80007860 <uartputc+0x68>
    80007864:	00001097          	auipc	ra,0x1
    80007868:	88c080e7          	jalr	-1908(ra) # 800080f0 <pop_on>
    8000786c:	00093783          	ld	a5,0(s2)
    80007870:	0004b703          	ld	a4,0(s1)
    80007874:	02078693          	addi	a3,a5,32
    80007878:	fce688e3          	beq	a3,a4,80007848 <uartputc+0x50>
    8000787c:	01f77693          	andi	a3,a4,31
    80007880:	00005597          	auipc	a1,0x5
    80007884:	10058593          	addi	a1,a1,256 # 8000c980 <uart_tx_buf>
    80007888:	00d586b3          	add	a3,a1,a3
    8000788c:	00170713          	addi	a4,a4,1
    80007890:	01368023          	sb	s3,0(a3)
    80007894:	00e4b023          	sd	a4,0(s1)
    80007898:	10000637          	lui	a2,0x10000
    8000789c:	02f71063          	bne	a4,a5,800078bc <uartputc+0xc4>
    800078a0:	0340006f          	j	800078d4 <uartputc+0xdc>
    800078a4:	00074703          	lbu	a4,0(a4)
    800078a8:	00f93023          	sd	a5,0(s2)
    800078ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078b0:	00093783          	ld	a5,0(s2)
    800078b4:	0004b703          	ld	a4,0(s1)
    800078b8:	00f70e63          	beq	a4,a5,800078d4 <uartputc+0xdc>
    800078bc:	00564683          	lbu	a3,5(a2)
    800078c0:	01f7f713          	andi	a4,a5,31
    800078c4:	00e58733          	add	a4,a1,a4
    800078c8:	0206f693          	andi	a3,a3,32
    800078cc:	00178793          	addi	a5,a5,1
    800078d0:	fc069ae3          	bnez	a3,800078a4 <uartputc+0xac>
    800078d4:	02813083          	ld	ra,40(sp)
    800078d8:	02013403          	ld	s0,32(sp)
    800078dc:	01813483          	ld	s1,24(sp)
    800078e0:	01013903          	ld	s2,16(sp)
    800078e4:	00813983          	ld	s3,8(sp)
    800078e8:	03010113          	addi	sp,sp,48
    800078ec:	00008067          	ret

00000000800078f0 <uartputc_sync>:
    800078f0:	ff010113          	addi	sp,sp,-16
    800078f4:	00813423          	sd	s0,8(sp)
    800078f8:	01010413          	addi	s0,sp,16
    800078fc:	00004717          	auipc	a4,0x4
    80007900:	d8c72703          	lw	a4,-628(a4) # 8000b688 <panicked>
    80007904:	02071663          	bnez	a4,80007930 <uartputc_sync+0x40>
    80007908:	00050793          	mv	a5,a0
    8000790c:	100006b7          	lui	a3,0x10000
    80007910:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007914:	02077713          	andi	a4,a4,32
    80007918:	fe070ce3          	beqz	a4,80007910 <uartputc_sync+0x20>
    8000791c:	0ff7f793          	andi	a5,a5,255
    80007920:	00f68023          	sb	a5,0(a3)
    80007924:	00813403          	ld	s0,8(sp)
    80007928:	01010113          	addi	sp,sp,16
    8000792c:	00008067          	ret
    80007930:	0000006f          	j	80007930 <uartputc_sync+0x40>

0000000080007934 <uartstart>:
    80007934:	ff010113          	addi	sp,sp,-16
    80007938:	00813423          	sd	s0,8(sp)
    8000793c:	01010413          	addi	s0,sp,16
    80007940:	00004617          	auipc	a2,0x4
    80007944:	d5060613          	addi	a2,a2,-688 # 8000b690 <uart_tx_r>
    80007948:	00004517          	auipc	a0,0x4
    8000794c:	d5050513          	addi	a0,a0,-688 # 8000b698 <uart_tx_w>
    80007950:	00063783          	ld	a5,0(a2)
    80007954:	00053703          	ld	a4,0(a0)
    80007958:	04f70263          	beq	a4,a5,8000799c <uartstart+0x68>
    8000795c:	100005b7          	lui	a1,0x10000
    80007960:	00005817          	auipc	a6,0x5
    80007964:	02080813          	addi	a6,a6,32 # 8000c980 <uart_tx_buf>
    80007968:	01c0006f          	j	80007984 <uartstart+0x50>
    8000796c:	0006c703          	lbu	a4,0(a3)
    80007970:	00f63023          	sd	a5,0(a2)
    80007974:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007978:	00063783          	ld	a5,0(a2)
    8000797c:	00053703          	ld	a4,0(a0)
    80007980:	00f70e63          	beq	a4,a5,8000799c <uartstart+0x68>
    80007984:	01f7f713          	andi	a4,a5,31
    80007988:	00e806b3          	add	a3,a6,a4
    8000798c:	0055c703          	lbu	a4,5(a1)
    80007990:	00178793          	addi	a5,a5,1
    80007994:	02077713          	andi	a4,a4,32
    80007998:	fc071ae3          	bnez	a4,8000796c <uartstart+0x38>
    8000799c:	00813403          	ld	s0,8(sp)
    800079a0:	01010113          	addi	sp,sp,16
    800079a4:	00008067          	ret

00000000800079a8 <uartgetc>:
    800079a8:	ff010113          	addi	sp,sp,-16
    800079ac:	00813423          	sd	s0,8(sp)
    800079b0:	01010413          	addi	s0,sp,16
    800079b4:	10000737          	lui	a4,0x10000
    800079b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079bc:	0017f793          	andi	a5,a5,1
    800079c0:	00078c63          	beqz	a5,800079d8 <uartgetc+0x30>
    800079c4:	00074503          	lbu	a0,0(a4)
    800079c8:	0ff57513          	andi	a0,a0,255
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret
    800079d8:	fff00513          	li	a0,-1
    800079dc:	ff1ff06f          	j	800079cc <uartgetc+0x24>

00000000800079e0 <uartintr>:
    800079e0:	100007b7          	lui	a5,0x10000
    800079e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079e8:	0017f793          	andi	a5,a5,1
    800079ec:	0a078463          	beqz	a5,80007a94 <uartintr+0xb4>
    800079f0:	fe010113          	addi	sp,sp,-32
    800079f4:	00813823          	sd	s0,16(sp)
    800079f8:	00913423          	sd	s1,8(sp)
    800079fc:	00113c23          	sd	ra,24(sp)
    80007a00:	02010413          	addi	s0,sp,32
    80007a04:	100004b7          	lui	s1,0x10000
    80007a08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a0c:	0ff57513          	andi	a0,a0,255
    80007a10:	fffff097          	auipc	ra,0xfffff
    80007a14:	534080e7          	jalr	1332(ra) # 80006f44 <consoleintr>
    80007a18:	0054c783          	lbu	a5,5(s1)
    80007a1c:	0017f793          	andi	a5,a5,1
    80007a20:	fe0794e3          	bnez	a5,80007a08 <uartintr+0x28>
    80007a24:	00004617          	auipc	a2,0x4
    80007a28:	c6c60613          	addi	a2,a2,-916 # 8000b690 <uart_tx_r>
    80007a2c:	00004517          	auipc	a0,0x4
    80007a30:	c6c50513          	addi	a0,a0,-916 # 8000b698 <uart_tx_w>
    80007a34:	00063783          	ld	a5,0(a2)
    80007a38:	00053703          	ld	a4,0(a0)
    80007a3c:	04f70263          	beq	a4,a5,80007a80 <uartintr+0xa0>
    80007a40:	100005b7          	lui	a1,0x10000
    80007a44:	00005817          	auipc	a6,0x5
    80007a48:	f3c80813          	addi	a6,a6,-196 # 8000c980 <uart_tx_buf>
    80007a4c:	01c0006f          	j	80007a68 <uartintr+0x88>
    80007a50:	0006c703          	lbu	a4,0(a3)
    80007a54:	00f63023          	sd	a5,0(a2)
    80007a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a5c:	00063783          	ld	a5,0(a2)
    80007a60:	00053703          	ld	a4,0(a0)
    80007a64:	00f70e63          	beq	a4,a5,80007a80 <uartintr+0xa0>
    80007a68:	01f7f713          	andi	a4,a5,31
    80007a6c:	00e806b3          	add	a3,a6,a4
    80007a70:	0055c703          	lbu	a4,5(a1)
    80007a74:	00178793          	addi	a5,a5,1
    80007a78:	02077713          	andi	a4,a4,32
    80007a7c:	fc071ae3          	bnez	a4,80007a50 <uartintr+0x70>
    80007a80:	01813083          	ld	ra,24(sp)
    80007a84:	01013403          	ld	s0,16(sp)
    80007a88:	00813483          	ld	s1,8(sp)
    80007a8c:	02010113          	addi	sp,sp,32
    80007a90:	00008067          	ret
    80007a94:	00004617          	auipc	a2,0x4
    80007a98:	bfc60613          	addi	a2,a2,-1028 # 8000b690 <uart_tx_r>
    80007a9c:	00004517          	auipc	a0,0x4
    80007aa0:	bfc50513          	addi	a0,a0,-1028 # 8000b698 <uart_tx_w>
    80007aa4:	00063783          	ld	a5,0(a2)
    80007aa8:	00053703          	ld	a4,0(a0)
    80007aac:	04f70263          	beq	a4,a5,80007af0 <uartintr+0x110>
    80007ab0:	100005b7          	lui	a1,0x10000
    80007ab4:	00005817          	auipc	a6,0x5
    80007ab8:	ecc80813          	addi	a6,a6,-308 # 8000c980 <uart_tx_buf>
    80007abc:	01c0006f          	j	80007ad8 <uartintr+0xf8>
    80007ac0:	0006c703          	lbu	a4,0(a3)
    80007ac4:	00f63023          	sd	a5,0(a2)
    80007ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007acc:	00063783          	ld	a5,0(a2)
    80007ad0:	00053703          	ld	a4,0(a0)
    80007ad4:	02f70063          	beq	a4,a5,80007af4 <uartintr+0x114>
    80007ad8:	01f7f713          	andi	a4,a5,31
    80007adc:	00e806b3          	add	a3,a6,a4
    80007ae0:	0055c703          	lbu	a4,5(a1)
    80007ae4:	00178793          	addi	a5,a5,1
    80007ae8:	02077713          	andi	a4,a4,32
    80007aec:	fc071ae3          	bnez	a4,80007ac0 <uartintr+0xe0>
    80007af0:	00008067          	ret
    80007af4:	00008067          	ret

0000000080007af8 <kinit>:
    80007af8:	fc010113          	addi	sp,sp,-64
    80007afc:	02913423          	sd	s1,40(sp)
    80007b00:	fffff7b7          	lui	a5,0xfffff
    80007b04:	00006497          	auipc	s1,0x6
    80007b08:	e9b48493          	addi	s1,s1,-357 # 8000d99f <end+0xfff>
    80007b0c:	02813823          	sd	s0,48(sp)
    80007b10:	01313c23          	sd	s3,24(sp)
    80007b14:	00f4f4b3          	and	s1,s1,a5
    80007b18:	02113c23          	sd	ra,56(sp)
    80007b1c:	03213023          	sd	s2,32(sp)
    80007b20:	01413823          	sd	s4,16(sp)
    80007b24:	01513423          	sd	s5,8(sp)
    80007b28:	04010413          	addi	s0,sp,64
    80007b2c:	000017b7          	lui	a5,0x1
    80007b30:	01100993          	li	s3,17
    80007b34:	00f487b3          	add	a5,s1,a5
    80007b38:	01b99993          	slli	s3,s3,0x1b
    80007b3c:	06f9e063          	bltu	s3,a5,80007b9c <kinit+0xa4>
    80007b40:	00005a97          	auipc	s5,0x5
    80007b44:	e60a8a93          	addi	s5,s5,-416 # 8000c9a0 <end>
    80007b48:	0754ec63          	bltu	s1,s5,80007bc0 <kinit+0xc8>
    80007b4c:	0734fa63          	bgeu	s1,s3,80007bc0 <kinit+0xc8>
    80007b50:	00088a37          	lui	s4,0x88
    80007b54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b58:	00004917          	auipc	s2,0x4
    80007b5c:	b4890913          	addi	s2,s2,-1208 # 8000b6a0 <kmem>
    80007b60:	00ca1a13          	slli	s4,s4,0xc
    80007b64:	0140006f          	j	80007b78 <kinit+0x80>
    80007b68:	000017b7          	lui	a5,0x1
    80007b6c:	00f484b3          	add	s1,s1,a5
    80007b70:	0554e863          	bltu	s1,s5,80007bc0 <kinit+0xc8>
    80007b74:	0534f663          	bgeu	s1,s3,80007bc0 <kinit+0xc8>
    80007b78:	00001637          	lui	a2,0x1
    80007b7c:	00100593          	li	a1,1
    80007b80:	00048513          	mv	a0,s1
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	5e4080e7          	jalr	1508(ra) # 80008168 <__memset>
    80007b8c:	00093783          	ld	a5,0(s2)
    80007b90:	00f4b023          	sd	a5,0(s1)
    80007b94:	00993023          	sd	s1,0(s2)
    80007b98:	fd4498e3          	bne	s1,s4,80007b68 <kinit+0x70>
    80007b9c:	03813083          	ld	ra,56(sp)
    80007ba0:	03013403          	ld	s0,48(sp)
    80007ba4:	02813483          	ld	s1,40(sp)
    80007ba8:	02013903          	ld	s2,32(sp)
    80007bac:	01813983          	ld	s3,24(sp)
    80007bb0:	01013a03          	ld	s4,16(sp)
    80007bb4:	00813a83          	ld	s5,8(sp)
    80007bb8:	04010113          	addi	sp,sp,64
    80007bbc:	00008067          	ret
    80007bc0:	00002517          	auipc	a0,0x2
    80007bc4:	a6850513          	addi	a0,a0,-1432 # 80009628 <digits+0x18>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	4b4080e7          	jalr	1204(ra) # 8000707c <panic>

0000000080007bd0 <freerange>:
    80007bd0:	fc010113          	addi	sp,sp,-64
    80007bd4:	000017b7          	lui	a5,0x1
    80007bd8:	02913423          	sd	s1,40(sp)
    80007bdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007be0:	009504b3          	add	s1,a0,s1
    80007be4:	fffff537          	lui	a0,0xfffff
    80007be8:	02813823          	sd	s0,48(sp)
    80007bec:	02113c23          	sd	ra,56(sp)
    80007bf0:	03213023          	sd	s2,32(sp)
    80007bf4:	01313c23          	sd	s3,24(sp)
    80007bf8:	01413823          	sd	s4,16(sp)
    80007bfc:	01513423          	sd	s5,8(sp)
    80007c00:	01613023          	sd	s6,0(sp)
    80007c04:	04010413          	addi	s0,sp,64
    80007c08:	00a4f4b3          	and	s1,s1,a0
    80007c0c:	00f487b3          	add	a5,s1,a5
    80007c10:	06f5e463          	bltu	a1,a5,80007c78 <freerange+0xa8>
    80007c14:	00005a97          	auipc	s5,0x5
    80007c18:	d8ca8a93          	addi	s5,s5,-628 # 8000c9a0 <end>
    80007c1c:	0954e263          	bltu	s1,s5,80007ca0 <freerange+0xd0>
    80007c20:	01100993          	li	s3,17
    80007c24:	01b99993          	slli	s3,s3,0x1b
    80007c28:	0734fc63          	bgeu	s1,s3,80007ca0 <freerange+0xd0>
    80007c2c:	00058a13          	mv	s4,a1
    80007c30:	00004917          	auipc	s2,0x4
    80007c34:	a7090913          	addi	s2,s2,-1424 # 8000b6a0 <kmem>
    80007c38:	00002b37          	lui	s6,0x2
    80007c3c:	0140006f          	j	80007c50 <freerange+0x80>
    80007c40:	000017b7          	lui	a5,0x1
    80007c44:	00f484b3          	add	s1,s1,a5
    80007c48:	0554ec63          	bltu	s1,s5,80007ca0 <freerange+0xd0>
    80007c4c:	0534fa63          	bgeu	s1,s3,80007ca0 <freerange+0xd0>
    80007c50:	00001637          	lui	a2,0x1
    80007c54:	00100593          	li	a1,1
    80007c58:	00048513          	mv	a0,s1
    80007c5c:	00000097          	auipc	ra,0x0
    80007c60:	50c080e7          	jalr	1292(ra) # 80008168 <__memset>
    80007c64:	00093703          	ld	a4,0(s2)
    80007c68:	016487b3          	add	a5,s1,s6
    80007c6c:	00e4b023          	sd	a4,0(s1)
    80007c70:	00993023          	sd	s1,0(s2)
    80007c74:	fcfa76e3          	bgeu	s4,a5,80007c40 <freerange+0x70>
    80007c78:	03813083          	ld	ra,56(sp)
    80007c7c:	03013403          	ld	s0,48(sp)
    80007c80:	02813483          	ld	s1,40(sp)
    80007c84:	02013903          	ld	s2,32(sp)
    80007c88:	01813983          	ld	s3,24(sp)
    80007c8c:	01013a03          	ld	s4,16(sp)
    80007c90:	00813a83          	ld	s5,8(sp)
    80007c94:	00013b03          	ld	s6,0(sp)
    80007c98:	04010113          	addi	sp,sp,64
    80007c9c:	00008067          	ret
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	98850513          	addi	a0,a0,-1656 # 80009628 <digits+0x18>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	3d4080e7          	jalr	980(ra) # 8000707c <panic>

0000000080007cb0 <kfree>:
    80007cb0:	fe010113          	addi	sp,sp,-32
    80007cb4:	00813823          	sd	s0,16(sp)
    80007cb8:	00113c23          	sd	ra,24(sp)
    80007cbc:	00913423          	sd	s1,8(sp)
    80007cc0:	02010413          	addi	s0,sp,32
    80007cc4:	03451793          	slli	a5,a0,0x34
    80007cc8:	04079c63          	bnez	a5,80007d20 <kfree+0x70>
    80007ccc:	00005797          	auipc	a5,0x5
    80007cd0:	cd478793          	addi	a5,a5,-812 # 8000c9a0 <end>
    80007cd4:	00050493          	mv	s1,a0
    80007cd8:	04f56463          	bltu	a0,a5,80007d20 <kfree+0x70>
    80007cdc:	01100793          	li	a5,17
    80007ce0:	01b79793          	slli	a5,a5,0x1b
    80007ce4:	02f57e63          	bgeu	a0,a5,80007d20 <kfree+0x70>
    80007ce8:	00001637          	lui	a2,0x1
    80007cec:	00100593          	li	a1,1
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	478080e7          	jalr	1144(ra) # 80008168 <__memset>
    80007cf8:	00004797          	auipc	a5,0x4
    80007cfc:	9a878793          	addi	a5,a5,-1624 # 8000b6a0 <kmem>
    80007d00:	0007b703          	ld	a4,0(a5)
    80007d04:	01813083          	ld	ra,24(sp)
    80007d08:	01013403          	ld	s0,16(sp)
    80007d0c:	00e4b023          	sd	a4,0(s1)
    80007d10:	0097b023          	sd	s1,0(a5)
    80007d14:	00813483          	ld	s1,8(sp)
    80007d18:	02010113          	addi	sp,sp,32
    80007d1c:	00008067          	ret
    80007d20:	00002517          	auipc	a0,0x2
    80007d24:	90850513          	addi	a0,a0,-1784 # 80009628 <digits+0x18>
    80007d28:	fffff097          	auipc	ra,0xfffff
    80007d2c:	354080e7          	jalr	852(ra) # 8000707c <panic>

0000000080007d30 <kalloc>:
    80007d30:	fe010113          	addi	sp,sp,-32
    80007d34:	00813823          	sd	s0,16(sp)
    80007d38:	00913423          	sd	s1,8(sp)
    80007d3c:	00113c23          	sd	ra,24(sp)
    80007d40:	02010413          	addi	s0,sp,32
    80007d44:	00004797          	auipc	a5,0x4
    80007d48:	95c78793          	addi	a5,a5,-1700 # 8000b6a0 <kmem>
    80007d4c:	0007b483          	ld	s1,0(a5)
    80007d50:	02048063          	beqz	s1,80007d70 <kalloc+0x40>
    80007d54:	0004b703          	ld	a4,0(s1)
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00500593          	li	a1,5
    80007d60:	00048513          	mv	a0,s1
    80007d64:	00e7b023          	sd	a4,0(a5)
    80007d68:	00000097          	auipc	ra,0x0
    80007d6c:	400080e7          	jalr	1024(ra) # 80008168 <__memset>
    80007d70:	01813083          	ld	ra,24(sp)
    80007d74:	01013403          	ld	s0,16(sp)
    80007d78:	00048513          	mv	a0,s1
    80007d7c:	00813483          	ld	s1,8(sp)
    80007d80:	02010113          	addi	sp,sp,32
    80007d84:	00008067          	ret

0000000080007d88 <initlock>:
    80007d88:	ff010113          	addi	sp,sp,-16
    80007d8c:	00813423          	sd	s0,8(sp)
    80007d90:	01010413          	addi	s0,sp,16
    80007d94:	00813403          	ld	s0,8(sp)
    80007d98:	00b53423          	sd	a1,8(a0)
    80007d9c:	00052023          	sw	zero,0(a0)
    80007da0:	00053823          	sd	zero,16(a0)
    80007da4:	01010113          	addi	sp,sp,16
    80007da8:	00008067          	ret

0000000080007dac <acquire>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00913423          	sd	s1,8(sp)
    80007db8:	00113c23          	sd	ra,24(sp)
    80007dbc:	01213023          	sd	s2,0(sp)
    80007dc0:	02010413          	addi	s0,sp,32
    80007dc4:	00050493          	mv	s1,a0
    80007dc8:	10002973          	csrr	s2,sstatus
    80007dcc:	100027f3          	csrr	a5,sstatus
    80007dd0:	ffd7f793          	andi	a5,a5,-3
    80007dd4:	10079073          	csrw	sstatus,a5
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	8e8080e7          	jalr	-1816(ra) # 800066c0 <mycpu>
    80007de0:	07852783          	lw	a5,120(a0)
    80007de4:	06078e63          	beqz	a5,80007e60 <acquire+0xb4>
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8d8080e7          	jalr	-1832(ra) # 800066c0 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	0004a703          	lw	a4,0(s1)
    80007df8:	0017879b          	addiw	a5,a5,1
    80007dfc:	06f52c23          	sw	a5,120(a0)
    80007e00:	04071063          	bnez	a4,80007e40 <acquire+0x94>
    80007e04:	00100713          	li	a4,1
    80007e08:	00070793          	mv	a5,a4
    80007e0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e10:	0007879b          	sext.w	a5,a5
    80007e14:	fe079ae3          	bnez	a5,80007e08 <acquire+0x5c>
    80007e18:	0ff0000f          	fence
    80007e1c:	fffff097          	auipc	ra,0xfffff
    80007e20:	8a4080e7          	jalr	-1884(ra) # 800066c0 <mycpu>
    80007e24:	01813083          	ld	ra,24(sp)
    80007e28:	01013403          	ld	s0,16(sp)
    80007e2c:	00a4b823          	sd	a0,16(s1)
    80007e30:	00013903          	ld	s2,0(sp)
    80007e34:	00813483          	ld	s1,8(sp)
    80007e38:	02010113          	addi	sp,sp,32
    80007e3c:	00008067          	ret
    80007e40:	0104b903          	ld	s2,16(s1)
    80007e44:	fffff097          	auipc	ra,0xfffff
    80007e48:	87c080e7          	jalr	-1924(ra) # 800066c0 <mycpu>
    80007e4c:	faa91ce3          	bne	s2,a0,80007e04 <acquire+0x58>
    80007e50:	00001517          	auipc	a0,0x1
    80007e54:	7e050513          	addi	a0,a0,2016 # 80009630 <digits+0x20>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	224080e7          	jalr	548(ra) # 8000707c <panic>
    80007e60:	00195913          	srli	s2,s2,0x1
    80007e64:	fffff097          	auipc	ra,0xfffff
    80007e68:	85c080e7          	jalr	-1956(ra) # 800066c0 <mycpu>
    80007e6c:	00197913          	andi	s2,s2,1
    80007e70:	07252e23          	sw	s2,124(a0)
    80007e74:	f75ff06f          	j	80007de8 <acquire+0x3c>

0000000080007e78 <release>:
    80007e78:	fe010113          	addi	sp,sp,-32
    80007e7c:	00813823          	sd	s0,16(sp)
    80007e80:	00113c23          	sd	ra,24(sp)
    80007e84:	00913423          	sd	s1,8(sp)
    80007e88:	01213023          	sd	s2,0(sp)
    80007e8c:	02010413          	addi	s0,sp,32
    80007e90:	00052783          	lw	a5,0(a0)
    80007e94:	00079a63          	bnez	a5,80007ea8 <release+0x30>
    80007e98:	00001517          	auipc	a0,0x1
    80007e9c:	7a050513          	addi	a0,a0,1952 # 80009638 <digits+0x28>
    80007ea0:	fffff097          	auipc	ra,0xfffff
    80007ea4:	1dc080e7          	jalr	476(ra) # 8000707c <panic>
    80007ea8:	01053903          	ld	s2,16(a0)
    80007eac:	00050493          	mv	s1,a0
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	810080e7          	jalr	-2032(ra) # 800066c0 <mycpu>
    80007eb8:	fea910e3          	bne	s2,a0,80007e98 <release+0x20>
    80007ebc:	0004b823          	sd	zero,16(s1)
    80007ec0:	0ff0000f          	fence
    80007ec4:	0f50000f          	fence	iorw,ow
    80007ec8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007ecc:	ffffe097          	auipc	ra,0xffffe
    80007ed0:	7f4080e7          	jalr	2036(ra) # 800066c0 <mycpu>
    80007ed4:	100027f3          	csrr	a5,sstatus
    80007ed8:	0027f793          	andi	a5,a5,2
    80007edc:	04079a63          	bnez	a5,80007f30 <release+0xb8>
    80007ee0:	07852783          	lw	a5,120(a0)
    80007ee4:	02f05e63          	blez	a5,80007f20 <release+0xa8>
    80007ee8:	fff7871b          	addiw	a4,a5,-1
    80007eec:	06e52c23          	sw	a4,120(a0)
    80007ef0:	00071c63          	bnez	a4,80007f08 <release+0x90>
    80007ef4:	07c52783          	lw	a5,124(a0)
    80007ef8:	00078863          	beqz	a5,80007f08 <release+0x90>
    80007efc:	100027f3          	csrr	a5,sstatus
    80007f00:	0027e793          	ori	a5,a5,2
    80007f04:	10079073          	csrw	sstatus,a5
    80007f08:	01813083          	ld	ra,24(sp)
    80007f0c:	01013403          	ld	s0,16(sp)
    80007f10:	00813483          	ld	s1,8(sp)
    80007f14:	00013903          	ld	s2,0(sp)
    80007f18:	02010113          	addi	sp,sp,32
    80007f1c:	00008067          	ret
    80007f20:	00001517          	auipc	a0,0x1
    80007f24:	73850513          	addi	a0,a0,1848 # 80009658 <digits+0x48>
    80007f28:	fffff097          	auipc	ra,0xfffff
    80007f2c:	154080e7          	jalr	340(ra) # 8000707c <panic>
    80007f30:	00001517          	auipc	a0,0x1
    80007f34:	71050513          	addi	a0,a0,1808 # 80009640 <digits+0x30>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	144080e7          	jalr	324(ra) # 8000707c <panic>

0000000080007f40 <holding>:
    80007f40:	00052783          	lw	a5,0(a0)
    80007f44:	00079663          	bnez	a5,80007f50 <holding+0x10>
    80007f48:	00000513          	li	a0,0
    80007f4c:	00008067          	ret
    80007f50:	fe010113          	addi	sp,sp,-32
    80007f54:	00813823          	sd	s0,16(sp)
    80007f58:	00913423          	sd	s1,8(sp)
    80007f5c:	00113c23          	sd	ra,24(sp)
    80007f60:	02010413          	addi	s0,sp,32
    80007f64:	01053483          	ld	s1,16(a0)
    80007f68:	ffffe097          	auipc	ra,0xffffe
    80007f6c:	758080e7          	jalr	1880(ra) # 800066c0 <mycpu>
    80007f70:	01813083          	ld	ra,24(sp)
    80007f74:	01013403          	ld	s0,16(sp)
    80007f78:	40a48533          	sub	a0,s1,a0
    80007f7c:	00153513          	seqz	a0,a0
    80007f80:	00813483          	ld	s1,8(sp)
    80007f84:	02010113          	addi	sp,sp,32
    80007f88:	00008067          	ret

0000000080007f8c <push_off>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00113c23          	sd	ra,24(sp)
    80007f98:	00913423          	sd	s1,8(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	100024f3          	csrr	s1,sstatus
    80007fa4:	100027f3          	csrr	a5,sstatus
    80007fa8:	ffd7f793          	andi	a5,a5,-3
    80007fac:	10079073          	csrw	sstatus,a5
    80007fb0:	ffffe097          	auipc	ra,0xffffe
    80007fb4:	710080e7          	jalr	1808(ra) # 800066c0 <mycpu>
    80007fb8:	07852783          	lw	a5,120(a0)
    80007fbc:	02078663          	beqz	a5,80007fe8 <push_off+0x5c>
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	700080e7          	jalr	1792(ra) # 800066c0 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	01813083          	ld	ra,24(sp)
    80007fd0:	01013403          	ld	s0,16(sp)
    80007fd4:	0017879b          	addiw	a5,a5,1
    80007fd8:	06f52c23          	sw	a5,120(a0)
    80007fdc:	00813483          	ld	s1,8(sp)
    80007fe0:	02010113          	addi	sp,sp,32
    80007fe4:	00008067          	ret
    80007fe8:	0014d493          	srli	s1,s1,0x1
    80007fec:	ffffe097          	auipc	ra,0xffffe
    80007ff0:	6d4080e7          	jalr	1748(ra) # 800066c0 <mycpu>
    80007ff4:	0014f493          	andi	s1,s1,1
    80007ff8:	06952e23          	sw	s1,124(a0)
    80007ffc:	fc5ff06f          	j	80007fc0 <push_off+0x34>

0000000080008000 <pop_off>:
    80008000:	ff010113          	addi	sp,sp,-16
    80008004:	00813023          	sd	s0,0(sp)
    80008008:	00113423          	sd	ra,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	ffffe097          	auipc	ra,0xffffe
    80008014:	6b0080e7          	jalr	1712(ra) # 800066c0 <mycpu>
    80008018:	100027f3          	csrr	a5,sstatus
    8000801c:	0027f793          	andi	a5,a5,2
    80008020:	04079663          	bnez	a5,8000806c <pop_off+0x6c>
    80008024:	07852783          	lw	a5,120(a0)
    80008028:	02f05a63          	blez	a5,8000805c <pop_off+0x5c>
    8000802c:	fff7871b          	addiw	a4,a5,-1
    80008030:	06e52c23          	sw	a4,120(a0)
    80008034:	00071c63          	bnez	a4,8000804c <pop_off+0x4c>
    80008038:	07c52783          	lw	a5,124(a0)
    8000803c:	00078863          	beqz	a5,8000804c <pop_off+0x4c>
    80008040:	100027f3          	csrr	a5,sstatus
    80008044:	0027e793          	ori	a5,a5,2
    80008048:	10079073          	csrw	sstatus,a5
    8000804c:	00813083          	ld	ra,8(sp)
    80008050:	00013403          	ld	s0,0(sp)
    80008054:	01010113          	addi	sp,sp,16
    80008058:	00008067          	ret
    8000805c:	00001517          	auipc	a0,0x1
    80008060:	5fc50513          	addi	a0,a0,1532 # 80009658 <digits+0x48>
    80008064:	fffff097          	auipc	ra,0xfffff
    80008068:	018080e7          	jalr	24(ra) # 8000707c <panic>
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	5d450513          	addi	a0,a0,1492 # 80009640 <digits+0x30>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	008080e7          	jalr	8(ra) # 8000707c <panic>

000000008000807c <push_on>:
    8000807c:	fe010113          	addi	sp,sp,-32
    80008080:	00813823          	sd	s0,16(sp)
    80008084:	00113c23          	sd	ra,24(sp)
    80008088:	00913423          	sd	s1,8(sp)
    8000808c:	02010413          	addi	s0,sp,32
    80008090:	100024f3          	csrr	s1,sstatus
    80008094:	100027f3          	csrr	a5,sstatus
    80008098:	0027e793          	ori	a5,a5,2
    8000809c:	10079073          	csrw	sstatus,a5
    800080a0:	ffffe097          	auipc	ra,0xffffe
    800080a4:	620080e7          	jalr	1568(ra) # 800066c0 <mycpu>
    800080a8:	07852783          	lw	a5,120(a0)
    800080ac:	02078663          	beqz	a5,800080d8 <push_on+0x5c>
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	610080e7          	jalr	1552(ra) # 800066c0 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	01813083          	ld	ra,24(sp)
    800080c0:	01013403          	ld	s0,16(sp)
    800080c4:	0017879b          	addiw	a5,a5,1
    800080c8:	06f52c23          	sw	a5,120(a0)
    800080cc:	00813483          	ld	s1,8(sp)
    800080d0:	02010113          	addi	sp,sp,32
    800080d4:	00008067          	ret
    800080d8:	0014d493          	srli	s1,s1,0x1
    800080dc:	ffffe097          	auipc	ra,0xffffe
    800080e0:	5e4080e7          	jalr	1508(ra) # 800066c0 <mycpu>
    800080e4:	0014f493          	andi	s1,s1,1
    800080e8:	06952e23          	sw	s1,124(a0)
    800080ec:	fc5ff06f          	j	800080b0 <push_on+0x34>

00000000800080f0 <pop_on>:
    800080f0:	ff010113          	addi	sp,sp,-16
    800080f4:	00813023          	sd	s0,0(sp)
    800080f8:	00113423          	sd	ra,8(sp)
    800080fc:	01010413          	addi	s0,sp,16
    80008100:	ffffe097          	auipc	ra,0xffffe
    80008104:	5c0080e7          	jalr	1472(ra) # 800066c0 <mycpu>
    80008108:	100027f3          	csrr	a5,sstatus
    8000810c:	0027f793          	andi	a5,a5,2
    80008110:	04078463          	beqz	a5,80008158 <pop_on+0x68>
    80008114:	07852783          	lw	a5,120(a0)
    80008118:	02f05863          	blez	a5,80008148 <pop_on+0x58>
    8000811c:	fff7879b          	addiw	a5,a5,-1
    80008120:	06f52c23          	sw	a5,120(a0)
    80008124:	07853783          	ld	a5,120(a0)
    80008128:	00079863          	bnez	a5,80008138 <pop_on+0x48>
    8000812c:	100027f3          	csrr	a5,sstatus
    80008130:	ffd7f793          	andi	a5,a5,-3
    80008134:	10079073          	csrw	sstatus,a5
    80008138:	00813083          	ld	ra,8(sp)
    8000813c:	00013403          	ld	s0,0(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret
    80008148:	00001517          	auipc	a0,0x1
    8000814c:	53850513          	addi	a0,a0,1336 # 80009680 <digits+0x70>
    80008150:	fffff097          	auipc	ra,0xfffff
    80008154:	f2c080e7          	jalr	-212(ra) # 8000707c <panic>
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	50850513          	addi	a0,a0,1288 # 80009660 <digits+0x50>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f1c080e7          	jalr	-228(ra) # 8000707c <panic>

0000000080008168 <__memset>:
    80008168:	ff010113          	addi	sp,sp,-16
    8000816c:	00813423          	sd	s0,8(sp)
    80008170:	01010413          	addi	s0,sp,16
    80008174:	1a060e63          	beqz	a2,80008330 <__memset+0x1c8>
    80008178:	40a007b3          	neg	a5,a0
    8000817c:	0077f793          	andi	a5,a5,7
    80008180:	00778693          	addi	a3,a5,7
    80008184:	00b00813          	li	a6,11
    80008188:	0ff5f593          	andi	a1,a1,255
    8000818c:	fff6071b          	addiw	a4,a2,-1
    80008190:	1b06e663          	bltu	a3,a6,8000833c <__memset+0x1d4>
    80008194:	1cd76463          	bltu	a4,a3,8000835c <__memset+0x1f4>
    80008198:	1a078e63          	beqz	a5,80008354 <__memset+0x1ec>
    8000819c:	00b50023          	sb	a1,0(a0)
    800081a0:	00100713          	li	a4,1
    800081a4:	1ae78463          	beq	a5,a4,8000834c <__memset+0x1e4>
    800081a8:	00b500a3          	sb	a1,1(a0)
    800081ac:	00200713          	li	a4,2
    800081b0:	1ae78a63          	beq	a5,a4,80008364 <__memset+0x1fc>
    800081b4:	00b50123          	sb	a1,2(a0)
    800081b8:	00300713          	li	a4,3
    800081bc:	18e78463          	beq	a5,a4,80008344 <__memset+0x1dc>
    800081c0:	00b501a3          	sb	a1,3(a0)
    800081c4:	00400713          	li	a4,4
    800081c8:	1ae78263          	beq	a5,a4,8000836c <__memset+0x204>
    800081cc:	00b50223          	sb	a1,4(a0)
    800081d0:	00500713          	li	a4,5
    800081d4:	1ae78063          	beq	a5,a4,80008374 <__memset+0x20c>
    800081d8:	00b502a3          	sb	a1,5(a0)
    800081dc:	00700713          	li	a4,7
    800081e0:	18e79e63          	bne	a5,a4,8000837c <__memset+0x214>
    800081e4:	00b50323          	sb	a1,6(a0)
    800081e8:	00700e93          	li	t4,7
    800081ec:	00859713          	slli	a4,a1,0x8
    800081f0:	00e5e733          	or	a4,a1,a4
    800081f4:	01059e13          	slli	t3,a1,0x10
    800081f8:	01c76e33          	or	t3,a4,t3
    800081fc:	01859313          	slli	t1,a1,0x18
    80008200:	006e6333          	or	t1,t3,t1
    80008204:	02059893          	slli	a7,a1,0x20
    80008208:	40f60e3b          	subw	t3,a2,a5
    8000820c:	011368b3          	or	a7,t1,a7
    80008210:	02859813          	slli	a6,a1,0x28
    80008214:	0108e833          	or	a6,a7,a6
    80008218:	03059693          	slli	a3,a1,0x30
    8000821c:	003e589b          	srliw	a7,t3,0x3
    80008220:	00d866b3          	or	a3,a6,a3
    80008224:	03859713          	slli	a4,a1,0x38
    80008228:	00389813          	slli	a6,a7,0x3
    8000822c:	00f507b3          	add	a5,a0,a5
    80008230:	00e6e733          	or	a4,a3,a4
    80008234:	000e089b          	sext.w	a7,t3
    80008238:	00f806b3          	add	a3,a6,a5
    8000823c:	00e7b023          	sd	a4,0(a5)
    80008240:	00878793          	addi	a5,a5,8
    80008244:	fed79ce3          	bne	a5,a3,8000823c <__memset+0xd4>
    80008248:	ff8e7793          	andi	a5,t3,-8
    8000824c:	0007871b          	sext.w	a4,a5
    80008250:	01d787bb          	addw	a5,a5,t4
    80008254:	0ce88e63          	beq	a7,a4,80008330 <__memset+0x1c8>
    80008258:	00f50733          	add	a4,a0,a5
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0017871b          	addiw	a4,a5,1
    80008264:	0cc77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0027871b          	addiw	a4,a5,2
    80008274:	0ac77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0037871b          	addiw	a4,a5,3
    80008284:	0ac77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0047871b          	addiw	a4,a5,4
    80008294:	08c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0057871b          	addiw	a4,a5,5
    800082a4:	08c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0067871b          	addiw	a4,a5,6
    800082b4:	06c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0077871b          	addiw	a4,a5,7
    800082c4:	06c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0087871b          	addiw	a4,a5,8
    800082d4:	04c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0097871b          	addiw	a4,a5,9
    800082e4:	04c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	00a7871b          	addiw	a4,a5,10
    800082f4:	02c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00b7871b          	addiw	a4,a5,11
    80008304:	02c77663          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00c7871b          	addiw	a4,a5,12
    80008314:	00c77e63          	bgeu	a4,a2,80008330 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00d7879b          	addiw	a5,a5,13
    80008324:	00c7f663          	bgeu	a5,a2,80008330 <__memset+0x1c8>
    80008328:	00f507b3          	add	a5,a0,a5
    8000832c:	00b78023          	sb	a1,0(a5)
    80008330:	00813403          	ld	s0,8(sp)
    80008334:	01010113          	addi	sp,sp,16
    80008338:	00008067          	ret
    8000833c:	00b00693          	li	a3,11
    80008340:	e55ff06f          	j	80008194 <__memset+0x2c>
    80008344:	00300e93          	li	t4,3
    80008348:	ea5ff06f          	j	800081ec <__memset+0x84>
    8000834c:	00100e93          	li	t4,1
    80008350:	e9dff06f          	j	800081ec <__memset+0x84>
    80008354:	00000e93          	li	t4,0
    80008358:	e95ff06f          	j	800081ec <__memset+0x84>
    8000835c:	00000793          	li	a5,0
    80008360:	ef9ff06f          	j	80008258 <__memset+0xf0>
    80008364:	00200e93          	li	t4,2
    80008368:	e85ff06f          	j	800081ec <__memset+0x84>
    8000836c:	00400e93          	li	t4,4
    80008370:	e7dff06f          	j	800081ec <__memset+0x84>
    80008374:	00500e93          	li	t4,5
    80008378:	e75ff06f          	j	800081ec <__memset+0x84>
    8000837c:	00600e93          	li	t4,6
    80008380:	e6dff06f          	j	800081ec <__memset+0x84>

0000000080008384 <__memmove>:
    80008384:	ff010113          	addi	sp,sp,-16
    80008388:	00813423          	sd	s0,8(sp)
    8000838c:	01010413          	addi	s0,sp,16
    80008390:	0e060863          	beqz	a2,80008480 <__memmove+0xfc>
    80008394:	fff6069b          	addiw	a3,a2,-1
    80008398:	0006881b          	sext.w	a6,a3
    8000839c:	0ea5e863          	bltu	a1,a0,8000848c <__memmove+0x108>
    800083a0:	00758713          	addi	a4,a1,7
    800083a4:	00a5e7b3          	or	a5,a1,a0
    800083a8:	40a70733          	sub	a4,a4,a0
    800083ac:	0077f793          	andi	a5,a5,7
    800083b0:	00f73713          	sltiu	a4,a4,15
    800083b4:	00174713          	xori	a4,a4,1
    800083b8:	0017b793          	seqz	a5,a5
    800083bc:	00e7f7b3          	and	a5,a5,a4
    800083c0:	10078863          	beqz	a5,800084d0 <__memmove+0x14c>
    800083c4:	00900793          	li	a5,9
    800083c8:	1107f463          	bgeu	a5,a6,800084d0 <__memmove+0x14c>
    800083cc:	0036581b          	srliw	a6,a2,0x3
    800083d0:	fff8081b          	addiw	a6,a6,-1
    800083d4:	02081813          	slli	a6,a6,0x20
    800083d8:	01d85893          	srli	a7,a6,0x1d
    800083dc:	00858813          	addi	a6,a1,8
    800083e0:	00058793          	mv	a5,a1
    800083e4:	00050713          	mv	a4,a0
    800083e8:	01088833          	add	a6,a7,a6
    800083ec:	0007b883          	ld	a7,0(a5)
    800083f0:	00878793          	addi	a5,a5,8
    800083f4:	00870713          	addi	a4,a4,8
    800083f8:	ff173c23          	sd	a7,-8(a4)
    800083fc:	ff0798e3          	bne	a5,a6,800083ec <__memmove+0x68>
    80008400:	ff867713          	andi	a4,a2,-8
    80008404:	02071793          	slli	a5,a4,0x20
    80008408:	0207d793          	srli	a5,a5,0x20
    8000840c:	00f585b3          	add	a1,a1,a5
    80008410:	40e686bb          	subw	a3,a3,a4
    80008414:	00f507b3          	add	a5,a0,a5
    80008418:	06e60463          	beq	a2,a4,80008480 <__memmove+0xfc>
    8000841c:	0005c703          	lbu	a4,0(a1)
    80008420:	00e78023          	sb	a4,0(a5)
    80008424:	04068e63          	beqz	a3,80008480 <__memmove+0xfc>
    80008428:	0015c603          	lbu	a2,1(a1)
    8000842c:	00100713          	li	a4,1
    80008430:	00c780a3          	sb	a2,1(a5)
    80008434:	04e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008438:	0025c603          	lbu	a2,2(a1)
    8000843c:	00200713          	li	a4,2
    80008440:	00c78123          	sb	a2,2(a5)
    80008444:	02e68e63          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008448:	0035c603          	lbu	a2,3(a1)
    8000844c:	00300713          	li	a4,3
    80008450:	00c781a3          	sb	a2,3(a5)
    80008454:	02e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008458:	0045c603          	lbu	a2,4(a1)
    8000845c:	00400713          	li	a4,4
    80008460:	00c78223          	sb	a2,4(a5)
    80008464:	00e68e63          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008468:	0055c603          	lbu	a2,5(a1)
    8000846c:	00500713          	li	a4,5
    80008470:	00c782a3          	sb	a2,5(a5)
    80008474:	00e68663          	beq	a3,a4,80008480 <__memmove+0xfc>
    80008478:	0065c703          	lbu	a4,6(a1)
    8000847c:	00e78323          	sb	a4,6(a5)
    80008480:	00813403          	ld	s0,8(sp)
    80008484:	01010113          	addi	sp,sp,16
    80008488:	00008067          	ret
    8000848c:	02061713          	slli	a4,a2,0x20
    80008490:	02075713          	srli	a4,a4,0x20
    80008494:	00e587b3          	add	a5,a1,a4
    80008498:	f0f574e3          	bgeu	a0,a5,800083a0 <__memmove+0x1c>
    8000849c:	02069613          	slli	a2,a3,0x20
    800084a0:	02065613          	srli	a2,a2,0x20
    800084a4:	fff64613          	not	a2,a2
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00c78633          	add	a2,a5,a2
    800084b0:	fff7c683          	lbu	a3,-1(a5)
    800084b4:	fff78793          	addi	a5,a5,-1
    800084b8:	fff70713          	addi	a4,a4,-1
    800084bc:	00d70023          	sb	a3,0(a4)
    800084c0:	fec798e3          	bne	a5,a2,800084b0 <__memmove+0x12c>
    800084c4:	00813403          	ld	s0,8(sp)
    800084c8:	01010113          	addi	sp,sp,16
    800084cc:	00008067          	ret
    800084d0:	02069713          	slli	a4,a3,0x20
    800084d4:	02075713          	srli	a4,a4,0x20
    800084d8:	00170713          	addi	a4,a4,1
    800084dc:	00e50733          	add	a4,a0,a4
    800084e0:	00050793          	mv	a5,a0
    800084e4:	0005c683          	lbu	a3,0(a1)
    800084e8:	00178793          	addi	a5,a5,1
    800084ec:	00158593          	addi	a1,a1,1
    800084f0:	fed78fa3          	sb	a3,-1(a5)
    800084f4:	fee798e3          	bne	a5,a4,800084e4 <__memmove+0x160>
    800084f8:	f89ff06f          	j	80008480 <__memmove+0xfc>

00000000800084fc <__putc>:
    800084fc:	fe010113          	addi	sp,sp,-32
    80008500:	00813823          	sd	s0,16(sp)
    80008504:	00113c23          	sd	ra,24(sp)
    80008508:	02010413          	addi	s0,sp,32
    8000850c:	00050793          	mv	a5,a0
    80008510:	fef40593          	addi	a1,s0,-17
    80008514:	00100613          	li	a2,1
    80008518:	00000513          	li	a0,0
    8000851c:	fef407a3          	sb	a5,-17(s0)
    80008520:	fffff097          	auipc	ra,0xfffff
    80008524:	b3c080e7          	jalr	-1220(ra) # 8000705c <console_write>
    80008528:	01813083          	ld	ra,24(sp)
    8000852c:	01013403          	ld	s0,16(sp)
    80008530:	02010113          	addi	sp,sp,32
    80008534:	00008067          	ret

0000000080008538 <__getc>:
    80008538:	fe010113          	addi	sp,sp,-32
    8000853c:	00813823          	sd	s0,16(sp)
    80008540:	00113c23          	sd	ra,24(sp)
    80008544:	02010413          	addi	s0,sp,32
    80008548:	fe840593          	addi	a1,s0,-24
    8000854c:	00100613          	li	a2,1
    80008550:	00000513          	li	a0,0
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	ae8080e7          	jalr	-1304(ra) # 8000703c <console_read>
    8000855c:	fe844503          	lbu	a0,-24(s0)
    80008560:	01813083          	ld	ra,24(sp)
    80008564:	01013403          	ld	s0,16(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret

0000000080008570 <console_handler>:
    80008570:	fe010113          	addi	sp,sp,-32
    80008574:	00813823          	sd	s0,16(sp)
    80008578:	00113c23          	sd	ra,24(sp)
    8000857c:	00913423          	sd	s1,8(sp)
    80008580:	02010413          	addi	s0,sp,32
    80008584:	14202773          	csrr	a4,scause
    80008588:	100027f3          	csrr	a5,sstatus
    8000858c:	0027f793          	andi	a5,a5,2
    80008590:	06079e63          	bnez	a5,8000860c <console_handler+0x9c>
    80008594:	00074c63          	bltz	a4,800085ac <console_handler+0x3c>
    80008598:	01813083          	ld	ra,24(sp)
    8000859c:	01013403          	ld	s0,16(sp)
    800085a0:	00813483          	ld	s1,8(sp)
    800085a4:	02010113          	addi	sp,sp,32
    800085a8:	00008067          	ret
    800085ac:	0ff77713          	andi	a4,a4,255
    800085b0:	00900793          	li	a5,9
    800085b4:	fef712e3          	bne	a4,a5,80008598 <console_handler+0x28>
    800085b8:	ffffe097          	auipc	ra,0xffffe
    800085bc:	6dc080e7          	jalr	1756(ra) # 80006c94 <plic_claim>
    800085c0:	00a00793          	li	a5,10
    800085c4:	00050493          	mv	s1,a0
    800085c8:	02f50c63          	beq	a0,a5,80008600 <console_handler+0x90>
    800085cc:	fc0506e3          	beqz	a0,80008598 <console_handler+0x28>
    800085d0:	00050593          	mv	a1,a0
    800085d4:	00001517          	auipc	a0,0x1
    800085d8:	fb450513          	addi	a0,a0,-76 # 80009588 <CONSOLE_STATUS+0x578>
    800085dc:	fffff097          	auipc	ra,0xfffff
    800085e0:	afc080e7          	jalr	-1284(ra) # 800070d8 <__printf>
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	01813083          	ld	ra,24(sp)
    800085ec:	00048513          	mv	a0,s1
    800085f0:	00813483          	ld	s1,8(sp)
    800085f4:	02010113          	addi	sp,sp,32
    800085f8:	ffffe317          	auipc	t1,0xffffe
    800085fc:	6d430067          	jr	1748(t1) # 80006ccc <plic_complete>
    80008600:	fffff097          	auipc	ra,0xfffff
    80008604:	3e0080e7          	jalr	992(ra) # 800079e0 <uartintr>
    80008608:	fddff06f          	j	800085e4 <console_handler+0x74>
    8000860c:	00001517          	auipc	a0,0x1
    80008610:	07c50513          	addi	a0,a0,124 # 80009688 <digits+0x78>
    80008614:	fffff097          	auipc	ra,0xfffff
    80008618:	a68080e7          	jalr	-1432(ra) # 8000707c <panic>
	...
