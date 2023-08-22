
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9b013103          	ld	sp,-1616(sp) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1f5060ef          	jal	ra,80006a10 <start>

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
    800010a8:	144010ef          	jal	ra,800021ec <_ZN5Riscv20handleEcallExceptionEv>

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
    800011b0:	3d0010ef          	jal	ra,80002580 <_ZN5Riscv14timerInterruptEv>

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
    800012b8:	531000ef          	jal	ra,80001fe8 <_ZN5Riscv17hardwareInterruptEv>

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
    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800013c4:	03f50593          	addi	a1,a0,63
    800013c8:	0065d593          	srli	a1,a1,0x6
    800013cc:	00100513          	li	a0,1
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	fac080e7          	jalr	-84(ra) # 8000137c <_Z18commonPartSysCallsiz>

    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800013d8:	00050793          	mv	a5,a0
    800013dc:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    800013e0:	fe843503          	ld	a0,-24(s0)
    __asm__ volatile("mv a1, %0": : "r"((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */
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
        char* stack=(char*) mem_alloc(DEFAULT_STACK_SIZE);
    80001460:	00001537          	lui	a0,0x1
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
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	91c080e7          	jalr	-1764(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    newElem->next= nullptr;
    80001774:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	2b87b783          	ld	a5,696(a5) # 8000ba30 <_ZN9Scheduler5firstE>
    80001780:	02078663          	beqz	a5,800017ac <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	2ac78793          	addi	a5,a5,684 # 8000ba30 <_ZN9Scheduler5firstE>
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
    800017b0:	28478793          	addi	a5,a5,644 # 8000ba30 <_ZN9Scheduler5firstE>
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
    800017d8:	25c53503          	ld	a0,604(a0) # 8000ba30 <_ZN9Scheduler5firstE>
    800017dc:	04050263          	beqz	a0,80001820 <_ZN9Scheduler3getEv+0x60>

    Elem* elem=first;
    TCB* t=elem->t;
    800017e0:	00053483          	ld	s1,0(a0)

    first=first->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	0000a717          	auipc	a4,0xa
    800017ec:	24f73423          	sd	a5,584(a4) # 8000ba30 <_ZN9Scheduler5firstE>
    if(first==nullptr)last=nullptr;
    800017f0:	02078263          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x54>


    MemoryAllocator::free(elem);
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	964080e7          	jalr	-1692(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>

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
    80001818:	2207b223          	sd	zero,548(a5) # 8000ba38 <_ZN9Scheduler4lastE>
    8000181c:	fd9ff06f          	j	800017f4 <_ZN9Scheduler3getEv+0x34>
    if(first==nullptr)return nullptr;
    80001820:	00050493          	mv	s1,a0
    80001824:	fd9ff06f          	j	800017fc <_ZN9Scheduler3getEv+0x3c>

0000000080001828 <_Z10idleThreadPv>:
#include "../h/Scheduler.hpp"
#include "../h/_console.hpp"

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
    80001858:	634080e7          	jalr	1588(ra) # 80005e88 <_Z8userMainv>
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
    8000187c:	03213023          	sd	s2,32(sp)
    80001880:	04010413          	addi	s0,sp,64

    MemoryAllocator::initialize();
    80001884:	00002097          	auipc	ra,0x2
    80001888:	a40080e7          	jalr	-1472(ra) # 800032c4 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    8000188c:	0000a797          	auipc	a5,0xa
    80001890:	1047b783          	ld	a5,260(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001894:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001898:	10579073          	csrw	stvec,a5

    _console::inputBuff=new BoundedBuffer();
    8000189c:	02800513          	li	a0,40
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	208080e7          	jalr	520(ra) # 80001aa8 <_Znwm>
    800018a8:	00050493          	mv	s1,a0
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	3ec080e7          	jalr	1004(ra) # 80002c98 <_ZN13BoundedBufferC1Ev>
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	1247b783          	ld	a5,292(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800018bc:	0097b023          	sd	s1,0(a5)
    _console::outputBuff=new BoundedBuffer();
    800018c0:	02800513          	li	a0,40
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	1e4080e7          	jalr	484(ra) # 80001aa8 <_Znwm>
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	3c8080e7          	jalr	968(ra) # 80002c98 <_ZN13BoundedBufferC1Ev>
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	0b07b783          	ld	a5,176(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018e0:	0097b023          	sd	s1,0(a5)


    TCB::newThrUserMode=false;
    800018e4:	0000a497          	auipc	s1,0xa
    800018e8:	0d44b483          	ld	s1,212(s1) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800018ec:	00048023          	sb	zero,0(s1)
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    800018f0:	00000613          	li	a2,0
    800018f4:	00000593          	li	a1,0
    800018f8:	fd840513          	addi	a0,s0,-40
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	b38080e7          	jalr	-1224(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=handleMain;
    80001904:	0000a797          	auipc	a5,0xa
    80001908:	0c47b783          	ld	a5,196(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000190c:	fd843703          	ld	a4,-40(s0)
    80001910:	00e7b023          	sd	a4,0(a5)

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);
    80001914:	00000613          	li	a2,0
    80001918:	00000597          	auipc	a1,0x0
    8000191c:	f1058593          	addi	a1,a1,-240 # 80001828 <_Z10idleThreadPv>
    80001920:	fd040513          	addi	a0,s0,-48
    80001924:	00000097          	auipc	ra,0x0
    80001928:	b10080e7          	jalr	-1264(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB* handleConsumerConsole;
    thread_create(&handleConsumerConsole, _console::consumerConsole,nullptr);
    8000192c:	00000613          	li	a2,0
    80001930:	0000a597          	auipc	a1,0xa
    80001934:	0685b583          	ld	a1,104(a1) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001938:	fc840513          	addi	a0,s0,-56
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	af8080e7          	jalr	-1288(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>

    thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	c18080e7          	jalr	-1000(ra) # 8000155c <_Z15thread_dispatchv>

    TCB::newThrUserMode=true;
    8000194c:	00100793          	li	a5,1
    80001950:	00f48023          	sb	a5,0(s1)
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);
    80001954:	00000613          	li	a2,0
    80001958:	00000597          	auipc	a1,0x0
    8000195c:	eec58593          	addi	a1,a1,-276 # 80001844 <_Z15userMainWrapperPv>
    80001960:	fc040513          	addi	a0,s0,-64
    80001964:	00000097          	auipc	ra,0x0
    80001968:	ad0080e7          	jalr	-1328(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    8000196c:	00200793          	li	a5,2
    80001970:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!handleUserMain->isFinished()){
    80001974:	fc043783          	ld	a5,-64(s0)
    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    }

    bool isFinished() const{
        return finished;
    80001978:	0307c783          	lbu	a5,48(a5)
    8000197c:	00079863          	bnez	a5,8000198c <main+0x120>
        thread_dispatch();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	bdc080e7          	jalr	-1060(ra) # 8000155c <_Z15thread_dispatchv>
    80001988:	fedff06f          	j	80001974 <main+0x108>
    }


    thread_dispatch();//da nit za ispis na konzolu odradi pre returna
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	bd0080e7          	jalr	-1072(ra) # 8000155c <_Z15thread_dispatchv>

    delete handleUserMain;
    80001994:	fc043503          	ld	a0,-64(s0)
    80001998:	00050863          	beqz	a0,800019a8 <main+0x13c>
    8000199c:	00053783          	ld	a5,0(a0)
    800019a0:	0087b783          	ld	a5,8(a5)
    800019a4:	000780e7          	jalr	a5
    delete handleIdle;
    800019a8:	fd043503          	ld	a0,-48(s0)
    800019ac:	00050863          	beqz	a0,800019bc <main+0x150>
    800019b0:	00053783          	ld	a5,0(a0)
    800019b4:	0087b783          	ld	a5,8(a5)
    800019b8:	000780e7          	jalr	a5
    delete handleMain;
    800019bc:	fd843503          	ld	a0,-40(s0)
    800019c0:	00050863          	beqz	a0,800019d0 <main+0x164>
    800019c4:	00053783          	ld	a5,0(a0)
    800019c8:	0087b783          	ld	a5,8(a5)
    800019cc:	000780e7          	jalr	a5
    delete handleConsumerConsole;
    800019d0:	fc843503          	ld	a0,-56(s0)
    800019d4:	00050863          	beqz	a0,800019e4 <main+0x178>
    800019d8:	00053783          	ld	a5,0(a0)
    800019dc:	0087b783          	ld	a5,8(a5)
    800019e0:	000780e7          	jalr	a5


    delete _console::inputBuff;
    800019e4:	0000a797          	auipc	a5,0xa
    800019e8:	ff47b783          	ld	a5,-12(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800019ec:	0007b483          	ld	s1,0(a5)
    800019f0:	00048e63          	beqz	s1,80001a0c <main+0x1a0>
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	404080e7          	jalr	1028(ra) # 80002dfc <_ZN13BoundedBufferD1Ev>
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	0f4080e7          	jalr	244(ra) # 80001af8 <_ZdlPv>
    delete _console::outputBuff;
    80001a0c:	0000a797          	auipc	a5,0xa
    80001a10:	f7c7b783          	ld	a5,-132(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a14:	0007b483          	ld	s1,0(a5)
    80001a18:	00048e63          	beqz	s1,80001a34 <main+0x1c8>
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	3dc080e7          	jalr	988(ra) # 80002dfc <_ZN13BoundedBufferD1Ev>
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	0cc080e7          	jalr	204(ra) # 80001af8 <_ZdlPv>

    delete Riscv::headSleeping;
    80001a34:	0000a797          	auipc	a5,0xa
    80001a38:	f8c7b783          	ld	a5,-116(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001a3c:	0007b503          	ld	a0,0(a5)
    80001a40:	00050663          	beqz	a0,80001a4c <main+0x1e0>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	0b4080e7          	jalr	180(ra) # 80001af8 <_ZdlPv>
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80001a4c:	00200793          	li	a5,2
    80001a50:	1007b073          	csrc	sstatus,a5
    /*Scheduler::get();
    Scheduler::get();*/

    Riscv::mc_sstatus(Riscv::BitMaskSStatus::SSTATUS_SIE);
    return 0;
    80001a54:	00000513          	li	a0,0
    80001a58:	03813083          	ld	ra,56(sp)
    80001a5c:	03013403          	ld	s0,48(sp)
    80001a60:	02813483          	ld	s1,40(sp)
    80001a64:	02013903          	ld	s2,32(sp)
    80001a68:	04010113          	addi	sp,sp,64
    80001a6c:	00008067          	ret
    80001a70:	00050913          	mv	s2,a0
    _console::inputBuff=new BoundedBuffer();
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	080080e7          	jalr	128(ra) # 80001af8 <_ZdlPv>
    80001a80:	00090513          	mv	a0,s2
    80001a84:	0000b097          	auipc	ra,0xb
    80001a88:	114080e7          	jalr	276(ra) # 8000cb98 <_Unwind_Resume>
    80001a8c:	00050913          	mv	s2,a0
    _console::outputBuff=new BoundedBuffer();
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	064080e7          	jalr	100(ra) # 80001af8 <_ZdlPv>
    80001a9c:	00090513          	mv	a0,s2
    80001aa0:	0000b097          	auipc	ra,0xb
    80001aa4:	0f8080e7          	jalr	248(ra) # 8000cb98 <_Unwind_Resume>

0000000080001aa8 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi 7
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	8fc080e7          	jalr	-1796(ra) # 800013b4 <_Z9mem_allocm>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_Znam>:

void *operator new[](uint64 n)
{
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	8d4080e7          	jalr	-1836(ra) # 800013b4 <_Z9mem_allocm>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	8ec080e7          	jalr	-1812(ra) # 800013f4 <_Z8mem_freePv>
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	8c4080e7          	jalr	-1852(ra) # 800013f4 <_Z8mem_freePv>
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_ZN6Thread22wrapperPolymorphThreadEPv>:

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00113423          	sd	ra,8(sp)
    80001b50:	00813023          	sd	s0,0(sp)
    80001b54:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001b58:	00053783          	ld	a5,0(a0)
    80001b5c:	0107b783          	ld	a5,16(a5)
    80001b60:	000780e7          	jalr	a5
}
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001b74:	fe010113          	addi	sp,sp,-32
    80001b78:	00113c23          	sd	ra,24(sp)
    80001b7c:	00813823          	sd	s0,16(sp)
    80001b80:	00913423          	sd	s1,8(sp)
    80001b84:	02010413          	addi	s0,sp,32
    80001b88:	00050493          	mv	s1,a0
    80001b8c:	0000a797          	auipc	a5,0xa
    80001b90:	bac78793          	addi	a5,a5,-1108 # 8000b738 <_ZTV6Thread+0x10>
    80001b94:	00f53023          	sd	a5,0(a0)
    thread_join(myHandle);
    80001b98:	00853503          	ld	a0,8(a0)
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	9ec080e7          	jalr	-1556(ra) # 80001588 <_Z11thread_joinP3TCB>
    delete myHandle;
    80001ba4:	0084b503          	ld	a0,8(s1)
    80001ba8:	00050863          	beqz	a0,80001bb8 <_ZN6ThreadD1Ev+0x44>
    80001bac:	00053783          	ld	a5,0(a0)
    80001bb0:	0087b783          	ld	a5,8(a5)
    80001bb4:	000780e7          	jalr	a5
}
    80001bb8:	01813083          	ld	ra,24(sp)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	00813483          	ld	s1,8(sp)
    80001bc4:	02010113          	addi	sp,sp,32
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN14PeriodicThreadD1Ev>:

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}

PeriodicThread::~PeriodicThread() {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00113423          	sd	ra,8(sp)
    80001bd4:	00813023          	sd	s0,0(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	0000a717          	auipc	a4,0xa
    80001be0:	ba470713          	addi	a4,a4,-1116 # 8000b780 <_ZTV14PeriodicThread+0x10>
    80001be4:	00e53023          	sd	a4,0(a0)
    period=0;
    80001be8:	02053023          	sd	zero,32(a0)
PeriodicThread::~PeriodicThread() {
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	f88080e7          	jalr	-120(ra) # 80001b74 <_ZN6ThreadD1Ev>
}
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	02010413          	addi	s0,sp,32
    80001c18:	00050493          	mv	s1,a0
}
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	f58080e7          	jalr	-168(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	ed0080e7          	jalr	-304(ra) # 80001af8 <_ZdlPv>
    80001c30:	01813083          	ld	ra,24(sp)
    80001c34:	01013403          	ld	s0,16(sp)
    80001c38:	00813483          	ld	s1,8(sp)
    80001c3c:	02010113          	addi	sp,sp,32
    80001c40:	00008067          	ret

0000000080001c44 <_ZN14PeriodicThreadD0Ev>:
PeriodicThread::~PeriodicThread() {
    80001c44:	fe010113          	addi	sp,sp,-32
    80001c48:	00113c23          	sd	ra,24(sp)
    80001c4c:	00813823          	sd	s0,16(sp)
    80001c50:	00913423          	sd	s1,8(sp)
    80001c54:	02010413          	addi	s0,sp,32
    80001c58:	00050493          	mv	s1,a0
}
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	f70080e7          	jalr	-144(ra) # 80001bcc <_ZN14PeriodicThreadD1Ev>
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	e90080e7          	jalr	-368(ra) # 80001af8 <_ZdlPv>
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	02010113          	addi	sp,sp,32
    80001c80:	00008067          	ret

0000000080001c84 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::run() {
    80001c84:	fe010113          	addi	sp,sp,-32
    80001c88:	00113c23          	sd	ra,24(sp)
    80001c8c:	00813823          	sd	s0,16(sp)
    80001c90:	00913423          	sd	s1,8(sp)
    80001c94:	02010413          	addi	s0,sp,32
    80001c98:	00050493          	mv	s1,a0
    while(period!=0){
    80001c9c:	0204b783          	ld	a5,32(s1)
    80001ca0:	02078263          	beqz	a5,80001cc4 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001ca4:	0004b783          	ld	a5,0(s1)
    80001ca8:	0187b783          	ld	a5,24(a5)
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	000780e7          	jalr	a5
        time_sleep(period);
    80001cb4:	0204b503          	ld	a0,32(s1)
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	828080e7          	jalr	-2008(ra) # 800014e0 <_Z10time_sleepm>
    while(period!=0){
    80001cc0:	fddff06f          	j	80001c9c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001cc4:	01813083          	ld	ra,24(sp)
    80001cc8:	01013403          	ld	s0,16(sp)
    80001ccc:	00813483          	ld	s1,8(sp)
    80001cd0:	02010113          	addi	sp,sp,32
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	00813023          	sd	s0,0(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	0000a797          	auipc	a5,0xa
    80001cec:	a7878793          	addi	a5,a5,-1416 # 8000b760 <_ZTV9Semaphore+0x10>
    80001cf0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001cf4:	00853503          	ld	a0,8(a0)
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	904080e7          	jalr	-1788(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d10:	fe010113          	addi	sp,sp,-32
    80001d14:	00113c23          	sd	ra,24(sp)
    80001d18:	00813823          	sd	s0,16(sp)
    80001d1c:	00913423          	sd	s1,8(sp)
    80001d20:	02010413          	addi	s0,sp,32
    80001d24:	00050493          	mv	s1,a0
}
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	fb0080e7          	jalr	-80(ra) # 80001cd8 <_ZN9SemaphoreD1Ev>
    80001d30:	00048513          	mv	a0,s1
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	dc4080e7          	jalr	-572(ra) # 80001af8 <_ZdlPv>
    80001d3c:	01813083          	ld	ra,24(sp)
    80001d40:	01013403          	ld	s0,16(sp)
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	02010113          	addi	sp,sp,32
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    80001d5c:	0000a797          	auipc	a5,0xa
    80001d60:	9dc78793          	addi	a5,a5,-1572 # 8000b738 <_ZTV6Thread+0x10>
    80001d64:	00f53023          	sd	a5,0(a0)
    80001d68:	00053423          	sd	zero,8(a0)
    80001d6c:	00b53823          	sd	a1,16(a0)
    80001d70:	00c53c23          	sd	a2,24(a0)
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN6Thread5startEv>:
int Thread::start() {
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00113423          	sd	ra,8(sp)
    80001d88:	00813023          	sd	s0,0(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001d90:	01853603          	ld	a2,24(a0)
    80001d94:	01053583          	ld	a1,16(a0)
    80001d98:	00850513          	addi	a0,a0,8
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	698080e7          	jalr	1688(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	798080e7          	jalr	1944(ra) # 8000155c <_Z15thread_dispatchv>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    80001de8:	0000a797          	auipc	a5,0xa
    80001dec:	95078793          	addi	a5,a5,-1712 # 8000b738 <_ZTV6Thread+0x10>
    80001df0:	00f53023          	sd	a5,0(a0)
    80001df4:	00053423          	sd	zero,8(a0)
    80001df8:	00000797          	auipc	a5,0x0
    80001dfc:	d5078793          	addi	a5,a5,-688 # 80001b48 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80001e00:	00f53823          	sd	a5,16(a0)
    80001e04:	00a53c23          	sd	a0,24(a0)
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001e24:	00853503          	ld	a0,8(a0)
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	760080e7          	jalr	1888(ra) # 80001588 <_Z11thread_joinP3TCB>
}
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001e50:	fffff097          	auipc	ra,0xfffff
    80001e54:	690080e7          	jalr	1680(ra) # 800014e0 <_Z10time_sleepm>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    80001e78:	0000a797          	auipc	a5,0xa
    80001e7c:	8e878793          	addi	a5,a5,-1816 # 8000b760 <_ZTV9Semaphore+0x10>
    80001e80:	00f53023          	sd	a5,0(a0)
    80001e84:	00053423          	sd	zero,8(a0)
    sem_open(&this->myHandle, init);
    80001e88:	00850513          	addi	a0,a0,8
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	72c080e7          	jalr	1836(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001eb4:	00853503          	ld	a0,8(a0)
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	790080e7          	jalr	1936(ra) # 80001648 <_Z8sem_waitP4_sem>
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001ee0:	00853503          	ld	a0,8(a0)
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	7b0080e7          	jalr	1968(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00813423          	sd	s0,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    period=0;
    80001f08:	02053023          	sd	zero,32(a0)
}
    80001f0c:	00813403          	ld	s0,8(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	01213023          	sd	s2,0(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050493          	mv	s1,a0
    80001f34:	00058913          	mv	s2,a1
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	ea4080e7          	jalr	-348(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80001f40:	0000a797          	auipc	a5,0xa
    80001f44:	84078793          	addi	a5,a5,-1984 # 8000b780 <_ZTV14PeriodicThread+0x10>
    80001f48:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80001f4c:	0324b023          	sd	s2,32(s1)
}
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	00813483          	ld	s1,8(sp)
    80001f5c:	00013903          	ld	s2,0(sp)
    80001f60:	02010113          	addi	sp,sp,32
    80001f64:	00008067          	ret

0000000080001f68 <_ZN7Console4getcEv>:

char Console::getc() {
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00113423          	sd	ra,8(sp)
    80001f70:	00813023          	sd	s0,0(sp)
    80001f74:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	768080e7          	jalr	1896(ra) # 800016e0 <_Z4getcv>
}
    80001f80:	00813083          	ld	ra,8(sp)
    80001f84:	00013403          	ld	s0,0(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00113423          	sd	ra,8(sp)
    80001f98:	00813023          	sd	s0,0(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	77c080e7          	jalr	1916(ra) # 8000171c <_Z4putcc>
}
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN5Riscv17hardwareInterruptEv>:
        }
        mc_sip(SIP_SSIP);
    }
}

void Riscv::hardwareInterrupt() {
    80001fe8:	fd010113          	addi	sp,sp,-48
    80001fec:	02113423          	sd	ra,40(sp)
    80001ff0:	02813023          	sd	s0,32(sp)
    80001ff4:	00913c23          	sd	s1,24(sp)
    80001ff8:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001ffc:	142027f3          	csrr	a5,scause
    80002000:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002004:	fd843703          	ld	a4,-40(s0)

    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80002008:	fff00793          	li	a5,-1
    8000200c:	03f79793          	slli	a5,a5,0x3f
    80002010:	00978793          	addi	a5,a5,9
    80002014:	00f70c63          	beq	a4,a5,8000202c <_ZN5Riscv17hardwareInterruptEv+0x44>
    /*uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
        //prekid konzola
        console_handler();
    }*/
}
    80002018:	02813083          	ld	ra,40(sp)
    8000201c:	02013403          	ld	s0,32(sp)
    80002020:	01813483          	ld	s1,24(sp)
    80002024:	03010113          	addi	sp,sp,48
    80002028:	00008067          	ret
        int intNumber=plic_claim();
    8000202c:	00005097          	auipc	ra,0x5
    80002030:	238080e7          	jalr	568(ra) # 80007264 <plic_claim>
    80002034:	00050493          	mv	s1,a0
        if(intNumber==CONSOLE_IRQ){
    80002038:	00a00793          	li	a5,10
    8000203c:	00f50a63          	beq	a0,a5,80002050 <_ZN5Riscv17hardwareInterruptEv+0x68>
        plic_complete(intNumber);
    80002040:	00048513          	mv	a0,s1
    80002044:	00005097          	auipc	ra,0x5
    80002048:	258080e7          	jalr	600(ra) # 8000729c <plic_complete>
}
    8000204c:	fcdff06f          	j	80002018 <_ZN5Riscv17hardwareInterruptEv+0x30>
            while((!_console::inputBuff_full()) && ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)){
    80002050:	00001097          	auipc	ra,0x1
    80002054:	fc0080e7          	jalr	-64(ra) # 80003010 <_ZN8_console14inputBuff_fullEv>
    80002058:	fe0514e3          	bnez	a0,80002040 <_ZN5Riscv17hardwareInterruptEv+0x58>
    8000205c:	0000a797          	auipc	a5,0xa
    80002060:	91c7b783          	ld	a5,-1764(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002064:	0007b783          	ld	a5,0(a5)
    80002068:	0007c783          	lbu	a5,0(a5)
    8000206c:	0017f793          	andi	a5,a5,1
    80002070:	fc0788e3          	beqz	a5,80002040 <_ZN5Riscv17hardwareInterruptEv+0x58>
                char c= *(char*)CONSOLE_RX_DATA;
    80002074:	0000a797          	auipc	a5,0xa
    80002078:	8fc7b783          	ld	a5,-1796(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000207c:	0007b783          	ld	a5,0(a5)
                _console::inputBuff_put(c);
    80002080:	0007c503          	lbu	a0,0(a5)
    80002084:	00001097          	auipc	ra,0x1
    80002088:	e68080e7          	jalr	-408(ra) # 80002eec <_ZN8_console13inputBuff_putEc>
            while((!_console::inputBuff_full()) && ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)){
    8000208c:	fc5ff06f          	j	80002050 <_ZN5Riscv17hardwareInterruptEv+0x68>

0000000080002090 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00813423          	sd	s0,8(sp)
    80002098:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    8000209c:	02000793          	li	a5,32
    800020a0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
    800020a4:	0000a797          	auipc	a5,0xa
    800020a8:	9147b783          	ld	a5,-1772(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800020ac:	0007c783          	lbu	a5,0(a5)
    800020b0:	02078063          	beqz	a5,800020d0 <_ZN5Riscv10popSppSpieEv+0x40>
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800020b4:	10000793          	li	a5,256
    800020b8:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    800020bc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800020c0:	10200073          	sret
}
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    800020d0:	10000793          	li	a5,256
    800020d4:	1007a073          	csrs	sstatus,a5
}
    800020d8:	fe5ff06f          	j	800020bc <_ZN5Riscv10popSppSpieEv+0x2c>

00000000800020dc <_ZN5Riscv10putToSleepEm>:


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    800020dc:	10050463          	beqz	a0,800021e4 <_ZN5Riscv10putToSleepEm+0x108>
int Riscv::putToSleep(time_t time) {
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	01213023          	sd	s2,0(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00050493          	mv	s1,a0
    TCB::running->setSleeping(true);
    800020fc:	0000a917          	auipc	s2,0xa
    80002100:	8cc93903          	ld	s2,-1844(s2) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002104:	00093783          	ld	a5,0(s2)
    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    80002108:	00100713          	li	a4,1
    8000210c:	04e780a3          	sb	a4,65(a5)

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002110:	00100513          	li	a0,1
    80002114:	00001097          	auipc	ra,0x1
    80002118:	f70080e7          	jalr	-144(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
    newElem->thr=TCB::running;
    8000211c:	00093783          	ld	a5,0(s2)
    80002120:	00f53023          	sd	a5,0(a0)

    if(!Riscv::headSleeping){
    80002124:	0000a617          	auipc	a2,0xa
    80002128:	91c63603          	ld	a2,-1764(a2) # 8000ba40 <_ZN5Riscv12headSleepingE>
    8000212c:	04060c63          	beqz	a2,80002184 <_ZN5Riscv10putToSleepEm+0xa8>
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
    80002130:	00863703          	ld	a4,8(a2)
    80002134:	06976263          	bltu	a4,s1,80002198 <_ZN5Riscv10putToSleepEm+0xbc>
            newElem->toSleepRel=time;
    80002138:	00953423          	sd	s1,8(a0)
            newElem->next=Riscv::headSleeping;
    8000213c:	00c53823          	sd	a2,16(a0)
            headSleeping->toSleepRel-=time;
    80002140:	00863703          	ld	a4,8(a2)
    80002144:	40970733          	sub	a4,a4,s1
    80002148:	00e63423          	sd	a4,8(a2)
            headSleeping=newElem;
    8000214c:	0000a797          	auipc	a5,0xa
    80002150:	8ea7ba23          	sd	a0,-1804(a5) # 8000ba40 <_ZN5Riscv12headSleepingE>
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    80002154:	0000a797          	auipc	a5,0xa
    80002158:	84c7b783          	ld	a5,-1972(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000215c:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002160:	00000097          	auipc	ra,0x0
    80002164:	5dc080e7          	jalr	1500(ra) # 8000273c <_ZN3TCB8dispatchEv>
    return 0;
    80002168:	00000513          	li	a0,0
}
    8000216c:	01813083          	ld	ra,24(sp)
    80002170:	01013403          	ld	s0,16(sp)
    80002174:	00813483          	ld	s1,8(sp)
    80002178:	00013903          	ld	s2,0(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret
        newElem->toSleepRel=time;
    80002184:	00953423          	sd	s1,8(a0)
        newElem->next=nullptr;
    80002188:	00053823          	sd	zero,16(a0)
        headSleeping=newElem;
    8000218c:	0000a797          	auipc	a5,0xa
    80002190:	8aa7ba23          	sd	a0,-1868(a5) # 8000ba40 <_ZN5Riscv12headSleepingE>
    80002194:	fc1ff06f          	j	80002154 <_ZN5Riscv10putToSleepEm+0x78>
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
    80002198:	40e48733          	sub	a4,s1,a4
            SleepingElem* pom=headSleeping->next;
    8000219c:	01063783          	ld	a5,16(a2)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    800021a0:	00078e63          	beqz	a5,800021bc <_ZN5Riscv10putToSleepEm+0xe0>
    800021a4:	0087b683          	ld	a3,8(a5)
    800021a8:	00e6fa63          	bgeu	a3,a4,800021bc <_ZN5Riscv10putToSleepEm+0xe0>
                relTime-=pom->toSleepRel;
    800021ac:	40d70733          	sub	a4,a4,a3
                prev=pom;
    800021b0:	00078613          	mv	a2,a5
                pom=pom->next;
    800021b4:	0107b783          	ld	a5,16(a5)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    800021b8:	fe9ff06f          	j	800021a0 <_ZN5Riscv10putToSleepEm+0xc4>
            if(pom==nullptr){
    800021bc:	02078063          	beqz	a5,800021dc <_ZN5Riscv10putToSleepEm+0x100>
                newElem->next=pom;
    800021c0:	00f53823          	sd	a5,16(a0)
                pom->toSleepRel-=relTime;
    800021c4:	0087b683          	ld	a3,8(a5)
    800021c8:	40e686b3          	sub	a3,a3,a4
    800021cc:	00d7b423          	sd	a3,8(a5)
            newElem->toSleepRel=relTime;
    800021d0:	00e53423          	sd	a4,8(a0)
            prev->next=newElem;
    800021d4:	00a63823          	sd	a0,16(a2)
    800021d8:	f7dff06f          	j	80002154 <_ZN5Riscv10putToSleepEm+0x78>
                newElem->next= nullptr;
    800021dc:	00053823          	sd	zero,16(a0)
    800021e0:	ff1ff06f          	j	800021d0 <_ZN5Riscv10putToSleepEm+0xf4>
    if(time<=0)return -1;
    800021e4:	fff00513          	li	a0,-1
}
    800021e8:	00008067          	ret

00000000800021ec <_ZN5Riscv20handleEcallExceptionEv>:
void Riscv::handleEcallException(){
    800021ec:	f9010113          	addi	sp,sp,-112
    800021f0:	06113423          	sd	ra,104(sp)
    800021f4:	06813023          	sd	s0,96(sp)
    800021f8:	04913c23          	sd	s1,88(sp)
    800021fc:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002200:	142027f3          	csrr	a5,scause
    80002204:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002208:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    8000220c:	05043783          	ld	a5,80(s0)
    80002210:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    80002214:	05843783          	ld	a5,88(s0)
    80002218:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    8000221c:	06043783          	ld	a5,96(s0)
    80002220:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    80002224:	06843783          	ld	a5,104(s0)
    80002228:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    8000222c:	07043783          	ld	a5,112(s0)
    80002230:	faf43c23          	sd	a5,-72(s0)
    if(scause==0x09UL || scause==0x08UL){
    80002234:	ff848713          	addi	a4,s1,-8
    80002238:	00100793          	li	a5,1
    8000223c:	22e7e263          	bltu	a5,a4,80002460 <_ZN5Riscv20handleEcallExceptionEv+0x274>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002240:	141027f3          	csrr	a5,sepc
    80002244:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002248:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc=r_sepc()+4;
    8000224c:	00478793          	addi	a5,a5,4
    80002250:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002254:	100027f3          	csrr	a5,sstatus
    80002258:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    8000225c:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus=r_sstatus();
    80002260:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    80002264:	fd843703          	ld	a4,-40(s0)
    80002268:	00100793          	li	a5,1
    8000226c:	0af70463          	beq	a4,a5,80002314 <_ZN5Riscv20handleEcallExceptionEv+0x128>
        else if(a0==0x02){
    80002270:	fd843703          	ld	a4,-40(s0)
    80002274:	00200793          	li	a5,2
    80002278:	0cf70863          	beq	a4,a5,80002348 <_ZN5Riscv20handleEcallExceptionEv+0x15c>
        else if(a0==0x11){
    8000227c:	fd843703          	ld	a4,-40(s0)
    80002280:	01100793          	li	a5,17
    80002284:	0cf70c63          	beq	a4,a5,8000235c <_ZN5Riscv20handleEcallExceptionEv+0x170>
        else if(a0==0x12){
    80002288:	fd843703          	ld	a4,-40(s0)
    8000228c:	01200793          	li	a5,18
    80002290:	10f70263          	beq	a4,a5,80002394 <_ZN5Riscv20handleEcallExceptionEv+0x1a8>
        else if(a0==0x13){
    80002294:	fd843703          	ld	a4,-40(s0)
    80002298:	01300793          	li	a5,19
    8000229c:	10f70463          	beq	a4,a5,800023a4 <_ZN5Riscv20handleEcallExceptionEv+0x1b8>
        else if(a0==0x41){
    800022a0:	fd843703          	ld	a4,-40(s0)
    800022a4:	04100793          	li	a5,65
    800022a8:	10f70a63          	beq	a4,a5,800023bc <_ZN5Riscv20handleEcallExceptionEv+0x1d0>
        else if(a0==0x42){
    800022ac:	fd843703          	ld	a4,-40(s0)
    800022b0:	04200793          	li	a5,66
    800022b4:	10f70c63          	beq	a4,a5,800023cc <_ZN5Riscv20handleEcallExceptionEv+0x1e0>
        else if(a0==0x21){
    800022b8:	fd843703          	ld	a4,-40(s0)
    800022bc:	02100793          	li	a5,33
    800022c0:	12f70063          	beq	a4,a5,800023e0 <_ZN5Riscv20handleEcallExceptionEv+0x1f4>
        else if(a0==0x23){
    800022c4:	fd843703          	ld	a4,-40(s0)
    800022c8:	02300793          	li	a5,35
    800022cc:	14f70463          	beq	a4,a5,80002414 <_ZN5Riscv20handleEcallExceptionEv+0x228>
        else if(a0==0x22){
    800022d0:	fd843703          	ld	a4,-40(s0)
    800022d4:	02200793          	li	a5,34
    800022d8:	14f70863          	beq	a4,a5,80002428 <_ZN5Riscv20handleEcallExceptionEv+0x23c>
        else if(a0==0x24){
    800022dc:	fd843703          	ld	a4,-40(s0)
    800022e0:	02400793          	li	a5,36
    800022e4:	14f70c63          	beq	a4,a5,8000243c <_ZN5Riscv20handleEcallExceptionEv+0x250>
        else if(a0==0x14){
    800022e8:	fd843703          	ld	a4,-40(s0)
    800022ec:	01400793          	li	a5,20
    800022f0:	16f70063          	beq	a4,a5,80002450 <_ZN5Riscv20handleEcallExceptionEv+0x264>
        else if(a0==0x31){
    800022f4:	fd843703          	ld	a4,-40(s0)
    800022f8:	03100793          	li	a5,49
    800022fc:	02f71463          	bne	a4,a5,80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            time_t time=(time_t)a1;
    80002300:	fd043503          	ld	a0,-48(s0)
            int stat=Riscv::putToSleep(time);
    80002304:	00000097          	auipc	ra,0x0
    80002308:	dd8080e7          	jalr	-552(ra) # 800020dc <_ZN5Riscv10putToSleepEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000230c:	04a43823          	sd	a0,80(s0)
    80002310:	0140006f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            void *ptr=MemoryAllocator::alloc(a1);
    80002314:	fd043503          	ld	a0,-48(s0)
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	d6c080e7          	jalr	-660(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80002320:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002324:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002328:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000232c:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002330:	14179073          	csrw	sepc,a5
}
    80002334:	06813083          	ld	ra,104(sp)
    80002338:	06013403          	ld	s0,96(sp)
    8000233c:	05813483          	ld	s1,88(sp)
    80002340:	07010113          	addi	sp,sp,112
    80002344:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    80002348:	fd043503          	ld	a0,-48(s0)
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	e0c080e7          	jalr	-500(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002354:	04a43823          	sd	a0,80(s0)
    80002358:	fcdff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB* handle= TCB::createThread((TCB::Body)a2, (char*)a4, (void*)a3);
    8000235c:	fc843503          	ld	a0,-56(s0)
    80002360:	fb843583          	ld	a1,-72(s0)
    80002364:	fc043603          	ld	a2,-64(s0)
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	504080e7          	jalr	1284(ra) # 8000286c <_ZN3TCB12createThreadEPFvPvEPcS0_>
            if(!handle){
    80002370:	00050c63          	beqz	a0,80002388 <_ZN5Riscv20handleEcallExceptionEv+0x19c>
                TCB** retHandle=(TCB**)a1;
    80002374:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    80002378:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    8000237c:	00000793          	li	a5,0
    80002380:	04f43823          	sd	a5,80(s0)
    80002384:	fa1ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002388:	fff00793          	li	a5,-1
    8000238c:	04f43823          	sd	a5,80(s0)
    80002390:	f95ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            int stat=TCB::exit();
    80002394:	00000097          	auipc	ra,0x0
    80002398:	598080e7          	jalr	1432(ra) # 8000292c <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000239c:	04a43823          	sd	a0,80(s0)
    800023a0:	f85ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    800023a4:	00009797          	auipc	a5,0x9
    800023a8:	5fc7b783          	ld	a5,1532(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800023ac:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	38c080e7          	jalr	908(ra) # 8000273c <_ZN3TCB8dispatchEv>
    800023b8:	f6dff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c= _console::inputBuff_take();
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	b64080e7          	jalr	-1180(ra) # 80002f20 <_ZN8_console14inputBuff_takeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    800023c4:	04a43823          	sd	a0,80(s0)
    800023c8:	f5dff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=(char)a1;
    800023cc:	fd043503          	ld	a0,-48(s0)
            _console::outputBuff_put(c);
    800023d0:	0ff57513          	andi	a0,a0,255
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	b7c080e7          	jalr	-1156(ra) # 80002f50 <_ZN8_console14outputBuff_putEc>
    800023dc:	f49ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=_sem::open((int)a2);
    800023e0:	fc843503          	ld	a0,-56(s0)
    800023e4:	0005051b          	sext.w	a0,a0
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	610080e7          	jalr	1552(ra) # 800029f8 <_ZN4_sem4openEi>
            if(!handle){
    800023f0:	00050c63          	beqz	a0,80002408 <_ZN5Riscv20handleEcallExceptionEv+0x21c>
                _sem** retHandle=(_sem**)a1;
    800023f4:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    800023f8:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    800023fc:	00000793          	li	a5,0
    80002400:	04f43823          	sd	a5,80(s0)
    80002404:	f21ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002408:	fff00793          	li	a5,-1
    8000240c:	04f43823          	sd	a5,80(s0)
    80002410:	f15ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002414:	fd043503          	ld	a0,-48(s0)
            int stat=handle->wait();
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	6dc080e7          	jalr	1756(ra) # 80002af4 <_ZN4_sem4waitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002420:	04a43823          	sd	a0,80(s0)
    80002424:	f01ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002428:	fd043503          	ld	a0,-48(s0)
            int stat=handle->close();
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	7fc080e7          	jalr	2044(ra) # 80002c28 <_ZN4_sem5closeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002434:	04a43823          	sd	a0,80(s0)
    80002438:	eedff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    8000243c:	fd043503          	ld	a0,-48(s0)
            int stat=handle->signal();
    80002440:	00000097          	auipc	ra,0x0
    80002444:	790080e7          	jalr	1936(ra) # 80002bd0 <_ZN4_sem6signalEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002448:	04a43823          	sd	a0,80(s0)
    8000244c:	ed9ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    80002450:	fd043503          	ld	a0,-48(s0)
    80002454:	00000097          	auipc	ra,0x0
    80002458:	52c080e7          	jalr	1324(ra) # 80002980 <_ZN3TCB4joinEPS_>
    8000245c:	ec9ff06f          	j	80002324 <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    80002460:	00007517          	auipc	a0,0x7
    80002464:	bc050513          	addi	a0,a0,-1088 # 80009020 <CONSOLE_STATUS+0x10>
    80002468:	00003097          	auipc	ra,0x3
    8000246c:	358080e7          	jalr	856(ra) # 800057c0 <_Z11printStringPKc>
        printInt(scause);
    80002470:	00000613          	li	a2,0
    80002474:	00a00593          	li	a1,10
    80002478:	0004851b          	sext.w	a0,s1
    8000247c:	00003097          	auipc	ra,0x3
    80002480:	4f4080e7          	jalr	1268(ra) # 80005970 <_Z8printIntiii>
        printString("\nsepc:");
    80002484:	00007517          	auipc	a0,0x7
    80002488:	ba450513          	addi	a0,a0,-1116 # 80009028 <CONSOLE_STATUS+0x18>
    8000248c:	00003097          	auipc	ra,0x3
    80002490:	334080e7          	jalr	820(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002494:	141027f3          	csrr	a5,sepc
    80002498:	faf43823          	sd	a5,-80(s0)
    return sepc;
    8000249c:	fb043503          	ld	a0,-80(s0)
        printInt(r_sepc());
    800024a0:	00000613          	li	a2,0
    800024a4:	00a00593          	li	a1,10
    800024a8:	0005051b          	sext.w	a0,a0
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	4c4080e7          	jalr	1220(ra) # 80005970 <_Z8printIntiii>
        printString("\n");
    800024b4:	00007517          	auipc	a0,0x7
    800024b8:	ec450513          	addi	a0,a0,-316 # 80009378 <CONSOLE_STATUS+0x368>
    800024bc:	00003097          	auipc	ra,0x3
    800024c0:	304080e7          	jalr	772(ra) # 800057c0 <_Z11printStringPKc>
        while(true){
    800024c4:	0000006f          	j	800024c4 <_ZN5Riscv20handleEcallExceptionEv+0x2d8>

00000000800024c8 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    800024c8:	00009797          	auipc	a5,0x9
    800024cc:	5787b783          	ld	a5,1400(a5) # 8000ba40 <_ZN5Riscv12headSleepingE>
    800024d0:	00078a63          	beqz	a5,800024e4 <_ZN5Riscv18updateSleepingListEv+0x1c>
        if(--headSleeping->toSleepRel==0){
    800024d4:	0087b703          	ld	a4,8(a5)
    800024d8:	fff70713          	addi	a4,a4,-1
    800024dc:	00e7b423          	sd	a4,8(a5)
    800024e0:	00070463          	beqz	a4,800024e8 <_ZN5Riscv18updateSleepingListEv+0x20>
    800024e4:	00008067          	ret
void Riscv::updateSleepingList() {
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
            headSleeping->thr->setSleeping(false);
    800024f8:	0007b703          	ld	a4,0(a5)
    800024fc:	040700a3          	sb	zero,65(a4)
            Scheduler::put(headSleeping->thr);
    80002500:	0007b503          	ld	a0,0(a5)
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	248080e7          	jalr	584(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
            SleepingElem* old=headSleeping;
    8000250c:	00009797          	auipc	a5,0x9
    80002510:	53478793          	addi	a5,a5,1332 # 8000ba40 <_ZN5Riscv12headSleepingE>
    80002514:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    80002518:	01053703          	ld	a4,16(a0)
    8000251c:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    80002520:	00001097          	auipc	ra,0x1
    80002524:	c38080e7          	jalr	-968(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002528:	00009797          	auipc	a5,0x9
    8000252c:	5187b783          	ld	a5,1304(a5) # 8000ba40 <_ZN5Riscv12headSleepingE>
    80002530:	04078063          	beqz	a5,80002570 <_ZN5Riscv18updateSleepingListEv+0xa8>
    80002534:	0087b703          	ld	a4,8(a5)
    80002538:	02071c63          	bnez	a4,80002570 <_ZN5Riscv18updateSleepingListEv+0xa8>
                headSleeping->thr->setSleeping(false);
    8000253c:	0007b703          	ld	a4,0(a5)
    80002540:	040700a3          	sb	zero,65(a4)
                Scheduler::put(headSleeping->thr);
    80002544:	0007b503          	ld	a0,0(a5)
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	204080e7          	jalr	516(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
                old=headSleeping;
    80002550:	00009797          	auipc	a5,0x9
    80002554:	4f078793          	addi	a5,a5,1264 # 8000ba40 <_ZN5Riscv12headSleepingE>
    80002558:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    8000255c:	01053703          	ld	a4,16(a0)
    80002560:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    80002564:	00001097          	auipc	ra,0x1
    80002568:	bf4080e7          	jalr	-1036(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    8000256c:	fbdff06f          	j	80002528 <_ZN5Riscv18updateSleepingListEv+0x60>
            }
        }
    }
}
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN5Riscv14timerInterruptEv>:
void Riscv::timerInterrupt() {
    80002580:	fc010113          	addi	sp,sp,-64
    80002584:	02113c23          	sd	ra,56(sp)
    80002588:	02813823          	sd	s0,48(sp)
    8000258c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002590:	142027f3          	csrr	a5,scause
    80002594:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002598:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000001UL){
    8000259c:	fff00793          	li	a5,-1
    800025a0:	03f79793          	slli	a5,a5,0x3f
    800025a4:	00178793          	addi	a5,a5,1
    800025a8:	00f70a63          	beq	a4,a5,800025bc <_ZN5Riscv14timerInterruptEv+0x3c>
}
    800025ac:	03813083          	ld	ra,56(sp)
    800025b0:	03013403          	ld	s0,48(sp)
    800025b4:	04010113          	addi	sp,sp,64
    800025b8:	00008067          	ret
        updateSleepingList();
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	f0c080e7          	jalr	-244(ra) # 800024c8 <_ZN5Riscv18updateSleepingListEv>
        TCB::timeSliceCounter++;
    800025c4:	00009717          	auipc	a4,0x9
    800025c8:	3dc73703          	ld	a4,988(a4) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800025cc:	00073783          	ld	a5,0(a4)
    800025d0:	00178793          	addi	a5,a5,1
    800025d4:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800025d8:	00009717          	auipc	a4,0x9
    800025dc:	3f073703          	ld	a4,1008(a4) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800025e0:	00073703          	ld	a4,0(a4)
        return timeSlice;
    800025e4:	02873703          	ld	a4,40(a4)
    800025e8:	00e7f863          	bgeu	a5,a4,800025f8 <_ZN5Riscv14timerInterruptEv+0x78>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    800025ec:	00200793          	li	a5,2
    800025f0:	1447b073          	csrc	sip,a5
}
    800025f4:	fb9ff06f          	j	800025ac <_ZN5Riscv14timerInterruptEv+0x2c>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800025f8:	141027f3          	csrr	a5,sepc
    800025fc:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80002600:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc=r_sepc();
    80002604:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002608:	100027f3          	csrr	a5,sstatus
    8000260c:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80002610:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus=r_sstatus();
    80002614:	fcf43823          	sd	a5,-48(s0)
            TCB::timeSliceCounter=0;
    80002618:	00009797          	auipc	a5,0x9
    8000261c:	3887b783          	ld	a5,904(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002620:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002624:	00000097          	auipc	ra,0x0
    80002628:	118080e7          	jalr	280(ra) # 8000273c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000262c:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002630:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002634:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002638:	14179073          	csrw	sepc,a5
}
    8000263c:	fb1ff06f          	j	800025ec <_ZN5Riscv14timerInterruptEv+0x6c>

0000000080002640 <_ZN3TCBD1Ev>:
                                     sleeping(false)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002640:	00009797          	auipc	a5,0x9
    80002644:	17078793          	addi	a5,a5,368 # 8000b7b0 <_ZTV3TCB+0x10>
    80002648:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    8000264c:	01053503          	ld	a0,16(a0)
    80002650:	02050663          	beqz	a0,8000267c <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    delete[] stack;
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	4bc080e7          	jalr	1212(ra) # 80001b20 <_ZdaPv>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret
    8000267c:	00008067          	ret

0000000080002680 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002680:	fe010113          	addi	sp,sp,-32
    80002684:	00113c23          	sd	ra,24(sp)
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00913423          	sd	s1,8(sp)
    80002690:	02010413          	addi	s0,sp,32
    80002694:	00050493          	mv	s1,a0
}
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	fa8080e7          	jalr	-88(ra) # 80002640 <_ZN3TCBD1Ev>
    800026a0:	00048513          	mv	a0,s1
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	454080e7          	jalr	1108(ra) # 80001af8 <_ZdlPv>
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	01013403          	ld	s0,16(sp)
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	02010113          	addi	sp,sp,32
    800026bc:	00008067          	ret

00000000800026c0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    800026c0:	fe010113          	addi	sp,sp,-32
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	00813823          	sd	s0,16(sp)
    800026cc:	00913423          	sd	s1,8(sp)
    800026d0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	9bc080e7          	jalr	-1604(ra) # 80002090 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800026dc:	00009497          	auipc	s1,0x9
    800026e0:	36c48493          	addi	s1,s1,876 # 8000ba48 <_ZN3TCB7runningE>
    800026e4:	0004b783          	ld	a5,0(s1)
    800026e8:	0087b703          	ld	a4,8(a5)
    800026ec:	0387b503          	ld	a0,56(a5)
    800026f0:	000700e7          	jalr	a4
    running->setFinished(true);
    800026f4:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800026f8:	00100713          	li	a4,1
    800026fc:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	e5c080e7          	jalr	-420(ra) # 8000155c <_Z15thread_dispatchv>
}
    80002708:	01813083          	ld	ra,24(sp)
    8000270c:	01013403          	ld	s0,16(sp)
    80002710:	00813483          	ld	s1,8(sp)
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00008067          	ret

000000008000271c <_ZN3TCB5yieldEv>:
void TCB::yield() {
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00813423          	sd	s0,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002728:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000272c:	00000073          	ecall
}
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000273c:	fe010113          	addi	sp,sp,-32
    80002740:	00113c23          	sd	ra,24(sp)
    80002744:	00813823          	sd	s0,16(sp)
    80002748:	00913423          	sd	s1,8(sp)
    8000274c:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002750:	00009497          	auipc	s1,0x9
    80002754:	2f84b483          	ld	s1,760(s1) # 8000ba48 <_ZN3TCB7runningE>
        return finished;
    80002758:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    8000275c:	00079a63          	bnez	a5,80002770 <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    80002760:	0404c783          	lbu	a5,64(s1)
    80002764:	00079663          	bnez	a5,80002770 <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    80002768:	0414c783          	lbu	a5,65(s1)
    8000276c:	02078c63          	beqz	a5,800027a4 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	050080e7          	jalr	80(ra) # 800017c0 <_ZN9Scheduler3getEv>
    80002778:	00009797          	auipc	a5,0x9
    8000277c:	2ca7b823          	sd	a0,720(a5) # 8000ba48 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002780:	01850593          	addi	a1,a0,24
    80002784:	01848513          	addi	a0,s1,24
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	bc0080e7          	jalr	-1088(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret
        Scheduler::put(old);
    800027a4:	00048513          	mv	a0,s1
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	fa4080e7          	jalr	-92(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    800027b0:	fc1ff06f          	j	80002770 <_ZN3TCB8dispatchEv+0x34>

00000000800027b4 <_ZN3TCBC1EPFvPvEPcS0_m>:
                                     sleeping(false)
    800027b4:	00009797          	auipc	a5,0x9
    800027b8:	ffc78793          	addi	a5,a5,-4 # 8000b7b0 <_ZTV3TCB+0x10>
    800027bc:	00f53023          	sd	a5,0(a0)
    800027c0:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    800027c4:	06058263          	beqz	a1,80002828 <_ZN3TCBC1EPFvPvEPcS0_m+0x74>
                                     sleeping(false)
    800027c8:	00c53823          	sd	a2,16(a0)
    800027cc:	00000797          	auipc	a5,0x0
    800027d0:	ef478793          	addi	a5,a5,-268 # 800026c0 <_ZN3TCB13threadWrapperEv>
    800027d4:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800027d8:	04060c63          	beqz	a2,80002830 <_ZN3TCBC1EPFvPvEPcS0_m+0x7c>
    800027dc:	000017b7          	lui	a5,0x1
    800027e0:	00f60633          	add	a2,a2,a5
                                     sleeping(false)
    800027e4:	02c53023          	sd	a2,32(a0)
    800027e8:	02e53423          	sd	a4,40(a0)
    800027ec:	02050823          	sb	zero,48(a0)
    800027f0:	02d53c23          	sd	a3,56(a0)
    800027f4:	04050023          	sb	zero,64(a0)
    800027f8:	040500a3          	sb	zero,65(a0)
        if(body!=nullptr) Scheduler::put(this);
    800027fc:	02058e63          	beqz	a1,80002838 <_ZN3TCBC1EPFvPvEPcS0_m+0x84>
TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	f3c080e7          	jalr	-196(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    80002828:	00000613          	li	a2,0
    8000282c:	f9dff06f          	j	800027c8 <_ZN3TCBC1EPFvPvEPcS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002830:	00000613          	li	a2,0
    80002834:	fb1ff06f          	j	800027e4 <_ZN3TCBC1EPFvPvEPcS0_m+0x30>
    80002838:	00008067          	ret

000000008000283c <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    8000284c:	03f50513          	addi	a0,a0,63
    80002850:	00655513          	srli	a0,a0,0x6
    80002854:	00001097          	auipc	ra,0x1
    80002858:	830080e7          	jalr	-2000(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    8000285c:	00813083          	ld	ra,8(sp)
    80002860:	00013403          	ld	s0,0(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN3TCB12createThreadEPFvPvEPcS0_>:
TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    8000286c:	fd010113          	addi	sp,sp,-48
    80002870:	02113423          	sd	ra,40(sp)
    80002874:	02813023          	sd	s0,32(sp)
    80002878:	00913c23          	sd	s1,24(sp)
    8000287c:	01213823          	sd	s2,16(sp)
    80002880:	01313423          	sd	s3,8(sp)
    80002884:	01413023          	sd	s4,0(sp)
    80002888:	03010413          	addi	s0,sp,48
    8000288c:	00050913          	mv	s2,a0
    80002890:	00058993          	mv	s3,a1
    80002894:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, DEFAULT_TIME_SLICE);
    80002898:	04800513          	li	a0,72
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	fa0080e7          	jalr	-96(ra) # 8000283c <_ZN3TCBnwEm>
    800028a4:	00050493          	mv	s1,a0
    800028a8:	00200713          	li	a4,2
    800028ac:	000a0693          	mv	a3,s4
    800028b0:	00098613          	mv	a2,s3
    800028b4:	00090593          	mv	a1,s2
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	efc080e7          	jalr	-260(ra) # 800027b4 <_ZN3TCBC1EPFvPvEPcS0_m>
    800028c0:	0200006f          	j	800028e0 <_ZN3TCB12createThreadEPFvPvEPcS0_+0x74>
    800028c4:	00050913          	mv	s2,a0
    800028c8:	00048513          	mv	a0,s1
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	22c080e7          	jalr	556(ra) # 80001af8 <_ZdlPv>
    800028d4:	00090513          	mv	a0,s2
    800028d8:	0000a097          	auipc	ra,0xa
    800028dc:	2c0080e7          	jalr	704(ra) # 8000cb98 <_Unwind_Resume>
}
    800028e0:	00048513          	mv	a0,s1
    800028e4:	02813083          	ld	ra,40(sp)
    800028e8:	02013403          	ld	s0,32(sp)
    800028ec:	01813483          	ld	s1,24(sp)
    800028f0:	01013903          	ld	s2,16(sp)
    800028f4:	00813983          	ld	s3,8(sp)
    800028f8:	00013a03          	ld	s4,0(sp)
    800028fc:	03010113          	addi	sp,sp,48
    80002900:	00008067          	ret

0000000080002904 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002914:	00001097          	auipc	ra,0x1
    80002918:	844080e7          	jalr	-1980(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
}
    8000291c:	00813083          	ld	ra,8(sp)
    80002920:	00013403          	ld	s0,0(sp)
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00008067          	ret

000000008000292c <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(TCB::running->isFinished()){
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	11c7b783          	ld	a5,284(a5) # 8000ba48 <_ZN3TCB7runningE>
        return finished;
    80002934:	0307c703          	lbu	a4,48(a5)
    80002938:	04071063          	bnez	a4,80002978 <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
        TCB::finished = finished;
    8000294c:	00100713          	li	a4,1
    80002950:	02e78823          	sb	a4,48(a5)
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
    80002954:	00009797          	auipc	a5,0x9
    80002958:	0e07be23          	sd	zero,252(a5) # 8000ba50 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	de0080e7          	jalr	-544(ra) # 8000273c <_ZN3TCB8dispatchEv>
        return 0;
    80002964:	00000513          	li	a0,0
    }
}
    80002968:	00813083          	ld	ra,8(sp)
    8000296c:	00013403          	ld	s0,0(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret
        return -1;
    80002978:	fff00513          	li	a0,-1
}
    8000297c:	00008067          	ret

0000000080002980 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    80002980:	fe010113          	addi	sp,sp,-32
    80002984:	00113c23          	sd	ra,24(sp)
    80002988:	00813823          	sd	s0,16(sp)
    8000298c:	00913423          	sd	s1,8(sp)
    80002990:	02010413          	addi	s0,sp,32
    80002994:	00050493          	mv	s1,a0
        return finished;
    80002998:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    8000299c:	00079c63          	bnez	a5,800029b4 <_ZN3TCB4joinEPS_+0x34>
        TCB::timeSliceCounter=0;
    800029a0:	00009797          	auipc	a5,0x9
    800029a4:	0a07b823          	sd	zero,176(a5) # 8000ba50 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	d94080e7          	jalr	-620(ra) # 8000273c <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    800029b0:	fe9ff06f          	j	80002998 <_ZN3TCB4joinEPS_+0x18>
    }
}
    800029b4:	01813083          	ld	ra,24(sp)
    800029b8:	01013403          	ld	s0,16(sp)
    800029bc:	00813483          	ld	s1,8(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800029d8:	03f50513          	addi	a0,a0,63
    800029dc:	00655513          	srli	a0,a0,0x6
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	6a4080e7          	jalr	1700(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800029e8:	00813083          	ld	ra,8(sp)
    800029ec:	00013403          	ld	s0,0(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	02010413          	addi	s0,sp,32
    80002a0c:	00050493          	mv	s1,a0
    return new _sem(val);
    80002a10:	02000513          	li	a0,32
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	fb4080e7          	jalr	-76(ra) # 800029c8 <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    80002a1c:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    80002a20:	00053423          	sd	zero,8(a0)
    80002a24:	00053823          	sd	zero,16(a0)
    80002a28:	00050c23          	sb	zero,24(a0)
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00113423          	sd	ra,8(sp)
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	708080e7          	jalr	1800(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
}
    80002a58:	00813083          	ld	ra,8(sp)
    80002a5c:	00013403          	ld	s0,0(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    80002a68:	fe010113          	addi	sp,sp,-32
    80002a6c:	00113c23          	sd	ra,24(sp)
    80002a70:	00813823          	sd	s0,16(sp)
    80002a74:	00913423          	sd	s1,8(sp)
    80002a78:	01213023          	sd	s2,0(sp)
    80002a7c:	02010413          	addi	s0,sp,32
    80002a80:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    80002a84:	00009797          	auipc	a5,0x9
    80002a88:	f447b783          	ld	a5,-188(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002a8c:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002a90:	00100793          	li	a5,1
    80002a94:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002a98:	00100513          	li	a0,1
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	5e8080e7          	jalr	1512(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    80002aa4:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    80002aa8:	00053423          	sd	zero,8(a0)
        if(tail){
    80002aac:	0104b783          	ld	a5,16(s1)
    80002ab0:	02078c63          	beqz	a5,80002ae8 <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    80002ab4:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    80002ab8:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    80002abc:	00009797          	auipc	a5,0x9
    80002ac0:	ee47b783          	ld	a5,-284(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002ac4:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	c74080e7          	jalr	-908(ra) # 8000273c <_ZN3TCB8dispatchEv>
}
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00813483          	ld	s1,8(sp)
    80002adc:	00013903          	ld	s2,0(sp)
    80002ae0:	02010113          	addi	sp,sp,32
    80002ae4:	00008067          	ret
        }
        else{
            head=tail=newElem;
    80002ae8:	00a4b823          	sd	a0,16(s1)
    80002aec:	00a4b423          	sd	a0,8(s1)
    80002af0:	fcdff06f          	j	80002abc <_ZN4_sem5blockEv+0x54>

0000000080002af4 <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    80002af4:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002af8:	04079e63          	bnez	a5,80002b54 <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	02010413          	addi	s0,sp,32
    80002b10:	00050493          	mv	s1,a0
    if(--val<0){
    80002b14:	00052783          	lw	a5,0(a0)
    80002b18:	fff7879b          	addiw	a5,a5,-1
    80002b1c:	00f52023          	sw	a5,0(a0)
    80002b20:	02079713          	slli	a4,a5,0x20
    80002b24:	02074263          	bltz	a4,80002b48 <_ZN4_sem4waitEv+0x54>
    80002b28:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002b2c:	02079863          	bnez	a5,80002b5c <_ZN4_sem4waitEv+0x68>
    return 0;
    80002b30:	00000513          	li	a0,0
}
    80002b34:	01813083          	ld	ra,24(sp)
    80002b38:	01013403          	ld	s0,16(sp)
    80002b3c:	00813483          	ld	s1,8(sp)
    80002b40:	02010113          	addi	sp,sp,32
    80002b44:	00008067          	ret
        block();
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	f20080e7          	jalr	-224(ra) # 80002a68 <_ZN4_sem5blockEv>
    80002b50:	fd9ff06f          	j	80002b28 <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002b54:	fff00513          	li	a0,-1
}
    80002b58:	00008067          	ret
    if(this->isClosed())return -2;
    80002b5c:	ffe00513          	li	a0,-2
    80002b60:	fd5ff06f          	j	80002b34 <_ZN4_sem4waitEv+0x40>

0000000080002b64 <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002b64:	fe010113          	addi	sp,sp,-32
    80002b68:	00113c23          	sd	ra,24(sp)
    80002b6c:	00813823          	sd	s0,16(sp)
    80002b70:	00913423          	sd	s1,8(sp)
    80002b74:	02010413          	addi	s0,sp,32
    80002b78:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002b7c:	00853503          	ld	a0,8(a0)
    80002b80:	04050463          	beqz	a0,80002bc8 <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002b84:	00853703          	ld	a4,8(a0)
    80002b88:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002b8c:	02070a63          	beqz	a4,80002bc0 <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002b90:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	5c4080e7          	jalr	1476(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
    80002b9c:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	ba8080e7          	jalr	-1112(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    80002bac:	01813083          	ld	ra,24(sp)
    80002bb0:	01013403          	ld	s0,16(sp)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	02010113          	addi	sp,sp,32
    80002bbc:	00008067          	ret
        if(!head){tail=nullptr;}
    80002bc0:	0007b823          	sd	zero,16(a5)
    80002bc4:	fcdff06f          	j	80002b90 <_ZN4_sem7unblockEv+0x2c>
            return 0;
    80002bc8:	00050493          	mv	s1,a0
    80002bcc:	fd1ff06f          	j	80002b9c <_ZN4_sem7unblockEv+0x38>

0000000080002bd0 <_ZN4_sem6signalEv>:
    80002bd0:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002bd4:	04079663          	bnez	a5,80002c20 <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    80002bd8:	00052783          	lw	a5,0(a0)
    80002bdc:	0017879b          	addiw	a5,a5,1
    80002be0:	0007871b          	sext.w	a4,a5
    80002be4:	00f52023          	sw	a5,0(a0)
    80002be8:	00e05663          	blez	a4,80002bf4 <_ZN4_sem6signalEv+0x24>
    return 0;
    80002bec:	00000513          	li	a0,0
}
    80002bf0:	00008067          	ret
int _sem::signal() {
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00113423          	sd	ra,8(sp)
    80002bfc:	00813023          	sd	s0,0(sp)
    80002c00:	01010413          	addi	s0,sp,16
        unblock();
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	f60080e7          	jalr	-160(ra) # 80002b64 <_ZN4_sem7unblockEv>
    return 0;
    80002c0c:	00000513          	li	a0,0
}
    80002c10:	00813083          	ld	ra,8(sp)
    80002c14:	00013403          	ld	s0,0(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret
    if(this->isClosed())return -1;
    80002c20:	fff00513          	li	a0,-1
    80002c24:	00008067          	ret

0000000080002c28 <_ZN4_sem5closeEv>:
    80002c28:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002c2c:	04079263          	bnez	a5,80002c70 <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00813823          	sd	s0,16(sp)
    80002c3c:	00913423          	sd	s1,8(sp)
    80002c40:	02010413          	addi	s0,sp,32
    80002c44:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002c48:	00100793          	li	a5,1
    80002c4c:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002c50:	0084b783          	ld	a5,8(s1)
    80002c54:	02078263          	beqz	a5,80002c78 <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002c58:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002c5c:	02078a63          	beqz	a5,80002c90 <_ZN4_sem5closeEv+0x68>
        unblock();
    80002c60:	00048513          	mv	a0,s1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f00080e7          	jalr	-256(ra) # 80002b64 <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002c6c:	fe5ff06f          	j	80002c50 <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002c70:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002c74:	00008067          	ret
    return 0;
    80002c78:	00000513          	li	a0,0
}
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	01013403          	ld	s0,16(sp)
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret
    return 0;
    80002c90:	00000513          	li	a0,0
    80002c94:	fe9ff06f          	j	80002c7c <_ZN4_sem5closeEv+0x54>

0000000080002c98 <_ZN13BoundedBufferC1Ev>:
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0), count(0){
    80002c98:	fe010113          	addi	sp,sp,-32
    80002c9c:	00113c23          	sd	ra,24(sp)
    80002ca0:	00813823          	sd	s0,16(sp)
    80002ca4:	00913423          	sd	s1,8(sp)
    80002ca8:	02010413          	addi	s0,sp,32
    80002cac:	00050493          	mv	s1,a0
    80002cb0:	00052423          	sw	zero,8(a0)
    80002cb4:	00052623          	sw	zero,12(a0)
    80002cb8:	00052823          	sw	zero,16(a0)
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002cbc:	01000513          	li	a0,16
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	3c4080e7          	jalr	964(ra) # 80003084 <_ZN15MemoryAllocator5allocEm>
    80002cc8:	00a4b023          	sd	a0,0(s1)
    spaceAvailable=_sem::open(BUFF_CAP);
    80002ccc:	3e800513          	li	a0,1000
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	d28080e7          	jalr	-728(ra) # 800029f8 <_ZN4_sem4openEi>
    80002cd8:	00a4bc23          	sd	a0,24(s1)
    itemAvailable=_sem::open(0);
    80002cdc:	00000513          	li	a0,0
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	d18080e7          	jalr	-744(ra) # 800029f8 <_ZN4_sem4openEi>
    80002ce8:	02a4b023          	sd	a0,32(s1)
}
    80002cec:	01813083          	ld	ra,24(sp)
    80002cf0:	01013403          	ld	s0,16(sp)
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	01213023          	sd	s2,0(sp)
    80002d14:	02010413          	addi	s0,sp,32
    80002d18:	00050493          	mv	s1,a0
    80002d1c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002d20:	01853503          	ld	a0,24(a0)
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	dd0080e7          	jalr	-560(ra) # 80002af4 <_ZN4_sem4waitEv>
    buffer[tail]=c;
    80002d2c:	0004b783          	ld	a5,0(s1)
    80002d30:	00c4a703          	lw	a4,12(s1)
    80002d34:	00e787b3          	add	a5,a5,a4
    80002d38:	01278023          	sb	s2,0(a5)
    tail=(tail+1)%BUFF_CAP;
    80002d3c:	00c4a783          	lw	a5,12(s1)
    80002d40:	0017879b          	addiw	a5,a5,1
    80002d44:	3e800713          	li	a4,1000
    80002d48:	02e7e7bb          	remw	a5,a5,a4
    80002d4c:	00f4a623          	sw	a5,12(s1)
    count++;
    80002d50:	0104a783          	lw	a5,16(s1)
    80002d54:	0017879b          	addiw	a5,a5,1
    80002d58:	00f4a823          	sw	a5,16(s1)
    itemAvailable->signal();
    80002d5c:	0204b503          	ld	a0,32(s1)
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	e70080e7          	jalr	-400(ra) # 80002bd0 <_ZN4_sem6signalEv>
}
    80002d68:	01813083          	ld	ra,24(sp)
    80002d6c:	01013403          	ld	s0,16(sp)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	00013903          	ld	s2,0(sp)
    80002d78:	02010113          	addi	sp,sp,32
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN13BoundedBuffer17takeFromInterruptEv>:


char BoundedBuffer::takeFromInterrupt() {
    80002d80:	fe010113          	addi	sp,sp,-32
    80002d84:	00113c23          	sd	ra,24(sp)
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00913423          	sd	s1,8(sp)
    80002d90:	01213023          	sd	s2,0(sp)
    80002d94:	02010413          	addi	s0,sp,32
    80002d98:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002d9c:	02053503          	ld	a0,32(a0)
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	d54080e7          	jalr	-684(ra) # 80002af4 <_ZN4_sem4waitEv>
    char c=buffer[head];
    80002da8:	0004b703          	ld	a4,0(s1)
    80002dac:	0084a783          	lw	a5,8(s1)
    80002db0:	00f70733          	add	a4,a4,a5
    80002db4:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002db8:	0017879b          	addiw	a5,a5,1
    80002dbc:	3e800713          	li	a4,1000
    80002dc0:	02e7e7bb          	remw	a5,a5,a4
    80002dc4:	00f4a423          	sw	a5,8(s1)
    count--;
    80002dc8:	0104a783          	lw	a5,16(s1)
    80002dcc:	fff7879b          	addiw	a5,a5,-1
    80002dd0:	00f4a823          	sw	a5,16(s1)
    spaceAvailable->signal();
    80002dd4:	0184b503          	ld	a0,24(s1)
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	df8080e7          	jalr	-520(ra) # 80002bd0 <_ZN4_sem6signalEv>
    return c;
}
    80002de0:	00090513          	mv	a0,s2
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	00013903          	ld	s2,0(sp)
    80002df4:	02010113          	addi	sp,sp,32
    80002df8:	00008067          	ret

0000000080002dfc <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002dfc:	fe010113          	addi	sp,sp,-32
    80002e00:	00113c23          	sd	ra,24(sp)
    80002e04:	00813823          	sd	s0,16(sp)
    80002e08:	00913423          	sd	s1,8(sp)
    80002e0c:	02010413          	addi	s0,sp,32
    80002e10:	00050493          	mv	s1,a0
    MemoryAllocator::free(buffer);
    80002e14:	00053503          	ld	a0,0(a0)
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	340080e7          	jalr	832(ra) # 80003158 <_ZN15MemoryAllocator4freeEPv>
    /*itemAvailable->close();
    spaceAvailable->close();*/
    sem_close(itemAvailable);
    80002e20:	0204b503          	ld	a0,32(s1)
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	7d8080e7          	jalr	2008(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002e2c:	0184b503          	ld	a0,24(s1)
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	7cc080e7          	jalr	1996(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80002e38:	01813083          	ld	ra,24(sp)
    80002e3c:	01013403          	ld	s0,16(sp)
    80002e40:	00813483          	ld	s1,8(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret

0000000080002e4c <_ZN13BoundedBuffer17takeFromSysThreadEv>:

char BoundedBuffer::takeFromSysThread() {
    80002e4c:	fe010113          	addi	sp,sp,-32
    80002e50:	00113c23          	sd	ra,24(sp)
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00913423          	sd	s1,8(sp)
    80002e5c:	01213023          	sd	s2,0(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002e68:	02053503          	ld	a0,32(a0)
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	7dc080e7          	jalr	2012(ra) # 80001648 <_Z8sem_waitP4_sem>
    char c=buffer[head];
    80002e74:	0004b703          	ld	a4,0(s1)
    80002e78:	0084a783          	lw	a5,8(s1)
    80002e7c:	00f70733          	add	a4,a4,a5
    80002e80:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002e84:	0017879b          	addiw	a5,a5,1
    80002e88:	3e800713          	li	a4,1000
    80002e8c:	02e7e7bb          	remw	a5,a5,a4
    80002e90:	00f4a423          	sw	a5,8(s1)
    count--;
    80002e94:	0104a783          	lw	a5,16(s1)
    80002e98:	fff7879b          	addiw	a5,a5,-1
    80002e9c:	00f4a823          	sw	a5,16(s1)
    sem_signal(spaceAvailable);
    80002ea0:	0184b503          	ld	a0,24(s1)
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	7f0080e7          	jalr	2032(ra) # 80001694 <_Z10sem_signalP4_sem>
    return c;
}
    80002eac:	00090513          	mv	a0,s2
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	01013403          	ld	s0,16(sp)
    80002eb8:	00813483          	ld	s1,8(sp)
    80002ebc:	00013903          	ld	s2,0(sp)
    80002ec0:	02010113          	addi	sp,sp,32
    80002ec4:	00008067          	ret

0000000080002ec8 <_ZN13BoundedBuffer6isFullEv>:

bool BoundedBuffer::isFull() {
    80002ec8:	ff010113          	addi	sp,sp,-16
    80002ecc:	00813423          	sd	s0,8(sp)
    80002ed0:	01010413          	addi	s0,sp,16
    return count==BUFF_CAP;
    80002ed4:	01052503          	lw	a0,16(a0)
    80002ed8:	c1850513          	addi	a0,a0,-1000
}
    80002edc:	00153513          	seqz	a0,a0
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret

0000000080002eec <_ZN8_console13inputBuff_putEc>:

void _console::inputBuff_put(char c) {
    80002eec:	ff010113          	addi	sp,sp,-16
    80002ef0:	00113423          	sd	ra,8(sp)
    80002ef4:	00813023          	sd	s0,0(sp)
    80002ef8:	01010413          	addi	s0,sp,16
    80002efc:	00050593          	mv	a1,a0
    inputBuff->put(c);
    80002f00:	00009517          	auipc	a0,0x9
    80002f04:	b6053503          	ld	a0,-1184(a0) # 8000ba60 <_ZN8_console9inputBuffE>
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	df8080e7          	jalr	-520(ra) # 80002d00 <_ZN13BoundedBuffer3putEc>
}
    80002f10:	00813083          	ld	ra,8(sp)
    80002f14:	00013403          	ld	s0,0(sp)
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00008067          	ret

0000000080002f20 <_ZN8_console14inputBuff_takeEv>:

char _console::inputBuff_take() {
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00113423          	sd	ra,8(sp)
    80002f28:	00813023          	sd	s0,0(sp)
    80002f2c:	01010413          	addi	s0,sp,16
    return inputBuff->takeFromInterrupt();
    80002f30:	00009517          	auipc	a0,0x9
    80002f34:	b3053503          	ld	a0,-1232(a0) # 8000ba60 <_ZN8_console9inputBuffE>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	e48080e7          	jalr	-440(ra) # 80002d80 <_ZN13BoundedBuffer17takeFromInterruptEv>
}
    80002f40:	00813083          	ld	ra,8(sp)
    80002f44:	00013403          	ld	s0,0(sp)
    80002f48:	01010113          	addi	sp,sp,16
    80002f4c:	00008067          	ret

0000000080002f50 <_ZN8_console14outputBuff_putEc>:

void _console::outputBuff_put(char c) {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00113423          	sd	ra,8(sp)
    80002f58:	00813023          	sd	s0,0(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	00050593          	mv	a1,a0
    outputBuff->put(c);
    80002f64:	00009517          	auipc	a0,0x9
    80002f68:	b0453503          	ld	a0,-1276(a0) # 8000ba68 <_ZN8_console10outputBuffE>
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	d94080e7          	jalr	-620(ra) # 80002d00 <_ZN13BoundedBuffer3putEc>
}
    80002f74:	00813083          	ld	ra,8(sp)
    80002f78:	00013403          	ld	s0,0(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret

0000000080002f84 <_ZN8_console15outputBuff_takeEv>:

char _console::outputBuff_take() {
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00113423          	sd	ra,8(sp)
    80002f8c:	00813023          	sd	s0,0(sp)
    80002f90:	01010413          	addi	s0,sp,16
    return outputBuff->takeFromSysThread();
    80002f94:	00009517          	auipc	a0,0x9
    80002f98:	ad453503          	ld	a0,-1324(a0) # 8000ba68 <_ZN8_console10outputBuffE>
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	eb0080e7          	jalr	-336(ra) # 80002e4c <_ZN13BoundedBuffer17takeFromSysThreadEv>
}
    80002fa4:	00813083          	ld	ra,8(sp)
    80002fa8:	00013403          	ld	s0,0(sp)
    80002fac:	01010113          	addi	sp,sp,16
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN8_console15consumerConsoleEPv>:
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002fb4:	00009797          	auipc	a5,0x9
    80002fb8:	9c47b783          	ld	a5,-1596(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fbc:	0007b783          	ld	a5,0(a5)
    80002fc0:	0007c783          	lbu	a5,0(a5)
    80002fc4:	0207f793          	andi	a5,a5,32
    80002fc8:	fe0786e3          	beqz	a5,80002fb4 <_ZN8_console15consumerConsoleEPv>
void _console::consumerConsole(void*){
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00113423          	sd	ra,8(sp)
    80002fd4:	00813023          	sd	s0,0(sp)
    80002fd8:	01010413          	addi	s0,sp,16
            char c = _console::outputBuff_take();
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	fa8080e7          	jalr	-88(ra) # 80002f84 <_ZN8_console15outputBuff_takeEv>
            *(char *) CONSOLE_TX_DATA = c;
    80002fe4:	00009797          	auipc	a5,0x9
    80002fe8:	9c47b783          	ld	a5,-1596(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002fec:	0007b783          	ld	a5,0(a5)
    80002ff0:	00a78023          	sb	a0,0(a5)
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002ff4:	00009797          	auipc	a5,0x9
    80002ff8:	9847b783          	ld	a5,-1660(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ffc:	0007b783          	ld	a5,0(a5)
    80003000:	0007c783          	lbu	a5,0(a5)
    80003004:	0207f793          	andi	a5,a5,32
    80003008:	fe0786e3          	beqz	a5,80002ff4 <_ZN8_console15consumerConsoleEPv+0x40>
    8000300c:	fd1ff06f          	j	80002fdc <_ZN8_console15consumerConsoleEPv+0x28>

0000000080003010 <_ZN8_console14inputBuff_fullEv>:

bool _console::inputBuff_full() {
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00113423          	sd	ra,8(sp)
    80003018:	00813023          	sd	s0,0(sp)
    8000301c:	01010413          	addi	s0,sp,16
    return inputBuff->isFull();
    80003020:	00009517          	auipc	a0,0x9
    80003024:	a4053503          	ld	a0,-1472(a0) # 8000ba60 <_ZN8_console9inputBuffE>
    80003028:	00000097          	auipc	ra,0x0
    8000302c:	ea0080e7          	jalr	-352(ra) # 80002ec8 <_ZN13BoundedBuffer6isFullEv>
}
    80003030:	00813083          	ld	ra,8(sp)
    80003034:	00013403          	ld	s0,0(sp)
    80003038:	01010113          	addi	sp,sp,16
    8000303c:	00008067          	ret

0000000080003040 <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813423          	sd	s0,8(sp)
    80003048:	01010413          	addi	s0,sp,16
    8000304c:	00100793          	li	a5,1
    80003050:	00f50863          	beq	a0,a5,80003060 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003054:	00813403          	ld	s0,8(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret
    80003060:	000107b7          	lui	a5,0x10
    80003064:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003068:	fef596e3          	bne	a1,a5,80003054 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000306c:	00009797          	auipc	a5,0x9
    80003070:	9147b783          	ld	a5,-1772(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003074:	0007b783          	ld	a5,0(a5)
    80003078:	00009717          	auipc	a4,0x9
    8000307c:	9ef73c23          	sd	a5,-1544(a4) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    80003080:	fd5ff06f          	j	80003054 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003084 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80003090:	0a050c63          	beqz	a0,80003148 <_ZN15MemoryAllocator5allocEm+0xc4>
    80003094:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80003098:	00009797          	auipc	a5,0x9
    8000309c:	9d87b783          	ld	a5,-1576(a5) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    800030a0:	00000613          	li	a2,0
    while(free){
    800030a4:	00078e63          	beqz	a5,800030c0 <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    800030a8:	0007b703          	ld	a4,0(a5)
    800030ac:	fff70713          	addi	a4,a4,-1
    800030b0:	00d77863          	bgeu	a4,a3,800030c0 <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    800030b4:	00078613          	mv	a2,a5
        free=free->next;
    800030b8:	0087b783          	ld	a5,8(a5)
    while(free){
    800030bc:	fe9ff06f          	j	800030a4 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    800030c0:	08078863          	beqz	a5,80003150 <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    800030c4:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    800030c8:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    800030cc:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    800030d0:	fff70593          	addi	a1,a4,-1
    800030d4:	04d58063          	beq	a1,a3,80003114 <_ZN15MemoryAllocator5allocEm+0x90>
    800030d8:	ffe70593          	addi	a1,a4,-2
    800030dc:	02d58c63          	beq	a1,a3,80003114 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    800030e0:	40d70733          	sub	a4,a4,a3
    800030e4:	fff70713          	addi	a4,a4,-1
    800030e8:	00100593          	li	a1,1
    800030ec:	02e5fa63          	bgeu	a1,a4,80003120 <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    800030f0:	00168693          	addi	a3,a3,1
    800030f4:	00669593          	slli	a1,a3,0x6
    800030f8:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    800030fc:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80003100:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80003104:	02060c63          	beqz	a2,8000313c <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80003108:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    8000310c:	00d7b023          	sd	a3,0(a5)
    80003110:	0100006f          	j	80003120 <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80003114:	00060e63          	beqz	a2,80003130 <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80003118:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    8000311c:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80003120:	0007b423          	sd	zero,8(a5)
}
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret
            firstFreeSeg=free->next;
    80003130:	00009697          	auipc	a3,0x9
    80003134:	9506b023          	sd	a6,-1728(a3) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    80003138:	fe5ff06f          	j	8000311c <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    8000313c:	00009717          	auipc	a4,0x9
    80003140:	92b73a23          	sd	a1,-1740(a4) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    80003144:	fc9ff06f          	j	8000310c <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80003148:	00000513          	li	a0,0
    8000314c:	fd9ff06f          	j	80003124 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80003150:	00078513          	mv	a0,a5
    80003154:	fd1ff06f          	j	80003124 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080003158 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80003164:	14050c63          	beqz	a0,800032bc <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80003168:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    8000316c:	00009797          	auipc	a5,0x9
    80003170:	9047b783          	ld	a5,-1788(a5) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    80003174:	02078a63          	beqz	a5,800031a8 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80003178:	06f77863          	bgeu	a4,a5,800031e8 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    8000317c:	fc053603          	ld	a2,-64(a0)
    80003180:	00661693          	slli	a3,a2,0x6
    80003184:	00d706b3          	add	a3,a4,a3
    80003188:	02d78a63          	beq	a5,a3,800031bc <_ZN15MemoryAllocator4freeEPv+0x64>
            freeFromAddr->next=firstFreeSeg;
    8000318c:	fcf53423          	sd	a5,-56(a0)
            firstFreeSeg=freeFromAddr;
    80003190:	00009797          	auipc	a5,0x9
    80003194:	8ee7b023          	sd	a4,-1824(a5) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
            return 0;
    80003198:	00000513          	li	a0,0
}
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret
        freeFromAddr->next=nullptr;
    800031a8:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    800031ac:	00009797          	auipc	a5,0x9
    800031b0:	8ce7b223          	sd	a4,-1852(a5) # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    800031b4:	00000513          	li	a0,0
    800031b8:	fe5ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    800031bc:	0007b783          	ld	a5,0(a5)
    800031c0:	00f60633          	add	a2,a2,a5
    800031c4:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    800031c8:	00009797          	auipc	a5,0x9
    800031cc:	8a878793          	addi	a5,a5,-1880 # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    800031d0:	0007b683          	ld	a3,0(a5)
    800031d4:	0086b683          	ld	a3,8(a3)
    800031d8:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    800031dc:	00e7b023          	sd	a4,0(a5)
            return 0;
    800031e0:	00000513          	li	a0,0
    800031e4:	fb9ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    800031e8:	00000693          	li	a3,0
    while(nextFree){
    800031ec:	00078a63          	beqz	a5,80003200 <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    800031f0:	00f76863          	bltu	a4,a5,80003200 <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    800031f4:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    800031f8:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    800031fc:	ff1ff06f          	j	800031ec <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    80003200:	02078a63          	beqz	a5,80003234 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003204:	0006b583          	ld	a1,0(a3)
    80003208:	00659613          	slli	a2,a1,0x6
    8000320c:	00c68633          	add	a2,a3,a2
    80003210:	04e60c63          	beq	a2,a4,80003268 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80003214:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80003218:	fc053683          	ld	a3,-64(a0)
    8000321c:	00669613          	slli	a2,a3,0x6
    80003220:	00c70733          	add	a4,a4,a2
    80003224:	06f70e63          	beq	a4,a5,800032a0 <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80003228:	fcf53423          	sd	a5,-56(a0)
    return 0;
    8000322c:	00000513          	li	a0,0
    80003230:	f6dff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003234:	0006b603          	ld	a2,0(a3)
    80003238:	00661793          	slli	a5,a2,0x6
    8000323c:	00f687b3          	add	a5,a3,a5
    80003240:	00e78a63          	beq	a5,a4,80003254 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80003244:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    80003248:	00e6b423          	sd	a4,8(a3)
            return 0;
    8000324c:	00000513          	li	a0,0
    80003250:	f4dff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80003254:	fc053783          	ld	a5,-64(a0)
    80003258:	00f60633          	add	a2,a2,a5
    8000325c:	00c6b023          	sd	a2,0(a3)
            return 0;
    80003260:	00000513          	li	a0,0
    80003264:	f39ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80003268:	fc053703          	ld	a4,-64(a0)
    8000326c:	00e585b3          	add	a1,a1,a4
    80003270:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80003274:	00659713          	slli	a4,a1,0x6
    80003278:	00e68733          	add	a4,a3,a4
    8000327c:	00f70663          	beq	a4,a5,80003288 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    80003280:	00000513          	li	a0,0
    80003284:	f19ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80003288:	0007b703          	ld	a4,0(a5)
    8000328c:	00e585b3          	add	a1,a1,a4
    80003290:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80003294:	0087b783          	ld	a5,8(a5)
    80003298:	00f6b423          	sd	a5,8(a3)
    8000329c:	fe5ff06f          	j	80003280 <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    800032a0:	0007b703          	ld	a4,0(a5)
    800032a4:	00e686b3          	add	a3,a3,a4
    800032a8:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    800032ac:	0087b783          	ld	a5,8(a5)
    800032b0:	fcf53423          	sd	a5,-56(a0)
        return 0;
    800032b4:	00000513          	li	a0,0
    800032b8:	ee5ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    800032bc:	fff00513          	li	a0,-1
    800032c0:	eddff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0x44>

00000000800032c4 <_ZN15MemoryAllocator10initializeEv>:
{
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00813423          	sd	s0,8(sp)
    800032cc:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    800032d0:	00008797          	auipc	a5,0x8
    800032d4:	6b07b783          	ld	a5,1712(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x18>
    800032d8:	0007b703          	ld	a4,0(a5)
    800032dc:	00008697          	auipc	a3,0x8
    800032e0:	79468693          	addi	a3,a3,1940 # 8000ba70 <_ZN15MemoryAllocator12firstFreeSegE>
    800032e4:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    800032e8:	00008797          	auipc	a5,0x8
    800032ec:	6e87b783          	ld	a5,1768(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800032f0:	0007b783          	ld	a5,0(a5)
    800032f4:	40e787b3          	sub	a5,a5,a4
    800032f8:	0067d793          	srli	a5,a5,0x6
    800032fc:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80003300:	0006b783          	ld	a5,0(a3)
    80003304:	0007b423          	sd	zero,8(a5)
    80003308:	00813403          	ld	s0,8(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
    80003324:	000105b7          	lui	a1,0x10
    80003328:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000332c:	00100513          	li	a0,1
    80003330:	00000097          	auipc	ra,0x0
    80003334:	d10080e7          	jalr	-752(ra) # 80003040 <_Z41__static_initialization_and_destruction_0ii>
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	01213023          	sd	s2,0(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003364:	00000913          	li	s2,0
    80003368:	00c0006f          	j	80003374 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	1f0080e7          	jalr	496(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003374:	ffffe097          	auipc	ra,0xffffe
    80003378:	36c080e7          	jalr	876(ra) # 800016e0 <_Z4getcv>
    8000337c:	0005059b          	sext.w	a1,a0
    80003380:	01b00793          	li	a5,27
    80003384:	02f58a63          	beq	a1,a5,800033b8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003388:	0084b503          	ld	a0,8(s1)
    8000338c:	00003097          	auipc	ra,0x3
    80003390:	400080e7          	jalr	1024(ra) # 8000678c <_ZN6Buffer3putEi>
        i++;
    80003394:	0019071b          	addiw	a4,s2,1
    80003398:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000339c:	0004a683          	lw	a3,0(s1)
    800033a0:	0026979b          	slliw	a5,a3,0x2
    800033a4:	00d787bb          	addw	a5,a5,a3
    800033a8:	0017979b          	slliw	a5,a5,0x1
    800033ac:	02f767bb          	remw	a5,a4,a5
    800033b0:	fc0792e3          	bnez	a5,80003374 <_ZL16producerKeyboardPv+0x2c>
    800033b4:	fb9ff06f          	j	8000336c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800033b8:	00100793          	li	a5,1
    800033bc:	00008717          	auipc	a4,0x8
    800033c0:	6af72e23          	sw	a5,1724(a4) # 8000ba78 <_ZL9threadEnd>
    data->buffer->put('!');
    800033c4:	02100593          	li	a1,33
    800033c8:	0084b503          	ld	a0,8(s1)
    800033cc:	00003097          	auipc	ra,0x3
    800033d0:	3c0080e7          	jalr	960(ra) # 8000678c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800033d4:	0104b503          	ld	a0,16(s1)
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	2bc080e7          	jalr	700(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    800033e0:	01813083          	ld	ra,24(sp)
    800033e4:	01013403          	ld	s0,16(sp)
    800033e8:	00813483          	ld	s1,8(sp)
    800033ec:	00013903          	ld	s2,0(sp)
    800033f0:	02010113          	addi	sp,sp,32
    800033f4:	00008067          	ret

00000000800033f8 <_ZL8producerPv>:

static void producer(void *arg) {
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	01213023          	sd	s2,0(sp)
    8000340c:	02010413          	addi	s0,sp,32
    80003410:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003414:	00000913          	li	s2,0
    80003418:	00c0006f          	j	80003424 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	140080e7          	jalr	320(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003424:	00008797          	auipc	a5,0x8
    80003428:	6547a783          	lw	a5,1620(a5) # 8000ba78 <_ZL9threadEnd>
    8000342c:	02079e63          	bnez	a5,80003468 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003430:	0004a583          	lw	a1,0(s1)
    80003434:	0305859b          	addiw	a1,a1,48
    80003438:	0084b503          	ld	a0,8(s1)
    8000343c:	00003097          	auipc	ra,0x3
    80003440:	350080e7          	jalr	848(ra) # 8000678c <_ZN6Buffer3putEi>
        i++;
    80003444:	0019071b          	addiw	a4,s2,1
    80003448:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000344c:	0004a683          	lw	a3,0(s1)
    80003450:	0026979b          	slliw	a5,a3,0x2
    80003454:	00d787bb          	addw	a5,a5,a3
    80003458:	0017979b          	slliw	a5,a5,0x1
    8000345c:	02f767bb          	remw	a5,a4,a5
    80003460:	fc0792e3          	bnez	a5,80003424 <_ZL8producerPv+0x2c>
    80003464:	fb9ff06f          	j	8000341c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003468:	0104b503          	ld	a0,16(s1)
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	228080e7          	jalr	552(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80003474:	01813083          	ld	ra,24(sp)
    80003478:	01013403          	ld	s0,16(sp)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	00013903          	ld	s2,0(sp)
    80003484:	02010113          	addi	sp,sp,32
    80003488:	00008067          	ret

000000008000348c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000348c:	fd010113          	addi	sp,sp,-48
    80003490:	02113423          	sd	ra,40(sp)
    80003494:	02813023          	sd	s0,32(sp)
    80003498:	00913c23          	sd	s1,24(sp)
    8000349c:	01213823          	sd	s2,16(sp)
    800034a0:	01313423          	sd	s3,8(sp)
    800034a4:	03010413          	addi	s0,sp,48
    800034a8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034ac:	00000993          	li	s3,0
    800034b0:	01c0006f          	j	800034cc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	0a8080e7          	jalr	168(ra) # 8000155c <_Z15thread_dispatchv>
    800034bc:	0500006f          	j	8000350c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800034c0:	00a00513          	li	a0,10
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	258080e7          	jalr	600(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    800034cc:	00008797          	auipc	a5,0x8
    800034d0:	5ac7a783          	lw	a5,1452(a5) # 8000ba78 <_ZL9threadEnd>
    800034d4:	06079063          	bnez	a5,80003534 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800034d8:	00893503          	ld	a0,8(s2)
    800034dc:	00003097          	auipc	ra,0x3
    800034e0:	340080e7          	jalr	832(ra) # 8000681c <_ZN6Buffer3getEv>
        i++;
    800034e4:	0019849b          	addiw	s1,s3,1
    800034e8:	0004899b          	sext.w	s3,s1
        putc(key);
    800034ec:	0ff57513          	andi	a0,a0,255
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	22c080e7          	jalr	556(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800034f8:	00092703          	lw	a4,0(s2)
    800034fc:	0027179b          	slliw	a5,a4,0x2
    80003500:	00e787bb          	addw	a5,a5,a4
    80003504:	02f4e7bb          	remw	a5,s1,a5
    80003508:	fa0786e3          	beqz	a5,800034b4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000350c:	05000793          	li	a5,80
    80003510:	02f4e4bb          	remw	s1,s1,a5
    80003514:	fa049ce3          	bnez	s1,800034cc <_ZL8consumerPv+0x40>
    80003518:	fa9ff06f          	j	800034c0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000351c:	00893503          	ld	a0,8(s2)
    80003520:	00003097          	auipc	ra,0x3
    80003524:	2fc080e7          	jalr	764(ra) # 8000681c <_ZN6Buffer3getEv>
        putc(key);
    80003528:	0ff57513          	andi	a0,a0,255
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	1f0080e7          	jalr	496(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003534:	00893503          	ld	a0,8(s2)
    80003538:	00003097          	auipc	ra,0x3
    8000353c:	370080e7          	jalr	880(ra) # 800068a8 <_ZN6Buffer6getCntEv>
    80003540:	fca04ee3          	bgtz	a0,8000351c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003544:	01093503          	ld	a0,16(s2)
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	14c080e7          	jalr	332(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80003550:	02813083          	ld	ra,40(sp)
    80003554:	02013403          	ld	s0,32(sp)
    80003558:	01813483          	ld	s1,24(sp)
    8000355c:	01013903          	ld	s2,16(sp)
    80003560:	00813983          	ld	s3,8(sp)
    80003564:	03010113          	addi	sp,sp,48
    80003568:	00008067          	ret

000000008000356c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000356c:	f9010113          	addi	sp,sp,-112
    80003570:	06113423          	sd	ra,104(sp)
    80003574:	06813023          	sd	s0,96(sp)
    80003578:	04913c23          	sd	s1,88(sp)
    8000357c:	05213823          	sd	s2,80(sp)
    80003580:	05313423          	sd	s3,72(sp)
    80003584:	05413023          	sd	s4,64(sp)
    80003588:	03513c23          	sd	s5,56(sp)
    8000358c:	03613823          	sd	s6,48(sp)
    80003590:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003594:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	a9850513          	addi	a0,a0,-1384 # 80009030 <CONSOLE_STATUS+0x20>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	220080e7          	jalr	544(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    800035a8:	01e00593          	li	a1,30
    800035ac:	fa040493          	addi	s1,s0,-96
    800035b0:	00048513          	mv	a0,s1
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	294080e7          	jalr	660(ra) # 80005848 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800035bc:	00048513          	mv	a0,s1
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	360080e7          	jalr	864(ra) # 80005920 <_Z11stringToIntPKc>
    800035c8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	a8450513          	addi	a0,a0,-1404 # 80009050 <CONSOLE_STATUS+0x40>
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	1ec080e7          	jalr	492(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    800035dc:	01e00593          	li	a1,30
    800035e0:	00048513          	mv	a0,s1
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	264080e7          	jalr	612(ra) # 80005848 <_Z9getStringPci>
    n = stringToInt(input);
    800035ec:	00048513          	mv	a0,s1
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	330080e7          	jalr	816(ra) # 80005920 <_Z11stringToIntPKc>
    800035f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800035fc:	00006517          	auipc	a0,0x6
    80003600:	a7450513          	addi	a0,a0,-1420 # 80009070 <CONSOLE_STATUS+0x60>
    80003604:	00002097          	auipc	ra,0x2
    80003608:	1bc080e7          	jalr	444(ra) # 800057c0 <_Z11printStringPKc>
    8000360c:	00000613          	li	a2,0
    80003610:	00a00593          	li	a1,10
    80003614:	00090513          	mv	a0,s2
    80003618:	00002097          	auipc	ra,0x2
    8000361c:	358080e7          	jalr	856(ra) # 80005970 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003620:	00006517          	auipc	a0,0x6
    80003624:	a6850513          	addi	a0,a0,-1432 # 80009088 <CONSOLE_STATUS+0x78>
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	198080e7          	jalr	408(ra) # 800057c0 <_Z11printStringPKc>
    80003630:	00000613          	li	a2,0
    80003634:	00a00593          	li	a1,10
    80003638:	00048513          	mv	a0,s1
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	334080e7          	jalr	820(ra) # 80005970 <_Z8printIntiii>
    printString(".\n");
    80003644:	00006517          	auipc	a0,0x6
    80003648:	a5c50513          	addi	a0,a0,-1444 # 800090a0 <CONSOLE_STATUS+0x90>
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	174080e7          	jalr	372(ra) # 800057c0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003654:	0324c463          	blt	s1,s2,8000367c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003658:	03205c63          	blez	s2,80003690 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000365c:	03800513          	li	a0,56
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	448080e7          	jalr	1096(ra) # 80001aa8 <_Znwm>
    80003668:	00050a13          	mv	s4,a0
    8000366c:	00048593          	mv	a1,s1
    80003670:	00003097          	auipc	ra,0x3
    80003674:	080080e7          	jalr	128(ra) # 800066f0 <_ZN6BufferC1Ei>
    80003678:	0300006f          	j	800036a8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000367c:	00006517          	auipc	a0,0x6
    80003680:	a2c50513          	addi	a0,a0,-1492 # 800090a8 <CONSOLE_STATUS+0x98>
    80003684:	00002097          	auipc	ra,0x2
    80003688:	13c080e7          	jalr	316(ra) # 800057c0 <_Z11printStringPKc>
        return;
    8000368c:	0140006f          	j	800036a0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003690:	00006517          	auipc	a0,0x6
    80003694:	a5850513          	addi	a0,a0,-1448 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	128080e7          	jalr	296(ra) # 800057c0 <_Z11printStringPKc>
        return;
    800036a0:	000b0113          	mv	sp,s6
    800036a4:	1500006f          	j	800037f4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800036a8:	00000593          	li	a1,0
    800036ac:	00008517          	auipc	a0,0x8
    800036b0:	3d450513          	addi	a0,a0,980 # 8000ba80 <_ZL10waitForAll>
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	f04080e7          	jalr	-252(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800036bc:	00391793          	slli	a5,s2,0x3
    800036c0:	00f78793          	addi	a5,a5,15
    800036c4:	ff07f793          	andi	a5,a5,-16
    800036c8:	40f10133          	sub	sp,sp,a5
    800036cc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800036d0:	0019071b          	addiw	a4,s2,1
    800036d4:	00171793          	slli	a5,a4,0x1
    800036d8:	00e787b3          	add	a5,a5,a4
    800036dc:	00379793          	slli	a5,a5,0x3
    800036e0:	00f78793          	addi	a5,a5,15
    800036e4:	ff07f793          	andi	a5,a5,-16
    800036e8:	40f10133          	sub	sp,sp,a5
    800036ec:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800036f0:	00191613          	slli	a2,s2,0x1
    800036f4:	012607b3          	add	a5,a2,s2
    800036f8:	00379793          	slli	a5,a5,0x3
    800036fc:	00f987b3          	add	a5,s3,a5
    80003700:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003704:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003708:	00008717          	auipc	a4,0x8
    8000370c:	37873703          	ld	a4,888(a4) # 8000ba80 <_ZL10waitForAll>
    80003710:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003714:	00078613          	mv	a2,a5
    80003718:	00000597          	auipc	a1,0x0
    8000371c:	d7458593          	addi	a1,a1,-652 # 8000348c <_ZL8consumerPv>
    80003720:	f9840513          	addi	a0,s0,-104
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	d10080e7          	jalr	-752(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000372c:	00000493          	li	s1,0
    80003730:	0280006f          	j	80003758 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003734:	00000597          	auipc	a1,0x0
    80003738:	c1458593          	addi	a1,a1,-1004 # 80003348 <_ZL16producerKeyboardPv>
                      data + i);
    8000373c:	00179613          	slli	a2,a5,0x1
    80003740:	00f60633          	add	a2,a2,a5
    80003744:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003748:	00c98633          	add	a2,s3,a2
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	ce8080e7          	jalr	-792(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003754:	0014849b          	addiw	s1,s1,1
    80003758:	0524d263          	bge	s1,s2,8000379c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000375c:	00149793          	slli	a5,s1,0x1
    80003760:	009787b3          	add	a5,a5,s1
    80003764:	00379793          	slli	a5,a5,0x3
    80003768:	00f987b3          	add	a5,s3,a5
    8000376c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003770:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003774:	00008717          	auipc	a4,0x8
    80003778:	30c73703          	ld	a4,780(a4) # 8000ba80 <_ZL10waitForAll>
    8000377c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003780:	00048793          	mv	a5,s1
    80003784:	00349513          	slli	a0,s1,0x3
    80003788:	00aa8533          	add	a0,s5,a0
    8000378c:	fa9054e3          	blez	s1,80003734 <_Z22producerConsumer_C_APIv+0x1c8>
    80003790:	00000597          	auipc	a1,0x0
    80003794:	c6858593          	addi	a1,a1,-920 # 800033f8 <_ZL8producerPv>
    80003798:	fa5ff06f          	j	8000373c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	dc0080e7          	jalr	-576(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800037a4:	00000493          	li	s1,0
    800037a8:	00994e63          	blt	s2,s1,800037c4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800037ac:	00008517          	auipc	a0,0x8
    800037b0:	2d453503          	ld	a0,724(a0) # 8000ba80 <_ZL10waitForAll>
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	e94080e7          	jalr	-364(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800037bc:	0014849b          	addiw	s1,s1,1
    800037c0:	fe9ff06f          	j	800037a8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800037c4:	00008517          	auipc	a0,0x8
    800037c8:	2bc53503          	ld	a0,700(a0) # 8000ba80 <_ZL10waitForAll>
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	e30080e7          	jalr	-464(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    800037d4:	000a0e63          	beqz	s4,800037f0 <_Z22producerConsumer_C_APIv+0x284>
    800037d8:	000a0513          	mv	a0,s4
    800037dc:	00003097          	auipc	ra,0x3
    800037e0:	154080e7          	jalr	340(ra) # 80006930 <_ZN6BufferD1Ev>
    800037e4:	000a0513          	mv	a0,s4
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	310080e7          	jalr	784(ra) # 80001af8 <_ZdlPv>
    800037f0:	000b0113          	mv	sp,s6

}
    800037f4:	f9040113          	addi	sp,s0,-112
    800037f8:	06813083          	ld	ra,104(sp)
    800037fc:	06013403          	ld	s0,96(sp)
    80003800:	05813483          	ld	s1,88(sp)
    80003804:	05013903          	ld	s2,80(sp)
    80003808:	04813983          	ld	s3,72(sp)
    8000380c:	04013a03          	ld	s4,64(sp)
    80003810:	03813a83          	ld	s5,56(sp)
    80003814:	03013b03          	ld	s6,48(sp)
    80003818:	07010113          	addi	sp,sp,112
    8000381c:	00008067          	ret
    80003820:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003824:	000a0513          	mv	a0,s4
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	2d0080e7          	jalr	720(ra) # 80001af8 <_ZdlPv>
    80003830:	00048513          	mv	a0,s1
    80003834:	00009097          	auipc	ra,0x9
    80003838:	364080e7          	jalr	868(ra) # 8000cb98 <_Unwind_Resume>

000000008000383c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000383c:	fe010113          	addi	sp,sp,-32
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00813823          	sd	s0,16(sp)
    80003848:	00913423          	sd	s1,8(sp)
    8000384c:	01213023          	sd	s2,0(sp)
    80003850:	02010413          	addi	s0,sp,32
    80003854:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003858:	00100793          	li	a5,1
    8000385c:	02a7f863          	bgeu	a5,a0,8000388c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003860:	00a00793          	li	a5,10
    80003864:	02f577b3          	remu	a5,a0,a5
    80003868:	02078e63          	beqz	a5,800038a4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000386c:	fff48513          	addi	a0,s1,-1
    80003870:	00000097          	auipc	ra,0x0
    80003874:	fcc080e7          	jalr	-52(ra) # 8000383c <_ZL9fibonaccim>
    80003878:	00050913          	mv	s2,a0
    8000387c:	ffe48513          	addi	a0,s1,-2
    80003880:	00000097          	auipc	ra,0x0
    80003884:	fbc080e7          	jalr	-68(ra) # 8000383c <_ZL9fibonaccim>
    80003888:	00a90533          	add	a0,s2,a0
}
    8000388c:	01813083          	ld	ra,24(sp)
    80003890:	01013403          	ld	s0,16(sp)
    80003894:	00813483          	ld	s1,8(sp)
    80003898:	00013903          	ld	s2,0(sp)
    8000389c:	02010113          	addi	sp,sp,32
    800038a0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	cb8080e7          	jalr	-840(ra) # 8000155c <_Z15thread_dispatchv>
    800038ac:	fc1ff06f          	j	8000386c <_ZL9fibonaccim+0x30>

00000000800038b0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00113c23          	sd	ra,24(sp)
    800038b8:	00813823          	sd	s0,16(sp)
    800038bc:	00913423          	sd	s1,8(sp)
    800038c0:	01213023          	sd	s2,0(sp)
    800038c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038c8:	00000913          	li	s2,0
    800038cc:	0380006f          	j	80003904 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	c8c080e7          	jalr	-884(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038d8:	00148493          	addi	s1,s1,1
    800038dc:	000027b7          	lui	a5,0x2
    800038e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038e4:	0097ee63          	bltu	a5,s1,80003900 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038e8:	00000713          	li	a4,0
    800038ec:	000077b7          	lui	a5,0x7
    800038f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038f4:	fce7eee3          	bltu	a5,a4,800038d0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800038f8:	00170713          	addi	a4,a4,1
    800038fc:	ff1ff06f          	j	800038ec <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003900:	00190913          	addi	s2,s2,1
    80003904:	00900793          	li	a5,9
    80003908:	0527e063          	bltu	a5,s2,80003948 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000390c:	00006517          	auipc	a0,0x6
    80003910:	80c50513          	addi	a0,a0,-2036 # 80009118 <CONSOLE_STATUS+0x108>
    80003914:	00002097          	auipc	ra,0x2
    80003918:	eac080e7          	jalr	-340(ra) # 800057c0 <_Z11printStringPKc>
    8000391c:	00000613          	li	a2,0
    80003920:	00a00593          	li	a1,10
    80003924:	0009051b          	sext.w	a0,s2
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	048080e7          	jalr	72(ra) # 80005970 <_Z8printIntiii>
    80003930:	00006517          	auipc	a0,0x6
    80003934:	a4850513          	addi	a0,a0,-1464 # 80009378 <CONSOLE_STATUS+0x368>
    80003938:	00002097          	auipc	ra,0x2
    8000393c:	e88080e7          	jalr	-376(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003940:	00000493          	li	s1,0
    80003944:	f99ff06f          	j	800038dc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003948:	00005517          	auipc	a0,0x5
    8000394c:	7d850513          	addi	a0,a0,2008 # 80009120 <CONSOLE_STATUS+0x110>
    80003950:	00002097          	auipc	ra,0x2
    80003954:	e70080e7          	jalr	-400(ra) # 800057c0 <_Z11printStringPKc>
    finishedA = true;
    80003958:	00100793          	li	a5,1
    8000395c:	00008717          	auipc	a4,0x8
    80003960:	12f70623          	sb	a5,300(a4) # 8000ba88 <_ZL9finishedA>
}
    80003964:	01813083          	ld	ra,24(sp)
    80003968:	01013403          	ld	s0,16(sp)
    8000396c:	00813483          	ld	s1,8(sp)
    80003970:	00013903          	ld	s2,0(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	01213023          	sd	s2,0(sp)
    80003990:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003994:	00000913          	li	s2,0
    80003998:	0380006f          	j	800039d0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	bc0080e7          	jalr	-1088(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800039a4:	00148493          	addi	s1,s1,1
    800039a8:	000027b7          	lui	a5,0x2
    800039ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039b0:	0097ee63          	bltu	a5,s1,800039cc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039b4:	00000713          	li	a4,0
    800039b8:	000077b7          	lui	a5,0x7
    800039bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039c0:	fce7eee3          	bltu	a5,a4,8000399c <_ZN7WorkerB11workerBodyBEPv+0x20>
    800039c4:	00170713          	addi	a4,a4,1
    800039c8:	ff1ff06f          	j	800039b8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800039cc:	00190913          	addi	s2,s2,1
    800039d0:	00f00793          	li	a5,15
    800039d4:	0527e063          	bltu	a5,s2,80003a14 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800039d8:	00005517          	auipc	a0,0x5
    800039dc:	75850513          	addi	a0,a0,1880 # 80009130 <CONSOLE_STATUS+0x120>
    800039e0:	00002097          	auipc	ra,0x2
    800039e4:	de0080e7          	jalr	-544(ra) # 800057c0 <_Z11printStringPKc>
    800039e8:	00000613          	li	a2,0
    800039ec:	00a00593          	li	a1,10
    800039f0:	0009051b          	sext.w	a0,s2
    800039f4:	00002097          	auipc	ra,0x2
    800039f8:	f7c080e7          	jalr	-132(ra) # 80005970 <_Z8printIntiii>
    800039fc:	00006517          	auipc	a0,0x6
    80003a00:	97c50513          	addi	a0,a0,-1668 # 80009378 <CONSOLE_STATUS+0x368>
    80003a04:	00002097          	auipc	ra,0x2
    80003a08:	dbc080e7          	jalr	-580(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a0c:	00000493          	li	s1,0
    80003a10:	f99ff06f          	j	800039a8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003a14:	00005517          	auipc	a0,0x5
    80003a18:	72450513          	addi	a0,a0,1828 # 80009138 <CONSOLE_STATUS+0x128>
    80003a1c:	00002097          	auipc	ra,0x2
    80003a20:	da4080e7          	jalr	-604(ra) # 800057c0 <_Z11printStringPKc>
    finishedB = true;
    80003a24:	00100793          	li	a5,1
    80003a28:	00008717          	auipc	a4,0x8
    80003a2c:	06f700a3          	sb	a5,97(a4) # 8000ba89 <_ZL9finishedB>
    thread_dispatch();
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	b2c080e7          	jalr	-1236(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003a38:	01813083          	ld	ra,24(sp)
    80003a3c:	01013403          	ld	s0,16(sp)
    80003a40:	00813483          	ld	s1,8(sp)
    80003a44:	00013903          	ld	s2,0(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret

0000000080003a50 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a50:	fe010113          	addi	sp,sp,-32
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	00813823          	sd	s0,16(sp)
    80003a5c:	00913423          	sd	s1,8(sp)
    80003a60:	01213023          	sd	s2,0(sp)
    80003a64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a68:	00000493          	li	s1,0
    80003a6c:	0400006f          	j	80003aac <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a70:	00005517          	auipc	a0,0x5
    80003a74:	6d850513          	addi	a0,a0,1752 # 80009148 <CONSOLE_STATUS+0x138>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	d48080e7          	jalr	-696(ra) # 800057c0 <_Z11printStringPKc>
    80003a80:	00000613          	li	a2,0
    80003a84:	00a00593          	li	a1,10
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	00002097          	auipc	ra,0x2
    80003a90:	ee4080e7          	jalr	-284(ra) # 80005970 <_Z8printIntiii>
    80003a94:	00006517          	auipc	a0,0x6
    80003a98:	8e450513          	addi	a0,a0,-1820 # 80009378 <CONSOLE_STATUS+0x368>
    80003a9c:	00002097          	auipc	ra,0x2
    80003aa0:	d24080e7          	jalr	-732(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003aa4:	0014849b          	addiw	s1,s1,1
    80003aa8:	0ff4f493          	andi	s1,s1,255
    80003aac:	00200793          	li	a5,2
    80003ab0:	fc97f0e3          	bgeu	a5,s1,80003a70 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ab4:	00005517          	auipc	a0,0x5
    80003ab8:	69c50513          	addi	a0,a0,1692 # 80009150 <CONSOLE_STATUS+0x140>
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	d04080e7          	jalr	-764(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003ac4:	00700313          	li	t1,7
    thread_dispatch();
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	a94080e7          	jalr	-1388(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ad0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ad4:	00005517          	auipc	a0,0x5
    80003ad8:	68c50513          	addi	a0,a0,1676 # 80009160 <CONSOLE_STATUS+0x150>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	ce4080e7          	jalr	-796(ra) # 800057c0 <_Z11printStringPKc>
    80003ae4:	00000613          	li	a2,0
    80003ae8:	00a00593          	li	a1,10
    80003aec:	0009051b          	sext.w	a0,s2
    80003af0:	00002097          	auipc	ra,0x2
    80003af4:	e80080e7          	jalr	-384(ra) # 80005970 <_Z8printIntiii>
    80003af8:	00006517          	auipc	a0,0x6
    80003afc:	88050513          	addi	a0,a0,-1920 # 80009378 <CONSOLE_STATUS+0x368>
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	cc0080e7          	jalr	-832(ra) # 800057c0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003b08:	00c00513          	li	a0,12
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	d30080e7          	jalr	-720(ra) # 8000383c <_ZL9fibonaccim>
    80003b14:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b18:	00005517          	auipc	a0,0x5
    80003b1c:	65050513          	addi	a0,a0,1616 # 80009168 <CONSOLE_STATUS+0x158>
    80003b20:	00002097          	auipc	ra,0x2
    80003b24:	ca0080e7          	jalr	-864(ra) # 800057c0 <_Z11printStringPKc>
    80003b28:	00000613          	li	a2,0
    80003b2c:	00a00593          	li	a1,10
    80003b30:	0009051b          	sext.w	a0,s2
    80003b34:	00002097          	auipc	ra,0x2
    80003b38:	e3c080e7          	jalr	-452(ra) # 80005970 <_Z8printIntiii>
    80003b3c:	00006517          	auipc	a0,0x6
    80003b40:	83c50513          	addi	a0,a0,-1988 # 80009378 <CONSOLE_STATUS+0x368>
    80003b44:	00002097          	auipc	ra,0x2
    80003b48:	c7c080e7          	jalr	-900(ra) # 800057c0 <_Z11printStringPKc>
    80003b4c:	0400006f          	j	80003b8c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	5f850513          	addi	a0,a0,1528 # 80009148 <CONSOLE_STATUS+0x138>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	c68080e7          	jalr	-920(ra) # 800057c0 <_Z11printStringPKc>
    80003b60:	00000613          	li	a2,0
    80003b64:	00a00593          	li	a1,10
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	e04080e7          	jalr	-508(ra) # 80005970 <_Z8printIntiii>
    80003b74:	00006517          	auipc	a0,0x6
    80003b78:	80450513          	addi	a0,a0,-2044 # 80009378 <CONSOLE_STATUS+0x368>
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	c44080e7          	jalr	-956(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b84:	0014849b          	addiw	s1,s1,1
    80003b88:	0ff4f493          	andi	s1,s1,255
    80003b8c:	00500793          	li	a5,5
    80003b90:	fc97f0e3          	bgeu	a5,s1,80003b50 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	5e450513          	addi	a0,a0,1508 # 80009178 <CONSOLE_STATUS+0x168>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	c24080e7          	jalr	-988(ra) # 800057c0 <_Z11printStringPKc>
    finishedC = true;
    80003ba4:	00100793          	li	a5,1
    80003ba8:	00008717          	auipc	a4,0x8
    80003bac:	eef70123          	sb	a5,-286(a4) # 8000ba8a <_ZL9finishedC>
    thread_dispatch();
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	9ac080e7          	jalr	-1620(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	00013903          	ld	s2,0(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	01213023          	sd	s2,0(sp)
    80003be4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003be8:	00a00493          	li	s1,10
    80003bec:	0400006f          	j	80003c2c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bf0:	00005517          	auipc	a0,0x5
    80003bf4:	59850513          	addi	a0,a0,1432 # 80009188 <CONSOLE_STATUS+0x178>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	bc8080e7          	jalr	-1080(ra) # 800057c0 <_Z11printStringPKc>
    80003c00:	00000613          	li	a2,0
    80003c04:	00a00593          	li	a1,10
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	d64080e7          	jalr	-668(ra) # 80005970 <_Z8printIntiii>
    80003c14:	00005517          	auipc	a0,0x5
    80003c18:	76450513          	addi	a0,a0,1892 # 80009378 <CONSOLE_STATUS+0x368>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	ba4080e7          	jalr	-1116(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c24:	0014849b          	addiw	s1,s1,1
    80003c28:	0ff4f493          	andi	s1,s1,255
    80003c2c:	00c00793          	li	a5,12
    80003c30:	fc97f0e3          	bgeu	a5,s1,80003bf0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c34:	00005517          	auipc	a0,0x5
    80003c38:	55c50513          	addi	a0,a0,1372 # 80009190 <CONSOLE_STATUS+0x180>
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	b84080e7          	jalr	-1148(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c44:	00500313          	li	t1,5
    thread_dispatch();
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	914080e7          	jalr	-1772(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c50:	01000513          	li	a0,16
    80003c54:	00000097          	auipc	ra,0x0
    80003c58:	be8080e7          	jalr	-1048(ra) # 8000383c <_ZL9fibonaccim>
    80003c5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c60:	00005517          	auipc	a0,0x5
    80003c64:	54050513          	addi	a0,a0,1344 # 800091a0 <CONSOLE_STATUS+0x190>
    80003c68:	00002097          	auipc	ra,0x2
    80003c6c:	b58080e7          	jalr	-1192(ra) # 800057c0 <_Z11printStringPKc>
    80003c70:	00000613          	li	a2,0
    80003c74:	00a00593          	li	a1,10
    80003c78:	0009051b          	sext.w	a0,s2
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	cf4080e7          	jalr	-780(ra) # 80005970 <_Z8printIntiii>
    80003c84:	00005517          	auipc	a0,0x5
    80003c88:	6f450513          	addi	a0,a0,1780 # 80009378 <CONSOLE_STATUS+0x368>
    80003c8c:	00002097          	auipc	ra,0x2
    80003c90:	b34080e7          	jalr	-1228(ra) # 800057c0 <_Z11printStringPKc>
    80003c94:	0400006f          	j	80003cd4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c98:	00005517          	auipc	a0,0x5
    80003c9c:	4f050513          	addi	a0,a0,1264 # 80009188 <CONSOLE_STATUS+0x178>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	b20080e7          	jalr	-1248(ra) # 800057c0 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	00048513          	mv	a0,s1
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	cbc080e7          	jalr	-836(ra) # 80005970 <_Z8printIntiii>
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	6bc50513          	addi	a0,a0,1724 # 80009378 <CONSOLE_STATUS+0x368>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	afc080e7          	jalr	-1284(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ccc:	0014849b          	addiw	s1,s1,1
    80003cd0:	0ff4f493          	andi	s1,s1,255
    80003cd4:	00f00793          	li	a5,15
    80003cd8:	fc97f0e3          	bgeu	a5,s1,80003c98 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	4d450513          	addi	a0,a0,1236 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	adc080e7          	jalr	-1316(ra) # 800057c0 <_Z11printStringPKc>
    finishedD = true;
    80003cec:	00100793          	li	a5,1
    80003cf0:	00008717          	auipc	a4,0x8
    80003cf4:	d8f70da3          	sb	a5,-613(a4) # 8000ba8b <_ZL9finishedD>
    thread_dispatch();
    80003cf8:	ffffe097          	auipc	ra,0xffffe
    80003cfc:	864080e7          	jalr	-1948(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003d00:	01813083          	ld	ra,24(sp)
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	00813483          	ld	s1,8(sp)
    80003d0c:	00013903          	ld	s2,0(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret

0000000080003d18 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003d18:	fc010113          	addi	sp,sp,-64
    80003d1c:	02113c23          	sd	ra,56(sp)
    80003d20:	02813823          	sd	s0,48(sp)
    80003d24:	02913423          	sd	s1,40(sp)
    80003d28:	03213023          	sd	s2,32(sp)
    80003d2c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d30:	02000513          	li	a0,32
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	d74080e7          	jalr	-652(ra) # 80001aa8 <_Znwm>
    80003d3c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	09c080e7          	jalr	156(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003d48:	00008797          	auipc	a5,0x8
    80003d4c:	a8878793          	addi	a5,a5,-1400 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003d50:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d54:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d58:	00005517          	auipc	a0,0x5
    80003d5c:	46850513          	addi	a0,a0,1128 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003d60:	00002097          	auipc	ra,0x2
    80003d64:	a60080e7          	jalr	-1440(ra) # 800057c0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d68:	02000513          	li	a0,32
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	d3c080e7          	jalr	-708(ra) # 80001aa8 <_Znwm>
    80003d74:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	064080e7          	jalr	100(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	a7878793          	addi	a5,a5,-1416 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003d88:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d8c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	44850513          	addi	a0,a0,1096 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003d98:	00002097          	auipc	ra,0x2
    80003d9c:	a28080e7          	jalr	-1496(ra) # 800057c0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003da0:	02000513          	li	a0,32
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	d04080e7          	jalr	-764(ra) # 80001aa8 <_Znwm>
    80003dac:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	02c080e7          	jalr	44(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003db8:	00008797          	auipc	a5,0x8
    80003dbc:	a6878793          	addi	a5,a5,-1432 # 8000b820 <_ZTV7WorkerC+0x10>
    80003dc0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003dc4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003dc8:	00005517          	auipc	a0,0x5
    80003dcc:	42850513          	addi	a0,a0,1064 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	9f0080e7          	jalr	-1552(ra) # 800057c0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003dd8:	02000513          	li	a0,32
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	ccc080e7          	jalr	-820(ra) # 80001aa8 <_Znwm>
    80003de4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	ff4080e7          	jalr	-12(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	a5878793          	addi	a5,a5,-1448 # 8000b848 <_ZTV7WorkerD+0x10>
    80003df8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003dfc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	40850513          	addi	a0,a0,1032 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	9b8080e7          	jalr	-1608(ra) # 800057c0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003e10:	00000493          	li	s1,0
    80003e14:	00300793          	li	a5,3
    80003e18:	0297c663          	blt	a5,s1,80003e44 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e1c:	00349793          	slli	a5,s1,0x3
    80003e20:	fe040713          	addi	a4,s0,-32
    80003e24:	00f707b3          	add	a5,a4,a5
    80003e28:	fe07b503          	ld	a0,-32(a5)
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	f54080e7          	jalr	-172(ra) # 80001d80 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e34:	0014849b          	addiw	s1,s1,1
    80003e38:	fddff06f          	j	80003e14 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	f78080e7          	jalr	-136(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e44:	00008797          	auipc	a5,0x8
    80003e48:	c447c783          	lbu	a5,-956(a5) # 8000ba88 <_ZL9finishedA>
    80003e4c:	fe0788e3          	beqz	a5,80003e3c <_Z20Threads_CPP_API_testv+0x124>
    80003e50:	00008797          	auipc	a5,0x8
    80003e54:	c397c783          	lbu	a5,-967(a5) # 8000ba89 <_ZL9finishedB>
    80003e58:	fe0782e3          	beqz	a5,80003e3c <_Z20Threads_CPP_API_testv+0x124>
    80003e5c:	00008797          	auipc	a5,0x8
    80003e60:	c2e7c783          	lbu	a5,-978(a5) # 8000ba8a <_ZL9finishedC>
    80003e64:	fc078ce3          	beqz	a5,80003e3c <_Z20Threads_CPP_API_testv+0x124>
    80003e68:	00008797          	auipc	a5,0x8
    80003e6c:	c237c783          	lbu	a5,-989(a5) # 8000ba8b <_ZL9finishedD>
    80003e70:	fc0786e3          	beqz	a5,80003e3c <_Z20Threads_CPP_API_testv+0x124>
    80003e74:	fc040493          	addi	s1,s0,-64
    80003e78:	0080006f          	j	80003e80 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e7c:	00848493          	addi	s1,s1,8
    80003e80:	fe040793          	addi	a5,s0,-32
    80003e84:	08f48663          	beq	s1,a5,80003f10 <_Z20Threads_CPP_API_testv+0x1f8>
    80003e88:	0004b503          	ld	a0,0(s1)
    80003e8c:	fe0508e3          	beqz	a0,80003e7c <_Z20Threads_CPP_API_testv+0x164>
    80003e90:	00053783          	ld	a5,0(a0)
    80003e94:	0087b783          	ld	a5,8(a5)
    80003e98:	000780e7          	jalr	a5
    80003e9c:	fe1ff06f          	j	80003e7c <_Z20Threads_CPP_API_testv+0x164>
    80003ea0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	c50080e7          	jalr	-944(ra) # 80001af8 <_ZdlPv>
    80003eb0:	00090513          	mv	a0,s2
    80003eb4:	00009097          	auipc	ra,0x9
    80003eb8:	ce4080e7          	jalr	-796(ra) # 8000cb98 <_Unwind_Resume>
    80003ebc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	c34080e7          	jalr	-972(ra) # 80001af8 <_ZdlPv>
    80003ecc:	00090513          	mv	a0,s2
    80003ed0:	00009097          	auipc	ra,0x9
    80003ed4:	cc8080e7          	jalr	-824(ra) # 8000cb98 <_Unwind_Resume>
    80003ed8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	c18080e7          	jalr	-1000(ra) # 80001af8 <_ZdlPv>
    80003ee8:	00090513          	mv	a0,s2
    80003eec:	00009097          	auipc	ra,0x9
    80003ef0:	cac080e7          	jalr	-852(ra) # 8000cb98 <_Unwind_Resume>
    80003ef4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	bfc080e7          	jalr	-1028(ra) # 80001af8 <_ZdlPv>
    80003f04:	00090513          	mv	a0,s2
    80003f08:	00009097          	auipc	ra,0x9
    80003f0c:	c90080e7          	jalr	-880(ra) # 8000cb98 <_Unwind_Resume>
}
    80003f10:	03813083          	ld	ra,56(sp)
    80003f14:	03013403          	ld	s0,48(sp)
    80003f18:	02813483          	ld	s1,40(sp)
    80003f1c:	02013903          	ld	s2,32(sp)
    80003f20:	04010113          	addi	sp,sp,64
    80003f24:	00008067          	ret

0000000080003f28 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f28:	ff010113          	addi	sp,sp,-16
    80003f2c:	00113423          	sd	ra,8(sp)
    80003f30:	00813023          	sd	s0,0(sp)
    80003f34:	01010413          	addi	s0,sp,16
    80003f38:	00008797          	auipc	a5,0x8
    80003f3c:	89878793          	addi	a5,a5,-1896 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003f40:	00f53023          	sd	a5,0(a0)
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	c30080e7          	jalr	-976(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80003f4c:	00813083          	ld	ra,8(sp)
    80003f50:	00013403          	ld	s0,0(sp)
    80003f54:	01010113          	addi	sp,sp,16
    80003f58:	00008067          	ret

0000000080003f5c <_ZN7WorkerAD0Ev>:
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00113c23          	sd	ra,24(sp)
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00050493          	mv	s1,a0
    80003f74:	00008797          	auipc	a5,0x8
    80003f78:	85c78793          	addi	a5,a5,-1956 # 8000b7d0 <_ZTV7WorkerA+0x10>
    80003f7c:	00f53023          	sd	a5,0(a0)
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	bf4080e7          	jalr	-1036(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	b6c080e7          	jalr	-1172(ra) # 80001af8 <_ZdlPv>
    80003f94:	01813083          	ld	ra,24(sp)
    80003f98:	01013403          	ld	s0,16(sp)
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	02010113          	addi	sp,sp,32
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003fa8:	ff010113          	addi	sp,sp,-16
    80003fac:	00113423          	sd	ra,8(sp)
    80003fb0:	00813023          	sd	s0,0(sp)
    80003fb4:	01010413          	addi	s0,sp,16
    80003fb8:	00008797          	auipc	a5,0x8
    80003fbc:	84078793          	addi	a5,a5,-1984 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003fc0:	00f53023          	sd	a5,0(a0)
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	bb0080e7          	jalr	-1104(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	01010113          	addi	sp,sp,16
    80003fd8:	00008067          	ret

0000000080003fdc <_ZN7WorkerBD0Ev>:
    80003fdc:	fe010113          	addi	sp,sp,-32
    80003fe0:	00113c23          	sd	ra,24(sp)
    80003fe4:	00813823          	sd	s0,16(sp)
    80003fe8:	00913423          	sd	s1,8(sp)
    80003fec:	02010413          	addi	s0,sp,32
    80003ff0:	00050493          	mv	s1,a0
    80003ff4:	00008797          	auipc	a5,0x8
    80003ff8:	80478793          	addi	a5,a5,-2044 # 8000b7f8 <_ZTV7WorkerB+0x10>
    80003ffc:	00f53023          	sd	a5,0(a0)
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	b74080e7          	jalr	-1164(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004008:	00048513          	mv	a0,s1
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	aec080e7          	jalr	-1300(ra) # 80001af8 <_ZdlPv>
    80004014:	01813083          	ld	ra,24(sp)
    80004018:	01013403          	ld	s0,16(sp)
    8000401c:	00813483          	ld	s1,8(sp)
    80004020:	02010113          	addi	sp,sp,32
    80004024:	00008067          	ret

0000000080004028 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00113423          	sd	ra,8(sp)
    80004030:	00813023          	sd	s0,0(sp)
    80004034:	01010413          	addi	s0,sp,16
    80004038:	00007797          	auipc	a5,0x7
    8000403c:	7e878793          	addi	a5,a5,2024 # 8000b820 <_ZTV7WorkerC+0x10>
    80004040:	00f53023          	sd	a5,0(a0)
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	b30080e7          	jalr	-1232(ra) # 80001b74 <_ZN6ThreadD1Ev>
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00008067          	ret

000000008000405c <_ZN7WorkerCD0Ev>:
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	02010413          	addi	s0,sp,32
    80004070:	00050493          	mv	s1,a0
    80004074:	00007797          	auipc	a5,0x7
    80004078:	7ac78793          	addi	a5,a5,1964 # 8000b820 <_ZTV7WorkerC+0x10>
    8000407c:	00f53023          	sd	a5,0(a0)
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	af4080e7          	jalr	-1292(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004088:	00048513          	mv	a0,s1
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	a6c080e7          	jalr	-1428(ra) # 80001af8 <_ZdlPv>
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00813483          	ld	s1,8(sp)
    800040a0:	02010113          	addi	sp,sp,32
    800040a4:	00008067          	ret

00000000800040a8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
    800040b8:	00007797          	auipc	a5,0x7
    800040bc:	79078793          	addi	a5,a5,1936 # 8000b848 <_ZTV7WorkerD+0x10>
    800040c0:	00f53023          	sd	a5,0(a0)
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	ab0080e7          	jalr	-1360(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800040cc:	00813083          	ld	ra,8(sp)
    800040d0:	00013403          	ld	s0,0(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN7WorkerDD0Ev>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	75478793          	addi	a5,a5,1876 # 8000b848 <_ZTV7WorkerD+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	a74080e7          	jalr	-1420(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004108:	00048513          	mv	a0,s1
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	9ec080e7          	jalr	-1556(ra) # 80001af8 <_ZdlPv>
    80004114:	01813083          	ld	ra,24(sp)
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	00813483          	ld	s1,8(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerA3runEv>:
    void run() override {
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004138:	00000593          	li	a1,0
    8000413c:	fffff097          	auipc	ra,0xfffff
    80004140:	774080e7          	jalr	1908(ra) # 800038b0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004144:	00813083          	ld	ra,8(sp)
    80004148:	00013403          	ld	s0,0(sp)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <_ZN7WorkerB3runEv>:
    void run() override {
    80004154:	ff010113          	addi	sp,sp,-16
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	00813023          	sd	s0,0(sp)
    80004160:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004164:	00000593          	li	a1,0
    80004168:	00000097          	auipc	ra,0x0
    8000416c:	814080e7          	jalr	-2028(ra) # 8000397c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004170:	00813083          	ld	ra,8(sp)
    80004174:	00013403          	ld	s0,0(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN7WorkerC3runEv>:
    void run() override {
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00113423          	sd	ra,8(sp)
    80004188:	00813023          	sd	s0,0(sp)
    8000418c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004190:	00000593          	li	a1,0
    80004194:	00000097          	auipc	ra,0x0
    80004198:	8bc080e7          	jalr	-1860(ra) # 80003a50 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <_ZN7WorkerD3runEv>:
    void run() override {
    800041ac:	ff010113          	addi	sp,sp,-16
    800041b0:	00113423          	sd	ra,8(sp)
    800041b4:	00813023          	sd	s0,0(sp)
    800041b8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800041bc:	00000593          	li	a1,0
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	a10080e7          	jalr	-1520(ra) # 80003bd0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800041c8:	00813083          	ld	ra,8(sp)
    800041cc:	00013403          	ld	s0,0(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800041d8:	f8010113          	addi	sp,sp,-128
    800041dc:	06113c23          	sd	ra,120(sp)
    800041e0:	06813823          	sd	s0,112(sp)
    800041e4:	06913423          	sd	s1,104(sp)
    800041e8:	07213023          	sd	s2,96(sp)
    800041ec:	05313c23          	sd	s3,88(sp)
    800041f0:	05413823          	sd	s4,80(sp)
    800041f4:	05513423          	sd	s5,72(sp)
    800041f8:	05613023          	sd	s6,64(sp)
    800041fc:	03713c23          	sd	s7,56(sp)
    80004200:	03813823          	sd	s8,48(sp)
    80004204:	03913423          	sd	s9,40(sp)
    80004208:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000420c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004210:	00005517          	auipc	a0,0x5
    80004214:	e2050513          	addi	a0,a0,-480 # 80009030 <CONSOLE_STATUS+0x20>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	5a8080e7          	jalr	1448(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    80004220:	01e00593          	li	a1,30
    80004224:	f8040493          	addi	s1,s0,-128
    80004228:	00048513          	mv	a0,s1
    8000422c:	00001097          	auipc	ra,0x1
    80004230:	61c080e7          	jalr	1564(ra) # 80005848 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004234:	00048513          	mv	a0,s1
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	6e8080e7          	jalr	1768(ra) # 80005920 <_Z11stringToIntPKc>
    80004240:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004244:	00005517          	auipc	a0,0x5
    80004248:	e0c50513          	addi	a0,a0,-500 # 80009050 <CONSOLE_STATUS+0x40>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	574080e7          	jalr	1396(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    80004254:	01e00593          	li	a1,30
    80004258:	00048513          	mv	a0,s1
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	5ec080e7          	jalr	1516(ra) # 80005848 <_Z9getStringPci>
    n = stringToInt(input);
    80004264:	00048513          	mv	a0,s1
    80004268:	00001097          	auipc	ra,0x1
    8000426c:	6b8080e7          	jalr	1720(ra) # 80005920 <_Z11stringToIntPKc>
    80004270:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004274:	00005517          	auipc	a0,0x5
    80004278:	dfc50513          	addi	a0,a0,-516 # 80009070 <CONSOLE_STATUS+0x60>
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	544080e7          	jalr	1348(ra) # 800057c0 <_Z11printStringPKc>
    printInt(threadNum);
    80004284:	00000613          	li	a2,0
    80004288:	00a00593          	li	a1,10
    8000428c:	00098513          	mv	a0,s3
    80004290:	00001097          	auipc	ra,0x1
    80004294:	6e0080e7          	jalr	1760(ra) # 80005970 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004298:	00005517          	auipc	a0,0x5
    8000429c:	df050513          	addi	a0,a0,-528 # 80009088 <CONSOLE_STATUS+0x78>
    800042a0:	00001097          	auipc	ra,0x1
    800042a4:	520080e7          	jalr	1312(ra) # 800057c0 <_Z11printStringPKc>
    printInt(n);
    800042a8:	00000613          	li	a2,0
    800042ac:	00a00593          	li	a1,10
    800042b0:	00048513          	mv	a0,s1
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	6bc080e7          	jalr	1724(ra) # 80005970 <_Z8printIntiii>
    printString(".\n");
    800042bc:	00005517          	auipc	a0,0x5
    800042c0:	de450513          	addi	a0,a0,-540 # 800090a0 <CONSOLE_STATUS+0x90>
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	4fc080e7          	jalr	1276(ra) # 800057c0 <_Z11printStringPKc>
    if (threadNum > n) {
    800042cc:	0334c463          	blt	s1,s3,800042f4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800042d0:	03305c63          	blez	s3,80004308 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042d4:	03800513          	li	a0,56
    800042d8:	ffffd097          	auipc	ra,0xffffd
    800042dc:	7d0080e7          	jalr	2000(ra) # 80001aa8 <_Znwm>
    800042e0:	00050a93          	mv	s5,a0
    800042e4:	00048593          	mv	a1,s1
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	7a8080e7          	jalr	1960(ra) # 80005a90 <_ZN9BufferCPPC1Ei>
    800042f0:	0300006f          	j	80004320 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042f4:	00005517          	auipc	a0,0x5
    800042f8:	db450513          	addi	a0,a0,-588 # 800090a8 <CONSOLE_STATUS+0x98>
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	4c4080e7          	jalr	1220(ra) # 800057c0 <_Z11printStringPKc>
        return;
    80004304:	0140006f          	j	80004318 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004308:	00005517          	auipc	a0,0x5
    8000430c:	de050513          	addi	a0,a0,-544 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004310:	00001097          	auipc	ra,0x1
    80004314:	4b0080e7          	jalr	1200(ra) # 800057c0 <_Z11printStringPKc>
        return;
    80004318:	000c0113          	mv	sp,s8
    8000431c:	2140006f          	j	80004530 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004320:	01000513          	li	a0,16
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	784080e7          	jalr	1924(ra) # 80001aa8 <_Znwm>
    8000432c:	00050913          	mv	s2,a0
    80004330:	00000593          	li	a1,0
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	b34080e7          	jalr	-1228(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    8000433c:	00007797          	auipc	a5,0x7
    80004340:	7527be23          	sd	s2,1884(a5) # 8000ba98 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004344:	00399793          	slli	a5,s3,0x3
    80004348:	00f78793          	addi	a5,a5,15
    8000434c:	ff07f793          	andi	a5,a5,-16
    80004350:	40f10133          	sub	sp,sp,a5
    80004354:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004358:	0019871b          	addiw	a4,s3,1
    8000435c:	00171793          	slli	a5,a4,0x1
    80004360:	00e787b3          	add	a5,a5,a4
    80004364:	00379793          	slli	a5,a5,0x3
    80004368:	00f78793          	addi	a5,a5,15
    8000436c:	ff07f793          	andi	a5,a5,-16
    80004370:	40f10133          	sub	sp,sp,a5
    80004374:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004378:	00199493          	slli	s1,s3,0x1
    8000437c:	013484b3          	add	s1,s1,s3
    80004380:	00349493          	slli	s1,s1,0x3
    80004384:	009b04b3          	add	s1,s6,s1
    80004388:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000438c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004390:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004394:	02800513          	li	a0,40
    80004398:	ffffd097          	auipc	ra,0xffffd
    8000439c:	710080e7          	jalr	1808(ra) # 80001aa8 <_Znwm>
    800043a0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800043a4:	ffffe097          	auipc	ra,0xffffe
    800043a8:	a38080e7          	jalr	-1480(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800043ac:	00007797          	auipc	a5,0x7
    800043b0:	51478793          	addi	a5,a5,1300 # 8000b8c0 <_ZTV8Consumer+0x10>
    800043b4:	00fbb023          	sd	a5,0(s7)
    800043b8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800043bc:	000b8513          	mv	a0,s7
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	9c0080e7          	jalr	-1600(ra) # 80001d80 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800043c8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800043cc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800043d0:	00007797          	auipc	a5,0x7
    800043d4:	6c87b783          	ld	a5,1736(a5) # 8000ba98 <_ZL10waitForAll>
    800043d8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043dc:	02800513          	li	a0,40
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	6c8080e7          	jalr	1736(ra) # 80001aa8 <_Znwm>
    800043e8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	9f0080e7          	jalr	-1552(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800043f4:	00007797          	auipc	a5,0x7
    800043f8:	47c78793          	addi	a5,a5,1148 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    800043fc:	00f4b023          	sd	a5,0(s1)
    80004400:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004404:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004408:	00048513          	mv	a0,s1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	974080e7          	jalr	-1676(ra) # 80001d80 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004414:	00100913          	li	s2,1
    80004418:	0300006f          	j	80004448 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	47c78793          	addi	a5,a5,1148 # 8000b898 <_ZTV8Producer+0x10>
    80004424:	00fcb023          	sd	a5,0(s9)
    80004428:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000442c:	00391793          	slli	a5,s2,0x3
    80004430:	00fa07b3          	add	a5,s4,a5
    80004434:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004438:	000c8513          	mv	a0,s9
    8000443c:	ffffe097          	auipc	ra,0xffffe
    80004440:	944080e7          	jalr	-1724(ra) # 80001d80 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004444:	0019091b          	addiw	s2,s2,1
    80004448:	05395263          	bge	s2,s3,8000448c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000444c:	00191493          	slli	s1,s2,0x1
    80004450:	012484b3          	add	s1,s1,s2
    80004454:	00349493          	slli	s1,s1,0x3
    80004458:	009b04b3          	add	s1,s6,s1
    8000445c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004460:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004464:	00007797          	auipc	a5,0x7
    80004468:	6347b783          	ld	a5,1588(a5) # 8000ba98 <_ZL10waitForAll>
    8000446c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004470:	02800513          	li	a0,40
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	634080e7          	jalr	1588(ra) # 80001aa8 <_Znwm>
    8000447c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	95c080e7          	jalr	-1700(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80004488:	f95ff06f          	j	8000441c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	928080e7          	jalr	-1752(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004494:	00000493          	li	s1,0
    80004498:	0099ce63          	blt	s3,s1,800044b4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000449c:	00007517          	auipc	a0,0x7
    800044a0:	5fc53503          	ld	a0,1532(a0) # 8000ba98 <_ZL10waitForAll>
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	a00080e7          	jalr	-1536(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	fe9ff06f          	j	80004498 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800044b4:	00007517          	auipc	a0,0x7
    800044b8:	5e453503          	ld	a0,1508(a0) # 8000ba98 <_ZL10waitForAll>
    800044bc:	00050863          	beqz	a0,800044cc <_Z20testConsumerProducerv+0x2f4>
    800044c0:	00053783          	ld	a5,0(a0)
    800044c4:	0087b783          	ld	a5,8(a5)
    800044c8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800044cc:	00000493          	li	s1,0
    800044d0:	0080006f          	j	800044d8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800044d4:	0014849b          	addiw	s1,s1,1
    800044d8:	0334d263          	bge	s1,s3,800044fc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800044dc:	00349793          	slli	a5,s1,0x3
    800044e0:	00fa07b3          	add	a5,s4,a5
    800044e4:	0007b503          	ld	a0,0(a5)
    800044e8:	fe0506e3          	beqz	a0,800044d4 <_Z20testConsumerProducerv+0x2fc>
    800044ec:	00053783          	ld	a5,0(a0)
    800044f0:	0087b783          	ld	a5,8(a5)
    800044f4:	000780e7          	jalr	a5
    800044f8:	fddff06f          	j	800044d4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800044fc:	000b8a63          	beqz	s7,80004510 <_Z20testConsumerProducerv+0x338>
    80004500:	000bb783          	ld	a5,0(s7)
    80004504:	0087b783          	ld	a5,8(a5)
    80004508:	000b8513          	mv	a0,s7
    8000450c:	000780e7          	jalr	a5
    delete buffer;
    80004510:	000a8e63          	beqz	s5,8000452c <_Z20testConsumerProducerv+0x354>
    80004514:	000a8513          	mv	a0,s5
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	870080e7          	jalr	-1936(ra) # 80005d88 <_ZN9BufferCPPD1Ev>
    80004520:	000a8513          	mv	a0,s5
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	5d4080e7          	jalr	1492(ra) # 80001af8 <_ZdlPv>
    8000452c:	000c0113          	mv	sp,s8
}
    80004530:	f8040113          	addi	sp,s0,-128
    80004534:	07813083          	ld	ra,120(sp)
    80004538:	07013403          	ld	s0,112(sp)
    8000453c:	06813483          	ld	s1,104(sp)
    80004540:	06013903          	ld	s2,96(sp)
    80004544:	05813983          	ld	s3,88(sp)
    80004548:	05013a03          	ld	s4,80(sp)
    8000454c:	04813a83          	ld	s5,72(sp)
    80004550:	04013b03          	ld	s6,64(sp)
    80004554:	03813b83          	ld	s7,56(sp)
    80004558:	03013c03          	ld	s8,48(sp)
    8000455c:	02813c83          	ld	s9,40(sp)
    80004560:	08010113          	addi	sp,sp,128
    80004564:	00008067          	ret
    80004568:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000456c:	000a8513          	mv	a0,s5
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	588080e7          	jalr	1416(ra) # 80001af8 <_ZdlPv>
    80004578:	00048513          	mv	a0,s1
    8000457c:	00008097          	auipc	ra,0x8
    80004580:	61c080e7          	jalr	1564(ra) # 8000cb98 <_Unwind_Resume>
    80004584:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004588:	00090513          	mv	a0,s2
    8000458c:	ffffd097          	auipc	ra,0xffffd
    80004590:	56c080e7          	jalr	1388(ra) # 80001af8 <_ZdlPv>
    80004594:	00048513          	mv	a0,s1
    80004598:	00008097          	auipc	ra,0x8
    8000459c:	600080e7          	jalr	1536(ra) # 8000cb98 <_Unwind_Resume>
    800045a0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800045a4:	000b8513          	mv	a0,s7
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	550080e7          	jalr	1360(ra) # 80001af8 <_ZdlPv>
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00008097          	auipc	ra,0x8
    800045b8:	5e4080e7          	jalr	1508(ra) # 8000cb98 <_Unwind_Resume>
    800045bc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045c0:	00048513          	mv	a0,s1
    800045c4:	ffffd097          	auipc	ra,0xffffd
    800045c8:	534080e7          	jalr	1332(ra) # 80001af8 <_ZdlPv>
    800045cc:	00090513          	mv	a0,s2
    800045d0:	00008097          	auipc	ra,0x8
    800045d4:	5c8080e7          	jalr	1480(ra) # 8000cb98 <_Unwind_Resume>
    800045d8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800045dc:	000c8513          	mv	a0,s9
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	518080e7          	jalr	1304(ra) # 80001af8 <_ZdlPv>
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00008097          	auipc	ra,0x8
    800045f0:	5ac080e7          	jalr	1452(ra) # 8000cb98 <_Unwind_Resume>

00000000800045f4 <_ZN8Consumer3runEv>:
    void run() override {
    800045f4:	fd010113          	addi	sp,sp,-48
    800045f8:	02113423          	sd	ra,40(sp)
    800045fc:	02813023          	sd	s0,32(sp)
    80004600:	00913c23          	sd	s1,24(sp)
    80004604:	01213823          	sd	s2,16(sp)
    80004608:	01313423          	sd	s3,8(sp)
    8000460c:	03010413          	addi	s0,sp,48
    80004610:	00050913          	mv	s2,a0
        int i = 0;
    80004614:	00000993          	li	s3,0
    80004618:	0100006f          	j	80004628 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000461c:	00a00513          	li	a0,10
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	970080e7          	jalr	-1680(ra) # 80001f90 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004628:	00007797          	auipc	a5,0x7
    8000462c:	4687a783          	lw	a5,1128(a5) # 8000ba90 <_ZL9threadEnd>
    80004630:	04079a63          	bnez	a5,80004684 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004634:	02093783          	ld	a5,32(s2)
    80004638:	0087b503          	ld	a0,8(a5)
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	638080e7          	jalr	1592(ra) # 80005c74 <_ZN9BufferCPP3getEv>
            i++;
    80004644:	0019849b          	addiw	s1,s3,1
    80004648:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000464c:	0ff57513          	andi	a0,a0,255
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	940080e7          	jalr	-1728(ra) # 80001f90 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004658:	05000793          	li	a5,80
    8000465c:	02f4e4bb          	remw	s1,s1,a5
    80004660:	fc0494e3          	bnez	s1,80004628 <_ZN8Consumer3runEv+0x34>
    80004664:	fb9ff06f          	j	8000461c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004668:	02093783          	ld	a5,32(s2)
    8000466c:	0087b503          	ld	a0,8(a5)
    80004670:	00001097          	auipc	ra,0x1
    80004674:	604080e7          	jalr	1540(ra) # 80005c74 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004678:	0ff57513          	andi	a0,a0,255
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	914080e7          	jalr	-1772(ra) # 80001f90 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004684:	02093783          	ld	a5,32(s2)
    80004688:	0087b503          	ld	a0,8(a5)
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	674080e7          	jalr	1652(ra) # 80005d00 <_ZN9BufferCPP6getCntEv>
    80004694:	fca04ae3          	bgtz	a0,80004668 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004698:	02093783          	ld	a5,32(s2)
    8000469c:	0107b503          	ld	a0,16(a5)
    800046a0:	ffffe097          	auipc	ra,0xffffe
    800046a4:	830080e7          	jalr	-2000(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    800046a8:	02813083          	ld	ra,40(sp)
    800046ac:	02013403          	ld	s0,32(sp)
    800046b0:	01813483          	ld	s1,24(sp)
    800046b4:	01013903          	ld	s2,16(sp)
    800046b8:	00813983          	ld	s3,8(sp)
    800046bc:	03010113          	addi	sp,sp,48
    800046c0:	00008067          	ret

00000000800046c4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800046c4:	ff010113          	addi	sp,sp,-16
    800046c8:	00113423          	sd	ra,8(sp)
    800046cc:	00813023          	sd	s0,0(sp)
    800046d0:	01010413          	addi	s0,sp,16
    800046d4:	00007797          	auipc	a5,0x7
    800046d8:	1ec78793          	addi	a5,a5,492 # 8000b8c0 <_ZTV8Consumer+0x10>
    800046dc:	00f53023          	sd	a5,0(a0)
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	494080e7          	jalr	1172(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800046e8:	00813083          	ld	ra,8(sp)
    800046ec:	00013403          	ld	s0,0(sp)
    800046f0:	01010113          	addi	sp,sp,16
    800046f4:	00008067          	ret

00000000800046f8 <_ZN8ConsumerD0Ev>:
    800046f8:	fe010113          	addi	sp,sp,-32
    800046fc:	00113c23          	sd	ra,24(sp)
    80004700:	00813823          	sd	s0,16(sp)
    80004704:	00913423          	sd	s1,8(sp)
    80004708:	02010413          	addi	s0,sp,32
    8000470c:	00050493          	mv	s1,a0
    80004710:	00007797          	auipc	a5,0x7
    80004714:	1b078793          	addi	a5,a5,432 # 8000b8c0 <_ZTV8Consumer+0x10>
    80004718:	00f53023          	sd	a5,0(a0)
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	458080e7          	jalr	1112(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004724:	00048513          	mv	a0,s1
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	3d0080e7          	jalr	976(ra) # 80001af8 <_ZdlPv>
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	02010113          	addi	sp,sp,32
    80004740:	00008067          	ret

0000000080004744 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004744:	ff010113          	addi	sp,sp,-16
    80004748:	00113423          	sd	ra,8(sp)
    8000474c:	00813023          	sd	s0,0(sp)
    80004750:	01010413          	addi	s0,sp,16
    80004754:	00007797          	auipc	a5,0x7
    80004758:	11c78793          	addi	a5,a5,284 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    8000475c:	00f53023          	sd	a5,0(a0)
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	414080e7          	jalr	1044(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004768:	00813083          	ld	ra,8(sp)
    8000476c:	00013403          	ld	s0,0(sp)
    80004770:	01010113          	addi	sp,sp,16
    80004774:	00008067          	ret

0000000080004778 <_ZN16ProducerKeyboradD0Ev>:
    80004778:	fe010113          	addi	sp,sp,-32
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00913423          	sd	s1,8(sp)
    80004788:	02010413          	addi	s0,sp,32
    8000478c:	00050493          	mv	s1,a0
    80004790:	00007797          	auipc	a5,0x7
    80004794:	0e078793          	addi	a5,a5,224 # 8000b870 <_ZTV16ProducerKeyborad+0x10>
    80004798:	00f53023          	sd	a5,0(a0)
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	3d8080e7          	jalr	984(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800047a4:	00048513          	mv	a0,s1
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	350080e7          	jalr	848(ra) # 80001af8 <_ZdlPv>
    800047b0:	01813083          	ld	ra,24(sp)
    800047b4:	01013403          	ld	s0,16(sp)
    800047b8:	00813483          	ld	s1,8(sp)
    800047bc:	02010113          	addi	sp,sp,32
    800047c0:	00008067          	ret

00000000800047c4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800047c4:	ff010113          	addi	sp,sp,-16
    800047c8:	00113423          	sd	ra,8(sp)
    800047cc:	00813023          	sd	s0,0(sp)
    800047d0:	01010413          	addi	s0,sp,16
    800047d4:	00007797          	auipc	a5,0x7
    800047d8:	0c478793          	addi	a5,a5,196 # 8000b898 <_ZTV8Producer+0x10>
    800047dc:	00f53023          	sd	a5,0(a0)
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	394080e7          	jalr	916(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800047e8:	00813083          	ld	ra,8(sp)
    800047ec:	00013403          	ld	s0,0(sp)
    800047f0:	01010113          	addi	sp,sp,16
    800047f4:	00008067          	ret

00000000800047f8 <_ZN8ProducerD0Ev>:
    800047f8:	fe010113          	addi	sp,sp,-32
    800047fc:	00113c23          	sd	ra,24(sp)
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00913423          	sd	s1,8(sp)
    80004808:	02010413          	addi	s0,sp,32
    8000480c:	00050493          	mv	s1,a0
    80004810:	00007797          	auipc	a5,0x7
    80004814:	08878793          	addi	a5,a5,136 # 8000b898 <_ZTV8Producer+0x10>
    80004818:	00f53023          	sd	a5,0(a0)
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	358080e7          	jalr	856(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80004824:	00048513          	mv	a0,s1
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	2d0080e7          	jalr	720(ra) # 80001af8 <_ZdlPv>
    80004830:	01813083          	ld	ra,24(sp)
    80004834:	01013403          	ld	s0,16(sp)
    80004838:	00813483          	ld	s1,8(sp)
    8000483c:	02010113          	addi	sp,sp,32
    80004840:	00008067          	ret

0000000080004844 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004844:	fe010113          	addi	sp,sp,-32
    80004848:	00113c23          	sd	ra,24(sp)
    8000484c:	00813823          	sd	s0,16(sp)
    80004850:	00913423          	sd	s1,8(sp)
    80004854:	02010413          	addi	s0,sp,32
    80004858:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	e84080e7          	jalr	-380(ra) # 800016e0 <_Z4getcv>
    80004864:	0005059b          	sext.w	a1,a0
    80004868:	01b00793          	li	a5,27
    8000486c:	00f58c63          	beq	a1,a5,80004884 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004870:	0204b783          	ld	a5,32(s1)
    80004874:	0087b503          	ld	a0,8(a5)
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	36c080e7          	jalr	876(ra) # 80005be4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004880:	fddff06f          	j	8000485c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004884:	00100793          	li	a5,1
    80004888:	00007717          	auipc	a4,0x7
    8000488c:	20f72423          	sw	a5,520(a4) # 8000ba90 <_ZL9threadEnd>
        td->buffer->put('!');
    80004890:	0204b783          	ld	a5,32(s1)
    80004894:	02100593          	li	a1,33
    80004898:	0087b503          	ld	a0,8(a5)
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	348080e7          	jalr	840(ra) # 80005be4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800048a4:	0204b783          	ld	a5,32(s1)
    800048a8:	0107b503          	ld	a0,16(a5)
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	624080e7          	jalr	1572(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    800048b4:	01813083          	ld	ra,24(sp)
    800048b8:	01013403          	ld	s0,16(sp)
    800048bc:	00813483          	ld	s1,8(sp)
    800048c0:	02010113          	addi	sp,sp,32
    800048c4:	00008067          	ret

00000000800048c8 <_ZN8Producer3runEv>:
    void run() override {
    800048c8:	fe010113          	addi	sp,sp,-32
    800048cc:	00113c23          	sd	ra,24(sp)
    800048d0:	00813823          	sd	s0,16(sp)
    800048d4:	00913423          	sd	s1,8(sp)
    800048d8:	01213023          	sd	s2,0(sp)
    800048dc:	02010413          	addi	s0,sp,32
    800048e0:	00050493          	mv	s1,a0
        int i = 0;
    800048e4:	00000913          	li	s2,0
        while (!threadEnd) {
    800048e8:	00007797          	auipc	a5,0x7
    800048ec:	1a87a783          	lw	a5,424(a5) # 8000ba90 <_ZL9threadEnd>
    800048f0:	04079263          	bnez	a5,80004934 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800048f4:	0204b783          	ld	a5,32(s1)
    800048f8:	0007a583          	lw	a1,0(a5)
    800048fc:	0305859b          	addiw	a1,a1,48
    80004900:	0087b503          	ld	a0,8(a5)
    80004904:	00001097          	auipc	ra,0x1
    80004908:	2e0080e7          	jalr	736(ra) # 80005be4 <_ZN9BufferCPP3putEi>
            i++;
    8000490c:	0019071b          	addiw	a4,s2,1
    80004910:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004914:	0204b783          	ld	a5,32(s1)
    80004918:	0007a783          	lw	a5,0(a5)
    8000491c:	00e787bb          	addw	a5,a5,a4
    80004920:	00500513          	li	a0,5
    80004924:	02a7e53b          	remw	a0,a5,a0
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	518080e7          	jalr	1304(ra) # 80001e40 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004930:	fb9ff06f          	j	800048e8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004934:	0204b783          	ld	a5,32(s1)
    80004938:	0107b503          	ld	a0,16(a5)
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	594080e7          	jalr	1428(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    80004944:	01813083          	ld	ra,24(sp)
    80004948:	01013403          	ld	s0,16(sp)
    8000494c:	00813483          	ld	s1,8(sp)
    80004950:	00013903          	ld	s2,0(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret

000000008000495c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000495c:	fe010113          	addi	sp,sp,-32
    80004960:	00113c23          	sd	ra,24(sp)
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00913423          	sd	s1,8(sp)
    8000496c:	01213023          	sd	s2,0(sp)
    80004970:	02010413          	addi	s0,sp,32
    80004974:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004978:	00100793          	li	a5,1
    8000497c:	02a7f863          	bgeu	a5,a0,800049ac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004980:	00a00793          	li	a5,10
    80004984:	02f577b3          	remu	a5,a0,a5
    80004988:	02078e63          	beqz	a5,800049c4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000498c:	fff48513          	addi	a0,s1,-1
    80004990:	00000097          	auipc	ra,0x0
    80004994:	fcc080e7          	jalr	-52(ra) # 8000495c <_ZL9fibonaccim>
    80004998:	00050913          	mv	s2,a0
    8000499c:	ffe48513          	addi	a0,s1,-2
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	fbc080e7          	jalr	-68(ra) # 8000495c <_ZL9fibonaccim>
    800049a8:	00a90533          	add	a0,s2,a0
}
    800049ac:	01813083          	ld	ra,24(sp)
    800049b0:	01013403          	ld	s0,16(sp)
    800049b4:	00813483          	ld	s1,8(sp)
    800049b8:	00013903          	ld	s2,0(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	b98080e7          	jalr	-1128(ra) # 8000155c <_Z15thread_dispatchv>
    800049cc:	fc1ff06f          	j	8000498c <_ZL9fibonaccim+0x30>

00000000800049d0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00913423          	sd	s1,8(sp)
    800049e0:	01213023          	sd	s2,0(sp)
    800049e4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049e8:	00a00493          	li	s1,10
    800049ec:	0400006f          	j	80004a2c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049f0:	00004517          	auipc	a0,0x4
    800049f4:	79850513          	addi	a0,a0,1944 # 80009188 <CONSOLE_STATUS+0x178>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	dc8080e7          	jalr	-568(ra) # 800057c0 <_Z11printStringPKc>
    80004a00:	00000613          	li	a2,0
    80004a04:	00a00593          	li	a1,10
    80004a08:	00048513          	mv	a0,s1
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	f64080e7          	jalr	-156(ra) # 80005970 <_Z8printIntiii>
    80004a14:	00005517          	auipc	a0,0x5
    80004a18:	96450513          	addi	a0,a0,-1692 # 80009378 <CONSOLE_STATUS+0x368>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	da4080e7          	jalr	-604(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a24:	0014849b          	addiw	s1,s1,1
    80004a28:	0ff4f493          	andi	s1,s1,255
    80004a2c:	00c00793          	li	a5,12
    80004a30:	fc97f0e3          	bgeu	a5,s1,800049f0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a34:	00004517          	auipc	a0,0x4
    80004a38:	75c50513          	addi	a0,a0,1884 # 80009190 <CONSOLE_STATUS+0x180>
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	d84080e7          	jalr	-636(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a44:	00500313          	li	t1,5
    thread_dispatch();
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	b14080e7          	jalr	-1260(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a50:	01000513          	li	a0,16
    80004a54:	00000097          	auipc	ra,0x0
    80004a58:	f08080e7          	jalr	-248(ra) # 8000495c <_ZL9fibonaccim>
    80004a5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a60:	00004517          	auipc	a0,0x4
    80004a64:	74050513          	addi	a0,a0,1856 # 800091a0 <CONSOLE_STATUS+0x190>
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	d58080e7          	jalr	-680(ra) # 800057c0 <_Z11printStringPKc>
    80004a70:	00000613          	li	a2,0
    80004a74:	00a00593          	li	a1,10
    80004a78:	0009051b          	sext.w	a0,s2
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	ef4080e7          	jalr	-268(ra) # 80005970 <_Z8printIntiii>
    80004a84:	00005517          	auipc	a0,0x5
    80004a88:	8f450513          	addi	a0,a0,-1804 # 80009378 <CONSOLE_STATUS+0x368>
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	d34080e7          	jalr	-716(ra) # 800057c0 <_Z11printStringPKc>
    80004a94:	0400006f          	j	80004ad4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a98:	00004517          	auipc	a0,0x4
    80004a9c:	6f050513          	addi	a0,a0,1776 # 80009188 <CONSOLE_STATUS+0x178>
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	d20080e7          	jalr	-736(ra) # 800057c0 <_Z11printStringPKc>
    80004aa8:	00000613          	li	a2,0
    80004aac:	00a00593          	li	a1,10
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	ebc080e7          	jalr	-324(ra) # 80005970 <_Z8printIntiii>
    80004abc:	00005517          	auipc	a0,0x5
    80004ac0:	8bc50513          	addi	a0,a0,-1860 # 80009378 <CONSOLE_STATUS+0x368>
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	cfc080e7          	jalr	-772(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004acc:	0014849b          	addiw	s1,s1,1
    80004ad0:	0ff4f493          	andi	s1,s1,255
    80004ad4:	00f00793          	li	a5,15
    80004ad8:	fc97f0e3          	bgeu	a5,s1,80004a98 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004adc:	00004517          	auipc	a0,0x4
    80004ae0:	6d450513          	addi	a0,a0,1748 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	cdc080e7          	jalr	-804(ra) # 800057c0 <_Z11printStringPKc>
    finishedD = true;
    80004aec:	00100793          	li	a5,1
    80004af0:	00007717          	auipc	a4,0x7
    80004af4:	faf70823          	sb	a5,-80(a4) # 8000baa0 <_ZL9finishedD>
    thread_dispatch();
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	a64080e7          	jalr	-1436(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004b00:	01813083          	ld	ra,24(sp)
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	00813483          	ld	s1,8(sp)
    80004b0c:	00013903          	ld	s2,0(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00113c23          	sd	ra,24(sp)
    80004b20:	00813823          	sd	s0,16(sp)
    80004b24:	00913423          	sd	s1,8(sp)
    80004b28:	01213023          	sd	s2,0(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b30:	00000493          	li	s1,0
    80004b34:	0400006f          	j	80004b74 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b38:	00004517          	auipc	a0,0x4
    80004b3c:	61050513          	addi	a0,a0,1552 # 80009148 <CONSOLE_STATUS+0x138>
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	c80080e7          	jalr	-896(ra) # 800057c0 <_Z11printStringPKc>
    80004b48:	00000613          	li	a2,0
    80004b4c:	00a00593          	li	a1,10
    80004b50:	00048513          	mv	a0,s1
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	e1c080e7          	jalr	-484(ra) # 80005970 <_Z8printIntiii>
    80004b5c:	00005517          	auipc	a0,0x5
    80004b60:	81c50513          	addi	a0,a0,-2020 # 80009378 <CONSOLE_STATUS+0x368>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	c5c080e7          	jalr	-932(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b6c:	0014849b          	addiw	s1,s1,1
    80004b70:	0ff4f493          	andi	s1,s1,255
    80004b74:	00200793          	li	a5,2
    80004b78:	fc97f0e3          	bgeu	a5,s1,80004b38 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b7c:	00004517          	auipc	a0,0x4
    80004b80:	5d450513          	addi	a0,a0,1492 # 80009150 <CONSOLE_STATUS+0x140>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	c3c080e7          	jalr	-964(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b8c:	00700313          	li	t1,7
    thread_dispatch();
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	9cc080e7          	jalr	-1588(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b98:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b9c:	00004517          	auipc	a0,0x4
    80004ba0:	5c450513          	addi	a0,a0,1476 # 80009160 <CONSOLE_STATUS+0x150>
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	c1c080e7          	jalr	-996(ra) # 800057c0 <_Z11printStringPKc>
    80004bac:	00000613          	li	a2,0
    80004bb0:	00a00593          	li	a1,10
    80004bb4:	0009051b          	sext.w	a0,s2
    80004bb8:	00001097          	auipc	ra,0x1
    80004bbc:	db8080e7          	jalr	-584(ra) # 80005970 <_Z8printIntiii>
    80004bc0:	00004517          	auipc	a0,0x4
    80004bc4:	7b850513          	addi	a0,a0,1976 # 80009378 <CONSOLE_STATUS+0x368>
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	bf8080e7          	jalr	-1032(ra) # 800057c0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004bd0:	00c00513          	li	a0,12
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	d88080e7          	jalr	-632(ra) # 8000495c <_ZL9fibonaccim>
    80004bdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004be0:	00004517          	auipc	a0,0x4
    80004be4:	58850513          	addi	a0,a0,1416 # 80009168 <CONSOLE_STATUS+0x158>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	bd8080e7          	jalr	-1064(ra) # 800057c0 <_Z11printStringPKc>
    80004bf0:	00000613          	li	a2,0
    80004bf4:	00a00593          	li	a1,10
    80004bf8:	0009051b          	sext.w	a0,s2
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	d74080e7          	jalr	-652(ra) # 80005970 <_Z8printIntiii>
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	77450513          	addi	a0,a0,1908 # 80009378 <CONSOLE_STATUS+0x368>
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	bb4080e7          	jalr	-1100(ra) # 800057c0 <_Z11printStringPKc>
    80004c14:	0400006f          	j	80004c54 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c18:	00004517          	auipc	a0,0x4
    80004c1c:	53050513          	addi	a0,a0,1328 # 80009148 <CONSOLE_STATUS+0x138>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	ba0080e7          	jalr	-1120(ra) # 800057c0 <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	00048513          	mv	a0,s1
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	d3c080e7          	jalr	-708(ra) # 80005970 <_Z8printIntiii>
    80004c3c:	00004517          	auipc	a0,0x4
    80004c40:	73c50513          	addi	a0,a0,1852 # 80009378 <CONSOLE_STATUS+0x368>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	b7c080e7          	jalr	-1156(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c4c:	0014849b          	addiw	s1,s1,1
    80004c50:	0ff4f493          	andi	s1,s1,255
    80004c54:	00500793          	li	a5,5
    80004c58:	fc97f0e3          	bgeu	a5,s1,80004c18 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c5c:	00004517          	auipc	a0,0x4
    80004c60:	4c450513          	addi	a0,a0,1220 # 80009120 <CONSOLE_STATUS+0x110>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	b5c080e7          	jalr	-1188(ra) # 800057c0 <_Z11printStringPKc>
    finishedC = true;
    80004c6c:	00100793          	li	a5,1
    80004c70:	00007717          	auipc	a4,0x7
    80004c74:	e2f708a3          	sb	a5,-463(a4) # 8000baa1 <_ZL9finishedC>
    thread_dispatch();
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	8e4080e7          	jalr	-1820(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004c80:	01813083          	ld	ra,24(sp)
    80004c84:	01013403          	ld	s0,16(sp)
    80004c88:	00813483          	ld	s1,8(sp)
    80004c8c:	00013903          	ld	s2,0(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret

0000000080004c98 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	01213023          	sd	s2,0(sp)
    80004cac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cb0:	00000913          	li	s2,0
    80004cb4:	0380006f          	j	80004cec <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	8a4080e7          	jalr	-1884(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cc0:	00148493          	addi	s1,s1,1
    80004cc4:	000027b7          	lui	a5,0x2
    80004cc8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ccc:	0097ee63          	bltu	a5,s1,80004ce8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004cd0:	00000713          	li	a4,0
    80004cd4:	000077b7          	lui	a5,0x7
    80004cd8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cdc:	fce7eee3          	bltu	a5,a4,80004cb8 <_ZL11workerBodyBPv+0x20>
    80004ce0:	00170713          	addi	a4,a4,1
    80004ce4:	ff1ff06f          	j	80004cd4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ce8:	00190913          	addi	s2,s2,1
    80004cec:	00f00793          	li	a5,15
    80004cf0:	0527e063          	bltu	a5,s2,80004d30 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	43c50513          	addi	a0,a0,1084 # 80009130 <CONSOLE_STATUS+0x120>
    80004cfc:	00001097          	auipc	ra,0x1
    80004d00:	ac4080e7          	jalr	-1340(ra) # 800057c0 <_Z11printStringPKc>
    80004d04:	00000613          	li	a2,0
    80004d08:	00a00593          	li	a1,10
    80004d0c:	0009051b          	sext.w	a0,s2
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	c60080e7          	jalr	-928(ra) # 80005970 <_Z8printIntiii>
    80004d18:	00004517          	auipc	a0,0x4
    80004d1c:	66050513          	addi	a0,a0,1632 # 80009378 <CONSOLE_STATUS+0x368>
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	aa0080e7          	jalr	-1376(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d28:	00000493          	li	s1,0
    80004d2c:	f99ff06f          	j	80004cc4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004d30:	00004517          	auipc	a0,0x4
    80004d34:	40850513          	addi	a0,a0,1032 # 80009138 <CONSOLE_STATUS+0x128>
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	a88080e7          	jalr	-1400(ra) # 800057c0 <_Z11printStringPKc>
    finishedB = true;
    80004d40:	00100793          	li	a5,1
    80004d44:	00007717          	auipc	a4,0x7
    80004d48:	d4f70f23          	sb	a5,-674(a4) # 8000baa2 <_ZL9finishedB>
    thread_dispatch();
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	810080e7          	jalr	-2032(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004d54:	01813083          	ld	ra,24(sp)
    80004d58:	01013403          	ld	s0,16(sp)
    80004d5c:	00813483          	ld	s1,8(sp)
    80004d60:	00013903          	ld	s2,0(sp)
    80004d64:	02010113          	addi	sp,sp,32
    80004d68:	00008067          	ret

0000000080004d6c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d6c:	fe010113          	addi	sp,sp,-32
    80004d70:	00113c23          	sd	ra,24(sp)
    80004d74:	00813823          	sd	s0,16(sp)
    80004d78:	00913423          	sd	s1,8(sp)
    80004d7c:	01213023          	sd	s2,0(sp)
    80004d80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d84:	00000913          	li	s2,0
    80004d88:	0380006f          	j	80004dc0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d8c:	ffffc097          	auipc	ra,0xffffc
    80004d90:	7d0080e7          	jalr	2000(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d94:	00148493          	addi	s1,s1,1
    80004d98:	000027b7          	lui	a5,0x2
    80004d9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004da0:	0097ee63          	bltu	a5,s1,80004dbc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004da4:	00000713          	li	a4,0
    80004da8:	000077b7          	lui	a5,0x7
    80004dac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004db0:	fce7eee3          	bltu	a5,a4,80004d8c <_ZL11workerBodyAPv+0x20>
    80004db4:	00170713          	addi	a4,a4,1
    80004db8:	ff1ff06f          	j	80004da8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004dbc:	00190913          	addi	s2,s2,1
    80004dc0:	00900793          	li	a5,9
    80004dc4:	0527e063          	bltu	a5,s2,80004e04 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004dc8:	00004517          	auipc	a0,0x4
    80004dcc:	35050513          	addi	a0,a0,848 # 80009118 <CONSOLE_STATUS+0x108>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	9f0080e7          	jalr	-1552(ra) # 800057c0 <_Z11printStringPKc>
    80004dd8:	00000613          	li	a2,0
    80004ddc:	00a00593          	li	a1,10
    80004de0:	0009051b          	sext.w	a0,s2
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	b8c080e7          	jalr	-1140(ra) # 80005970 <_Z8printIntiii>
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	58c50513          	addi	a0,a0,1420 # 80009378 <CONSOLE_STATUS+0x368>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	9cc080e7          	jalr	-1588(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dfc:	00000493          	li	s1,0
    80004e00:	f99ff06f          	j	80004d98 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	31c50513          	addi	a0,a0,796 # 80009120 <CONSOLE_STATUS+0x110>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	9b4080e7          	jalr	-1612(ra) # 800057c0 <_Z11printStringPKc>
    finishedA = true;
    80004e14:	00100793          	li	a5,1
    80004e18:	00007717          	auipc	a4,0x7
    80004e1c:	c8f705a3          	sb	a5,-885(a4) # 8000baa3 <_ZL9finishedA>
}
    80004e20:	01813083          	ld	ra,24(sp)
    80004e24:	01013403          	ld	s0,16(sp)
    80004e28:	00813483          	ld	s1,8(sp)
    80004e2c:	00013903          	ld	s2,0(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret

0000000080004e38 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e38:	fd010113          	addi	sp,sp,-48
    80004e3c:	02113423          	sd	ra,40(sp)
    80004e40:	02813023          	sd	s0,32(sp)
    80004e44:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e48:	00000613          	li	a2,0
    80004e4c:	00000597          	auipc	a1,0x0
    80004e50:	f2058593          	addi	a1,a1,-224 # 80004d6c <_ZL11workerBodyAPv>
    80004e54:	fd040513          	addi	a0,s0,-48
    80004e58:	ffffc097          	auipc	ra,0xffffc
    80004e5c:	5dc080e7          	jalr	1500(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	36050513          	addi	a0,a0,864 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	958080e7          	jalr	-1704(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004e70:	00000613          	li	a2,0
    80004e74:	00000597          	auipc	a1,0x0
    80004e78:	e2458593          	addi	a1,a1,-476 # 80004c98 <_ZL11workerBodyBPv>
    80004e7c:	fd840513          	addi	a0,s0,-40
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	5b4080e7          	jalr	1460(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	35050513          	addi	a0,a0,848 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	930080e7          	jalr	-1744(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e98:	00000613          	li	a2,0
    80004e9c:	00000597          	auipc	a1,0x0
    80004ea0:	c7c58593          	addi	a1,a1,-900 # 80004b18 <_ZL11workerBodyCPv>
    80004ea4:	fe040513          	addi	a0,s0,-32
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	58c080e7          	jalr	1420(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	34050513          	addi	a0,a0,832 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	908080e7          	jalr	-1784(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004ec0:	00000613          	li	a2,0
    80004ec4:	00000597          	auipc	a1,0x0
    80004ec8:	b0c58593          	addi	a1,a1,-1268 # 800049d0 <_ZL11workerBodyDPv>
    80004ecc:	fe840513          	addi	a0,s0,-24
    80004ed0:	ffffc097          	auipc	ra,0xffffc
    80004ed4:	564080e7          	jalr	1380(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	33050513          	addi	a0,a0,816 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	8e0080e7          	jalr	-1824(ra) # 800057c0 <_Z11printStringPKc>
    80004ee8:	00c0006f          	j	80004ef4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	670080e7          	jalr	1648(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ef4:	00007797          	auipc	a5,0x7
    80004ef8:	baf7c783          	lbu	a5,-1105(a5) # 8000baa3 <_ZL9finishedA>
    80004efc:	fe0788e3          	beqz	a5,80004eec <_Z18Threads_C_API_testv+0xb4>
    80004f00:	00007797          	auipc	a5,0x7
    80004f04:	ba27c783          	lbu	a5,-1118(a5) # 8000baa2 <_ZL9finishedB>
    80004f08:	fe0782e3          	beqz	a5,80004eec <_Z18Threads_C_API_testv+0xb4>
    80004f0c:	00007797          	auipc	a5,0x7
    80004f10:	b957c783          	lbu	a5,-1131(a5) # 8000baa1 <_ZL9finishedC>
    80004f14:	fc078ce3          	beqz	a5,80004eec <_Z18Threads_C_API_testv+0xb4>
    80004f18:	00007797          	auipc	a5,0x7
    80004f1c:	b887c783          	lbu	a5,-1144(a5) # 8000baa0 <_ZL9finishedD>
    80004f20:	fc0786e3          	beqz	a5,80004eec <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004f24:	02813083          	ld	ra,40(sp)
    80004f28:	02013403          	ld	s0,32(sp)
    80004f2c:	03010113          	addi	sp,sp,48
    80004f30:	00008067          	ret

0000000080004f34 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f34:	fd010113          	addi	sp,sp,-48
    80004f38:	02113423          	sd	ra,40(sp)
    80004f3c:	02813023          	sd	s0,32(sp)
    80004f40:	00913c23          	sd	s1,24(sp)
    80004f44:	01213823          	sd	s2,16(sp)
    80004f48:	01313423          	sd	s3,8(sp)
    80004f4c:	03010413          	addi	s0,sp,48
    80004f50:	00050993          	mv	s3,a0
    80004f54:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f58:	00000913          	li	s2,0
    80004f5c:	00c0006f          	j	80004f68 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	e54080e7          	jalr	-428(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	778080e7          	jalr	1912(ra) # 800016e0 <_Z4getcv>
    80004f70:	0005059b          	sext.w	a1,a0
    80004f74:	01b00793          	li	a5,27
    80004f78:	02f58a63          	beq	a1,a5,80004fac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f7c:	0084b503          	ld	a0,8(s1)
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	c64080e7          	jalr	-924(ra) # 80005be4 <_ZN9BufferCPP3putEi>
        i++;
    80004f88:	0019071b          	addiw	a4,s2,1
    80004f8c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f90:	0004a683          	lw	a3,0(s1)
    80004f94:	0026979b          	slliw	a5,a3,0x2
    80004f98:	00d787bb          	addw	a5,a5,a3
    80004f9c:	0017979b          	slliw	a5,a5,0x1
    80004fa0:	02f767bb          	remw	a5,a4,a5
    80004fa4:	fc0792e3          	bnez	a5,80004f68 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004fa8:	fb9ff06f          	j	80004f60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004fac:	00100793          	li	a5,1
    80004fb0:	00007717          	auipc	a4,0x7
    80004fb4:	aef72c23          	sw	a5,-1288(a4) # 8000baa8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004fb8:	0209b783          	ld	a5,32(s3)
    80004fbc:	02100593          	li	a1,33
    80004fc0:	0087b503          	ld	a0,8(a5)
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	c20080e7          	jalr	-992(ra) # 80005be4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004fcc:	0104b503          	ld	a0,16(s1)
    80004fd0:	ffffd097          	auipc	ra,0xffffd
    80004fd4:	f00080e7          	jalr	-256(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    80004fd8:	02813083          	ld	ra,40(sp)
    80004fdc:	02013403          	ld	s0,32(sp)
    80004fe0:	01813483          	ld	s1,24(sp)
    80004fe4:	01013903          	ld	s2,16(sp)
    80004fe8:	00813983          	ld	s3,8(sp)
    80004fec:	03010113          	addi	sp,sp,48
    80004ff0:	00008067          	ret

0000000080004ff4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004ff4:	fe010113          	addi	sp,sp,-32
    80004ff8:	00113c23          	sd	ra,24(sp)
    80004ffc:	00813823          	sd	s0,16(sp)
    80005000:	00913423          	sd	s1,8(sp)
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	02010413          	addi	s0,sp,32
    8000500c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005010:	00000913          	li	s2,0
    80005014:	00c0006f          	j	80005020 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	d9c080e7          	jalr	-612(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005020:	00007797          	auipc	a5,0x7
    80005024:	a887a783          	lw	a5,-1400(a5) # 8000baa8 <_ZL9threadEnd>
    80005028:	02079e63          	bnez	a5,80005064 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000502c:	0004a583          	lw	a1,0(s1)
    80005030:	0305859b          	addiw	a1,a1,48
    80005034:	0084b503          	ld	a0,8(s1)
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	bac080e7          	jalr	-1108(ra) # 80005be4 <_ZN9BufferCPP3putEi>
        i++;
    80005040:	0019071b          	addiw	a4,s2,1
    80005044:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005048:	0004a683          	lw	a3,0(s1)
    8000504c:	0026979b          	slliw	a5,a3,0x2
    80005050:	00d787bb          	addw	a5,a5,a3
    80005054:	0017979b          	slliw	a5,a5,0x1
    80005058:	02f767bb          	remw	a5,a4,a5
    8000505c:	fc0792e3          	bnez	a5,80005020 <_ZN12ProducerSync8producerEPv+0x2c>
    80005060:	fb9ff06f          	j	80005018 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005064:	0104b503          	ld	a0,16(s1)
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	e68080e7          	jalr	-408(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	00013903          	ld	s2,0(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret

0000000080005088 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005088:	fd010113          	addi	sp,sp,-48
    8000508c:	02113423          	sd	ra,40(sp)
    80005090:	02813023          	sd	s0,32(sp)
    80005094:	00913c23          	sd	s1,24(sp)
    80005098:	01213823          	sd	s2,16(sp)
    8000509c:	01313423          	sd	s3,8(sp)
    800050a0:	01413023          	sd	s4,0(sp)
    800050a4:	03010413          	addi	s0,sp,48
    800050a8:	00050993          	mv	s3,a0
    800050ac:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800050b0:	00000a13          	li	s4,0
    800050b4:	01c0006f          	j	800050d0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	cfc080e7          	jalr	-772(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    800050c0:	0500006f          	j	80005110 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800050c4:	00a00513          	li	a0,10
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	654080e7          	jalr	1620(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    800050d0:	00007797          	auipc	a5,0x7
    800050d4:	9d87a783          	lw	a5,-1576(a5) # 8000baa8 <_ZL9threadEnd>
    800050d8:	06079263          	bnez	a5,8000513c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800050dc:	00893503          	ld	a0,8(s2)
    800050e0:	00001097          	auipc	ra,0x1
    800050e4:	b94080e7          	jalr	-1132(ra) # 80005c74 <_ZN9BufferCPP3getEv>
        i++;
    800050e8:	001a049b          	addiw	s1,s4,1
    800050ec:	00048a1b          	sext.w	s4,s1
        putc(key);
    800050f0:	0ff57513          	andi	a0,a0,255
    800050f4:	ffffc097          	auipc	ra,0xffffc
    800050f8:	628080e7          	jalr	1576(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800050fc:	00092703          	lw	a4,0(s2)
    80005100:	0027179b          	slliw	a5,a4,0x2
    80005104:	00e787bb          	addw	a5,a5,a4
    80005108:	02f4e7bb          	remw	a5,s1,a5
    8000510c:	fa0786e3          	beqz	a5,800050b8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005110:	05000793          	li	a5,80
    80005114:	02f4e4bb          	remw	s1,s1,a5
    80005118:	fa049ce3          	bnez	s1,800050d0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000511c:	fa9ff06f          	j	800050c4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005120:	0209b783          	ld	a5,32(s3)
    80005124:	0087b503          	ld	a0,8(a5)
    80005128:	00001097          	auipc	ra,0x1
    8000512c:	b4c080e7          	jalr	-1204(ra) # 80005c74 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005130:	0ff57513          	andi	a0,a0,255
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	e5c080e7          	jalr	-420(ra) # 80001f90 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000513c:	0209b783          	ld	a5,32(s3)
    80005140:	0087b503          	ld	a0,8(a5)
    80005144:	00001097          	auipc	ra,0x1
    80005148:	bbc080e7          	jalr	-1092(ra) # 80005d00 <_ZN9BufferCPP6getCntEv>
    8000514c:	fca04ae3          	bgtz	a0,80005120 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005150:	01093503          	ld	a0,16(s2)
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	d7c080e7          	jalr	-644(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    8000515c:	02813083          	ld	ra,40(sp)
    80005160:	02013403          	ld	s0,32(sp)
    80005164:	01813483          	ld	s1,24(sp)
    80005168:	01013903          	ld	s2,16(sp)
    8000516c:	00813983          	ld	s3,8(sp)
    80005170:	00013a03          	ld	s4,0(sp)
    80005174:	03010113          	addi	sp,sp,48
    80005178:	00008067          	ret

000000008000517c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000517c:	f8010113          	addi	sp,sp,-128
    80005180:	06113c23          	sd	ra,120(sp)
    80005184:	06813823          	sd	s0,112(sp)
    80005188:	06913423          	sd	s1,104(sp)
    8000518c:	07213023          	sd	s2,96(sp)
    80005190:	05313c23          	sd	s3,88(sp)
    80005194:	05413823          	sd	s4,80(sp)
    80005198:	05513423          	sd	s5,72(sp)
    8000519c:	05613023          	sd	s6,64(sp)
    800051a0:	03713c23          	sd	s7,56(sp)
    800051a4:	03813823          	sd	s8,48(sp)
    800051a8:	03913423          	sd	s9,40(sp)
    800051ac:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800051b0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	e7c50513          	addi	a0,a0,-388 # 80009030 <CONSOLE_STATUS+0x20>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	604080e7          	jalr	1540(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    800051c4:	01e00593          	li	a1,30
    800051c8:	f8040493          	addi	s1,s0,-128
    800051cc:	00048513          	mv	a0,s1
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	678080e7          	jalr	1656(ra) # 80005848 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800051d8:	00048513          	mv	a0,s1
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	744080e7          	jalr	1860(ra) # 80005920 <_Z11stringToIntPKc>
    800051e4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	e6850513          	addi	a0,a0,-408 # 80009050 <CONSOLE_STATUS+0x40>
    800051f0:	00000097          	auipc	ra,0x0
    800051f4:	5d0080e7          	jalr	1488(ra) # 800057c0 <_Z11printStringPKc>
    getString(input, 30);
    800051f8:	01e00593          	li	a1,30
    800051fc:	00048513          	mv	a0,s1
    80005200:	00000097          	auipc	ra,0x0
    80005204:	648080e7          	jalr	1608(ra) # 80005848 <_Z9getStringPci>
    n = stringToInt(input);
    80005208:	00048513          	mv	a0,s1
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	714080e7          	jalr	1812(ra) # 80005920 <_Z11stringToIntPKc>
    80005214:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005218:	00004517          	auipc	a0,0x4
    8000521c:	e5850513          	addi	a0,a0,-424 # 80009070 <CONSOLE_STATUS+0x60>
    80005220:	00000097          	auipc	ra,0x0
    80005224:	5a0080e7          	jalr	1440(ra) # 800057c0 <_Z11printStringPKc>
    80005228:	00000613          	li	a2,0
    8000522c:	00a00593          	li	a1,10
    80005230:	00090513          	mv	a0,s2
    80005234:	00000097          	auipc	ra,0x0
    80005238:	73c080e7          	jalr	1852(ra) # 80005970 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000523c:	00004517          	auipc	a0,0x4
    80005240:	e4c50513          	addi	a0,a0,-436 # 80009088 <CONSOLE_STATUS+0x78>
    80005244:	00000097          	auipc	ra,0x0
    80005248:	57c080e7          	jalr	1404(ra) # 800057c0 <_Z11printStringPKc>
    8000524c:	00000613          	li	a2,0
    80005250:	00a00593          	li	a1,10
    80005254:	00048513          	mv	a0,s1
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	718080e7          	jalr	1816(ra) # 80005970 <_Z8printIntiii>
    printString(".\n");
    80005260:	00004517          	auipc	a0,0x4
    80005264:	e4050513          	addi	a0,a0,-448 # 800090a0 <CONSOLE_STATUS+0x90>
    80005268:	00000097          	auipc	ra,0x0
    8000526c:	558080e7          	jalr	1368(ra) # 800057c0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005270:	0324c463          	blt	s1,s2,80005298 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005274:	03205c63          	blez	s2,800052ac <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005278:	03800513          	li	a0,56
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	82c080e7          	jalr	-2004(ra) # 80001aa8 <_Znwm>
    80005284:	00050a93          	mv	s5,a0
    80005288:	00048593          	mv	a1,s1
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	804080e7          	jalr	-2044(ra) # 80005a90 <_ZN9BufferCPPC1Ei>
    80005294:	0300006f          	j	800052c4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005298:	00004517          	auipc	a0,0x4
    8000529c:	e1050513          	addi	a0,a0,-496 # 800090a8 <CONSOLE_STATUS+0x98>
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	520080e7          	jalr	1312(ra) # 800057c0 <_Z11printStringPKc>
        return;
    800052a8:	0140006f          	j	800052bc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052ac:	00004517          	auipc	a0,0x4
    800052b0:	e3c50513          	addi	a0,a0,-452 # 800090e8 <CONSOLE_STATUS+0xd8>
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	50c080e7          	jalr	1292(ra) # 800057c0 <_Z11printStringPKc>
        return;
    800052bc:	000b8113          	mv	sp,s7
    800052c0:	2380006f          	j	800054f8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800052c4:	01000513          	li	a0,16
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	7e0080e7          	jalr	2016(ra) # 80001aa8 <_Znwm>
    800052d0:	00050493          	mv	s1,a0
    800052d4:	00000593          	li	a1,0
    800052d8:	ffffd097          	auipc	ra,0xffffd
    800052dc:	b90080e7          	jalr	-1136(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    800052e0:	00006797          	auipc	a5,0x6
    800052e4:	7c97b823          	sd	s1,2000(a5) # 8000bab0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800052e8:	00391793          	slli	a5,s2,0x3
    800052ec:	00f78793          	addi	a5,a5,15
    800052f0:	ff07f793          	andi	a5,a5,-16
    800052f4:	40f10133          	sub	sp,sp,a5
    800052f8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800052fc:	0019071b          	addiw	a4,s2,1
    80005300:	00171793          	slli	a5,a4,0x1
    80005304:	00e787b3          	add	a5,a5,a4
    80005308:	00379793          	slli	a5,a5,0x3
    8000530c:	00f78793          	addi	a5,a5,15
    80005310:	ff07f793          	andi	a5,a5,-16
    80005314:	40f10133          	sub	sp,sp,a5
    80005318:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000531c:	00191c13          	slli	s8,s2,0x1
    80005320:	012c07b3          	add	a5,s8,s2
    80005324:	00379793          	slli	a5,a5,0x3
    80005328:	00fa07b3          	add	a5,s4,a5
    8000532c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005330:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005334:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005338:	02800513          	li	a0,40
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	76c080e7          	jalr	1900(ra) # 80001aa8 <_Znwm>
    80005344:	00050b13          	mv	s6,a0
    80005348:	012c0c33          	add	s8,s8,s2
    8000534c:	003c1c13          	slli	s8,s8,0x3
    80005350:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	a88080e7          	jalr	-1400(ra) # 80001ddc <_ZN6ThreadC1Ev>
    8000535c:	00006797          	auipc	a5,0x6
    80005360:	5dc78793          	addi	a5,a5,1500 # 8000b938 <_ZTV12ConsumerSync+0x10>
    80005364:	00fb3023          	sd	a5,0(s6)
    80005368:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000536c:	000b0513          	mv	a0,s6
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	a10080e7          	jalr	-1520(ra) # 80001d80 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005378:	00000493          	li	s1,0
    8000537c:	0380006f          	j	800053b4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005380:	00006797          	auipc	a5,0x6
    80005384:	59078793          	addi	a5,a5,1424 # 8000b910 <_ZTV12ProducerSync+0x10>
    80005388:	00fcb023          	sd	a5,0(s9)
    8000538c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005390:	00349793          	slli	a5,s1,0x3
    80005394:	00f987b3          	add	a5,s3,a5
    80005398:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000539c:	00349793          	slli	a5,s1,0x3
    800053a0:	00f987b3          	add	a5,s3,a5
    800053a4:	0007b503          	ld	a0,0(a5)
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	9d8080e7          	jalr	-1576(ra) # 80001d80 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053b0:	0014849b          	addiw	s1,s1,1
    800053b4:	0b24d063          	bge	s1,s2,80005454 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800053b8:	00149793          	slli	a5,s1,0x1
    800053bc:	009787b3          	add	a5,a5,s1
    800053c0:	00379793          	slli	a5,a5,0x3
    800053c4:	00fa07b3          	add	a5,s4,a5
    800053c8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800053cc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800053d0:	00006717          	auipc	a4,0x6
    800053d4:	6e073703          	ld	a4,1760(a4) # 8000bab0 <_ZL10waitForAll>
    800053d8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800053dc:	02905863          	blez	s1,8000540c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800053e0:	02800513          	li	a0,40
    800053e4:	ffffc097          	auipc	ra,0xffffc
    800053e8:	6c4080e7          	jalr	1732(ra) # 80001aa8 <_Znwm>
    800053ec:	00050c93          	mv	s9,a0
    800053f0:	00149c13          	slli	s8,s1,0x1
    800053f4:	009c0c33          	add	s8,s8,s1
    800053f8:	003c1c13          	slli	s8,s8,0x3
    800053fc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005400:	ffffd097          	auipc	ra,0xffffd
    80005404:	9dc080e7          	jalr	-1572(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80005408:	f79ff06f          	j	80005380 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000540c:	02800513          	li	a0,40
    80005410:	ffffc097          	auipc	ra,0xffffc
    80005414:	698080e7          	jalr	1688(ra) # 80001aa8 <_Znwm>
    80005418:	00050c93          	mv	s9,a0
    8000541c:	00149c13          	slli	s8,s1,0x1
    80005420:	009c0c33          	add	s8,s8,s1
    80005424:	003c1c13          	slli	s8,s8,0x3
    80005428:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	9b0080e7          	jalr	-1616(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80005434:	00006797          	auipc	a5,0x6
    80005438:	4b478793          	addi	a5,a5,1204 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    8000543c:	00fcb023          	sd	a5,0(s9)
    80005440:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005444:	00349793          	slli	a5,s1,0x3
    80005448:	00f987b3          	add	a5,s3,a5
    8000544c:	0197b023          	sd	s9,0(a5)
    80005450:	f4dff06f          	j	8000539c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005454:	ffffd097          	auipc	ra,0xffffd
    80005458:	960080e7          	jalr	-1696(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000545c:	00000493          	li	s1,0
    80005460:	00994e63          	blt	s2,s1,8000547c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005464:	00006517          	auipc	a0,0x6
    80005468:	64c53503          	ld	a0,1612(a0) # 8000bab0 <_ZL10waitForAll>
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	a38080e7          	jalr	-1480(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005474:	0014849b          	addiw	s1,s1,1
    80005478:	fe9ff06f          	j	80005460 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000547c:	00000493          	li	s1,0
    80005480:	0080006f          	j	80005488 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005484:	0014849b          	addiw	s1,s1,1
    80005488:	0324d263          	bge	s1,s2,800054ac <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000548c:	00349793          	slli	a5,s1,0x3
    80005490:	00f987b3          	add	a5,s3,a5
    80005494:	0007b503          	ld	a0,0(a5)
    80005498:	fe0506e3          	beqz	a0,80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000549c:	00053783          	ld	a5,0(a0)
    800054a0:	0087b783          	ld	a5,8(a5)
    800054a4:	000780e7          	jalr	a5
    800054a8:	fddff06f          	j	80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800054ac:	000b0a63          	beqz	s6,800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800054b0:	000b3783          	ld	a5,0(s6)
    800054b4:	0087b783          	ld	a5,8(a5)
    800054b8:	000b0513          	mv	a0,s6
    800054bc:	000780e7          	jalr	a5
    delete waitForAll;
    800054c0:	00006517          	auipc	a0,0x6
    800054c4:	5f053503          	ld	a0,1520(a0) # 8000bab0 <_ZL10waitForAll>
    800054c8:	00050863          	beqz	a0,800054d8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800054cc:	00053783          	ld	a5,0(a0)
    800054d0:	0087b783          	ld	a5,8(a5)
    800054d4:	000780e7          	jalr	a5
    delete buffer;
    800054d8:	000a8e63          	beqz	s5,800054f4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800054dc:	000a8513          	mv	a0,s5
    800054e0:	00001097          	auipc	ra,0x1
    800054e4:	8a8080e7          	jalr	-1880(ra) # 80005d88 <_ZN9BufferCPPD1Ev>
    800054e8:	000a8513          	mv	a0,s5
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	60c080e7          	jalr	1548(ra) # 80001af8 <_ZdlPv>
    800054f4:	000b8113          	mv	sp,s7

}
    800054f8:	f8040113          	addi	sp,s0,-128
    800054fc:	07813083          	ld	ra,120(sp)
    80005500:	07013403          	ld	s0,112(sp)
    80005504:	06813483          	ld	s1,104(sp)
    80005508:	06013903          	ld	s2,96(sp)
    8000550c:	05813983          	ld	s3,88(sp)
    80005510:	05013a03          	ld	s4,80(sp)
    80005514:	04813a83          	ld	s5,72(sp)
    80005518:	04013b03          	ld	s6,64(sp)
    8000551c:	03813b83          	ld	s7,56(sp)
    80005520:	03013c03          	ld	s8,48(sp)
    80005524:	02813c83          	ld	s9,40(sp)
    80005528:	08010113          	addi	sp,sp,128
    8000552c:	00008067          	ret
    80005530:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005534:	000a8513          	mv	a0,s5
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	5c0080e7          	jalr	1472(ra) # 80001af8 <_ZdlPv>
    80005540:	00048513          	mv	a0,s1
    80005544:	00007097          	auipc	ra,0x7
    80005548:	654080e7          	jalr	1620(ra) # 8000cb98 <_Unwind_Resume>
    8000554c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005550:	00048513          	mv	a0,s1
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	5a4080e7          	jalr	1444(ra) # 80001af8 <_ZdlPv>
    8000555c:	00090513          	mv	a0,s2
    80005560:	00007097          	auipc	ra,0x7
    80005564:	638080e7          	jalr	1592(ra) # 8000cb98 <_Unwind_Resume>
    80005568:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000556c:	000b0513          	mv	a0,s6
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	588080e7          	jalr	1416(ra) # 80001af8 <_ZdlPv>
    80005578:	00048513          	mv	a0,s1
    8000557c:	00007097          	auipc	ra,0x7
    80005580:	61c080e7          	jalr	1564(ra) # 8000cb98 <_Unwind_Resume>
    80005584:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005588:	000c8513          	mv	a0,s9
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	56c080e7          	jalr	1388(ra) # 80001af8 <_ZdlPv>
    80005594:	00048513          	mv	a0,s1
    80005598:	00007097          	auipc	ra,0x7
    8000559c:	600080e7          	jalr	1536(ra) # 8000cb98 <_Unwind_Resume>
    800055a0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800055a4:	000c8513          	mv	a0,s9
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	550080e7          	jalr	1360(ra) # 80001af8 <_ZdlPv>
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00007097          	auipc	ra,0x7
    800055b8:	5e4080e7          	jalr	1508(ra) # 8000cb98 <_Unwind_Resume>

00000000800055bc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800055bc:	ff010113          	addi	sp,sp,-16
    800055c0:	00113423          	sd	ra,8(sp)
    800055c4:	00813023          	sd	s0,0(sp)
    800055c8:	01010413          	addi	s0,sp,16
    800055cc:	00006797          	auipc	a5,0x6
    800055d0:	36c78793          	addi	a5,a5,876 # 8000b938 <_ZTV12ConsumerSync+0x10>
    800055d4:	00f53023          	sd	a5,0(a0)
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	59c080e7          	jalr	1436(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800055e0:	00813083          	ld	ra,8(sp)
    800055e4:	00013403          	ld	s0,0(sp)
    800055e8:	01010113          	addi	sp,sp,16
    800055ec:	00008067          	ret

00000000800055f0 <_ZN12ConsumerSyncD0Ev>:
    800055f0:	fe010113          	addi	sp,sp,-32
    800055f4:	00113c23          	sd	ra,24(sp)
    800055f8:	00813823          	sd	s0,16(sp)
    800055fc:	00913423          	sd	s1,8(sp)
    80005600:	02010413          	addi	s0,sp,32
    80005604:	00050493          	mv	s1,a0
    80005608:	00006797          	auipc	a5,0x6
    8000560c:	33078793          	addi	a5,a5,816 # 8000b938 <_ZTV12ConsumerSync+0x10>
    80005610:	00f53023          	sd	a5,0(a0)
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	560080e7          	jalr	1376(ra) # 80001b74 <_ZN6ThreadD1Ev>
    8000561c:	00048513          	mv	a0,s1
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	4d8080e7          	jalr	1240(ra) # 80001af8 <_ZdlPv>
    80005628:	01813083          	ld	ra,24(sp)
    8000562c:	01013403          	ld	s0,16(sp)
    80005630:	00813483          	ld	s1,8(sp)
    80005634:	02010113          	addi	sp,sp,32
    80005638:	00008067          	ret

000000008000563c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000563c:	ff010113          	addi	sp,sp,-16
    80005640:	00113423          	sd	ra,8(sp)
    80005644:	00813023          	sd	s0,0(sp)
    80005648:	01010413          	addi	s0,sp,16
    8000564c:	00006797          	auipc	a5,0x6
    80005650:	2c478793          	addi	a5,a5,708 # 8000b910 <_ZTV12ProducerSync+0x10>
    80005654:	00f53023          	sd	a5,0(a0)
    80005658:	ffffc097          	auipc	ra,0xffffc
    8000565c:	51c080e7          	jalr	1308(ra) # 80001b74 <_ZN6ThreadD1Ev>
    80005660:	00813083          	ld	ra,8(sp)
    80005664:	00013403          	ld	s0,0(sp)
    80005668:	01010113          	addi	sp,sp,16
    8000566c:	00008067          	ret

0000000080005670 <_ZN12ProducerSyncD0Ev>:
    80005670:	fe010113          	addi	sp,sp,-32
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	02010413          	addi	s0,sp,32
    80005684:	00050493          	mv	s1,a0
    80005688:	00006797          	auipc	a5,0x6
    8000568c:	28878793          	addi	a5,a5,648 # 8000b910 <_ZTV12ProducerSync+0x10>
    80005690:	00f53023          	sd	a5,0(a0)
    80005694:	ffffc097          	auipc	ra,0xffffc
    80005698:	4e0080e7          	jalr	1248(ra) # 80001b74 <_ZN6ThreadD1Ev>
    8000569c:	00048513          	mv	a0,s1
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	458080e7          	jalr	1112(ra) # 80001af8 <_ZdlPv>
    800056a8:	01813083          	ld	ra,24(sp)
    800056ac:	01013403          	ld	s0,16(sp)
    800056b0:	00813483          	ld	s1,8(sp)
    800056b4:	02010113          	addi	sp,sp,32
    800056b8:	00008067          	ret

00000000800056bc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800056bc:	ff010113          	addi	sp,sp,-16
    800056c0:	00113423          	sd	ra,8(sp)
    800056c4:	00813023          	sd	s0,0(sp)
    800056c8:	01010413          	addi	s0,sp,16
    800056cc:	00006797          	auipc	a5,0x6
    800056d0:	21c78793          	addi	a5,a5,540 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    800056d4:	00f53023          	sd	a5,0(a0)
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	49c080e7          	jalr	1180(ra) # 80001b74 <_ZN6ThreadD1Ev>
    800056e0:	00813083          	ld	ra,8(sp)
    800056e4:	00013403          	ld	s0,0(sp)
    800056e8:	01010113          	addi	sp,sp,16
    800056ec:	00008067          	ret

00000000800056f0 <_ZN16ProducerKeyboardD0Ev>:
    800056f0:	fe010113          	addi	sp,sp,-32
    800056f4:	00113c23          	sd	ra,24(sp)
    800056f8:	00813823          	sd	s0,16(sp)
    800056fc:	00913423          	sd	s1,8(sp)
    80005700:	02010413          	addi	s0,sp,32
    80005704:	00050493          	mv	s1,a0
    80005708:	00006797          	auipc	a5,0x6
    8000570c:	1e078793          	addi	a5,a5,480 # 8000b8e8 <_ZTV16ProducerKeyboard+0x10>
    80005710:	00f53023          	sd	a5,0(a0)
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	460080e7          	jalr	1120(ra) # 80001b74 <_ZN6ThreadD1Ev>
    8000571c:	00048513          	mv	a0,s1
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	3d8080e7          	jalr	984(ra) # 80001af8 <_ZdlPv>
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret

000000008000573c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000573c:	ff010113          	addi	sp,sp,-16
    80005740:	00113423          	sd	ra,8(sp)
    80005744:	00813023          	sd	s0,0(sp)
    80005748:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000574c:	02053583          	ld	a1,32(a0)
    80005750:	fffff097          	auipc	ra,0xfffff
    80005754:	7e4080e7          	jalr	2020(ra) # 80004f34 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005758:	00813083          	ld	ra,8(sp)
    8000575c:	00013403          	ld	s0,0(sp)
    80005760:	01010113          	addi	sp,sp,16
    80005764:	00008067          	ret

0000000080005768 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005768:	ff010113          	addi	sp,sp,-16
    8000576c:	00113423          	sd	ra,8(sp)
    80005770:	00813023          	sd	s0,0(sp)
    80005774:	01010413          	addi	s0,sp,16
        producer(td);
    80005778:	02053583          	ld	a1,32(a0)
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	878080e7          	jalr	-1928(ra) # 80004ff4 <_ZN12ProducerSync8producerEPv>
    }
    80005784:	00813083          	ld	ra,8(sp)
    80005788:	00013403          	ld	s0,0(sp)
    8000578c:	01010113          	addi	sp,sp,16
    80005790:	00008067          	ret

0000000080005794 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005794:	ff010113          	addi	sp,sp,-16
    80005798:	00113423          	sd	ra,8(sp)
    8000579c:	00813023          	sd	s0,0(sp)
    800057a0:	01010413          	addi	s0,sp,16
        consumer(td);
    800057a4:	02053583          	ld	a1,32(a0)
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	8e0080e7          	jalr	-1824(ra) # 80005088 <_ZN12ConsumerSync8consumerEPv>
    }
    800057b0:	00813083          	ld	ra,8(sp)
    800057b4:	00013403          	ld	s0,0(sp)
    800057b8:	01010113          	addi	sp,sp,16
    800057bc:	00008067          	ret

00000000800057c0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800057c0:	fe010113          	addi	sp,sp,-32
    800057c4:	00113c23          	sd	ra,24(sp)
    800057c8:	00813823          	sd	s0,16(sp)
    800057cc:	00913423          	sd	s1,8(sp)
    800057d0:	02010413          	addi	s0,sp,32
    800057d4:	00050493          	mv	s1,a0
    LOCK();
    800057d8:	00100613          	li	a2,1
    800057dc:	00000593          	li	a1,0
    800057e0:	00006517          	auipc	a0,0x6
    800057e4:	2d850513          	addi	a0,a0,728 # 8000bab8 <lockPrint>
    800057e8:	ffffc097          	auipc	ra,0xffffc
    800057ec:	b74080e7          	jalr	-1164(ra) # 8000135c <copy_and_swap>
    800057f0:	00050863          	beqz	a0,80005800 <_Z11printStringPKc+0x40>
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	d68080e7          	jalr	-664(ra) # 8000155c <_Z15thread_dispatchv>
    800057fc:	fddff06f          	j	800057d8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005800:	0004c503          	lbu	a0,0(s1)
    80005804:	00050a63          	beqz	a0,80005818 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	f14080e7          	jalr	-236(ra) # 8000171c <_Z4putcc>
        string++;
    80005810:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005814:	fedff06f          	j	80005800 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005818:	00000613          	li	a2,0
    8000581c:	00100593          	li	a1,1
    80005820:	00006517          	auipc	a0,0x6
    80005824:	29850513          	addi	a0,a0,664 # 8000bab8 <lockPrint>
    80005828:	ffffc097          	auipc	ra,0xffffc
    8000582c:	b34080e7          	jalr	-1228(ra) # 8000135c <copy_and_swap>
    80005830:	fe0514e3          	bnez	a0,80005818 <_Z11printStringPKc+0x58>
}
    80005834:	01813083          	ld	ra,24(sp)
    80005838:	01013403          	ld	s0,16(sp)
    8000583c:	00813483          	ld	s1,8(sp)
    80005840:	02010113          	addi	sp,sp,32
    80005844:	00008067          	ret

0000000080005848 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005848:	fd010113          	addi	sp,sp,-48
    8000584c:	02113423          	sd	ra,40(sp)
    80005850:	02813023          	sd	s0,32(sp)
    80005854:	00913c23          	sd	s1,24(sp)
    80005858:	01213823          	sd	s2,16(sp)
    8000585c:	01313423          	sd	s3,8(sp)
    80005860:	01413023          	sd	s4,0(sp)
    80005864:	03010413          	addi	s0,sp,48
    80005868:	00050993          	mv	s3,a0
    8000586c:	00058a13          	mv	s4,a1
    LOCK();
    80005870:	00100613          	li	a2,1
    80005874:	00000593          	li	a1,0
    80005878:	00006517          	auipc	a0,0x6
    8000587c:	24050513          	addi	a0,a0,576 # 8000bab8 <lockPrint>
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	adc080e7          	jalr	-1316(ra) # 8000135c <copy_and_swap>
    80005888:	00050863          	beqz	a0,80005898 <_Z9getStringPci+0x50>
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	cd0080e7          	jalr	-816(ra) # 8000155c <_Z15thread_dispatchv>
    80005894:	fddff06f          	j	80005870 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005898:	00000913          	li	s2,0
    8000589c:	00090493          	mv	s1,s2
    800058a0:	0019091b          	addiw	s2,s2,1
    800058a4:	03495a63          	bge	s2,s4,800058d8 <_Z9getStringPci+0x90>
        cc = getc();
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	e38080e7          	jalr	-456(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    800058b0:	02050463          	beqz	a0,800058d8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800058b4:	009984b3          	add	s1,s3,s1
    800058b8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800058bc:	00a00793          	li	a5,10
    800058c0:	00f50a63          	beq	a0,a5,800058d4 <_Z9getStringPci+0x8c>
    800058c4:	00d00793          	li	a5,13
    800058c8:	fcf51ae3          	bne	a0,a5,8000589c <_Z9getStringPci+0x54>
        buf[i++] = c;
    800058cc:	00090493          	mv	s1,s2
    800058d0:	0080006f          	j	800058d8 <_Z9getStringPci+0x90>
    800058d4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800058d8:	009984b3          	add	s1,s3,s1
    800058dc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800058e0:	00000613          	li	a2,0
    800058e4:	00100593          	li	a1,1
    800058e8:	00006517          	auipc	a0,0x6
    800058ec:	1d050513          	addi	a0,a0,464 # 8000bab8 <lockPrint>
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	a6c080e7          	jalr	-1428(ra) # 8000135c <copy_and_swap>
    800058f8:	fe0514e3          	bnez	a0,800058e0 <_Z9getStringPci+0x98>
    return buf;
}
    800058fc:	00098513          	mv	a0,s3
    80005900:	02813083          	ld	ra,40(sp)
    80005904:	02013403          	ld	s0,32(sp)
    80005908:	01813483          	ld	s1,24(sp)
    8000590c:	01013903          	ld	s2,16(sp)
    80005910:	00813983          	ld	s3,8(sp)
    80005914:	00013a03          	ld	s4,0(sp)
    80005918:	03010113          	addi	sp,sp,48
    8000591c:	00008067          	ret

0000000080005920 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005920:	ff010113          	addi	sp,sp,-16
    80005924:	00813423          	sd	s0,8(sp)
    80005928:	01010413          	addi	s0,sp,16
    8000592c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005930:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005934:	0006c603          	lbu	a2,0(a3)
    80005938:	fd06071b          	addiw	a4,a2,-48
    8000593c:	0ff77713          	andi	a4,a4,255
    80005940:	00900793          	li	a5,9
    80005944:	02e7e063          	bltu	a5,a4,80005964 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005948:	0025179b          	slliw	a5,a0,0x2
    8000594c:	00a787bb          	addw	a5,a5,a0
    80005950:	0017979b          	slliw	a5,a5,0x1
    80005954:	00168693          	addi	a3,a3,1
    80005958:	00c787bb          	addw	a5,a5,a2
    8000595c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005960:	fd5ff06f          	j	80005934 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005964:	00813403          	ld	s0,8(sp)
    80005968:	01010113          	addi	sp,sp,16
    8000596c:	00008067          	ret

0000000080005970 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005970:	fc010113          	addi	sp,sp,-64
    80005974:	02113c23          	sd	ra,56(sp)
    80005978:	02813823          	sd	s0,48(sp)
    8000597c:	02913423          	sd	s1,40(sp)
    80005980:	03213023          	sd	s2,32(sp)
    80005984:	01313c23          	sd	s3,24(sp)
    80005988:	04010413          	addi	s0,sp,64
    8000598c:	00050493          	mv	s1,a0
    80005990:	00058913          	mv	s2,a1
    80005994:	00060993          	mv	s3,a2
    LOCK();
    80005998:	00100613          	li	a2,1
    8000599c:	00000593          	li	a1,0
    800059a0:	00006517          	auipc	a0,0x6
    800059a4:	11850513          	addi	a0,a0,280 # 8000bab8 <lockPrint>
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	9b4080e7          	jalr	-1612(ra) # 8000135c <copy_and_swap>
    800059b0:	00050863          	beqz	a0,800059c0 <_Z8printIntiii+0x50>
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	ba8080e7          	jalr	-1112(ra) # 8000155c <_Z15thread_dispatchv>
    800059bc:	fddff06f          	j	80005998 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800059c0:	00098463          	beqz	s3,800059c8 <_Z8printIntiii+0x58>
    800059c4:	0804c463          	bltz	s1,80005a4c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800059c8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800059cc:	00000593          	li	a1,0
    }

    i = 0;
    800059d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800059d4:	0009079b          	sext.w	a5,s2
    800059d8:	0325773b          	remuw	a4,a0,s2
    800059dc:	00048613          	mv	a2,s1
    800059e0:	0014849b          	addiw	s1,s1,1
    800059e4:	02071693          	slli	a3,a4,0x20
    800059e8:	0206d693          	srli	a3,a3,0x20
    800059ec:	00006717          	auipc	a4,0x6
    800059f0:	f6470713          	addi	a4,a4,-156 # 8000b950 <digits>
    800059f4:	00d70733          	add	a4,a4,a3
    800059f8:	00074683          	lbu	a3,0(a4)
    800059fc:	fd040713          	addi	a4,s0,-48
    80005a00:	00c70733          	add	a4,a4,a2
    80005a04:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a08:	0005071b          	sext.w	a4,a0
    80005a0c:	0325553b          	divuw	a0,a0,s2
    80005a10:	fcf772e3          	bgeu	a4,a5,800059d4 <_Z8printIntiii+0x64>
    if(neg)
    80005a14:	00058c63          	beqz	a1,80005a2c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005a18:	fd040793          	addi	a5,s0,-48
    80005a1c:	009784b3          	add	s1,a5,s1
    80005a20:	02d00793          	li	a5,45
    80005a24:	fef48823          	sb	a5,-16(s1)
    80005a28:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a2c:	fff4849b          	addiw	s1,s1,-1
    80005a30:	0204c463          	bltz	s1,80005a58 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a34:	fd040793          	addi	a5,s0,-48
    80005a38:	009787b3          	add	a5,a5,s1
    80005a3c:	ff07c503          	lbu	a0,-16(a5)
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	cdc080e7          	jalr	-804(ra) # 8000171c <_Z4putcc>
    80005a48:	fe5ff06f          	j	80005a2c <_Z8printIntiii+0xbc>
        x = -xx;
    80005a4c:	4090053b          	negw	a0,s1
        neg = 1;
    80005a50:	00100593          	li	a1,1
        x = -xx;
    80005a54:	f7dff06f          	j	800059d0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005a58:	00000613          	li	a2,0
    80005a5c:	00100593          	li	a1,1
    80005a60:	00006517          	auipc	a0,0x6
    80005a64:	05850513          	addi	a0,a0,88 # 8000bab8 <lockPrint>
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	8f4080e7          	jalr	-1804(ra) # 8000135c <copy_and_swap>
    80005a70:	fe0514e3          	bnez	a0,80005a58 <_Z8printIntiii+0xe8>
    80005a74:	03813083          	ld	ra,56(sp)
    80005a78:	03013403          	ld	s0,48(sp)
    80005a7c:	02813483          	ld	s1,40(sp)
    80005a80:	02013903          	ld	s2,32(sp)
    80005a84:	01813983          	ld	s3,24(sp)
    80005a88:	04010113          	addi	sp,sp,64
    80005a8c:	00008067          	ret

0000000080005a90 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a90:	fd010113          	addi	sp,sp,-48
    80005a94:	02113423          	sd	ra,40(sp)
    80005a98:	02813023          	sd	s0,32(sp)
    80005a9c:	00913c23          	sd	s1,24(sp)
    80005aa0:	01213823          	sd	s2,16(sp)
    80005aa4:	01313423          	sd	s3,8(sp)
    80005aa8:	03010413          	addi	s0,sp,48
    80005aac:	00050493          	mv	s1,a0
    80005ab0:	00058913          	mv	s2,a1
    80005ab4:	0015879b          	addiw	a5,a1,1
    80005ab8:	0007851b          	sext.w	a0,a5
    80005abc:	00f4a023          	sw	a5,0(s1)
    80005ac0:	0004a823          	sw	zero,16(s1)
    80005ac4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ac8:	00251513          	slli	a0,a0,0x2
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	8e8080e7          	jalr	-1816(ra) # 800013b4 <_Z9mem_allocm>
    80005ad4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ad8:	01000513          	li	a0,16
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	fcc080e7          	jalr	-52(ra) # 80001aa8 <_Znwm>
    80005ae4:	00050993          	mv	s3,a0
    80005ae8:	00000593          	li	a1,0
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	37c080e7          	jalr	892(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    80005af4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005af8:	01000513          	li	a0,16
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	fac080e7          	jalr	-84(ra) # 80001aa8 <_Znwm>
    80005b04:	00050993          	mv	s3,a0
    80005b08:	00090593          	mv	a1,s2
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	35c080e7          	jalr	860(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    80005b14:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b18:	01000513          	li	a0,16
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	f8c080e7          	jalr	-116(ra) # 80001aa8 <_Znwm>
    80005b24:	00050913          	mv	s2,a0
    80005b28:	00100593          	li	a1,1
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	33c080e7          	jalr	828(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    80005b34:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b38:	01000513          	li	a0,16
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	f6c080e7          	jalr	-148(ra) # 80001aa8 <_Znwm>
    80005b44:	00050913          	mv	s2,a0
    80005b48:	00100593          	li	a1,1
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	31c080e7          	jalr	796(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    80005b54:	0324b823          	sd	s2,48(s1)
}
    80005b58:	02813083          	ld	ra,40(sp)
    80005b5c:	02013403          	ld	s0,32(sp)
    80005b60:	01813483          	ld	s1,24(sp)
    80005b64:	01013903          	ld	s2,16(sp)
    80005b68:	00813983          	ld	s3,8(sp)
    80005b6c:	03010113          	addi	sp,sp,48
    80005b70:	00008067          	ret
    80005b74:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b78:	00098513          	mv	a0,s3
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	f7c080e7          	jalr	-132(ra) # 80001af8 <_ZdlPv>
    80005b84:	00048513          	mv	a0,s1
    80005b88:	00007097          	auipc	ra,0x7
    80005b8c:	010080e7          	jalr	16(ra) # 8000cb98 <_Unwind_Resume>
    80005b90:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b94:	00098513          	mv	a0,s3
    80005b98:	ffffc097          	auipc	ra,0xffffc
    80005b9c:	f60080e7          	jalr	-160(ra) # 80001af8 <_ZdlPv>
    80005ba0:	00048513          	mv	a0,s1
    80005ba4:	00007097          	auipc	ra,0x7
    80005ba8:	ff4080e7          	jalr	-12(ra) # 8000cb98 <_Unwind_Resume>
    80005bac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005bb0:	00090513          	mv	a0,s2
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	f44080e7          	jalr	-188(ra) # 80001af8 <_ZdlPv>
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00007097          	auipc	ra,0x7
    80005bc4:	fd8080e7          	jalr	-40(ra) # 8000cb98 <_Unwind_Resume>
    80005bc8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005bcc:	00090513          	mv	a0,s2
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	f28080e7          	jalr	-216(ra) # 80001af8 <_ZdlPv>
    80005bd8:	00048513          	mv	a0,s1
    80005bdc:	00007097          	auipc	ra,0x7
    80005be0:	fbc080e7          	jalr	-68(ra) # 8000cb98 <_Unwind_Resume>

0000000080005be4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005be4:	fe010113          	addi	sp,sp,-32
    80005be8:	00113c23          	sd	ra,24(sp)
    80005bec:	00813823          	sd	s0,16(sp)
    80005bf0:	00913423          	sd	s1,8(sp)
    80005bf4:	01213023          	sd	s2,0(sp)
    80005bf8:	02010413          	addi	s0,sp,32
    80005bfc:	00050493          	mv	s1,a0
    80005c00:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005c04:	01853503          	ld	a0,24(a0)
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	29c080e7          	jalr	668(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c10:	0304b503          	ld	a0,48(s1)
    80005c14:	ffffc097          	auipc	ra,0xffffc
    80005c18:	290080e7          	jalr	656(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c1c:	0084b783          	ld	a5,8(s1)
    80005c20:	0144a703          	lw	a4,20(s1)
    80005c24:	00271713          	slli	a4,a4,0x2
    80005c28:	00e787b3          	add	a5,a5,a4
    80005c2c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c30:	0144a783          	lw	a5,20(s1)
    80005c34:	0017879b          	addiw	a5,a5,1
    80005c38:	0004a703          	lw	a4,0(s1)
    80005c3c:	02e7e7bb          	remw	a5,a5,a4
    80005c40:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c44:	0304b503          	ld	a0,48(s1)
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	288080e7          	jalr	648(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c50:	0204b503          	ld	a0,32(s1)
    80005c54:	ffffc097          	auipc	ra,0xffffc
    80005c58:	27c080e7          	jalr	636(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

}
    80005c5c:	01813083          	ld	ra,24(sp)
    80005c60:	01013403          	ld	s0,16(sp)
    80005c64:	00813483          	ld	s1,8(sp)
    80005c68:	00013903          	ld	s2,0(sp)
    80005c6c:	02010113          	addi	sp,sp,32
    80005c70:	00008067          	ret

0000000080005c74 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c74:	fe010113          	addi	sp,sp,-32
    80005c78:	00113c23          	sd	ra,24(sp)
    80005c7c:	00813823          	sd	s0,16(sp)
    80005c80:	00913423          	sd	s1,8(sp)
    80005c84:	01213023          	sd	s2,0(sp)
    80005c88:	02010413          	addi	s0,sp,32
    80005c8c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c90:	02053503          	ld	a0,32(a0)
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	210080e7          	jalr	528(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c9c:	0284b503          	ld	a0,40(s1)
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	204080e7          	jalr	516(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005ca8:	0084b703          	ld	a4,8(s1)
    80005cac:	0104a783          	lw	a5,16(s1)
    80005cb0:	00279693          	slli	a3,a5,0x2
    80005cb4:	00d70733          	add	a4,a4,a3
    80005cb8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cbc:	0017879b          	addiw	a5,a5,1
    80005cc0:	0004a703          	lw	a4,0(s1)
    80005cc4:	02e7e7bb          	remw	a5,a5,a4
    80005cc8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ccc:	0284b503          	ld	a0,40(s1)
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	200080e7          	jalr	512(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005cd8:	0184b503          	ld	a0,24(s1)
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	1f4080e7          	jalr	500(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ce4:	00090513          	mv	a0,s2
    80005ce8:	01813083          	ld	ra,24(sp)
    80005cec:	01013403          	ld	s0,16(sp)
    80005cf0:	00813483          	ld	s1,8(sp)
    80005cf4:	00013903          	ld	s2,0(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret

0000000080005d00 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005d00:	fe010113          	addi	sp,sp,-32
    80005d04:	00113c23          	sd	ra,24(sp)
    80005d08:	00813823          	sd	s0,16(sp)
    80005d0c:	00913423          	sd	s1,8(sp)
    80005d10:	01213023          	sd	s2,0(sp)
    80005d14:	02010413          	addi	s0,sp,32
    80005d18:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d1c:	02853503          	ld	a0,40(a0)
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	184080e7          	jalr	388(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d28:	0304b503          	ld	a0,48(s1)
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	178080e7          	jalr	376(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d34:	0144a783          	lw	a5,20(s1)
    80005d38:	0104a903          	lw	s2,16(s1)
    80005d3c:	0327ce63          	blt	a5,s2,80005d78 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d40:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d44:	0304b503          	ld	a0,48(s1)
    80005d48:	ffffc097          	auipc	ra,0xffffc
    80005d4c:	188080e7          	jalr	392(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d50:	0284b503          	ld	a0,40(s1)
    80005d54:	ffffc097          	auipc	ra,0xffffc
    80005d58:	17c080e7          	jalr	380(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d5c:	00090513          	mv	a0,s2
    80005d60:	01813083          	ld	ra,24(sp)
    80005d64:	01013403          	ld	s0,16(sp)
    80005d68:	00813483          	ld	s1,8(sp)
    80005d6c:	00013903          	ld	s2,0(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00008067          	ret
        ret = cap - head + tail;
    80005d78:	0004a703          	lw	a4,0(s1)
    80005d7c:	4127093b          	subw	s2,a4,s2
    80005d80:	00f9093b          	addw	s2,s2,a5
    80005d84:	fc1ff06f          	j	80005d44 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d88 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d88:	fe010113          	addi	sp,sp,-32
    80005d8c:	00113c23          	sd	ra,24(sp)
    80005d90:	00813823          	sd	s0,16(sp)
    80005d94:	00913423          	sd	s1,8(sp)
    80005d98:	02010413          	addi	s0,sp,32
    80005d9c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005da0:	00a00513          	li	a0,10
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	1ec080e7          	jalr	492(ra) # 80001f90 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	47450513          	addi	a0,a0,1140 # 80009220 <CONSOLE_STATUS+0x210>
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	a0c080e7          	jalr	-1524(ra) # 800057c0 <_Z11printStringPKc>
    while (getCnt()) {
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	f40080e7          	jalr	-192(ra) # 80005d00 <_ZN9BufferCPP6getCntEv>
    80005dc8:	02050c63          	beqz	a0,80005e00 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005dcc:	0084b783          	ld	a5,8(s1)
    80005dd0:	0104a703          	lw	a4,16(s1)
    80005dd4:	00271713          	slli	a4,a4,0x2
    80005dd8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005ddc:	0007c503          	lbu	a0,0(a5)
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	1b0080e7          	jalr	432(ra) # 80001f90 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005de8:	0104a783          	lw	a5,16(s1)
    80005dec:	0017879b          	addiw	a5,a5,1
    80005df0:	0004a703          	lw	a4,0(s1)
    80005df4:	02e7e7bb          	remw	a5,a5,a4
    80005df8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005dfc:	fc1ff06f          	j	80005dbc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005e00:	02100513          	li	a0,33
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	18c080e7          	jalr	396(ra) # 80001f90 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e0c:	00a00513          	li	a0,10
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	180080e7          	jalr	384(ra) # 80001f90 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e18:	0084b503          	ld	a0,8(s1)
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	5d8080e7          	jalr	1496(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005e24:	0204b503          	ld	a0,32(s1)
    80005e28:	00050863          	beqz	a0,80005e38 <_ZN9BufferCPPD1Ev+0xb0>
    80005e2c:	00053783          	ld	a5,0(a0)
    80005e30:	0087b783          	ld	a5,8(a5)
    80005e34:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e38:	0184b503          	ld	a0,24(s1)
    80005e3c:	00050863          	beqz	a0,80005e4c <_ZN9BufferCPPD1Ev+0xc4>
    80005e40:	00053783          	ld	a5,0(a0)
    80005e44:	0087b783          	ld	a5,8(a5)
    80005e48:	000780e7          	jalr	a5
    delete mutexTail;
    80005e4c:	0304b503          	ld	a0,48(s1)
    80005e50:	00050863          	beqz	a0,80005e60 <_ZN9BufferCPPD1Ev+0xd8>
    80005e54:	00053783          	ld	a5,0(a0)
    80005e58:	0087b783          	ld	a5,8(a5)
    80005e5c:	000780e7          	jalr	a5
    delete mutexHead;
    80005e60:	0284b503          	ld	a0,40(s1)
    80005e64:	00050863          	beqz	a0,80005e74 <_ZN9BufferCPPD1Ev+0xec>
    80005e68:	00053783          	ld	a5,0(a0)
    80005e6c:	0087b783          	ld	a5,8(a5)
    80005e70:	000780e7          	jalr	a5
}
    80005e74:	01813083          	ld	ra,24(sp)
    80005e78:	01013403          	ld	s0,16(sp)
    80005e7c:	00813483          	ld	s1,8(sp)
    80005e80:	02010113          	addi	sp,sp,32
    80005e84:	00008067          	ret

0000000080005e88 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e88:	fe010113          	addi	sp,sp,-32
    80005e8c:	00113c23          	sd	ra,24(sp)
    80005e90:	00813823          	sd	s0,16(sp)
    80005e94:	00913423          	sd	s1,8(sp)
    80005e98:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e9c:	00003517          	auipc	a0,0x3
    80005ea0:	39c50513          	addi	a0,a0,924 # 80009238 <CONSOLE_STATUS+0x228>
    80005ea4:	00000097          	auipc	ra,0x0
    80005ea8:	91c080e7          	jalr	-1764(ra) # 800057c0 <_Z11printStringPKc>
    int test = getc() - '0';
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	834080e7          	jalr	-1996(ra) # 800016e0 <_Z4getcv>
    80005eb4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	828080e7          	jalr	-2008(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005ec0:	00700793          	li	a5,7
    80005ec4:	1097e263          	bltu	a5,s1,80005fc8 <_Z8userMainv+0x140>
    80005ec8:	00249493          	slli	s1,s1,0x2
    80005ecc:	00003717          	auipc	a4,0x3
    80005ed0:	5c470713          	addi	a4,a4,1476 # 80009490 <CONSOLE_STATUS+0x480>
    80005ed4:	00e484b3          	add	s1,s1,a4
    80005ed8:	0004a783          	lw	a5,0(s1)
    80005edc:	00e787b3          	add	a5,a5,a4
    80005ee0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	f54080e7          	jalr	-172(ra) # 80004e38 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005eec:	00003517          	auipc	a0,0x3
    80005ef0:	36c50513          	addi	a0,a0,876 # 80009258 <CONSOLE_STATUS+0x248>
    80005ef4:	00000097          	auipc	ra,0x0
    80005ef8:	8cc080e7          	jalr	-1844(ra) # 800057c0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005efc:	01813083          	ld	ra,24(sp)
    80005f00:	01013403          	ld	s0,16(sp)
    80005f04:	00813483          	ld	s1,8(sp)
    80005f08:	02010113          	addi	sp,sp,32
    80005f0c:	00008067          	ret
            Threads_CPP_API_test();
    80005f10:	ffffe097          	auipc	ra,0xffffe
    80005f14:	e08080e7          	jalr	-504(ra) # 80003d18 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	38050513          	addi	a0,a0,896 # 80009298 <CONSOLE_STATUS+0x288>
    80005f20:	00000097          	auipc	ra,0x0
    80005f24:	8a0080e7          	jalr	-1888(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005f28:	fd5ff06f          	j	80005efc <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005f2c:	ffffd097          	auipc	ra,0xffffd
    80005f30:	640080e7          	jalr	1600(ra) # 8000356c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f34:	00003517          	auipc	a0,0x3
    80005f38:	3a450513          	addi	a0,a0,932 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	884080e7          	jalr	-1916(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005f44:	fb9ff06f          	j	80005efc <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	234080e7          	jalr	564(ra) # 8000517c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	3d850513          	addi	a0,a0,984 # 80009328 <CONSOLE_STATUS+0x318>
    80005f58:	00000097          	auipc	ra,0x0
    80005f5c:	868080e7          	jalr	-1944(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005f60:	f9dff06f          	j	80005efc <_Z8userMainv+0x74>
            testSleeping();
    80005f64:	00000097          	auipc	ra,0x0
    80005f68:	11c080e7          	jalr	284(ra) # 80006080 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	41450513          	addi	a0,a0,1044 # 80009380 <CONSOLE_STATUS+0x370>
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	84c080e7          	jalr	-1972(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005f7c:	f81ff06f          	j	80005efc <_Z8userMainv+0x74>
            testConsumerProducer();
    80005f80:	ffffe097          	auipc	ra,0xffffe
    80005f84:	258080e7          	jalr	600(ra) # 800041d8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f88:	00003517          	auipc	a0,0x3
    80005f8c:	42850513          	addi	a0,a0,1064 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005f90:	00000097          	auipc	ra,0x0
    80005f94:	830080e7          	jalr	-2000(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005f98:	f65ff06f          	j	80005efc <_Z8userMainv+0x74>
            System_Mode_test();
    80005f9c:	00000097          	auipc	ra,0x0
    80005fa0:	658080e7          	jalr	1624(ra) # 800065f4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	44c50513          	addi	a0,a0,1100 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	814080e7          	jalr	-2028(ra) # 800057c0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005fb4:	00003517          	auipc	a0,0x3
    80005fb8:	45c50513          	addi	a0,a0,1116 # 80009410 <CONSOLE_STATUS+0x400>
    80005fbc:	00000097          	auipc	ra,0x0
    80005fc0:	804080e7          	jalr	-2044(ra) # 800057c0 <_Z11printStringPKc>
            break;
    80005fc4:	f39ff06f          	j	80005efc <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005fc8:	00003517          	auipc	a0,0x3
    80005fcc:	4a050513          	addi	a0,a0,1184 # 80009468 <CONSOLE_STATUS+0x458>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	7f0080e7          	jalr	2032(ra) # 800057c0 <_Z11printStringPKc>
    80005fd8:	f25ff06f          	j	80005efc <_Z8userMainv+0x74>

0000000080005fdc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005fdc:	fe010113          	addi	sp,sp,-32
    80005fe0:	00113c23          	sd	ra,24(sp)
    80005fe4:	00813823          	sd	s0,16(sp)
    80005fe8:	00913423          	sd	s1,8(sp)
    80005fec:	01213023          	sd	s2,0(sp)
    80005ff0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005ff4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ff8:	00600493          	li	s1,6
    while (--i > 0) {
    80005ffc:	fff4849b          	addiw	s1,s1,-1
    80006000:	04905463          	blez	s1,80006048 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006004:	00003517          	auipc	a0,0x3
    80006008:	4ac50513          	addi	a0,a0,1196 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	7b4080e7          	jalr	1972(ra) # 800057c0 <_Z11printStringPKc>
        printInt(sleep_time);
    80006014:	00000613          	li	a2,0
    80006018:	00a00593          	li	a1,10
    8000601c:	0009051b          	sext.w	a0,s2
    80006020:	00000097          	auipc	ra,0x0
    80006024:	950080e7          	jalr	-1712(ra) # 80005970 <_Z8printIntiii>
        printString(" !\n");
    80006028:	00003517          	auipc	a0,0x3
    8000602c:	49050513          	addi	a0,a0,1168 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006030:	fffff097          	auipc	ra,0xfffff
    80006034:	790080e7          	jalr	1936(ra) # 800057c0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006038:	00090513          	mv	a0,s2
    8000603c:	ffffb097          	auipc	ra,0xffffb
    80006040:	4a4080e7          	jalr	1188(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80006044:	fb9ff06f          	j	80005ffc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006048:	00a00793          	li	a5,10
    8000604c:	02f95933          	divu	s2,s2,a5
    80006050:	fff90913          	addi	s2,s2,-1
    80006054:	00006797          	auipc	a5,0x6
    80006058:	a6c78793          	addi	a5,a5,-1428 # 8000bac0 <_ZL8finished>
    8000605c:	01278933          	add	s2,a5,s2
    80006060:	00100793          	li	a5,1
    80006064:	00f90023          	sb	a5,0(s2)
}
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	00013903          	ld	s2,0(sp)
    80006078:	02010113          	addi	sp,sp,32
    8000607c:	00008067          	ret

0000000080006080 <_Z12testSleepingv>:

void testSleeping() {
    80006080:	fc010113          	addi	sp,sp,-64
    80006084:	02113c23          	sd	ra,56(sp)
    80006088:	02813823          	sd	s0,48(sp)
    8000608c:	02913423          	sd	s1,40(sp)
    80006090:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006094:	00a00793          	li	a5,10
    80006098:	fcf43823          	sd	a5,-48(s0)
    8000609c:	01400793          	li	a5,20
    800060a0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800060a4:	00000493          	li	s1,0
    800060a8:	02c0006f          	j	800060d4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800060ac:	00349793          	slli	a5,s1,0x3
    800060b0:	fd040613          	addi	a2,s0,-48
    800060b4:	00f60633          	add	a2,a2,a5
    800060b8:	00000597          	auipc	a1,0x0
    800060bc:	f2458593          	addi	a1,a1,-220 # 80005fdc <_ZL9sleepyRunPv>
    800060c0:	fc040513          	addi	a0,s0,-64
    800060c4:	00f50533          	add	a0,a0,a5
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	36c080e7          	jalr	876(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800060d0:	0014849b          	addiw	s1,s1,1
    800060d4:	00100793          	li	a5,1
    800060d8:	fc97dae3          	bge	a5,s1,800060ac <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800060dc:	00006797          	auipc	a5,0x6
    800060e0:	9e47c783          	lbu	a5,-1564(a5) # 8000bac0 <_ZL8finished>
    800060e4:	fe078ce3          	beqz	a5,800060dc <_Z12testSleepingv+0x5c>
    800060e8:	00006797          	auipc	a5,0x6
    800060ec:	9d97c783          	lbu	a5,-1575(a5) # 8000bac1 <_ZL8finished+0x1>
    800060f0:	fe0786e3          	beqz	a5,800060dc <_Z12testSleepingv+0x5c>
}
    800060f4:	03813083          	ld	ra,56(sp)
    800060f8:	03013403          	ld	s0,48(sp)
    800060fc:	02813483          	ld	s1,40(sp)
    80006100:	04010113          	addi	sp,sp,64
    80006104:	00008067          	ret

0000000080006108 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006108:	fe010113          	addi	sp,sp,-32
    8000610c:	00113c23          	sd	ra,24(sp)
    80006110:	00813823          	sd	s0,16(sp)
    80006114:	00913423          	sd	s1,8(sp)
    80006118:	01213023          	sd	s2,0(sp)
    8000611c:	02010413          	addi	s0,sp,32
    80006120:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006124:	00100793          	li	a5,1
    80006128:	02a7f863          	bgeu	a5,a0,80006158 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000612c:	00a00793          	li	a5,10
    80006130:	02f577b3          	remu	a5,a0,a5
    80006134:	02078e63          	beqz	a5,80006170 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006138:	fff48513          	addi	a0,s1,-1
    8000613c:	00000097          	auipc	ra,0x0
    80006140:	fcc080e7          	jalr	-52(ra) # 80006108 <_ZL9fibonaccim>
    80006144:	00050913          	mv	s2,a0
    80006148:	ffe48513          	addi	a0,s1,-2
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	fbc080e7          	jalr	-68(ra) # 80006108 <_ZL9fibonaccim>
    80006154:	00a90533          	add	a0,s2,a0
}
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	00013903          	ld	s2,0(sp)
    80006168:	02010113          	addi	sp,sp,32
    8000616c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	3ec080e7          	jalr	1004(ra) # 8000155c <_Z15thread_dispatchv>
    80006178:	fc1ff06f          	j	80006138 <_ZL9fibonaccim+0x30>

000000008000617c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000617c:	fe010113          	addi	sp,sp,-32
    80006180:	00113c23          	sd	ra,24(sp)
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	01213023          	sd	s2,0(sp)
    80006190:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006194:	00a00493          	li	s1,10
    80006198:	0400006f          	j	800061d8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000619c:	00003517          	auipc	a0,0x3
    800061a0:	fec50513          	addi	a0,a0,-20 # 80009188 <CONSOLE_STATUS+0x178>
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	61c080e7          	jalr	1564(ra) # 800057c0 <_Z11printStringPKc>
    800061ac:	00000613          	li	a2,0
    800061b0:	00a00593          	li	a1,10
    800061b4:	00048513          	mv	a0,s1
    800061b8:	fffff097          	auipc	ra,0xfffff
    800061bc:	7b8080e7          	jalr	1976(ra) # 80005970 <_Z8printIntiii>
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	1b850513          	addi	a0,a0,440 # 80009378 <CONSOLE_STATUS+0x368>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	5f8080e7          	jalr	1528(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800061d0:	0014849b          	addiw	s1,s1,1
    800061d4:	0ff4f493          	andi	s1,s1,255
    800061d8:	00c00793          	li	a5,12
    800061dc:	fc97f0e3          	bgeu	a5,s1,8000619c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800061e0:	00003517          	auipc	a0,0x3
    800061e4:	fb050513          	addi	a0,a0,-80 # 80009190 <CONSOLE_STATUS+0x180>
    800061e8:	fffff097          	auipc	ra,0xfffff
    800061ec:	5d8080e7          	jalr	1496(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800061f0:	00500313          	li	t1,5
    thread_dispatch();
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	368080e7          	jalr	872(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800061fc:	01000513          	li	a0,16
    80006200:	00000097          	auipc	ra,0x0
    80006204:	f08080e7          	jalr	-248(ra) # 80006108 <_ZL9fibonaccim>
    80006208:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000620c:	00003517          	auipc	a0,0x3
    80006210:	f9450513          	addi	a0,a0,-108 # 800091a0 <CONSOLE_STATUS+0x190>
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	5ac080e7          	jalr	1452(ra) # 800057c0 <_Z11printStringPKc>
    8000621c:	00000613          	li	a2,0
    80006220:	00a00593          	li	a1,10
    80006224:	0009051b          	sext.w	a0,s2
    80006228:	fffff097          	auipc	ra,0xfffff
    8000622c:	748080e7          	jalr	1864(ra) # 80005970 <_Z8printIntiii>
    80006230:	00003517          	auipc	a0,0x3
    80006234:	14850513          	addi	a0,a0,328 # 80009378 <CONSOLE_STATUS+0x368>
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	588080e7          	jalr	1416(ra) # 800057c0 <_Z11printStringPKc>
    80006240:	0400006f          	j	80006280 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006244:	00003517          	auipc	a0,0x3
    80006248:	f4450513          	addi	a0,a0,-188 # 80009188 <CONSOLE_STATUS+0x178>
    8000624c:	fffff097          	auipc	ra,0xfffff
    80006250:	574080e7          	jalr	1396(ra) # 800057c0 <_Z11printStringPKc>
    80006254:	00000613          	li	a2,0
    80006258:	00a00593          	li	a1,10
    8000625c:	00048513          	mv	a0,s1
    80006260:	fffff097          	auipc	ra,0xfffff
    80006264:	710080e7          	jalr	1808(ra) # 80005970 <_Z8printIntiii>
    80006268:	00003517          	auipc	a0,0x3
    8000626c:	11050513          	addi	a0,a0,272 # 80009378 <CONSOLE_STATUS+0x368>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	550080e7          	jalr	1360(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006278:	0014849b          	addiw	s1,s1,1
    8000627c:	0ff4f493          	andi	s1,s1,255
    80006280:	00f00793          	li	a5,15
    80006284:	fc97f0e3          	bgeu	a5,s1,80006244 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	f2850513          	addi	a0,a0,-216 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	530080e7          	jalr	1328(ra) # 800057c0 <_Z11printStringPKc>
    finishedD = true;
    80006298:	00100793          	li	a5,1
    8000629c:	00006717          	auipc	a4,0x6
    800062a0:	82f70323          	sb	a5,-2010(a4) # 8000bac2 <_ZL9finishedD>
    thread_dispatch();
    800062a4:	ffffb097          	auipc	ra,0xffffb
    800062a8:	2b8080e7          	jalr	696(ra) # 8000155c <_Z15thread_dispatchv>
}
    800062ac:	01813083          	ld	ra,24(sp)
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	00813483          	ld	s1,8(sp)
    800062b8:	00013903          	ld	s2,0(sp)
    800062bc:	02010113          	addi	sp,sp,32
    800062c0:	00008067          	ret

00000000800062c4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00813823          	sd	s0,16(sp)
    800062d0:	00913423          	sd	s1,8(sp)
    800062d4:	01213023          	sd	s2,0(sp)
    800062d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800062dc:	00000493          	li	s1,0
    800062e0:	0400006f          	j	80006320 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800062e4:	00003517          	auipc	a0,0x3
    800062e8:	e6450513          	addi	a0,a0,-412 # 80009148 <CONSOLE_STATUS+0x138>
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	4d4080e7          	jalr	1236(ra) # 800057c0 <_Z11printStringPKc>
    800062f4:	00000613          	li	a2,0
    800062f8:	00a00593          	li	a1,10
    800062fc:	00048513          	mv	a0,s1
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	670080e7          	jalr	1648(ra) # 80005970 <_Z8printIntiii>
    80006308:	00003517          	auipc	a0,0x3
    8000630c:	07050513          	addi	a0,a0,112 # 80009378 <CONSOLE_STATUS+0x368>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	4b0080e7          	jalr	1200(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006318:	0014849b          	addiw	s1,s1,1
    8000631c:	0ff4f493          	andi	s1,s1,255
    80006320:	00200793          	li	a5,2
    80006324:	fc97f0e3          	bgeu	a5,s1,800062e4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	e2850513          	addi	a0,a0,-472 # 80009150 <CONSOLE_STATUS+0x140>
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	490080e7          	jalr	1168(ra) # 800057c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006338:	00700313          	li	t1,7
    thread_dispatch();
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	220080e7          	jalr	544(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006344:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006348:	00003517          	auipc	a0,0x3
    8000634c:	e1850513          	addi	a0,a0,-488 # 80009160 <CONSOLE_STATUS+0x150>
    80006350:	fffff097          	auipc	ra,0xfffff
    80006354:	470080e7          	jalr	1136(ra) # 800057c0 <_Z11printStringPKc>
    80006358:	00000613          	li	a2,0
    8000635c:	00a00593          	li	a1,10
    80006360:	0009051b          	sext.w	a0,s2
    80006364:	fffff097          	auipc	ra,0xfffff
    80006368:	60c080e7          	jalr	1548(ra) # 80005970 <_Z8printIntiii>
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	00c50513          	addi	a0,a0,12 # 80009378 <CONSOLE_STATUS+0x368>
    80006374:	fffff097          	auipc	ra,0xfffff
    80006378:	44c080e7          	jalr	1100(ra) # 800057c0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000637c:	00c00513          	li	a0,12
    80006380:	00000097          	auipc	ra,0x0
    80006384:	d88080e7          	jalr	-632(ra) # 80006108 <_ZL9fibonaccim>
    80006388:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	ddc50513          	addi	a0,a0,-548 # 80009168 <CONSOLE_STATUS+0x158>
    80006394:	fffff097          	auipc	ra,0xfffff
    80006398:	42c080e7          	jalr	1068(ra) # 800057c0 <_Z11printStringPKc>
    8000639c:	00000613          	li	a2,0
    800063a0:	00a00593          	li	a1,10
    800063a4:	0009051b          	sext.w	a0,s2
    800063a8:	fffff097          	auipc	ra,0xfffff
    800063ac:	5c8080e7          	jalr	1480(ra) # 80005970 <_Z8printIntiii>
    800063b0:	00003517          	auipc	a0,0x3
    800063b4:	fc850513          	addi	a0,a0,-56 # 80009378 <CONSOLE_STATUS+0x368>
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	408080e7          	jalr	1032(ra) # 800057c0 <_Z11printStringPKc>
    800063c0:	0400006f          	j	80006400 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800063c4:	00003517          	auipc	a0,0x3
    800063c8:	d8450513          	addi	a0,a0,-636 # 80009148 <CONSOLE_STATUS+0x138>
    800063cc:	fffff097          	auipc	ra,0xfffff
    800063d0:	3f4080e7          	jalr	1012(ra) # 800057c0 <_Z11printStringPKc>
    800063d4:	00000613          	li	a2,0
    800063d8:	00a00593          	li	a1,10
    800063dc:	00048513          	mv	a0,s1
    800063e0:	fffff097          	auipc	ra,0xfffff
    800063e4:	590080e7          	jalr	1424(ra) # 80005970 <_Z8printIntiii>
    800063e8:	00003517          	auipc	a0,0x3
    800063ec:	f9050513          	addi	a0,a0,-112 # 80009378 <CONSOLE_STATUS+0x368>
    800063f0:	fffff097          	auipc	ra,0xfffff
    800063f4:	3d0080e7          	jalr	976(ra) # 800057c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800063f8:	0014849b          	addiw	s1,s1,1
    800063fc:	0ff4f493          	andi	s1,s1,255
    80006400:	00500793          	li	a5,5
    80006404:	fc97f0e3          	bgeu	a5,s1,800063c4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006408:	00003517          	auipc	a0,0x3
    8000640c:	d1850513          	addi	a0,a0,-744 # 80009120 <CONSOLE_STATUS+0x110>
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	3b0080e7          	jalr	944(ra) # 800057c0 <_Z11printStringPKc>
    finishedC = true;
    80006418:	00100793          	li	a5,1
    8000641c:	00005717          	auipc	a4,0x5
    80006420:	6af703a3          	sb	a5,1703(a4) # 8000bac3 <_ZL9finishedC>
    thread_dispatch();
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	138080e7          	jalr	312(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000642c:	01813083          	ld	ra,24(sp)
    80006430:	01013403          	ld	s0,16(sp)
    80006434:	00813483          	ld	s1,8(sp)
    80006438:	00013903          	ld	s2,0(sp)
    8000643c:	02010113          	addi	sp,sp,32
    80006440:	00008067          	ret

0000000080006444 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006444:	fe010113          	addi	sp,sp,-32
    80006448:	00113c23          	sd	ra,24(sp)
    8000644c:	00813823          	sd	s0,16(sp)
    80006450:	00913423          	sd	s1,8(sp)
    80006454:	01213023          	sd	s2,0(sp)
    80006458:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000645c:	00000913          	li	s2,0
    80006460:	0400006f          	j	800064a0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	0f8080e7          	jalr	248(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000646c:	00148493          	addi	s1,s1,1
    80006470:	000027b7          	lui	a5,0x2
    80006474:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006478:	0097ee63          	bltu	a5,s1,80006494 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000647c:	00000713          	li	a4,0
    80006480:	000077b7          	lui	a5,0x7
    80006484:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006488:	fce7eee3          	bltu	a5,a4,80006464 <_ZL11workerBodyBPv+0x20>
    8000648c:	00170713          	addi	a4,a4,1
    80006490:	ff1ff06f          	j	80006480 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006494:	00a00793          	li	a5,10
    80006498:	04f90663          	beq	s2,a5,800064e4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000649c:	00190913          	addi	s2,s2,1
    800064a0:	00f00793          	li	a5,15
    800064a4:	0527e463          	bltu	a5,s2,800064ec <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	c8850513          	addi	a0,a0,-888 # 80009130 <CONSOLE_STATUS+0x120>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	310080e7          	jalr	784(ra) # 800057c0 <_Z11printStringPKc>
    800064b8:	00000613          	li	a2,0
    800064bc:	00a00593          	li	a1,10
    800064c0:	0009051b          	sext.w	a0,s2
    800064c4:	fffff097          	auipc	ra,0xfffff
    800064c8:	4ac080e7          	jalr	1196(ra) # 80005970 <_Z8printIntiii>
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	eac50513          	addi	a0,a0,-340 # 80009378 <CONSOLE_STATUS+0x368>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	2ec080e7          	jalr	748(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064dc:	00000493          	li	s1,0
    800064e0:	f91ff06f          	j	80006470 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800064e4:	14102ff3          	csrr	t6,sepc
    800064e8:	fb5ff06f          	j	8000649c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800064ec:	00003517          	auipc	a0,0x3
    800064f0:	c4c50513          	addi	a0,a0,-948 # 80009138 <CONSOLE_STATUS+0x128>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	2cc080e7          	jalr	716(ra) # 800057c0 <_Z11printStringPKc>
    finishedB = true;
    800064fc:	00100793          	li	a5,1
    80006500:	00005717          	auipc	a4,0x5
    80006504:	5cf70223          	sb	a5,1476(a4) # 8000bac4 <_ZL9finishedB>
    thread_dispatch();
    80006508:	ffffb097          	auipc	ra,0xffffb
    8000650c:	054080e7          	jalr	84(ra) # 8000155c <_Z15thread_dispatchv>
}
    80006510:	01813083          	ld	ra,24(sp)
    80006514:	01013403          	ld	s0,16(sp)
    80006518:	00813483          	ld	s1,8(sp)
    8000651c:	00013903          	ld	s2,0(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006528:	fe010113          	addi	sp,sp,-32
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	01213023          	sd	s2,0(sp)
    8000653c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006540:	00000913          	li	s2,0
    80006544:	0380006f          	j	8000657c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	014080e7          	jalr	20(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006550:	00148493          	addi	s1,s1,1
    80006554:	000027b7          	lui	a5,0x2
    80006558:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000655c:	0097ee63          	bltu	a5,s1,80006578 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006560:	00000713          	li	a4,0
    80006564:	000077b7          	lui	a5,0x7
    80006568:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000656c:	fce7eee3          	bltu	a5,a4,80006548 <_ZL11workerBodyAPv+0x20>
    80006570:	00170713          	addi	a4,a4,1
    80006574:	ff1ff06f          	j	80006564 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006578:	00190913          	addi	s2,s2,1
    8000657c:	00900793          	li	a5,9
    80006580:	0527e063          	bltu	a5,s2,800065c0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006584:	00003517          	auipc	a0,0x3
    80006588:	b9450513          	addi	a0,a0,-1132 # 80009118 <CONSOLE_STATUS+0x108>
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	234080e7          	jalr	564(ra) # 800057c0 <_Z11printStringPKc>
    80006594:	00000613          	li	a2,0
    80006598:	00a00593          	li	a1,10
    8000659c:	0009051b          	sext.w	a0,s2
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	3d0080e7          	jalr	976(ra) # 80005970 <_Z8printIntiii>
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	dd050513          	addi	a0,a0,-560 # 80009378 <CONSOLE_STATUS+0x368>
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	210080e7          	jalr	528(ra) # 800057c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065b8:	00000493          	li	s1,0
    800065bc:	f99ff06f          	j	80006554 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800065c0:	00003517          	auipc	a0,0x3
    800065c4:	b6050513          	addi	a0,a0,-1184 # 80009120 <CONSOLE_STATUS+0x110>
    800065c8:	fffff097          	auipc	ra,0xfffff
    800065cc:	1f8080e7          	jalr	504(ra) # 800057c0 <_Z11printStringPKc>
    finishedA = true;
    800065d0:	00100793          	li	a5,1
    800065d4:	00005717          	auipc	a4,0x5
    800065d8:	4ef708a3          	sb	a5,1265(a4) # 8000bac5 <_ZL9finishedA>
}
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	00013903          	ld	s2,0(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret

00000000800065f4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800065f4:	fd010113          	addi	sp,sp,-48
    800065f8:	02113423          	sd	ra,40(sp)
    800065fc:	02813023          	sd	s0,32(sp)
    80006600:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006604:	00000613          	li	a2,0
    80006608:	00000597          	auipc	a1,0x0
    8000660c:	f2058593          	addi	a1,a1,-224 # 80006528 <_ZL11workerBodyAPv>
    80006610:	fd040513          	addi	a0,s0,-48
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	e20080e7          	jalr	-480(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000661c:	00003517          	auipc	a0,0x3
    80006620:	ba450513          	addi	a0,a0,-1116 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	19c080e7          	jalr	412(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000662c:	00000613          	li	a2,0
    80006630:	00000597          	auipc	a1,0x0
    80006634:	e1458593          	addi	a1,a1,-492 # 80006444 <_ZL11workerBodyBPv>
    80006638:	fd840513          	addi	a0,s0,-40
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	df8080e7          	jalr	-520(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006644:	00003517          	auipc	a0,0x3
    80006648:	b9450513          	addi	a0,a0,-1132 # 800091d8 <CONSOLE_STATUS+0x1c8>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	174080e7          	jalr	372(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006654:	00000613          	li	a2,0
    80006658:	00000597          	auipc	a1,0x0
    8000665c:	c6c58593          	addi	a1,a1,-916 # 800062c4 <_ZL11workerBodyCPv>
    80006660:	fe040513          	addi	a0,s0,-32
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	dd0080e7          	jalr	-560(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000666c:	00003517          	auipc	a0,0x3
    80006670:	b8450513          	addi	a0,a0,-1148 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	14c080e7          	jalr	332(ra) # 800057c0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000667c:	00000613          	li	a2,0
    80006680:	00000597          	auipc	a1,0x0
    80006684:	afc58593          	addi	a1,a1,-1284 # 8000617c <_ZL11workerBodyDPv>
    80006688:	fe840513          	addi	a0,s0,-24
    8000668c:	ffffb097          	auipc	ra,0xffffb
    80006690:	da8080e7          	jalr	-600(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006694:	00003517          	auipc	a0,0x3
    80006698:	b7450513          	addi	a0,a0,-1164 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000669c:	fffff097          	auipc	ra,0xfffff
    800066a0:	124080e7          	jalr	292(ra) # 800057c0 <_Z11printStringPKc>
    800066a4:	00c0006f          	j	800066b0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800066a8:	ffffb097          	auipc	ra,0xffffb
    800066ac:	eb4080e7          	jalr	-332(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800066b0:	00005797          	auipc	a5,0x5
    800066b4:	4157c783          	lbu	a5,1045(a5) # 8000bac5 <_ZL9finishedA>
    800066b8:	fe0788e3          	beqz	a5,800066a8 <_Z16System_Mode_testv+0xb4>
    800066bc:	00005797          	auipc	a5,0x5
    800066c0:	4087c783          	lbu	a5,1032(a5) # 8000bac4 <_ZL9finishedB>
    800066c4:	fe0782e3          	beqz	a5,800066a8 <_Z16System_Mode_testv+0xb4>
    800066c8:	00005797          	auipc	a5,0x5
    800066cc:	3fb7c783          	lbu	a5,1019(a5) # 8000bac3 <_ZL9finishedC>
    800066d0:	fc078ce3          	beqz	a5,800066a8 <_Z16System_Mode_testv+0xb4>
    800066d4:	00005797          	auipc	a5,0x5
    800066d8:	3ee7c783          	lbu	a5,1006(a5) # 8000bac2 <_ZL9finishedD>
    800066dc:	fc0786e3          	beqz	a5,800066a8 <_Z16System_Mode_testv+0xb4>
    }

}
    800066e0:	02813083          	ld	ra,40(sp)
    800066e4:	02013403          	ld	s0,32(sp)
    800066e8:	03010113          	addi	sp,sp,48
    800066ec:	00008067          	ret

00000000800066f0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00113c23          	sd	ra,24(sp)
    800066f8:	00813823          	sd	s0,16(sp)
    800066fc:	00913423          	sd	s1,8(sp)
    80006700:	01213023          	sd	s2,0(sp)
    80006704:	02010413          	addi	s0,sp,32
    80006708:	00050493          	mv	s1,a0
    8000670c:	00058913          	mv	s2,a1
    80006710:	0015879b          	addiw	a5,a1,1
    80006714:	0007851b          	sext.w	a0,a5
    80006718:	00f4a023          	sw	a5,0(s1)
    8000671c:	0004a823          	sw	zero,16(s1)
    80006720:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006724:	00251513          	slli	a0,a0,0x2
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	c8c080e7          	jalr	-884(ra) # 800013b4 <_Z9mem_allocm>
    80006730:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006734:	00000593          	li	a1,0
    80006738:	02048513          	addi	a0,s1,32
    8000673c:	ffffb097          	auipc	ra,0xffffb
    80006740:	e7c080e7          	jalr	-388(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006744:	00090593          	mv	a1,s2
    80006748:	01848513          	addi	a0,s1,24
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	e6c080e7          	jalr	-404(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006754:	00100593          	li	a1,1
    80006758:	02848513          	addi	a0,s1,40
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	e5c080e7          	jalr	-420(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006764:	00100593          	li	a1,1
    80006768:	03048513          	addi	a0,s1,48
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	e4c080e7          	jalr	-436(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80006774:	01813083          	ld	ra,24(sp)
    80006778:	01013403          	ld	s0,16(sp)
    8000677c:	00813483          	ld	s1,8(sp)
    80006780:	00013903          	ld	s2,0(sp)
    80006784:	02010113          	addi	sp,sp,32
    80006788:	00008067          	ret

000000008000678c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00113c23          	sd	ra,24(sp)
    80006794:	00813823          	sd	s0,16(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	01213023          	sd	s2,0(sp)
    800067a0:	02010413          	addi	s0,sp,32
    800067a4:	00050493          	mv	s1,a0
    800067a8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800067ac:	01853503          	ld	a0,24(a0)
    800067b0:	ffffb097          	auipc	ra,0xffffb
    800067b4:	e98080e7          	jalr	-360(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800067b8:	0304b503          	ld	a0,48(s1)
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	e8c080e7          	jalr	-372(ra) # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800067c4:	0084b783          	ld	a5,8(s1)
    800067c8:	0144a703          	lw	a4,20(s1)
    800067cc:	00271713          	slli	a4,a4,0x2
    800067d0:	00e787b3          	add	a5,a5,a4
    800067d4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800067d8:	0144a783          	lw	a5,20(s1)
    800067dc:	0017879b          	addiw	a5,a5,1
    800067e0:	0004a703          	lw	a4,0(s1)
    800067e4:	02e7e7bb          	remw	a5,a5,a4
    800067e8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800067ec:	0304b503          	ld	a0,48(s1)
    800067f0:	ffffb097          	auipc	ra,0xffffb
    800067f4:	ea4080e7          	jalr	-348(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800067f8:	0204b503          	ld	a0,32(s1)
    800067fc:	ffffb097          	auipc	ra,0xffffb
    80006800:	e98080e7          	jalr	-360(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006804:	01813083          	ld	ra,24(sp)
    80006808:	01013403          	ld	s0,16(sp)
    8000680c:	00813483          	ld	s1,8(sp)
    80006810:	00013903          	ld	s2,0(sp)
    80006814:	02010113          	addi	sp,sp,32
    80006818:	00008067          	ret

000000008000681c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000681c:	fe010113          	addi	sp,sp,-32
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00813823          	sd	s0,16(sp)
    80006828:	00913423          	sd	s1,8(sp)
    8000682c:	01213023          	sd	s2,0(sp)
    80006830:	02010413          	addi	s0,sp,32
    80006834:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006838:	02053503          	ld	a0,32(a0)
    8000683c:	ffffb097          	auipc	ra,0xffffb
    80006840:	e0c080e7          	jalr	-500(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006844:	0284b503          	ld	a0,40(s1)
    80006848:	ffffb097          	auipc	ra,0xffffb
    8000684c:	e00080e7          	jalr	-512(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006850:	0084b703          	ld	a4,8(s1)
    80006854:	0104a783          	lw	a5,16(s1)
    80006858:	00279693          	slli	a3,a5,0x2
    8000685c:	00d70733          	add	a4,a4,a3
    80006860:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006864:	0017879b          	addiw	a5,a5,1
    80006868:	0004a703          	lw	a4,0(s1)
    8000686c:	02e7e7bb          	remw	a5,a5,a4
    80006870:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006874:	0284b503          	ld	a0,40(s1)
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	e1c080e7          	jalr	-484(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006880:	0184b503          	ld	a0,24(s1)
    80006884:	ffffb097          	auipc	ra,0xffffb
    80006888:	e10080e7          	jalr	-496(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    8000688c:	00090513          	mv	a0,s2
    80006890:	01813083          	ld	ra,24(sp)
    80006894:	01013403          	ld	s0,16(sp)
    80006898:	00813483          	ld	s1,8(sp)
    8000689c:	00013903          	ld	s2,0(sp)
    800068a0:	02010113          	addi	sp,sp,32
    800068a4:	00008067          	ret

00000000800068a8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800068a8:	fe010113          	addi	sp,sp,-32
    800068ac:	00113c23          	sd	ra,24(sp)
    800068b0:	00813823          	sd	s0,16(sp)
    800068b4:	00913423          	sd	s1,8(sp)
    800068b8:	01213023          	sd	s2,0(sp)
    800068bc:	02010413          	addi	s0,sp,32
    800068c0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800068c4:	02853503          	ld	a0,40(a0)
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	d80080e7          	jalr	-640(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800068d0:	0304b503          	ld	a0,48(s1)
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	d74080e7          	jalr	-652(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800068dc:	0144a783          	lw	a5,20(s1)
    800068e0:	0104a903          	lw	s2,16(s1)
    800068e4:	0327ce63          	blt	a5,s2,80006920 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800068e8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800068ec:	0304b503          	ld	a0,48(s1)
    800068f0:	ffffb097          	auipc	ra,0xffffb
    800068f4:	da4080e7          	jalr	-604(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800068f8:	0284b503          	ld	a0,40(s1)
    800068fc:	ffffb097          	auipc	ra,0xffffb
    80006900:	d98080e7          	jalr	-616(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006904:	00090513          	mv	a0,s2
    80006908:	01813083          	ld	ra,24(sp)
    8000690c:	01013403          	ld	s0,16(sp)
    80006910:	00813483          	ld	s1,8(sp)
    80006914:	00013903          	ld	s2,0(sp)
    80006918:	02010113          	addi	sp,sp,32
    8000691c:	00008067          	ret
        ret = cap - head + tail;
    80006920:	0004a703          	lw	a4,0(s1)
    80006924:	4127093b          	subw	s2,a4,s2
    80006928:	00f9093b          	addw	s2,s2,a5
    8000692c:	fc1ff06f          	j	800068ec <_ZN6Buffer6getCntEv+0x44>

0000000080006930 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006930:	fe010113          	addi	sp,sp,-32
    80006934:	00113c23          	sd	ra,24(sp)
    80006938:	00813823          	sd	s0,16(sp)
    8000693c:	00913423          	sd	s1,8(sp)
    80006940:	02010413          	addi	s0,sp,32
    80006944:	00050493          	mv	s1,a0
    putc('\n');
    80006948:	00a00513          	li	a0,10
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	dd0080e7          	jalr	-560(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006954:	00003517          	auipc	a0,0x3
    80006958:	8cc50513          	addi	a0,a0,-1844 # 80009220 <CONSOLE_STATUS+0x210>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	e64080e7          	jalr	-412(ra) # 800057c0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006964:	00048513          	mv	a0,s1
    80006968:	00000097          	auipc	ra,0x0
    8000696c:	f40080e7          	jalr	-192(ra) # 800068a8 <_ZN6Buffer6getCntEv>
    80006970:	02a05c63          	blez	a0,800069a8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006974:	0084b783          	ld	a5,8(s1)
    80006978:	0104a703          	lw	a4,16(s1)
    8000697c:	00271713          	slli	a4,a4,0x2
    80006980:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006984:	0007c503          	lbu	a0,0(a5)
    80006988:	ffffb097          	auipc	ra,0xffffb
    8000698c:	d94080e7          	jalr	-620(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    80006990:	0104a783          	lw	a5,16(s1)
    80006994:	0017879b          	addiw	a5,a5,1
    80006998:	0004a703          	lw	a4,0(s1)
    8000699c:	02e7e7bb          	remw	a5,a5,a4
    800069a0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800069a4:	fc1ff06f          	j	80006964 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800069a8:	02100513          	li	a0,33
    800069ac:	ffffb097          	auipc	ra,0xffffb
    800069b0:	d70080e7          	jalr	-656(ra) # 8000171c <_Z4putcc>
    putc('\n');
    800069b4:	00a00513          	li	a0,10
    800069b8:	ffffb097          	auipc	ra,0xffffb
    800069bc:	d64080e7          	jalr	-668(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    800069c0:	0084b503          	ld	a0,8(s1)
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	a30080e7          	jalr	-1488(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800069cc:	0204b503          	ld	a0,32(s1)
    800069d0:	ffffb097          	auipc	ra,0xffffb
    800069d4:	c2c080e7          	jalr	-980(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800069d8:	0184b503          	ld	a0,24(s1)
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	c20080e7          	jalr	-992(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800069e4:	0304b503          	ld	a0,48(s1)
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	c14080e7          	jalr	-1004(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800069f0:	0284b503          	ld	a0,40(s1)
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	c08080e7          	jalr	-1016(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	01013403          	ld	s0,16(sp)
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	02010113          	addi	sp,sp,32
    80006a0c:	00008067          	ret

0000000080006a10 <start>:
    80006a10:	ff010113          	addi	sp,sp,-16
    80006a14:	00813423          	sd	s0,8(sp)
    80006a18:	01010413          	addi	s0,sp,16
    80006a1c:	300027f3          	csrr	a5,mstatus
    80006a20:	ffffe737          	lui	a4,0xffffe
    80006a24:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1acf>
    80006a28:	00e7f7b3          	and	a5,a5,a4
    80006a2c:	00001737          	lui	a4,0x1
    80006a30:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a34:	00e7e7b3          	or	a5,a5,a4
    80006a38:	30079073          	csrw	mstatus,a5
    80006a3c:	00000797          	auipc	a5,0x0
    80006a40:	16078793          	addi	a5,a5,352 # 80006b9c <system_main>
    80006a44:	34179073          	csrw	mepc,a5
    80006a48:	00000793          	li	a5,0
    80006a4c:	18079073          	csrw	satp,a5
    80006a50:	000107b7          	lui	a5,0x10
    80006a54:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a58:	30279073          	csrw	medeleg,a5
    80006a5c:	30379073          	csrw	mideleg,a5
    80006a60:	104027f3          	csrr	a5,sie
    80006a64:	2227e793          	ori	a5,a5,546
    80006a68:	10479073          	csrw	sie,a5
    80006a6c:	fff00793          	li	a5,-1
    80006a70:	00a7d793          	srli	a5,a5,0xa
    80006a74:	3b079073          	csrw	pmpaddr0,a5
    80006a78:	00f00793          	li	a5,15
    80006a7c:	3a079073          	csrw	pmpcfg0,a5
    80006a80:	f14027f3          	csrr	a5,mhartid
    80006a84:	0200c737          	lui	a4,0x200c
    80006a88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a8c:	0007869b          	sext.w	a3,a5
    80006a90:	00269713          	slli	a4,a3,0x2
    80006a94:	000f4637          	lui	a2,0xf4
    80006a98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a9c:	00d70733          	add	a4,a4,a3
    80006aa0:	0037979b          	slliw	a5,a5,0x3
    80006aa4:	020046b7          	lui	a3,0x2004
    80006aa8:	00d787b3          	add	a5,a5,a3
    80006aac:	00c585b3          	add	a1,a1,a2
    80006ab0:	00371693          	slli	a3,a4,0x3
    80006ab4:	00005717          	auipc	a4,0x5
    80006ab8:	01c70713          	addi	a4,a4,28 # 8000bad0 <timer_scratch>
    80006abc:	00b7b023          	sd	a1,0(a5)
    80006ac0:	00d70733          	add	a4,a4,a3
    80006ac4:	00f73c23          	sd	a5,24(a4)
    80006ac8:	02c73023          	sd	a2,32(a4)
    80006acc:	34071073          	csrw	mscratch,a4
    80006ad0:	00000797          	auipc	a5,0x0
    80006ad4:	6e078793          	addi	a5,a5,1760 # 800071b0 <timervec>
    80006ad8:	30579073          	csrw	mtvec,a5
    80006adc:	300027f3          	csrr	a5,mstatus
    80006ae0:	0087e793          	ori	a5,a5,8
    80006ae4:	30079073          	csrw	mstatus,a5
    80006ae8:	304027f3          	csrr	a5,mie
    80006aec:	0807e793          	ori	a5,a5,128
    80006af0:	30479073          	csrw	mie,a5
    80006af4:	f14027f3          	csrr	a5,mhartid
    80006af8:	0007879b          	sext.w	a5,a5
    80006afc:	00078213          	mv	tp,a5
    80006b00:	30200073          	mret
    80006b04:	00813403          	ld	s0,8(sp)
    80006b08:	01010113          	addi	sp,sp,16
    80006b0c:	00008067          	ret

0000000080006b10 <timerinit>:
    80006b10:	ff010113          	addi	sp,sp,-16
    80006b14:	00813423          	sd	s0,8(sp)
    80006b18:	01010413          	addi	s0,sp,16
    80006b1c:	f14027f3          	csrr	a5,mhartid
    80006b20:	0200c737          	lui	a4,0x200c
    80006b24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b28:	0007869b          	sext.w	a3,a5
    80006b2c:	00269713          	slli	a4,a3,0x2
    80006b30:	000f4637          	lui	a2,0xf4
    80006b34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b38:	00d70733          	add	a4,a4,a3
    80006b3c:	0037979b          	slliw	a5,a5,0x3
    80006b40:	020046b7          	lui	a3,0x2004
    80006b44:	00d787b3          	add	a5,a5,a3
    80006b48:	00c585b3          	add	a1,a1,a2
    80006b4c:	00371693          	slli	a3,a4,0x3
    80006b50:	00005717          	auipc	a4,0x5
    80006b54:	f8070713          	addi	a4,a4,-128 # 8000bad0 <timer_scratch>
    80006b58:	00b7b023          	sd	a1,0(a5)
    80006b5c:	00d70733          	add	a4,a4,a3
    80006b60:	00f73c23          	sd	a5,24(a4)
    80006b64:	02c73023          	sd	a2,32(a4)
    80006b68:	34071073          	csrw	mscratch,a4
    80006b6c:	00000797          	auipc	a5,0x0
    80006b70:	64478793          	addi	a5,a5,1604 # 800071b0 <timervec>
    80006b74:	30579073          	csrw	mtvec,a5
    80006b78:	300027f3          	csrr	a5,mstatus
    80006b7c:	0087e793          	ori	a5,a5,8
    80006b80:	30079073          	csrw	mstatus,a5
    80006b84:	304027f3          	csrr	a5,mie
    80006b88:	0807e793          	ori	a5,a5,128
    80006b8c:	30479073          	csrw	mie,a5
    80006b90:	00813403          	ld	s0,8(sp)
    80006b94:	01010113          	addi	sp,sp,16
    80006b98:	00008067          	ret

0000000080006b9c <system_main>:
    80006b9c:	fe010113          	addi	sp,sp,-32
    80006ba0:	00813823          	sd	s0,16(sp)
    80006ba4:	00913423          	sd	s1,8(sp)
    80006ba8:	00113c23          	sd	ra,24(sp)
    80006bac:	02010413          	addi	s0,sp,32
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	0c4080e7          	jalr	196(ra) # 80006c74 <cpuid>
    80006bb8:	00005497          	auipc	s1,0x5
    80006bbc:	e4848493          	addi	s1,s1,-440 # 8000ba00 <started>
    80006bc0:	02050263          	beqz	a0,80006be4 <system_main+0x48>
    80006bc4:	0004a783          	lw	a5,0(s1)
    80006bc8:	0007879b          	sext.w	a5,a5
    80006bcc:	fe078ce3          	beqz	a5,80006bc4 <system_main+0x28>
    80006bd0:	0ff0000f          	fence
    80006bd4:	00003517          	auipc	a0,0x3
    80006bd8:	91c50513          	addi	a0,a0,-1764 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	a70080e7          	jalr	-1424(ra) # 8000764c <panic>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	9c4080e7          	jalr	-1596(ra) # 800075a8 <consoleinit>
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	150080e7          	jalr	336(ra) # 80007d3c <printfinit>
    80006bf4:	00002517          	auipc	a0,0x2
    80006bf8:	78450513          	addi	a0,a0,1924 # 80009378 <CONSOLE_STATUS+0x368>
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	aac080e7          	jalr	-1364(ra) # 800076a8 <__printf>
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	8bc50513          	addi	a0,a0,-1860 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006c0c:	00001097          	auipc	ra,0x1
    80006c10:	a9c080e7          	jalr	-1380(ra) # 800076a8 <__printf>
    80006c14:	00002517          	auipc	a0,0x2
    80006c18:	76450513          	addi	a0,a0,1892 # 80009378 <CONSOLE_STATUS+0x368>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	a8c080e7          	jalr	-1396(ra) # 800076a8 <__printf>
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	4a4080e7          	jalr	1188(ra) # 800080c8 <kinit>
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	148080e7          	jalr	328(ra) # 80006d74 <trapinit>
    80006c34:	00000097          	auipc	ra,0x0
    80006c38:	16c080e7          	jalr	364(ra) # 80006da0 <trapinithart>
    80006c3c:	00000097          	auipc	ra,0x0
    80006c40:	5b4080e7          	jalr	1460(ra) # 800071f0 <plicinit>
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	5d4080e7          	jalr	1492(ra) # 80007218 <plicinithart>
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	078080e7          	jalr	120(ra) # 80006cc4 <userinit>
    80006c54:	0ff0000f          	fence
    80006c58:	00100793          	li	a5,1
    80006c5c:	00003517          	auipc	a0,0x3
    80006c60:	87c50513          	addi	a0,a0,-1924 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006c64:	00f4a023          	sw	a5,0(s1)
    80006c68:	00001097          	auipc	ra,0x1
    80006c6c:	a40080e7          	jalr	-1472(ra) # 800076a8 <__printf>
    80006c70:	0000006f          	j	80006c70 <system_main+0xd4>

0000000080006c74 <cpuid>:
    80006c74:	ff010113          	addi	sp,sp,-16
    80006c78:	00813423          	sd	s0,8(sp)
    80006c7c:	01010413          	addi	s0,sp,16
    80006c80:	00020513          	mv	a0,tp
    80006c84:	00813403          	ld	s0,8(sp)
    80006c88:	0005051b          	sext.w	a0,a0
    80006c8c:	01010113          	addi	sp,sp,16
    80006c90:	00008067          	ret

0000000080006c94 <mycpu>:
    80006c94:	ff010113          	addi	sp,sp,-16
    80006c98:	00813423          	sd	s0,8(sp)
    80006c9c:	01010413          	addi	s0,sp,16
    80006ca0:	00020793          	mv	a5,tp
    80006ca4:	00813403          	ld	s0,8(sp)
    80006ca8:	0007879b          	sext.w	a5,a5
    80006cac:	00779793          	slli	a5,a5,0x7
    80006cb0:	00006517          	auipc	a0,0x6
    80006cb4:	e5050513          	addi	a0,a0,-432 # 8000cb00 <cpus>
    80006cb8:	00f50533          	add	a0,a0,a5
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <userinit>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813423          	sd	s0,8(sp)
    80006ccc:	01010413          	addi	s0,sp,16
    80006cd0:	00813403          	ld	s0,8(sp)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	ffffb317          	auipc	t1,0xffffb
    80006cdc:	b9430067          	jr	-1132(t1) # 8000186c <main>

0000000080006ce0 <either_copyout>:
    80006ce0:	ff010113          	addi	sp,sp,-16
    80006ce4:	00813023          	sd	s0,0(sp)
    80006ce8:	00113423          	sd	ra,8(sp)
    80006cec:	01010413          	addi	s0,sp,16
    80006cf0:	02051663          	bnez	a0,80006d1c <either_copyout+0x3c>
    80006cf4:	00058513          	mv	a0,a1
    80006cf8:	00060593          	mv	a1,a2
    80006cfc:	0006861b          	sext.w	a2,a3
    80006d00:	00002097          	auipc	ra,0x2
    80006d04:	c54080e7          	jalr	-940(ra) # 80008954 <__memmove>
    80006d08:	00813083          	ld	ra,8(sp)
    80006d0c:	00013403          	ld	s0,0(sp)
    80006d10:	00000513          	li	a0,0
    80006d14:	01010113          	addi	sp,sp,16
    80006d18:	00008067          	ret
    80006d1c:	00002517          	auipc	a0,0x2
    80006d20:	7fc50513          	addi	a0,a0,2044 # 80009518 <CONSOLE_STATUS+0x508>
    80006d24:	00001097          	auipc	ra,0x1
    80006d28:	928080e7          	jalr	-1752(ra) # 8000764c <panic>

0000000080006d2c <either_copyin>:
    80006d2c:	ff010113          	addi	sp,sp,-16
    80006d30:	00813023          	sd	s0,0(sp)
    80006d34:	00113423          	sd	ra,8(sp)
    80006d38:	01010413          	addi	s0,sp,16
    80006d3c:	02059463          	bnez	a1,80006d64 <either_copyin+0x38>
    80006d40:	00060593          	mv	a1,a2
    80006d44:	0006861b          	sext.w	a2,a3
    80006d48:	00002097          	auipc	ra,0x2
    80006d4c:	c0c080e7          	jalr	-1012(ra) # 80008954 <__memmove>
    80006d50:	00813083          	ld	ra,8(sp)
    80006d54:	00013403          	ld	s0,0(sp)
    80006d58:	00000513          	li	a0,0
    80006d5c:	01010113          	addi	sp,sp,16
    80006d60:	00008067          	ret
    80006d64:	00002517          	auipc	a0,0x2
    80006d68:	7dc50513          	addi	a0,a0,2012 # 80009540 <CONSOLE_STATUS+0x530>
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	8e0080e7          	jalr	-1824(ra) # 8000764c <panic>

0000000080006d74 <trapinit>:
    80006d74:	ff010113          	addi	sp,sp,-16
    80006d78:	00813423          	sd	s0,8(sp)
    80006d7c:	01010413          	addi	s0,sp,16
    80006d80:	00813403          	ld	s0,8(sp)
    80006d84:	00002597          	auipc	a1,0x2
    80006d88:	7e458593          	addi	a1,a1,2020 # 80009568 <CONSOLE_STATUS+0x558>
    80006d8c:	00006517          	auipc	a0,0x6
    80006d90:	df450513          	addi	a0,a0,-524 # 8000cb80 <tickslock>
    80006d94:	01010113          	addi	sp,sp,16
    80006d98:	00001317          	auipc	t1,0x1
    80006d9c:	5c030067          	jr	1472(t1) # 80008358 <initlock>

0000000080006da0 <trapinithart>:
    80006da0:	ff010113          	addi	sp,sp,-16
    80006da4:	00813423          	sd	s0,8(sp)
    80006da8:	01010413          	addi	s0,sp,16
    80006dac:	00000797          	auipc	a5,0x0
    80006db0:	2f478793          	addi	a5,a5,756 # 800070a0 <kernelvec>
    80006db4:	10579073          	csrw	stvec,a5
    80006db8:	00813403          	ld	s0,8(sp)
    80006dbc:	01010113          	addi	sp,sp,16
    80006dc0:	00008067          	ret

0000000080006dc4 <usertrap>:
    80006dc4:	ff010113          	addi	sp,sp,-16
    80006dc8:	00813423          	sd	s0,8(sp)
    80006dcc:	01010413          	addi	s0,sp,16
    80006dd0:	00813403          	ld	s0,8(sp)
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00008067          	ret

0000000080006ddc <usertrapret>:
    80006ddc:	ff010113          	addi	sp,sp,-16
    80006de0:	00813423          	sd	s0,8(sp)
    80006de4:	01010413          	addi	s0,sp,16
    80006de8:	00813403          	ld	s0,8(sp)
    80006dec:	01010113          	addi	sp,sp,16
    80006df0:	00008067          	ret

0000000080006df4 <kerneltrap>:
    80006df4:	fe010113          	addi	sp,sp,-32
    80006df8:	00813823          	sd	s0,16(sp)
    80006dfc:	00113c23          	sd	ra,24(sp)
    80006e00:	00913423          	sd	s1,8(sp)
    80006e04:	02010413          	addi	s0,sp,32
    80006e08:	142025f3          	csrr	a1,scause
    80006e0c:	100027f3          	csrr	a5,sstatus
    80006e10:	0027f793          	andi	a5,a5,2
    80006e14:	10079c63          	bnez	a5,80006f2c <kerneltrap+0x138>
    80006e18:	142027f3          	csrr	a5,scause
    80006e1c:	0207ce63          	bltz	a5,80006e58 <kerneltrap+0x64>
    80006e20:	00002517          	auipc	a0,0x2
    80006e24:	79050513          	addi	a0,a0,1936 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006e28:	00001097          	auipc	ra,0x1
    80006e2c:	880080e7          	jalr	-1920(ra) # 800076a8 <__printf>
    80006e30:	141025f3          	csrr	a1,sepc
    80006e34:	14302673          	csrr	a2,stval
    80006e38:	00002517          	auipc	a0,0x2
    80006e3c:	78850513          	addi	a0,a0,1928 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	868080e7          	jalr	-1944(ra) # 800076a8 <__printf>
    80006e48:	00002517          	auipc	a0,0x2
    80006e4c:	79050513          	addi	a0,a0,1936 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	7fc080e7          	jalr	2044(ra) # 8000764c <panic>
    80006e58:	0ff7f713          	andi	a4,a5,255
    80006e5c:	00900693          	li	a3,9
    80006e60:	04d70063          	beq	a4,a3,80006ea0 <kerneltrap+0xac>
    80006e64:	fff00713          	li	a4,-1
    80006e68:	03f71713          	slli	a4,a4,0x3f
    80006e6c:	00170713          	addi	a4,a4,1
    80006e70:	fae798e3          	bne	a5,a4,80006e20 <kerneltrap+0x2c>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	e00080e7          	jalr	-512(ra) # 80006c74 <cpuid>
    80006e7c:	06050663          	beqz	a0,80006ee8 <kerneltrap+0xf4>
    80006e80:	144027f3          	csrr	a5,sip
    80006e84:	ffd7f793          	andi	a5,a5,-3
    80006e88:	14479073          	csrw	sip,a5
    80006e8c:	01813083          	ld	ra,24(sp)
    80006e90:	01013403          	ld	s0,16(sp)
    80006e94:	00813483          	ld	s1,8(sp)
    80006e98:	02010113          	addi	sp,sp,32
    80006e9c:	00008067          	ret
    80006ea0:	00000097          	auipc	ra,0x0
    80006ea4:	3c4080e7          	jalr	964(ra) # 80007264 <plic_claim>
    80006ea8:	00a00793          	li	a5,10
    80006eac:	00050493          	mv	s1,a0
    80006eb0:	06f50863          	beq	a0,a5,80006f20 <kerneltrap+0x12c>
    80006eb4:	fc050ce3          	beqz	a0,80006e8c <kerneltrap+0x98>
    80006eb8:	00050593          	mv	a1,a0
    80006ebc:	00002517          	auipc	a0,0x2
    80006ec0:	6d450513          	addi	a0,a0,1748 # 80009590 <CONSOLE_STATUS+0x580>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	7e4080e7          	jalr	2020(ra) # 800076a8 <__printf>
    80006ecc:	01013403          	ld	s0,16(sp)
    80006ed0:	01813083          	ld	ra,24(sp)
    80006ed4:	00048513          	mv	a0,s1
    80006ed8:	00813483          	ld	s1,8(sp)
    80006edc:	02010113          	addi	sp,sp,32
    80006ee0:	00000317          	auipc	t1,0x0
    80006ee4:	3bc30067          	jr	956(t1) # 8000729c <plic_complete>
    80006ee8:	00006517          	auipc	a0,0x6
    80006eec:	c9850513          	addi	a0,a0,-872 # 8000cb80 <tickslock>
    80006ef0:	00001097          	auipc	ra,0x1
    80006ef4:	48c080e7          	jalr	1164(ra) # 8000837c <acquire>
    80006ef8:	00005717          	auipc	a4,0x5
    80006efc:	b0c70713          	addi	a4,a4,-1268 # 8000ba04 <ticks>
    80006f00:	00072783          	lw	a5,0(a4)
    80006f04:	00006517          	auipc	a0,0x6
    80006f08:	c7c50513          	addi	a0,a0,-900 # 8000cb80 <tickslock>
    80006f0c:	0017879b          	addiw	a5,a5,1
    80006f10:	00f72023          	sw	a5,0(a4)
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	534080e7          	jalr	1332(ra) # 80008448 <release>
    80006f1c:	f65ff06f          	j	80006e80 <kerneltrap+0x8c>
    80006f20:	00001097          	auipc	ra,0x1
    80006f24:	090080e7          	jalr	144(ra) # 80007fb0 <uartintr>
    80006f28:	fa5ff06f          	j	80006ecc <kerneltrap+0xd8>
    80006f2c:	00002517          	auipc	a0,0x2
    80006f30:	64450513          	addi	a0,a0,1604 # 80009570 <CONSOLE_STATUS+0x560>
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	718080e7          	jalr	1816(ra) # 8000764c <panic>

0000000080006f3c <clockintr>:
    80006f3c:	fe010113          	addi	sp,sp,-32
    80006f40:	00813823          	sd	s0,16(sp)
    80006f44:	00913423          	sd	s1,8(sp)
    80006f48:	00113c23          	sd	ra,24(sp)
    80006f4c:	02010413          	addi	s0,sp,32
    80006f50:	00006497          	auipc	s1,0x6
    80006f54:	c3048493          	addi	s1,s1,-976 # 8000cb80 <tickslock>
    80006f58:	00048513          	mv	a0,s1
    80006f5c:	00001097          	auipc	ra,0x1
    80006f60:	420080e7          	jalr	1056(ra) # 8000837c <acquire>
    80006f64:	00005717          	auipc	a4,0x5
    80006f68:	aa070713          	addi	a4,a4,-1376 # 8000ba04 <ticks>
    80006f6c:	00072783          	lw	a5,0(a4)
    80006f70:	01013403          	ld	s0,16(sp)
    80006f74:	01813083          	ld	ra,24(sp)
    80006f78:	00048513          	mv	a0,s1
    80006f7c:	0017879b          	addiw	a5,a5,1
    80006f80:	00813483          	ld	s1,8(sp)
    80006f84:	00f72023          	sw	a5,0(a4)
    80006f88:	02010113          	addi	sp,sp,32
    80006f8c:	00001317          	auipc	t1,0x1
    80006f90:	4bc30067          	jr	1212(t1) # 80008448 <release>

0000000080006f94 <devintr>:
    80006f94:	142027f3          	csrr	a5,scause
    80006f98:	00000513          	li	a0,0
    80006f9c:	0007c463          	bltz	a5,80006fa4 <devintr+0x10>
    80006fa0:	00008067          	ret
    80006fa4:	fe010113          	addi	sp,sp,-32
    80006fa8:	00813823          	sd	s0,16(sp)
    80006fac:	00113c23          	sd	ra,24(sp)
    80006fb0:	00913423          	sd	s1,8(sp)
    80006fb4:	02010413          	addi	s0,sp,32
    80006fb8:	0ff7f713          	andi	a4,a5,255
    80006fbc:	00900693          	li	a3,9
    80006fc0:	04d70c63          	beq	a4,a3,80007018 <devintr+0x84>
    80006fc4:	fff00713          	li	a4,-1
    80006fc8:	03f71713          	slli	a4,a4,0x3f
    80006fcc:	00170713          	addi	a4,a4,1
    80006fd0:	00e78c63          	beq	a5,a4,80006fe8 <devintr+0x54>
    80006fd4:	01813083          	ld	ra,24(sp)
    80006fd8:	01013403          	ld	s0,16(sp)
    80006fdc:	00813483          	ld	s1,8(sp)
    80006fe0:	02010113          	addi	sp,sp,32
    80006fe4:	00008067          	ret
    80006fe8:	00000097          	auipc	ra,0x0
    80006fec:	c8c080e7          	jalr	-884(ra) # 80006c74 <cpuid>
    80006ff0:	06050663          	beqz	a0,8000705c <devintr+0xc8>
    80006ff4:	144027f3          	csrr	a5,sip
    80006ff8:	ffd7f793          	andi	a5,a5,-3
    80006ffc:	14479073          	csrw	sip,a5
    80007000:	01813083          	ld	ra,24(sp)
    80007004:	01013403          	ld	s0,16(sp)
    80007008:	00813483          	ld	s1,8(sp)
    8000700c:	00200513          	li	a0,2
    80007010:	02010113          	addi	sp,sp,32
    80007014:	00008067          	ret
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	24c080e7          	jalr	588(ra) # 80007264 <plic_claim>
    80007020:	00a00793          	li	a5,10
    80007024:	00050493          	mv	s1,a0
    80007028:	06f50663          	beq	a0,a5,80007094 <devintr+0x100>
    8000702c:	00100513          	li	a0,1
    80007030:	fa0482e3          	beqz	s1,80006fd4 <devintr+0x40>
    80007034:	00048593          	mv	a1,s1
    80007038:	00002517          	auipc	a0,0x2
    8000703c:	55850513          	addi	a0,a0,1368 # 80009590 <CONSOLE_STATUS+0x580>
    80007040:	00000097          	auipc	ra,0x0
    80007044:	668080e7          	jalr	1640(ra) # 800076a8 <__printf>
    80007048:	00048513          	mv	a0,s1
    8000704c:	00000097          	auipc	ra,0x0
    80007050:	250080e7          	jalr	592(ra) # 8000729c <plic_complete>
    80007054:	00100513          	li	a0,1
    80007058:	f7dff06f          	j	80006fd4 <devintr+0x40>
    8000705c:	00006517          	auipc	a0,0x6
    80007060:	b2450513          	addi	a0,a0,-1244 # 8000cb80 <tickslock>
    80007064:	00001097          	auipc	ra,0x1
    80007068:	318080e7          	jalr	792(ra) # 8000837c <acquire>
    8000706c:	00005717          	auipc	a4,0x5
    80007070:	99870713          	addi	a4,a4,-1640 # 8000ba04 <ticks>
    80007074:	00072783          	lw	a5,0(a4)
    80007078:	00006517          	auipc	a0,0x6
    8000707c:	b0850513          	addi	a0,a0,-1272 # 8000cb80 <tickslock>
    80007080:	0017879b          	addiw	a5,a5,1
    80007084:	00f72023          	sw	a5,0(a4)
    80007088:	00001097          	auipc	ra,0x1
    8000708c:	3c0080e7          	jalr	960(ra) # 80008448 <release>
    80007090:	f65ff06f          	j	80006ff4 <devintr+0x60>
    80007094:	00001097          	auipc	ra,0x1
    80007098:	f1c080e7          	jalr	-228(ra) # 80007fb0 <uartintr>
    8000709c:	fadff06f          	j	80007048 <devintr+0xb4>

00000000800070a0 <kernelvec>:
    800070a0:	f0010113          	addi	sp,sp,-256
    800070a4:	00113023          	sd	ra,0(sp)
    800070a8:	00213423          	sd	sp,8(sp)
    800070ac:	00313823          	sd	gp,16(sp)
    800070b0:	00413c23          	sd	tp,24(sp)
    800070b4:	02513023          	sd	t0,32(sp)
    800070b8:	02613423          	sd	t1,40(sp)
    800070bc:	02713823          	sd	t2,48(sp)
    800070c0:	02813c23          	sd	s0,56(sp)
    800070c4:	04913023          	sd	s1,64(sp)
    800070c8:	04a13423          	sd	a0,72(sp)
    800070cc:	04b13823          	sd	a1,80(sp)
    800070d0:	04c13c23          	sd	a2,88(sp)
    800070d4:	06d13023          	sd	a3,96(sp)
    800070d8:	06e13423          	sd	a4,104(sp)
    800070dc:	06f13823          	sd	a5,112(sp)
    800070e0:	07013c23          	sd	a6,120(sp)
    800070e4:	09113023          	sd	a7,128(sp)
    800070e8:	09213423          	sd	s2,136(sp)
    800070ec:	09313823          	sd	s3,144(sp)
    800070f0:	09413c23          	sd	s4,152(sp)
    800070f4:	0b513023          	sd	s5,160(sp)
    800070f8:	0b613423          	sd	s6,168(sp)
    800070fc:	0b713823          	sd	s7,176(sp)
    80007100:	0b813c23          	sd	s8,184(sp)
    80007104:	0d913023          	sd	s9,192(sp)
    80007108:	0da13423          	sd	s10,200(sp)
    8000710c:	0db13823          	sd	s11,208(sp)
    80007110:	0dc13c23          	sd	t3,216(sp)
    80007114:	0fd13023          	sd	t4,224(sp)
    80007118:	0fe13423          	sd	t5,232(sp)
    8000711c:	0ff13823          	sd	t6,240(sp)
    80007120:	cd5ff0ef          	jal	ra,80006df4 <kerneltrap>
    80007124:	00013083          	ld	ra,0(sp)
    80007128:	00813103          	ld	sp,8(sp)
    8000712c:	01013183          	ld	gp,16(sp)
    80007130:	02013283          	ld	t0,32(sp)
    80007134:	02813303          	ld	t1,40(sp)
    80007138:	03013383          	ld	t2,48(sp)
    8000713c:	03813403          	ld	s0,56(sp)
    80007140:	04013483          	ld	s1,64(sp)
    80007144:	04813503          	ld	a0,72(sp)
    80007148:	05013583          	ld	a1,80(sp)
    8000714c:	05813603          	ld	a2,88(sp)
    80007150:	06013683          	ld	a3,96(sp)
    80007154:	06813703          	ld	a4,104(sp)
    80007158:	07013783          	ld	a5,112(sp)
    8000715c:	07813803          	ld	a6,120(sp)
    80007160:	08013883          	ld	a7,128(sp)
    80007164:	08813903          	ld	s2,136(sp)
    80007168:	09013983          	ld	s3,144(sp)
    8000716c:	09813a03          	ld	s4,152(sp)
    80007170:	0a013a83          	ld	s5,160(sp)
    80007174:	0a813b03          	ld	s6,168(sp)
    80007178:	0b013b83          	ld	s7,176(sp)
    8000717c:	0b813c03          	ld	s8,184(sp)
    80007180:	0c013c83          	ld	s9,192(sp)
    80007184:	0c813d03          	ld	s10,200(sp)
    80007188:	0d013d83          	ld	s11,208(sp)
    8000718c:	0d813e03          	ld	t3,216(sp)
    80007190:	0e013e83          	ld	t4,224(sp)
    80007194:	0e813f03          	ld	t5,232(sp)
    80007198:	0f013f83          	ld	t6,240(sp)
    8000719c:	10010113          	addi	sp,sp,256
    800071a0:	10200073          	sret
    800071a4:	00000013          	nop
    800071a8:	00000013          	nop
    800071ac:	00000013          	nop

00000000800071b0 <timervec>:
    800071b0:	34051573          	csrrw	a0,mscratch,a0
    800071b4:	00b53023          	sd	a1,0(a0)
    800071b8:	00c53423          	sd	a2,8(a0)
    800071bc:	00d53823          	sd	a3,16(a0)
    800071c0:	01853583          	ld	a1,24(a0)
    800071c4:	02053603          	ld	a2,32(a0)
    800071c8:	0005b683          	ld	a3,0(a1)
    800071cc:	00c686b3          	add	a3,a3,a2
    800071d0:	00d5b023          	sd	a3,0(a1)
    800071d4:	00200593          	li	a1,2
    800071d8:	14459073          	csrw	sip,a1
    800071dc:	01053683          	ld	a3,16(a0)
    800071e0:	00853603          	ld	a2,8(a0)
    800071e4:	00053583          	ld	a1,0(a0)
    800071e8:	34051573          	csrrw	a0,mscratch,a0
    800071ec:	30200073          	mret

00000000800071f0 <plicinit>:
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00813423          	sd	s0,8(sp)
    800071f8:	01010413          	addi	s0,sp,16
    800071fc:	00813403          	ld	s0,8(sp)
    80007200:	0c0007b7          	lui	a5,0xc000
    80007204:	00100713          	li	a4,1
    80007208:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000720c:	00e7a223          	sw	a4,4(a5)
    80007210:	01010113          	addi	sp,sp,16
    80007214:	00008067          	ret

0000000080007218 <plicinithart>:
    80007218:	ff010113          	addi	sp,sp,-16
    8000721c:	00813023          	sd	s0,0(sp)
    80007220:	00113423          	sd	ra,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00000097          	auipc	ra,0x0
    8000722c:	a4c080e7          	jalr	-1460(ra) # 80006c74 <cpuid>
    80007230:	0085171b          	slliw	a4,a0,0x8
    80007234:	0c0027b7          	lui	a5,0xc002
    80007238:	00e787b3          	add	a5,a5,a4
    8000723c:	40200713          	li	a4,1026
    80007240:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007244:	00813083          	ld	ra,8(sp)
    80007248:	00013403          	ld	s0,0(sp)
    8000724c:	00d5151b          	slliw	a0,a0,0xd
    80007250:	0c2017b7          	lui	a5,0xc201
    80007254:	00a78533          	add	a0,a5,a0
    80007258:	00052023          	sw	zero,0(a0)
    8000725c:	01010113          	addi	sp,sp,16
    80007260:	00008067          	ret

0000000080007264 <plic_claim>:
    80007264:	ff010113          	addi	sp,sp,-16
    80007268:	00813023          	sd	s0,0(sp)
    8000726c:	00113423          	sd	ra,8(sp)
    80007270:	01010413          	addi	s0,sp,16
    80007274:	00000097          	auipc	ra,0x0
    80007278:	a00080e7          	jalr	-1536(ra) # 80006c74 <cpuid>
    8000727c:	00813083          	ld	ra,8(sp)
    80007280:	00013403          	ld	s0,0(sp)
    80007284:	00d5151b          	slliw	a0,a0,0xd
    80007288:	0c2017b7          	lui	a5,0xc201
    8000728c:	00a78533          	add	a0,a5,a0
    80007290:	00452503          	lw	a0,4(a0)
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00008067          	ret

000000008000729c <plic_complete>:
    8000729c:	fe010113          	addi	sp,sp,-32
    800072a0:	00813823          	sd	s0,16(sp)
    800072a4:	00913423          	sd	s1,8(sp)
    800072a8:	00113c23          	sd	ra,24(sp)
    800072ac:	02010413          	addi	s0,sp,32
    800072b0:	00050493          	mv	s1,a0
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	9c0080e7          	jalr	-1600(ra) # 80006c74 <cpuid>
    800072bc:	01813083          	ld	ra,24(sp)
    800072c0:	01013403          	ld	s0,16(sp)
    800072c4:	00d5179b          	slliw	a5,a0,0xd
    800072c8:	0c201737          	lui	a4,0xc201
    800072cc:	00f707b3          	add	a5,a4,a5
    800072d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800072d4:	00813483          	ld	s1,8(sp)
    800072d8:	02010113          	addi	sp,sp,32
    800072dc:	00008067          	ret

00000000800072e0 <consolewrite>:
    800072e0:	fb010113          	addi	sp,sp,-80
    800072e4:	04813023          	sd	s0,64(sp)
    800072e8:	04113423          	sd	ra,72(sp)
    800072ec:	02913c23          	sd	s1,56(sp)
    800072f0:	03213823          	sd	s2,48(sp)
    800072f4:	03313423          	sd	s3,40(sp)
    800072f8:	03413023          	sd	s4,32(sp)
    800072fc:	01513c23          	sd	s5,24(sp)
    80007300:	05010413          	addi	s0,sp,80
    80007304:	06c05c63          	blez	a2,8000737c <consolewrite+0x9c>
    80007308:	00060993          	mv	s3,a2
    8000730c:	00050a13          	mv	s4,a0
    80007310:	00058493          	mv	s1,a1
    80007314:	00000913          	li	s2,0
    80007318:	fff00a93          	li	s5,-1
    8000731c:	01c0006f          	j	80007338 <consolewrite+0x58>
    80007320:	fbf44503          	lbu	a0,-65(s0)
    80007324:	0019091b          	addiw	s2,s2,1
    80007328:	00148493          	addi	s1,s1,1
    8000732c:	00001097          	auipc	ra,0x1
    80007330:	a9c080e7          	jalr	-1380(ra) # 80007dc8 <uartputc>
    80007334:	03298063          	beq	s3,s2,80007354 <consolewrite+0x74>
    80007338:	00048613          	mv	a2,s1
    8000733c:	00100693          	li	a3,1
    80007340:	000a0593          	mv	a1,s4
    80007344:	fbf40513          	addi	a0,s0,-65
    80007348:	00000097          	auipc	ra,0x0
    8000734c:	9e4080e7          	jalr	-1564(ra) # 80006d2c <either_copyin>
    80007350:	fd5518e3          	bne	a0,s5,80007320 <consolewrite+0x40>
    80007354:	04813083          	ld	ra,72(sp)
    80007358:	04013403          	ld	s0,64(sp)
    8000735c:	03813483          	ld	s1,56(sp)
    80007360:	02813983          	ld	s3,40(sp)
    80007364:	02013a03          	ld	s4,32(sp)
    80007368:	01813a83          	ld	s5,24(sp)
    8000736c:	00090513          	mv	a0,s2
    80007370:	03013903          	ld	s2,48(sp)
    80007374:	05010113          	addi	sp,sp,80
    80007378:	00008067          	ret
    8000737c:	00000913          	li	s2,0
    80007380:	fd5ff06f          	j	80007354 <consolewrite+0x74>

0000000080007384 <consoleread>:
    80007384:	f9010113          	addi	sp,sp,-112
    80007388:	06813023          	sd	s0,96(sp)
    8000738c:	04913c23          	sd	s1,88(sp)
    80007390:	05213823          	sd	s2,80(sp)
    80007394:	05313423          	sd	s3,72(sp)
    80007398:	05413023          	sd	s4,64(sp)
    8000739c:	03513c23          	sd	s5,56(sp)
    800073a0:	03613823          	sd	s6,48(sp)
    800073a4:	03713423          	sd	s7,40(sp)
    800073a8:	03813023          	sd	s8,32(sp)
    800073ac:	06113423          	sd	ra,104(sp)
    800073b0:	01913c23          	sd	s9,24(sp)
    800073b4:	07010413          	addi	s0,sp,112
    800073b8:	00060b93          	mv	s7,a2
    800073bc:	00050913          	mv	s2,a0
    800073c0:	00058c13          	mv	s8,a1
    800073c4:	00060b1b          	sext.w	s6,a2
    800073c8:	00005497          	auipc	s1,0x5
    800073cc:	7e048493          	addi	s1,s1,2016 # 8000cba8 <cons>
    800073d0:	00400993          	li	s3,4
    800073d4:	fff00a13          	li	s4,-1
    800073d8:	00a00a93          	li	s5,10
    800073dc:	05705e63          	blez	s7,80007438 <consoleread+0xb4>
    800073e0:	09c4a703          	lw	a4,156(s1)
    800073e4:	0984a783          	lw	a5,152(s1)
    800073e8:	0007071b          	sext.w	a4,a4
    800073ec:	08e78463          	beq	a5,a4,80007474 <consoleread+0xf0>
    800073f0:	07f7f713          	andi	a4,a5,127
    800073f4:	00e48733          	add	a4,s1,a4
    800073f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800073fc:	0017869b          	addiw	a3,a5,1
    80007400:	08d4ac23          	sw	a3,152(s1)
    80007404:	00070c9b          	sext.w	s9,a4
    80007408:	0b370663          	beq	a4,s3,800074b4 <consoleread+0x130>
    8000740c:	00100693          	li	a3,1
    80007410:	f9f40613          	addi	a2,s0,-97
    80007414:	000c0593          	mv	a1,s8
    80007418:	00090513          	mv	a0,s2
    8000741c:	f8e40fa3          	sb	a4,-97(s0)
    80007420:	00000097          	auipc	ra,0x0
    80007424:	8c0080e7          	jalr	-1856(ra) # 80006ce0 <either_copyout>
    80007428:	01450863          	beq	a0,s4,80007438 <consoleread+0xb4>
    8000742c:	001c0c13          	addi	s8,s8,1
    80007430:	fffb8b9b          	addiw	s7,s7,-1
    80007434:	fb5c94e3          	bne	s9,s5,800073dc <consoleread+0x58>
    80007438:	000b851b          	sext.w	a0,s7
    8000743c:	06813083          	ld	ra,104(sp)
    80007440:	06013403          	ld	s0,96(sp)
    80007444:	05813483          	ld	s1,88(sp)
    80007448:	05013903          	ld	s2,80(sp)
    8000744c:	04813983          	ld	s3,72(sp)
    80007450:	04013a03          	ld	s4,64(sp)
    80007454:	03813a83          	ld	s5,56(sp)
    80007458:	02813b83          	ld	s7,40(sp)
    8000745c:	02013c03          	ld	s8,32(sp)
    80007460:	01813c83          	ld	s9,24(sp)
    80007464:	40ab053b          	subw	a0,s6,a0
    80007468:	03013b03          	ld	s6,48(sp)
    8000746c:	07010113          	addi	sp,sp,112
    80007470:	00008067          	ret
    80007474:	00001097          	auipc	ra,0x1
    80007478:	1d8080e7          	jalr	472(ra) # 8000864c <push_on>
    8000747c:	0984a703          	lw	a4,152(s1)
    80007480:	09c4a783          	lw	a5,156(s1)
    80007484:	0007879b          	sext.w	a5,a5
    80007488:	fef70ce3          	beq	a4,a5,80007480 <consoleread+0xfc>
    8000748c:	00001097          	auipc	ra,0x1
    80007490:	234080e7          	jalr	564(ra) # 800086c0 <pop_on>
    80007494:	0984a783          	lw	a5,152(s1)
    80007498:	07f7f713          	andi	a4,a5,127
    8000749c:	00e48733          	add	a4,s1,a4
    800074a0:	01874703          	lbu	a4,24(a4)
    800074a4:	0017869b          	addiw	a3,a5,1
    800074a8:	08d4ac23          	sw	a3,152(s1)
    800074ac:	00070c9b          	sext.w	s9,a4
    800074b0:	f5371ee3          	bne	a4,s3,8000740c <consoleread+0x88>
    800074b4:	000b851b          	sext.w	a0,s7
    800074b8:	f96bf2e3          	bgeu	s7,s6,8000743c <consoleread+0xb8>
    800074bc:	08f4ac23          	sw	a5,152(s1)
    800074c0:	f7dff06f          	j	8000743c <consoleread+0xb8>

00000000800074c4 <consputc>:
    800074c4:	10000793          	li	a5,256
    800074c8:	00f50663          	beq	a0,a5,800074d4 <consputc+0x10>
    800074cc:	00001317          	auipc	t1,0x1
    800074d0:	9f430067          	jr	-1548(t1) # 80007ec0 <uartputc_sync>
    800074d4:	ff010113          	addi	sp,sp,-16
    800074d8:	00113423          	sd	ra,8(sp)
    800074dc:	00813023          	sd	s0,0(sp)
    800074e0:	01010413          	addi	s0,sp,16
    800074e4:	00800513          	li	a0,8
    800074e8:	00001097          	auipc	ra,0x1
    800074ec:	9d8080e7          	jalr	-1576(ra) # 80007ec0 <uartputc_sync>
    800074f0:	02000513          	li	a0,32
    800074f4:	00001097          	auipc	ra,0x1
    800074f8:	9cc080e7          	jalr	-1588(ra) # 80007ec0 <uartputc_sync>
    800074fc:	00013403          	ld	s0,0(sp)
    80007500:	00813083          	ld	ra,8(sp)
    80007504:	00800513          	li	a0,8
    80007508:	01010113          	addi	sp,sp,16
    8000750c:	00001317          	auipc	t1,0x1
    80007510:	9b430067          	jr	-1612(t1) # 80007ec0 <uartputc_sync>

0000000080007514 <consoleintr>:
    80007514:	fe010113          	addi	sp,sp,-32
    80007518:	00813823          	sd	s0,16(sp)
    8000751c:	00913423          	sd	s1,8(sp)
    80007520:	01213023          	sd	s2,0(sp)
    80007524:	00113c23          	sd	ra,24(sp)
    80007528:	02010413          	addi	s0,sp,32
    8000752c:	00005917          	auipc	s2,0x5
    80007530:	67c90913          	addi	s2,s2,1660 # 8000cba8 <cons>
    80007534:	00050493          	mv	s1,a0
    80007538:	00090513          	mv	a0,s2
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	e40080e7          	jalr	-448(ra) # 8000837c <acquire>
    80007544:	02048c63          	beqz	s1,8000757c <consoleintr+0x68>
    80007548:	0a092783          	lw	a5,160(s2)
    8000754c:	09892703          	lw	a4,152(s2)
    80007550:	07f00693          	li	a3,127
    80007554:	40e7873b          	subw	a4,a5,a4
    80007558:	02e6e263          	bltu	a3,a4,8000757c <consoleintr+0x68>
    8000755c:	00d00713          	li	a4,13
    80007560:	04e48063          	beq	s1,a4,800075a0 <consoleintr+0x8c>
    80007564:	07f7f713          	andi	a4,a5,127
    80007568:	00e90733          	add	a4,s2,a4
    8000756c:	0017879b          	addiw	a5,a5,1
    80007570:	0af92023          	sw	a5,160(s2)
    80007574:	00970c23          	sb	s1,24(a4)
    80007578:	08f92e23          	sw	a5,156(s2)
    8000757c:	01013403          	ld	s0,16(sp)
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	00013903          	ld	s2,0(sp)
    8000758c:	00005517          	auipc	a0,0x5
    80007590:	61c50513          	addi	a0,a0,1564 # 8000cba8 <cons>
    80007594:	02010113          	addi	sp,sp,32
    80007598:	00001317          	auipc	t1,0x1
    8000759c:	eb030067          	jr	-336(t1) # 80008448 <release>
    800075a0:	00a00493          	li	s1,10
    800075a4:	fc1ff06f          	j	80007564 <consoleintr+0x50>

00000000800075a8 <consoleinit>:
    800075a8:	fe010113          	addi	sp,sp,-32
    800075ac:	00113c23          	sd	ra,24(sp)
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	02010413          	addi	s0,sp,32
    800075bc:	00005497          	auipc	s1,0x5
    800075c0:	5ec48493          	addi	s1,s1,1516 # 8000cba8 <cons>
    800075c4:	00048513          	mv	a0,s1
    800075c8:	00002597          	auipc	a1,0x2
    800075cc:	02058593          	addi	a1,a1,32 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800075d0:	00001097          	auipc	ra,0x1
    800075d4:	d88080e7          	jalr	-632(ra) # 80008358 <initlock>
    800075d8:	00000097          	auipc	ra,0x0
    800075dc:	7ac080e7          	jalr	1964(ra) # 80007d84 <uartinit>
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	01013403          	ld	s0,16(sp)
    800075e8:	00000797          	auipc	a5,0x0
    800075ec:	d9c78793          	addi	a5,a5,-612 # 80007384 <consoleread>
    800075f0:	0af4bc23          	sd	a5,184(s1)
    800075f4:	00000797          	auipc	a5,0x0
    800075f8:	cec78793          	addi	a5,a5,-788 # 800072e0 <consolewrite>
    800075fc:	0cf4b023          	sd	a5,192(s1)
    80007600:	00813483          	ld	s1,8(sp)
    80007604:	02010113          	addi	sp,sp,32
    80007608:	00008067          	ret

000000008000760c <console_read>:
    8000760c:	ff010113          	addi	sp,sp,-16
    80007610:	00813423          	sd	s0,8(sp)
    80007614:	01010413          	addi	s0,sp,16
    80007618:	00813403          	ld	s0,8(sp)
    8000761c:	00005317          	auipc	t1,0x5
    80007620:	64433303          	ld	t1,1604(t1) # 8000cc60 <devsw+0x10>
    80007624:	01010113          	addi	sp,sp,16
    80007628:	00030067          	jr	t1

000000008000762c <console_write>:
    8000762c:	ff010113          	addi	sp,sp,-16
    80007630:	00813423          	sd	s0,8(sp)
    80007634:	01010413          	addi	s0,sp,16
    80007638:	00813403          	ld	s0,8(sp)
    8000763c:	00005317          	auipc	t1,0x5
    80007640:	62c33303          	ld	t1,1580(t1) # 8000cc68 <devsw+0x18>
    80007644:	01010113          	addi	sp,sp,16
    80007648:	00030067          	jr	t1

000000008000764c <panic>:
    8000764c:	fe010113          	addi	sp,sp,-32
    80007650:	00113c23          	sd	ra,24(sp)
    80007654:	00813823          	sd	s0,16(sp)
    80007658:	00913423          	sd	s1,8(sp)
    8000765c:	02010413          	addi	s0,sp,32
    80007660:	00050493          	mv	s1,a0
    80007664:	00002517          	auipc	a0,0x2
    80007668:	f8c50513          	addi	a0,a0,-116 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000766c:	00005797          	auipc	a5,0x5
    80007670:	6807ae23          	sw	zero,1692(a5) # 8000cd08 <pr+0x18>
    80007674:	00000097          	auipc	ra,0x0
    80007678:	034080e7          	jalr	52(ra) # 800076a8 <__printf>
    8000767c:	00048513          	mv	a0,s1
    80007680:	00000097          	auipc	ra,0x0
    80007684:	028080e7          	jalr	40(ra) # 800076a8 <__printf>
    80007688:	00002517          	auipc	a0,0x2
    8000768c:	cf050513          	addi	a0,a0,-784 # 80009378 <CONSOLE_STATUS+0x368>
    80007690:	00000097          	auipc	ra,0x0
    80007694:	018080e7          	jalr	24(ra) # 800076a8 <__printf>
    80007698:	00100793          	li	a5,1
    8000769c:	00004717          	auipc	a4,0x4
    800076a0:	36f72623          	sw	a5,876(a4) # 8000ba08 <panicked>
    800076a4:	0000006f          	j	800076a4 <panic+0x58>

00000000800076a8 <__printf>:
    800076a8:	f3010113          	addi	sp,sp,-208
    800076ac:	08813023          	sd	s0,128(sp)
    800076b0:	07313423          	sd	s3,104(sp)
    800076b4:	09010413          	addi	s0,sp,144
    800076b8:	05813023          	sd	s8,64(sp)
    800076bc:	08113423          	sd	ra,136(sp)
    800076c0:	06913c23          	sd	s1,120(sp)
    800076c4:	07213823          	sd	s2,112(sp)
    800076c8:	07413023          	sd	s4,96(sp)
    800076cc:	05513c23          	sd	s5,88(sp)
    800076d0:	05613823          	sd	s6,80(sp)
    800076d4:	05713423          	sd	s7,72(sp)
    800076d8:	03913c23          	sd	s9,56(sp)
    800076dc:	03a13823          	sd	s10,48(sp)
    800076e0:	03b13423          	sd	s11,40(sp)
    800076e4:	00005317          	auipc	t1,0x5
    800076e8:	60c30313          	addi	t1,t1,1548 # 8000ccf0 <pr>
    800076ec:	01832c03          	lw	s8,24(t1)
    800076f0:	00b43423          	sd	a1,8(s0)
    800076f4:	00c43823          	sd	a2,16(s0)
    800076f8:	00d43c23          	sd	a3,24(s0)
    800076fc:	02e43023          	sd	a4,32(s0)
    80007700:	02f43423          	sd	a5,40(s0)
    80007704:	03043823          	sd	a6,48(s0)
    80007708:	03143c23          	sd	a7,56(s0)
    8000770c:	00050993          	mv	s3,a0
    80007710:	4a0c1663          	bnez	s8,80007bbc <__printf+0x514>
    80007714:	60098c63          	beqz	s3,80007d2c <__printf+0x684>
    80007718:	0009c503          	lbu	a0,0(s3)
    8000771c:	00840793          	addi	a5,s0,8
    80007720:	f6f43c23          	sd	a5,-136(s0)
    80007724:	00000493          	li	s1,0
    80007728:	22050063          	beqz	a0,80007948 <__printf+0x2a0>
    8000772c:	00002a37          	lui	s4,0x2
    80007730:	00018ab7          	lui	s5,0x18
    80007734:	000f4b37          	lui	s6,0xf4
    80007738:	00989bb7          	lui	s7,0x989
    8000773c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007740:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007744:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007748:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000774c:	00148c9b          	addiw	s9,s1,1
    80007750:	02500793          	li	a5,37
    80007754:	01998933          	add	s2,s3,s9
    80007758:	38f51263          	bne	a0,a5,80007adc <__printf+0x434>
    8000775c:	00094783          	lbu	a5,0(s2)
    80007760:	00078c9b          	sext.w	s9,a5
    80007764:	1e078263          	beqz	a5,80007948 <__printf+0x2a0>
    80007768:	0024849b          	addiw	s1,s1,2
    8000776c:	07000713          	li	a4,112
    80007770:	00998933          	add	s2,s3,s1
    80007774:	38e78a63          	beq	a5,a4,80007b08 <__printf+0x460>
    80007778:	20f76863          	bltu	a4,a5,80007988 <__printf+0x2e0>
    8000777c:	42a78863          	beq	a5,a0,80007bac <__printf+0x504>
    80007780:	06400713          	li	a4,100
    80007784:	40e79663          	bne	a5,a4,80007b90 <__printf+0x4e8>
    80007788:	f7843783          	ld	a5,-136(s0)
    8000778c:	0007a603          	lw	a2,0(a5)
    80007790:	00878793          	addi	a5,a5,8
    80007794:	f6f43c23          	sd	a5,-136(s0)
    80007798:	42064a63          	bltz	a2,80007bcc <__printf+0x524>
    8000779c:	00a00713          	li	a4,10
    800077a0:	02e677bb          	remuw	a5,a2,a4
    800077a4:	00002d97          	auipc	s11,0x2
    800077a8:	e74d8d93          	addi	s11,s11,-396 # 80009618 <digits>
    800077ac:	00900593          	li	a1,9
    800077b0:	0006051b          	sext.w	a0,a2
    800077b4:	00000c93          	li	s9,0
    800077b8:	02079793          	slli	a5,a5,0x20
    800077bc:	0207d793          	srli	a5,a5,0x20
    800077c0:	00fd87b3          	add	a5,s11,a5
    800077c4:	0007c783          	lbu	a5,0(a5)
    800077c8:	02e656bb          	divuw	a3,a2,a4
    800077cc:	f8f40023          	sb	a5,-128(s0)
    800077d0:	14c5d863          	bge	a1,a2,80007920 <__printf+0x278>
    800077d4:	06300593          	li	a1,99
    800077d8:	00100c93          	li	s9,1
    800077dc:	02e6f7bb          	remuw	a5,a3,a4
    800077e0:	02079793          	slli	a5,a5,0x20
    800077e4:	0207d793          	srli	a5,a5,0x20
    800077e8:	00fd87b3          	add	a5,s11,a5
    800077ec:	0007c783          	lbu	a5,0(a5)
    800077f0:	02e6d73b          	divuw	a4,a3,a4
    800077f4:	f8f400a3          	sb	a5,-127(s0)
    800077f8:	12a5f463          	bgeu	a1,a0,80007920 <__printf+0x278>
    800077fc:	00a00693          	li	a3,10
    80007800:	00900593          	li	a1,9
    80007804:	02d777bb          	remuw	a5,a4,a3
    80007808:	02079793          	slli	a5,a5,0x20
    8000780c:	0207d793          	srli	a5,a5,0x20
    80007810:	00fd87b3          	add	a5,s11,a5
    80007814:	0007c503          	lbu	a0,0(a5)
    80007818:	02d757bb          	divuw	a5,a4,a3
    8000781c:	f8a40123          	sb	a0,-126(s0)
    80007820:	48e5f263          	bgeu	a1,a4,80007ca4 <__printf+0x5fc>
    80007824:	06300513          	li	a0,99
    80007828:	02d7f5bb          	remuw	a1,a5,a3
    8000782c:	02059593          	slli	a1,a1,0x20
    80007830:	0205d593          	srli	a1,a1,0x20
    80007834:	00bd85b3          	add	a1,s11,a1
    80007838:	0005c583          	lbu	a1,0(a1)
    8000783c:	02d7d7bb          	divuw	a5,a5,a3
    80007840:	f8b401a3          	sb	a1,-125(s0)
    80007844:	48e57263          	bgeu	a0,a4,80007cc8 <__printf+0x620>
    80007848:	3e700513          	li	a0,999
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b40223          	sb	a1,-124(s0)
    80007868:	46e57663          	bgeu	a0,a4,80007cd4 <__printf+0x62c>
    8000786c:	02d7f5bb          	remuw	a1,a5,a3
    80007870:	02059593          	slli	a1,a1,0x20
    80007874:	0205d593          	srli	a1,a1,0x20
    80007878:	00bd85b3          	add	a1,s11,a1
    8000787c:	0005c583          	lbu	a1,0(a1)
    80007880:	02d7d7bb          	divuw	a5,a5,a3
    80007884:	f8b402a3          	sb	a1,-123(s0)
    80007888:	46ea7863          	bgeu	s4,a4,80007cf8 <__printf+0x650>
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b40323          	sb	a1,-122(s0)
    800078a8:	3eeaf863          	bgeu	s5,a4,80007c98 <__printf+0x5f0>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b403a3          	sb	a1,-121(s0)
    800078c8:	42eb7e63          	bgeu	s6,a4,80007d04 <__printf+0x65c>
    800078cc:	02d7f5bb          	remuw	a1,a5,a3
    800078d0:	02059593          	slli	a1,a1,0x20
    800078d4:	0205d593          	srli	a1,a1,0x20
    800078d8:	00bd85b3          	add	a1,s11,a1
    800078dc:	0005c583          	lbu	a1,0(a1)
    800078e0:	02d7d7bb          	divuw	a5,a5,a3
    800078e4:	f8b40423          	sb	a1,-120(s0)
    800078e8:	42ebfc63          	bgeu	s7,a4,80007d20 <__printf+0x678>
    800078ec:	02079793          	slli	a5,a5,0x20
    800078f0:	0207d793          	srli	a5,a5,0x20
    800078f4:	00fd8db3          	add	s11,s11,a5
    800078f8:	000dc703          	lbu	a4,0(s11)
    800078fc:	00a00793          	li	a5,10
    80007900:	00900c93          	li	s9,9
    80007904:	f8e404a3          	sb	a4,-119(s0)
    80007908:	00065c63          	bgez	a2,80007920 <__printf+0x278>
    8000790c:	f9040713          	addi	a4,s0,-112
    80007910:	00f70733          	add	a4,a4,a5
    80007914:	02d00693          	li	a3,45
    80007918:	fed70823          	sb	a3,-16(a4)
    8000791c:	00078c93          	mv	s9,a5
    80007920:	f8040793          	addi	a5,s0,-128
    80007924:	01978cb3          	add	s9,a5,s9
    80007928:	f7f40d13          	addi	s10,s0,-129
    8000792c:	000cc503          	lbu	a0,0(s9)
    80007930:	fffc8c93          	addi	s9,s9,-1
    80007934:	00000097          	auipc	ra,0x0
    80007938:	b90080e7          	jalr	-1136(ra) # 800074c4 <consputc>
    8000793c:	ffac98e3          	bne	s9,s10,8000792c <__printf+0x284>
    80007940:	00094503          	lbu	a0,0(s2)
    80007944:	e00514e3          	bnez	a0,8000774c <__printf+0xa4>
    80007948:	1a0c1663          	bnez	s8,80007af4 <__printf+0x44c>
    8000794c:	08813083          	ld	ra,136(sp)
    80007950:	08013403          	ld	s0,128(sp)
    80007954:	07813483          	ld	s1,120(sp)
    80007958:	07013903          	ld	s2,112(sp)
    8000795c:	06813983          	ld	s3,104(sp)
    80007960:	06013a03          	ld	s4,96(sp)
    80007964:	05813a83          	ld	s5,88(sp)
    80007968:	05013b03          	ld	s6,80(sp)
    8000796c:	04813b83          	ld	s7,72(sp)
    80007970:	04013c03          	ld	s8,64(sp)
    80007974:	03813c83          	ld	s9,56(sp)
    80007978:	03013d03          	ld	s10,48(sp)
    8000797c:	02813d83          	ld	s11,40(sp)
    80007980:	0d010113          	addi	sp,sp,208
    80007984:	00008067          	ret
    80007988:	07300713          	li	a4,115
    8000798c:	1ce78a63          	beq	a5,a4,80007b60 <__printf+0x4b8>
    80007990:	07800713          	li	a4,120
    80007994:	1ee79e63          	bne	a5,a4,80007b90 <__printf+0x4e8>
    80007998:	f7843783          	ld	a5,-136(s0)
    8000799c:	0007a703          	lw	a4,0(a5)
    800079a0:	00878793          	addi	a5,a5,8
    800079a4:	f6f43c23          	sd	a5,-136(s0)
    800079a8:	28074263          	bltz	a4,80007c2c <__printf+0x584>
    800079ac:	00002d97          	auipc	s11,0x2
    800079b0:	c6cd8d93          	addi	s11,s11,-916 # 80009618 <digits>
    800079b4:	00f77793          	andi	a5,a4,15
    800079b8:	00fd87b3          	add	a5,s11,a5
    800079bc:	0007c683          	lbu	a3,0(a5)
    800079c0:	00f00613          	li	a2,15
    800079c4:	0007079b          	sext.w	a5,a4
    800079c8:	f8d40023          	sb	a3,-128(s0)
    800079cc:	0047559b          	srliw	a1,a4,0x4
    800079d0:	0047569b          	srliw	a3,a4,0x4
    800079d4:	00000c93          	li	s9,0
    800079d8:	0ee65063          	bge	a2,a4,80007ab8 <__printf+0x410>
    800079dc:	00f6f693          	andi	a3,a3,15
    800079e0:	00dd86b3          	add	a3,s11,a3
    800079e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800079e8:	0087d79b          	srliw	a5,a5,0x8
    800079ec:	00100c93          	li	s9,1
    800079f0:	f8d400a3          	sb	a3,-127(s0)
    800079f4:	0cb67263          	bgeu	a2,a1,80007ab8 <__printf+0x410>
    800079f8:	00f7f693          	andi	a3,a5,15
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c583          	lbu	a1,0(a3)
    80007a04:	00f00613          	li	a2,15
    80007a08:	0047d69b          	srliw	a3,a5,0x4
    80007a0c:	f8b40123          	sb	a1,-126(s0)
    80007a10:	0047d593          	srli	a1,a5,0x4
    80007a14:	28f67e63          	bgeu	a2,a5,80007cb0 <__printf+0x608>
    80007a18:	00f6f693          	andi	a3,a3,15
    80007a1c:	00dd86b3          	add	a3,s11,a3
    80007a20:	0006c503          	lbu	a0,0(a3)
    80007a24:	0087d813          	srli	a6,a5,0x8
    80007a28:	0087d69b          	srliw	a3,a5,0x8
    80007a2c:	f8a401a3          	sb	a0,-125(s0)
    80007a30:	28b67663          	bgeu	a2,a1,80007cbc <__printf+0x614>
    80007a34:	00f6f693          	andi	a3,a3,15
    80007a38:	00dd86b3          	add	a3,s11,a3
    80007a3c:	0006c583          	lbu	a1,0(a3)
    80007a40:	00c7d513          	srli	a0,a5,0xc
    80007a44:	00c7d69b          	srliw	a3,a5,0xc
    80007a48:	f8b40223          	sb	a1,-124(s0)
    80007a4c:	29067a63          	bgeu	a2,a6,80007ce0 <__printf+0x638>
    80007a50:	00f6f693          	andi	a3,a3,15
    80007a54:	00dd86b3          	add	a3,s11,a3
    80007a58:	0006c583          	lbu	a1,0(a3)
    80007a5c:	0107d813          	srli	a6,a5,0x10
    80007a60:	0107d69b          	srliw	a3,a5,0x10
    80007a64:	f8b402a3          	sb	a1,-123(s0)
    80007a68:	28a67263          	bgeu	a2,a0,80007cec <__printf+0x644>
    80007a6c:	00f6f693          	andi	a3,a3,15
    80007a70:	00dd86b3          	add	a3,s11,a3
    80007a74:	0006c683          	lbu	a3,0(a3)
    80007a78:	0147d79b          	srliw	a5,a5,0x14
    80007a7c:	f8d40323          	sb	a3,-122(s0)
    80007a80:	21067663          	bgeu	a2,a6,80007c8c <__printf+0x5e4>
    80007a84:	02079793          	slli	a5,a5,0x20
    80007a88:	0207d793          	srli	a5,a5,0x20
    80007a8c:	00fd8db3          	add	s11,s11,a5
    80007a90:	000dc683          	lbu	a3,0(s11)
    80007a94:	00800793          	li	a5,8
    80007a98:	00700c93          	li	s9,7
    80007a9c:	f8d403a3          	sb	a3,-121(s0)
    80007aa0:	00075c63          	bgez	a4,80007ab8 <__printf+0x410>
    80007aa4:	f9040713          	addi	a4,s0,-112
    80007aa8:	00f70733          	add	a4,a4,a5
    80007aac:	02d00693          	li	a3,45
    80007ab0:	fed70823          	sb	a3,-16(a4)
    80007ab4:	00078c93          	mv	s9,a5
    80007ab8:	f8040793          	addi	a5,s0,-128
    80007abc:	01978cb3          	add	s9,a5,s9
    80007ac0:	f7f40d13          	addi	s10,s0,-129
    80007ac4:	000cc503          	lbu	a0,0(s9)
    80007ac8:	fffc8c93          	addi	s9,s9,-1
    80007acc:	00000097          	auipc	ra,0x0
    80007ad0:	9f8080e7          	jalr	-1544(ra) # 800074c4 <consputc>
    80007ad4:	ff9d18e3          	bne	s10,s9,80007ac4 <__printf+0x41c>
    80007ad8:	0100006f          	j	80007ae8 <__printf+0x440>
    80007adc:	00000097          	auipc	ra,0x0
    80007ae0:	9e8080e7          	jalr	-1560(ra) # 800074c4 <consputc>
    80007ae4:	000c8493          	mv	s1,s9
    80007ae8:	00094503          	lbu	a0,0(s2)
    80007aec:	c60510e3          	bnez	a0,8000774c <__printf+0xa4>
    80007af0:	e40c0ee3          	beqz	s8,8000794c <__printf+0x2a4>
    80007af4:	00005517          	auipc	a0,0x5
    80007af8:	1fc50513          	addi	a0,a0,508 # 8000ccf0 <pr>
    80007afc:	00001097          	auipc	ra,0x1
    80007b00:	94c080e7          	jalr	-1716(ra) # 80008448 <release>
    80007b04:	e49ff06f          	j	8000794c <__printf+0x2a4>
    80007b08:	f7843783          	ld	a5,-136(s0)
    80007b0c:	03000513          	li	a0,48
    80007b10:	01000d13          	li	s10,16
    80007b14:	00878713          	addi	a4,a5,8
    80007b18:	0007bc83          	ld	s9,0(a5)
    80007b1c:	f6e43c23          	sd	a4,-136(s0)
    80007b20:	00000097          	auipc	ra,0x0
    80007b24:	9a4080e7          	jalr	-1628(ra) # 800074c4 <consputc>
    80007b28:	07800513          	li	a0,120
    80007b2c:	00000097          	auipc	ra,0x0
    80007b30:	998080e7          	jalr	-1640(ra) # 800074c4 <consputc>
    80007b34:	00002d97          	auipc	s11,0x2
    80007b38:	ae4d8d93          	addi	s11,s11,-1308 # 80009618 <digits>
    80007b3c:	03ccd793          	srli	a5,s9,0x3c
    80007b40:	00fd87b3          	add	a5,s11,a5
    80007b44:	0007c503          	lbu	a0,0(a5)
    80007b48:	fffd0d1b          	addiw	s10,s10,-1
    80007b4c:	004c9c93          	slli	s9,s9,0x4
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	974080e7          	jalr	-1676(ra) # 800074c4 <consputc>
    80007b58:	fe0d12e3          	bnez	s10,80007b3c <__printf+0x494>
    80007b5c:	f8dff06f          	j	80007ae8 <__printf+0x440>
    80007b60:	f7843783          	ld	a5,-136(s0)
    80007b64:	0007bc83          	ld	s9,0(a5)
    80007b68:	00878793          	addi	a5,a5,8
    80007b6c:	f6f43c23          	sd	a5,-136(s0)
    80007b70:	000c9a63          	bnez	s9,80007b84 <__printf+0x4dc>
    80007b74:	1080006f          	j	80007c7c <__printf+0x5d4>
    80007b78:	001c8c93          	addi	s9,s9,1
    80007b7c:	00000097          	auipc	ra,0x0
    80007b80:	948080e7          	jalr	-1720(ra) # 800074c4 <consputc>
    80007b84:	000cc503          	lbu	a0,0(s9)
    80007b88:	fe0518e3          	bnez	a0,80007b78 <__printf+0x4d0>
    80007b8c:	f5dff06f          	j	80007ae8 <__printf+0x440>
    80007b90:	02500513          	li	a0,37
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	930080e7          	jalr	-1744(ra) # 800074c4 <consputc>
    80007b9c:	000c8513          	mv	a0,s9
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	924080e7          	jalr	-1756(ra) # 800074c4 <consputc>
    80007ba8:	f41ff06f          	j	80007ae8 <__printf+0x440>
    80007bac:	02500513          	li	a0,37
    80007bb0:	00000097          	auipc	ra,0x0
    80007bb4:	914080e7          	jalr	-1772(ra) # 800074c4 <consputc>
    80007bb8:	f31ff06f          	j	80007ae8 <__printf+0x440>
    80007bbc:	00030513          	mv	a0,t1
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	7bc080e7          	jalr	1980(ra) # 8000837c <acquire>
    80007bc8:	b4dff06f          	j	80007714 <__printf+0x6c>
    80007bcc:	40c0053b          	negw	a0,a2
    80007bd0:	00a00713          	li	a4,10
    80007bd4:	02e576bb          	remuw	a3,a0,a4
    80007bd8:	00002d97          	auipc	s11,0x2
    80007bdc:	a40d8d93          	addi	s11,s11,-1472 # 80009618 <digits>
    80007be0:	ff700593          	li	a1,-9
    80007be4:	02069693          	slli	a3,a3,0x20
    80007be8:	0206d693          	srli	a3,a3,0x20
    80007bec:	00dd86b3          	add	a3,s11,a3
    80007bf0:	0006c683          	lbu	a3,0(a3)
    80007bf4:	02e557bb          	divuw	a5,a0,a4
    80007bf8:	f8d40023          	sb	a3,-128(s0)
    80007bfc:	10b65e63          	bge	a2,a1,80007d18 <__printf+0x670>
    80007c00:	06300593          	li	a1,99
    80007c04:	02e7f6bb          	remuw	a3,a5,a4
    80007c08:	02069693          	slli	a3,a3,0x20
    80007c0c:	0206d693          	srli	a3,a3,0x20
    80007c10:	00dd86b3          	add	a3,s11,a3
    80007c14:	0006c683          	lbu	a3,0(a3)
    80007c18:	02e7d73b          	divuw	a4,a5,a4
    80007c1c:	00200793          	li	a5,2
    80007c20:	f8d400a3          	sb	a3,-127(s0)
    80007c24:	bca5ece3          	bltu	a1,a0,800077fc <__printf+0x154>
    80007c28:	ce5ff06f          	j	8000790c <__printf+0x264>
    80007c2c:	40e007bb          	negw	a5,a4
    80007c30:	00002d97          	auipc	s11,0x2
    80007c34:	9e8d8d93          	addi	s11,s11,-1560 # 80009618 <digits>
    80007c38:	00f7f693          	andi	a3,a5,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c583          	lbu	a1,0(a3)
    80007c44:	ff100613          	li	a2,-15
    80007c48:	0047d69b          	srliw	a3,a5,0x4
    80007c4c:	f8b40023          	sb	a1,-128(s0)
    80007c50:	0047d59b          	srliw	a1,a5,0x4
    80007c54:	0ac75e63          	bge	a4,a2,80007d10 <__printf+0x668>
    80007c58:	00f6f693          	andi	a3,a3,15
    80007c5c:	00dd86b3          	add	a3,s11,a3
    80007c60:	0006c603          	lbu	a2,0(a3)
    80007c64:	00f00693          	li	a3,15
    80007c68:	0087d79b          	srliw	a5,a5,0x8
    80007c6c:	f8c400a3          	sb	a2,-127(s0)
    80007c70:	d8b6e4e3          	bltu	a3,a1,800079f8 <__printf+0x350>
    80007c74:	00200793          	li	a5,2
    80007c78:	e2dff06f          	j	80007aa4 <__printf+0x3fc>
    80007c7c:	00002c97          	auipc	s9,0x2
    80007c80:	97cc8c93          	addi	s9,s9,-1668 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80007c84:	02800513          	li	a0,40
    80007c88:	ef1ff06f          	j	80007b78 <__printf+0x4d0>
    80007c8c:	00700793          	li	a5,7
    80007c90:	00600c93          	li	s9,6
    80007c94:	e0dff06f          	j	80007aa0 <__printf+0x3f8>
    80007c98:	00700793          	li	a5,7
    80007c9c:	00600c93          	li	s9,6
    80007ca0:	c69ff06f          	j	80007908 <__printf+0x260>
    80007ca4:	00300793          	li	a5,3
    80007ca8:	00200c93          	li	s9,2
    80007cac:	c5dff06f          	j	80007908 <__printf+0x260>
    80007cb0:	00300793          	li	a5,3
    80007cb4:	00200c93          	li	s9,2
    80007cb8:	de9ff06f          	j	80007aa0 <__printf+0x3f8>
    80007cbc:	00400793          	li	a5,4
    80007cc0:	00300c93          	li	s9,3
    80007cc4:	dddff06f          	j	80007aa0 <__printf+0x3f8>
    80007cc8:	00400793          	li	a5,4
    80007ccc:	00300c93          	li	s9,3
    80007cd0:	c39ff06f          	j	80007908 <__printf+0x260>
    80007cd4:	00500793          	li	a5,5
    80007cd8:	00400c93          	li	s9,4
    80007cdc:	c2dff06f          	j	80007908 <__printf+0x260>
    80007ce0:	00500793          	li	a5,5
    80007ce4:	00400c93          	li	s9,4
    80007ce8:	db9ff06f          	j	80007aa0 <__printf+0x3f8>
    80007cec:	00600793          	li	a5,6
    80007cf0:	00500c93          	li	s9,5
    80007cf4:	dadff06f          	j	80007aa0 <__printf+0x3f8>
    80007cf8:	00600793          	li	a5,6
    80007cfc:	00500c93          	li	s9,5
    80007d00:	c09ff06f          	j	80007908 <__printf+0x260>
    80007d04:	00800793          	li	a5,8
    80007d08:	00700c93          	li	s9,7
    80007d0c:	bfdff06f          	j	80007908 <__printf+0x260>
    80007d10:	00100793          	li	a5,1
    80007d14:	d91ff06f          	j	80007aa4 <__printf+0x3fc>
    80007d18:	00100793          	li	a5,1
    80007d1c:	bf1ff06f          	j	8000790c <__printf+0x264>
    80007d20:	00900793          	li	a5,9
    80007d24:	00800c93          	li	s9,8
    80007d28:	be1ff06f          	j	80007908 <__printf+0x260>
    80007d2c:	00002517          	auipc	a0,0x2
    80007d30:	8d450513          	addi	a0,a0,-1836 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007d34:	00000097          	auipc	ra,0x0
    80007d38:	918080e7          	jalr	-1768(ra) # 8000764c <panic>

0000000080007d3c <printfinit>:
    80007d3c:	fe010113          	addi	sp,sp,-32
    80007d40:	00813823          	sd	s0,16(sp)
    80007d44:	00913423          	sd	s1,8(sp)
    80007d48:	00113c23          	sd	ra,24(sp)
    80007d4c:	02010413          	addi	s0,sp,32
    80007d50:	00005497          	auipc	s1,0x5
    80007d54:	fa048493          	addi	s1,s1,-96 # 8000ccf0 <pr>
    80007d58:	00048513          	mv	a0,s1
    80007d5c:	00002597          	auipc	a1,0x2
    80007d60:	8b458593          	addi	a1,a1,-1868 # 80009610 <CONSOLE_STATUS+0x600>
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	5f4080e7          	jalr	1524(ra) # 80008358 <initlock>
    80007d6c:	01813083          	ld	ra,24(sp)
    80007d70:	01013403          	ld	s0,16(sp)
    80007d74:	0004ac23          	sw	zero,24(s1)
    80007d78:	00813483          	ld	s1,8(sp)
    80007d7c:	02010113          	addi	sp,sp,32
    80007d80:	00008067          	ret

0000000080007d84 <uartinit>:
    80007d84:	ff010113          	addi	sp,sp,-16
    80007d88:	00813423          	sd	s0,8(sp)
    80007d8c:	01010413          	addi	s0,sp,16
    80007d90:	100007b7          	lui	a5,0x10000
    80007d94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d98:	f8000713          	li	a4,-128
    80007d9c:	00e781a3          	sb	a4,3(a5)
    80007da0:	00300713          	li	a4,3
    80007da4:	00e78023          	sb	a4,0(a5)
    80007da8:	000780a3          	sb	zero,1(a5)
    80007dac:	00e781a3          	sb	a4,3(a5)
    80007db0:	00700693          	li	a3,7
    80007db4:	00d78123          	sb	a3,2(a5)
    80007db8:	00e780a3          	sb	a4,1(a5)
    80007dbc:	00813403          	ld	s0,8(sp)
    80007dc0:	01010113          	addi	sp,sp,16
    80007dc4:	00008067          	ret

0000000080007dc8 <uartputc>:
    80007dc8:	00004797          	auipc	a5,0x4
    80007dcc:	c407a783          	lw	a5,-960(a5) # 8000ba08 <panicked>
    80007dd0:	00078463          	beqz	a5,80007dd8 <uartputc+0x10>
    80007dd4:	0000006f          	j	80007dd4 <uartputc+0xc>
    80007dd8:	fd010113          	addi	sp,sp,-48
    80007ddc:	02813023          	sd	s0,32(sp)
    80007de0:	00913c23          	sd	s1,24(sp)
    80007de4:	01213823          	sd	s2,16(sp)
    80007de8:	01313423          	sd	s3,8(sp)
    80007dec:	02113423          	sd	ra,40(sp)
    80007df0:	03010413          	addi	s0,sp,48
    80007df4:	00004917          	auipc	s2,0x4
    80007df8:	c1c90913          	addi	s2,s2,-996 # 8000ba10 <uart_tx_r>
    80007dfc:	00093783          	ld	a5,0(s2)
    80007e00:	00004497          	auipc	s1,0x4
    80007e04:	c1848493          	addi	s1,s1,-1000 # 8000ba18 <uart_tx_w>
    80007e08:	0004b703          	ld	a4,0(s1)
    80007e0c:	02078693          	addi	a3,a5,32
    80007e10:	00050993          	mv	s3,a0
    80007e14:	02e69c63          	bne	a3,a4,80007e4c <uartputc+0x84>
    80007e18:	00001097          	auipc	ra,0x1
    80007e1c:	834080e7          	jalr	-1996(ra) # 8000864c <push_on>
    80007e20:	00093783          	ld	a5,0(s2)
    80007e24:	0004b703          	ld	a4,0(s1)
    80007e28:	02078793          	addi	a5,a5,32
    80007e2c:	00e79463          	bne	a5,a4,80007e34 <uartputc+0x6c>
    80007e30:	0000006f          	j	80007e30 <uartputc+0x68>
    80007e34:	00001097          	auipc	ra,0x1
    80007e38:	88c080e7          	jalr	-1908(ra) # 800086c0 <pop_on>
    80007e3c:	00093783          	ld	a5,0(s2)
    80007e40:	0004b703          	ld	a4,0(s1)
    80007e44:	02078693          	addi	a3,a5,32
    80007e48:	fce688e3          	beq	a3,a4,80007e18 <uartputc+0x50>
    80007e4c:	01f77693          	andi	a3,a4,31
    80007e50:	00005597          	auipc	a1,0x5
    80007e54:	ec058593          	addi	a1,a1,-320 # 8000cd10 <uart_tx_buf>
    80007e58:	00d586b3          	add	a3,a1,a3
    80007e5c:	00170713          	addi	a4,a4,1
    80007e60:	01368023          	sb	s3,0(a3)
    80007e64:	00e4b023          	sd	a4,0(s1)
    80007e68:	10000637          	lui	a2,0x10000
    80007e6c:	02f71063          	bne	a4,a5,80007e8c <uartputc+0xc4>
    80007e70:	0340006f          	j	80007ea4 <uartputc+0xdc>
    80007e74:	00074703          	lbu	a4,0(a4)
    80007e78:	00f93023          	sd	a5,0(s2)
    80007e7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e80:	00093783          	ld	a5,0(s2)
    80007e84:	0004b703          	ld	a4,0(s1)
    80007e88:	00f70e63          	beq	a4,a5,80007ea4 <uartputc+0xdc>
    80007e8c:	00564683          	lbu	a3,5(a2)
    80007e90:	01f7f713          	andi	a4,a5,31
    80007e94:	00e58733          	add	a4,a1,a4
    80007e98:	0206f693          	andi	a3,a3,32
    80007e9c:	00178793          	addi	a5,a5,1
    80007ea0:	fc069ae3          	bnez	a3,80007e74 <uartputc+0xac>
    80007ea4:	02813083          	ld	ra,40(sp)
    80007ea8:	02013403          	ld	s0,32(sp)
    80007eac:	01813483          	ld	s1,24(sp)
    80007eb0:	01013903          	ld	s2,16(sp)
    80007eb4:	00813983          	ld	s3,8(sp)
    80007eb8:	03010113          	addi	sp,sp,48
    80007ebc:	00008067          	ret

0000000080007ec0 <uartputc_sync>:
    80007ec0:	ff010113          	addi	sp,sp,-16
    80007ec4:	00813423          	sd	s0,8(sp)
    80007ec8:	01010413          	addi	s0,sp,16
    80007ecc:	00004717          	auipc	a4,0x4
    80007ed0:	b3c72703          	lw	a4,-1220(a4) # 8000ba08 <panicked>
    80007ed4:	02071663          	bnez	a4,80007f00 <uartputc_sync+0x40>
    80007ed8:	00050793          	mv	a5,a0
    80007edc:	100006b7          	lui	a3,0x10000
    80007ee0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ee4:	02077713          	andi	a4,a4,32
    80007ee8:	fe070ce3          	beqz	a4,80007ee0 <uartputc_sync+0x20>
    80007eec:	0ff7f793          	andi	a5,a5,255
    80007ef0:	00f68023          	sb	a5,0(a3)
    80007ef4:	00813403          	ld	s0,8(sp)
    80007ef8:	01010113          	addi	sp,sp,16
    80007efc:	00008067          	ret
    80007f00:	0000006f          	j	80007f00 <uartputc_sync+0x40>

0000000080007f04 <uartstart>:
    80007f04:	ff010113          	addi	sp,sp,-16
    80007f08:	00813423          	sd	s0,8(sp)
    80007f0c:	01010413          	addi	s0,sp,16
    80007f10:	00004617          	auipc	a2,0x4
    80007f14:	b0060613          	addi	a2,a2,-1280 # 8000ba10 <uart_tx_r>
    80007f18:	00004517          	auipc	a0,0x4
    80007f1c:	b0050513          	addi	a0,a0,-1280 # 8000ba18 <uart_tx_w>
    80007f20:	00063783          	ld	a5,0(a2)
    80007f24:	00053703          	ld	a4,0(a0)
    80007f28:	04f70263          	beq	a4,a5,80007f6c <uartstart+0x68>
    80007f2c:	100005b7          	lui	a1,0x10000
    80007f30:	00005817          	auipc	a6,0x5
    80007f34:	de080813          	addi	a6,a6,-544 # 8000cd10 <uart_tx_buf>
    80007f38:	01c0006f          	j	80007f54 <uartstart+0x50>
    80007f3c:	0006c703          	lbu	a4,0(a3)
    80007f40:	00f63023          	sd	a5,0(a2)
    80007f44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f48:	00063783          	ld	a5,0(a2)
    80007f4c:	00053703          	ld	a4,0(a0)
    80007f50:	00f70e63          	beq	a4,a5,80007f6c <uartstart+0x68>
    80007f54:	01f7f713          	andi	a4,a5,31
    80007f58:	00e806b3          	add	a3,a6,a4
    80007f5c:	0055c703          	lbu	a4,5(a1)
    80007f60:	00178793          	addi	a5,a5,1
    80007f64:	02077713          	andi	a4,a4,32
    80007f68:	fc071ae3          	bnez	a4,80007f3c <uartstart+0x38>
    80007f6c:	00813403          	ld	s0,8(sp)
    80007f70:	01010113          	addi	sp,sp,16
    80007f74:	00008067          	ret

0000000080007f78 <uartgetc>:
    80007f78:	ff010113          	addi	sp,sp,-16
    80007f7c:	00813423          	sd	s0,8(sp)
    80007f80:	01010413          	addi	s0,sp,16
    80007f84:	10000737          	lui	a4,0x10000
    80007f88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f8c:	0017f793          	andi	a5,a5,1
    80007f90:	00078c63          	beqz	a5,80007fa8 <uartgetc+0x30>
    80007f94:	00074503          	lbu	a0,0(a4)
    80007f98:	0ff57513          	andi	a0,a0,255
    80007f9c:	00813403          	ld	s0,8(sp)
    80007fa0:	01010113          	addi	sp,sp,16
    80007fa4:	00008067          	ret
    80007fa8:	fff00513          	li	a0,-1
    80007fac:	ff1ff06f          	j	80007f9c <uartgetc+0x24>

0000000080007fb0 <uartintr>:
    80007fb0:	100007b7          	lui	a5,0x10000
    80007fb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007fb8:	0017f793          	andi	a5,a5,1
    80007fbc:	0a078463          	beqz	a5,80008064 <uartintr+0xb4>
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	00113c23          	sd	ra,24(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	100004b7          	lui	s1,0x10000
    80007fd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007fdc:	0ff57513          	andi	a0,a0,255
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	534080e7          	jalr	1332(ra) # 80007514 <consoleintr>
    80007fe8:	0054c783          	lbu	a5,5(s1)
    80007fec:	0017f793          	andi	a5,a5,1
    80007ff0:	fe0794e3          	bnez	a5,80007fd8 <uartintr+0x28>
    80007ff4:	00004617          	auipc	a2,0x4
    80007ff8:	a1c60613          	addi	a2,a2,-1508 # 8000ba10 <uart_tx_r>
    80007ffc:	00004517          	auipc	a0,0x4
    80008000:	a1c50513          	addi	a0,a0,-1508 # 8000ba18 <uart_tx_w>
    80008004:	00063783          	ld	a5,0(a2)
    80008008:	00053703          	ld	a4,0(a0)
    8000800c:	04f70263          	beq	a4,a5,80008050 <uartintr+0xa0>
    80008010:	100005b7          	lui	a1,0x10000
    80008014:	00005817          	auipc	a6,0x5
    80008018:	cfc80813          	addi	a6,a6,-772 # 8000cd10 <uart_tx_buf>
    8000801c:	01c0006f          	j	80008038 <uartintr+0x88>
    80008020:	0006c703          	lbu	a4,0(a3)
    80008024:	00f63023          	sd	a5,0(a2)
    80008028:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000802c:	00063783          	ld	a5,0(a2)
    80008030:	00053703          	ld	a4,0(a0)
    80008034:	00f70e63          	beq	a4,a5,80008050 <uartintr+0xa0>
    80008038:	01f7f713          	andi	a4,a5,31
    8000803c:	00e806b3          	add	a3,a6,a4
    80008040:	0055c703          	lbu	a4,5(a1)
    80008044:	00178793          	addi	a5,a5,1
    80008048:	02077713          	andi	a4,a4,32
    8000804c:	fc071ae3          	bnez	a4,80008020 <uartintr+0x70>
    80008050:	01813083          	ld	ra,24(sp)
    80008054:	01013403          	ld	s0,16(sp)
    80008058:	00813483          	ld	s1,8(sp)
    8000805c:	02010113          	addi	sp,sp,32
    80008060:	00008067          	ret
    80008064:	00004617          	auipc	a2,0x4
    80008068:	9ac60613          	addi	a2,a2,-1620 # 8000ba10 <uart_tx_r>
    8000806c:	00004517          	auipc	a0,0x4
    80008070:	9ac50513          	addi	a0,a0,-1620 # 8000ba18 <uart_tx_w>
    80008074:	00063783          	ld	a5,0(a2)
    80008078:	00053703          	ld	a4,0(a0)
    8000807c:	04f70263          	beq	a4,a5,800080c0 <uartintr+0x110>
    80008080:	100005b7          	lui	a1,0x10000
    80008084:	00005817          	auipc	a6,0x5
    80008088:	c8c80813          	addi	a6,a6,-884 # 8000cd10 <uart_tx_buf>
    8000808c:	01c0006f          	j	800080a8 <uartintr+0xf8>
    80008090:	0006c703          	lbu	a4,0(a3)
    80008094:	00f63023          	sd	a5,0(a2)
    80008098:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000809c:	00063783          	ld	a5,0(a2)
    800080a0:	00053703          	ld	a4,0(a0)
    800080a4:	02f70063          	beq	a4,a5,800080c4 <uartintr+0x114>
    800080a8:	01f7f713          	andi	a4,a5,31
    800080ac:	00e806b3          	add	a3,a6,a4
    800080b0:	0055c703          	lbu	a4,5(a1)
    800080b4:	00178793          	addi	a5,a5,1
    800080b8:	02077713          	andi	a4,a4,32
    800080bc:	fc071ae3          	bnez	a4,80008090 <uartintr+0xe0>
    800080c0:	00008067          	ret
    800080c4:	00008067          	ret

00000000800080c8 <kinit>:
    800080c8:	fc010113          	addi	sp,sp,-64
    800080cc:	02913423          	sd	s1,40(sp)
    800080d0:	fffff7b7          	lui	a5,0xfffff
    800080d4:	00006497          	auipc	s1,0x6
    800080d8:	c5b48493          	addi	s1,s1,-933 # 8000dd2f <end+0xfff>
    800080dc:	02813823          	sd	s0,48(sp)
    800080e0:	01313c23          	sd	s3,24(sp)
    800080e4:	00f4f4b3          	and	s1,s1,a5
    800080e8:	02113c23          	sd	ra,56(sp)
    800080ec:	03213023          	sd	s2,32(sp)
    800080f0:	01413823          	sd	s4,16(sp)
    800080f4:	01513423          	sd	s5,8(sp)
    800080f8:	04010413          	addi	s0,sp,64
    800080fc:	000017b7          	lui	a5,0x1
    80008100:	01100993          	li	s3,17
    80008104:	00f487b3          	add	a5,s1,a5
    80008108:	01b99993          	slli	s3,s3,0x1b
    8000810c:	06f9e063          	bltu	s3,a5,8000816c <kinit+0xa4>
    80008110:	00005a97          	auipc	s5,0x5
    80008114:	c20a8a93          	addi	s5,s5,-992 # 8000cd30 <end>
    80008118:	0754ec63          	bltu	s1,s5,80008190 <kinit+0xc8>
    8000811c:	0734fa63          	bgeu	s1,s3,80008190 <kinit+0xc8>
    80008120:	00088a37          	lui	s4,0x88
    80008124:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008128:	00004917          	auipc	s2,0x4
    8000812c:	8f890913          	addi	s2,s2,-1800 # 8000ba20 <kmem>
    80008130:	00ca1a13          	slli	s4,s4,0xc
    80008134:	0140006f          	j	80008148 <kinit+0x80>
    80008138:	000017b7          	lui	a5,0x1
    8000813c:	00f484b3          	add	s1,s1,a5
    80008140:	0554e863          	bltu	s1,s5,80008190 <kinit+0xc8>
    80008144:	0534f663          	bgeu	s1,s3,80008190 <kinit+0xc8>
    80008148:	00001637          	lui	a2,0x1
    8000814c:	00100593          	li	a1,1
    80008150:	00048513          	mv	a0,s1
    80008154:	00000097          	auipc	ra,0x0
    80008158:	5e4080e7          	jalr	1508(ra) # 80008738 <__memset>
    8000815c:	00093783          	ld	a5,0(s2)
    80008160:	00f4b023          	sd	a5,0(s1)
    80008164:	00993023          	sd	s1,0(s2)
    80008168:	fd4498e3          	bne	s1,s4,80008138 <kinit+0x70>
    8000816c:	03813083          	ld	ra,56(sp)
    80008170:	03013403          	ld	s0,48(sp)
    80008174:	02813483          	ld	s1,40(sp)
    80008178:	02013903          	ld	s2,32(sp)
    8000817c:	01813983          	ld	s3,24(sp)
    80008180:	01013a03          	ld	s4,16(sp)
    80008184:	00813a83          	ld	s5,8(sp)
    80008188:	04010113          	addi	sp,sp,64
    8000818c:	00008067          	ret
    80008190:	00001517          	auipc	a0,0x1
    80008194:	4a050513          	addi	a0,a0,1184 # 80009630 <digits+0x18>
    80008198:	fffff097          	auipc	ra,0xfffff
    8000819c:	4b4080e7          	jalr	1204(ra) # 8000764c <panic>

00000000800081a0 <freerange>:
    800081a0:	fc010113          	addi	sp,sp,-64
    800081a4:	000017b7          	lui	a5,0x1
    800081a8:	02913423          	sd	s1,40(sp)
    800081ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800081b0:	009504b3          	add	s1,a0,s1
    800081b4:	fffff537          	lui	a0,0xfffff
    800081b8:	02813823          	sd	s0,48(sp)
    800081bc:	02113c23          	sd	ra,56(sp)
    800081c0:	03213023          	sd	s2,32(sp)
    800081c4:	01313c23          	sd	s3,24(sp)
    800081c8:	01413823          	sd	s4,16(sp)
    800081cc:	01513423          	sd	s5,8(sp)
    800081d0:	01613023          	sd	s6,0(sp)
    800081d4:	04010413          	addi	s0,sp,64
    800081d8:	00a4f4b3          	and	s1,s1,a0
    800081dc:	00f487b3          	add	a5,s1,a5
    800081e0:	06f5e463          	bltu	a1,a5,80008248 <freerange+0xa8>
    800081e4:	00005a97          	auipc	s5,0x5
    800081e8:	b4ca8a93          	addi	s5,s5,-1204 # 8000cd30 <end>
    800081ec:	0954e263          	bltu	s1,s5,80008270 <freerange+0xd0>
    800081f0:	01100993          	li	s3,17
    800081f4:	01b99993          	slli	s3,s3,0x1b
    800081f8:	0734fc63          	bgeu	s1,s3,80008270 <freerange+0xd0>
    800081fc:	00058a13          	mv	s4,a1
    80008200:	00004917          	auipc	s2,0x4
    80008204:	82090913          	addi	s2,s2,-2016 # 8000ba20 <kmem>
    80008208:	00002b37          	lui	s6,0x2
    8000820c:	0140006f          	j	80008220 <freerange+0x80>
    80008210:	000017b7          	lui	a5,0x1
    80008214:	00f484b3          	add	s1,s1,a5
    80008218:	0554ec63          	bltu	s1,s5,80008270 <freerange+0xd0>
    8000821c:	0534fa63          	bgeu	s1,s3,80008270 <freerange+0xd0>
    80008220:	00001637          	lui	a2,0x1
    80008224:	00100593          	li	a1,1
    80008228:	00048513          	mv	a0,s1
    8000822c:	00000097          	auipc	ra,0x0
    80008230:	50c080e7          	jalr	1292(ra) # 80008738 <__memset>
    80008234:	00093703          	ld	a4,0(s2)
    80008238:	016487b3          	add	a5,s1,s6
    8000823c:	00e4b023          	sd	a4,0(s1)
    80008240:	00993023          	sd	s1,0(s2)
    80008244:	fcfa76e3          	bgeu	s4,a5,80008210 <freerange+0x70>
    80008248:	03813083          	ld	ra,56(sp)
    8000824c:	03013403          	ld	s0,48(sp)
    80008250:	02813483          	ld	s1,40(sp)
    80008254:	02013903          	ld	s2,32(sp)
    80008258:	01813983          	ld	s3,24(sp)
    8000825c:	01013a03          	ld	s4,16(sp)
    80008260:	00813a83          	ld	s5,8(sp)
    80008264:	00013b03          	ld	s6,0(sp)
    80008268:	04010113          	addi	sp,sp,64
    8000826c:	00008067          	ret
    80008270:	00001517          	auipc	a0,0x1
    80008274:	3c050513          	addi	a0,a0,960 # 80009630 <digits+0x18>
    80008278:	fffff097          	auipc	ra,0xfffff
    8000827c:	3d4080e7          	jalr	980(ra) # 8000764c <panic>

0000000080008280 <kfree>:
    80008280:	fe010113          	addi	sp,sp,-32
    80008284:	00813823          	sd	s0,16(sp)
    80008288:	00113c23          	sd	ra,24(sp)
    8000828c:	00913423          	sd	s1,8(sp)
    80008290:	02010413          	addi	s0,sp,32
    80008294:	03451793          	slli	a5,a0,0x34
    80008298:	04079c63          	bnez	a5,800082f0 <kfree+0x70>
    8000829c:	00005797          	auipc	a5,0x5
    800082a0:	a9478793          	addi	a5,a5,-1388 # 8000cd30 <end>
    800082a4:	00050493          	mv	s1,a0
    800082a8:	04f56463          	bltu	a0,a5,800082f0 <kfree+0x70>
    800082ac:	01100793          	li	a5,17
    800082b0:	01b79793          	slli	a5,a5,0x1b
    800082b4:	02f57e63          	bgeu	a0,a5,800082f0 <kfree+0x70>
    800082b8:	00001637          	lui	a2,0x1
    800082bc:	00100593          	li	a1,1
    800082c0:	00000097          	auipc	ra,0x0
    800082c4:	478080e7          	jalr	1144(ra) # 80008738 <__memset>
    800082c8:	00003797          	auipc	a5,0x3
    800082cc:	75878793          	addi	a5,a5,1880 # 8000ba20 <kmem>
    800082d0:	0007b703          	ld	a4,0(a5)
    800082d4:	01813083          	ld	ra,24(sp)
    800082d8:	01013403          	ld	s0,16(sp)
    800082dc:	00e4b023          	sd	a4,0(s1)
    800082e0:	0097b023          	sd	s1,0(a5)
    800082e4:	00813483          	ld	s1,8(sp)
    800082e8:	02010113          	addi	sp,sp,32
    800082ec:	00008067          	ret
    800082f0:	00001517          	auipc	a0,0x1
    800082f4:	34050513          	addi	a0,a0,832 # 80009630 <digits+0x18>
    800082f8:	fffff097          	auipc	ra,0xfffff
    800082fc:	354080e7          	jalr	852(ra) # 8000764c <panic>

0000000080008300 <kalloc>:
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00913423          	sd	s1,8(sp)
    8000830c:	00113c23          	sd	ra,24(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	00003797          	auipc	a5,0x3
    80008318:	70c78793          	addi	a5,a5,1804 # 8000ba20 <kmem>
    8000831c:	0007b483          	ld	s1,0(a5)
    80008320:	02048063          	beqz	s1,80008340 <kalloc+0x40>
    80008324:	0004b703          	ld	a4,0(s1)
    80008328:	00001637          	lui	a2,0x1
    8000832c:	00500593          	li	a1,5
    80008330:	00048513          	mv	a0,s1
    80008334:	00e7b023          	sd	a4,0(a5)
    80008338:	00000097          	auipc	ra,0x0
    8000833c:	400080e7          	jalr	1024(ra) # 80008738 <__memset>
    80008340:	01813083          	ld	ra,24(sp)
    80008344:	01013403          	ld	s0,16(sp)
    80008348:	00048513          	mv	a0,s1
    8000834c:	00813483          	ld	s1,8(sp)
    80008350:	02010113          	addi	sp,sp,32
    80008354:	00008067          	ret

0000000080008358 <initlock>:
    80008358:	ff010113          	addi	sp,sp,-16
    8000835c:	00813423          	sd	s0,8(sp)
    80008360:	01010413          	addi	s0,sp,16
    80008364:	00813403          	ld	s0,8(sp)
    80008368:	00b53423          	sd	a1,8(a0)
    8000836c:	00052023          	sw	zero,0(a0)
    80008370:	00053823          	sd	zero,16(a0)
    80008374:	01010113          	addi	sp,sp,16
    80008378:	00008067          	ret

000000008000837c <acquire>:
    8000837c:	fe010113          	addi	sp,sp,-32
    80008380:	00813823          	sd	s0,16(sp)
    80008384:	00913423          	sd	s1,8(sp)
    80008388:	00113c23          	sd	ra,24(sp)
    8000838c:	01213023          	sd	s2,0(sp)
    80008390:	02010413          	addi	s0,sp,32
    80008394:	00050493          	mv	s1,a0
    80008398:	10002973          	csrr	s2,sstatus
    8000839c:	100027f3          	csrr	a5,sstatus
    800083a0:	ffd7f793          	andi	a5,a5,-3
    800083a4:	10079073          	csrw	sstatus,a5
    800083a8:	fffff097          	auipc	ra,0xfffff
    800083ac:	8ec080e7          	jalr	-1812(ra) # 80006c94 <mycpu>
    800083b0:	07852783          	lw	a5,120(a0)
    800083b4:	06078e63          	beqz	a5,80008430 <acquire+0xb4>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	8dc080e7          	jalr	-1828(ra) # 80006c94 <mycpu>
    800083c0:	07852783          	lw	a5,120(a0)
    800083c4:	0004a703          	lw	a4,0(s1)
    800083c8:	0017879b          	addiw	a5,a5,1
    800083cc:	06f52c23          	sw	a5,120(a0)
    800083d0:	04071063          	bnez	a4,80008410 <acquire+0x94>
    800083d4:	00100713          	li	a4,1
    800083d8:	00070793          	mv	a5,a4
    800083dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800083e0:	0007879b          	sext.w	a5,a5
    800083e4:	fe079ae3          	bnez	a5,800083d8 <acquire+0x5c>
    800083e8:	0ff0000f          	fence
    800083ec:	fffff097          	auipc	ra,0xfffff
    800083f0:	8a8080e7          	jalr	-1880(ra) # 80006c94 <mycpu>
    800083f4:	01813083          	ld	ra,24(sp)
    800083f8:	01013403          	ld	s0,16(sp)
    800083fc:	00a4b823          	sd	a0,16(s1)
    80008400:	00013903          	ld	s2,0(sp)
    80008404:	00813483          	ld	s1,8(sp)
    80008408:	02010113          	addi	sp,sp,32
    8000840c:	00008067          	ret
    80008410:	0104b903          	ld	s2,16(s1)
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	880080e7          	jalr	-1920(ra) # 80006c94 <mycpu>
    8000841c:	faa91ce3          	bne	s2,a0,800083d4 <acquire+0x58>
    80008420:	00001517          	auipc	a0,0x1
    80008424:	21850513          	addi	a0,a0,536 # 80009638 <digits+0x20>
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	224080e7          	jalr	548(ra) # 8000764c <panic>
    80008430:	00195913          	srli	s2,s2,0x1
    80008434:	fffff097          	auipc	ra,0xfffff
    80008438:	860080e7          	jalr	-1952(ra) # 80006c94 <mycpu>
    8000843c:	00197913          	andi	s2,s2,1
    80008440:	07252e23          	sw	s2,124(a0)
    80008444:	f75ff06f          	j	800083b8 <acquire+0x3c>

0000000080008448 <release>:
    80008448:	fe010113          	addi	sp,sp,-32
    8000844c:	00813823          	sd	s0,16(sp)
    80008450:	00113c23          	sd	ra,24(sp)
    80008454:	00913423          	sd	s1,8(sp)
    80008458:	01213023          	sd	s2,0(sp)
    8000845c:	02010413          	addi	s0,sp,32
    80008460:	00052783          	lw	a5,0(a0)
    80008464:	00079a63          	bnez	a5,80008478 <release+0x30>
    80008468:	00001517          	auipc	a0,0x1
    8000846c:	1d850513          	addi	a0,a0,472 # 80009640 <digits+0x28>
    80008470:	fffff097          	auipc	ra,0xfffff
    80008474:	1dc080e7          	jalr	476(ra) # 8000764c <panic>
    80008478:	01053903          	ld	s2,16(a0)
    8000847c:	00050493          	mv	s1,a0
    80008480:	fffff097          	auipc	ra,0xfffff
    80008484:	814080e7          	jalr	-2028(ra) # 80006c94 <mycpu>
    80008488:	fea910e3          	bne	s2,a0,80008468 <release+0x20>
    8000848c:	0004b823          	sd	zero,16(s1)
    80008490:	0ff0000f          	fence
    80008494:	0f50000f          	fence	iorw,ow
    80008498:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000849c:	ffffe097          	auipc	ra,0xffffe
    800084a0:	7f8080e7          	jalr	2040(ra) # 80006c94 <mycpu>
    800084a4:	100027f3          	csrr	a5,sstatus
    800084a8:	0027f793          	andi	a5,a5,2
    800084ac:	04079a63          	bnez	a5,80008500 <release+0xb8>
    800084b0:	07852783          	lw	a5,120(a0)
    800084b4:	02f05e63          	blez	a5,800084f0 <release+0xa8>
    800084b8:	fff7871b          	addiw	a4,a5,-1
    800084bc:	06e52c23          	sw	a4,120(a0)
    800084c0:	00071c63          	bnez	a4,800084d8 <release+0x90>
    800084c4:	07c52783          	lw	a5,124(a0)
    800084c8:	00078863          	beqz	a5,800084d8 <release+0x90>
    800084cc:	100027f3          	csrr	a5,sstatus
    800084d0:	0027e793          	ori	a5,a5,2
    800084d4:	10079073          	csrw	sstatus,a5
    800084d8:	01813083          	ld	ra,24(sp)
    800084dc:	01013403          	ld	s0,16(sp)
    800084e0:	00813483          	ld	s1,8(sp)
    800084e4:	00013903          	ld	s2,0(sp)
    800084e8:	02010113          	addi	sp,sp,32
    800084ec:	00008067          	ret
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	17050513          	addi	a0,a0,368 # 80009660 <digits+0x48>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	154080e7          	jalr	340(ra) # 8000764c <panic>
    80008500:	00001517          	auipc	a0,0x1
    80008504:	14850513          	addi	a0,a0,328 # 80009648 <digits+0x30>
    80008508:	fffff097          	auipc	ra,0xfffff
    8000850c:	144080e7          	jalr	324(ra) # 8000764c <panic>

0000000080008510 <holding>:
    80008510:	00052783          	lw	a5,0(a0)
    80008514:	00079663          	bnez	a5,80008520 <holding+0x10>
    80008518:	00000513          	li	a0,0
    8000851c:	00008067          	ret
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00913423          	sd	s1,8(sp)
    8000852c:	00113c23          	sd	ra,24(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	01053483          	ld	s1,16(a0)
    80008538:	ffffe097          	auipc	ra,0xffffe
    8000853c:	75c080e7          	jalr	1884(ra) # 80006c94 <mycpu>
    80008540:	01813083          	ld	ra,24(sp)
    80008544:	01013403          	ld	s0,16(sp)
    80008548:	40a48533          	sub	a0,s1,a0
    8000854c:	00153513          	seqz	a0,a0
    80008550:	00813483          	ld	s1,8(sp)
    80008554:	02010113          	addi	sp,sp,32
    80008558:	00008067          	ret

000000008000855c <push_off>:
    8000855c:	fe010113          	addi	sp,sp,-32
    80008560:	00813823          	sd	s0,16(sp)
    80008564:	00113c23          	sd	ra,24(sp)
    80008568:	00913423          	sd	s1,8(sp)
    8000856c:	02010413          	addi	s0,sp,32
    80008570:	100024f3          	csrr	s1,sstatus
    80008574:	100027f3          	csrr	a5,sstatus
    80008578:	ffd7f793          	andi	a5,a5,-3
    8000857c:	10079073          	csrw	sstatus,a5
    80008580:	ffffe097          	auipc	ra,0xffffe
    80008584:	714080e7          	jalr	1812(ra) # 80006c94 <mycpu>
    80008588:	07852783          	lw	a5,120(a0)
    8000858c:	02078663          	beqz	a5,800085b8 <push_off+0x5c>
    80008590:	ffffe097          	auipc	ra,0xffffe
    80008594:	704080e7          	jalr	1796(ra) # 80006c94 <mycpu>
    80008598:	07852783          	lw	a5,120(a0)
    8000859c:	01813083          	ld	ra,24(sp)
    800085a0:	01013403          	ld	s0,16(sp)
    800085a4:	0017879b          	addiw	a5,a5,1
    800085a8:	06f52c23          	sw	a5,120(a0)
    800085ac:	00813483          	ld	s1,8(sp)
    800085b0:	02010113          	addi	sp,sp,32
    800085b4:	00008067          	ret
    800085b8:	0014d493          	srli	s1,s1,0x1
    800085bc:	ffffe097          	auipc	ra,0xffffe
    800085c0:	6d8080e7          	jalr	1752(ra) # 80006c94 <mycpu>
    800085c4:	0014f493          	andi	s1,s1,1
    800085c8:	06952e23          	sw	s1,124(a0)
    800085cc:	fc5ff06f          	j	80008590 <push_off+0x34>

00000000800085d0 <pop_off>:
    800085d0:	ff010113          	addi	sp,sp,-16
    800085d4:	00813023          	sd	s0,0(sp)
    800085d8:	00113423          	sd	ra,8(sp)
    800085dc:	01010413          	addi	s0,sp,16
    800085e0:	ffffe097          	auipc	ra,0xffffe
    800085e4:	6b4080e7          	jalr	1716(ra) # 80006c94 <mycpu>
    800085e8:	100027f3          	csrr	a5,sstatus
    800085ec:	0027f793          	andi	a5,a5,2
    800085f0:	04079663          	bnez	a5,8000863c <pop_off+0x6c>
    800085f4:	07852783          	lw	a5,120(a0)
    800085f8:	02f05a63          	blez	a5,8000862c <pop_off+0x5c>
    800085fc:	fff7871b          	addiw	a4,a5,-1
    80008600:	06e52c23          	sw	a4,120(a0)
    80008604:	00071c63          	bnez	a4,8000861c <pop_off+0x4c>
    80008608:	07c52783          	lw	a5,124(a0)
    8000860c:	00078863          	beqz	a5,8000861c <pop_off+0x4c>
    80008610:	100027f3          	csrr	a5,sstatus
    80008614:	0027e793          	ori	a5,a5,2
    80008618:	10079073          	csrw	sstatus,a5
    8000861c:	00813083          	ld	ra,8(sp)
    80008620:	00013403          	ld	s0,0(sp)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret
    8000862c:	00001517          	auipc	a0,0x1
    80008630:	03450513          	addi	a0,a0,52 # 80009660 <digits+0x48>
    80008634:	fffff097          	auipc	ra,0xfffff
    80008638:	018080e7          	jalr	24(ra) # 8000764c <panic>
    8000863c:	00001517          	auipc	a0,0x1
    80008640:	00c50513          	addi	a0,a0,12 # 80009648 <digits+0x30>
    80008644:	fffff097          	auipc	ra,0xfffff
    80008648:	008080e7          	jalr	8(ra) # 8000764c <panic>

000000008000864c <push_on>:
    8000864c:	fe010113          	addi	sp,sp,-32
    80008650:	00813823          	sd	s0,16(sp)
    80008654:	00113c23          	sd	ra,24(sp)
    80008658:	00913423          	sd	s1,8(sp)
    8000865c:	02010413          	addi	s0,sp,32
    80008660:	100024f3          	csrr	s1,sstatus
    80008664:	100027f3          	csrr	a5,sstatus
    80008668:	0027e793          	ori	a5,a5,2
    8000866c:	10079073          	csrw	sstatus,a5
    80008670:	ffffe097          	auipc	ra,0xffffe
    80008674:	624080e7          	jalr	1572(ra) # 80006c94 <mycpu>
    80008678:	07852783          	lw	a5,120(a0)
    8000867c:	02078663          	beqz	a5,800086a8 <push_on+0x5c>
    80008680:	ffffe097          	auipc	ra,0xffffe
    80008684:	614080e7          	jalr	1556(ra) # 80006c94 <mycpu>
    80008688:	07852783          	lw	a5,120(a0)
    8000868c:	01813083          	ld	ra,24(sp)
    80008690:	01013403          	ld	s0,16(sp)
    80008694:	0017879b          	addiw	a5,a5,1
    80008698:	06f52c23          	sw	a5,120(a0)
    8000869c:	00813483          	ld	s1,8(sp)
    800086a0:	02010113          	addi	sp,sp,32
    800086a4:	00008067          	ret
    800086a8:	0014d493          	srli	s1,s1,0x1
    800086ac:	ffffe097          	auipc	ra,0xffffe
    800086b0:	5e8080e7          	jalr	1512(ra) # 80006c94 <mycpu>
    800086b4:	0014f493          	andi	s1,s1,1
    800086b8:	06952e23          	sw	s1,124(a0)
    800086bc:	fc5ff06f          	j	80008680 <push_on+0x34>

00000000800086c0 <pop_on>:
    800086c0:	ff010113          	addi	sp,sp,-16
    800086c4:	00813023          	sd	s0,0(sp)
    800086c8:	00113423          	sd	ra,8(sp)
    800086cc:	01010413          	addi	s0,sp,16
    800086d0:	ffffe097          	auipc	ra,0xffffe
    800086d4:	5c4080e7          	jalr	1476(ra) # 80006c94 <mycpu>
    800086d8:	100027f3          	csrr	a5,sstatus
    800086dc:	0027f793          	andi	a5,a5,2
    800086e0:	04078463          	beqz	a5,80008728 <pop_on+0x68>
    800086e4:	07852783          	lw	a5,120(a0)
    800086e8:	02f05863          	blez	a5,80008718 <pop_on+0x58>
    800086ec:	fff7879b          	addiw	a5,a5,-1
    800086f0:	06f52c23          	sw	a5,120(a0)
    800086f4:	07853783          	ld	a5,120(a0)
    800086f8:	00079863          	bnez	a5,80008708 <pop_on+0x48>
    800086fc:	100027f3          	csrr	a5,sstatus
    80008700:	ffd7f793          	andi	a5,a5,-3
    80008704:	10079073          	csrw	sstatus,a5
    80008708:	00813083          	ld	ra,8(sp)
    8000870c:	00013403          	ld	s0,0(sp)
    80008710:	01010113          	addi	sp,sp,16
    80008714:	00008067          	ret
    80008718:	00001517          	auipc	a0,0x1
    8000871c:	f7050513          	addi	a0,a0,-144 # 80009688 <digits+0x70>
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	f2c080e7          	jalr	-212(ra) # 8000764c <panic>
    80008728:	00001517          	auipc	a0,0x1
    8000872c:	f4050513          	addi	a0,a0,-192 # 80009668 <digits+0x50>
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	f1c080e7          	jalr	-228(ra) # 8000764c <panic>

0000000080008738 <__memset>:
    80008738:	ff010113          	addi	sp,sp,-16
    8000873c:	00813423          	sd	s0,8(sp)
    80008740:	01010413          	addi	s0,sp,16
    80008744:	1a060e63          	beqz	a2,80008900 <__memset+0x1c8>
    80008748:	40a007b3          	neg	a5,a0
    8000874c:	0077f793          	andi	a5,a5,7
    80008750:	00778693          	addi	a3,a5,7
    80008754:	00b00813          	li	a6,11
    80008758:	0ff5f593          	andi	a1,a1,255
    8000875c:	fff6071b          	addiw	a4,a2,-1
    80008760:	1b06e663          	bltu	a3,a6,8000890c <__memset+0x1d4>
    80008764:	1cd76463          	bltu	a4,a3,8000892c <__memset+0x1f4>
    80008768:	1a078e63          	beqz	a5,80008924 <__memset+0x1ec>
    8000876c:	00b50023          	sb	a1,0(a0)
    80008770:	00100713          	li	a4,1
    80008774:	1ae78463          	beq	a5,a4,8000891c <__memset+0x1e4>
    80008778:	00b500a3          	sb	a1,1(a0)
    8000877c:	00200713          	li	a4,2
    80008780:	1ae78a63          	beq	a5,a4,80008934 <__memset+0x1fc>
    80008784:	00b50123          	sb	a1,2(a0)
    80008788:	00300713          	li	a4,3
    8000878c:	18e78463          	beq	a5,a4,80008914 <__memset+0x1dc>
    80008790:	00b501a3          	sb	a1,3(a0)
    80008794:	00400713          	li	a4,4
    80008798:	1ae78263          	beq	a5,a4,8000893c <__memset+0x204>
    8000879c:	00b50223          	sb	a1,4(a0)
    800087a0:	00500713          	li	a4,5
    800087a4:	1ae78063          	beq	a5,a4,80008944 <__memset+0x20c>
    800087a8:	00b502a3          	sb	a1,5(a0)
    800087ac:	00700713          	li	a4,7
    800087b0:	18e79e63          	bne	a5,a4,8000894c <__memset+0x214>
    800087b4:	00b50323          	sb	a1,6(a0)
    800087b8:	00700e93          	li	t4,7
    800087bc:	00859713          	slli	a4,a1,0x8
    800087c0:	00e5e733          	or	a4,a1,a4
    800087c4:	01059e13          	slli	t3,a1,0x10
    800087c8:	01c76e33          	or	t3,a4,t3
    800087cc:	01859313          	slli	t1,a1,0x18
    800087d0:	006e6333          	or	t1,t3,t1
    800087d4:	02059893          	slli	a7,a1,0x20
    800087d8:	40f60e3b          	subw	t3,a2,a5
    800087dc:	011368b3          	or	a7,t1,a7
    800087e0:	02859813          	slli	a6,a1,0x28
    800087e4:	0108e833          	or	a6,a7,a6
    800087e8:	03059693          	slli	a3,a1,0x30
    800087ec:	003e589b          	srliw	a7,t3,0x3
    800087f0:	00d866b3          	or	a3,a6,a3
    800087f4:	03859713          	slli	a4,a1,0x38
    800087f8:	00389813          	slli	a6,a7,0x3
    800087fc:	00f507b3          	add	a5,a0,a5
    80008800:	00e6e733          	or	a4,a3,a4
    80008804:	000e089b          	sext.w	a7,t3
    80008808:	00f806b3          	add	a3,a6,a5
    8000880c:	00e7b023          	sd	a4,0(a5)
    80008810:	00878793          	addi	a5,a5,8
    80008814:	fed79ce3          	bne	a5,a3,8000880c <__memset+0xd4>
    80008818:	ff8e7793          	andi	a5,t3,-8
    8000881c:	0007871b          	sext.w	a4,a5
    80008820:	01d787bb          	addw	a5,a5,t4
    80008824:	0ce88e63          	beq	a7,a4,80008900 <__memset+0x1c8>
    80008828:	00f50733          	add	a4,a0,a5
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0017871b          	addiw	a4,a5,1
    80008834:	0cc77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	0027871b          	addiw	a4,a5,2
    80008844:	0ac77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	0037871b          	addiw	a4,a5,3
    80008854:	0ac77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	0047871b          	addiw	a4,a5,4
    80008864:	08c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0057871b          	addiw	a4,a5,5
    80008874:	08c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0067871b          	addiw	a4,a5,6
    80008884:	06c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0077871b          	addiw	a4,a5,7
    80008894:	06c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0087871b          	addiw	a4,a5,8
    800088a4:	04c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0097871b          	addiw	a4,a5,9
    800088b4:	04c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	00a7871b          	addiw	a4,a5,10
    800088c4:	02c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	00b7871b          	addiw	a4,a5,11
    800088d4:	02c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	00c7871b          	addiw	a4,a5,12
    800088e4:	00c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	00d7879b          	addiw	a5,a5,13
    800088f4:	00c7f663          	bgeu	a5,a2,80008900 <__memset+0x1c8>
    800088f8:	00f507b3          	add	a5,a0,a5
    800088fc:	00b78023          	sb	a1,0(a5)
    80008900:	00813403          	ld	s0,8(sp)
    80008904:	01010113          	addi	sp,sp,16
    80008908:	00008067          	ret
    8000890c:	00b00693          	li	a3,11
    80008910:	e55ff06f          	j	80008764 <__memset+0x2c>
    80008914:	00300e93          	li	t4,3
    80008918:	ea5ff06f          	j	800087bc <__memset+0x84>
    8000891c:	00100e93          	li	t4,1
    80008920:	e9dff06f          	j	800087bc <__memset+0x84>
    80008924:	00000e93          	li	t4,0
    80008928:	e95ff06f          	j	800087bc <__memset+0x84>
    8000892c:	00000793          	li	a5,0
    80008930:	ef9ff06f          	j	80008828 <__memset+0xf0>
    80008934:	00200e93          	li	t4,2
    80008938:	e85ff06f          	j	800087bc <__memset+0x84>
    8000893c:	00400e93          	li	t4,4
    80008940:	e7dff06f          	j	800087bc <__memset+0x84>
    80008944:	00500e93          	li	t4,5
    80008948:	e75ff06f          	j	800087bc <__memset+0x84>
    8000894c:	00600e93          	li	t4,6
    80008950:	e6dff06f          	j	800087bc <__memset+0x84>

0000000080008954 <__memmove>:
    80008954:	ff010113          	addi	sp,sp,-16
    80008958:	00813423          	sd	s0,8(sp)
    8000895c:	01010413          	addi	s0,sp,16
    80008960:	0e060863          	beqz	a2,80008a50 <__memmove+0xfc>
    80008964:	fff6069b          	addiw	a3,a2,-1
    80008968:	0006881b          	sext.w	a6,a3
    8000896c:	0ea5e863          	bltu	a1,a0,80008a5c <__memmove+0x108>
    80008970:	00758713          	addi	a4,a1,7
    80008974:	00a5e7b3          	or	a5,a1,a0
    80008978:	40a70733          	sub	a4,a4,a0
    8000897c:	0077f793          	andi	a5,a5,7
    80008980:	00f73713          	sltiu	a4,a4,15
    80008984:	00174713          	xori	a4,a4,1
    80008988:	0017b793          	seqz	a5,a5
    8000898c:	00e7f7b3          	and	a5,a5,a4
    80008990:	10078863          	beqz	a5,80008aa0 <__memmove+0x14c>
    80008994:	00900793          	li	a5,9
    80008998:	1107f463          	bgeu	a5,a6,80008aa0 <__memmove+0x14c>
    8000899c:	0036581b          	srliw	a6,a2,0x3
    800089a0:	fff8081b          	addiw	a6,a6,-1
    800089a4:	02081813          	slli	a6,a6,0x20
    800089a8:	01d85893          	srli	a7,a6,0x1d
    800089ac:	00858813          	addi	a6,a1,8
    800089b0:	00058793          	mv	a5,a1
    800089b4:	00050713          	mv	a4,a0
    800089b8:	01088833          	add	a6,a7,a6
    800089bc:	0007b883          	ld	a7,0(a5)
    800089c0:	00878793          	addi	a5,a5,8
    800089c4:	00870713          	addi	a4,a4,8
    800089c8:	ff173c23          	sd	a7,-8(a4)
    800089cc:	ff0798e3          	bne	a5,a6,800089bc <__memmove+0x68>
    800089d0:	ff867713          	andi	a4,a2,-8
    800089d4:	02071793          	slli	a5,a4,0x20
    800089d8:	0207d793          	srli	a5,a5,0x20
    800089dc:	00f585b3          	add	a1,a1,a5
    800089e0:	40e686bb          	subw	a3,a3,a4
    800089e4:	00f507b3          	add	a5,a0,a5
    800089e8:	06e60463          	beq	a2,a4,80008a50 <__memmove+0xfc>
    800089ec:	0005c703          	lbu	a4,0(a1)
    800089f0:	00e78023          	sb	a4,0(a5)
    800089f4:	04068e63          	beqz	a3,80008a50 <__memmove+0xfc>
    800089f8:	0015c603          	lbu	a2,1(a1)
    800089fc:	00100713          	li	a4,1
    80008a00:	00c780a3          	sb	a2,1(a5)
    80008a04:	04e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a08:	0025c603          	lbu	a2,2(a1)
    80008a0c:	00200713          	li	a4,2
    80008a10:	00c78123          	sb	a2,2(a5)
    80008a14:	02e68e63          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a18:	0035c603          	lbu	a2,3(a1)
    80008a1c:	00300713          	li	a4,3
    80008a20:	00c781a3          	sb	a2,3(a5)
    80008a24:	02e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a28:	0045c603          	lbu	a2,4(a1)
    80008a2c:	00400713          	li	a4,4
    80008a30:	00c78223          	sb	a2,4(a5)
    80008a34:	00e68e63          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a38:	0055c603          	lbu	a2,5(a1)
    80008a3c:	00500713          	li	a4,5
    80008a40:	00c782a3          	sb	a2,5(a5)
    80008a44:	00e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a48:	0065c703          	lbu	a4,6(a1)
    80008a4c:	00e78323          	sb	a4,6(a5)
    80008a50:	00813403          	ld	s0,8(sp)
    80008a54:	01010113          	addi	sp,sp,16
    80008a58:	00008067          	ret
    80008a5c:	02061713          	slli	a4,a2,0x20
    80008a60:	02075713          	srli	a4,a4,0x20
    80008a64:	00e587b3          	add	a5,a1,a4
    80008a68:	f0f574e3          	bgeu	a0,a5,80008970 <__memmove+0x1c>
    80008a6c:	02069613          	slli	a2,a3,0x20
    80008a70:	02065613          	srli	a2,a2,0x20
    80008a74:	fff64613          	not	a2,a2
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00c78633          	add	a2,a5,a2
    80008a80:	fff7c683          	lbu	a3,-1(a5)
    80008a84:	fff78793          	addi	a5,a5,-1
    80008a88:	fff70713          	addi	a4,a4,-1
    80008a8c:	00d70023          	sb	a3,0(a4)
    80008a90:	fec798e3          	bne	a5,a2,80008a80 <__memmove+0x12c>
    80008a94:	00813403          	ld	s0,8(sp)
    80008a98:	01010113          	addi	sp,sp,16
    80008a9c:	00008067          	ret
    80008aa0:	02069713          	slli	a4,a3,0x20
    80008aa4:	02075713          	srli	a4,a4,0x20
    80008aa8:	00170713          	addi	a4,a4,1
    80008aac:	00e50733          	add	a4,a0,a4
    80008ab0:	00050793          	mv	a5,a0
    80008ab4:	0005c683          	lbu	a3,0(a1)
    80008ab8:	00178793          	addi	a5,a5,1
    80008abc:	00158593          	addi	a1,a1,1
    80008ac0:	fed78fa3          	sb	a3,-1(a5)
    80008ac4:	fee798e3          	bne	a5,a4,80008ab4 <__memmove+0x160>
    80008ac8:	f89ff06f          	j	80008a50 <__memmove+0xfc>
	...
