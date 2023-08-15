
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
    8000001c:	450060ef          	jal	ra,8000646c <start>

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
    800011b0:	1c8010ef          	jal	ra,80002378 <_ZN5Riscv14timerInterruptEv>

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
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	378080e7          	jalr	888(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
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
    800017f8:	3c0080e7          	jalr	960(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>

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
    80001858:	090080e7          	jalr	144(ra) # 800058e4 <_Z8userMainv>
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
    80001884:	4a0080e7          	jalr	1184(ra) # 80002d20 <_ZN15MemoryAllocator10initializeEv>
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
    //Scheduler::get();
    //Scheduler::get();


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
    80001e7c:	728080e7          	jalr	1832(ra) # 800085a0 <console_handler>
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
    80001f10:	bd4080e7          	jalr	-1068(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
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
    80001f5c:	5dc080e7          	jalr	1500(ra) # 80002534 <_ZN3TCB8dispatchEv>
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
    80002114:	9d0080e7          	jalr	-1584(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
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
    80002148:	a70080e7          	jalr	-1424(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000214c:	04a43823          	sd	a0,80(s0)
    80002150:	fcdff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB* handle= TCB::createThread((TCB::Body)a2, (char*)a4, (void*)a3);
    80002154:	fc843503          	ld	a0,-56(s0)
    80002158:	fb843583          	ld	a1,-72(s0)
    8000215c:	fc043603          	ld	a2,-64(s0)
    80002160:	00000097          	auipc	ra,0x0
    80002164:	510080e7          	jalr	1296(ra) # 80002670 <_ZN3TCB12createThreadEPFvPvEPcS0_>
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
    80002190:	5a4080e7          	jalr	1444(ra) # 80002730 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002194:	04a43823          	sd	a0,80(s0)
    80002198:	f85ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    8000219c:	00009797          	auipc	a5,0x9
    800021a0:	4a47b783          	ld	a5,1188(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021a4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	38c080e7          	jalr	908(ra) # 80002534 <_ZN3TCB8dispatchEv>
    800021b0:	f6dff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=__getc();
    800021b4:	00006097          	auipc	ra,0x6
    800021b8:	3b4080e7          	jalr	948(ra) # 80008568 <__getc>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    800021bc:	04a43823          	sd	a0,80(s0)
    800021c0:	f5dff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            __putc((char)a1);
    800021c4:	fd043503          	ld	a0,-48(s0)
    800021c8:	0ff57513          	andi	a0,a0,255
    800021cc:	00006097          	auipc	ra,0x6
    800021d0:	360080e7          	jalr	864(ra) # 8000852c <__putc>
    800021d4:	f49ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=_sem::open((int)a2);
    800021d8:	fc843503          	ld	a0,-56(s0)
    800021dc:	0005051b          	sext.w	a0,a0
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	61c080e7          	jalr	1564(ra) # 800027fc <_ZN4_sem4openEi>
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
    80002214:	6e8080e7          	jalr	1768(ra) # 800028f8 <_ZN4_sem4waitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002218:	04a43823          	sd	a0,80(s0)
    8000221c:	f01ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002220:	fd043503          	ld	a0,-48(s0)
            int stat=handle->close();
    80002224:	00001097          	auipc	ra,0x1
    80002228:	808080e7          	jalr	-2040(ra) # 80002a2c <_ZN4_sem5closeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000222c:	04a43823          	sd	a0,80(s0)
    80002230:	eedff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002234:	fd043503          	ld	a0,-48(s0)
            int stat=handle->signal();
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	79c080e7          	jalr	1948(ra) # 800029d4 <_ZN4_sem6signalEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002240:	04a43823          	sd	a0,80(s0)
    80002244:	ed9ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    80002248:	fd043503          	ld	a0,-48(s0)
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	538080e7          	jalr	1336(ra) # 80002784 <_ZN3TCB4joinEPS_>
    80002254:	ec9ff06f          	j	8000211c <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    80002258:	00007517          	auipc	a0,0x7
    8000225c:	dc850513          	addi	a0,a0,-568 # 80009020 <CONSOLE_STATUS+0x10>
    80002260:	00003097          	auipc	ra,0x3
    80002264:	fbc080e7          	jalr	-68(ra) # 8000521c <_Z11printStringPKc>
        printInt(scause);
    80002268:	00000613          	li	a2,0
    8000226c:	00a00593          	li	a1,10
    80002270:	0004851b          	sext.w	a0,s1
    80002274:	00003097          	auipc	ra,0x3
    80002278:	158080e7          	jalr	344(ra) # 800053cc <_Z8printIntiii>
        printString("\nsepc:");
    8000227c:	00007517          	auipc	a0,0x7
    80002280:	dac50513          	addi	a0,a0,-596 # 80009028 <CONSOLE_STATUS+0x18>
    80002284:	00003097          	auipc	ra,0x3
    80002288:	f98080e7          	jalr	-104(ra) # 8000521c <_Z11printStringPKc>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    8000228c:	141027f3          	csrr	a5,sepc
    80002290:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002294:	fb043503          	ld	a0,-80(s0)
        printInt(r_sepc());
    80002298:	00000613          	li	a2,0
    8000229c:	00a00593          	li	a1,10
    800022a0:	0005051b          	sext.w	a0,a0
    800022a4:	00003097          	auipc	ra,0x3
    800022a8:	128080e7          	jalr	296(ra) # 800053cc <_Z8printIntiii>
        printString("\n");
    800022ac:	00007517          	auipc	a0,0x7
    800022b0:	0cc50513          	addi	a0,a0,204 # 80009378 <CONSOLE_STATUS+0x368>
    800022b4:	00003097          	auipc	ra,0x3
    800022b8:	f68080e7          	jalr	-152(ra) # 8000521c <_Z11printStringPKc>
        while(true);
    800022bc:	0000006f          	j	800022bc <_ZN5Riscv20handleEcallExceptionEv+0x2d8>

00000000800022c0 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    800022c0:	00009797          	auipc	a5,0x9
    800022c4:	4007b783          	ld	a5,1024(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    800022c8:	00078a63          	beqz	a5,800022dc <_ZN5Riscv18updateSleepingListEv+0x1c>
        if(--headSleeping->toSleepRel==0){
    800022cc:	0087b703          	ld	a4,8(a5)
    800022d0:	fff70713          	addi	a4,a4,-1
    800022d4:	00e7b423          	sd	a4,8(a5)
    800022d8:	00070463          	beqz	a4,800022e0 <_ZN5Riscv18updateSleepingListEv+0x20>
    800022dc:	00008067          	ret
void Riscv::updateSleepingList() {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00113423          	sd	ra,8(sp)
    800022e8:	00813023          	sd	s0,0(sp)
    800022ec:	01010413          	addi	s0,sp,16
            headSleeping->thr->setSleeping(false);
    800022f0:	0007b703          	ld	a4,0(a5)
    800022f4:	040700a3          	sb	zero,65(a4)
            Scheduler::put(headSleeping->thr);
    800022f8:	0007b503          	ld	a0,0(a5)
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	450080e7          	jalr	1104(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
            SleepingElem* old=headSleeping;
    80002304:	00009797          	auipc	a5,0x9
    80002308:	3bc78793          	addi	a5,a5,956 # 8000b6c0 <_ZN5Riscv12headSleepingE>
    8000230c:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    80002310:	01053703          	ld	a4,16(a0)
    80002314:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	89c080e7          	jalr	-1892(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002320:	00009797          	auipc	a5,0x9
    80002324:	3a07b783          	ld	a5,928(a5) # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80002328:	04078063          	beqz	a5,80002368 <_ZN5Riscv18updateSleepingListEv+0xa8>
    8000232c:	0087b703          	ld	a4,8(a5)
    80002330:	02071c63          	bnez	a4,80002368 <_ZN5Riscv18updateSleepingListEv+0xa8>
                headSleeping->thr->setSleeping(false);
    80002334:	0007b703          	ld	a4,0(a5)
    80002338:	040700a3          	sb	zero,65(a4)
                Scheduler::put(headSleeping->thr);
    8000233c:	0007b503          	ld	a0,0(a5)
    80002340:	fffff097          	auipc	ra,0xfffff
    80002344:	40c080e7          	jalr	1036(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
                old=headSleeping;
    80002348:	00009797          	auipc	a5,0x9
    8000234c:	37878793          	addi	a5,a5,888 # 8000b6c0 <_ZN5Riscv12headSleepingE>
    80002350:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    80002354:	01053703          	ld	a4,16(a0)
    80002358:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	858080e7          	jalr	-1960(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002364:	fbdff06f          	j	80002320 <_ZN5Riscv18updateSleepingListEv+0x60>
            }
        }
    }
}
    80002368:	00813083          	ld	ra,8(sp)
    8000236c:	00013403          	ld	s0,0(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN5Riscv14timerInterruptEv>:
void Riscv::timerInterrupt() {
    80002378:	fc010113          	addi	sp,sp,-64
    8000237c:	02113c23          	sd	ra,56(sp)
    80002380:	02813823          	sd	s0,48(sp)
    80002384:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002388:	142027f3          	csrr	a5,scause
    8000238c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002390:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000001UL){
    80002394:	fff00793          	li	a5,-1
    80002398:	03f79793          	slli	a5,a5,0x3f
    8000239c:	00178793          	addi	a5,a5,1
    800023a0:	00f70a63          	beq	a4,a5,800023b4 <_ZN5Riscv14timerInterruptEv+0x3c>
}
    800023a4:	03813083          	ld	ra,56(sp)
    800023a8:	03013403          	ld	s0,48(sp)
    800023ac:	04010113          	addi	sp,sp,64
    800023b0:	00008067          	ret
        updateSleepingList();
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	f0c080e7          	jalr	-244(ra) # 800022c0 <_ZN5Riscv18updateSleepingListEv>
        TCB::timeSliceCounter++;
    800023bc:	00009717          	auipc	a4,0x9
    800023c0:	28473703          	ld	a4,644(a4) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023c4:	00073783          	ld	a5,0(a4)
    800023c8:	00178793          	addi	a5,a5,1
    800023cc:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800023d0:	00009717          	auipc	a4,0x9
    800023d4:	28873703          	ld	a4,648(a4) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    800023d8:	00073703          	ld	a4,0(a4)
        return timeSlice;
    800023dc:	02873703          	ld	a4,40(a4)
    800023e0:	00e7f863          	bgeu	a5,a4,800023f0 <_ZN5Riscv14timerInterruptEv+0x78>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    800023e4:	00200793          	li	a5,2
    800023e8:	1447b073          	csrc	sip,a5
}
    800023ec:	fb9ff06f          	j	800023a4 <_ZN5Riscv14timerInterruptEv+0x2c>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800023f0:	141027f3          	csrr	a5,sepc
    800023f4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800023f8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc=r_sepc();
    800023fc:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002400:	100027f3          	csrr	a5,sstatus
    80002404:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80002408:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus=r_sstatus();
    8000240c:	fcf43823          	sd	a5,-48(s0)
            TCB::timeSliceCounter=0;
    80002410:	00009797          	auipc	a5,0x9
    80002414:	2307b783          	ld	a5,560(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002418:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	118080e7          	jalr	280(ra) # 80002534 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002424:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002428:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000242c:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002430:	14179073          	csrw	sepc,a5
}
    80002434:	fb1ff06f          	j	800023e4 <_ZN5Riscv14timerInterruptEv+0x6c>

0000000080002438 <_ZN3TCBD1Ev>:
                                     userMode(TCB::newThrUserMode)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002438:	00009797          	auipc	a5,0x9
    8000243c:	03878793          	addi	a5,a5,56 # 8000b470 <_ZTV3TCB+0x10>
    80002440:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    80002444:	01053503          	ld	a0,16(a0)
    80002448:	02050663          	beqz	a0,80002474 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	00813023          	sd	s0,0(sp)
    80002458:	01010413          	addi	s0,sp,16
    delete[] stack;
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	58c080e7          	jalr	1420(ra) # 800019e8 <_ZdaPv>
}
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret
    80002474:	00008067          	ret

0000000080002478 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	02010413          	addi	s0,sp,32
    8000248c:	00050493          	mv	s1,a0
}
    80002490:	00000097          	auipc	ra,0x0
    80002494:	fa8080e7          	jalr	-88(ra) # 80002438 <_ZN3TCBD1Ev>
    80002498:	00048513          	mv	a0,s1
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	524080e7          	jalr	1316(ra) # 800019c0 <_ZdlPv>
    800024a4:	01813083          	ld	ra,24(sp)
    800024a8:	01013403          	ld	s0,16(sp)
    800024ac:	00813483          	ld	s1,8(sp)
    800024b0:	02010113          	addi	sp,sp,32
    800024b4:	00008067          	ret

00000000800024b8 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	9b8080e7          	jalr	-1608(ra) # 80001e84 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800024d4:	00009497          	auipc	s1,0x9
    800024d8:	1f448493          	addi	s1,s1,500 # 8000b6c8 <_ZN3TCB7runningE>
    800024dc:	0004b783          	ld	a5,0(s1)
    800024e0:	0087b703          	ld	a4,8(a5)
    800024e4:	0387b503          	ld	a0,56(a5)
    800024e8:	000700e7          	jalr	a4
    running->setFinished(true);
    800024ec:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800024f0:	00100713          	li	a4,1
    800024f4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	064080e7          	jalr	100(ra) # 8000155c <_Z15thread_dispatchv>
}
    80002500:	01813083          	ld	ra,24(sp)
    80002504:	01013403          	ld	s0,16(sp)
    80002508:	00813483          	ld	s1,8(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00008067          	ret

0000000080002514 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00813423          	sd	s0,8(sp)
    8000251c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002520:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002524:	00000073          	ecall
}
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00113c23          	sd	ra,24(sp)
    8000253c:	00813823          	sd	s0,16(sp)
    80002540:	00913423          	sd	s1,8(sp)
    80002544:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002548:	00009497          	auipc	s1,0x9
    8000254c:	1804b483          	ld	s1,384(s1) # 8000b6c8 <_ZN3TCB7runningE>
        return finished;
    80002550:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    80002554:	00079a63          	bnez	a5,80002568 <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    80002558:	0404c783          	lbu	a5,64(s1)
    8000255c:	00079663          	bnez	a5,80002568 <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    80002560:	0414c783          	lbu	a5,65(s1)
    80002564:	02078c63          	beqz	a5,8000259c <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	258080e7          	jalr	600(ra) # 800017c0 <_ZN9Scheduler3getEv>
    80002570:	00009797          	auipc	a5,0x9
    80002574:	14a7bc23          	sd	a0,344(a5) # 8000b6c8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002578:	01850593          	addi	a1,a0,24
    8000257c:	01848513          	addi	a0,s1,24
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	dc8080e7          	jalr	-568(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002588:	01813083          	ld	ra,24(sp)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret
        Scheduler::put(old);
    8000259c:	00048513          	mv	a0,s1
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	1ac080e7          	jalr	428(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    800025a8:	fc1ff06f          	j	80002568 <_ZN3TCB8dispatchEv+0x34>

00000000800025ac <_ZN3TCBC1EPFvPvEPcS0_m>:
                                     userMode(TCB::newThrUserMode)
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	ec478793          	addi	a5,a5,-316 # 8000b470 <_ZTV3TCB+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    800025b8:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    800025bc:	06058863          	beqz	a1,8000262c <_ZN3TCBC1EPFvPvEPcS0_m+0x80>
                                     userMode(TCB::newThrUserMode)
    800025c0:	00c53823          	sd	a2,16(a0)
    800025c4:	00000797          	auipc	a5,0x0
    800025c8:	ef478793          	addi	a5,a5,-268 # 800024b8 <_ZN3TCB13threadWrapperEv>
    800025cc:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800025d0:	06060263          	beqz	a2,80002634 <_ZN3TCBC1EPFvPvEPcS0_m+0x88>
    800025d4:	000017b7          	lui	a5,0x1
    800025d8:	00f60633          	add	a2,a2,a5
                                     userMode(TCB::newThrUserMode)
    800025dc:	02c53023          	sd	a2,32(a0)
    800025e0:	02e53423          	sd	a4,40(a0)
    800025e4:	02050823          	sb	zero,48(a0)
    800025e8:	02d53c23          	sd	a3,56(a0)
    800025ec:	04050023          	sb	zero,64(a0)
    800025f0:	040500a3          	sb	zero,65(a0)
    800025f4:	00009797          	auipc	a5,0x9
    800025f8:	0dc7c783          	lbu	a5,220(a5) # 8000b6d0 <_ZN3TCB14newThrUserModeE>
    800025fc:	04f50123          	sb	a5,66(a0)
        if(body!=nullptr) Scheduler::put(this);
    80002600:	02058e63          	beqz	a1,8000263c <_ZN3TCBC1EPFvPvEPcS0_m+0x90>
TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	138080e7          	jalr	312(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    8000262c:	00000613          	li	a2,0
    80002630:	f91ff06f          	j	800025c0 <_ZN3TCBC1EPFvPvEPcS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002634:	00000613          	li	a2,0
    80002638:	fa5ff06f          	j	800025dc <_ZN3TCBC1EPFvPvEPcS0_m+0x30>
    8000263c:	00008067          	ret

0000000080002640 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002650:	03f50513          	addi	a0,a0,63
    80002654:	00655513          	srli	a0,a0,0x6
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	488080e7          	jalr	1160(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002660:	00813083          	ld	ra,8(sp)
    80002664:	00013403          	ld	s0,0(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <_ZN3TCB12createThreadEPFvPvEPcS0_>:
TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    80002670:	fd010113          	addi	sp,sp,-48
    80002674:	02113423          	sd	ra,40(sp)
    80002678:	02813023          	sd	s0,32(sp)
    8000267c:	00913c23          	sd	s1,24(sp)
    80002680:	01213823          	sd	s2,16(sp)
    80002684:	01313423          	sd	s3,8(sp)
    80002688:	01413023          	sd	s4,0(sp)
    8000268c:	03010413          	addi	s0,sp,48
    80002690:	00050913          	mv	s2,a0
    80002694:	00058993          	mv	s3,a1
    80002698:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    8000269c:	04800513          	li	a0,72
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	fa0080e7          	jalr	-96(ra) # 80002640 <_ZN3TCBnwEm>
    800026a8:	00050493          	mv	s1,a0
    800026ac:	00200713          	li	a4,2
    800026b0:	000a0693          	mv	a3,s4
    800026b4:	00098613          	mv	a2,s3
    800026b8:	00090593          	mv	a1,s2
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	ef0080e7          	jalr	-272(ra) # 800025ac <_ZN3TCBC1EPFvPvEPcS0_m>
    800026c4:	0200006f          	j	800026e4 <_ZN3TCB12createThreadEPFvPvEPcS0_+0x74>
    800026c8:	00050913          	mv	s2,a0
    800026cc:	00048513          	mv	a0,s1
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	2f0080e7          	jalr	752(ra) # 800019c0 <_ZdlPv>
    800026d8:	00090513          	mv	a0,s2
    800026dc:	0000a097          	auipc	ra,0xa
    800026e0:	12c080e7          	jalr	300(ra) # 8000c808 <_Unwind_Resume>
}
    800026e4:	00048513          	mv	a0,s1
    800026e8:	02813083          	ld	ra,40(sp)
    800026ec:	02013403          	ld	s0,32(sp)
    800026f0:	01813483          	ld	s1,24(sp)
    800026f4:	01013903          	ld	s2,16(sp)
    800026f8:	00813983          	ld	s3,8(sp)
    800026fc:	00013a03          	ld	s4,0(sp)
    80002700:	03010113          	addi	sp,sp,48
    80002704:	00008067          	ret

0000000080002708 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00113423          	sd	ra,8(sp)
    80002710:	00813023          	sd	s0,0(sp)
    80002714:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	49c080e7          	jalr	1180(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
}
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(TCB::running->isFinished()){
    80002730:	00009797          	auipc	a5,0x9
    80002734:	f987b783          	ld	a5,-104(a5) # 8000b6c8 <_ZN3TCB7runningE>
        return finished;
    80002738:	0307c703          	lbu	a4,48(a5)
    8000273c:	04071063          	bnez	a4,8000277c <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00113423          	sd	ra,8(sp)
    80002748:	00813023          	sd	s0,0(sp)
    8000274c:	01010413          	addi	s0,sp,16
        TCB::finished = finished;
    80002750:	00100713          	li	a4,1
    80002754:	02e78823          	sb	a4,48(a5)
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
    80002758:	00009797          	auipc	a5,0x9
    8000275c:	f807b023          	sd	zero,-128(a5) # 8000b6d8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002760:	00000097          	auipc	ra,0x0
    80002764:	dd4080e7          	jalr	-556(ra) # 80002534 <_ZN3TCB8dispatchEv>
        return 0;
    80002768:	00000513          	li	a0,0
    }
}
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret
        return -1;
    8000277c:	fff00513          	li	a0,-1
}
    80002780:	00008067          	ret

0000000080002784 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    80002784:	fe010113          	addi	sp,sp,-32
    80002788:	00113c23          	sd	ra,24(sp)
    8000278c:	00813823          	sd	s0,16(sp)
    80002790:	00913423          	sd	s1,8(sp)
    80002794:	02010413          	addi	s0,sp,32
    80002798:	00050493          	mv	s1,a0
        return finished;
    8000279c:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    800027a0:	00079c63          	bnez	a5,800027b8 <_ZN3TCB4joinEPS_+0x34>
        TCB::timeSliceCounter=0;
    800027a4:	00009797          	auipc	a5,0x9
    800027a8:	f207ba23          	sd	zero,-204(a5) # 8000b6d8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	d88080e7          	jalr	-632(ra) # 80002534 <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    800027b4:	fe9ff06f          	j	8000279c <_ZN3TCB4joinEPS_+0x18>
    }
}
    800027b8:	01813083          	ld	ra,24(sp)
    800027bc:	01013403          	ld	s0,16(sp)
    800027c0:	00813483          	ld	s1,8(sp)
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00008067          	ret

00000000800027cc <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00113423          	sd	ra,8(sp)
    800027d4:	00813023          	sd	s0,0(sp)
    800027d8:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800027dc:	03f50513          	addi	a0,a0,63
    800027e0:	00655513          	srli	a0,a0,0x6
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	2fc080e7          	jalr	764(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800027ec:	00813083          	ld	ra,8(sp)
    800027f0:	00013403          	ld	s0,0(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
    return new _sem(val);
    80002814:	02000513          	li	a0,32
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	fb4080e7          	jalr	-76(ra) # 800027cc <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    80002820:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    80002824:	00053423          	sd	zero,8(a0)
    80002828:	00053823          	sd	zero,16(a0)
    8000282c:	00050c23          	sb	zero,24(a0)
}
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret

0000000080002844 <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002854:	00000097          	auipc	ra,0x0
    80002858:	360080e7          	jalr	864(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
}
    8000285c:	00813083          	ld	ra,8(sp)
    80002860:	00013403          	ld	s0,0(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00113c23          	sd	ra,24(sp)
    80002874:	00813823          	sd	s0,16(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	01213023          	sd	s2,0(sp)
    80002880:	02010413          	addi	s0,sp,32
    80002884:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    80002888:	00009797          	auipc	a5,0x9
    8000288c:	dd07b783          	ld	a5,-560(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002890:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002894:	00100793          	li	a5,1
    80002898:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    8000289c:	00100513          	li	a0,1
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	240080e7          	jalr	576(ra) # 80002ae0 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    800028a8:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    800028ac:	00053423          	sd	zero,8(a0)
        if(tail){
    800028b0:	0104b783          	ld	a5,16(s1)
    800028b4:	02078c63          	beqz	a5,800028ec <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    800028b8:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    800028bc:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    800028c0:	00009797          	auipc	a5,0x9
    800028c4:	d807b783          	ld	a5,-640(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x18>
    800028c8:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	c68080e7          	jalr	-920(ra) # 80002534 <_ZN3TCB8dispatchEv>
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret
        }
        else{
            head=tail=newElem;
    800028ec:	00a4b823          	sd	a0,16(s1)
    800028f0:	00a4b423          	sd	a0,8(s1)
    800028f4:	fcdff06f          	j	800028c0 <_ZN4_sem5blockEv+0x54>

00000000800028f8 <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    800028f8:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    800028fc:	04079e63          	bnez	a5,80002958 <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	02010413          	addi	s0,sp,32
    80002914:	00050493          	mv	s1,a0
    if(--val<0){
    80002918:	00052783          	lw	a5,0(a0)
    8000291c:	fff7879b          	addiw	a5,a5,-1
    80002920:	00f52023          	sw	a5,0(a0)
    80002924:	02079713          	slli	a4,a5,0x20
    80002928:	02074263          	bltz	a4,8000294c <_ZN4_sem4waitEv+0x54>
    8000292c:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002930:	02079863          	bnez	a5,80002960 <_ZN4_sem4waitEv+0x68>
    return 0;
    80002934:	00000513          	li	a0,0
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret
        block();
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	f20080e7          	jalr	-224(ra) # 8000286c <_ZN4_sem5blockEv>
    80002954:	fd9ff06f          	j	8000292c <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002958:	fff00513          	li	a0,-1
}
    8000295c:	00008067          	ret
    if(this->isClosed())return -2;
    80002960:	ffe00513          	li	a0,-2
    80002964:	fd5ff06f          	j	80002938 <_ZN4_sem4waitEv+0x40>

0000000080002968 <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002980:	00853503          	ld	a0,8(a0)
    80002984:	04050463          	beqz	a0,800029cc <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002988:	00853703          	ld	a4,8(a0)
    8000298c:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002990:	02070a63          	beqz	a4,800029c4 <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002994:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	21c080e7          	jalr	540(ra) # 80002bb4 <_ZN15MemoryAllocator4freeEPv>
    800029a0:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    800029a4:	00048513          	mv	a0,s1
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	da4080e7          	jalr	-604(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	02010113          	addi	sp,sp,32
    800029c0:	00008067          	ret
        if(!head){tail=nullptr;}
    800029c4:	0007b823          	sd	zero,16(a5)
    800029c8:	fcdff06f          	j	80002994 <_ZN4_sem7unblockEv+0x2c>
            return 0;
    800029cc:	00050493          	mv	s1,a0
    800029d0:	fd1ff06f          	j	800029a0 <_ZN4_sem7unblockEv+0x38>

00000000800029d4 <_ZN4_sem6signalEv>:
    800029d4:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    800029d8:	04079663          	bnez	a5,80002a24 <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    800029dc:	00052783          	lw	a5,0(a0)
    800029e0:	0017879b          	addiw	a5,a5,1
    800029e4:	0007871b          	sext.w	a4,a5
    800029e8:	00f52023          	sw	a5,0(a0)
    800029ec:	00e05663          	blez	a4,800029f8 <_ZN4_sem6signalEv+0x24>
    return 0;
    800029f0:	00000513          	li	a0,0
}
    800029f4:	00008067          	ret
int _sem::signal() {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
        unblock();
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	f60080e7          	jalr	-160(ra) # 80002968 <_ZN4_sem7unblockEv>
    return 0;
    80002a10:	00000513          	li	a0,0
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret
    if(this->isClosed())return -1;
    80002a24:	fff00513          	li	a0,-1
    80002a28:	00008067          	ret

0000000080002a2c <_ZN4_sem5closeEv>:
    80002a2c:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002a30:	04079263          	bnez	a5,80002a74 <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002a34:	fe010113          	addi	sp,sp,-32
    80002a38:	00113c23          	sd	ra,24(sp)
    80002a3c:	00813823          	sd	s0,16(sp)
    80002a40:	00913423          	sd	s1,8(sp)
    80002a44:	02010413          	addi	s0,sp,32
    80002a48:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002a4c:	00100793          	li	a5,1
    80002a50:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002a54:	0084b783          	ld	a5,8(s1)
    80002a58:	02078263          	beqz	a5,80002a7c <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002a5c:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002a60:	02078a63          	beqz	a5,80002a94 <_ZN4_sem5closeEv+0x68>
        unblock();
    80002a64:	00048513          	mv	a0,s1
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	f00080e7          	jalr	-256(ra) # 80002968 <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002a70:	fe5ff06f          	j	80002a54 <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002a74:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002a78:	00008067          	ret
    return 0;
    80002a7c:	00000513          	li	a0,0
}
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00813483          	ld	s1,8(sp)
    80002a8c:	02010113          	addi	sp,sp,32
    80002a90:	00008067          	ret
    return 0;
    80002a94:	00000513          	li	a0,0
    80002a98:	fe9ff06f          	j	80002a80 <_ZN4_sem5closeEv+0x54>

0000000080002a9c <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    80002aa8:	00100793          	li	a5,1
    80002aac:	00f50863          	beq	a0,a5,80002abc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ab0:	00813403          	ld	s0,8(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret
    80002abc:	000107b7          	lui	a5,0x10
    80002ac0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ac4:	fef596e3          	bne	a1,a5,80002ab0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	b687b783          	ld	a5,-1176(a5) # 8000b630 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ad0:	0007b783          	ld	a5,0(a5)
    80002ad4:	00009717          	auipc	a4,0x9
    80002ad8:	c0f73623          	sd	a5,-1012(a4) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002adc:	fd5ff06f          	j	80002ab0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ae0 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00813423          	sd	s0,8(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80002aec:	0a050c63          	beqz	a0,80002ba4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002af0:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	bec7b783          	ld	a5,-1044(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002afc:	00000613          	li	a2,0
    while(free){
    80002b00:	00078e63          	beqz	a5,80002b1c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002b04:	0007b703          	ld	a4,0(a5)
    80002b08:	fff70713          	addi	a4,a4,-1
    80002b0c:	00d77863          	bgeu	a4,a3,80002b1c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002b10:	00078613          	mv	a2,a5
        free=free->next;
    80002b14:	0087b783          	ld	a5,8(a5)
    while(free){
    80002b18:	fe9ff06f          	j	80002b00 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    80002b1c:	08078863          	beqz	a5,80002bac <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002b20:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002b24:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002b28:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    80002b2c:	fff70593          	addi	a1,a4,-1
    80002b30:	04d58063          	beq	a1,a3,80002b70 <_ZN15MemoryAllocator5allocEm+0x90>
    80002b34:	ffe70593          	addi	a1,a4,-2
    80002b38:	02d58c63          	beq	a1,a3,80002b70 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    80002b3c:	40d70733          	sub	a4,a4,a3
    80002b40:	fff70713          	addi	a4,a4,-1
    80002b44:	00100593          	li	a1,1
    80002b48:	02e5fa63          	bgeu	a1,a4,80002b7c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    80002b4c:	00168693          	addi	a3,a3,1
    80002b50:	00669593          	slli	a1,a3,0x6
    80002b54:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002b58:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80002b5c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002b60:	02060c63          	beqz	a2,80002b98 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80002b64:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002b68:	00d7b023          	sd	a3,0(a5)
    80002b6c:	0100006f          	j	80002b7c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002b70:	00060e63          	beqz	a2,80002b8c <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80002b74:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002b78:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80002b7c:	0007b423          	sd	zero,8(a5)
}
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret
            firstFreeSeg=free->next;
    80002b8c:	00009697          	auipc	a3,0x9
    80002b90:	b506ba23          	sd	a6,-1196(a3) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002b94:	fe5ff06f          	j	80002b78 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80002b98:	00009717          	auipc	a4,0x9
    80002b9c:	b4b73423          	sd	a1,-1208(a4) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002ba0:	fc9ff06f          	j	80002b68 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80002ba4:	00000513          	li	a0,0
    80002ba8:	fd9ff06f          	j	80002b80 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80002bac:	00078513          	mv	a0,a5
    80002bb0:	fd1ff06f          	j	80002b80 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080002bb4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00813423          	sd	s0,8(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80002bc0:	14050c63          	beqz	a0,80002d18 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80002bc4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80002bc8:	00009797          	auipc	a5,0x9
    80002bcc:	b187b783          	ld	a5,-1256(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002bd0:	02078a63          	beqz	a5,80002c04 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80002bd4:	06f77863          	bgeu	a4,a5,80002c44 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80002bd8:	fc053603          	ld	a2,-64(a0)
    80002bdc:	00661693          	slli	a3,a2,0x6
    80002be0:	00d706b3          	add	a3,a4,a3
    80002be4:	02d78a63          	beq	a5,a3,80002c18 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80002be8:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002bec:	00009797          	auipc	a5,0x9
    80002bf0:	aee7ba23          	sd	a4,-1292(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002bf4:	00000513          	li	a0,0
}
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret
        freeFromAddr->next=nullptr;
    80002c04:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002c08:	00009797          	auipc	a5,0x9
    80002c0c:	ace7bc23          	sd	a4,-1320(a5) # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002c10:	00000513          	li	a0,0
    80002c14:	fe5ff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002c18:	0007b783          	ld	a5,0(a5)
    80002c1c:	00f60633          	add	a2,a2,a5
    80002c20:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80002c24:	00009797          	auipc	a5,0x9
    80002c28:	abc78793          	addi	a5,a5,-1348 # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002c2c:	0007b683          	ld	a3,0(a5)
    80002c30:	0086b683          	ld	a3,8(a3)
    80002c34:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002c38:	00e7b023          	sd	a4,0(a5)
            return 0;
    80002c3c:	00000513          	li	a0,0
    80002c40:	fb9ff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80002c44:	00000693          	li	a3,0
    while(nextFree){
    80002c48:	00078a63          	beqz	a5,80002c5c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    80002c4c:	00f76863          	bltu	a4,a5,80002c5c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80002c50:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80002c54:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80002c58:	ff1ff06f          	j	80002c48 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    80002c5c:	02078a63          	beqz	a5,80002c90 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002c60:	0006b583          	ld	a1,0(a3)
    80002c64:	00659613          	slli	a2,a1,0x6
    80002c68:	00c68633          	add	a2,a3,a2
    80002c6c:	04e60c63          	beq	a2,a4,80002cc4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80002c70:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002c74:	fc053683          	ld	a3,-64(a0)
    80002c78:	00669613          	slli	a2,a3,0x6
    80002c7c:	00c70733          	add	a4,a4,a2
    80002c80:	06f70e63          	beq	a4,a5,80002cfc <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80002c84:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80002c88:	00000513          	li	a0,0
    80002c8c:	f6dff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002c90:	0006b603          	ld	a2,0(a3)
    80002c94:	00661793          	slli	a5,a2,0x6
    80002c98:	00f687b3          	add	a5,a3,a5
    80002c9c:	00e78a63          	beq	a5,a4,80002cb0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80002ca0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    80002ca4:	00e6b423          	sd	a4,8(a3)
            return 0;
    80002ca8:	00000513          	li	a0,0
    80002cac:	f4dff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80002cb0:	fc053783          	ld	a5,-64(a0)
    80002cb4:	00f60633          	add	a2,a2,a5
    80002cb8:	00c6b023          	sd	a2,0(a3)
            return 0;
    80002cbc:	00000513          	li	a0,0
    80002cc0:	f39ff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80002cc4:	fc053703          	ld	a4,-64(a0)
    80002cc8:	00e585b3          	add	a1,a1,a4
    80002ccc:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002cd0:	00659713          	slli	a4,a1,0x6
    80002cd4:	00e68733          	add	a4,a3,a4
    80002cd8:	00f70663          	beq	a4,a5,80002ce4 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    80002cdc:	00000513          	li	a0,0
    80002ce0:	f19ff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80002ce4:	0007b703          	ld	a4,0(a5)
    80002ce8:	00e585b3          	add	a1,a1,a4
    80002cec:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80002cf0:	0087b783          	ld	a5,8(a5)
    80002cf4:	00f6b423          	sd	a5,8(a3)
    80002cf8:	fe5ff06f          	j	80002cdc <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    80002cfc:	0007b703          	ld	a4,0(a5)
    80002d00:	00e686b3          	add	a3,a3,a4
    80002d04:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80002d08:	0087b783          	ld	a5,8(a5)
    80002d0c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80002d10:	00000513          	li	a0,0
    80002d14:	ee5ff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002d18:	fff00513          	li	a0,-1
    80002d1c:	eddff06f          	j	80002bf8 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002d20 <_ZN15MemoryAllocator10initializeEv>:
{
    80002d20:	ff010113          	addi	sp,sp,-16
    80002d24:	00813423          	sd	s0,8(sp)
    80002d28:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002d2c:	00009797          	auipc	a5,0x9
    80002d30:	9047b783          	ld	a5,-1788(a5) # 8000b630 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d34:	0007b703          	ld	a4,0(a5)
    80002d38:	00009697          	auipc	a3,0x9
    80002d3c:	9a868693          	addi	a3,a3,-1624 # 8000b6e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002d40:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002d44:	00009797          	auipc	a5,0x9
    80002d48:	91c7b783          	ld	a5,-1764(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d4c:	0007b783          	ld	a5,0(a5)
    80002d50:	40e787b3          	sub	a5,a5,a4
    80002d54:	0067d793          	srli	a5,a5,0x6
    80002d58:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80002d5c:	0006b783          	ld	a5,0(a3)
    80002d60:	0007b423          	sd	zero,8(a5)
    80002d64:	00813403          	ld	s0,8(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00113423          	sd	ra,8(sp)
    80002d78:	00813023          	sd	s0,0(sp)
    80002d7c:	01010413          	addi	s0,sp,16
    80002d80:	000105b7          	lui	a1,0x10
    80002d84:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002d88:	00100513          	li	a0,1
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	d10080e7          	jalr	-752(ra) # 80002a9c <_Z41__static_initialization_and_destruction_0ii>
    80002d94:	00813083          	ld	ra,8(sp)
    80002d98:	00013403          	ld	s0,0(sp)
    80002d9c:	01010113          	addi	sp,sp,16
    80002da0:	00008067          	ret

0000000080002da4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002da4:	fe010113          	addi	sp,sp,-32
    80002da8:	00113c23          	sd	ra,24(sp)
    80002dac:	00813823          	sd	s0,16(sp)
    80002db0:	00913423          	sd	s1,8(sp)
    80002db4:	01213023          	sd	s2,0(sp)
    80002db8:	02010413          	addi	s0,sp,32
    80002dbc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002dc0:	00000913          	li	s2,0
    80002dc4:	00c0006f          	j	80002dd0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002dc8:	ffffe097          	auipc	ra,0xffffe
    80002dcc:	794080e7          	jalr	1940(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	910080e7          	jalr	-1776(ra) # 800016e0 <_Z4getcv>
    80002dd8:	0005059b          	sext.w	a1,a0
    80002ddc:	01b00793          	li	a5,27
    80002de0:	02f58a63          	beq	a1,a5,80002e14 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002de4:	0084b503          	ld	a0,8(s1)
    80002de8:	00003097          	auipc	ra,0x3
    80002dec:	400080e7          	jalr	1024(ra) # 800061e8 <_ZN6Buffer3putEi>
        i++;
    80002df0:	0019071b          	addiw	a4,s2,1
    80002df4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002df8:	0004a683          	lw	a3,0(s1)
    80002dfc:	0026979b          	slliw	a5,a3,0x2
    80002e00:	00d787bb          	addw	a5,a5,a3
    80002e04:	0017979b          	slliw	a5,a5,0x1
    80002e08:	02f767bb          	remw	a5,a4,a5
    80002e0c:	fc0792e3          	bnez	a5,80002dd0 <_ZL16producerKeyboardPv+0x2c>
    80002e10:	fb9ff06f          	j	80002dc8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e14:	00100793          	li	a5,1
    80002e18:	00009717          	auipc	a4,0x9
    80002e1c:	8cf72823          	sw	a5,-1840(a4) # 8000b6e8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e20:	02100593          	li	a1,33
    80002e24:	0084b503          	ld	a0,8(s1)
    80002e28:	00003097          	auipc	ra,0x3
    80002e2c:	3c0080e7          	jalr	960(ra) # 800061e8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e30:	0104b503          	ld	a0,16(s1)
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	860080e7          	jalr	-1952(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	00813483          	ld	s1,8(sp)
    80002e48:	00013903          	ld	s2,0(sp)
    80002e4c:	02010113          	addi	sp,sp,32
    80002e50:	00008067          	ret

0000000080002e54 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	01213023          	sd	s2,0(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e70:	00000913          	li	s2,0
    80002e74:	00c0006f          	j	80002e80 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	6e4080e7          	jalr	1764(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e80:	00009797          	auipc	a5,0x9
    80002e84:	8687a783          	lw	a5,-1944(a5) # 8000b6e8 <_ZL9threadEnd>
    80002e88:	02079e63          	bnez	a5,80002ec4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e8c:	0004a583          	lw	a1,0(s1)
    80002e90:	0305859b          	addiw	a1,a1,48
    80002e94:	0084b503          	ld	a0,8(s1)
    80002e98:	00003097          	auipc	ra,0x3
    80002e9c:	350080e7          	jalr	848(ra) # 800061e8 <_ZN6Buffer3putEi>
        i++;
    80002ea0:	0019071b          	addiw	a4,s2,1
    80002ea4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ea8:	0004a683          	lw	a3,0(s1)
    80002eac:	0026979b          	slliw	a5,a3,0x2
    80002eb0:	00d787bb          	addw	a5,a5,a3
    80002eb4:	0017979b          	slliw	a5,a5,0x1
    80002eb8:	02f767bb          	remw	a5,a4,a5
    80002ebc:	fc0792e3          	bnez	a5,80002e80 <_ZL8producerPv+0x2c>
    80002ec0:	fb9ff06f          	j	80002e78 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ec4:	0104b503          	ld	a0,16(s1)
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	7cc080e7          	jalr	1996(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00813483          	ld	s1,8(sp)
    80002edc:	00013903          	ld	s2,0(sp)
    80002ee0:	02010113          	addi	sp,sp,32
    80002ee4:	00008067          	ret

0000000080002ee8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002ee8:	fd010113          	addi	sp,sp,-48
    80002eec:	02113423          	sd	ra,40(sp)
    80002ef0:	02813023          	sd	s0,32(sp)
    80002ef4:	00913c23          	sd	s1,24(sp)
    80002ef8:	01213823          	sd	s2,16(sp)
    80002efc:	01313423          	sd	s3,8(sp)
    80002f00:	03010413          	addi	s0,sp,48
    80002f04:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f08:	00000993          	li	s3,0
    80002f0c:	01c0006f          	j	80002f28 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	64c080e7          	jalr	1612(ra) # 8000155c <_Z15thread_dispatchv>
    80002f18:	0500006f          	j	80002f68 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f1c:	00a00513          	li	a0,10
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	7fc080e7          	jalr	2044(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80002f28:	00008797          	auipc	a5,0x8
    80002f2c:	7c07a783          	lw	a5,1984(a5) # 8000b6e8 <_ZL9threadEnd>
    80002f30:	06079063          	bnez	a5,80002f90 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f34:	00893503          	ld	a0,8(s2)
    80002f38:	00003097          	auipc	ra,0x3
    80002f3c:	340080e7          	jalr	832(ra) # 80006278 <_ZN6Buffer3getEv>
        i++;
    80002f40:	0019849b          	addiw	s1,s3,1
    80002f44:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f48:	0ff57513          	andi	a0,a0,255
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	7d0080e7          	jalr	2000(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f54:	00092703          	lw	a4,0(s2)
    80002f58:	0027179b          	slliw	a5,a4,0x2
    80002f5c:	00e787bb          	addw	a5,a5,a4
    80002f60:	02f4e7bb          	remw	a5,s1,a5
    80002f64:	fa0786e3          	beqz	a5,80002f10 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f68:	05000793          	li	a5,80
    80002f6c:	02f4e4bb          	remw	s1,s1,a5
    80002f70:	fa049ce3          	bnez	s1,80002f28 <_ZL8consumerPv+0x40>
    80002f74:	fa9ff06f          	j	80002f1c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f78:	00893503          	ld	a0,8(s2)
    80002f7c:	00003097          	auipc	ra,0x3
    80002f80:	2fc080e7          	jalr	764(ra) # 80006278 <_ZN6Buffer3getEv>
        putc(key);
    80002f84:	0ff57513          	andi	a0,a0,255
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	794080e7          	jalr	1940(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f90:	00893503          	ld	a0,8(s2)
    80002f94:	00003097          	auipc	ra,0x3
    80002f98:	370080e7          	jalr	880(ra) # 80006304 <_ZN6Buffer6getCntEv>
    80002f9c:	fca04ee3          	bgtz	a0,80002f78 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fa0:	01093503          	ld	a0,16(s2)
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	6f0080e7          	jalr	1776(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80002fac:	02813083          	ld	ra,40(sp)
    80002fb0:	02013403          	ld	s0,32(sp)
    80002fb4:	01813483          	ld	s1,24(sp)
    80002fb8:	01013903          	ld	s2,16(sp)
    80002fbc:	00813983          	ld	s3,8(sp)
    80002fc0:	03010113          	addi	sp,sp,48
    80002fc4:	00008067          	ret

0000000080002fc8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fc8:	f9010113          	addi	sp,sp,-112
    80002fcc:	06113423          	sd	ra,104(sp)
    80002fd0:	06813023          	sd	s0,96(sp)
    80002fd4:	04913c23          	sd	s1,88(sp)
    80002fd8:	05213823          	sd	s2,80(sp)
    80002fdc:	05313423          	sd	s3,72(sp)
    80002fe0:	05413023          	sd	s4,64(sp)
    80002fe4:	03513c23          	sd	s5,56(sp)
    80002fe8:	03613823          	sd	s6,48(sp)
    80002fec:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002ff0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002ff4:	00006517          	auipc	a0,0x6
    80002ff8:	03c50513          	addi	a0,a0,60 # 80009030 <CONSOLE_STATUS+0x20>
    80002ffc:	00002097          	auipc	ra,0x2
    80003000:	220080e7          	jalr	544(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80003004:	01e00593          	li	a1,30
    80003008:	fa040493          	addi	s1,s0,-96
    8000300c:	00048513          	mv	a0,s1
    80003010:	00002097          	auipc	ra,0x2
    80003014:	294080e7          	jalr	660(ra) # 800052a4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003018:	00048513          	mv	a0,s1
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	360080e7          	jalr	864(ra) # 8000537c <_Z11stringToIntPKc>
    80003024:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003028:	00006517          	auipc	a0,0x6
    8000302c:	02850513          	addi	a0,a0,40 # 80009050 <CONSOLE_STATUS+0x40>
    80003030:	00002097          	auipc	ra,0x2
    80003034:	1ec080e7          	jalr	492(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80003038:	01e00593          	li	a1,30
    8000303c:	00048513          	mv	a0,s1
    80003040:	00002097          	auipc	ra,0x2
    80003044:	264080e7          	jalr	612(ra) # 800052a4 <_Z9getStringPci>
    n = stringToInt(input);
    80003048:	00048513          	mv	a0,s1
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	330080e7          	jalr	816(ra) # 8000537c <_Z11stringToIntPKc>
    80003054:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003058:	00006517          	auipc	a0,0x6
    8000305c:	01850513          	addi	a0,a0,24 # 80009070 <CONSOLE_STATUS+0x60>
    80003060:	00002097          	auipc	ra,0x2
    80003064:	1bc080e7          	jalr	444(ra) # 8000521c <_Z11printStringPKc>
    80003068:	00000613          	li	a2,0
    8000306c:	00a00593          	li	a1,10
    80003070:	00090513          	mv	a0,s2
    80003074:	00002097          	auipc	ra,0x2
    80003078:	358080e7          	jalr	856(ra) # 800053cc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	00c50513          	addi	a0,a0,12 # 80009088 <CONSOLE_STATUS+0x78>
    80003084:	00002097          	auipc	ra,0x2
    80003088:	198080e7          	jalr	408(ra) # 8000521c <_Z11printStringPKc>
    8000308c:	00000613          	li	a2,0
    80003090:	00a00593          	li	a1,10
    80003094:	00048513          	mv	a0,s1
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	334080e7          	jalr	820(ra) # 800053cc <_Z8printIntiii>
    printString(".\n");
    800030a0:	00006517          	auipc	a0,0x6
    800030a4:	00050513          	mv	a0,a0
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	174080e7          	jalr	372(ra) # 8000521c <_Z11printStringPKc>
    if(threadNum > n) {
    800030b0:	0324c463          	blt	s1,s2,800030d8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030b4:	03205c63          	blez	s2,800030ec <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030b8:	03800513          	li	a0,56
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	8b4080e7          	jalr	-1868(ra) # 80001970 <_Znwm>
    800030c4:	00050a13          	mv	s4,a0
    800030c8:	00048593          	mv	a1,s1
    800030cc:	00003097          	auipc	ra,0x3
    800030d0:	080080e7          	jalr	128(ra) # 8000614c <_ZN6BufferC1Ei>
    800030d4:	0300006f          	j	80003104 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030d8:	00006517          	auipc	a0,0x6
    800030dc:	fd050513          	addi	a0,a0,-48 # 800090a8 <CONSOLE_STATUS+0x98>
    800030e0:	00002097          	auipc	ra,0x2
    800030e4:	13c080e7          	jalr	316(ra) # 8000521c <_Z11printStringPKc>
        return;
    800030e8:	0140006f          	j	800030fc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030ec:	00006517          	auipc	a0,0x6
    800030f0:	ffc50513          	addi	a0,a0,-4 # 800090e8 <CONSOLE_STATUS+0xd8>
    800030f4:	00002097          	auipc	ra,0x2
    800030f8:	128080e7          	jalr	296(ra) # 8000521c <_Z11printStringPKc>
        return;
    800030fc:	000b0113          	mv	sp,s6
    80003100:	1500006f          	j	80003250 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003104:	00000593          	li	a1,0
    80003108:	00008517          	auipc	a0,0x8
    8000310c:	5e850513          	addi	a0,a0,1512 # 8000b6f0 <_ZL10waitForAll>
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	4a8080e7          	jalr	1192(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003118:	00391793          	slli	a5,s2,0x3
    8000311c:	00f78793          	addi	a5,a5,15
    80003120:	ff07f793          	andi	a5,a5,-16
    80003124:	40f10133          	sub	sp,sp,a5
    80003128:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000312c:	0019071b          	addiw	a4,s2,1
    80003130:	00171793          	slli	a5,a4,0x1
    80003134:	00e787b3          	add	a5,a5,a4
    80003138:	00379793          	slli	a5,a5,0x3
    8000313c:	00f78793          	addi	a5,a5,15
    80003140:	ff07f793          	andi	a5,a5,-16
    80003144:	40f10133          	sub	sp,sp,a5
    80003148:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000314c:	00191613          	slli	a2,s2,0x1
    80003150:	012607b3          	add	a5,a2,s2
    80003154:	00379793          	slli	a5,a5,0x3
    80003158:	00f987b3          	add	a5,s3,a5
    8000315c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003160:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003164:	00008717          	auipc	a4,0x8
    80003168:	58c73703          	ld	a4,1420(a4) # 8000b6f0 <_ZL10waitForAll>
    8000316c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003170:	00078613          	mv	a2,a5
    80003174:	00000597          	auipc	a1,0x0
    80003178:	d7458593          	addi	a1,a1,-652 # 80002ee8 <_ZL8consumerPv>
    8000317c:	f9840513          	addi	a0,s0,-104
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	2b4080e7          	jalr	692(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003188:	00000493          	li	s1,0
    8000318c:	0280006f          	j	800031b4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003190:	00000597          	auipc	a1,0x0
    80003194:	c1458593          	addi	a1,a1,-1004 # 80002da4 <_ZL16producerKeyboardPv>
                      data + i);
    80003198:	00179613          	slli	a2,a5,0x1
    8000319c:	00f60633          	add	a2,a2,a5
    800031a0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031a4:	00c98633          	add	a2,s3,a2
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	28c080e7          	jalr	652(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031b0:	0014849b          	addiw	s1,s1,1
    800031b4:	0524d263          	bge	s1,s2,800031f8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031b8:	00149793          	slli	a5,s1,0x1
    800031bc:	009787b3          	add	a5,a5,s1
    800031c0:	00379793          	slli	a5,a5,0x3
    800031c4:	00f987b3          	add	a5,s3,a5
    800031c8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031cc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031d0:	00008717          	auipc	a4,0x8
    800031d4:	52073703          	ld	a4,1312(a4) # 8000b6f0 <_ZL10waitForAll>
    800031d8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031dc:	00048793          	mv	a5,s1
    800031e0:	00349513          	slli	a0,s1,0x3
    800031e4:	00aa8533          	add	a0,s5,a0
    800031e8:	fa9054e3          	blez	s1,80003190 <_Z22producerConsumer_C_APIv+0x1c8>
    800031ec:	00000597          	auipc	a1,0x0
    800031f0:	c6858593          	addi	a1,a1,-920 # 80002e54 <_ZL8producerPv>
    800031f4:	fa5ff06f          	j	80003198 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	364080e7          	jalr	868(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003200:	00000493          	li	s1,0
    80003204:	00994e63          	blt	s2,s1,80003220 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003208:	00008517          	auipc	a0,0x8
    8000320c:	4e853503          	ld	a0,1256(a0) # 8000b6f0 <_ZL10waitForAll>
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	438080e7          	jalr	1080(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003218:	0014849b          	addiw	s1,s1,1
    8000321c:	fe9ff06f          	j	80003204 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003220:	00008517          	auipc	a0,0x8
    80003224:	4d053503          	ld	a0,1232(a0) # 8000b6f0 <_ZL10waitForAll>
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	3d4080e7          	jalr	980(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003230:	000a0e63          	beqz	s4,8000324c <_Z22producerConsumer_C_APIv+0x284>
    80003234:	000a0513          	mv	a0,s4
    80003238:	00003097          	auipc	ra,0x3
    8000323c:	154080e7          	jalr	340(ra) # 8000638c <_ZN6BufferD1Ev>
    80003240:	000a0513          	mv	a0,s4
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	77c080e7          	jalr	1916(ra) # 800019c0 <_ZdlPv>
    8000324c:	000b0113          	mv	sp,s6

}
    80003250:	f9040113          	addi	sp,s0,-112
    80003254:	06813083          	ld	ra,104(sp)
    80003258:	06013403          	ld	s0,96(sp)
    8000325c:	05813483          	ld	s1,88(sp)
    80003260:	05013903          	ld	s2,80(sp)
    80003264:	04813983          	ld	s3,72(sp)
    80003268:	04013a03          	ld	s4,64(sp)
    8000326c:	03813a83          	ld	s5,56(sp)
    80003270:	03013b03          	ld	s6,48(sp)
    80003274:	07010113          	addi	sp,sp,112
    80003278:	00008067          	ret
    8000327c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003280:	000a0513          	mv	a0,s4
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	73c080e7          	jalr	1852(ra) # 800019c0 <_ZdlPv>
    8000328c:	00048513          	mv	a0,s1
    80003290:	00009097          	auipc	ra,0x9
    80003294:	578080e7          	jalr	1400(ra) # 8000c808 <_Unwind_Resume>

0000000080003298 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003298:	fe010113          	addi	sp,sp,-32
    8000329c:	00113c23          	sd	ra,24(sp)
    800032a0:	00813823          	sd	s0,16(sp)
    800032a4:	00913423          	sd	s1,8(sp)
    800032a8:	01213023          	sd	s2,0(sp)
    800032ac:	02010413          	addi	s0,sp,32
    800032b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032b4:	00100793          	li	a5,1
    800032b8:	02a7f863          	bgeu	a5,a0,800032e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032bc:	00a00793          	li	a5,10
    800032c0:	02f577b3          	remu	a5,a0,a5
    800032c4:	02078e63          	beqz	a5,80003300 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032c8:	fff48513          	addi	a0,s1,-1
    800032cc:	00000097          	auipc	ra,0x0
    800032d0:	fcc080e7          	jalr	-52(ra) # 80003298 <_ZL9fibonaccim>
    800032d4:	00050913          	mv	s2,a0
    800032d8:	ffe48513          	addi	a0,s1,-2
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	fbc080e7          	jalr	-68(ra) # 80003298 <_ZL9fibonaccim>
    800032e4:	00a90533          	add	a0,s2,a0
}
    800032e8:	01813083          	ld	ra,24(sp)
    800032ec:	01013403          	ld	s0,16(sp)
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	00013903          	ld	s2,0(sp)
    800032f8:	02010113          	addi	sp,sp,32
    800032fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	25c080e7          	jalr	604(ra) # 8000155c <_Z15thread_dispatchv>
    80003308:	fc1ff06f          	j	800032c8 <_ZL9fibonaccim+0x30>

000000008000330c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00113c23          	sd	ra,24(sp)
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	01213023          	sd	s2,0(sp)
    80003320:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003324:	00000913          	li	s2,0
    80003328:	0380006f          	j	80003360 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	230080e7          	jalr	560(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003334:	00148493          	addi	s1,s1,1
    80003338:	000027b7          	lui	a5,0x2
    8000333c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003340:	0097ee63          	bltu	a5,s1,8000335c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003344:	00000713          	li	a4,0
    80003348:	000077b7          	lui	a5,0x7
    8000334c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003350:	fce7eee3          	bltu	a5,a4,8000332c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003354:	00170713          	addi	a4,a4,1
    80003358:	ff1ff06f          	j	80003348 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000335c:	00190913          	addi	s2,s2,1
    80003360:	00900793          	li	a5,9
    80003364:	0527e063          	bltu	a5,s2,800033a4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003368:	00006517          	auipc	a0,0x6
    8000336c:	db050513          	addi	a0,a0,-592 # 80009118 <CONSOLE_STATUS+0x108>
    80003370:	00002097          	auipc	ra,0x2
    80003374:	eac080e7          	jalr	-340(ra) # 8000521c <_Z11printStringPKc>
    80003378:	00000613          	li	a2,0
    8000337c:	00a00593          	li	a1,10
    80003380:	0009051b          	sext.w	a0,s2
    80003384:	00002097          	auipc	ra,0x2
    80003388:	048080e7          	jalr	72(ra) # 800053cc <_Z8printIntiii>
    8000338c:	00006517          	auipc	a0,0x6
    80003390:	fec50513          	addi	a0,a0,-20 # 80009378 <CONSOLE_STATUS+0x368>
    80003394:	00002097          	auipc	ra,0x2
    80003398:	e88080e7          	jalr	-376(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000339c:	00000493          	li	s1,0
    800033a0:	f99ff06f          	j	80003338 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033a4:	00006517          	auipc	a0,0x6
    800033a8:	d7c50513          	addi	a0,a0,-644 # 80009120 <CONSOLE_STATUS+0x110>
    800033ac:	00002097          	auipc	ra,0x2
    800033b0:	e70080e7          	jalr	-400(ra) # 8000521c <_Z11printStringPKc>
    finishedA = true;
    800033b4:	00100793          	li	a5,1
    800033b8:	00008717          	auipc	a4,0x8
    800033bc:	34f70023          	sb	a5,832(a4) # 8000b6f8 <_ZL9finishedA>
}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	00013903          	ld	s2,0(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret

00000000800033d8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	01213023          	sd	s2,0(sp)
    800033ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033f0:	00000913          	li	s2,0
    800033f4:	0380006f          	j	8000342c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	164080e7          	jalr	356(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003400:	00148493          	addi	s1,s1,1
    80003404:	000027b7          	lui	a5,0x2
    80003408:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000340c:	0097ee63          	bltu	a5,s1,80003428 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003410:	00000713          	li	a4,0
    80003414:	000077b7          	lui	a5,0x7
    80003418:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000341c:	fce7eee3          	bltu	a5,a4,800033f8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003420:	00170713          	addi	a4,a4,1
    80003424:	ff1ff06f          	j	80003414 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003428:	00190913          	addi	s2,s2,1
    8000342c:	00f00793          	li	a5,15
    80003430:	0527e063          	bltu	a5,s2,80003470 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003434:	00006517          	auipc	a0,0x6
    80003438:	cfc50513          	addi	a0,a0,-772 # 80009130 <CONSOLE_STATUS+0x120>
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	de0080e7          	jalr	-544(ra) # 8000521c <_Z11printStringPKc>
    80003444:	00000613          	li	a2,0
    80003448:	00a00593          	li	a1,10
    8000344c:	0009051b          	sext.w	a0,s2
    80003450:	00002097          	auipc	ra,0x2
    80003454:	f7c080e7          	jalr	-132(ra) # 800053cc <_Z8printIntiii>
    80003458:	00006517          	auipc	a0,0x6
    8000345c:	f2050513          	addi	a0,a0,-224 # 80009378 <CONSOLE_STATUS+0x368>
    80003460:	00002097          	auipc	ra,0x2
    80003464:	dbc080e7          	jalr	-580(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003468:	00000493          	li	s1,0
    8000346c:	f99ff06f          	j	80003404 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003470:	00006517          	auipc	a0,0x6
    80003474:	cc850513          	addi	a0,a0,-824 # 80009138 <CONSOLE_STATUS+0x128>
    80003478:	00002097          	auipc	ra,0x2
    8000347c:	da4080e7          	jalr	-604(ra) # 8000521c <_Z11printStringPKc>
    finishedB = true;
    80003480:	00100793          	li	a5,1
    80003484:	00008717          	auipc	a4,0x8
    80003488:	26f70aa3          	sb	a5,629(a4) # 8000b6f9 <_ZL9finishedB>
    thread_dispatch();
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	0d0080e7          	jalr	208(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003494:	01813083          	ld	ra,24(sp)
    80003498:	01013403          	ld	s0,16(sp)
    8000349c:	00813483          	ld	s1,8(sp)
    800034a0:	00013903          	ld	s2,0(sp)
    800034a4:	02010113          	addi	sp,sp,32
    800034a8:	00008067          	ret

00000000800034ac <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034c4:	00000493          	li	s1,0
    800034c8:	0400006f          	j	80003508 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034cc:	00006517          	auipc	a0,0x6
    800034d0:	c7c50513          	addi	a0,a0,-900 # 80009148 <CONSOLE_STATUS+0x138>
    800034d4:	00002097          	auipc	ra,0x2
    800034d8:	d48080e7          	jalr	-696(ra) # 8000521c <_Z11printStringPKc>
    800034dc:	00000613          	li	a2,0
    800034e0:	00a00593          	li	a1,10
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	ee4080e7          	jalr	-284(ra) # 800053cc <_Z8printIntiii>
    800034f0:	00006517          	auipc	a0,0x6
    800034f4:	e8850513          	addi	a0,a0,-376 # 80009378 <CONSOLE_STATUS+0x368>
    800034f8:	00002097          	auipc	ra,0x2
    800034fc:	d24080e7          	jalr	-732(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003500:	0014849b          	addiw	s1,s1,1
    80003504:	0ff4f493          	andi	s1,s1,255
    80003508:	00200793          	li	a5,2
    8000350c:	fc97f0e3          	bgeu	a5,s1,800034cc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003510:	00006517          	auipc	a0,0x6
    80003514:	c4050513          	addi	a0,a0,-960 # 80009150 <CONSOLE_STATUS+0x140>
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	d04080e7          	jalr	-764(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003520:	00700313          	li	t1,7
    thread_dispatch();
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	038080e7          	jalr	56(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000352c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	c3050513          	addi	a0,a0,-976 # 80009160 <CONSOLE_STATUS+0x150>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	ce4080e7          	jalr	-796(ra) # 8000521c <_Z11printStringPKc>
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	0009051b          	sext.w	a0,s2
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	e80080e7          	jalr	-384(ra) # 800053cc <_Z8printIntiii>
    80003554:	00006517          	auipc	a0,0x6
    80003558:	e2450513          	addi	a0,a0,-476 # 80009378 <CONSOLE_STATUS+0x368>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	cc0080e7          	jalr	-832(ra) # 8000521c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003564:	00c00513          	li	a0,12
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	d30080e7          	jalr	-720(ra) # 80003298 <_ZL9fibonaccim>
    80003570:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	bf450513          	addi	a0,a0,-1036 # 80009168 <CONSOLE_STATUS+0x158>
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	ca0080e7          	jalr	-864(ra) # 8000521c <_Z11printStringPKc>
    80003584:	00000613          	li	a2,0
    80003588:	00a00593          	li	a1,10
    8000358c:	0009051b          	sext.w	a0,s2
    80003590:	00002097          	auipc	ra,0x2
    80003594:	e3c080e7          	jalr	-452(ra) # 800053cc <_Z8printIntiii>
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	de050513          	addi	a0,a0,-544 # 80009378 <CONSOLE_STATUS+0x368>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	c7c080e7          	jalr	-900(ra) # 8000521c <_Z11printStringPKc>
    800035a8:	0400006f          	j	800035e8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035ac:	00006517          	auipc	a0,0x6
    800035b0:	b9c50513          	addi	a0,a0,-1124 # 80009148 <CONSOLE_STATUS+0x138>
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	c68080e7          	jalr	-920(ra) # 8000521c <_Z11printStringPKc>
    800035bc:	00000613          	li	a2,0
    800035c0:	00a00593          	li	a1,10
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	e04080e7          	jalr	-508(ra) # 800053cc <_Z8printIntiii>
    800035d0:	00006517          	auipc	a0,0x6
    800035d4:	da850513          	addi	a0,a0,-600 # 80009378 <CONSOLE_STATUS+0x368>
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	c44080e7          	jalr	-956(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035e0:	0014849b          	addiw	s1,s1,1
    800035e4:	0ff4f493          	andi	s1,s1,255
    800035e8:	00500793          	li	a5,5
    800035ec:	fc97f0e3          	bgeu	a5,s1,800035ac <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    800035f0:	00006517          	auipc	a0,0x6
    800035f4:	b8850513          	addi	a0,a0,-1144 # 80009178 <CONSOLE_STATUS+0x168>
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	c24080e7          	jalr	-988(ra) # 8000521c <_Z11printStringPKc>
    finishedC = true;
    80003600:	00100793          	li	a5,1
    80003604:	00008717          	auipc	a4,0x8
    80003608:	0ef70b23          	sb	a5,246(a4) # 8000b6fa <_ZL9finishedC>
    thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	f50080e7          	jalr	-176(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	00013903          	ld	s2,0(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret

000000008000362c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	01213023          	sd	s2,0(sp)
    80003640:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003644:	00a00493          	li	s1,10
    80003648:	0400006f          	j	80003688 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000364c:	00006517          	auipc	a0,0x6
    80003650:	b3c50513          	addi	a0,a0,-1220 # 80009188 <CONSOLE_STATUS+0x178>
    80003654:	00002097          	auipc	ra,0x2
    80003658:	bc8080e7          	jalr	-1080(ra) # 8000521c <_Z11printStringPKc>
    8000365c:	00000613          	li	a2,0
    80003660:	00a00593          	li	a1,10
    80003664:	00048513          	mv	a0,s1
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	d64080e7          	jalr	-668(ra) # 800053cc <_Z8printIntiii>
    80003670:	00006517          	auipc	a0,0x6
    80003674:	d0850513          	addi	a0,a0,-760 # 80009378 <CONSOLE_STATUS+0x368>
    80003678:	00002097          	auipc	ra,0x2
    8000367c:	ba4080e7          	jalr	-1116(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003680:	0014849b          	addiw	s1,s1,1
    80003684:	0ff4f493          	andi	s1,s1,255
    80003688:	00c00793          	li	a5,12
    8000368c:	fc97f0e3          	bgeu	a5,s1,8000364c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003690:	00006517          	auipc	a0,0x6
    80003694:	b0050513          	addi	a0,a0,-1280 # 80009190 <CONSOLE_STATUS+0x180>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	b84080e7          	jalr	-1148(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036a0:	00500313          	li	t1,5
    thread_dispatch();
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	eb8080e7          	jalr	-328(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036ac:	01000513          	li	a0,16
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	be8080e7          	jalr	-1048(ra) # 80003298 <_ZL9fibonaccim>
    800036b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	ae450513          	addi	a0,a0,-1308 # 800091a0 <CONSOLE_STATUS+0x190>
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	b58080e7          	jalr	-1192(ra) # 8000521c <_Z11printStringPKc>
    800036cc:	00000613          	li	a2,0
    800036d0:	00a00593          	li	a1,10
    800036d4:	0009051b          	sext.w	a0,s2
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	cf4080e7          	jalr	-780(ra) # 800053cc <_Z8printIntiii>
    800036e0:	00006517          	auipc	a0,0x6
    800036e4:	c9850513          	addi	a0,a0,-872 # 80009378 <CONSOLE_STATUS+0x368>
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	b34080e7          	jalr	-1228(ra) # 8000521c <_Z11printStringPKc>
    800036f0:	0400006f          	j	80003730 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036f4:	00006517          	auipc	a0,0x6
    800036f8:	a9450513          	addi	a0,a0,-1388 # 80009188 <CONSOLE_STATUS+0x178>
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	b20080e7          	jalr	-1248(ra) # 8000521c <_Z11printStringPKc>
    80003704:	00000613          	li	a2,0
    80003708:	00a00593          	li	a1,10
    8000370c:	00048513          	mv	a0,s1
    80003710:	00002097          	auipc	ra,0x2
    80003714:	cbc080e7          	jalr	-836(ra) # 800053cc <_Z8printIntiii>
    80003718:	00006517          	auipc	a0,0x6
    8000371c:	c6050513          	addi	a0,a0,-928 # 80009378 <CONSOLE_STATUS+0x368>
    80003720:	00002097          	auipc	ra,0x2
    80003724:	afc080e7          	jalr	-1284(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003728:	0014849b          	addiw	s1,s1,1
    8000372c:	0ff4f493          	andi	s1,s1,255
    80003730:	00f00793          	li	a5,15
    80003734:	fc97f0e3          	bgeu	a5,s1,800036f4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003738:	00006517          	auipc	a0,0x6
    8000373c:	a7850513          	addi	a0,a0,-1416 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	adc080e7          	jalr	-1316(ra) # 8000521c <_Z11printStringPKc>
    finishedD = true;
    80003748:	00100793          	li	a5,1
    8000374c:	00008717          	auipc	a4,0x8
    80003750:	faf707a3          	sb	a5,-81(a4) # 8000b6fb <_ZL9finishedD>
    thread_dispatch();
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	e08080e7          	jalr	-504(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	00013903          	ld	s2,0(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret

0000000080003774 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003774:	fc010113          	addi	sp,sp,-64
    80003778:	02113c23          	sd	ra,56(sp)
    8000377c:	02813823          	sd	s0,48(sp)
    80003780:	02913423          	sd	s1,40(sp)
    80003784:	03213023          	sd	s2,32(sp)
    80003788:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000378c:	02000513          	li	a0,32
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	1e0080e7          	jalr	480(ra) # 80001970 <_Znwm>
    80003798:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	428080e7          	jalr	1064(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    800037a4:	00008797          	auipc	a5,0x8
    800037a8:	cec78793          	addi	a5,a5,-788 # 8000b490 <_ZTV7WorkerA+0x10>
    800037ac:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037b0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037b4:	00006517          	auipc	a0,0x6
    800037b8:	a0c50513          	addi	a0,a0,-1524 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	a60080e7          	jalr	-1440(ra) # 8000521c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037c4:	02000513          	li	a0,32
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	1a8080e7          	jalr	424(ra) # 80001970 <_Znwm>
    800037d0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	3f0080e7          	jalr	1008(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    800037dc:	00008797          	auipc	a5,0x8
    800037e0:	cdc78793          	addi	a5,a5,-804 # 8000b4b8 <_ZTV7WorkerB+0x10>
    800037e4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037e8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037ec:	00006517          	auipc	a0,0x6
    800037f0:	9ec50513          	addi	a0,a0,-1556 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	a28080e7          	jalr	-1496(ra) # 8000521c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037fc:	02000513          	li	a0,32
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	170080e7          	jalr	368(ra) # 80001970 <_Znwm>
    80003808:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	3b8080e7          	jalr	952(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003814:	00008797          	auipc	a5,0x8
    80003818:	ccc78793          	addi	a5,a5,-820 # 8000b4e0 <_ZTV7WorkerC+0x10>
    8000381c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003820:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003824:	00006517          	auipc	a0,0x6
    80003828:	9cc50513          	addi	a0,a0,-1588 # 800091f0 <CONSOLE_STATUS+0x1e0>
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	9f0080e7          	jalr	-1552(ra) # 8000521c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003834:	02000513          	li	a0,32
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	138080e7          	jalr	312(ra) # 80001970 <_Znwm>
    80003840:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	380080e7          	jalr	896(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	cbc78793          	addi	a5,a5,-836 # 8000b508 <_ZTV7WorkerD+0x10>
    80003854:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003858:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000385c:	00006517          	auipc	a0,0x6
    80003860:	9ac50513          	addi	a0,a0,-1620 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003864:	00002097          	auipc	ra,0x2
    80003868:	9b8080e7          	jalr	-1608(ra) # 8000521c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000386c:	00000493          	li	s1,0
    80003870:	00300793          	li	a5,3
    80003874:	0297c663          	blt	a5,s1,800038a0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003878:	00349793          	slli	a5,s1,0x3
    8000387c:	fe040713          	addi	a4,s0,-32
    80003880:	00f707b3          	add	a5,a4,a5
    80003884:	fe07b503          	ld	a0,-32(a5)
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	2e0080e7          	jalr	736(ra) # 80001b68 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003890:	0014849b          	addiw	s1,s1,1
    80003894:	fddff06f          	j	80003870 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	304080e7          	jalr	772(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	e587c783          	lbu	a5,-424(a5) # 8000b6f8 <_ZL9finishedA>
    800038a8:	fe0788e3          	beqz	a5,80003898 <_Z20Threads_CPP_API_testv+0x124>
    800038ac:	00008797          	auipc	a5,0x8
    800038b0:	e4d7c783          	lbu	a5,-435(a5) # 8000b6f9 <_ZL9finishedB>
    800038b4:	fe0782e3          	beqz	a5,80003898 <_Z20Threads_CPP_API_testv+0x124>
    800038b8:	00008797          	auipc	a5,0x8
    800038bc:	e427c783          	lbu	a5,-446(a5) # 8000b6fa <_ZL9finishedC>
    800038c0:	fc078ce3          	beqz	a5,80003898 <_Z20Threads_CPP_API_testv+0x124>
    800038c4:	00008797          	auipc	a5,0x8
    800038c8:	e377c783          	lbu	a5,-457(a5) # 8000b6fb <_ZL9finishedD>
    800038cc:	fc0786e3          	beqz	a5,80003898 <_Z20Threads_CPP_API_testv+0x124>
    800038d0:	fc040493          	addi	s1,s0,-64
    800038d4:	0080006f          	j	800038dc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038d8:	00848493          	addi	s1,s1,8
    800038dc:	fe040793          	addi	a5,s0,-32
    800038e0:	08f48663          	beq	s1,a5,8000396c <_Z20Threads_CPP_API_testv+0x1f8>
    800038e4:	0004b503          	ld	a0,0(s1)
    800038e8:	fe0508e3          	beqz	a0,800038d8 <_Z20Threads_CPP_API_testv+0x164>
    800038ec:	00053783          	ld	a5,0(a0)
    800038f0:	0087b783          	ld	a5,8(a5)
    800038f4:	000780e7          	jalr	a5
    800038f8:	fe1ff06f          	j	800038d8 <_Z20Threads_CPP_API_testv+0x164>
    800038fc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003900:	00048513          	mv	a0,s1
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	0bc080e7          	jalr	188(ra) # 800019c0 <_ZdlPv>
    8000390c:	00090513          	mv	a0,s2
    80003910:	00009097          	auipc	ra,0x9
    80003914:	ef8080e7          	jalr	-264(ra) # 8000c808 <_Unwind_Resume>
    80003918:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000391c:	00048513          	mv	a0,s1
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	0a0080e7          	jalr	160(ra) # 800019c0 <_ZdlPv>
    80003928:	00090513          	mv	a0,s2
    8000392c:	00009097          	auipc	ra,0x9
    80003930:	edc080e7          	jalr	-292(ra) # 8000c808 <_Unwind_Resume>
    80003934:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003938:	00048513          	mv	a0,s1
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	084080e7          	jalr	132(ra) # 800019c0 <_ZdlPv>
    80003944:	00090513          	mv	a0,s2
    80003948:	00009097          	auipc	ra,0x9
    8000394c:	ec0080e7          	jalr	-320(ra) # 8000c808 <_Unwind_Resume>
    80003950:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003954:	00048513          	mv	a0,s1
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	068080e7          	jalr	104(ra) # 800019c0 <_ZdlPv>
    80003960:	00090513          	mv	a0,s2
    80003964:	00009097          	auipc	ra,0x9
    80003968:	ea4080e7          	jalr	-348(ra) # 8000c808 <_Unwind_Resume>
}
    8000396c:	03813083          	ld	ra,56(sp)
    80003970:	03013403          	ld	s0,48(sp)
    80003974:	02813483          	ld	s1,40(sp)
    80003978:	02013903          	ld	s2,32(sp)
    8000397c:	04010113          	addi	sp,sp,64
    80003980:	00008067          	ret

0000000080003984 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	00008797          	auipc	a5,0x8
    80003998:	afc78793          	addi	a5,a5,-1284 # 8000b490 <_ZTV7WorkerA+0x10>
    8000399c:	00f53023          	sd	a5,0(a0)
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	09c080e7          	jalr	156(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800039a8:	00813083          	ld	ra,8(sp)
    800039ac:	00013403          	ld	s0,0(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret

00000000800039b8 <_ZN7WorkerAD0Ev>:
    800039b8:	fe010113          	addi	sp,sp,-32
    800039bc:	00113c23          	sd	ra,24(sp)
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	02010413          	addi	s0,sp,32
    800039cc:	00050493          	mv	s1,a0
    800039d0:	00008797          	auipc	a5,0x8
    800039d4:	ac078793          	addi	a5,a5,-1344 # 8000b490 <_ZTV7WorkerA+0x10>
    800039d8:	00f53023          	sd	a5,0(a0)
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	060080e7          	jalr	96(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	fd8080e7          	jalr	-40(ra) # 800019c0 <_ZdlPv>
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret

0000000080003a04 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	00813023          	sd	s0,0(sp)
    80003a10:	01010413          	addi	s0,sp,16
    80003a14:	00008797          	auipc	a5,0x8
    80003a18:	aa478793          	addi	a5,a5,-1372 # 8000b4b8 <_ZTV7WorkerB+0x10>
    80003a1c:	00f53023          	sd	a5,0(a0)
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	01c080e7          	jalr	28(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003a28:	00813083          	ld	ra,8(sp)
    80003a2c:	00013403          	ld	s0,0(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <_ZN7WorkerBD0Ev>:
    80003a38:	fe010113          	addi	sp,sp,-32
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00913423          	sd	s1,8(sp)
    80003a48:	02010413          	addi	s0,sp,32
    80003a4c:	00050493          	mv	s1,a0
    80003a50:	00008797          	auipc	a5,0x8
    80003a54:	a6878793          	addi	a5,a5,-1432 # 8000b4b8 <_ZTV7WorkerB+0x10>
    80003a58:	00f53023          	sd	a5,0(a0)
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	fe0080e7          	jalr	-32(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003a64:	00048513          	mv	a0,s1
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	f58080e7          	jalr	-168(ra) # 800019c0 <_ZdlPv>
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret

0000000080003a84 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	01010413          	addi	s0,sp,16
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	a4c78793          	addi	a5,a5,-1460 # 8000b4e0 <_ZTV7WorkerC+0x10>
    80003a9c:	00f53023          	sd	a5,0(a0)
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	f9c080e7          	jalr	-100(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003aa8:	00813083          	ld	ra,8(sp)
    80003aac:	00013403          	ld	s0,0(sp)
    80003ab0:	01010113          	addi	sp,sp,16
    80003ab4:	00008067          	ret

0000000080003ab8 <_ZN7WorkerCD0Ev>:
    80003ab8:	fe010113          	addi	sp,sp,-32
    80003abc:	00113c23          	sd	ra,24(sp)
    80003ac0:	00813823          	sd	s0,16(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	02010413          	addi	s0,sp,32
    80003acc:	00050493          	mv	s1,a0
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	a1078793          	addi	a5,a5,-1520 # 8000b4e0 <_ZTV7WorkerC+0x10>
    80003ad8:	00f53023          	sd	a5,0(a0)
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	f60080e7          	jalr	-160(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	ed8080e7          	jalr	-296(ra) # 800019c0 <_ZdlPv>
    80003af0:	01813083          	ld	ra,24(sp)
    80003af4:	01013403          	ld	s0,16(sp)
    80003af8:	00813483          	ld	s1,8(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret

0000000080003b04 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	00813023          	sd	s0,0(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	00008797          	auipc	a5,0x8
    80003b18:	9f478793          	addi	a5,a5,-1548 # 8000b508 <_ZTV7WorkerD+0x10>
    80003b1c:	00f53023          	sd	a5,0(a0)
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	f1c080e7          	jalr	-228(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003b28:	00813083          	ld	ra,8(sp)
    80003b2c:	00013403          	ld	s0,0(sp)
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <_ZN7WorkerDD0Ev>:
    80003b38:	fe010113          	addi	sp,sp,-32
    80003b3c:	00113c23          	sd	ra,24(sp)
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00913423          	sd	s1,8(sp)
    80003b48:	02010413          	addi	s0,sp,32
    80003b4c:	00050493          	mv	s1,a0
    80003b50:	00008797          	auipc	a5,0x8
    80003b54:	9b878793          	addi	a5,a5,-1608 # 8000b508 <_ZTV7WorkerD+0x10>
    80003b58:	00f53023          	sd	a5,0(a0)
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	ee0080e7          	jalr	-288(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80003b64:	00048513          	mv	a0,s1
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	e58080e7          	jalr	-424(ra) # 800019c0 <_ZdlPv>
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	02010113          	addi	sp,sp,32
    80003b80:	00008067          	ret

0000000080003b84 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	00813023          	sd	s0,0(sp)
    80003b90:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b94:	00000593          	li	a1,0
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	774080e7          	jalr	1908(ra) # 8000330c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003ba0:	00813083          	ld	ra,8(sp)
    80003ba4:	00013403          	ld	s0,0(sp)
    80003ba8:	01010113          	addi	sp,sp,16
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003bb0:	ff010113          	addi	sp,sp,-16
    80003bb4:	00113423          	sd	ra,8(sp)
    80003bb8:	00813023          	sd	s0,0(sp)
    80003bbc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bc0:	00000593          	li	a1,0
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	814080e7          	jalr	-2028(ra) # 800033d8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN7WorkerC3runEv>:
    void run() override {
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00113423          	sd	ra,8(sp)
    80003be4:	00813023          	sd	s0,0(sp)
    80003be8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003bec:	00000593          	li	a1,0
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	8bc080e7          	jalr	-1860(ra) # 800034ac <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bf8:	00813083          	ld	ra,8(sp)
    80003bfc:	00013403          	ld	s0,0(sp)
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret

0000000080003c08 <_ZN7WorkerD3runEv>:
    void run() override {
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00113423          	sd	ra,8(sp)
    80003c10:	00813023          	sd	s0,0(sp)
    80003c14:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c18:	00000593          	li	a1,0
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	a10080e7          	jalr	-1520(ra) # 8000362c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c24:	00813083          	ld	ra,8(sp)
    80003c28:	00013403          	ld	s0,0(sp)
    80003c2c:	01010113          	addi	sp,sp,16
    80003c30:	00008067          	ret

0000000080003c34 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c34:	f8010113          	addi	sp,sp,-128
    80003c38:	06113c23          	sd	ra,120(sp)
    80003c3c:	06813823          	sd	s0,112(sp)
    80003c40:	06913423          	sd	s1,104(sp)
    80003c44:	07213023          	sd	s2,96(sp)
    80003c48:	05313c23          	sd	s3,88(sp)
    80003c4c:	05413823          	sd	s4,80(sp)
    80003c50:	05513423          	sd	s5,72(sp)
    80003c54:	05613023          	sd	s6,64(sp)
    80003c58:	03713c23          	sd	s7,56(sp)
    80003c5c:	03813823          	sd	s8,48(sp)
    80003c60:	03913423          	sd	s9,40(sp)
    80003c64:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c68:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c6c:	00005517          	auipc	a0,0x5
    80003c70:	3c450513          	addi	a0,a0,964 # 80009030 <CONSOLE_STATUS+0x20>
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	5a8080e7          	jalr	1448(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80003c7c:	01e00593          	li	a1,30
    80003c80:	f8040493          	addi	s1,s0,-128
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	61c080e7          	jalr	1564(ra) # 800052a4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	6e8080e7          	jalr	1768(ra) # 8000537c <_Z11stringToIntPKc>
    80003c9c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	3b050513          	addi	a0,a0,944 # 80009050 <CONSOLE_STATUS+0x40>
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	574080e7          	jalr	1396(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80003cb0:	01e00593          	li	a1,30
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	5ec080e7          	jalr	1516(ra) # 800052a4 <_Z9getStringPci>
    n = stringToInt(input);
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	6b8080e7          	jalr	1720(ra) # 8000537c <_Z11stringToIntPKc>
    80003ccc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cd0:	00005517          	auipc	a0,0x5
    80003cd4:	3a050513          	addi	a0,a0,928 # 80009070 <CONSOLE_STATUS+0x60>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	544080e7          	jalr	1348(ra) # 8000521c <_Z11printStringPKc>
    printInt(threadNum);
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00098513          	mv	a0,s3
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	6e0080e7          	jalr	1760(ra) # 800053cc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	39450513          	addi	a0,a0,916 # 80009088 <CONSOLE_STATUS+0x78>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	520080e7          	jalr	1312(ra) # 8000521c <_Z11printStringPKc>
    printInt(n);
    80003d04:	00000613          	li	a2,0
    80003d08:	00a00593          	li	a1,10
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	6bc080e7          	jalr	1724(ra) # 800053cc <_Z8printIntiii>
    printString(".\n");
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	38850513          	addi	a0,a0,904 # 800090a0 <CONSOLE_STATUS+0x90>
    80003d20:	00001097          	auipc	ra,0x1
    80003d24:	4fc080e7          	jalr	1276(ra) # 8000521c <_Z11printStringPKc>
    if (threadNum > n) {
    80003d28:	0334c463          	blt	s1,s3,80003d50 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d2c:	03305c63          	blez	s3,80003d64 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d30:	03800513          	li	a0,56
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	c3c080e7          	jalr	-964(ra) # 80001970 <_Znwm>
    80003d3c:	00050a93          	mv	s5,a0
    80003d40:	00048593          	mv	a1,s1
    80003d44:	00001097          	auipc	ra,0x1
    80003d48:	7a8080e7          	jalr	1960(ra) # 800054ec <_ZN9BufferCPPC1Ei>
    80003d4c:	0300006f          	j	80003d7c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	35850513          	addi	a0,a0,856 # 800090a8 <CONSOLE_STATUS+0x98>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	4c4080e7          	jalr	1220(ra) # 8000521c <_Z11printStringPKc>
        return;
    80003d60:	0140006f          	j	80003d74 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d64:	00005517          	auipc	a0,0x5
    80003d68:	38450513          	addi	a0,a0,900 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	4b0080e7          	jalr	1200(ra) # 8000521c <_Z11printStringPKc>
        return;
    80003d74:	000c0113          	mv	sp,s8
    80003d78:	2140006f          	j	80003f8c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d7c:	01000513          	li	a0,16
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	bf0080e7          	jalr	-1040(ra) # 80001970 <_Znwm>
    80003d88:	00050913          	mv	s2,a0
    80003d8c:	00000593          	li	a1,0
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	ec0080e7          	jalr	-320(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80003d98:	00008797          	auipc	a5,0x8
    80003d9c:	9727b823          	sd	s2,-1680(a5) # 8000b708 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003da0:	00399793          	slli	a5,s3,0x3
    80003da4:	00f78793          	addi	a5,a5,15
    80003da8:	ff07f793          	andi	a5,a5,-16
    80003dac:	40f10133          	sub	sp,sp,a5
    80003db0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003db4:	0019871b          	addiw	a4,s3,1
    80003db8:	00171793          	slli	a5,a4,0x1
    80003dbc:	00e787b3          	add	a5,a5,a4
    80003dc0:	00379793          	slli	a5,a5,0x3
    80003dc4:	00f78793          	addi	a5,a5,15
    80003dc8:	ff07f793          	andi	a5,a5,-16
    80003dcc:	40f10133          	sub	sp,sp,a5
    80003dd0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003dd4:	00199493          	slli	s1,s3,0x1
    80003dd8:	013484b3          	add	s1,s1,s3
    80003ddc:	00349493          	slli	s1,s1,0x3
    80003de0:	009b04b3          	add	s1,s6,s1
    80003de4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003de8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003dec:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003df0:	02800513          	li	a0,40
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	b7c080e7          	jalr	-1156(ra) # 80001970 <_Znwm>
    80003dfc:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	dc4080e7          	jalr	-572(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003e08:	00007797          	auipc	a5,0x7
    80003e0c:	77878793          	addi	a5,a5,1912 # 8000b580 <_ZTV8Consumer+0x10>
    80003e10:	00fbb023          	sd	a5,0(s7)
    80003e14:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e18:	000b8513          	mv	a0,s7
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	d4c080e7          	jalr	-692(ra) # 80001b68 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e24:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e28:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e2c:	00008797          	auipc	a5,0x8
    80003e30:	8dc7b783          	ld	a5,-1828(a5) # 8000b708 <_ZL10waitForAll>
    80003e34:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e38:	02800513          	li	a0,40
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	b34080e7          	jalr	-1228(ra) # 80001970 <_Znwm>
    80003e44:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	d7c080e7          	jalr	-644(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003e50:	00007797          	auipc	a5,0x7
    80003e54:	6e078793          	addi	a5,a5,1760 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    80003e58:	00f4b023          	sd	a5,0(s1)
    80003e5c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e60:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e64:	00048513          	mv	a0,s1
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	d00080e7          	jalr	-768(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e70:	00100913          	li	s2,1
    80003e74:	0300006f          	j	80003ea4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e78:	00007797          	auipc	a5,0x7
    80003e7c:	6e078793          	addi	a5,a5,1760 # 8000b558 <_ZTV8Producer+0x10>
    80003e80:	00fcb023          	sd	a5,0(s9)
    80003e84:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e88:	00391793          	slli	a5,s2,0x3
    80003e8c:	00fa07b3          	add	a5,s4,a5
    80003e90:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e94:	000c8513          	mv	a0,s9
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	cd0080e7          	jalr	-816(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ea0:	0019091b          	addiw	s2,s2,1
    80003ea4:	05395263          	bge	s2,s3,80003ee8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003ea8:	00191493          	slli	s1,s2,0x1
    80003eac:	012484b3          	add	s1,s1,s2
    80003eb0:	00349493          	slli	s1,s1,0x3
    80003eb4:	009b04b3          	add	s1,s6,s1
    80003eb8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ebc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003ec0:	00008797          	auipc	a5,0x8
    80003ec4:	8487b783          	ld	a5,-1976(a5) # 8000b708 <_ZL10waitForAll>
    80003ec8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ecc:	02800513          	li	a0,40
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	aa0080e7          	jalr	-1376(ra) # 80001970 <_Znwm>
    80003ed8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	ce8080e7          	jalr	-792(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80003ee4:	f95ff06f          	j	80003e78 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	cb4080e7          	jalr	-844(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ef0:	00000493          	li	s1,0
    80003ef4:	0099ce63          	blt	s3,s1,80003f10 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ef8:	00008517          	auipc	a0,0x8
    80003efc:	81053503          	ld	a0,-2032(a0) # 8000b708 <_ZL10waitForAll>
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	d8c080e7          	jalr	-628(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f08:	0014849b          	addiw	s1,s1,1
    80003f0c:	fe9ff06f          	j	80003ef4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f10:	00007517          	auipc	a0,0x7
    80003f14:	7f853503          	ld	a0,2040(a0) # 8000b708 <_ZL10waitForAll>
    80003f18:	00050863          	beqz	a0,80003f28 <_Z20testConsumerProducerv+0x2f4>
    80003f1c:	00053783          	ld	a5,0(a0)
    80003f20:	0087b783          	ld	a5,8(a5)
    80003f24:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f28:	00000493          	li	s1,0
    80003f2c:	0080006f          	j	80003f34 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f30:	0014849b          	addiw	s1,s1,1
    80003f34:	0334d263          	bge	s1,s3,80003f58 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f38:	00349793          	slli	a5,s1,0x3
    80003f3c:	00fa07b3          	add	a5,s4,a5
    80003f40:	0007b503          	ld	a0,0(a5)
    80003f44:	fe0506e3          	beqz	a0,80003f30 <_Z20testConsumerProducerv+0x2fc>
    80003f48:	00053783          	ld	a5,0(a0)
    80003f4c:	0087b783          	ld	a5,8(a5)
    80003f50:	000780e7          	jalr	a5
    80003f54:	fddff06f          	j	80003f30 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f58:	000b8a63          	beqz	s7,80003f6c <_Z20testConsumerProducerv+0x338>
    80003f5c:	000bb783          	ld	a5,0(s7)
    80003f60:	0087b783          	ld	a5,8(a5)
    80003f64:	000b8513          	mv	a0,s7
    80003f68:	000780e7          	jalr	a5
    delete buffer;
    80003f6c:	000a8e63          	beqz	s5,80003f88 <_Z20testConsumerProducerv+0x354>
    80003f70:	000a8513          	mv	a0,s5
    80003f74:	00002097          	auipc	ra,0x2
    80003f78:	870080e7          	jalr	-1936(ra) # 800057e4 <_ZN9BufferCPPD1Ev>
    80003f7c:	000a8513          	mv	a0,s5
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	a40080e7          	jalr	-1472(ra) # 800019c0 <_ZdlPv>
    80003f88:	000c0113          	mv	sp,s8
}
    80003f8c:	f8040113          	addi	sp,s0,-128
    80003f90:	07813083          	ld	ra,120(sp)
    80003f94:	07013403          	ld	s0,112(sp)
    80003f98:	06813483          	ld	s1,104(sp)
    80003f9c:	06013903          	ld	s2,96(sp)
    80003fa0:	05813983          	ld	s3,88(sp)
    80003fa4:	05013a03          	ld	s4,80(sp)
    80003fa8:	04813a83          	ld	s5,72(sp)
    80003fac:	04013b03          	ld	s6,64(sp)
    80003fb0:	03813b83          	ld	s7,56(sp)
    80003fb4:	03013c03          	ld	s8,48(sp)
    80003fb8:	02813c83          	ld	s9,40(sp)
    80003fbc:	08010113          	addi	sp,sp,128
    80003fc0:	00008067          	ret
    80003fc4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fc8:	000a8513          	mv	a0,s5
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	9f4080e7          	jalr	-1548(ra) # 800019c0 <_ZdlPv>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	00009097          	auipc	ra,0x9
    80003fdc:	830080e7          	jalr	-2000(ra) # 8000c808 <_Unwind_Resume>
    80003fe0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fe4:	00090513          	mv	a0,s2
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	9d8080e7          	jalr	-1576(ra) # 800019c0 <_ZdlPv>
    80003ff0:	00048513          	mv	a0,s1
    80003ff4:	00009097          	auipc	ra,0x9
    80003ff8:	814080e7          	jalr	-2028(ra) # 8000c808 <_Unwind_Resume>
    80003ffc:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004000:	000b8513          	mv	a0,s7
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	9bc080e7          	jalr	-1604(ra) # 800019c0 <_ZdlPv>
    8000400c:	00048513          	mv	a0,s1
    80004010:	00008097          	auipc	ra,0x8
    80004014:	7f8080e7          	jalr	2040(ra) # 8000c808 <_Unwind_Resume>
    80004018:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000401c:	00048513          	mv	a0,s1
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	9a0080e7          	jalr	-1632(ra) # 800019c0 <_ZdlPv>
    80004028:	00090513          	mv	a0,s2
    8000402c:	00008097          	auipc	ra,0x8
    80004030:	7dc080e7          	jalr	2012(ra) # 8000c808 <_Unwind_Resume>
    80004034:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004038:	000c8513          	mv	a0,s9
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	984080e7          	jalr	-1660(ra) # 800019c0 <_ZdlPv>
    80004044:	00048513          	mv	a0,s1
    80004048:	00008097          	auipc	ra,0x8
    8000404c:	7c0080e7          	jalr	1984(ra) # 8000c808 <_Unwind_Resume>

0000000080004050 <_ZN8Consumer3runEv>:
    void run() override {
    80004050:	fd010113          	addi	sp,sp,-48
    80004054:	02113423          	sd	ra,40(sp)
    80004058:	02813023          	sd	s0,32(sp)
    8000405c:	00913c23          	sd	s1,24(sp)
    80004060:	01213823          	sd	s2,16(sp)
    80004064:	01313423          	sd	s3,8(sp)
    80004068:	03010413          	addi	s0,sp,48
    8000406c:	00050913          	mv	s2,a0
        int i = 0;
    80004070:	00000993          	li	s3,0
    80004074:	0100006f          	j	80004084 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004078:	00a00513          	li	a0,10
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	ce8080e7          	jalr	-792(ra) # 80001d64 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004084:	00007797          	auipc	a5,0x7
    80004088:	67c7a783          	lw	a5,1660(a5) # 8000b700 <_ZL9threadEnd>
    8000408c:	04079a63          	bnez	a5,800040e0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004090:	02093783          	ld	a5,32(s2)
    80004094:	0087b503          	ld	a0,8(a5)
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	638080e7          	jalr	1592(ra) # 800056d0 <_ZN9BufferCPP3getEv>
            i++;
    800040a0:	0019849b          	addiw	s1,s3,1
    800040a4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040a8:	0ff57513          	andi	a0,a0,255
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	cb8080e7          	jalr	-840(ra) # 80001d64 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040b4:	05000793          	li	a5,80
    800040b8:	02f4e4bb          	remw	s1,s1,a5
    800040bc:	fc0494e3          	bnez	s1,80004084 <_ZN8Consumer3runEv+0x34>
    800040c0:	fb9ff06f          	j	80004078 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040c4:	02093783          	ld	a5,32(s2)
    800040c8:	0087b503          	ld	a0,8(a5)
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	604080e7          	jalr	1540(ra) # 800056d0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040d4:	0ff57513          	andi	a0,a0,255
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	c8c080e7          	jalr	-884(ra) # 80001d64 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040e0:	02093783          	ld	a5,32(s2)
    800040e4:	0087b503          	ld	a0,8(a5)
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	674080e7          	jalr	1652(ra) # 8000575c <_ZN9BufferCPP6getCntEv>
    800040f0:	fca04ae3          	bgtz	a0,800040c4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040f4:	02093783          	ld	a5,32(s2)
    800040f8:	0107b503          	ld	a0,16(a5)
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	bbc080e7          	jalr	-1092(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    80004104:	02813083          	ld	ra,40(sp)
    80004108:	02013403          	ld	s0,32(sp)
    8000410c:	01813483          	ld	s1,24(sp)
    80004110:	01013903          	ld	s2,16(sp)
    80004114:	00813983          	ld	s3,8(sp)
    80004118:	03010113          	addi	sp,sp,48
    8000411c:	00008067          	ret

0000000080004120 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004120:	ff010113          	addi	sp,sp,-16
    80004124:	00113423          	sd	ra,8(sp)
    80004128:	00813023          	sd	s0,0(sp)
    8000412c:	01010413          	addi	s0,sp,16
    80004130:	00007797          	auipc	a5,0x7
    80004134:	45078793          	addi	a5,a5,1104 # 8000b580 <_ZTV8Consumer+0x10>
    80004138:	00f53023          	sd	a5,0(a0)
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	900080e7          	jalr	-1792(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004144:	00813083          	ld	ra,8(sp)
    80004148:	00013403          	ld	s0,0(sp)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <_ZN8ConsumerD0Ev>:
    80004154:	fe010113          	addi	sp,sp,-32
    80004158:	00113c23          	sd	ra,24(sp)
    8000415c:	00813823          	sd	s0,16(sp)
    80004160:	00913423          	sd	s1,8(sp)
    80004164:	02010413          	addi	s0,sp,32
    80004168:	00050493          	mv	s1,a0
    8000416c:	00007797          	auipc	a5,0x7
    80004170:	41478793          	addi	a5,a5,1044 # 8000b580 <_ZTV8Consumer+0x10>
    80004174:	00f53023          	sd	a5,0(a0)
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	8c4080e7          	jalr	-1852(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004180:	00048513          	mv	a0,s1
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	83c080e7          	jalr	-1988(ra) # 800019c0 <_ZdlPv>
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret

00000000800041a0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041a0:	ff010113          	addi	sp,sp,-16
    800041a4:	00113423          	sd	ra,8(sp)
    800041a8:	00813023          	sd	s0,0(sp)
    800041ac:	01010413          	addi	s0,sp,16
    800041b0:	00007797          	auipc	a5,0x7
    800041b4:	38078793          	addi	a5,a5,896 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    800041b8:	00f53023          	sd	a5,0(a0)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	880080e7          	jalr	-1920(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800041c4:	00813083          	ld	ra,8(sp)
    800041c8:	00013403          	ld	s0,0(sp)
    800041cc:	01010113          	addi	sp,sp,16
    800041d0:	00008067          	ret

00000000800041d4 <_ZN16ProducerKeyboradD0Ev>:
    800041d4:	fe010113          	addi	sp,sp,-32
    800041d8:	00113c23          	sd	ra,24(sp)
    800041dc:	00813823          	sd	s0,16(sp)
    800041e0:	00913423          	sd	s1,8(sp)
    800041e4:	02010413          	addi	s0,sp,32
    800041e8:	00050493          	mv	s1,a0
    800041ec:	00007797          	auipc	a5,0x7
    800041f0:	34478793          	addi	a5,a5,836 # 8000b530 <_ZTV16ProducerKeyborad+0x10>
    800041f4:	00f53023          	sd	a5,0(a0)
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	844080e7          	jalr	-1980(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004200:	00048513          	mv	a0,s1
    80004204:	ffffd097          	auipc	ra,0xffffd
    80004208:	7bc080e7          	jalr	1980(ra) # 800019c0 <_ZdlPv>
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	00813483          	ld	s1,8(sp)
    80004218:	02010113          	addi	sp,sp,32
    8000421c:	00008067          	ret

0000000080004220 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004220:	ff010113          	addi	sp,sp,-16
    80004224:	00113423          	sd	ra,8(sp)
    80004228:	00813023          	sd	s0,0(sp)
    8000422c:	01010413          	addi	s0,sp,16
    80004230:	00007797          	auipc	a5,0x7
    80004234:	32878793          	addi	a5,a5,808 # 8000b558 <_ZTV8Producer+0x10>
    80004238:	00f53023          	sd	a5,0(a0)
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	800080e7          	jalr	-2048(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004244:	00813083          	ld	ra,8(sp)
    80004248:	00013403          	ld	s0,0(sp)
    8000424c:	01010113          	addi	sp,sp,16
    80004250:	00008067          	ret

0000000080004254 <_ZN8ProducerD0Ev>:
    80004254:	fe010113          	addi	sp,sp,-32
    80004258:	00113c23          	sd	ra,24(sp)
    8000425c:	00813823          	sd	s0,16(sp)
    80004260:	00913423          	sd	s1,8(sp)
    80004264:	02010413          	addi	s0,sp,32
    80004268:	00050493          	mv	s1,a0
    8000426c:	00007797          	auipc	a5,0x7
    80004270:	2ec78793          	addi	a5,a5,748 # 8000b558 <_ZTV8Producer+0x10>
    80004274:	00f53023          	sd	a5,0(a0)
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	7c4080e7          	jalr	1988(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80004280:	00048513          	mv	a0,s1
    80004284:	ffffd097          	auipc	ra,0xffffd
    80004288:	73c080e7          	jalr	1852(ra) # 800019c0 <_ZdlPv>
    8000428c:	01813083          	ld	ra,24(sp)
    80004290:	01013403          	ld	s0,16(sp)
    80004294:	00813483          	ld	s1,8(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret

00000000800042a0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00113c23          	sd	ra,24(sp)
    800042a8:	00813823          	sd	s0,16(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	02010413          	addi	s0,sp,32
    800042b4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	428080e7          	jalr	1064(ra) # 800016e0 <_Z4getcv>
    800042c0:	0005059b          	sext.w	a1,a0
    800042c4:	01b00793          	li	a5,27
    800042c8:	00f58c63          	beq	a1,a5,800042e0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042cc:	0204b783          	ld	a5,32(s1)
    800042d0:	0087b503          	ld	a0,8(a5)
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	36c080e7          	jalr	876(ra) # 80005640 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042dc:	fddff06f          	j	800042b8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042e0:	00100793          	li	a5,1
    800042e4:	00007717          	auipc	a4,0x7
    800042e8:	40f72e23          	sw	a5,1052(a4) # 8000b700 <_ZL9threadEnd>
        td->buffer->put('!');
    800042ec:	0204b783          	ld	a5,32(s1)
    800042f0:	02100593          	li	a1,33
    800042f4:	0087b503          	ld	a0,8(a5)
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	348080e7          	jalr	840(ra) # 80005640 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004300:	0204b783          	ld	a5,32(s1)
    80004304:	0107b503          	ld	a0,16(a5)
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	9b0080e7          	jalr	-1616(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret

0000000080004324 <_ZN8Producer3runEv>:
    void run() override {
    80004324:	fe010113          	addi	sp,sp,-32
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	00813823          	sd	s0,16(sp)
    80004330:	00913423          	sd	s1,8(sp)
    80004334:	01213023          	sd	s2,0(sp)
    80004338:	02010413          	addi	s0,sp,32
    8000433c:	00050493          	mv	s1,a0
        int i = 0;
    80004340:	00000913          	li	s2,0
        while (!threadEnd) {
    80004344:	00007797          	auipc	a5,0x7
    80004348:	3bc7a783          	lw	a5,956(a5) # 8000b700 <_ZL9threadEnd>
    8000434c:	04079263          	bnez	a5,80004390 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004350:	0204b783          	ld	a5,32(s1)
    80004354:	0007a583          	lw	a1,0(a5)
    80004358:	0305859b          	addiw	a1,a1,48
    8000435c:	0087b503          	ld	a0,8(a5)
    80004360:	00001097          	auipc	ra,0x1
    80004364:	2e0080e7          	jalr	736(ra) # 80005640 <_ZN9BufferCPP3putEi>
            i++;
    80004368:	0019071b          	addiw	a4,s2,1
    8000436c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004370:	0204b783          	ld	a5,32(s1)
    80004374:	0007a783          	lw	a5,0(a5)
    80004378:	00e787bb          	addw	a5,a5,a4
    8000437c:	00500513          	li	a0,5
    80004380:	02a7e53b          	remw	a0,a5,a0
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	8a4080e7          	jalr	-1884(ra) # 80001c28 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000438c:	fb9ff06f          	j	80004344 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004390:	0204b783          	ld	a5,32(s1)
    80004394:	0107b503          	ld	a0,16(a5)
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	920080e7          	jalr	-1760(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    }
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	00013903          	ld	s2,0(sp)
    800043b0:	02010113          	addi	sp,sp,32
    800043b4:	00008067          	ret

00000000800043b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043b8:	fe010113          	addi	sp,sp,-32
    800043bc:	00113c23          	sd	ra,24(sp)
    800043c0:	00813823          	sd	s0,16(sp)
    800043c4:	00913423          	sd	s1,8(sp)
    800043c8:	01213023          	sd	s2,0(sp)
    800043cc:	02010413          	addi	s0,sp,32
    800043d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043d4:	00100793          	li	a5,1
    800043d8:	02a7f863          	bgeu	a5,a0,80004408 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043dc:	00a00793          	li	a5,10
    800043e0:	02f577b3          	remu	a5,a0,a5
    800043e4:	02078e63          	beqz	a5,80004420 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043e8:	fff48513          	addi	a0,s1,-1
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	fcc080e7          	jalr	-52(ra) # 800043b8 <_ZL9fibonaccim>
    800043f4:	00050913          	mv	s2,a0
    800043f8:	ffe48513          	addi	a0,s1,-2
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	fbc080e7          	jalr	-68(ra) # 800043b8 <_ZL9fibonaccim>
    80004404:	00a90533          	add	a0,s2,a0
}
    80004408:	01813083          	ld	ra,24(sp)
    8000440c:	01013403          	ld	s0,16(sp)
    80004410:	00813483          	ld	s1,8(sp)
    80004414:	00013903          	ld	s2,0(sp)
    80004418:	02010113          	addi	sp,sp,32
    8000441c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004420:	ffffd097          	auipc	ra,0xffffd
    80004424:	13c080e7          	jalr	316(ra) # 8000155c <_Z15thread_dispatchv>
    80004428:	fc1ff06f          	j	800043e8 <_ZL9fibonaccim+0x30>

000000008000442c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000442c:	fe010113          	addi	sp,sp,-32
    80004430:	00113c23          	sd	ra,24(sp)
    80004434:	00813823          	sd	s0,16(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	01213023          	sd	s2,0(sp)
    80004440:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004444:	00a00493          	li	s1,10
    80004448:	0400006f          	j	80004488 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000444c:	00005517          	auipc	a0,0x5
    80004450:	d3c50513          	addi	a0,a0,-708 # 80009188 <CONSOLE_STATUS+0x178>
    80004454:	00001097          	auipc	ra,0x1
    80004458:	dc8080e7          	jalr	-568(ra) # 8000521c <_Z11printStringPKc>
    8000445c:	00000613          	li	a2,0
    80004460:	00a00593          	li	a1,10
    80004464:	00048513          	mv	a0,s1
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	f64080e7          	jalr	-156(ra) # 800053cc <_Z8printIntiii>
    80004470:	00005517          	auipc	a0,0x5
    80004474:	f0850513          	addi	a0,a0,-248 # 80009378 <CONSOLE_STATUS+0x368>
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	da4080e7          	jalr	-604(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004480:	0014849b          	addiw	s1,s1,1
    80004484:	0ff4f493          	andi	s1,s1,255
    80004488:	00c00793          	li	a5,12
    8000448c:	fc97f0e3          	bgeu	a5,s1,8000444c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004490:	00005517          	auipc	a0,0x5
    80004494:	d0050513          	addi	a0,a0,-768 # 80009190 <CONSOLE_STATUS+0x180>
    80004498:	00001097          	auipc	ra,0x1
    8000449c:	d84080e7          	jalr	-636(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044a0:	00500313          	li	t1,5
    thread_dispatch();
    800044a4:	ffffd097          	auipc	ra,0xffffd
    800044a8:	0b8080e7          	jalr	184(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044ac:	01000513          	li	a0,16
    800044b0:	00000097          	auipc	ra,0x0
    800044b4:	f08080e7          	jalr	-248(ra) # 800043b8 <_ZL9fibonaccim>
    800044b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	ce450513          	addi	a0,a0,-796 # 800091a0 <CONSOLE_STATUS+0x190>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	d58080e7          	jalr	-680(ra) # 8000521c <_Z11printStringPKc>
    800044cc:	00000613          	li	a2,0
    800044d0:	00a00593          	li	a1,10
    800044d4:	0009051b          	sext.w	a0,s2
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	ef4080e7          	jalr	-268(ra) # 800053cc <_Z8printIntiii>
    800044e0:	00005517          	auipc	a0,0x5
    800044e4:	e9850513          	addi	a0,a0,-360 # 80009378 <CONSOLE_STATUS+0x368>
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	d34080e7          	jalr	-716(ra) # 8000521c <_Z11printStringPKc>
    800044f0:	0400006f          	j	80004530 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044f4:	00005517          	auipc	a0,0x5
    800044f8:	c9450513          	addi	a0,a0,-876 # 80009188 <CONSOLE_STATUS+0x178>
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	d20080e7          	jalr	-736(ra) # 8000521c <_Z11printStringPKc>
    80004504:	00000613          	li	a2,0
    80004508:	00a00593          	li	a1,10
    8000450c:	00048513          	mv	a0,s1
    80004510:	00001097          	auipc	ra,0x1
    80004514:	ebc080e7          	jalr	-324(ra) # 800053cc <_Z8printIntiii>
    80004518:	00005517          	auipc	a0,0x5
    8000451c:	e6050513          	addi	a0,a0,-416 # 80009378 <CONSOLE_STATUS+0x368>
    80004520:	00001097          	auipc	ra,0x1
    80004524:	cfc080e7          	jalr	-772(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004528:	0014849b          	addiw	s1,s1,1
    8000452c:	0ff4f493          	andi	s1,s1,255
    80004530:	00f00793          	li	a5,15
    80004534:	fc97f0e3          	bgeu	a5,s1,800044f4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004538:	00005517          	auipc	a0,0x5
    8000453c:	c7850513          	addi	a0,a0,-904 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004540:	00001097          	auipc	ra,0x1
    80004544:	cdc080e7          	jalr	-804(ra) # 8000521c <_Z11printStringPKc>
    finishedD = true;
    80004548:	00100793          	li	a5,1
    8000454c:	00007717          	auipc	a4,0x7
    80004550:	1cf70223          	sb	a5,452(a4) # 8000b710 <_ZL9finishedD>
    thread_dispatch();
    80004554:	ffffd097          	auipc	ra,0xffffd
    80004558:	008080e7          	jalr	8(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	00813483          	ld	s1,8(sp)
    80004568:	00013903          	ld	s2,0(sp)
    8000456c:	02010113          	addi	sp,sp,32
    80004570:	00008067          	ret

0000000080004574 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004574:	fe010113          	addi	sp,sp,-32
    80004578:	00113c23          	sd	ra,24(sp)
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00913423          	sd	s1,8(sp)
    80004584:	01213023          	sd	s2,0(sp)
    80004588:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000458c:	00000493          	li	s1,0
    80004590:	0400006f          	j	800045d0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	bb450513          	addi	a0,a0,-1100 # 80009148 <CONSOLE_STATUS+0x138>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	c80080e7          	jalr	-896(ra) # 8000521c <_Z11printStringPKc>
    800045a4:	00000613          	li	a2,0
    800045a8:	00a00593          	li	a1,10
    800045ac:	00048513          	mv	a0,s1
    800045b0:	00001097          	auipc	ra,0x1
    800045b4:	e1c080e7          	jalr	-484(ra) # 800053cc <_Z8printIntiii>
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	dc050513          	addi	a0,a0,-576 # 80009378 <CONSOLE_STATUS+0x368>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	c5c080e7          	jalr	-932(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045c8:	0014849b          	addiw	s1,s1,1
    800045cc:	0ff4f493          	andi	s1,s1,255
    800045d0:	00200793          	li	a5,2
    800045d4:	fc97f0e3          	bgeu	a5,s1,80004594 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045d8:	00005517          	auipc	a0,0x5
    800045dc:	b7850513          	addi	a0,a0,-1160 # 80009150 <CONSOLE_STATUS+0x140>
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	c3c080e7          	jalr	-964(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045e8:	00700313          	li	t1,7
    thread_dispatch();
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	f70080e7          	jalr	-144(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	b6850513          	addi	a0,a0,-1176 # 80009160 <CONSOLE_STATUS+0x150>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	c1c080e7          	jalr	-996(ra) # 8000521c <_Z11printStringPKc>
    80004608:	00000613          	li	a2,0
    8000460c:	00a00593          	li	a1,10
    80004610:	0009051b          	sext.w	a0,s2
    80004614:	00001097          	auipc	ra,0x1
    80004618:	db8080e7          	jalr	-584(ra) # 800053cc <_Z8printIntiii>
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	d5c50513          	addi	a0,a0,-676 # 80009378 <CONSOLE_STATUS+0x368>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	bf8080e7          	jalr	-1032(ra) # 8000521c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000462c:	00c00513          	li	a0,12
    80004630:	00000097          	auipc	ra,0x0
    80004634:	d88080e7          	jalr	-632(ra) # 800043b8 <_ZL9fibonaccim>
    80004638:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000463c:	00005517          	auipc	a0,0x5
    80004640:	b2c50513          	addi	a0,a0,-1236 # 80009168 <CONSOLE_STATUS+0x158>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	bd8080e7          	jalr	-1064(ra) # 8000521c <_Z11printStringPKc>
    8000464c:	00000613          	li	a2,0
    80004650:	00a00593          	li	a1,10
    80004654:	0009051b          	sext.w	a0,s2
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	d74080e7          	jalr	-652(ra) # 800053cc <_Z8printIntiii>
    80004660:	00005517          	auipc	a0,0x5
    80004664:	d1850513          	addi	a0,a0,-744 # 80009378 <CONSOLE_STATUS+0x368>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	bb4080e7          	jalr	-1100(ra) # 8000521c <_Z11printStringPKc>
    80004670:	0400006f          	j	800046b0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004674:	00005517          	auipc	a0,0x5
    80004678:	ad450513          	addi	a0,a0,-1324 # 80009148 <CONSOLE_STATUS+0x138>
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	ba0080e7          	jalr	-1120(ra) # 8000521c <_Z11printStringPKc>
    80004684:	00000613          	li	a2,0
    80004688:	00a00593          	li	a1,10
    8000468c:	00048513          	mv	a0,s1
    80004690:	00001097          	auipc	ra,0x1
    80004694:	d3c080e7          	jalr	-708(ra) # 800053cc <_Z8printIntiii>
    80004698:	00005517          	auipc	a0,0x5
    8000469c:	ce050513          	addi	a0,a0,-800 # 80009378 <CONSOLE_STATUS+0x368>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	b7c080e7          	jalr	-1156(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046a8:	0014849b          	addiw	s1,s1,1
    800046ac:	0ff4f493          	andi	s1,s1,255
    800046b0:	00500793          	li	a5,5
    800046b4:	fc97f0e3          	bgeu	a5,s1,80004674 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	a6850513          	addi	a0,a0,-1432 # 80009120 <CONSOLE_STATUS+0x110>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	b5c080e7          	jalr	-1188(ra) # 8000521c <_Z11printStringPKc>
    finishedC = true;
    800046c8:	00100793          	li	a5,1
    800046cc:	00007717          	auipc	a4,0x7
    800046d0:	04f702a3          	sb	a5,69(a4) # 8000b711 <_ZL9finishedC>
    thread_dispatch();
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	e88080e7          	jalr	-376(ra) # 8000155c <_Z15thread_dispatchv>
}
    800046dc:	01813083          	ld	ra,24(sp)
    800046e0:	01013403          	ld	s0,16(sp)
    800046e4:	00813483          	ld	s1,8(sp)
    800046e8:	00013903          	ld	s2,0(sp)
    800046ec:	02010113          	addi	sp,sp,32
    800046f0:	00008067          	ret

00000000800046f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046f4:	fe010113          	addi	sp,sp,-32
    800046f8:	00113c23          	sd	ra,24(sp)
    800046fc:	00813823          	sd	s0,16(sp)
    80004700:	00913423          	sd	s1,8(sp)
    80004704:	01213023          	sd	s2,0(sp)
    80004708:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000470c:	00000913          	li	s2,0
    80004710:	0380006f          	j	80004748 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004714:	ffffd097          	auipc	ra,0xffffd
    80004718:	e48080e7          	jalr	-440(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000471c:	00148493          	addi	s1,s1,1
    80004720:	000027b7          	lui	a5,0x2
    80004724:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004728:	0097ee63          	bltu	a5,s1,80004744 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000472c:	00000713          	li	a4,0
    80004730:	000077b7          	lui	a5,0x7
    80004734:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004738:	fce7eee3          	bltu	a5,a4,80004714 <_ZL11workerBodyBPv+0x20>
    8000473c:	00170713          	addi	a4,a4,1
    80004740:	ff1ff06f          	j	80004730 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004744:	00190913          	addi	s2,s2,1
    80004748:	00f00793          	li	a5,15
    8000474c:	0527e063          	bltu	a5,s2,8000478c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004750:	00005517          	auipc	a0,0x5
    80004754:	9e050513          	addi	a0,a0,-1568 # 80009130 <CONSOLE_STATUS+0x120>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	ac4080e7          	jalr	-1340(ra) # 8000521c <_Z11printStringPKc>
    80004760:	00000613          	li	a2,0
    80004764:	00a00593          	li	a1,10
    80004768:	0009051b          	sext.w	a0,s2
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	c60080e7          	jalr	-928(ra) # 800053cc <_Z8printIntiii>
    80004774:	00005517          	auipc	a0,0x5
    80004778:	c0450513          	addi	a0,a0,-1020 # 80009378 <CONSOLE_STATUS+0x368>
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	aa0080e7          	jalr	-1376(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004784:	00000493          	li	s1,0
    80004788:	f99ff06f          	j	80004720 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000478c:	00005517          	auipc	a0,0x5
    80004790:	9ac50513          	addi	a0,a0,-1620 # 80009138 <CONSOLE_STATUS+0x128>
    80004794:	00001097          	auipc	ra,0x1
    80004798:	a88080e7          	jalr	-1400(ra) # 8000521c <_Z11printStringPKc>
    finishedB = true;
    8000479c:	00100793          	li	a5,1
    800047a0:	00007717          	auipc	a4,0x7
    800047a4:	f6f70923          	sb	a5,-142(a4) # 8000b712 <_ZL9finishedB>
    thread_dispatch();
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	db4080e7          	jalr	-588(ra) # 8000155c <_Z15thread_dispatchv>
}
    800047b0:	01813083          	ld	ra,24(sp)
    800047b4:	01013403          	ld	s0,16(sp)
    800047b8:	00813483          	ld	s1,8(sp)
    800047bc:	00013903          	ld	s2,0(sp)
    800047c0:	02010113          	addi	sp,sp,32
    800047c4:	00008067          	ret

00000000800047c8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047c8:	fe010113          	addi	sp,sp,-32
    800047cc:	00113c23          	sd	ra,24(sp)
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	00913423          	sd	s1,8(sp)
    800047d8:	01213023          	sd	s2,0(sp)
    800047dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047e0:	00000913          	li	s2,0
    800047e4:	0380006f          	j	8000481c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	d74080e7          	jalr	-652(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047f0:	00148493          	addi	s1,s1,1
    800047f4:	000027b7          	lui	a5,0x2
    800047f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047fc:	0097ee63          	bltu	a5,s1,80004818 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004800:	00000713          	li	a4,0
    80004804:	000077b7          	lui	a5,0x7
    80004808:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000480c:	fce7eee3          	bltu	a5,a4,800047e8 <_ZL11workerBodyAPv+0x20>
    80004810:	00170713          	addi	a4,a4,1
    80004814:	ff1ff06f          	j	80004804 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004818:	00190913          	addi	s2,s2,1
    8000481c:	00900793          	li	a5,9
    80004820:	0527e063          	bltu	a5,s2,80004860 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004824:	00005517          	auipc	a0,0x5
    80004828:	8f450513          	addi	a0,a0,-1804 # 80009118 <CONSOLE_STATUS+0x108>
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	9f0080e7          	jalr	-1552(ra) # 8000521c <_Z11printStringPKc>
    80004834:	00000613          	li	a2,0
    80004838:	00a00593          	li	a1,10
    8000483c:	0009051b          	sext.w	a0,s2
    80004840:	00001097          	auipc	ra,0x1
    80004844:	b8c080e7          	jalr	-1140(ra) # 800053cc <_Z8printIntiii>
    80004848:	00005517          	auipc	a0,0x5
    8000484c:	b3050513          	addi	a0,a0,-1232 # 80009378 <CONSOLE_STATUS+0x368>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	9cc080e7          	jalr	-1588(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004858:	00000493          	li	s1,0
    8000485c:	f99ff06f          	j	800047f4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004860:	00005517          	auipc	a0,0x5
    80004864:	8c050513          	addi	a0,a0,-1856 # 80009120 <CONSOLE_STATUS+0x110>
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	9b4080e7          	jalr	-1612(ra) # 8000521c <_Z11printStringPKc>
    finishedA = true;
    80004870:	00100793          	li	a5,1
    80004874:	00007717          	auipc	a4,0x7
    80004878:	e8f70fa3          	sb	a5,-353(a4) # 8000b713 <_ZL9finishedA>
}
    8000487c:	01813083          	ld	ra,24(sp)
    80004880:	01013403          	ld	s0,16(sp)
    80004884:	00813483          	ld	s1,8(sp)
    80004888:	00013903          	ld	s2,0(sp)
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret

0000000080004894 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004894:	fd010113          	addi	sp,sp,-48
    80004898:	02113423          	sd	ra,40(sp)
    8000489c:	02813023          	sd	s0,32(sp)
    800048a0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048a4:	00000613          	li	a2,0
    800048a8:	00000597          	auipc	a1,0x0
    800048ac:	f2058593          	addi	a1,a1,-224 # 800047c8 <_ZL11workerBodyAPv>
    800048b0:	fd040513          	addi	a0,s0,-48
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	b80080e7          	jalr	-1152(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048bc:	00005517          	auipc	a0,0x5
    800048c0:	90450513          	addi	a0,a0,-1788 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	958080e7          	jalr	-1704(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048cc:	00000613          	li	a2,0
    800048d0:	00000597          	auipc	a1,0x0
    800048d4:	e2458593          	addi	a1,a1,-476 # 800046f4 <_ZL11workerBodyBPv>
    800048d8:	fd840513          	addi	a0,s0,-40
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	b58080e7          	jalr	-1192(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800048e4:	00005517          	auipc	a0,0x5
    800048e8:	8f450513          	addi	a0,a0,-1804 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	930080e7          	jalr	-1744(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048f4:	00000613          	li	a2,0
    800048f8:	00000597          	auipc	a1,0x0
    800048fc:	c7c58593          	addi	a1,a1,-900 # 80004574 <_ZL11workerBodyCPv>
    80004900:	fe040513          	addi	a0,s0,-32
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	b30080e7          	jalr	-1232(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000490c:	00005517          	auipc	a0,0x5
    80004910:	8e450513          	addi	a0,a0,-1820 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004914:	00001097          	auipc	ra,0x1
    80004918:	908080e7          	jalr	-1784(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000491c:	00000613          	li	a2,0
    80004920:	00000597          	auipc	a1,0x0
    80004924:	b0c58593          	addi	a1,a1,-1268 # 8000442c <_ZL11workerBodyDPv>
    80004928:	fe840513          	addi	a0,s0,-24
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	b08080e7          	jalr	-1272(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004934:	00005517          	auipc	a0,0x5
    80004938:	8d450513          	addi	a0,a0,-1836 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	8e0080e7          	jalr	-1824(ra) # 8000521c <_Z11printStringPKc>
    80004944:	00c0006f          	j	80004950 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	c14080e7          	jalr	-1004(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004950:	00007797          	auipc	a5,0x7
    80004954:	dc37c783          	lbu	a5,-573(a5) # 8000b713 <_ZL9finishedA>
    80004958:	fe0788e3          	beqz	a5,80004948 <_Z18Threads_C_API_testv+0xb4>
    8000495c:	00007797          	auipc	a5,0x7
    80004960:	db67c783          	lbu	a5,-586(a5) # 8000b712 <_ZL9finishedB>
    80004964:	fe0782e3          	beqz	a5,80004948 <_Z18Threads_C_API_testv+0xb4>
    80004968:	00007797          	auipc	a5,0x7
    8000496c:	da97c783          	lbu	a5,-599(a5) # 8000b711 <_ZL9finishedC>
    80004970:	fc078ce3          	beqz	a5,80004948 <_Z18Threads_C_API_testv+0xb4>
    80004974:	00007797          	auipc	a5,0x7
    80004978:	d9c7c783          	lbu	a5,-612(a5) # 8000b710 <_ZL9finishedD>
    8000497c:	fc0786e3          	beqz	a5,80004948 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004980:	02813083          	ld	ra,40(sp)
    80004984:	02013403          	ld	s0,32(sp)
    80004988:	03010113          	addi	sp,sp,48
    8000498c:	00008067          	ret

0000000080004990 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004990:	fd010113          	addi	sp,sp,-48
    80004994:	02113423          	sd	ra,40(sp)
    80004998:	02813023          	sd	s0,32(sp)
    8000499c:	00913c23          	sd	s1,24(sp)
    800049a0:	01213823          	sd	s2,16(sp)
    800049a4:	01313423          	sd	s3,8(sp)
    800049a8:	03010413          	addi	s0,sp,48
    800049ac:	00050993          	mv	s3,a0
    800049b0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049b4:	00000913          	li	s2,0
    800049b8:	00c0006f          	j	800049c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	1e0080e7          	jalr	480(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	d1c080e7          	jalr	-740(ra) # 800016e0 <_Z4getcv>
    800049cc:	0005059b          	sext.w	a1,a0
    800049d0:	01b00793          	li	a5,27
    800049d4:	02f58a63          	beq	a1,a5,80004a08 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049d8:	0084b503          	ld	a0,8(s1)
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	c64080e7          	jalr	-924(ra) # 80005640 <_ZN9BufferCPP3putEi>
        i++;
    800049e4:	0019071b          	addiw	a4,s2,1
    800049e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049ec:	0004a683          	lw	a3,0(s1)
    800049f0:	0026979b          	slliw	a5,a3,0x2
    800049f4:	00d787bb          	addw	a5,a5,a3
    800049f8:	0017979b          	slliw	a5,a5,0x1
    800049fc:	02f767bb          	remw	a5,a4,a5
    80004a00:	fc0792e3          	bnez	a5,800049c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a04:	fb9ff06f          	j	800049bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a08:	00100793          	li	a5,1
    80004a0c:	00007717          	auipc	a4,0x7
    80004a10:	d0f72623          	sw	a5,-756(a4) # 8000b718 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a14:	0209b783          	ld	a5,32(s3)
    80004a18:	02100593          	li	a1,33
    80004a1c:	0087b503          	ld	a0,8(a5)
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	c20080e7          	jalr	-992(ra) # 80005640 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a28:	0104b503          	ld	a0,16(s1)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	28c080e7          	jalr	652(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004a34:	02813083          	ld	ra,40(sp)
    80004a38:	02013403          	ld	s0,32(sp)
    80004a3c:	01813483          	ld	s1,24(sp)
    80004a40:	01013903          	ld	s2,16(sp)
    80004a44:	00813983          	ld	s3,8(sp)
    80004a48:	03010113          	addi	sp,sp,48
    80004a4c:	00008067          	ret

0000000080004a50 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	00113c23          	sd	ra,24(sp)
    80004a58:	00813823          	sd	s0,16(sp)
    80004a5c:	00913423          	sd	s1,8(sp)
    80004a60:	01213023          	sd	s2,0(sp)
    80004a64:	02010413          	addi	s0,sp,32
    80004a68:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a6c:	00000913          	li	s2,0
    80004a70:	00c0006f          	j	80004a7c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	128080e7          	jalr	296(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a7c:	00007797          	auipc	a5,0x7
    80004a80:	c9c7a783          	lw	a5,-868(a5) # 8000b718 <_ZL9threadEnd>
    80004a84:	02079e63          	bnez	a5,80004ac0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a88:	0004a583          	lw	a1,0(s1)
    80004a8c:	0305859b          	addiw	a1,a1,48
    80004a90:	0084b503          	ld	a0,8(s1)
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	bac080e7          	jalr	-1108(ra) # 80005640 <_ZN9BufferCPP3putEi>
        i++;
    80004a9c:	0019071b          	addiw	a4,s2,1
    80004aa0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004aa4:	0004a683          	lw	a3,0(s1)
    80004aa8:	0026979b          	slliw	a5,a3,0x2
    80004aac:	00d787bb          	addw	a5,a5,a3
    80004ab0:	0017979b          	slliw	a5,a5,0x1
    80004ab4:	02f767bb          	remw	a5,a4,a5
    80004ab8:	fc0792e3          	bnez	a5,80004a7c <_ZN12ProducerSync8producerEPv+0x2c>
    80004abc:	fb9ff06f          	j	80004a74 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ac0:	0104b503          	ld	a0,16(s1)
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	1f4080e7          	jalr	500(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	00013903          	ld	s2,0(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ae4:	fd010113          	addi	sp,sp,-48
    80004ae8:	02113423          	sd	ra,40(sp)
    80004aec:	02813023          	sd	s0,32(sp)
    80004af0:	00913c23          	sd	s1,24(sp)
    80004af4:	01213823          	sd	s2,16(sp)
    80004af8:	01313423          	sd	s3,8(sp)
    80004afc:	01413023          	sd	s4,0(sp)
    80004b00:	03010413          	addi	s0,sp,48
    80004b04:	00050993          	mv	s3,a0
    80004b08:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b0c:	00000a13          	li	s4,0
    80004b10:	01c0006f          	j	80004b2c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	088080e7          	jalr	136(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    80004b1c:	0500006f          	j	80004b6c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b20:	00a00513          	li	a0,10
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	bf8080e7          	jalr	-1032(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80004b2c:	00007797          	auipc	a5,0x7
    80004b30:	bec7a783          	lw	a5,-1044(a5) # 8000b718 <_ZL9threadEnd>
    80004b34:	06079263          	bnez	a5,80004b98 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b38:	00893503          	ld	a0,8(s2)
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	b94080e7          	jalr	-1132(ra) # 800056d0 <_ZN9BufferCPP3getEv>
        i++;
    80004b44:	001a049b          	addiw	s1,s4,1
    80004b48:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b4c:	0ff57513          	andi	a0,a0,255
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	bcc080e7          	jalr	-1076(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b58:	00092703          	lw	a4,0(s2)
    80004b5c:	0027179b          	slliw	a5,a4,0x2
    80004b60:	00e787bb          	addw	a5,a5,a4
    80004b64:	02f4e7bb          	remw	a5,s1,a5
    80004b68:	fa0786e3          	beqz	a5,80004b14 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b6c:	05000793          	li	a5,80
    80004b70:	02f4e4bb          	remw	s1,s1,a5
    80004b74:	fa049ce3          	bnez	s1,80004b2c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b78:	fa9ff06f          	j	80004b20 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b7c:	0209b783          	ld	a5,32(s3)
    80004b80:	0087b503          	ld	a0,8(a5)
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	b4c080e7          	jalr	-1204(ra) # 800056d0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b8c:	0ff57513          	andi	a0,a0,255
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	1d4080e7          	jalr	468(ra) # 80001d64 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b98:	0209b783          	ld	a5,32(s3)
    80004b9c:	0087b503          	ld	a0,8(a5)
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	bbc080e7          	jalr	-1092(ra) # 8000575c <_ZN9BufferCPP6getCntEv>
    80004ba8:	fca04ae3          	bgtz	a0,80004b7c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004bac:	01093503          	ld	a0,16(s2)
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	108080e7          	jalr	264(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
}
    80004bb8:	02813083          	ld	ra,40(sp)
    80004bbc:	02013403          	ld	s0,32(sp)
    80004bc0:	01813483          	ld	s1,24(sp)
    80004bc4:	01013903          	ld	s2,16(sp)
    80004bc8:	00813983          	ld	s3,8(sp)
    80004bcc:	00013a03          	ld	s4,0(sp)
    80004bd0:	03010113          	addi	sp,sp,48
    80004bd4:	00008067          	ret

0000000080004bd8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004bd8:	f8010113          	addi	sp,sp,-128
    80004bdc:	06113c23          	sd	ra,120(sp)
    80004be0:	06813823          	sd	s0,112(sp)
    80004be4:	06913423          	sd	s1,104(sp)
    80004be8:	07213023          	sd	s2,96(sp)
    80004bec:	05313c23          	sd	s3,88(sp)
    80004bf0:	05413823          	sd	s4,80(sp)
    80004bf4:	05513423          	sd	s5,72(sp)
    80004bf8:	05613023          	sd	s6,64(sp)
    80004bfc:	03713c23          	sd	s7,56(sp)
    80004c00:	03813823          	sd	s8,48(sp)
    80004c04:	03913423          	sd	s9,40(sp)
    80004c08:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c0c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c10:	00004517          	auipc	a0,0x4
    80004c14:	42050513          	addi	a0,a0,1056 # 80009030 <CONSOLE_STATUS+0x20>
    80004c18:	00000097          	auipc	ra,0x0
    80004c1c:	604080e7          	jalr	1540(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80004c20:	01e00593          	li	a1,30
    80004c24:	f8040493          	addi	s1,s0,-128
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	678080e7          	jalr	1656(ra) # 800052a4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00000097          	auipc	ra,0x0
    80004c3c:	744080e7          	jalr	1860(ra) # 8000537c <_Z11stringToIntPKc>
    80004c40:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c44:	00004517          	auipc	a0,0x4
    80004c48:	40c50513          	addi	a0,a0,1036 # 80009050 <CONSOLE_STATUS+0x40>
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	5d0080e7          	jalr	1488(ra) # 8000521c <_Z11printStringPKc>
    getString(input, 30);
    80004c54:	01e00593          	li	a1,30
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	648080e7          	jalr	1608(ra) # 800052a4 <_Z9getStringPci>
    n = stringToInt(input);
    80004c64:	00048513          	mv	a0,s1
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	714080e7          	jalr	1812(ra) # 8000537c <_Z11stringToIntPKc>
    80004c70:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c74:	00004517          	auipc	a0,0x4
    80004c78:	3fc50513          	addi	a0,a0,1020 # 80009070 <CONSOLE_STATUS+0x60>
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	5a0080e7          	jalr	1440(ra) # 8000521c <_Z11printStringPKc>
    80004c84:	00000613          	li	a2,0
    80004c88:	00a00593          	li	a1,10
    80004c8c:	00090513          	mv	a0,s2
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	73c080e7          	jalr	1852(ra) # 800053cc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	3f050513          	addi	a0,a0,1008 # 80009088 <CONSOLE_STATUS+0x78>
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	57c080e7          	jalr	1404(ra) # 8000521c <_Z11printStringPKc>
    80004ca8:	00000613          	li	a2,0
    80004cac:	00a00593          	li	a1,10
    80004cb0:	00048513          	mv	a0,s1
    80004cb4:	00000097          	auipc	ra,0x0
    80004cb8:	718080e7          	jalr	1816(ra) # 800053cc <_Z8printIntiii>
    printString(".\n");
    80004cbc:	00004517          	auipc	a0,0x4
    80004cc0:	3e450513          	addi	a0,a0,996 # 800090a0 <CONSOLE_STATUS+0x90>
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	558080e7          	jalr	1368(ra) # 8000521c <_Z11printStringPKc>
    if(threadNum > n) {
    80004ccc:	0324c463          	blt	s1,s2,80004cf4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cd0:	03205c63          	blez	s2,80004d08 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004cd4:	03800513          	li	a0,56
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	c98080e7          	jalr	-872(ra) # 80001970 <_Znwm>
    80004ce0:	00050a93          	mv	s5,a0
    80004ce4:	00048593          	mv	a1,s1
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	804080e7          	jalr	-2044(ra) # 800054ec <_ZN9BufferCPPC1Ei>
    80004cf0:	0300006f          	j	80004d20 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	3b450513          	addi	a0,a0,948 # 800090a8 <CONSOLE_STATUS+0x98>
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	520080e7          	jalr	1312(ra) # 8000521c <_Z11printStringPKc>
        return;
    80004d04:	0140006f          	j	80004d18 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d08:	00004517          	auipc	a0,0x4
    80004d0c:	3e050513          	addi	a0,a0,992 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	50c080e7          	jalr	1292(ra) # 8000521c <_Z11printStringPKc>
        return;
    80004d18:	000b8113          	mv	sp,s7
    80004d1c:	2380006f          	j	80004f54 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d20:	01000513          	li	a0,16
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	c4c080e7          	jalr	-948(ra) # 80001970 <_Znwm>
    80004d2c:	00050493          	mv	s1,a0
    80004d30:	00000593          	li	a1,0
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	f1c080e7          	jalr	-228(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80004d3c:	00007797          	auipc	a5,0x7
    80004d40:	9e97b223          	sd	s1,-1564(a5) # 8000b720 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d44:	00391793          	slli	a5,s2,0x3
    80004d48:	00f78793          	addi	a5,a5,15
    80004d4c:	ff07f793          	andi	a5,a5,-16
    80004d50:	40f10133          	sub	sp,sp,a5
    80004d54:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d58:	0019071b          	addiw	a4,s2,1
    80004d5c:	00171793          	slli	a5,a4,0x1
    80004d60:	00e787b3          	add	a5,a5,a4
    80004d64:	00379793          	slli	a5,a5,0x3
    80004d68:	00f78793          	addi	a5,a5,15
    80004d6c:	ff07f793          	andi	a5,a5,-16
    80004d70:	40f10133          	sub	sp,sp,a5
    80004d74:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d78:	00191c13          	slli	s8,s2,0x1
    80004d7c:	012c07b3          	add	a5,s8,s2
    80004d80:	00379793          	slli	a5,a5,0x3
    80004d84:	00fa07b3          	add	a5,s4,a5
    80004d88:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d8c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d90:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d94:	02800513          	li	a0,40
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	bd8080e7          	jalr	-1064(ra) # 80001970 <_Znwm>
    80004da0:	00050b13          	mv	s6,a0
    80004da4:	012c0c33          	add	s8,s8,s2
    80004da8:	003c1c13          	slli	s8,s8,0x3
    80004dac:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	e14080e7          	jalr	-492(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004db8:	00007797          	auipc	a5,0x7
    80004dbc:	84078793          	addi	a5,a5,-1984 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    80004dc0:	00fb3023          	sd	a5,0(s6)
    80004dc4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004dc8:	000b0513          	mv	a0,s6
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	d9c080e7          	jalr	-612(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004dd4:	00000493          	li	s1,0
    80004dd8:	0380006f          	j	80004e10 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ddc:	00006797          	auipc	a5,0x6
    80004de0:	7f478793          	addi	a5,a5,2036 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    80004de4:	00fcb023          	sd	a5,0(s9)
    80004de8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004dec:	00349793          	slli	a5,s1,0x3
    80004df0:	00f987b3          	add	a5,s3,a5
    80004df4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004df8:	00349793          	slli	a5,s1,0x3
    80004dfc:	00f987b3          	add	a5,s3,a5
    80004e00:	0007b503          	ld	a0,0(a5)
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	d64080e7          	jalr	-668(ra) # 80001b68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e0c:	0014849b          	addiw	s1,s1,1
    80004e10:	0b24d063          	bge	s1,s2,80004eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e14:	00149793          	slli	a5,s1,0x1
    80004e18:	009787b3          	add	a5,a5,s1
    80004e1c:	00379793          	slli	a5,a5,0x3
    80004e20:	00fa07b3          	add	a5,s4,a5
    80004e24:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e28:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e2c:	00007717          	auipc	a4,0x7
    80004e30:	8f473703          	ld	a4,-1804(a4) # 8000b720 <_ZL10waitForAll>
    80004e34:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e38:	02905863          	blez	s1,80004e68 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e3c:	02800513          	li	a0,40
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	b30080e7          	jalr	-1232(ra) # 80001970 <_Znwm>
    80004e48:	00050c93          	mv	s9,a0
    80004e4c:	00149c13          	slli	s8,s1,0x1
    80004e50:	009c0c33          	add	s8,s8,s1
    80004e54:	003c1c13          	slli	s8,s8,0x3
    80004e58:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	d68080e7          	jalr	-664(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004e64:	f79ff06f          	j	80004ddc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e68:	02800513          	li	a0,40
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	b04080e7          	jalr	-1276(ra) # 80001970 <_Znwm>
    80004e74:	00050c93          	mv	s9,a0
    80004e78:	00149c13          	slli	s8,s1,0x1
    80004e7c:	009c0c33          	add	s8,s8,s1
    80004e80:	003c1c13          	slli	s8,s8,0x3
    80004e84:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	d3c080e7          	jalr	-708(ra) # 80001bc4 <_ZN6ThreadC1Ev>
    80004e90:	00006797          	auipc	a5,0x6
    80004e94:	71878793          	addi	a5,a5,1816 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    80004e98:	00fcb023          	sd	a5,0(s9)
    80004e9c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ea0:	00349793          	slli	a5,s1,0x3
    80004ea4:	00f987b3          	add	a5,s3,a5
    80004ea8:	0197b023          	sd	s9,0(a5)
    80004eac:	f4dff06f          	j	80004df8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	cec080e7          	jalr	-788(ra) # 80001b9c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004eb8:	00000493          	li	s1,0
    80004ebc:	00994e63          	blt	s2,s1,80004ed8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004ec0:	00007517          	auipc	a0,0x7
    80004ec4:	86053503          	ld	a0,-1952(a0) # 8000b720 <_ZL10waitForAll>
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	dc4080e7          	jalr	-572(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ed0:	0014849b          	addiw	s1,s1,1
    80004ed4:	fe9ff06f          	j	80004ebc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ed8:	00000493          	li	s1,0
    80004edc:	0080006f          	j	80004ee4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ee0:	0014849b          	addiw	s1,s1,1
    80004ee4:	0324d263          	bge	s1,s2,80004f08 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004ee8:	00349793          	slli	a5,s1,0x3
    80004eec:	00f987b3          	add	a5,s3,a5
    80004ef0:	0007b503          	ld	a0,0(a5)
    80004ef4:	fe0506e3          	beqz	a0,80004ee0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ef8:	00053783          	ld	a5,0(a0)
    80004efc:	0087b783          	ld	a5,8(a5)
    80004f00:	000780e7          	jalr	a5
    80004f04:	fddff06f          	j	80004ee0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f08:	000b0a63          	beqz	s6,80004f1c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f0c:	000b3783          	ld	a5,0(s6)
    80004f10:	0087b783          	ld	a5,8(a5)
    80004f14:	000b0513          	mv	a0,s6
    80004f18:	000780e7          	jalr	a5
    delete waitForAll;
    80004f1c:	00007517          	auipc	a0,0x7
    80004f20:	80453503          	ld	a0,-2044(a0) # 8000b720 <_ZL10waitForAll>
    80004f24:	00050863          	beqz	a0,80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f28:	00053783          	ld	a5,0(a0)
    80004f2c:	0087b783          	ld	a5,8(a5)
    80004f30:	000780e7          	jalr	a5
    delete buffer;
    80004f34:	000a8e63          	beqz	s5,80004f50 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f38:	000a8513          	mv	a0,s5
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	8a8080e7          	jalr	-1880(ra) # 800057e4 <_ZN9BufferCPPD1Ev>
    80004f44:	000a8513          	mv	a0,s5
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	a78080e7          	jalr	-1416(ra) # 800019c0 <_ZdlPv>
    80004f50:	000b8113          	mv	sp,s7

}
    80004f54:	f8040113          	addi	sp,s0,-128
    80004f58:	07813083          	ld	ra,120(sp)
    80004f5c:	07013403          	ld	s0,112(sp)
    80004f60:	06813483          	ld	s1,104(sp)
    80004f64:	06013903          	ld	s2,96(sp)
    80004f68:	05813983          	ld	s3,88(sp)
    80004f6c:	05013a03          	ld	s4,80(sp)
    80004f70:	04813a83          	ld	s5,72(sp)
    80004f74:	04013b03          	ld	s6,64(sp)
    80004f78:	03813b83          	ld	s7,56(sp)
    80004f7c:	03013c03          	ld	s8,48(sp)
    80004f80:	02813c83          	ld	s9,40(sp)
    80004f84:	08010113          	addi	sp,sp,128
    80004f88:	00008067          	ret
    80004f8c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f90:	000a8513          	mv	a0,s5
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	a2c080e7          	jalr	-1492(ra) # 800019c0 <_ZdlPv>
    80004f9c:	00048513          	mv	a0,s1
    80004fa0:	00008097          	auipc	ra,0x8
    80004fa4:	868080e7          	jalr	-1944(ra) # 8000c808 <_Unwind_Resume>
    80004fa8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	a10080e7          	jalr	-1520(ra) # 800019c0 <_ZdlPv>
    80004fb8:	00090513          	mv	a0,s2
    80004fbc:	00008097          	auipc	ra,0x8
    80004fc0:	84c080e7          	jalr	-1972(ra) # 8000c808 <_Unwind_Resume>
    80004fc4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fc8:	000b0513          	mv	a0,s6
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	9f4080e7          	jalr	-1548(ra) # 800019c0 <_ZdlPv>
    80004fd4:	00048513          	mv	a0,s1
    80004fd8:	00008097          	auipc	ra,0x8
    80004fdc:	830080e7          	jalr	-2000(ra) # 8000c808 <_Unwind_Resume>
    80004fe0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fe4:	000c8513          	mv	a0,s9
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	9d8080e7          	jalr	-1576(ra) # 800019c0 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	814080e7          	jalr	-2028(ra) # 8000c808 <_Unwind_Resume>
    80004ffc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005000:	000c8513          	mv	a0,s9
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	9bc080e7          	jalr	-1604(ra) # 800019c0 <_ZdlPv>
    8000500c:	00048513          	mv	a0,s1
    80005010:	00007097          	auipc	ra,0x7
    80005014:	7f8080e7          	jalr	2040(ra) # 8000c808 <_Unwind_Resume>

0000000080005018 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005018:	ff010113          	addi	sp,sp,-16
    8000501c:	00113423          	sd	ra,8(sp)
    80005020:	00813023          	sd	s0,0(sp)
    80005024:	01010413          	addi	s0,sp,16
    80005028:	00006797          	auipc	a5,0x6
    8000502c:	5d078793          	addi	a5,a5,1488 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    80005030:	00f53023          	sd	a5,0(a0)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	a08080e7          	jalr	-1528(ra) # 80001a3c <_ZN6ThreadD1Ev>
    8000503c:	00813083          	ld	ra,8(sp)
    80005040:	00013403          	ld	s0,0(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret

000000008000504c <_ZN12ConsumerSyncD0Ev>:
    8000504c:	fe010113          	addi	sp,sp,-32
    80005050:	00113c23          	sd	ra,24(sp)
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00913423          	sd	s1,8(sp)
    8000505c:	02010413          	addi	s0,sp,32
    80005060:	00050493          	mv	s1,a0
    80005064:	00006797          	auipc	a5,0x6
    80005068:	59478793          	addi	a5,a5,1428 # 8000b5f8 <_ZTV12ConsumerSync+0x10>
    8000506c:	00f53023          	sd	a5,0(a0)
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	9cc080e7          	jalr	-1588(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80005078:	00048513          	mv	a0,s1
    8000507c:	ffffd097          	auipc	ra,0xffffd
    80005080:	944080e7          	jalr	-1724(ra) # 800019c0 <_ZdlPv>
    80005084:	01813083          	ld	ra,24(sp)
    80005088:	01013403          	ld	s0,16(sp)
    8000508c:	00813483          	ld	s1,8(sp)
    80005090:	02010113          	addi	sp,sp,32
    80005094:	00008067          	ret

0000000080005098 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005098:	ff010113          	addi	sp,sp,-16
    8000509c:	00113423          	sd	ra,8(sp)
    800050a0:	00813023          	sd	s0,0(sp)
    800050a4:	01010413          	addi	s0,sp,16
    800050a8:	00006797          	auipc	a5,0x6
    800050ac:	52878793          	addi	a5,a5,1320 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    800050b0:	00f53023          	sd	a5,0(a0)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	988080e7          	jalr	-1656(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800050bc:	00813083          	ld	ra,8(sp)
    800050c0:	00013403          	ld	s0,0(sp)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <_ZN12ProducerSyncD0Ev>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00113c23          	sd	ra,24(sp)
    800050d4:	00813823          	sd	s0,16(sp)
    800050d8:	00913423          	sd	s1,8(sp)
    800050dc:	02010413          	addi	s0,sp,32
    800050e0:	00050493          	mv	s1,a0
    800050e4:	00006797          	auipc	a5,0x6
    800050e8:	4ec78793          	addi	a5,a5,1260 # 8000b5d0 <_ZTV12ProducerSync+0x10>
    800050ec:	00f53023          	sd	a5,0(a0)
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	94c080e7          	jalr	-1716(ra) # 80001a3c <_ZN6ThreadD1Ev>
    800050f8:	00048513          	mv	a0,s1
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	8c4080e7          	jalr	-1852(ra) # 800019c0 <_ZdlPv>
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	02010113          	addi	sp,sp,32
    80005114:	00008067          	ret

0000000080005118 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005118:	ff010113          	addi	sp,sp,-16
    8000511c:	00113423          	sd	ra,8(sp)
    80005120:	00813023          	sd	s0,0(sp)
    80005124:	01010413          	addi	s0,sp,16
    80005128:	00006797          	auipc	a5,0x6
    8000512c:	48078793          	addi	a5,a5,1152 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    80005130:	00f53023          	sd	a5,0(a0)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	908080e7          	jalr	-1784(ra) # 80001a3c <_ZN6ThreadD1Ev>
    8000513c:	00813083          	ld	ra,8(sp)
    80005140:	00013403          	ld	s0,0(sp)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret

000000008000514c <_ZN16ProducerKeyboardD0Ev>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00113c23          	sd	ra,24(sp)
    80005154:	00813823          	sd	s0,16(sp)
    80005158:	00913423          	sd	s1,8(sp)
    8000515c:	02010413          	addi	s0,sp,32
    80005160:	00050493          	mv	s1,a0
    80005164:	00006797          	auipc	a5,0x6
    80005168:	44478793          	addi	a5,a5,1092 # 8000b5a8 <_ZTV16ProducerKeyboard+0x10>
    8000516c:	00f53023          	sd	a5,0(a0)
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	8cc080e7          	jalr	-1844(ra) # 80001a3c <_ZN6ThreadD1Ev>
    80005178:	00048513          	mv	a0,s1
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	844080e7          	jalr	-1980(ra) # 800019c0 <_ZdlPv>
    80005184:	01813083          	ld	ra,24(sp)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	00813483          	ld	s1,8(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret

0000000080005198 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005198:	ff010113          	addi	sp,sp,-16
    8000519c:	00113423          	sd	ra,8(sp)
    800051a0:	00813023          	sd	s0,0(sp)
    800051a4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051a8:	02053583          	ld	a1,32(a0)
    800051ac:	fffff097          	auipc	ra,0xfffff
    800051b0:	7e4080e7          	jalr	2020(ra) # 80004990 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051b4:	00813083          	ld	ra,8(sp)
    800051b8:	00013403          	ld	s0,0(sp)
    800051bc:	01010113          	addi	sp,sp,16
    800051c0:	00008067          	ret

00000000800051c4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051c4:	ff010113          	addi	sp,sp,-16
    800051c8:	00113423          	sd	ra,8(sp)
    800051cc:	00813023          	sd	s0,0(sp)
    800051d0:	01010413          	addi	s0,sp,16
        producer(td);
    800051d4:	02053583          	ld	a1,32(a0)
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	878080e7          	jalr	-1928(ra) # 80004a50 <_ZN12ProducerSync8producerEPv>
    }
    800051e0:	00813083          	ld	ra,8(sp)
    800051e4:	00013403          	ld	s0,0(sp)
    800051e8:	01010113          	addi	sp,sp,16
    800051ec:	00008067          	ret

00000000800051f0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051f0:	ff010113          	addi	sp,sp,-16
    800051f4:	00113423          	sd	ra,8(sp)
    800051f8:	00813023          	sd	s0,0(sp)
    800051fc:	01010413          	addi	s0,sp,16
        consumer(td);
    80005200:	02053583          	ld	a1,32(a0)
    80005204:	00000097          	auipc	ra,0x0
    80005208:	8e0080e7          	jalr	-1824(ra) # 80004ae4 <_ZN12ConsumerSync8consumerEPv>
    }
    8000520c:	00813083          	ld	ra,8(sp)
    80005210:	00013403          	ld	s0,0(sp)
    80005214:	01010113          	addi	sp,sp,16
    80005218:	00008067          	ret

000000008000521c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000521c:	fe010113          	addi	sp,sp,-32
    80005220:	00113c23          	sd	ra,24(sp)
    80005224:	00813823          	sd	s0,16(sp)
    80005228:	00913423          	sd	s1,8(sp)
    8000522c:	02010413          	addi	s0,sp,32
    80005230:	00050493          	mv	s1,a0
    LOCK();
    80005234:	00100613          	li	a2,1
    80005238:	00000593          	li	a1,0
    8000523c:	00006517          	auipc	a0,0x6
    80005240:	4ec50513          	addi	a0,a0,1260 # 8000b728 <lockPrint>
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	118080e7          	jalr	280(ra) # 8000135c <copy_and_swap>
    8000524c:	00050863          	beqz	a0,8000525c <_Z11printStringPKc+0x40>
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	30c080e7          	jalr	780(ra) # 8000155c <_Z15thread_dispatchv>
    80005258:	fddff06f          	j	80005234 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000525c:	0004c503          	lbu	a0,0(s1)
    80005260:	00050a63          	beqz	a0,80005274 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005264:	ffffc097          	auipc	ra,0xffffc
    80005268:	4b8080e7          	jalr	1208(ra) # 8000171c <_Z4putcc>
        string++;
    8000526c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005270:	fedff06f          	j	8000525c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005274:	00000613          	li	a2,0
    80005278:	00100593          	li	a1,1
    8000527c:	00006517          	auipc	a0,0x6
    80005280:	4ac50513          	addi	a0,a0,1196 # 8000b728 <lockPrint>
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	0d8080e7          	jalr	216(ra) # 8000135c <copy_and_swap>
    8000528c:	fe0514e3          	bnez	a0,80005274 <_Z11printStringPKc+0x58>
}
    80005290:	01813083          	ld	ra,24(sp)
    80005294:	01013403          	ld	s0,16(sp)
    80005298:	00813483          	ld	s1,8(sp)
    8000529c:	02010113          	addi	sp,sp,32
    800052a0:	00008067          	ret

00000000800052a4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052a4:	fd010113          	addi	sp,sp,-48
    800052a8:	02113423          	sd	ra,40(sp)
    800052ac:	02813023          	sd	s0,32(sp)
    800052b0:	00913c23          	sd	s1,24(sp)
    800052b4:	01213823          	sd	s2,16(sp)
    800052b8:	01313423          	sd	s3,8(sp)
    800052bc:	01413023          	sd	s4,0(sp)
    800052c0:	03010413          	addi	s0,sp,48
    800052c4:	00050993          	mv	s3,a0
    800052c8:	00058a13          	mv	s4,a1
    LOCK();
    800052cc:	00100613          	li	a2,1
    800052d0:	00000593          	li	a1,0
    800052d4:	00006517          	auipc	a0,0x6
    800052d8:	45450513          	addi	a0,a0,1108 # 8000b728 <lockPrint>
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	080080e7          	jalr	128(ra) # 8000135c <copy_and_swap>
    800052e4:	00050863          	beqz	a0,800052f4 <_Z9getStringPci+0x50>
    800052e8:	ffffc097          	auipc	ra,0xffffc
    800052ec:	274080e7          	jalr	628(ra) # 8000155c <_Z15thread_dispatchv>
    800052f0:	fddff06f          	j	800052cc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052f4:	00000913          	li	s2,0
    800052f8:	00090493          	mv	s1,s2
    800052fc:	0019091b          	addiw	s2,s2,1
    80005300:	03495a63          	bge	s2,s4,80005334 <_Z9getStringPci+0x90>
        cc = getc();
    80005304:	ffffc097          	auipc	ra,0xffffc
    80005308:	3dc080e7          	jalr	988(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    8000530c:	02050463          	beqz	a0,80005334 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005310:	009984b3          	add	s1,s3,s1
    80005314:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005318:	00a00793          	li	a5,10
    8000531c:	00f50a63          	beq	a0,a5,80005330 <_Z9getStringPci+0x8c>
    80005320:	00d00793          	li	a5,13
    80005324:	fcf51ae3          	bne	a0,a5,800052f8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005328:	00090493          	mv	s1,s2
    8000532c:	0080006f          	j	80005334 <_Z9getStringPci+0x90>
    80005330:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005334:	009984b3          	add	s1,s3,s1
    80005338:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000533c:	00000613          	li	a2,0
    80005340:	00100593          	li	a1,1
    80005344:	00006517          	auipc	a0,0x6
    80005348:	3e450513          	addi	a0,a0,996 # 8000b728 <lockPrint>
    8000534c:	ffffc097          	auipc	ra,0xffffc
    80005350:	010080e7          	jalr	16(ra) # 8000135c <copy_and_swap>
    80005354:	fe0514e3          	bnez	a0,8000533c <_Z9getStringPci+0x98>
    return buf;
}
    80005358:	00098513          	mv	a0,s3
    8000535c:	02813083          	ld	ra,40(sp)
    80005360:	02013403          	ld	s0,32(sp)
    80005364:	01813483          	ld	s1,24(sp)
    80005368:	01013903          	ld	s2,16(sp)
    8000536c:	00813983          	ld	s3,8(sp)
    80005370:	00013a03          	ld	s4,0(sp)
    80005374:	03010113          	addi	sp,sp,48
    80005378:	00008067          	ret

000000008000537c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000537c:	ff010113          	addi	sp,sp,-16
    80005380:	00813423          	sd	s0,8(sp)
    80005384:	01010413          	addi	s0,sp,16
    80005388:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000538c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005390:	0006c603          	lbu	a2,0(a3)
    80005394:	fd06071b          	addiw	a4,a2,-48
    80005398:	0ff77713          	andi	a4,a4,255
    8000539c:	00900793          	li	a5,9
    800053a0:	02e7e063          	bltu	a5,a4,800053c0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053a4:	0025179b          	slliw	a5,a0,0x2
    800053a8:	00a787bb          	addw	a5,a5,a0
    800053ac:	0017979b          	slliw	a5,a5,0x1
    800053b0:	00168693          	addi	a3,a3,1
    800053b4:	00c787bb          	addw	a5,a5,a2
    800053b8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053bc:	fd5ff06f          	j	80005390 <_Z11stringToIntPKc+0x14>
    return n;
}
    800053c0:	00813403          	ld	s0,8(sp)
    800053c4:	01010113          	addi	sp,sp,16
    800053c8:	00008067          	ret

00000000800053cc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053cc:	fc010113          	addi	sp,sp,-64
    800053d0:	02113c23          	sd	ra,56(sp)
    800053d4:	02813823          	sd	s0,48(sp)
    800053d8:	02913423          	sd	s1,40(sp)
    800053dc:	03213023          	sd	s2,32(sp)
    800053e0:	01313c23          	sd	s3,24(sp)
    800053e4:	04010413          	addi	s0,sp,64
    800053e8:	00050493          	mv	s1,a0
    800053ec:	00058913          	mv	s2,a1
    800053f0:	00060993          	mv	s3,a2
    LOCK();
    800053f4:	00100613          	li	a2,1
    800053f8:	00000593          	li	a1,0
    800053fc:	00006517          	auipc	a0,0x6
    80005400:	32c50513          	addi	a0,a0,812 # 8000b728 <lockPrint>
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	f58080e7          	jalr	-168(ra) # 8000135c <copy_and_swap>
    8000540c:	00050863          	beqz	a0,8000541c <_Z8printIntiii+0x50>
    80005410:	ffffc097          	auipc	ra,0xffffc
    80005414:	14c080e7          	jalr	332(ra) # 8000155c <_Z15thread_dispatchv>
    80005418:	fddff06f          	j	800053f4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000541c:	00098463          	beqz	s3,80005424 <_Z8printIntiii+0x58>
    80005420:	0804c463          	bltz	s1,800054a8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005424:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005428:	00000593          	li	a1,0
    }

    i = 0;
    8000542c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005430:	0009079b          	sext.w	a5,s2
    80005434:	0325773b          	remuw	a4,a0,s2
    80005438:	00048613          	mv	a2,s1
    8000543c:	0014849b          	addiw	s1,s1,1
    80005440:	02071693          	slli	a3,a4,0x20
    80005444:	0206d693          	srli	a3,a3,0x20
    80005448:	00006717          	auipc	a4,0x6
    8000544c:	1c870713          	addi	a4,a4,456 # 8000b610 <digits>
    80005450:	00d70733          	add	a4,a4,a3
    80005454:	00074683          	lbu	a3,0(a4)
    80005458:	fd040713          	addi	a4,s0,-48
    8000545c:	00c70733          	add	a4,a4,a2
    80005460:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005464:	0005071b          	sext.w	a4,a0
    80005468:	0325553b          	divuw	a0,a0,s2
    8000546c:	fcf772e3          	bgeu	a4,a5,80005430 <_Z8printIntiii+0x64>
    if(neg)
    80005470:	00058c63          	beqz	a1,80005488 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005474:	fd040793          	addi	a5,s0,-48
    80005478:	009784b3          	add	s1,a5,s1
    8000547c:	02d00793          	li	a5,45
    80005480:	fef48823          	sb	a5,-16(s1)
    80005484:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005488:	fff4849b          	addiw	s1,s1,-1
    8000548c:	0204c463          	bltz	s1,800054b4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005490:	fd040793          	addi	a5,s0,-48
    80005494:	009787b3          	add	a5,a5,s1
    80005498:	ff07c503          	lbu	a0,-16(a5)
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	280080e7          	jalr	640(ra) # 8000171c <_Z4putcc>
    800054a4:	fe5ff06f          	j	80005488 <_Z8printIntiii+0xbc>
        x = -xx;
    800054a8:	4090053b          	negw	a0,s1
        neg = 1;
    800054ac:	00100593          	li	a1,1
        x = -xx;
    800054b0:	f7dff06f          	j	8000542c <_Z8printIntiii+0x60>

    UNLOCK();
    800054b4:	00000613          	li	a2,0
    800054b8:	00100593          	li	a1,1
    800054bc:	00006517          	auipc	a0,0x6
    800054c0:	26c50513          	addi	a0,a0,620 # 8000b728 <lockPrint>
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	e98080e7          	jalr	-360(ra) # 8000135c <copy_and_swap>
    800054cc:	fe0514e3          	bnez	a0,800054b4 <_Z8printIntiii+0xe8>
    800054d0:	03813083          	ld	ra,56(sp)
    800054d4:	03013403          	ld	s0,48(sp)
    800054d8:	02813483          	ld	s1,40(sp)
    800054dc:	02013903          	ld	s2,32(sp)
    800054e0:	01813983          	ld	s3,24(sp)
    800054e4:	04010113          	addi	sp,sp,64
    800054e8:	00008067          	ret

00000000800054ec <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054ec:	fd010113          	addi	sp,sp,-48
    800054f0:	02113423          	sd	ra,40(sp)
    800054f4:	02813023          	sd	s0,32(sp)
    800054f8:	00913c23          	sd	s1,24(sp)
    800054fc:	01213823          	sd	s2,16(sp)
    80005500:	01313423          	sd	s3,8(sp)
    80005504:	03010413          	addi	s0,sp,48
    80005508:	00050493          	mv	s1,a0
    8000550c:	00058913          	mv	s2,a1
    80005510:	0015879b          	addiw	a5,a1,1
    80005514:	0007851b          	sext.w	a0,a5
    80005518:	00f4a023          	sw	a5,0(s1)
    8000551c:	0004a823          	sw	zero,16(s1)
    80005520:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005524:	00251513          	slli	a0,a0,0x2
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	e8c080e7          	jalr	-372(ra) # 800013b4 <_Z9mem_allocm>
    80005530:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005534:	01000513          	li	a0,16
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	438080e7          	jalr	1080(ra) # 80001970 <_Znwm>
    80005540:	00050993          	mv	s3,a0
    80005544:	00000593          	li	a1,0
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	708080e7          	jalr	1800(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005550:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005554:	01000513          	li	a0,16
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	418080e7          	jalr	1048(ra) # 80001970 <_Znwm>
    80005560:	00050993          	mv	s3,a0
    80005564:	00090593          	mv	a1,s2
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	6e8080e7          	jalr	1768(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005570:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005574:	01000513          	li	a0,16
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	3f8080e7          	jalr	1016(ra) # 80001970 <_Znwm>
    80005580:	00050913          	mv	s2,a0
    80005584:	00100593          	li	a1,1
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	6c8080e7          	jalr	1736(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    80005590:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005594:	01000513          	li	a0,16
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	3d8080e7          	jalr	984(ra) # 80001970 <_Znwm>
    800055a0:	00050913          	mv	s2,a0
    800055a4:	00100593          	li	a1,1
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	6a8080e7          	jalr	1704(ra) # 80001c50 <_ZN9SemaphoreC1Ej>
    800055b0:	0324b823          	sd	s2,48(s1)
}
    800055b4:	02813083          	ld	ra,40(sp)
    800055b8:	02013403          	ld	s0,32(sp)
    800055bc:	01813483          	ld	s1,24(sp)
    800055c0:	01013903          	ld	s2,16(sp)
    800055c4:	00813983          	ld	s3,8(sp)
    800055c8:	03010113          	addi	sp,sp,48
    800055cc:	00008067          	ret
    800055d0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055d4:	00098513          	mv	a0,s3
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	3e8080e7          	jalr	1000(ra) # 800019c0 <_ZdlPv>
    800055e0:	00048513          	mv	a0,s1
    800055e4:	00007097          	auipc	ra,0x7
    800055e8:	224080e7          	jalr	548(ra) # 8000c808 <_Unwind_Resume>
    800055ec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055f0:	00098513          	mv	a0,s3
    800055f4:	ffffc097          	auipc	ra,0xffffc
    800055f8:	3cc080e7          	jalr	972(ra) # 800019c0 <_ZdlPv>
    800055fc:	00048513          	mv	a0,s1
    80005600:	00007097          	auipc	ra,0x7
    80005604:	208080e7          	jalr	520(ra) # 8000c808 <_Unwind_Resume>
    80005608:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000560c:	00090513          	mv	a0,s2
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	3b0080e7          	jalr	944(ra) # 800019c0 <_ZdlPv>
    80005618:	00048513          	mv	a0,s1
    8000561c:	00007097          	auipc	ra,0x7
    80005620:	1ec080e7          	jalr	492(ra) # 8000c808 <_Unwind_Resume>
    80005624:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005628:	00090513          	mv	a0,s2
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	394080e7          	jalr	916(ra) # 800019c0 <_ZdlPv>
    80005634:	00048513          	mv	a0,s1
    80005638:	00007097          	auipc	ra,0x7
    8000563c:	1d0080e7          	jalr	464(ra) # 8000c808 <_Unwind_Resume>

0000000080005640 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005640:	fe010113          	addi	sp,sp,-32
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	00813823          	sd	s0,16(sp)
    8000564c:	00913423          	sd	s1,8(sp)
    80005650:	01213023          	sd	s2,0(sp)
    80005654:	02010413          	addi	s0,sp,32
    80005658:	00050493          	mv	s1,a0
    8000565c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005660:	01853503          	ld	a0,24(a0)
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	628080e7          	jalr	1576(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000566c:	0304b503          	ld	a0,48(s1)
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	61c080e7          	jalr	1564(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005678:	0084b783          	ld	a5,8(s1)
    8000567c:	0144a703          	lw	a4,20(s1)
    80005680:	00271713          	slli	a4,a4,0x2
    80005684:	00e787b3          	add	a5,a5,a4
    80005688:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000568c:	0144a783          	lw	a5,20(s1)
    80005690:	0017879b          	addiw	a5,a5,1
    80005694:	0004a703          	lw	a4,0(s1)
    80005698:	02e7e7bb          	remw	a5,a5,a4
    8000569c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056a0:	0304b503          	ld	a0,48(s1)
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	614080e7          	jalr	1556(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056ac:	0204b503          	ld	a0,32(s1)
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	608080e7          	jalr	1544(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

}
    800056b8:	01813083          	ld	ra,24(sp)
    800056bc:	01013403          	ld	s0,16(sp)
    800056c0:	00813483          	ld	s1,8(sp)
    800056c4:	00013903          	ld	s2,0(sp)
    800056c8:	02010113          	addi	sp,sp,32
    800056cc:	00008067          	ret

00000000800056d0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056d0:	fe010113          	addi	sp,sp,-32
    800056d4:	00113c23          	sd	ra,24(sp)
    800056d8:	00813823          	sd	s0,16(sp)
    800056dc:	00913423          	sd	s1,8(sp)
    800056e0:	01213023          	sd	s2,0(sp)
    800056e4:	02010413          	addi	s0,sp,32
    800056e8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056ec:	02053503          	ld	a0,32(a0)
    800056f0:	ffffc097          	auipc	ra,0xffffc
    800056f4:	59c080e7          	jalr	1436(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056f8:	0284b503          	ld	a0,40(s1)
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	590080e7          	jalr	1424(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005704:	0084b703          	ld	a4,8(s1)
    80005708:	0104a783          	lw	a5,16(s1)
    8000570c:	00279693          	slli	a3,a5,0x2
    80005710:	00d70733          	add	a4,a4,a3
    80005714:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005718:	0017879b          	addiw	a5,a5,1
    8000571c:	0004a703          	lw	a4,0(s1)
    80005720:	02e7e7bb          	remw	a5,a5,a4
    80005724:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005728:	0284b503          	ld	a0,40(s1)
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	58c080e7          	jalr	1420(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005734:	0184b503          	ld	a0,24(s1)
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	580080e7          	jalr	1408(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005740:	00090513          	mv	a0,s2
    80005744:	01813083          	ld	ra,24(sp)
    80005748:	01013403          	ld	s0,16(sp)
    8000574c:	00813483          	ld	s1,8(sp)
    80005750:	00013903          	ld	s2,0(sp)
    80005754:	02010113          	addi	sp,sp,32
    80005758:	00008067          	ret

000000008000575c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000575c:	fe010113          	addi	sp,sp,-32
    80005760:	00113c23          	sd	ra,24(sp)
    80005764:	00813823          	sd	s0,16(sp)
    80005768:	00913423          	sd	s1,8(sp)
    8000576c:	01213023          	sd	s2,0(sp)
    80005770:	02010413          	addi	s0,sp,32
    80005774:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005778:	02853503          	ld	a0,40(a0)
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	510080e7          	jalr	1296(ra) # 80001c8c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005784:	0304b503          	ld	a0,48(s1)
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	504080e7          	jalr	1284(ra) # 80001c8c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005790:	0144a783          	lw	a5,20(s1)
    80005794:	0104a903          	lw	s2,16(s1)
    80005798:	0327ce63          	blt	a5,s2,800057d4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000579c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057a0:	0304b503          	ld	a0,48(s1)
    800057a4:	ffffc097          	auipc	ra,0xffffc
    800057a8:	514080e7          	jalr	1300(ra) # 80001cb8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057ac:	0284b503          	ld	a0,40(s1)
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	508080e7          	jalr	1288(ra) # 80001cb8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057b8:	00090513          	mv	a0,s2
    800057bc:	01813083          	ld	ra,24(sp)
    800057c0:	01013403          	ld	s0,16(sp)
    800057c4:	00813483          	ld	s1,8(sp)
    800057c8:	00013903          	ld	s2,0(sp)
    800057cc:	02010113          	addi	sp,sp,32
    800057d0:	00008067          	ret
        ret = cap - head + tail;
    800057d4:	0004a703          	lw	a4,0(s1)
    800057d8:	4127093b          	subw	s2,a4,s2
    800057dc:	00f9093b          	addw	s2,s2,a5
    800057e0:	fc1ff06f          	j	800057a0 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057e4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057e4:	fe010113          	addi	sp,sp,-32
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	00813823          	sd	s0,16(sp)
    800057f0:	00913423          	sd	s1,8(sp)
    800057f4:	02010413          	addi	s0,sp,32
    800057f8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057fc:	00a00513          	li	a0,10
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	564080e7          	jalr	1380(ra) # 80001d64 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005808:	00004517          	auipc	a0,0x4
    8000580c:	a1850513          	addi	a0,a0,-1512 # 80009220 <CONSOLE_STATUS+0x210>
    80005810:	00000097          	auipc	ra,0x0
    80005814:	a0c080e7          	jalr	-1524(ra) # 8000521c <_Z11printStringPKc>
    while (getCnt()) {
    80005818:	00048513          	mv	a0,s1
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	f40080e7          	jalr	-192(ra) # 8000575c <_ZN9BufferCPP6getCntEv>
    80005824:	02050c63          	beqz	a0,8000585c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005828:	0084b783          	ld	a5,8(s1)
    8000582c:	0104a703          	lw	a4,16(s1)
    80005830:	00271713          	slli	a4,a4,0x2
    80005834:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005838:	0007c503          	lbu	a0,0(a5)
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	528080e7          	jalr	1320(ra) # 80001d64 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005844:	0104a783          	lw	a5,16(s1)
    80005848:	0017879b          	addiw	a5,a5,1
    8000584c:	0004a703          	lw	a4,0(s1)
    80005850:	02e7e7bb          	remw	a5,a5,a4
    80005854:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005858:	fc1ff06f          	j	80005818 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000585c:	02100513          	li	a0,33
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	504080e7          	jalr	1284(ra) # 80001d64 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005868:	00a00513          	li	a0,10
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	4f8080e7          	jalr	1272(ra) # 80001d64 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005874:	0084b503          	ld	a0,8(s1)
    80005878:	ffffc097          	auipc	ra,0xffffc
    8000587c:	b7c080e7          	jalr	-1156(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005880:	0204b503          	ld	a0,32(s1)
    80005884:	00050863          	beqz	a0,80005894 <_ZN9BufferCPPD1Ev+0xb0>
    80005888:	00053783          	ld	a5,0(a0)
    8000588c:	0087b783          	ld	a5,8(a5)
    80005890:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005894:	0184b503          	ld	a0,24(s1)
    80005898:	00050863          	beqz	a0,800058a8 <_ZN9BufferCPPD1Ev+0xc4>
    8000589c:	00053783          	ld	a5,0(a0)
    800058a0:	0087b783          	ld	a5,8(a5)
    800058a4:	000780e7          	jalr	a5
    delete mutexTail;
    800058a8:	0304b503          	ld	a0,48(s1)
    800058ac:	00050863          	beqz	a0,800058bc <_ZN9BufferCPPD1Ev+0xd8>
    800058b0:	00053783          	ld	a5,0(a0)
    800058b4:	0087b783          	ld	a5,8(a5)
    800058b8:	000780e7          	jalr	a5
    delete mutexHead;
    800058bc:	0284b503          	ld	a0,40(s1)
    800058c0:	00050863          	beqz	a0,800058d0 <_ZN9BufferCPPD1Ev+0xec>
    800058c4:	00053783          	ld	a5,0(a0)
    800058c8:	0087b783          	ld	a5,8(a5)
    800058cc:	000780e7          	jalr	a5
}
    800058d0:	01813083          	ld	ra,24(sp)
    800058d4:	01013403          	ld	s0,16(sp)
    800058d8:	00813483          	ld	s1,8(sp)
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret

00000000800058e4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058e4:	fe010113          	addi	sp,sp,-32
    800058e8:	00113c23          	sd	ra,24(sp)
    800058ec:	00813823          	sd	s0,16(sp)
    800058f0:	00913423          	sd	s1,8(sp)
    800058f4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058f8:	00004517          	auipc	a0,0x4
    800058fc:	94050513          	addi	a0,a0,-1728 # 80009238 <CONSOLE_STATUS+0x228>
    80005900:	00000097          	auipc	ra,0x0
    80005904:	91c080e7          	jalr	-1764(ra) # 8000521c <_Z11printStringPKc>
    int test = getc() - '0';
    80005908:	ffffc097          	auipc	ra,0xffffc
    8000590c:	dd8080e7          	jalr	-552(ra) # 800016e0 <_Z4getcv>
    80005910:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	dcc080e7          	jalr	-564(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000591c:	00700793          	li	a5,7
    80005920:	1097e263          	bltu	a5,s1,80005a24 <_Z8userMainv+0x140>
    80005924:	00249493          	slli	s1,s1,0x2
    80005928:	00004717          	auipc	a4,0x4
    8000592c:	b6870713          	addi	a4,a4,-1176 # 80009490 <CONSOLE_STATUS+0x480>
    80005930:	00e484b3          	add	s1,s1,a4
    80005934:	0004a783          	lw	a5,0(s1)
    80005938:	00e787b3          	add	a5,a5,a4
    8000593c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005940:	fffff097          	auipc	ra,0xfffff
    80005944:	f54080e7          	jalr	-172(ra) # 80004894 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005948:	00004517          	auipc	a0,0x4
    8000594c:	91050513          	addi	a0,a0,-1776 # 80009258 <CONSOLE_STATUS+0x248>
    80005950:	00000097          	auipc	ra,0x0
    80005954:	8cc080e7          	jalr	-1844(ra) # 8000521c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	02010113          	addi	sp,sp,32
    80005968:	00008067          	ret
            Threads_CPP_API_test();
    8000596c:	ffffe097          	auipc	ra,0xffffe
    80005970:	e08080e7          	jalr	-504(ra) # 80003774 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	92450513          	addi	a0,a0,-1756 # 80009298 <CONSOLE_STATUS+0x288>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	8a0080e7          	jalr	-1888(ra) # 8000521c <_Z11printStringPKc>
            break;
    80005984:	fd5ff06f          	j	80005958 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	640080e7          	jalr	1600(ra) # 80002fc8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005990:	00004517          	auipc	a0,0x4
    80005994:	94850513          	addi	a0,a0,-1720 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	884080e7          	jalr	-1916(ra) # 8000521c <_Z11printStringPKc>
            break;
    800059a0:	fb9ff06f          	j	80005958 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	234080e7          	jalr	564(ra) # 80004bd8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	97c50513          	addi	a0,a0,-1668 # 80009328 <CONSOLE_STATUS+0x318>
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	868080e7          	jalr	-1944(ra) # 8000521c <_Z11printStringPKc>
            break;
    800059bc:	f9dff06f          	j	80005958 <_Z8userMainv+0x74>
            testSleeping();
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	11c080e7          	jalr	284(ra) # 80005adc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	9b850513          	addi	a0,a0,-1608 # 80009380 <CONSOLE_STATUS+0x370>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	84c080e7          	jalr	-1972(ra) # 8000521c <_Z11printStringPKc>
            break;
    800059d8:	f81ff06f          	j	80005958 <_Z8userMainv+0x74>
            testConsumerProducer();
    800059dc:	ffffe097          	auipc	ra,0xffffe
    800059e0:	258080e7          	jalr	600(ra) # 80003c34 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	9cc50513          	addi	a0,a0,-1588 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	830080e7          	jalr	-2000(ra) # 8000521c <_Z11printStringPKc>
            break;
    800059f4:	f65ff06f          	j	80005958 <_Z8userMainv+0x74>
            System_Mode_test();
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	658080e7          	jalr	1624(ra) # 80006050 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	9f050513          	addi	a0,a0,-1552 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	814080e7          	jalr	-2028(ra) # 8000521c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005a10:	00004517          	auipc	a0,0x4
    80005a14:	a0050513          	addi	a0,a0,-1536 # 80009410 <CONSOLE_STATUS+0x400>
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	804080e7          	jalr	-2044(ra) # 8000521c <_Z11printStringPKc>
            break;
    80005a20:	f39ff06f          	j	80005958 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a24:	00004517          	auipc	a0,0x4
    80005a28:	a4450513          	addi	a0,a0,-1468 # 80009468 <CONSOLE_STATUS+0x458>
    80005a2c:	fffff097          	auipc	ra,0xfffff
    80005a30:	7f0080e7          	jalr	2032(ra) # 8000521c <_Z11printStringPKc>
    80005a34:	f25ff06f          	j	80005958 <_Z8userMainv+0x74>

0000000080005a38 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a38:	fe010113          	addi	sp,sp,-32
    80005a3c:	00113c23          	sd	ra,24(sp)
    80005a40:	00813823          	sd	s0,16(sp)
    80005a44:	00913423          	sd	s1,8(sp)
    80005a48:	01213023          	sd	s2,0(sp)
    80005a4c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a50:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a54:	00600493          	li	s1,6
    while (--i > 0) {
    80005a58:	fff4849b          	addiw	s1,s1,-1
    80005a5c:	04905463          	blez	s1,80005aa4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a60:	00004517          	auipc	a0,0x4
    80005a64:	a5050513          	addi	a0,a0,-1456 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005a68:	fffff097          	auipc	ra,0xfffff
    80005a6c:	7b4080e7          	jalr	1972(ra) # 8000521c <_Z11printStringPKc>
        printInt(sleep_time);
    80005a70:	00000613          	li	a2,0
    80005a74:	00a00593          	li	a1,10
    80005a78:	0009051b          	sext.w	a0,s2
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	950080e7          	jalr	-1712(ra) # 800053cc <_Z8printIntiii>
        printString(" !\n");
    80005a84:	00004517          	auipc	a0,0x4
    80005a88:	a3450513          	addi	a0,a0,-1484 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005a8c:	fffff097          	auipc	ra,0xfffff
    80005a90:	790080e7          	jalr	1936(ra) # 8000521c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a94:	00090513          	mv	a0,s2
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	a48080e7          	jalr	-1464(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80005aa0:	fb9ff06f          	j	80005a58 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005aa4:	00a00793          	li	a5,10
    80005aa8:	02f95933          	divu	s2,s2,a5
    80005aac:	fff90913          	addi	s2,s2,-1
    80005ab0:	00006797          	auipc	a5,0x6
    80005ab4:	c8078793          	addi	a5,a5,-896 # 8000b730 <_ZL8finished>
    80005ab8:	01278933          	add	s2,a5,s2
    80005abc:	00100793          	li	a5,1
    80005ac0:	00f90023          	sb	a5,0(s2)
}
    80005ac4:	01813083          	ld	ra,24(sp)
    80005ac8:	01013403          	ld	s0,16(sp)
    80005acc:	00813483          	ld	s1,8(sp)
    80005ad0:	00013903          	ld	s2,0(sp)
    80005ad4:	02010113          	addi	sp,sp,32
    80005ad8:	00008067          	ret

0000000080005adc <_Z12testSleepingv>:

void testSleeping() {
    80005adc:	fc010113          	addi	sp,sp,-64
    80005ae0:	02113c23          	sd	ra,56(sp)
    80005ae4:	02813823          	sd	s0,48(sp)
    80005ae8:	02913423          	sd	s1,40(sp)
    80005aec:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005af0:	00a00793          	li	a5,10
    80005af4:	fcf43823          	sd	a5,-48(s0)
    80005af8:	01400793          	li	a5,20
    80005afc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b00:	00000493          	li	s1,0
    80005b04:	02c0006f          	j	80005b30 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b08:	00349793          	slli	a5,s1,0x3
    80005b0c:	fd040613          	addi	a2,s0,-48
    80005b10:	00f60633          	add	a2,a2,a5
    80005b14:	00000597          	auipc	a1,0x0
    80005b18:	f2458593          	addi	a1,a1,-220 # 80005a38 <_ZL9sleepyRunPv>
    80005b1c:	fc040513          	addi	a0,s0,-64
    80005b20:	00f50533          	add	a0,a0,a5
    80005b24:	ffffc097          	auipc	ra,0xffffc
    80005b28:	910080e7          	jalr	-1776(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b2c:	0014849b          	addiw	s1,s1,1
    80005b30:	00100793          	li	a5,1
    80005b34:	fc97dae3          	bge	a5,s1,80005b08 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b38:	00006797          	auipc	a5,0x6
    80005b3c:	bf87c783          	lbu	a5,-1032(a5) # 8000b730 <_ZL8finished>
    80005b40:	fe078ce3          	beqz	a5,80005b38 <_Z12testSleepingv+0x5c>
    80005b44:	00006797          	auipc	a5,0x6
    80005b48:	bed7c783          	lbu	a5,-1043(a5) # 8000b731 <_ZL8finished+0x1>
    80005b4c:	fe0786e3          	beqz	a5,80005b38 <_Z12testSleepingv+0x5c>
}
    80005b50:	03813083          	ld	ra,56(sp)
    80005b54:	03013403          	ld	s0,48(sp)
    80005b58:	02813483          	ld	s1,40(sp)
    80005b5c:	04010113          	addi	sp,sp,64
    80005b60:	00008067          	ret

0000000080005b64 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b64:	fe010113          	addi	sp,sp,-32
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00813823          	sd	s0,16(sp)
    80005b70:	00913423          	sd	s1,8(sp)
    80005b74:	01213023          	sd	s2,0(sp)
    80005b78:	02010413          	addi	s0,sp,32
    80005b7c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b80:	00100793          	li	a5,1
    80005b84:	02a7f863          	bgeu	a5,a0,80005bb4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b88:	00a00793          	li	a5,10
    80005b8c:	02f577b3          	remu	a5,a0,a5
    80005b90:	02078e63          	beqz	a5,80005bcc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b94:	fff48513          	addi	a0,s1,-1
    80005b98:	00000097          	auipc	ra,0x0
    80005b9c:	fcc080e7          	jalr	-52(ra) # 80005b64 <_ZL9fibonaccim>
    80005ba0:	00050913          	mv	s2,a0
    80005ba4:	ffe48513          	addi	a0,s1,-2
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	fbc080e7          	jalr	-68(ra) # 80005b64 <_ZL9fibonaccim>
    80005bb0:	00a90533          	add	a0,s2,a0
}
    80005bb4:	01813083          	ld	ra,24(sp)
    80005bb8:	01013403          	ld	s0,16(sp)
    80005bbc:	00813483          	ld	s1,8(sp)
    80005bc0:	00013903          	ld	s2,0(sp)
    80005bc4:	02010113          	addi	sp,sp,32
    80005bc8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	990080e7          	jalr	-1648(ra) # 8000155c <_Z15thread_dispatchv>
    80005bd4:	fc1ff06f          	j	80005b94 <_ZL9fibonaccim+0x30>

0000000080005bd8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bd8:	fe010113          	addi	sp,sp,-32
    80005bdc:	00113c23          	sd	ra,24(sp)
    80005be0:	00813823          	sd	s0,16(sp)
    80005be4:	00913423          	sd	s1,8(sp)
    80005be8:	01213023          	sd	s2,0(sp)
    80005bec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bf0:	00a00493          	li	s1,10
    80005bf4:	0400006f          	j	80005c34 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bf8:	00003517          	auipc	a0,0x3
    80005bfc:	59050513          	addi	a0,a0,1424 # 80009188 <CONSOLE_STATUS+0x178>
    80005c00:	fffff097          	auipc	ra,0xfffff
    80005c04:	61c080e7          	jalr	1564(ra) # 8000521c <_Z11printStringPKc>
    80005c08:	00000613          	li	a2,0
    80005c0c:	00a00593          	li	a1,10
    80005c10:	00048513          	mv	a0,s1
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	7b8080e7          	jalr	1976(ra) # 800053cc <_Z8printIntiii>
    80005c1c:	00003517          	auipc	a0,0x3
    80005c20:	75c50513          	addi	a0,a0,1884 # 80009378 <CONSOLE_STATUS+0x368>
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	5f8080e7          	jalr	1528(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c2c:	0014849b          	addiw	s1,s1,1
    80005c30:	0ff4f493          	andi	s1,s1,255
    80005c34:	00c00793          	li	a5,12
    80005c38:	fc97f0e3          	bgeu	a5,s1,80005bf8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c3c:	00003517          	auipc	a0,0x3
    80005c40:	55450513          	addi	a0,a0,1364 # 80009190 <CONSOLE_STATUS+0x180>
    80005c44:	fffff097          	auipc	ra,0xfffff
    80005c48:	5d8080e7          	jalr	1496(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c4c:	00500313          	li	t1,5
    thread_dispatch();
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	90c080e7          	jalr	-1780(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c58:	01000513          	li	a0,16
    80005c5c:	00000097          	auipc	ra,0x0
    80005c60:	f08080e7          	jalr	-248(ra) # 80005b64 <_ZL9fibonaccim>
    80005c64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c68:	00003517          	auipc	a0,0x3
    80005c6c:	53850513          	addi	a0,a0,1336 # 800091a0 <CONSOLE_STATUS+0x190>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	5ac080e7          	jalr	1452(ra) # 8000521c <_Z11printStringPKc>
    80005c78:	00000613          	li	a2,0
    80005c7c:	00a00593          	li	a1,10
    80005c80:	0009051b          	sext.w	a0,s2
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	748080e7          	jalr	1864(ra) # 800053cc <_Z8printIntiii>
    80005c8c:	00003517          	auipc	a0,0x3
    80005c90:	6ec50513          	addi	a0,a0,1772 # 80009378 <CONSOLE_STATUS+0x368>
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	588080e7          	jalr	1416(ra) # 8000521c <_Z11printStringPKc>
    80005c9c:	0400006f          	j	80005cdc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ca0:	00003517          	auipc	a0,0x3
    80005ca4:	4e850513          	addi	a0,a0,1256 # 80009188 <CONSOLE_STATUS+0x178>
    80005ca8:	fffff097          	auipc	ra,0xfffff
    80005cac:	574080e7          	jalr	1396(ra) # 8000521c <_Z11printStringPKc>
    80005cb0:	00000613          	li	a2,0
    80005cb4:	00a00593          	li	a1,10
    80005cb8:	00048513          	mv	a0,s1
    80005cbc:	fffff097          	auipc	ra,0xfffff
    80005cc0:	710080e7          	jalr	1808(ra) # 800053cc <_Z8printIntiii>
    80005cc4:	00003517          	auipc	a0,0x3
    80005cc8:	6b450513          	addi	a0,a0,1716 # 80009378 <CONSOLE_STATUS+0x368>
    80005ccc:	fffff097          	auipc	ra,0xfffff
    80005cd0:	550080e7          	jalr	1360(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cd4:	0014849b          	addiw	s1,s1,1
    80005cd8:	0ff4f493          	andi	s1,s1,255
    80005cdc:	00f00793          	li	a5,15
    80005ce0:	fc97f0e3          	bgeu	a5,s1,80005ca0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ce4:	00003517          	auipc	a0,0x3
    80005ce8:	4cc50513          	addi	a0,a0,1228 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80005cec:	fffff097          	auipc	ra,0xfffff
    80005cf0:	530080e7          	jalr	1328(ra) # 8000521c <_Z11printStringPKc>
    finishedD = true;
    80005cf4:	00100793          	li	a5,1
    80005cf8:	00006717          	auipc	a4,0x6
    80005cfc:	a2f70d23          	sb	a5,-1478(a4) # 8000b732 <_ZL9finishedD>
    thread_dispatch();
    80005d00:	ffffc097          	auipc	ra,0xffffc
    80005d04:	85c080e7          	jalr	-1956(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	00013903          	ld	s2,0(sp)
    80005d18:	02010113          	addi	sp,sp,32
    80005d1c:	00008067          	ret

0000000080005d20 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	01213023          	sd	s2,0(sp)
    80005d34:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d38:	00000493          	li	s1,0
    80005d3c:	0400006f          	j	80005d7c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d40:	00003517          	auipc	a0,0x3
    80005d44:	40850513          	addi	a0,a0,1032 # 80009148 <CONSOLE_STATUS+0x138>
    80005d48:	fffff097          	auipc	ra,0xfffff
    80005d4c:	4d4080e7          	jalr	1236(ra) # 8000521c <_Z11printStringPKc>
    80005d50:	00000613          	li	a2,0
    80005d54:	00a00593          	li	a1,10
    80005d58:	00048513          	mv	a0,s1
    80005d5c:	fffff097          	auipc	ra,0xfffff
    80005d60:	670080e7          	jalr	1648(ra) # 800053cc <_Z8printIntiii>
    80005d64:	00003517          	auipc	a0,0x3
    80005d68:	61450513          	addi	a0,a0,1556 # 80009378 <CONSOLE_STATUS+0x368>
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	4b0080e7          	jalr	1200(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d74:	0014849b          	addiw	s1,s1,1
    80005d78:	0ff4f493          	andi	s1,s1,255
    80005d7c:	00200793          	li	a5,2
    80005d80:	fc97f0e3          	bgeu	a5,s1,80005d40 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	3cc50513          	addi	a0,a0,972 # 80009150 <CONSOLE_STATUS+0x140>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	490080e7          	jalr	1168(ra) # 8000521c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d94:	00700313          	li	t1,7
    thread_dispatch();
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	7c4080e7          	jalr	1988(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005da0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	3bc50513          	addi	a0,a0,956 # 80009160 <CONSOLE_STATUS+0x150>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	470080e7          	jalr	1136(ra) # 8000521c <_Z11printStringPKc>
    80005db4:	00000613          	li	a2,0
    80005db8:	00a00593          	li	a1,10
    80005dbc:	0009051b          	sext.w	a0,s2
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	60c080e7          	jalr	1548(ra) # 800053cc <_Z8printIntiii>
    80005dc8:	00003517          	auipc	a0,0x3
    80005dcc:	5b050513          	addi	a0,a0,1456 # 80009378 <CONSOLE_STATUS+0x368>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	44c080e7          	jalr	1100(ra) # 8000521c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005dd8:	00c00513          	li	a0,12
    80005ddc:	00000097          	auipc	ra,0x0
    80005de0:	d88080e7          	jalr	-632(ra) # 80005b64 <_ZL9fibonaccim>
    80005de4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	38050513          	addi	a0,a0,896 # 80009168 <CONSOLE_STATUS+0x158>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	42c080e7          	jalr	1068(ra) # 8000521c <_Z11printStringPKc>
    80005df8:	00000613          	li	a2,0
    80005dfc:	00a00593          	li	a1,10
    80005e00:	0009051b          	sext.w	a0,s2
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	5c8080e7          	jalr	1480(ra) # 800053cc <_Z8printIntiii>
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	56c50513          	addi	a0,a0,1388 # 80009378 <CONSOLE_STATUS+0x368>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	408080e7          	jalr	1032(ra) # 8000521c <_Z11printStringPKc>
    80005e1c:	0400006f          	j	80005e5c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e20:	00003517          	auipc	a0,0x3
    80005e24:	32850513          	addi	a0,a0,808 # 80009148 <CONSOLE_STATUS+0x138>
    80005e28:	fffff097          	auipc	ra,0xfffff
    80005e2c:	3f4080e7          	jalr	1012(ra) # 8000521c <_Z11printStringPKc>
    80005e30:	00000613          	li	a2,0
    80005e34:	00a00593          	li	a1,10
    80005e38:	00048513          	mv	a0,s1
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	590080e7          	jalr	1424(ra) # 800053cc <_Z8printIntiii>
    80005e44:	00003517          	auipc	a0,0x3
    80005e48:	53450513          	addi	a0,a0,1332 # 80009378 <CONSOLE_STATUS+0x368>
    80005e4c:	fffff097          	auipc	ra,0xfffff
    80005e50:	3d0080e7          	jalr	976(ra) # 8000521c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e54:	0014849b          	addiw	s1,s1,1
    80005e58:	0ff4f493          	andi	s1,s1,255
    80005e5c:	00500793          	li	a5,5
    80005e60:	fc97f0e3          	bgeu	a5,s1,80005e20 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e64:	00003517          	auipc	a0,0x3
    80005e68:	2bc50513          	addi	a0,a0,700 # 80009120 <CONSOLE_STATUS+0x110>
    80005e6c:	fffff097          	auipc	ra,0xfffff
    80005e70:	3b0080e7          	jalr	944(ra) # 8000521c <_Z11printStringPKc>
    finishedC = true;
    80005e74:	00100793          	li	a5,1
    80005e78:	00006717          	auipc	a4,0x6
    80005e7c:	8af70da3          	sb	a5,-1861(a4) # 8000b733 <_ZL9finishedC>
    thread_dispatch();
    80005e80:	ffffb097          	auipc	ra,0xffffb
    80005e84:	6dc080e7          	jalr	1756(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005e88:	01813083          	ld	ra,24(sp)
    80005e8c:	01013403          	ld	s0,16(sp)
    80005e90:	00813483          	ld	s1,8(sp)
    80005e94:	00013903          	ld	s2,0(sp)
    80005e98:	02010113          	addi	sp,sp,32
    80005e9c:	00008067          	ret

0000000080005ea0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ea0:	fe010113          	addi	sp,sp,-32
    80005ea4:	00113c23          	sd	ra,24(sp)
    80005ea8:	00813823          	sd	s0,16(sp)
    80005eac:	00913423          	sd	s1,8(sp)
    80005eb0:	01213023          	sd	s2,0(sp)
    80005eb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005eb8:	00000913          	li	s2,0
    80005ebc:	0400006f          	j	80005efc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ec0:	ffffb097          	auipc	ra,0xffffb
    80005ec4:	69c080e7          	jalr	1692(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ec8:	00148493          	addi	s1,s1,1
    80005ecc:	000027b7          	lui	a5,0x2
    80005ed0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005ed4:	0097ee63          	bltu	a5,s1,80005ef0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ed8:	00000713          	li	a4,0
    80005edc:	000077b7          	lui	a5,0x7
    80005ee0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ee4:	fce7eee3          	bltu	a5,a4,80005ec0 <_ZL11workerBodyBPv+0x20>
    80005ee8:	00170713          	addi	a4,a4,1
    80005eec:	ff1ff06f          	j	80005edc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ef0:	00a00793          	li	a5,10
    80005ef4:	04f90663          	beq	s2,a5,80005f40 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ef8:	00190913          	addi	s2,s2,1
    80005efc:	00f00793          	li	a5,15
    80005f00:	0527e463          	bltu	a5,s2,80005f48 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005f04:	00003517          	auipc	a0,0x3
    80005f08:	22c50513          	addi	a0,a0,556 # 80009130 <CONSOLE_STATUS+0x120>
    80005f0c:	fffff097          	auipc	ra,0xfffff
    80005f10:	310080e7          	jalr	784(ra) # 8000521c <_Z11printStringPKc>
    80005f14:	00000613          	li	a2,0
    80005f18:	00a00593          	li	a1,10
    80005f1c:	0009051b          	sext.w	a0,s2
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	4ac080e7          	jalr	1196(ra) # 800053cc <_Z8printIntiii>
    80005f28:	00003517          	auipc	a0,0x3
    80005f2c:	45050513          	addi	a0,a0,1104 # 80009378 <CONSOLE_STATUS+0x368>
    80005f30:	fffff097          	auipc	ra,0xfffff
    80005f34:	2ec080e7          	jalr	748(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f38:	00000493          	li	s1,0
    80005f3c:	f91ff06f          	j	80005ecc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f40:	14102ff3          	csrr	t6,sepc
    80005f44:	fb5ff06f          	j	80005ef8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	1f050513          	addi	a0,a0,496 # 80009138 <CONSOLE_STATUS+0x128>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	2cc080e7          	jalr	716(ra) # 8000521c <_Z11printStringPKc>
    finishedB = true;
    80005f58:	00100793          	li	a5,1
    80005f5c:	00005717          	auipc	a4,0x5
    80005f60:	7cf70c23          	sb	a5,2008(a4) # 8000b734 <_ZL9finishedB>
    thread_dispatch();
    80005f64:	ffffb097          	auipc	ra,0xffffb
    80005f68:	5f8080e7          	jalr	1528(ra) # 8000155c <_Z15thread_dispatchv>
}
    80005f6c:	01813083          	ld	ra,24(sp)
    80005f70:	01013403          	ld	s0,16(sp)
    80005f74:	00813483          	ld	s1,8(sp)
    80005f78:	00013903          	ld	s2,0(sp)
    80005f7c:	02010113          	addi	sp,sp,32
    80005f80:	00008067          	ret

0000000080005f84 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f84:	fe010113          	addi	sp,sp,-32
    80005f88:	00113c23          	sd	ra,24(sp)
    80005f8c:	00813823          	sd	s0,16(sp)
    80005f90:	00913423          	sd	s1,8(sp)
    80005f94:	01213023          	sd	s2,0(sp)
    80005f98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f9c:	00000913          	li	s2,0
    80005fa0:	0380006f          	j	80005fd8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005fa4:	ffffb097          	auipc	ra,0xffffb
    80005fa8:	5b8080e7          	jalr	1464(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fac:	00148493          	addi	s1,s1,1
    80005fb0:	000027b7          	lui	a5,0x2
    80005fb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fb8:	0097ee63          	bltu	a5,s1,80005fd4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fbc:	00000713          	li	a4,0
    80005fc0:	000077b7          	lui	a5,0x7
    80005fc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fc8:	fce7eee3          	bltu	a5,a4,80005fa4 <_ZL11workerBodyAPv+0x20>
    80005fcc:	00170713          	addi	a4,a4,1
    80005fd0:	ff1ff06f          	j	80005fc0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fd4:	00190913          	addi	s2,s2,1
    80005fd8:	00900793          	li	a5,9
    80005fdc:	0527e063          	bltu	a5,s2,8000601c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fe0:	00003517          	auipc	a0,0x3
    80005fe4:	13850513          	addi	a0,a0,312 # 80009118 <CONSOLE_STATUS+0x108>
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	234080e7          	jalr	564(ra) # 8000521c <_Z11printStringPKc>
    80005ff0:	00000613          	li	a2,0
    80005ff4:	00a00593          	li	a1,10
    80005ff8:	0009051b          	sext.w	a0,s2
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	3d0080e7          	jalr	976(ra) # 800053cc <_Z8printIntiii>
    80006004:	00003517          	auipc	a0,0x3
    80006008:	37450513          	addi	a0,a0,884 # 80009378 <CONSOLE_STATUS+0x368>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	210080e7          	jalr	528(ra) # 8000521c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006014:	00000493          	li	s1,0
    80006018:	f99ff06f          	j	80005fb0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000601c:	00003517          	auipc	a0,0x3
    80006020:	10450513          	addi	a0,a0,260 # 80009120 <CONSOLE_STATUS+0x110>
    80006024:	fffff097          	auipc	ra,0xfffff
    80006028:	1f8080e7          	jalr	504(ra) # 8000521c <_Z11printStringPKc>
    finishedA = true;
    8000602c:	00100793          	li	a5,1
    80006030:	00005717          	auipc	a4,0x5
    80006034:	70f702a3          	sb	a5,1797(a4) # 8000b735 <_ZL9finishedA>
}
    80006038:	01813083          	ld	ra,24(sp)
    8000603c:	01013403          	ld	s0,16(sp)
    80006040:	00813483          	ld	s1,8(sp)
    80006044:	00013903          	ld	s2,0(sp)
    80006048:	02010113          	addi	sp,sp,32
    8000604c:	00008067          	ret

0000000080006050 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006050:	fd010113          	addi	sp,sp,-48
    80006054:	02113423          	sd	ra,40(sp)
    80006058:	02813023          	sd	s0,32(sp)
    8000605c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006060:	00000613          	li	a2,0
    80006064:	00000597          	auipc	a1,0x0
    80006068:	f2058593          	addi	a1,a1,-224 # 80005f84 <_ZL11workerBodyAPv>
    8000606c:	fd040513          	addi	a0,s0,-48
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	3c4080e7          	jalr	964(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	14850513          	addi	a0,a0,328 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	19c080e7          	jalr	412(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006088:	00000613          	li	a2,0
    8000608c:	00000597          	auipc	a1,0x0
    80006090:	e1458593          	addi	a1,a1,-492 # 80005ea0 <_ZL11workerBodyBPv>
    80006094:	fd840513          	addi	a0,s0,-40
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	39c080e7          	jalr	924(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	13850513          	addi	a0,a0,312 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	174080e7          	jalr	372(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800060b0:	00000613          	li	a2,0
    800060b4:	00000597          	auipc	a1,0x0
    800060b8:	c6c58593          	addi	a1,a1,-916 # 80005d20 <_ZL11workerBodyCPv>
    800060bc:	fe040513          	addi	a0,s0,-32
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	374080e7          	jalr	884(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800060c8:	00003517          	auipc	a0,0x3
    800060cc:	12850513          	addi	a0,a0,296 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	14c080e7          	jalr	332(ra) # 8000521c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060d8:	00000613          	li	a2,0
    800060dc:	00000597          	auipc	a1,0x0
    800060e0:	afc58593          	addi	a1,a1,-1284 # 80005bd8 <_ZL11workerBodyDPv>
    800060e4:	fe840513          	addi	a0,s0,-24
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	34c080e7          	jalr	844(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	11850513          	addi	a0,a0,280 # 80009208 <CONSOLE_STATUS+0x1f8>
    800060f8:	fffff097          	auipc	ra,0xfffff
    800060fc:	124080e7          	jalr	292(ra) # 8000521c <_Z11printStringPKc>
    80006100:	00c0006f          	j	8000610c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006104:	ffffb097          	auipc	ra,0xffffb
    80006108:	458080e7          	jalr	1112(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000610c:	00005797          	auipc	a5,0x5
    80006110:	6297c783          	lbu	a5,1577(a5) # 8000b735 <_ZL9finishedA>
    80006114:	fe0788e3          	beqz	a5,80006104 <_Z16System_Mode_testv+0xb4>
    80006118:	00005797          	auipc	a5,0x5
    8000611c:	61c7c783          	lbu	a5,1564(a5) # 8000b734 <_ZL9finishedB>
    80006120:	fe0782e3          	beqz	a5,80006104 <_Z16System_Mode_testv+0xb4>
    80006124:	00005797          	auipc	a5,0x5
    80006128:	60f7c783          	lbu	a5,1551(a5) # 8000b733 <_ZL9finishedC>
    8000612c:	fc078ce3          	beqz	a5,80006104 <_Z16System_Mode_testv+0xb4>
    80006130:	00005797          	auipc	a5,0x5
    80006134:	6027c783          	lbu	a5,1538(a5) # 8000b732 <_ZL9finishedD>
    80006138:	fc0786e3          	beqz	a5,80006104 <_Z16System_Mode_testv+0xb4>
    }

}
    8000613c:	02813083          	ld	ra,40(sp)
    80006140:	02013403          	ld	s0,32(sp)
    80006144:	03010113          	addi	sp,sp,48
    80006148:	00008067          	ret

000000008000614c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000614c:	fe010113          	addi	sp,sp,-32
    80006150:	00113c23          	sd	ra,24(sp)
    80006154:	00813823          	sd	s0,16(sp)
    80006158:	00913423          	sd	s1,8(sp)
    8000615c:	01213023          	sd	s2,0(sp)
    80006160:	02010413          	addi	s0,sp,32
    80006164:	00050493          	mv	s1,a0
    80006168:	00058913          	mv	s2,a1
    8000616c:	0015879b          	addiw	a5,a1,1
    80006170:	0007851b          	sext.w	a0,a5
    80006174:	00f4a023          	sw	a5,0(s1)
    80006178:	0004a823          	sw	zero,16(s1)
    8000617c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006180:	00251513          	slli	a0,a0,0x2
    80006184:	ffffb097          	auipc	ra,0xffffb
    80006188:	230080e7          	jalr	560(ra) # 800013b4 <_Z9mem_allocm>
    8000618c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006190:	00000593          	li	a1,0
    80006194:	02048513          	addi	a0,s1,32
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	420080e7          	jalr	1056(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800061a0:	00090593          	mv	a1,s2
    800061a4:	01848513          	addi	a0,s1,24
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	410080e7          	jalr	1040(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800061b0:	00100593          	li	a1,1
    800061b4:	02848513          	addi	a0,s1,40
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	400080e7          	jalr	1024(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800061c0:	00100593          	li	a1,1
    800061c4:	03048513          	addi	a0,s1,48
    800061c8:	ffffb097          	auipc	ra,0xffffb
    800061cc:	3f0080e7          	jalr	1008(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    800061d0:	01813083          	ld	ra,24(sp)
    800061d4:	01013403          	ld	s0,16(sp)
    800061d8:	00813483          	ld	s1,8(sp)
    800061dc:	00013903          	ld	s2,0(sp)
    800061e0:	02010113          	addi	sp,sp,32
    800061e4:	00008067          	ret

00000000800061e8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061e8:	fe010113          	addi	sp,sp,-32
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	00813823          	sd	s0,16(sp)
    800061f4:	00913423          	sd	s1,8(sp)
    800061f8:	01213023          	sd	s2,0(sp)
    800061fc:	02010413          	addi	s0,sp,32
    80006200:	00050493          	mv	s1,a0
    80006204:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006208:	01853503          	ld	a0,24(a0)
    8000620c:	ffffb097          	auipc	ra,0xffffb
    80006210:	43c080e7          	jalr	1084(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006214:	0304b503          	ld	a0,48(s1)
    80006218:	ffffb097          	auipc	ra,0xffffb
    8000621c:	430080e7          	jalr	1072(ra) # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006220:	0084b783          	ld	a5,8(s1)
    80006224:	0144a703          	lw	a4,20(s1)
    80006228:	00271713          	slli	a4,a4,0x2
    8000622c:	00e787b3          	add	a5,a5,a4
    80006230:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006234:	0144a783          	lw	a5,20(s1)
    80006238:	0017879b          	addiw	a5,a5,1
    8000623c:	0004a703          	lw	a4,0(s1)
    80006240:	02e7e7bb          	remw	a5,a5,a4
    80006244:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006248:	0304b503          	ld	a0,48(s1)
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	448080e7          	jalr	1096(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006254:	0204b503          	ld	a0,32(s1)
    80006258:	ffffb097          	auipc	ra,0xffffb
    8000625c:	43c080e7          	jalr	1084(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006260:	01813083          	ld	ra,24(sp)
    80006264:	01013403          	ld	s0,16(sp)
    80006268:	00813483          	ld	s1,8(sp)
    8000626c:	00013903          	ld	s2,0(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret

0000000080006278 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006278:	fe010113          	addi	sp,sp,-32
    8000627c:	00113c23          	sd	ra,24(sp)
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00913423          	sd	s1,8(sp)
    80006288:	01213023          	sd	s2,0(sp)
    8000628c:	02010413          	addi	s0,sp,32
    80006290:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006294:	02053503          	ld	a0,32(a0)
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	3b0080e7          	jalr	944(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800062a0:	0284b503          	ld	a0,40(s1)
    800062a4:	ffffb097          	auipc	ra,0xffffb
    800062a8:	3a4080e7          	jalr	932(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800062ac:	0084b703          	ld	a4,8(s1)
    800062b0:	0104a783          	lw	a5,16(s1)
    800062b4:	00279693          	slli	a3,a5,0x2
    800062b8:	00d70733          	add	a4,a4,a3
    800062bc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062c0:	0017879b          	addiw	a5,a5,1
    800062c4:	0004a703          	lw	a4,0(s1)
    800062c8:	02e7e7bb          	remw	a5,a5,a4
    800062cc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062d0:	0284b503          	ld	a0,40(s1)
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	3c0080e7          	jalr	960(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800062dc:	0184b503          	ld	a0,24(s1)
    800062e0:	ffffb097          	auipc	ra,0xffffb
    800062e4:	3b4080e7          	jalr	948(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    800062e8:	00090513          	mv	a0,s2
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	00013903          	ld	s2,0(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006304:	fe010113          	addi	sp,sp,-32
    80006308:	00113c23          	sd	ra,24(sp)
    8000630c:	00813823          	sd	s0,16(sp)
    80006310:	00913423          	sd	s1,8(sp)
    80006314:	01213023          	sd	s2,0(sp)
    80006318:	02010413          	addi	s0,sp,32
    8000631c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006320:	02853503          	ld	a0,40(a0)
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	324080e7          	jalr	804(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	318080e7          	jalr	792(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006338:	0144a783          	lw	a5,20(s1)
    8000633c:	0104a903          	lw	s2,16(s1)
    80006340:	0327ce63          	blt	a5,s2,8000637c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006344:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006348:	0304b503          	ld	a0,48(s1)
    8000634c:	ffffb097          	auipc	ra,0xffffb
    80006350:	348080e7          	jalr	840(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006354:	0284b503          	ld	a0,40(s1)
    80006358:	ffffb097          	auipc	ra,0xffffb
    8000635c:	33c080e7          	jalr	828(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006360:	00090513          	mv	a0,s2
    80006364:	01813083          	ld	ra,24(sp)
    80006368:	01013403          	ld	s0,16(sp)
    8000636c:	00813483          	ld	s1,8(sp)
    80006370:	00013903          	ld	s2,0(sp)
    80006374:	02010113          	addi	sp,sp,32
    80006378:	00008067          	ret
        ret = cap - head + tail;
    8000637c:	0004a703          	lw	a4,0(s1)
    80006380:	4127093b          	subw	s2,a4,s2
    80006384:	00f9093b          	addw	s2,s2,a5
    80006388:	fc1ff06f          	j	80006348 <_ZN6Buffer6getCntEv+0x44>

000000008000638c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000638c:	fe010113          	addi	sp,sp,-32
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00813823          	sd	s0,16(sp)
    80006398:	00913423          	sd	s1,8(sp)
    8000639c:	02010413          	addi	s0,sp,32
    800063a0:	00050493          	mv	s1,a0
    putc('\n');
    800063a4:	00a00513          	li	a0,10
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	374080e7          	jalr	884(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    800063b0:	00003517          	auipc	a0,0x3
    800063b4:	e7050513          	addi	a0,a0,-400 # 80009220 <CONSOLE_STATUS+0x210>
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	e64080e7          	jalr	-412(ra) # 8000521c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063c0:	00048513          	mv	a0,s1
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	f40080e7          	jalr	-192(ra) # 80006304 <_ZN6Buffer6getCntEv>
    800063cc:	02a05c63          	blez	a0,80006404 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063d0:	0084b783          	ld	a5,8(s1)
    800063d4:	0104a703          	lw	a4,16(s1)
    800063d8:	00271713          	slli	a4,a4,0x2
    800063dc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063e0:	0007c503          	lbu	a0,0(a5)
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	338080e7          	jalr	824(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    800063ec:	0104a783          	lw	a5,16(s1)
    800063f0:	0017879b          	addiw	a5,a5,1
    800063f4:	0004a703          	lw	a4,0(s1)
    800063f8:	02e7e7bb          	remw	a5,a5,a4
    800063fc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006400:	fc1ff06f          	j	800063c0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006404:	02100513          	li	a0,33
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	314080e7          	jalr	788(ra) # 8000171c <_Z4putcc>
    putc('\n');
    80006410:	00a00513          	li	a0,10
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	308080e7          	jalr	776(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    8000641c:	0084b503          	ld	a0,8(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	fd4080e7          	jalr	-44(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006428:	0204b503          	ld	a0,32(s1)
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	1d0080e7          	jalr	464(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006434:	0184b503          	ld	a0,24(s1)
    80006438:	ffffb097          	auipc	ra,0xffffb
    8000643c:	1c4080e7          	jalr	452(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006440:	0304b503          	ld	a0,48(s1)
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	1b8080e7          	jalr	440(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000644c:	0284b503          	ld	a0,40(s1)
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	1ac080e7          	jalr	428(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80006458:	01813083          	ld	ra,24(sp)
    8000645c:	01013403          	ld	s0,16(sp)
    80006460:	00813483          	ld	s1,8(sp)
    80006464:	02010113          	addi	sp,sp,32
    80006468:	00008067          	ret

000000008000646c <start>:
    8000646c:	ff010113          	addi	sp,sp,-16
    80006470:	00813423          	sd	s0,8(sp)
    80006474:	01010413          	addi	s0,sp,16
    80006478:	300027f3          	csrr	a5,mstatus
    8000647c:	ffffe737          	lui	a4,0xffffe
    80006480:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e5f>
    80006484:	00e7f7b3          	and	a5,a5,a4
    80006488:	00001737          	lui	a4,0x1
    8000648c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006490:	00e7e7b3          	or	a5,a5,a4
    80006494:	30079073          	csrw	mstatus,a5
    80006498:	00000797          	auipc	a5,0x0
    8000649c:	16078793          	addi	a5,a5,352 # 800065f8 <system_main>
    800064a0:	34179073          	csrw	mepc,a5
    800064a4:	00000793          	li	a5,0
    800064a8:	18079073          	csrw	satp,a5
    800064ac:	000107b7          	lui	a5,0x10
    800064b0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800064b4:	30279073          	csrw	medeleg,a5
    800064b8:	30379073          	csrw	mideleg,a5
    800064bc:	104027f3          	csrr	a5,sie
    800064c0:	2227e793          	ori	a5,a5,546
    800064c4:	10479073          	csrw	sie,a5
    800064c8:	fff00793          	li	a5,-1
    800064cc:	00a7d793          	srli	a5,a5,0xa
    800064d0:	3b079073          	csrw	pmpaddr0,a5
    800064d4:	00f00793          	li	a5,15
    800064d8:	3a079073          	csrw	pmpcfg0,a5
    800064dc:	f14027f3          	csrr	a5,mhartid
    800064e0:	0200c737          	lui	a4,0x200c
    800064e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064e8:	0007869b          	sext.w	a3,a5
    800064ec:	00269713          	slli	a4,a3,0x2
    800064f0:	000f4637          	lui	a2,0xf4
    800064f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064f8:	00d70733          	add	a4,a4,a3
    800064fc:	0037979b          	slliw	a5,a5,0x3
    80006500:	020046b7          	lui	a3,0x2004
    80006504:	00d787b3          	add	a5,a5,a3
    80006508:	00c585b3          	add	a1,a1,a2
    8000650c:	00371693          	slli	a3,a4,0x3
    80006510:	00005717          	auipc	a4,0x5
    80006514:	23070713          	addi	a4,a4,560 # 8000b740 <timer_scratch>
    80006518:	00b7b023          	sd	a1,0(a5)
    8000651c:	00d70733          	add	a4,a4,a3
    80006520:	00f73c23          	sd	a5,24(a4)
    80006524:	02c73023          	sd	a2,32(a4)
    80006528:	34071073          	csrw	mscratch,a4
    8000652c:	00000797          	auipc	a5,0x0
    80006530:	6e478793          	addi	a5,a5,1764 # 80006c10 <timervec>
    80006534:	30579073          	csrw	mtvec,a5
    80006538:	300027f3          	csrr	a5,mstatus
    8000653c:	0087e793          	ori	a5,a5,8
    80006540:	30079073          	csrw	mstatus,a5
    80006544:	304027f3          	csrr	a5,mie
    80006548:	0807e793          	ori	a5,a5,128
    8000654c:	30479073          	csrw	mie,a5
    80006550:	f14027f3          	csrr	a5,mhartid
    80006554:	0007879b          	sext.w	a5,a5
    80006558:	00078213          	mv	tp,a5
    8000655c:	30200073          	mret
    80006560:	00813403          	ld	s0,8(sp)
    80006564:	01010113          	addi	sp,sp,16
    80006568:	00008067          	ret

000000008000656c <timerinit>:
    8000656c:	ff010113          	addi	sp,sp,-16
    80006570:	00813423          	sd	s0,8(sp)
    80006574:	01010413          	addi	s0,sp,16
    80006578:	f14027f3          	csrr	a5,mhartid
    8000657c:	0200c737          	lui	a4,0x200c
    80006580:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006584:	0007869b          	sext.w	a3,a5
    80006588:	00269713          	slli	a4,a3,0x2
    8000658c:	000f4637          	lui	a2,0xf4
    80006590:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006594:	00d70733          	add	a4,a4,a3
    80006598:	0037979b          	slliw	a5,a5,0x3
    8000659c:	020046b7          	lui	a3,0x2004
    800065a0:	00d787b3          	add	a5,a5,a3
    800065a4:	00c585b3          	add	a1,a1,a2
    800065a8:	00371693          	slli	a3,a4,0x3
    800065ac:	00005717          	auipc	a4,0x5
    800065b0:	19470713          	addi	a4,a4,404 # 8000b740 <timer_scratch>
    800065b4:	00b7b023          	sd	a1,0(a5)
    800065b8:	00d70733          	add	a4,a4,a3
    800065bc:	00f73c23          	sd	a5,24(a4)
    800065c0:	02c73023          	sd	a2,32(a4)
    800065c4:	34071073          	csrw	mscratch,a4
    800065c8:	00000797          	auipc	a5,0x0
    800065cc:	64878793          	addi	a5,a5,1608 # 80006c10 <timervec>
    800065d0:	30579073          	csrw	mtvec,a5
    800065d4:	300027f3          	csrr	a5,mstatus
    800065d8:	0087e793          	ori	a5,a5,8
    800065dc:	30079073          	csrw	mstatus,a5
    800065e0:	304027f3          	csrr	a5,mie
    800065e4:	0807e793          	ori	a5,a5,128
    800065e8:	30479073          	csrw	mie,a5
    800065ec:	00813403          	ld	s0,8(sp)
    800065f0:	01010113          	addi	sp,sp,16
    800065f4:	00008067          	ret

00000000800065f8 <system_main>:
    800065f8:	fe010113          	addi	sp,sp,-32
    800065fc:	00813823          	sd	s0,16(sp)
    80006600:	00913423          	sd	s1,8(sp)
    80006604:	00113c23          	sd	ra,24(sp)
    80006608:	02010413          	addi	s0,sp,32
    8000660c:	00000097          	auipc	ra,0x0
    80006610:	0c4080e7          	jalr	196(ra) # 800066d0 <cpuid>
    80006614:	00005497          	auipc	s1,0x5
    80006618:	06c48493          	addi	s1,s1,108 # 8000b680 <started>
    8000661c:	02050263          	beqz	a0,80006640 <system_main+0x48>
    80006620:	0004a783          	lw	a5,0(s1)
    80006624:	0007879b          	sext.w	a5,a5
    80006628:	fe078ce3          	beqz	a5,80006620 <system_main+0x28>
    8000662c:	0ff0000f          	fence
    80006630:	00003517          	auipc	a0,0x3
    80006634:	ec050513          	addi	a0,a0,-320 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	a74080e7          	jalr	-1420(ra) # 800070ac <panic>
    80006640:	00001097          	auipc	ra,0x1
    80006644:	9c8080e7          	jalr	-1592(ra) # 80007008 <consoleinit>
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	154080e7          	jalr	340(ra) # 8000779c <printfinit>
    80006650:	00003517          	auipc	a0,0x3
    80006654:	d2850513          	addi	a0,a0,-728 # 80009378 <CONSOLE_STATUS+0x368>
    80006658:	00001097          	auipc	ra,0x1
    8000665c:	ab0080e7          	jalr	-1360(ra) # 80007108 <__printf>
    80006660:	00003517          	auipc	a0,0x3
    80006664:	e6050513          	addi	a0,a0,-416 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006668:	00001097          	auipc	ra,0x1
    8000666c:	aa0080e7          	jalr	-1376(ra) # 80007108 <__printf>
    80006670:	00003517          	auipc	a0,0x3
    80006674:	d0850513          	addi	a0,a0,-760 # 80009378 <CONSOLE_STATUS+0x368>
    80006678:	00001097          	auipc	ra,0x1
    8000667c:	a90080e7          	jalr	-1392(ra) # 80007108 <__printf>
    80006680:	00001097          	auipc	ra,0x1
    80006684:	4a8080e7          	jalr	1192(ra) # 80007b28 <kinit>
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	148080e7          	jalr	328(ra) # 800067d0 <trapinit>
    80006690:	00000097          	auipc	ra,0x0
    80006694:	16c080e7          	jalr	364(ra) # 800067fc <trapinithart>
    80006698:	00000097          	auipc	ra,0x0
    8000669c:	5b8080e7          	jalr	1464(ra) # 80006c50 <plicinit>
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	5d8080e7          	jalr	1496(ra) # 80006c78 <plicinithart>
    800066a8:	00000097          	auipc	ra,0x0
    800066ac:	078080e7          	jalr	120(ra) # 80006720 <userinit>
    800066b0:	0ff0000f          	fence
    800066b4:	00100793          	li	a5,1
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	e2050513          	addi	a0,a0,-480 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800066c0:	00f4a023          	sw	a5,0(s1)
    800066c4:	00001097          	auipc	ra,0x1
    800066c8:	a44080e7          	jalr	-1468(ra) # 80007108 <__printf>
    800066cc:	0000006f          	j	800066cc <system_main+0xd4>

00000000800066d0 <cpuid>:
    800066d0:	ff010113          	addi	sp,sp,-16
    800066d4:	00813423          	sd	s0,8(sp)
    800066d8:	01010413          	addi	s0,sp,16
    800066dc:	00020513          	mv	a0,tp
    800066e0:	00813403          	ld	s0,8(sp)
    800066e4:	0005051b          	sext.w	a0,a0
    800066e8:	01010113          	addi	sp,sp,16
    800066ec:	00008067          	ret

00000000800066f0 <mycpu>:
    800066f0:	ff010113          	addi	sp,sp,-16
    800066f4:	00813423          	sd	s0,8(sp)
    800066f8:	01010413          	addi	s0,sp,16
    800066fc:	00020793          	mv	a5,tp
    80006700:	00813403          	ld	s0,8(sp)
    80006704:	0007879b          	sext.w	a5,a5
    80006708:	00779793          	slli	a5,a5,0x7
    8000670c:	00006517          	auipc	a0,0x6
    80006710:	06450513          	addi	a0,a0,100 # 8000c770 <cpus>
    80006714:	00f50533          	add	a0,a0,a5
    80006718:	01010113          	addi	sp,sp,16
    8000671c:	00008067          	ret

0000000080006720 <userinit>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813423          	sd	s0,8(sp)
    80006728:	01010413          	addi	s0,sp,16
    8000672c:	00813403          	ld	s0,8(sp)
    80006730:	01010113          	addi	sp,sp,16
    80006734:	ffffb317          	auipc	t1,0xffffb
    80006738:	13830067          	jr	312(t1) # 8000186c <main>

000000008000673c <either_copyout>:
    8000673c:	ff010113          	addi	sp,sp,-16
    80006740:	00813023          	sd	s0,0(sp)
    80006744:	00113423          	sd	ra,8(sp)
    80006748:	01010413          	addi	s0,sp,16
    8000674c:	02051663          	bnez	a0,80006778 <either_copyout+0x3c>
    80006750:	00058513          	mv	a0,a1
    80006754:	00060593          	mv	a1,a2
    80006758:	0006861b          	sext.w	a2,a3
    8000675c:	00002097          	auipc	ra,0x2
    80006760:	c58080e7          	jalr	-936(ra) # 800083b4 <__memmove>
    80006764:	00813083          	ld	ra,8(sp)
    80006768:	00013403          	ld	s0,0(sp)
    8000676c:	00000513          	li	a0,0
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret
    80006778:	00003517          	auipc	a0,0x3
    8000677c:	da050513          	addi	a0,a0,-608 # 80009518 <CONSOLE_STATUS+0x508>
    80006780:	00001097          	auipc	ra,0x1
    80006784:	92c080e7          	jalr	-1748(ra) # 800070ac <panic>

0000000080006788 <either_copyin>:
    80006788:	ff010113          	addi	sp,sp,-16
    8000678c:	00813023          	sd	s0,0(sp)
    80006790:	00113423          	sd	ra,8(sp)
    80006794:	01010413          	addi	s0,sp,16
    80006798:	02059463          	bnez	a1,800067c0 <either_copyin+0x38>
    8000679c:	00060593          	mv	a1,a2
    800067a0:	0006861b          	sext.w	a2,a3
    800067a4:	00002097          	auipc	ra,0x2
    800067a8:	c10080e7          	jalr	-1008(ra) # 800083b4 <__memmove>
    800067ac:	00813083          	ld	ra,8(sp)
    800067b0:	00013403          	ld	s0,0(sp)
    800067b4:	00000513          	li	a0,0
    800067b8:	01010113          	addi	sp,sp,16
    800067bc:	00008067          	ret
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	d8050513          	addi	a0,a0,-640 # 80009540 <CONSOLE_STATUS+0x530>
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	8e4080e7          	jalr	-1820(ra) # 800070ac <panic>

00000000800067d0 <trapinit>:
    800067d0:	ff010113          	addi	sp,sp,-16
    800067d4:	00813423          	sd	s0,8(sp)
    800067d8:	01010413          	addi	s0,sp,16
    800067dc:	00813403          	ld	s0,8(sp)
    800067e0:	00003597          	auipc	a1,0x3
    800067e4:	d8858593          	addi	a1,a1,-632 # 80009568 <CONSOLE_STATUS+0x558>
    800067e8:	00006517          	auipc	a0,0x6
    800067ec:	00850513          	addi	a0,a0,8 # 8000c7f0 <tickslock>
    800067f0:	01010113          	addi	sp,sp,16
    800067f4:	00001317          	auipc	t1,0x1
    800067f8:	5c430067          	jr	1476(t1) # 80007db8 <initlock>

00000000800067fc <trapinithart>:
    800067fc:	ff010113          	addi	sp,sp,-16
    80006800:	00813423          	sd	s0,8(sp)
    80006804:	01010413          	addi	s0,sp,16
    80006808:	00000797          	auipc	a5,0x0
    8000680c:	2f878793          	addi	a5,a5,760 # 80006b00 <kernelvec>
    80006810:	10579073          	csrw	stvec,a5
    80006814:	00813403          	ld	s0,8(sp)
    80006818:	01010113          	addi	sp,sp,16
    8000681c:	00008067          	ret

0000000080006820 <usertrap>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813423          	sd	s0,8(sp)
    80006828:	01010413          	addi	s0,sp,16
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret

0000000080006838 <usertrapret>:
    80006838:	ff010113          	addi	sp,sp,-16
    8000683c:	00813423          	sd	s0,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	00813403          	ld	s0,8(sp)
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret

0000000080006850 <kerneltrap>:
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00113c23          	sd	ra,24(sp)
    8000685c:	00913423          	sd	s1,8(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	142025f3          	csrr	a1,scause
    80006868:	100027f3          	csrr	a5,sstatus
    8000686c:	0027f793          	andi	a5,a5,2
    80006870:	10079c63          	bnez	a5,80006988 <kerneltrap+0x138>
    80006874:	142027f3          	csrr	a5,scause
    80006878:	0207ce63          	bltz	a5,800068b4 <kerneltrap+0x64>
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	d3450513          	addi	a0,a0,-716 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006884:	00001097          	auipc	ra,0x1
    80006888:	884080e7          	jalr	-1916(ra) # 80007108 <__printf>
    8000688c:	141025f3          	csrr	a1,sepc
    80006890:	14302673          	csrr	a2,stval
    80006894:	00003517          	auipc	a0,0x3
    80006898:	d2c50513          	addi	a0,a0,-724 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000689c:	00001097          	auipc	ra,0x1
    800068a0:	86c080e7          	jalr	-1940(ra) # 80007108 <__printf>
    800068a4:	00003517          	auipc	a0,0x3
    800068a8:	d3450513          	addi	a0,a0,-716 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	800080e7          	jalr	-2048(ra) # 800070ac <panic>
    800068b4:	0ff7f713          	andi	a4,a5,255
    800068b8:	00900693          	li	a3,9
    800068bc:	04d70063          	beq	a4,a3,800068fc <kerneltrap+0xac>
    800068c0:	fff00713          	li	a4,-1
    800068c4:	03f71713          	slli	a4,a4,0x3f
    800068c8:	00170713          	addi	a4,a4,1
    800068cc:	fae798e3          	bne	a5,a4,8000687c <kerneltrap+0x2c>
    800068d0:	00000097          	auipc	ra,0x0
    800068d4:	e00080e7          	jalr	-512(ra) # 800066d0 <cpuid>
    800068d8:	06050663          	beqz	a0,80006944 <kerneltrap+0xf4>
    800068dc:	144027f3          	csrr	a5,sip
    800068e0:	ffd7f793          	andi	a5,a5,-3
    800068e4:	14479073          	csrw	sip,a5
    800068e8:	01813083          	ld	ra,24(sp)
    800068ec:	01013403          	ld	s0,16(sp)
    800068f0:	00813483          	ld	s1,8(sp)
    800068f4:	02010113          	addi	sp,sp,32
    800068f8:	00008067          	ret
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	3c8080e7          	jalr	968(ra) # 80006cc4 <plic_claim>
    80006904:	00a00793          	li	a5,10
    80006908:	00050493          	mv	s1,a0
    8000690c:	06f50863          	beq	a0,a5,8000697c <kerneltrap+0x12c>
    80006910:	fc050ce3          	beqz	a0,800068e8 <kerneltrap+0x98>
    80006914:	00050593          	mv	a1,a0
    80006918:	00003517          	auipc	a0,0x3
    8000691c:	c7850513          	addi	a0,a0,-904 # 80009590 <CONSOLE_STATUS+0x580>
    80006920:	00000097          	auipc	ra,0x0
    80006924:	7e8080e7          	jalr	2024(ra) # 80007108 <__printf>
    80006928:	01013403          	ld	s0,16(sp)
    8000692c:	01813083          	ld	ra,24(sp)
    80006930:	00048513          	mv	a0,s1
    80006934:	00813483          	ld	s1,8(sp)
    80006938:	02010113          	addi	sp,sp,32
    8000693c:	00000317          	auipc	t1,0x0
    80006940:	3c030067          	jr	960(t1) # 80006cfc <plic_complete>
    80006944:	00006517          	auipc	a0,0x6
    80006948:	eac50513          	addi	a0,a0,-340 # 8000c7f0 <tickslock>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	490080e7          	jalr	1168(ra) # 80007ddc <acquire>
    80006954:	00005717          	auipc	a4,0x5
    80006958:	d3070713          	addi	a4,a4,-720 # 8000b684 <ticks>
    8000695c:	00072783          	lw	a5,0(a4)
    80006960:	00006517          	auipc	a0,0x6
    80006964:	e9050513          	addi	a0,a0,-368 # 8000c7f0 <tickslock>
    80006968:	0017879b          	addiw	a5,a5,1
    8000696c:	00f72023          	sw	a5,0(a4)
    80006970:	00001097          	auipc	ra,0x1
    80006974:	538080e7          	jalr	1336(ra) # 80007ea8 <release>
    80006978:	f65ff06f          	j	800068dc <kerneltrap+0x8c>
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	094080e7          	jalr	148(ra) # 80007a10 <uartintr>
    80006984:	fa5ff06f          	j	80006928 <kerneltrap+0xd8>
    80006988:	00003517          	auipc	a0,0x3
    8000698c:	be850513          	addi	a0,a0,-1048 # 80009570 <CONSOLE_STATUS+0x560>
    80006990:	00000097          	auipc	ra,0x0
    80006994:	71c080e7          	jalr	1820(ra) # 800070ac <panic>

0000000080006998 <clockintr>:
    80006998:	fe010113          	addi	sp,sp,-32
    8000699c:	00813823          	sd	s0,16(sp)
    800069a0:	00913423          	sd	s1,8(sp)
    800069a4:	00113c23          	sd	ra,24(sp)
    800069a8:	02010413          	addi	s0,sp,32
    800069ac:	00006497          	auipc	s1,0x6
    800069b0:	e4448493          	addi	s1,s1,-444 # 8000c7f0 <tickslock>
    800069b4:	00048513          	mv	a0,s1
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	424080e7          	jalr	1060(ra) # 80007ddc <acquire>
    800069c0:	00005717          	auipc	a4,0x5
    800069c4:	cc470713          	addi	a4,a4,-828 # 8000b684 <ticks>
    800069c8:	00072783          	lw	a5,0(a4)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	01813083          	ld	ra,24(sp)
    800069d4:	00048513          	mv	a0,s1
    800069d8:	0017879b          	addiw	a5,a5,1
    800069dc:	00813483          	ld	s1,8(sp)
    800069e0:	00f72023          	sw	a5,0(a4)
    800069e4:	02010113          	addi	sp,sp,32
    800069e8:	00001317          	auipc	t1,0x1
    800069ec:	4c030067          	jr	1216(t1) # 80007ea8 <release>

00000000800069f0 <devintr>:
    800069f0:	142027f3          	csrr	a5,scause
    800069f4:	00000513          	li	a0,0
    800069f8:	0007c463          	bltz	a5,80006a00 <devintr+0x10>
    800069fc:	00008067          	ret
    80006a00:	fe010113          	addi	sp,sp,-32
    80006a04:	00813823          	sd	s0,16(sp)
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	00913423          	sd	s1,8(sp)
    80006a10:	02010413          	addi	s0,sp,32
    80006a14:	0ff7f713          	andi	a4,a5,255
    80006a18:	00900693          	li	a3,9
    80006a1c:	04d70c63          	beq	a4,a3,80006a74 <devintr+0x84>
    80006a20:	fff00713          	li	a4,-1
    80006a24:	03f71713          	slli	a4,a4,0x3f
    80006a28:	00170713          	addi	a4,a4,1
    80006a2c:	00e78c63          	beq	a5,a4,80006a44 <devintr+0x54>
    80006a30:	01813083          	ld	ra,24(sp)
    80006a34:	01013403          	ld	s0,16(sp)
    80006a38:	00813483          	ld	s1,8(sp)
    80006a3c:	02010113          	addi	sp,sp,32
    80006a40:	00008067          	ret
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	c8c080e7          	jalr	-884(ra) # 800066d0 <cpuid>
    80006a4c:	06050663          	beqz	a0,80006ab8 <devintr+0xc8>
    80006a50:	144027f3          	csrr	a5,sip
    80006a54:	ffd7f793          	andi	a5,a5,-3
    80006a58:	14479073          	csrw	sip,a5
    80006a5c:	01813083          	ld	ra,24(sp)
    80006a60:	01013403          	ld	s0,16(sp)
    80006a64:	00813483          	ld	s1,8(sp)
    80006a68:	00200513          	li	a0,2
    80006a6c:	02010113          	addi	sp,sp,32
    80006a70:	00008067          	ret
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	250080e7          	jalr	592(ra) # 80006cc4 <plic_claim>
    80006a7c:	00a00793          	li	a5,10
    80006a80:	00050493          	mv	s1,a0
    80006a84:	06f50663          	beq	a0,a5,80006af0 <devintr+0x100>
    80006a88:	00100513          	li	a0,1
    80006a8c:	fa0482e3          	beqz	s1,80006a30 <devintr+0x40>
    80006a90:	00048593          	mv	a1,s1
    80006a94:	00003517          	auipc	a0,0x3
    80006a98:	afc50513          	addi	a0,a0,-1284 # 80009590 <CONSOLE_STATUS+0x580>
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	66c080e7          	jalr	1644(ra) # 80007108 <__printf>
    80006aa4:	00048513          	mv	a0,s1
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	254080e7          	jalr	596(ra) # 80006cfc <plic_complete>
    80006ab0:	00100513          	li	a0,1
    80006ab4:	f7dff06f          	j	80006a30 <devintr+0x40>
    80006ab8:	00006517          	auipc	a0,0x6
    80006abc:	d3850513          	addi	a0,a0,-712 # 8000c7f0 <tickslock>
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	31c080e7          	jalr	796(ra) # 80007ddc <acquire>
    80006ac8:	00005717          	auipc	a4,0x5
    80006acc:	bbc70713          	addi	a4,a4,-1092 # 8000b684 <ticks>
    80006ad0:	00072783          	lw	a5,0(a4)
    80006ad4:	00006517          	auipc	a0,0x6
    80006ad8:	d1c50513          	addi	a0,a0,-740 # 8000c7f0 <tickslock>
    80006adc:	0017879b          	addiw	a5,a5,1
    80006ae0:	00f72023          	sw	a5,0(a4)
    80006ae4:	00001097          	auipc	ra,0x1
    80006ae8:	3c4080e7          	jalr	964(ra) # 80007ea8 <release>
    80006aec:	f65ff06f          	j	80006a50 <devintr+0x60>
    80006af0:	00001097          	auipc	ra,0x1
    80006af4:	f20080e7          	jalr	-224(ra) # 80007a10 <uartintr>
    80006af8:	fadff06f          	j	80006aa4 <devintr+0xb4>
    80006afc:	0000                	unimp
	...

0000000080006b00 <kernelvec>:
    80006b00:	f0010113          	addi	sp,sp,-256
    80006b04:	00113023          	sd	ra,0(sp)
    80006b08:	00213423          	sd	sp,8(sp)
    80006b0c:	00313823          	sd	gp,16(sp)
    80006b10:	00413c23          	sd	tp,24(sp)
    80006b14:	02513023          	sd	t0,32(sp)
    80006b18:	02613423          	sd	t1,40(sp)
    80006b1c:	02713823          	sd	t2,48(sp)
    80006b20:	02813c23          	sd	s0,56(sp)
    80006b24:	04913023          	sd	s1,64(sp)
    80006b28:	04a13423          	sd	a0,72(sp)
    80006b2c:	04b13823          	sd	a1,80(sp)
    80006b30:	04c13c23          	sd	a2,88(sp)
    80006b34:	06d13023          	sd	a3,96(sp)
    80006b38:	06e13423          	sd	a4,104(sp)
    80006b3c:	06f13823          	sd	a5,112(sp)
    80006b40:	07013c23          	sd	a6,120(sp)
    80006b44:	09113023          	sd	a7,128(sp)
    80006b48:	09213423          	sd	s2,136(sp)
    80006b4c:	09313823          	sd	s3,144(sp)
    80006b50:	09413c23          	sd	s4,152(sp)
    80006b54:	0b513023          	sd	s5,160(sp)
    80006b58:	0b613423          	sd	s6,168(sp)
    80006b5c:	0b713823          	sd	s7,176(sp)
    80006b60:	0b813c23          	sd	s8,184(sp)
    80006b64:	0d913023          	sd	s9,192(sp)
    80006b68:	0da13423          	sd	s10,200(sp)
    80006b6c:	0db13823          	sd	s11,208(sp)
    80006b70:	0dc13c23          	sd	t3,216(sp)
    80006b74:	0fd13023          	sd	t4,224(sp)
    80006b78:	0fe13423          	sd	t5,232(sp)
    80006b7c:	0ff13823          	sd	t6,240(sp)
    80006b80:	cd1ff0ef          	jal	ra,80006850 <kerneltrap>
    80006b84:	00013083          	ld	ra,0(sp)
    80006b88:	00813103          	ld	sp,8(sp)
    80006b8c:	01013183          	ld	gp,16(sp)
    80006b90:	02013283          	ld	t0,32(sp)
    80006b94:	02813303          	ld	t1,40(sp)
    80006b98:	03013383          	ld	t2,48(sp)
    80006b9c:	03813403          	ld	s0,56(sp)
    80006ba0:	04013483          	ld	s1,64(sp)
    80006ba4:	04813503          	ld	a0,72(sp)
    80006ba8:	05013583          	ld	a1,80(sp)
    80006bac:	05813603          	ld	a2,88(sp)
    80006bb0:	06013683          	ld	a3,96(sp)
    80006bb4:	06813703          	ld	a4,104(sp)
    80006bb8:	07013783          	ld	a5,112(sp)
    80006bbc:	07813803          	ld	a6,120(sp)
    80006bc0:	08013883          	ld	a7,128(sp)
    80006bc4:	08813903          	ld	s2,136(sp)
    80006bc8:	09013983          	ld	s3,144(sp)
    80006bcc:	09813a03          	ld	s4,152(sp)
    80006bd0:	0a013a83          	ld	s5,160(sp)
    80006bd4:	0a813b03          	ld	s6,168(sp)
    80006bd8:	0b013b83          	ld	s7,176(sp)
    80006bdc:	0b813c03          	ld	s8,184(sp)
    80006be0:	0c013c83          	ld	s9,192(sp)
    80006be4:	0c813d03          	ld	s10,200(sp)
    80006be8:	0d013d83          	ld	s11,208(sp)
    80006bec:	0d813e03          	ld	t3,216(sp)
    80006bf0:	0e013e83          	ld	t4,224(sp)
    80006bf4:	0e813f03          	ld	t5,232(sp)
    80006bf8:	0f013f83          	ld	t6,240(sp)
    80006bfc:	10010113          	addi	sp,sp,256
    80006c00:	10200073          	sret
    80006c04:	00000013          	nop
    80006c08:	00000013          	nop
    80006c0c:	00000013          	nop

0000000080006c10 <timervec>:
    80006c10:	34051573          	csrrw	a0,mscratch,a0
    80006c14:	00b53023          	sd	a1,0(a0)
    80006c18:	00c53423          	sd	a2,8(a0)
    80006c1c:	00d53823          	sd	a3,16(a0)
    80006c20:	01853583          	ld	a1,24(a0)
    80006c24:	02053603          	ld	a2,32(a0)
    80006c28:	0005b683          	ld	a3,0(a1)
    80006c2c:	00c686b3          	add	a3,a3,a2
    80006c30:	00d5b023          	sd	a3,0(a1)
    80006c34:	00200593          	li	a1,2
    80006c38:	14459073          	csrw	sip,a1
    80006c3c:	01053683          	ld	a3,16(a0)
    80006c40:	00853603          	ld	a2,8(a0)
    80006c44:	00053583          	ld	a1,0(a0)
    80006c48:	34051573          	csrrw	a0,mscratch,a0
    80006c4c:	30200073          	mret

0000000080006c50 <plicinit>:
    80006c50:	ff010113          	addi	sp,sp,-16
    80006c54:	00813423          	sd	s0,8(sp)
    80006c58:	01010413          	addi	s0,sp,16
    80006c5c:	00813403          	ld	s0,8(sp)
    80006c60:	0c0007b7          	lui	a5,0xc000
    80006c64:	00100713          	li	a4,1
    80006c68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c6c:	00e7a223          	sw	a4,4(a5)
    80006c70:	01010113          	addi	sp,sp,16
    80006c74:	00008067          	ret

0000000080006c78 <plicinithart>:
    80006c78:	ff010113          	addi	sp,sp,-16
    80006c7c:	00813023          	sd	s0,0(sp)
    80006c80:	00113423          	sd	ra,8(sp)
    80006c84:	01010413          	addi	s0,sp,16
    80006c88:	00000097          	auipc	ra,0x0
    80006c8c:	a48080e7          	jalr	-1464(ra) # 800066d0 <cpuid>
    80006c90:	0085171b          	slliw	a4,a0,0x8
    80006c94:	0c0027b7          	lui	a5,0xc002
    80006c98:	00e787b3          	add	a5,a5,a4
    80006c9c:	40200713          	li	a4,1026
    80006ca0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ca4:	00813083          	ld	ra,8(sp)
    80006ca8:	00013403          	ld	s0,0(sp)
    80006cac:	00d5151b          	slliw	a0,a0,0xd
    80006cb0:	0c2017b7          	lui	a5,0xc201
    80006cb4:	00a78533          	add	a0,a5,a0
    80006cb8:	00052023          	sw	zero,0(a0)
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <plic_claim>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813023          	sd	s0,0(sp)
    80006ccc:	00113423          	sd	ra,8(sp)
    80006cd0:	01010413          	addi	s0,sp,16
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	9fc080e7          	jalr	-1540(ra) # 800066d0 <cpuid>
    80006cdc:	00813083          	ld	ra,8(sp)
    80006ce0:	00013403          	ld	s0,0(sp)
    80006ce4:	00d5151b          	slliw	a0,a0,0xd
    80006ce8:	0c2017b7          	lui	a5,0xc201
    80006cec:	00a78533          	add	a0,a5,a0
    80006cf0:	00452503          	lw	a0,4(a0)
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00008067          	ret

0000000080006cfc <plic_complete>:
    80006cfc:	fe010113          	addi	sp,sp,-32
    80006d00:	00813823          	sd	s0,16(sp)
    80006d04:	00913423          	sd	s1,8(sp)
    80006d08:	00113c23          	sd	ra,24(sp)
    80006d0c:	02010413          	addi	s0,sp,32
    80006d10:	00050493          	mv	s1,a0
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	9bc080e7          	jalr	-1604(ra) # 800066d0 <cpuid>
    80006d1c:	01813083          	ld	ra,24(sp)
    80006d20:	01013403          	ld	s0,16(sp)
    80006d24:	00d5179b          	slliw	a5,a0,0xd
    80006d28:	0c201737          	lui	a4,0xc201
    80006d2c:	00f707b3          	add	a5,a4,a5
    80006d30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d34:	00813483          	ld	s1,8(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret

0000000080006d40 <consolewrite>:
    80006d40:	fb010113          	addi	sp,sp,-80
    80006d44:	04813023          	sd	s0,64(sp)
    80006d48:	04113423          	sd	ra,72(sp)
    80006d4c:	02913c23          	sd	s1,56(sp)
    80006d50:	03213823          	sd	s2,48(sp)
    80006d54:	03313423          	sd	s3,40(sp)
    80006d58:	03413023          	sd	s4,32(sp)
    80006d5c:	01513c23          	sd	s5,24(sp)
    80006d60:	05010413          	addi	s0,sp,80
    80006d64:	06c05c63          	blez	a2,80006ddc <consolewrite+0x9c>
    80006d68:	00060993          	mv	s3,a2
    80006d6c:	00050a13          	mv	s4,a0
    80006d70:	00058493          	mv	s1,a1
    80006d74:	00000913          	li	s2,0
    80006d78:	fff00a93          	li	s5,-1
    80006d7c:	01c0006f          	j	80006d98 <consolewrite+0x58>
    80006d80:	fbf44503          	lbu	a0,-65(s0)
    80006d84:	0019091b          	addiw	s2,s2,1
    80006d88:	00148493          	addi	s1,s1,1
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	a9c080e7          	jalr	-1380(ra) # 80007828 <uartputc>
    80006d94:	03298063          	beq	s3,s2,80006db4 <consolewrite+0x74>
    80006d98:	00048613          	mv	a2,s1
    80006d9c:	00100693          	li	a3,1
    80006da0:	000a0593          	mv	a1,s4
    80006da4:	fbf40513          	addi	a0,s0,-65
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	9e0080e7          	jalr	-1568(ra) # 80006788 <either_copyin>
    80006db0:	fd5518e3          	bne	a0,s5,80006d80 <consolewrite+0x40>
    80006db4:	04813083          	ld	ra,72(sp)
    80006db8:	04013403          	ld	s0,64(sp)
    80006dbc:	03813483          	ld	s1,56(sp)
    80006dc0:	02813983          	ld	s3,40(sp)
    80006dc4:	02013a03          	ld	s4,32(sp)
    80006dc8:	01813a83          	ld	s5,24(sp)
    80006dcc:	00090513          	mv	a0,s2
    80006dd0:	03013903          	ld	s2,48(sp)
    80006dd4:	05010113          	addi	sp,sp,80
    80006dd8:	00008067          	ret
    80006ddc:	00000913          	li	s2,0
    80006de0:	fd5ff06f          	j	80006db4 <consolewrite+0x74>

0000000080006de4 <consoleread>:
    80006de4:	f9010113          	addi	sp,sp,-112
    80006de8:	06813023          	sd	s0,96(sp)
    80006dec:	04913c23          	sd	s1,88(sp)
    80006df0:	05213823          	sd	s2,80(sp)
    80006df4:	05313423          	sd	s3,72(sp)
    80006df8:	05413023          	sd	s4,64(sp)
    80006dfc:	03513c23          	sd	s5,56(sp)
    80006e00:	03613823          	sd	s6,48(sp)
    80006e04:	03713423          	sd	s7,40(sp)
    80006e08:	03813023          	sd	s8,32(sp)
    80006e0c:	06113423          	sd	ra,104(sp)
    80006e10:	01913c23          	sd	s9,24(sp)
    80006e14:	07010413          	addi	s0,sp,112
    80006e18:	00060b93          	mv	s7,a2
    80006e1c:	00050913          	mv	s2,a0
    80006e20:	00058c13          	mv	s8,a1
    80006e24:	00060b1b          	sext.w	s6,a2
    80006e28:	00006497          	auipc	s1,0x6
    80006e2c:	9f048493          	addi	s1,s1,-1552 # 8000c818 <cons>
    80006e30:	00400993          	li	s3,4
    80006e34:	fff00a13          	li	s4,-1
    80006e38:	00a00a93          	li	s5,10
    80006e3c:	05705e63          	blez	s7,80006e98 <consoleread+0xb4>
    80006e40:	09c4a703          	lw	a4,156(s1)
    80006e44:	0984a783          	lw	a5,152(s1)
    80006e48:	0007071b          	sext.w	a4,a4
    80006e4c:	08e78463          	beq	a5,a4,80006ed4 <consoleread+0xf0>
    80006e50:	07f7f713          	andi	a4,a5,127
    80006e54:	00e48733          	add	a4,s1,a4
    80006e58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e5c:	0017869b          	addiw	a3,a5,1
    80006e60:	08d4ac23          	sw	a3,152(s1)
    80006e64:	00070c9b          	sext.w	s9,a4
    80006e68:	0b370663          	beq	a4,s3,80006f14 <consoleread+0x130>
    80006e6c:	00100693          	li	a3,1
    80006e70:	f9f40613          	addi	a2,s0,-97
    80006e74:	000c0593          	mv	a1,s8
    80006e78:	00090513          	mv	a0,s2
    80006e7c:	f8e40fa3          	sb	a4,-97(s0)
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	8bc080e7          	jalr	-1860(ra) # 8000673c <either_copyout>
    80006e88:	01450863          	beq	a0,s4,80006e98 <consoleread+0xb4>
    80006e8c:	001c0c13          	addi	s8,s8,1
    80006e90:	fffb8b9b          	addiw	s7,s7,-1
    80006e94:	fb5c94e3          	bne	s9,s5,80006e3c <consoleread+0x58>
    80006e98:	000b851b          	sext.w	a0,s7
    80006e9c:	06813083          	ld	ra,104(sp)
    80006ea0:	06013403          	ld	s0,96(sp)
    80006ea4:	05813483          	ld	s1,88(sp)
    80006ea8:	05013903          	ld	s2,80(sp)
    80006eac:	04813983          	ld	s3,72(sp)
    80006eb0:	04013a03          	ld	s4,64(sp)
    80006eb4:	03813a83          	ld	s5,56(sp)
    80006eb8:	02813b83          	ld	s7,40(sp)
    80006ebc:	02013c03          	ld	s8,32(sp)
    80006ec0:	01813c83          	ld	s9,24(sp)
    80006ec4:	40ab053b          	subw	a0,s6,a0
    80006ec8:	03013b03          	ld	s6,48(sp)
    80006ecc:	07010113          	addi	sp,sp,112
    80006ed0:	00008067          	ret
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	1d8080e7          	jalr	472(ra) # 800080ac <push_on>
    80006edc:	0984a703          	lw	a4,152(s1)
    80006ee0:	09c4a783          	lw	a5,156(s1)
    80006ee4:	0007879b          	sext.w	a5,a5
    80006ee8:	fef70ce3          	beq	a4,a5,80006ee0 <consoleread+0xfc>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	234080e7          	jalr	564(ra) # 80008120 <pop_on>
    80006ef4:	0984a783          	lw	a5,152(s1)
    80006ef8:	07f7f713          	andi	a4,a5,127
    80006efc:	00e48733          	add	a4,s1,a4
    80006f00:	01874703          	lbu	a4,24(a4)
    80006f04:	0017869b          	addiw	a3,a5,1
    80006f08:	08d4ac23          	sw	a3,152(s1)
    80006f0c:	00070c9b          	sext.w	s9,a4
    80006f10:	f5371ee3          	bne	a4,s3,80006e6c <consoleread+0x88>
    80006f14:	000b851b          	sext.w	a0,s7
    80006f18:	f96bf2e3          	bgeu	s7,s6,80006e9c <consoleread+0xb8>
    80006f1c:	08f4ac23          	sw	a5,152(s1)
    80006f20:	f7dff06f          	j	80006e9c <consoleread+0xb8>

0000000080006f24 <consputc>:
    80006f24:	10000793          	li	a5,256
    80006f28:	00f50663          	beq	a0,a5,80006f34 <consputc+0x10>
    80006f2c:	00001317          	auipc	t1,0x1
    80006f30:	9f430067          	jr	-1548(t1) # 80007920 <uartputc_sync>
    80006f34:	ff010113          	addi	sp,sp,-16
    80006f38:	00113423          	sd	ra,8(sp)
    80006f3c:	00813023          	sd	s0,0(sp)
    80006f40:	01010413          	addi	s0,sp,16
    80006f44:	00800513          	li	a0,8
    80006f48:	00001097          	auipc	ra,0x1
    80006f4c:	9d8080e7          	jalr	-1576(ra) # 80007920 <uartputc_sync>
    80006f50:	02000513          	li	a0,32
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	9cc080e7          	jalr	-1588(ra) # 80007920 <uartputc_sync>
    80006f5c:	00013403          	ld	s0,0(sp)
    80006f60:	00813083          	ld	ra,8(sp)
    80006f64:	00800513          	li	a0,8
    80006f68:	01010113          	addi	sp,sp,16
    80006f6c:	00001317          	auipc	t1,0x1
    80006f70:	9b430067          	jr	-1612(t1) # 80007920 <uartputc_sync>

0000000080006f74 <consoleintr>:
    80006f74:	fe010113          	addi	sp,sp,-32
    80006f78:	00813823          	sd	s0,16(sp)
    80006f7c:	00913423          	sd	s1,8(sp)
    80006f80:	01213023          	sd	s2,0(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	02010413          	addi	s0,sp,32
    80006f8c:	00006917          	auipc	s2,0x6
    80006f90:	88c90913          	addi	s2,s2,-1908 # 8000c818 <cons>
    80006f94:	00050493          	mv	s1,a0
    80006f98:	00090513          	mv	a0,s2
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	e40080e7          	jalr	-448(ra) # 80007ddc <acquire>
    80006fa4:	02048c63          	beqz	s1,80006fdc <consoleintr+0x68>
    80006fa8:	0a092783          	lw	a5,160(s2)
    80006fac:	09892703          	lw	a4,152(s2)
    80006fb0:	07f00693          	li	a3,127
    80006fb4:	40e7873b          	subw	a4,a5,a4
    80006fb8:	02e6e263          	bltu	a3,a4,80006fdc <consoleintr+0x68>
    80006fbc:	00d00713          	li	a4,13
    80006fc0:	04e48063          	beq	s1,a4,80007000 <consoleintr+0x8c>
    80006fc4:	07f7f713          	andi	a4,a5,127
    80006fc8:	00e90733          	add	a4,s2,a4
    80006fcc:	0017879b          	addiw	a5,a5,1
    80006fd0:	0af92023          	sw	a5,160(s2)
    80006fd4:	00970c23          	sb	s1,24(a4)
    80006fd8:	08f92e23          	sw	a5,156(s2)
    80006fdc:	01013403          	ld	s0,16(sp)
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	00813483          	ld	s1,8(sp)
    80006fe8:	00013903          	ld	s2,0(sp)
    80006fec:	00006517          	auipc	a0,0x6
    80006ff0:	82c50513          	addi	a0,a0,-2004 # 8000c818 <cons>
    80006ff4:	02010113          	addi	sp,sp,32
    80006ff8:	00001317          	auipc	t1,0x1
    80006ffc:	eb030067          	jr	-336(t1) # 80007ea8 <release>
    80007000:	00a00493          	li	s1,10
    80007004:	fc1ff06f          	j	80006fc4 <consoleintr+0x50>

0000000080007008 <consoleinit>:
    80007008:	fe010113          	addi	sp,sp,-32
    8000700c:	00113c23          	sd	ra,24(sp)
    80007010:	00813823          	sd	s0,16(sp)
    80007014:	00913423          	sd	s1,8(sp)
    80007018:	02010413          	addi	s0,sp,32
    8000701c:	00005497          	auipc	s1,0x5
    80007020:	7fc48493          	addi	s1,s1,2044 # 8000c818 <cons>
    80007024:	00048513          	mv	a0,s1
    80007028:	00002597          	auipc	a1,0x2
    8000702c:	5c058593          	addi	a1,a1,1472 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007030:	00001097          	auipc	ra,0x1
    80007034:	d88080e7          	jalr	-632(ra) # 80007db8 <initlock>
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	7ac080e7          	jalr	1964(ra) # 800077e4 <uartinit>
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	00000797          	auipc	a5,0x0
    8000704c:	d9c78793          	addi	a5,a5,-612 # 80006de4 <consoleread>
    80007050:	0af4bc23          	sd	a5,184(s1)
    80007054:	00000797          	auipc	a5,0x0
    80007058:	cec78793          	addi	a5,a5,-788 # 80006d40 <consolewrite>
    8000705c:	0cf4b023          	sd	a5,192(s1)
    80007060:	00813483          	ld	s1,8(sp)
    80007064:	02010113          	addi	sp,sp,32
    80007068:	00008067          	ret

000000008000706c <console_read>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	00006317          	auipc	t1,0x6
    80007080:	85433303          	ld	t1,-1964(t1) # 8000c8d0 <devsw+0x10>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <console_write>:
    8000708c:	ff010113          	addi	sp,sp,-16
    80007090:	00813423          	sd	s0,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	00813403          	ld	s0,8(sp)
    8000709c:	00006317          	auipc	t1,0x6
    800070a0:	83c33303          	ld	t1,-1988(t1) # 8000c8d8 <devsw+0x18>
    800070a4:	01010113          	addi	sp,sp,16
    800070a8:	00030067          	jr	t1

00000000800070ac <panic>:
    800070ac:	fe010113          	addi	sp,sp,-32
    800070b0:	00113c23          	sd	ra,24(sp)
    800070b4:	00813823          	sd	s0,16(sp)
    800070b8:	00913423          	sd	s1,8(sp)
    800070bc:	02010413          	addi	s0,sp,32
    800070c0:	00050493          	mv	s1,a0
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	52c50513          	addi	a0,a0,1324 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800070cc:	00006797          	auipc	a5,0x6
    800070d0:	8a07a623          	sw	zero,-1876(a5) # 8000c978 <pr+0x18>
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	034080e7          	jalr	52(ra) # 80007108 <__printf>
    800070dc:	00048513          	mv	a0,s1
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	028080e7          	jalr	40(ra) # 80007108 <__printf>
    800070e8:	00002517          	auipc	a0,0x2
    800070ec:	29050513          	addi	a0,a0,656 # 80009378 <CONSOLE_STATUS+0x368>
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	018080e7          	jalr	24(ra) # 80007108 <__printf>
    800070f8:	00100793          	li	a5,1
    800070fc:	00004717          	auipc	a4,0x4
    80007100:	58f72623          	sw	a5,1420(a4) # 8000b688 <panicked>
    80007104:	0000006f          	j	80007104 <panic+0x58>

0000000080007108 <__printf>:
    80007108:	f3010113          	addi	sp,sp,-208
    8000710c:	08813023          	sd	s0,128(sp)
    80007110:	07313423          	sd	s3,104(sp)
    80007114:	09010413          	addi	s0,sp,144
    80007118:	05813023          	sd	s8,64(sp)
    8000711c:	08113423          	sd	ra,136(sp)
    80007120:	06913c23          	sd	s1,120(sp)
    80007124:	07213823          	sd	s2,112(sp)
    80007128:	07413023          	sd	s4,96(sp)
    8000712c:	05513c23          	sd	s5,88(sp)
    80007130:	05613823          	sd	s6,80(sp)
    80007134:	05713423          	sd	s7,72(sp)
    80007138:	03913c23          	sd	s9,56(sp)
    8000713c:	03a13823          	sd	s10,48(sp)
    80007140:	03b13423          	sd	s11,40(sp)
    80007144:	00006317          	auipc	t1,0x6
    80007148:	81c30313          	addi	t1,t1,-2020 # 8000c960 <pr>
    8000714c:	01832c03          	lw	s8,24(t1)
    80007150:	00b43423          	sd	a1,8(s0)
    80007154:	00c43823          	sd	a2,16(s0)
    80007158:	00d43c23          	sd	a3,24(s0)
    8000715c:	02e43023          	sd	a4,32(s0)
    80007160:	02f43423          	sd	a5,40(s0)
    80007164:	03043823          	sd	a6,48(s0)
    80007168:	03143c23          	sd	a7,56(s0)
    8000716c:	00050993          	mv	s3,a0
    80007170:	4a0c1663          	bnez	s8,8000761c <__printf+0x514>
    80007174:	60098c63          	beqz	s3,8000778c <__printf+0x684>
    80007178:	0009c503          	lbu	a0,0(s3)
    8000717c:	00840793          	addi	a5,s0,8
    80007180:	f6f43c23          	sd	a5,-136(s0)
    80007184:	00000493          	li	s1,0
    80007188:	22050063          	beqz	a0,800073a8 <__printf+0x2a0>
    8000718c:	00002a37          	lui	s4,0x2
    80007190:	00018ab7          	lui	s5,0x18
    80007194:	000f4b37          	lui	s6,0xf4
    80007198:	00989bb7          	lui	s7,0x989
    8000719c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071ac:	00148c9b          	addiw	s9,s1,1
    800071b0:	02500793          	li	a5,37
    800071b4:	01998933          	add	s2,s3,s9
    800071b8:	38f51263          	bne	a0,a5,8000753c <__printf+0x434>
    800071bc:	00094783          	lbu	a5,0(s2)
    800071c0:	00078c9b          	sext.w	s9,a5
    800071c4:	1e078263          	beqz	a5,800073a8 <__printf+0x2a0>
    800071c8:	0024849b          	addiw	s1,s1,2
    800071cc:	07000713          	li	a4,112
    800071d0:	00998933          	add	s2,s3,s1
    800071d4:	38e78a63          	beq	a5,a4,80007568 <__printf+0x460>
    800071d8:	20f76863          	bltu	a4,a5,800073e8 <__printf+0x2e0>
    800071dc:	42a78863          	beq	a5,a0,8000760c <__printf+0x504>
    800071e0:	06400713          	li	a4,100
    800071e4:	40e79663          	bne	a5,a4,800075f0 <__printf+0x4e8>
    800071e8:	f7843783          	ld	a5,-136(s0)
    800071ec:	0007a603          	lw	a2,0(a5)
    800071f0:	00878793          	addi	a5,a5,8
    800071f4:	f6f43c23          	sd	a5,-136(s0)
    800071f8:	42064a63          	bltz	a2,8000762c <__printf+0x524>
    800071fc:	00a00713          	li	a4,10
    80007200:	02e677bb          	remuw	a5,a2,a4
    80007204:	00002d97          	auipc	s11,0x2
    80007208:	414d8d93          	addi	s11,s11,1044 # 80009618 <digits>
    8000720c:	00900593          	li	a1,9
    80007210:	0006051b          	sext.w	a0,a2
    80007214:	00000c93          	li	s9,0
    80007218:	02079793          	slli	a5,a5,0x20
    8000721c:	0207d793          	srli	a5,a5,0x20
    80007220:	00fd87b3          	add	a5,s11,a5
    80007224:	0007c783          	lbu	a5,0(a5)
    80007228:	02e656bb          	divuw	a3,a2,a4
    8000722c:	f8f40023          	sb	a5,-128(s0)
    80007230:	14c5d863          	bge	a1,a2,80007380 <__printf+0x278>
    80007234:	06300593          	li	a1,99
    80007238:	00100c93          	li	s9,1
    8000723c:	02e6f7bb          	remuw	a5,a3,a4
    80007240:	02079793          	slli	a5,a5,0x20
    80007244:	0207d793          	srli	a5,a5,0x20
    80007248:	00fd87b3          	add	a5,s11,a5
    8000724c:	0007c783          	lbu	a5,0(a5)
    80007250:	02e6d73b          	divuw	a4,a3,a4
    80007254:	f8f400a3          	sb	a5,-127(s0)
    80007258:	12a5f463          	bgeu	a1,a0,80007380 <__printf+0x278>
    8000725c:	00a00693          	li	a3,10
    80007260:	00900593          	li	a1,9
    80007264:	02d777bb          	remuw	a5,a4,a3
    80007268:	02079793          	slli	a5,a5,0x20
    8000726c:	0207d793          	srli	a5,a5,0x20
    80007270:	00fd87b3          	add	a5,s11,a5
    80007274:	0007c503          	lbu	a0,0(a5)
    80007278:	02d757bb          	divuw	a5,a4,a3
    8000727c:	f8a40123          	sb	a0,-126(s0)
    80007280:	48e5f263          	bgeu	a1,a4,80007704 <__printf+0x5fc>
    80007284:	06300513          	li	a0,99
    80007288:	02d7f5bb          	remuw	a1,a5,a3
    8000728c:	02059593          	slli	a1,a1,0x20
    80007290:	0205d593          	srli	a1,a1,0x20
    80007294:	00bd85b3          	add	a1,s11,a1
    80007298:	0005c583          	lbu	a1,0(a1)
    8000729c:	02d7d7bb          	divuw	a5,a5,a3
    800072a0:	f8b401a3          	sb	a1,-125(s0)
    800072a4:	48e57263          	bgeu	a0,a4,80007728 <__printf+0x620>
    800072a8:	3e700513          	li	a0,999
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b40223          	sb	a1,-124(s0)
    800072c8:	46e57663          	bgeu	a0,a4,80007734 <__printf+0x62c>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b402a3          	sb	a1,-123(s0)
    800072e8:	46ea7863          	bgeu	s4,a4,80007758 <__printf+0x650>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b40323          	sb	a1,-122(s0)
    80007308:	3eeaf863          	bgeu	s5,a4,800076f8 <__printf+0x5f0>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b403a3          	sb	a1,-121(s0)
    80007328:	42eb7e63          	bgeu	s6,a4,80007764 <__printf+0x65c>
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b40423          	sb	a1,-120(s0)
    80007348:	42ebfc63          	bgeu	s7,a4,80007780 <__printf+0x678>
    8000734c:	02079793          	slli	a5,a5,0x20
    80007350:	0207d793          	srli	a5,a5,0x20
    80007354:	00fd8db3          	add	s11,s11,a5
    80007358:	000dc703          	lbu	a4,0(s11)
    8000735c:	00a00793          	li	a5,10
    80007360:	00900c93          	li	s9,9
    80007364:	f8e404a3          	sb	a4,-119(s0)
    80007368:	00065c63          	bgez	a2,80007380 <__printf+0x278>
    8000736c:	f9040713          	addi	a4,s0,-112
    80007370:	00f70733          	add	a4,a4,a5
    80007374:	02d00693          	li	a3,45
    80007378:	fed70823          	sb	a3,-16(a4)
    8000737c:	00078c93          	mv	s9,a5
    80007380:	f8040793          	addi	a5,s0,-128
    80007384:	01978cb3          	add	s9,a5,s9
    80007388:	f7f40d13          	addi	s10,s0,-129
    8000738c:	000cc503          	lbu	a0,0(s9)
    80007390:	fffc8c93          	addi	s9,s9,-1
    80007394:	00000097          	auipc	ra,0x0
    80007398:	b90080e7          	jalr	-1136(ra) # 80006f24 <consputc>
    8000739c:	ffac98e3          	bne	s9,s10,8000738c <__printf+0x284>
    800073a0:	00094503          	lbu	a0,0(s2)
    800073a4:	e00514e3          	bnez	a0,800071ac <__printf+0xa4>
    800073a8:	1a0c1663          	bnez	s8,80007554 <__printf+0x44c>
    800073ac:	08813083          	ld	ra,136(sp)
    800073b0:	08013403          	ld	s0,128(sp)
    800073b4:	07813483          	ld	s1,120(sp)
    800073b8:	07013903          	ld	s2,112(sp)
    800073bc:	06813983          	ld	s3,104(sp)
    800073c0:	06013a03          	ld	s4,96(sp)
    800073c4:	05813a83          	ld	s5,88(sp)
    800073c8:	05013b03          	ld	s6,80(sp)
    800073cc:	04813b83          	ld	s7,72(sp)
    800073d0:	04013c03          	ld	s8,64(sp)
    800073d4:	03813c83          	ld	s9,56(sp)
    800073d8:	03013d03          	ld	s10,48(sp)
    800073dc:	02813d83          	ld	s11,40(sp)
    800073e0:	0d010113          	addi	sp,sp,208
    800073e4:	00008067          	ret
    800073e8:	07300713          	li	a4,115
    800073ec:	1ce78a63          	beq	a5,a4,800075c0 <__printf+0x4b8>
    800073f0:	07800713          	li	a4,120
    800073f4:	1ee79e63          	bne	a5,a4,800075f0 <__printf+0x4e8>
    800073f8:	f7843783          	ld	a5,-136(s0)
    800073fc:	0007a703          	lw	a4,0(a5)
    80007400:	00878793          	addi	a5,a5,8
    80007404:	f6f43c23          	sd	a5,-136(s0)
    80007408:	28074263          	bltz	a4,8000768c <__printf+0x584>
    8000740c:	00002d97          	auipc	s11,0x2
    80007410:	20cd8d93          	addi	s11,s11,524 # 80009618 <digits>
    80007414:	00f77793          	andi	a5,a4,15
    80007418:	00fd87b3          	add	a5,s11,a5
    8000741c:	0007c683          	lbu	a3,0(a5)
    80007420:	00f00613          	li	a2,15
    80007424:	0007079b          	sext.w	a5,a4
    80007428:	f8d40023          	sb	a3,-128(s0)
    8000742c:	0047559b          	srliw	a1,a4,0x4
    80007430:	0047569b          	srliw	a3,a4,0x4
    80007434:	00000c93          	li	s9,0
    80007438:	0ee65063          	bge	a2,a4,80007518 <__printf+0x410>
    8000743c:	00f6f693          	andi	a3,a3,15
    80007440:	00dd86b3          	add	a3,s11,a3
    80007444:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007448:	0087d79b          	srliw	a5,a5,0x8
    8000744c:	00100c93          	li	s9,1
    80007450:	f8d400a3          	sb	a3,-127(s0)
    80007454:	0cb67263          	bgeu	a2,a1,80007518 <__printf+0x410>
    80007458:	00f7f693          	andi	a3,a5,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c583          	lbu	a1,0(a3)
    80007464:	00f00613          	li	a2,15
    80007468:	0047d69b          	srliw	a3,a5,0x4
    8000746c:	f8b40123          	sb	a1,-126(s0)
    80007470:	0047d593          	srli	a1,a5,0x4
    80007474:	28f67e63          	bgeu	a2,a5,80007710 <__printf+0x608>
    80007478:	00f6f693          	andi	a3,a3,15
    8000747c:	00dd86b3          	add	a3,s11,a3
    80007480:	0006c503          	lbu	a0,0(a3)
    80007484:	0087d813          	srli	a6,a5,0x8
    80007488:	0087d69b          	srliw	a3,a5,0x8
    8000748c:	f8a401a3          	sb	a0,-125(s0)
    80007490:	28b67663          	bgeu	a2,a1,8000771c <__printf+0x614>
    80007494:	00f6f693          	andi	a3,a3,15
    80007498:	00dd86b3          	add	a3,s11,a3
    8000749c:	0006c583          	lbu	a1,0(a3)
    800074a0:	00c7d513          	srli	a0,a5,0xc
    800074a4:	00c7d69b          	srliw	a3,a5,0xc
    800074a8:	f8b40223          	sb	a1,-124(s0)
    800074ac:	29067a63          	bgeu	a2,a6,80007740 <__printf+0x638>
    800074b0:	00f6f693          	andi	a3,a3,15
    800074b4:	00dd86b3          	add	a3,s11,a3
    800074b8:	0006c583          	lbu	a1,0(a3)
    800074bc:	0107d813          	srli	a6,a5,0x10
    800074c0:	0107d69b          	srliw	a3,a5,0x10
    800074c4:	f8b402a3          	sb	a1,-123(s0)
    800074c8:	28a67263          	bgeu	a2,a0,8000774c <__printf+0x644>
    800074cc:	00f6f693          	andi	a3,a3,15
    800074d0:	00dd86b3          	add	a3,s11,a3
    800074d4:	0006c683          	lbu	a3,0(a3)
    800074d8:	0147d79b          	srliw	a5,a5,0x14
    800074dc:	f8d40323          	sb	a3,-122(s0)
    800074e0:	21067663          	bgeu	a2,a6,800076ec <__printf+0x5e4>
    800074e4:	02079793          	slli	a5,a5,0x20
    800074e8:	0207d793          	srli	a5,a5,0x20
    800074ec:	00fd8db3          	add	s11,s11,a5
    800074f0:	000dc683          	lbu	a3,0(s11)
    800074f4:	00800793          	li	a5,8
    800074f8:	00700c93          	li	s9,7
    800074fc:	f8d403a3          	sb	a3,-121(s0)
    80007500:	00075c63          	bgez	a4,80007518 <__printf+0x410>
    80007504:	f9040713          	addi	a4,s0,-112
    80007508:	00f70733          	add	a4,a4,a5
    8000750c:	02d00693          	li	a3,45
    80007510:	fed70823          	sb	a3,-16(a4)
    80007514:	00078c93          	mv	s9,a5
    80007518:	f8040793          	addi	a5,s0,-128
    8000751c:	01978cb3          	add	s9,a5,s9
    80007520:	f7f40d13          	addi	s10,s0,-129
    80007524:	000cc503          	lbu	a0,0(s9)
    80007528:	fffc8c93          	addi	s9,s9,-1
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	9f8080e7          	jalr	-1544(ra) # 80006f24 <consputc>
    80007534:	ff9d18e3          	bne	s10,s9,80007524 <__printf+0x41c>
    80007538:	0100006f          	j	80007548 <__printf+0x440>
    8000753c:	00000097          	auipc	ra,0x0
    80007540:	9e8080e7          	jalr	-1560(ra) # 80006f24 <consputc>
    80007544:	000c8493          	mv	s1,s9
    80007548:	00094503          	lbu	a0,0(s2)
    8000754c:	c60510e3          	bnez	a0,800071ac <__printf+0xa4>
    80007550:	e40c0ee3          	beqz	s8,800073ac <__printf+0x2a4>
    80007554:	00005517          	auipc	a0,0x5
    80007558:	40c50513          	addi	a0,a0,1036 # 8000c960 <pr>
    8000755c:	00001097          	auipc	ra,0x1
    80007560:	94c080e7          	jalr	-1716(ra) # 80007ea8 <release>
    80007564:	e49ff06f          	j	800073ac <__printf+0x2a4>
    80007568:	f7843783          	ld	a5,-136(s0)
    8000756c:	03000513          	li	a0,48
    80007570:	01000d13          	li	s10,16
    80007574:	00878713          	addi	a4,a5,8
    80007578:	0007bc83          	ld	s9,0(a5)
    8000757c:	f6e43c23          	sd	a4,-136(s0)
    80007580:	00000097          	auipc	ra,0x0
    80007584:	9a4080e7          	jalr	-1628(ra) # 80006f24 <consputc>
    80007588:	07800513          	li	a0,120
    8000758c:	00000097          	auipc	ra,0x0
    80007590:	998080e7          	jalr	-1640(ra) # 80006f24 <consputc>
    80007594:	00002d97          	auipc	s11,0x2
    80007598:	084d8d93          	addi	s11,s11,132 # 80009618 <digits>
    8000759c:	03ccd793          	srli	a5,s9,0x3c
    800075a0:	00fd87b3          	add	a5,s11,a5
    800075a4:	0007c503          	lbu	a0,0(a5)
    800075a8:	fffd0d1b          	addiw	s10,s10,-1
    800075ac:	004c9c93          	slli	s9,s9,0x4
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	974080e7          	jalr	-1676(ra) # 80006f24 <consputc>
    800075b8:	fe0d12e3          	bnez	s10,8000759c <__printf+0x494>
    800075bc:	f8dff06f          	j	80007548 <__printf+0x440>
    800075c0:	f7843783          	ld	a5,-136(s0)
    800075c4:	0007bc83          	ld	s9,0(a5)
    800075c8:	00878793          	addi	a5,a5,8
    800075cc:	f6f43c23          	sd	a5,-136(s0)
    800075d0:	000c9a63          	bnez	s9,800075e4 <__printf+0x4dc>
    800075d4:	1080006f          	j	800076dc <__printf+0x5d4>
    800075d8:	001c8c93          	addi	s9,s9,1
    800075dc:	00000097          	auipc	ra,0x0
    800075e0:	948080e7          	jalr	-1720(ra) # 80006f24 <consputc>
    800075e4:	000cc503          	lbu	a0,0(s9)
    800075e8:	fe0518e3          	bnez	a0,800075d8 <__printf+0x4d0>
    800075ec:	f5dff06f          	j	80007548 <__printf+0x440>
    800075f0:	02500513          	li	a0,37
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	930080e7          	jalr	-1744(ra) # 80006f24 <consputc>
    800075fc:	000c8513          	mv	a0,s9
    80007600:	00000097          	auipc	ra,0x0
    80007604:	924080e7          	jalr	-1756(ra) # 80006f24 <consputc>
    80007608:	f41ff06f          	j	80007548 <__printf+0x440>
    8000760c:	02500513          	li	a0,37
    80007610:	00000097          	auipc	ra,0x0
    80007614:	914080e7          	jalr	-1772(ra) # 80006f24 <consputc>
    80007618:	f31ff06f          	j	80007548 <__printf+0x440>
    8000761c:	00030513          	mv	a0,t1
    80007620:	00000097          	auipc	ra,0x0
    80007624:	7bc080e7          	jalr	1980(ra) # 80007ddc <acquire>
    80007628:	b4dff06f          	j	80007174 <__printf+0x6c>
    8000762c:	40c0053b          	negw	a0,a2
    80007630:	00a00713          	li	a4,10
    80007634:	02e576bb          	remuw	a3,a0,a4
    80007638:	00002d97          	auipc	s11,0x2
    8000763c:	fe0d8d93          	addi	s11,s11,-32 # 80009618 <digits>
    80007640:	ff700593          	li	a1,-9
    80007644:	02069693          	slli	a3,a3,0x20
    80007648:	0206d693          	srli	a3,a3,0x20
    8000764c:	00dd86b3          	add	a3,s11,a3
    80007650:	0006c683          	lbu	a3,0(a3)
    80007654:	02e557bb          	divuw	a5,a0,a4
    80007658:	f8d40023          	sb	a3,-128(s0)
    8000765c:	10b65e63          	bge	a2,a1,80007778 <__printf+0x670>
    80007660:	06300593          	li	a1,99
    80007664:	02e7f6bb          	remuw	a3,a5,a4
    80007668:	02069693          	slli	a3,a3,0x20
    8000766c:	0206d693          	srli	a3,a3,0x20
    80007670:	00dd86b3          	add	a3,s11,a3
    80007674:	0006c683          	lbu	a3,0(a3)
    80007678:	02e7d73b          	divuw	a4,a5,a4
    8000767c:	00200793          	li	a5,2
    80007680:	f8d400a3          	sb	a3,-127(s0)
    80007684:	bca5ece3          	bltu	a1,a0,8000725c <__printf+0x154>
    80007688:	ce5ff06f          	j	8000736c <__printf+0x264>
    8000768c:	40e007bb          	negw	a5,a4
    80007690:	00002d97          	auipc	s11,0x2
    80007694:	f88d8d93          	addi	s11,s11,-120 # 80009618 <digits>
    80007698:	00f7f693          	andi	a3,a5,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c583          	lbu	a1,0(a3)
    800076a4:	ff100613          	li	a2,-15
    800076a8:	0047d69b          	srliw	a3,a5,0x4
    800076ac:	f8b40023          	sb	a1,-128(s0)
    800076b0:	0047d59b          	srliw	a1,a5,0x4
    800076b4:	0ac75e63          	bge	a4,a2,80007770 <__printf+0x668>
    800076b8:	00f6f693          	andi	a3,a3,15
    800076bc:	00dd86b3          	add	a3,s11,a3
    800076c0:	0006c603          	lbu	a2,0(a3)
    800076c4:	00f00693          	li	a3,15
    800076c8:	0087d79b          	srliw	a5,a5,0x8
    800076cc:	f8c400a3          	sb	a2,-127(s0)
    800076d0:	d8b6e4e3          	bltu	a3,a1,80007458 <__printf+0x350>
    800076d4:	00200793          	li	a5,2
    800076d8:	e2dff06f          	j	80007504 <__printf+0x3fc>
    800076dc:	00002c97          	auipc	s9,0x2
    800076e0:	f1cc8c93          	addi	s9,s9,-228 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800076e4:	02800513          	li	a0,40
    800076e8:	ef1ff06f          	j	800075d8 <__printf+0x4d0>
    800076ec:	00700793          	li	a5,7
    800076f0:	00600c93          	li	s9,6
    800076f4:	e0dff06f          	j	80007500 <__printf+0x3f8>
    800076f8:	00700793          	li	a5,7
    800076fc:	00600c93          	li	s9,6
    80007700:	c69ff06f          	j	80007368 <__printf+0x260>
    80007704:	00300793          	li	a5,3
    80007708:	00200c93          	li	s9,2
    8000770c:	c5dff06f          	j	80007368 <__printf+0x260>
    80007710:	00300793          	li	a5,3
    80007714:	00200c93          	li	s9,2
    80007718:	de9ff06f          	j	80007500 <__printf+0x3f8>
    8000771c:	00400793          	li	a5,4
    80007720:	00300c93          	li	s9,3
    80007724:	dddff06f          	j	80007500 <__printf+0x3f8>
    80007728:	00400793          	li	a5,4
    8000772c:	00300c93          	li	s9,3
    80007730:	c39ff06f          	j	80007368 <__printf+0x260>
    80007734:	00500793          	li	a5,5
    80007738:	00400c93          	li	s9,4
    8000773c:	c2dff06f          	j	80007368 <__printf+0x260>
    80007740:	00500793          	li	a5,5
    80007744:	00400c93          	li	s9,4
    80007748:	db9ff06f          	j	80007500 <__printf+0x3f8>
    8000774c:	00600793          	li	a5,6
    80007750:	00500c93          	li	s9,5
    80007754:	dadff06f          	j	80007500 <__printf+0x3f8>
    80007758:	00600793          	li	a5,6
    8000775c:	00500c93          	li	s9,5
    80007760:	c09ff06f          	j	80007368 <__printf+0x260>
    80007764:	00800793          	li	a5,8
    80007768:	00700c93          	li	s9,7
    8000776c:	bfdff06f          	j	80007368 <__printf+0x260>
    80007770:	00100793          	li	a5,1
    80007774:	d91ff06f          	j	80007504 <__printf+0x3fc>
    80007778:	00100793          	li	a5,1
    8000777c:	bf1ff06f          	j	8000736c <__printf+0x264>
    80007780:	00900793          	li	a5,9
    80007784:	00800c93          	li	s9,8
    80007788:	be1ff06f          	j	80007368 <__printf+0x260>
    8000778c:	00002517          	auipc	a0,0x2
    80007790:	e7450513          	addi	a0,a0,-396 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007794:	00000097          	auipc	ra,0x0
    80007798:	918080e7          	jalr	-1768(ra) # 800070ac <panic>

000000008000779c <printfinit>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00913423          	sd	s1,8(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	02010413          	addi	s0,sp,32
    800077b0:	00005497          	auipc	s1,0x5
    800077b4:	1b048493          	addi	s1,s1,432 # 8000c960 <pr>
    800077b8:	00048513          	mv	a0,s1
    800077bc:	00002597          	auipc	a1,0x2
    800077c0:	e5458593          	addi	a1,a1,-428 # 80009610 <CONSOLE_STATUS+0x600>
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	5f4080e7          	jalr	1524(ra) # 80007db8 <initlock>
    800077cc:	01813083          	ld	ra,24(sp)
    800077d0:	01013403          	ld	s0,16(sp)
    800077d4:	0004ac23          	sw	zero,24(s1)
    800077d8:	00813483          	ld	s1,8(sp)
    800077dc:	02010113          	addi	sp,sp,32
    800077e0:	00008067          	ret

00000000800077e4 <uartinit>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813423          	sd	s0,8(sp)
    800077ec:	01010413          	addi	s0,sp,16
    800077f0:	100007b7          	lui	a5,0x10000
    800077f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077f8:	f8000713          	li	a4,-128
    800077fc:	00e781a3          	sb	a4,3(a5)
    80007800:	00300713          	li	a4,3
    80007804:	00e78023          	sb	a4,0(a5)
    80007808:	000780a3          	sb	zero,1(a5)
    8000780c:	00e781a3          	sb	a4,3(a5)
    80007810:	00700693          	li	a3,7
    80007814:	00d78123          	sb	a3,2(a5)
    80007818:	00e780a3          	sb	a4,1(a5)
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret

0000000080007828 <uartputc>:
    80007828:	00004797          	auipc	a5,0x4
    8000782c:	e607a783          	lw	a5,-416(a5) # 8000b688 <panicked>
    80007830:	00078463          	beqz	a5,80007838 <uartputc+0x10>
    80007834:	0000006f          	j	80007834 <uartputc+0xc>
    80007838:	fd010113          	addi	sp,sp,-48
    8000783c:	02813023          	sd	s0,32(sp)
    80007840:	00913c23          	sd	s1,24(sp)
    80007844:	01213823          	sd	s2,16(sp)
    80007848:	01313423          	sd	s3,8(sp)
    8000784c:	02113423          	sd	ra,40(sp)
    80007850:	03010413          	addi	s0,sp,48
    80007854:	00004917          	auipc	s2,0x4
    80007858:	e3c90913          	addi	s2,s2,-452 # 8000b690 <uart_tx_r>
    8000785c:	00093783          	ld	a5,0(s2)
    80007860:	00004497          	auipc	s1,0x4
    80007864:	e3848493          	addi	s1,s1,-456 # 8000b698 <uart_tx_w>
    80007868:	0004b703          	ld	a4,0(s1)
    8000786c:	02078693          	addi	a3,a5,32
    80007870:	00050993          	mv	s3,a0
    80007874:	02e69c63          	bne	a3,a4,800078ac <uartputc+0x84>
    80007878:	00001097          	auipc	ra,0x1
    8000787c:	834080e7          	jalr	-1996(ra) # 800080ac <push_on>
    80007880:	00093783          	ld	a5,0(s2)
    80007884:	0004b703          	ld	a4,0(s1)
    80007888:	02078793          	addi	a5,a5,32
    8000788c:	00e79463          	bne	a5,a4,80007894 <uartputc+0x6c>
    80007890:	0000006f          	j	80007890 <uartputc+0x68>
    80007894:	00001097          	auipc	ra,0x1
    80007898:	88c080e7          	jalr	-1908(ra) # 80008120 <pop_on>
    8000789c:	00093783          	ld	a5,0(s2)
    800078a0:	0004b703          	ld	a4,0(s1)
    800078a4:	02078693          	addi	a3,a5,32
    800078a8:	fce688e3          	beq	a3,a4,80007878 <uartputc+0x50>
    800078ac:	01f77693          	andi	a3,a4,31
    800078b0:	00005597          	auipc	a1,0x5
    800078b4:	0d058593          	addi	a1,a1,208 # 8000c980 <uart_tx_buf>
    800078b8:	00d586b3          	add	a3,a1,a3
    800078bc:	00170713          	addi	a4,a4,1
    800078c0:	01368023          	sb	s3,0(a3)
    800078c4:	00e4b023          	sd	a4,0(s1)
    800078c8:	10000637          	lui	a2,0x10000
    800078cc:	02f71063          	bne	a4,a5,800078ec <uartputc+0xc4>
    800078d0:	0340006f          	j	80007904 <uartputc+0xdc>
    800078d4:	00074703          	lbu	a4,0(a4)
    800078d8:	00f93023          	sd	a5,0(s2)
    800078dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078e0:	00093783          	ld	a5,0(s2)
    800078e4:	0004b703          	ld	a4,0(s1)
    800078e8:	00f70e63          	beq	a4,a5,80007904 <uartputc+0xdc>
    800078ec:	00564683          	lbu	a3,5(a2)
    800078f0:	01f7f713          	andi	a4,a5,31
    800078f4:	00e58733          	add	a4,a1,a4
    800078f8:	0206f693          	andi	a3,a3,32
    800078fc:	00178793          	addi	a5,a5,1
    80007900:	fc069ae3          	bnez	a3,800078d4 <uartputc+0xac>
    80007904:	02813083          	ld	ra,40(sp)
    80007908:	02013403          	ld	s0,32(sp)
    8000790c:	01813483          	ld	s1,24(sp)
    80007910:	01013903          	ld	s2,16(sp)
    80007914:	00813983          	ld	s3,8(sp)
    80007918:	03010113          	addi	sp,sp,48
    8000791c:	00008067          	ret

0000000080007920 <uartputc_sync>:
    80007920:	ff010113          	addi	sp,sp,-16
    80007924:	00813423          	sd	s0,8(sp)
    80007928:	01010413          	addi	s0,sp,16
    8000792c:	00004717          	auipc	a4,0x4
    80007930:	d5c72703          	lw	a4,-676(a4) # 8000b688 <panicked>
    80007934:	02071663          	bnez	a4,80007960 <uartputc_sync+0x40>
    80007938:	00050793          	mv	a5,a0
    8000793c:	100006b7          	lui	a3,0x10000
    80007940:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007944:	02077713          	andi	a4,a4,32
    80007948:	fe070ce3          	beqz	a4,80007940 <uartputc_sync+0x20>
    8000794c:	0ff7f793          	andi	a5,a5,255
    80007950:	00f68023          	sb	a5,0(a3)
    80007954:	00813403          	ld	s0,8(sp)
    80007958:	01010113          	addi	sp,sp,16
    8000795c:	00008067          	ret
    80007960:	0000006f          	j	80007960 <uartputc_sync+0x40>

0000000080007964 <uartstart>:
    80007964:	ff010113          	addi	sp,sp,-16
    80007968:	00813423          	sd	s0,8(sp)
    8000796c:	01010413          	addi	s0,sp,16
    80007970:	00004617          	auipc	a2,0x4
    80007974:	d2060613          	addi	a2,a2,-736 # 8000b690 <uart_tx_r>
    80007978:	00004517          	auipc	a0,0x4
    8000797c:	d2050513          	addi	a0,a0,-736 # 8000b698 <uart_tx_w>
    80007980:	00063783          	ld	a5,0(a2)
    80007984:	00053703          	ld	a4,0(a0)
    80007988:	04f70263          	beq	a4,a5,800079cc <uartstart+0x68>
    8000798c:	100005b7          	lui	a1,0x10000
    80007990:	00005817          	auipc	a6,0x5
    80007994:	ff080813          	addi	a6,a6,-16 # 8000c980 <uart_tx_buf>
    80007998:	01c0006f          	j	800079b4 <uartstart+0x50>
    8000799c:	0006c703          	lbu	a4,0(a3)
    800079a0:	00f63023          	sd	a5,0(a2)
    800079a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079a8:	00063783          	ld	a5,0(a2)
    800079ac:	00053703          	ld	a4,0(a0)
    800079b0:	00f70e63          	beq	a4,a5,800079cc <uartstart+0x68>
    800079b4:	01f7f713          	andi	a4,a5,31
    800079b8:	00e806b3          	add	a3,a6,a4
    800079bc:	0055c703          	lbu	a4,5(a1)
    800079c0:	00178793          	addi	a5,a5,1
    800079c4:	02077713          	andi	a4,a4,32
    800079c8:	fc071ae3          	bnez	a4,8000799c <uartstart+0x38>
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <uartgetc>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813423          	sd	s0,8(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	10000737          	lui	a4,0x10000
    800079e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079ec:	0017f793          	andi	a5,a5,1
    800079f0:	00078c63          	beqz	a5,80007a08 <uartgetc+0x30>
    800079f4:	00074503          	lbu	a0,0(a4)
    800079f8:	0ff57513          	andi	a0,a0,255
    800079fc:	00813403          	ld	s0,8(sp)
    80007a00:	01010113          	addi	sp,sp,16
    80007a04:	00008067          	ret
    80007a08:	fff00513          	li	a0,-1
    80007a0c:	ff1ff06f          	j	800079fc <uartgetc+0x24>

0000000080007a10 <uartintr>:
    80007a10:	100007b7          	lui	a5,0x10000
    80007a14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a18:	0017f793          	andi	a5,a5,1
    80007a1c:	0a078463          	beqz	a5,80007ac4 <uartintr+0xb4>
    80007a20:	fe010113          	addi	sp,sp,-32
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00913423          	sd	s1,8(sp)
    80007a2c:	00113c23          	sd	ra,24(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	100004b7          	lui	s1,0x10000
    80007a38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a3c:	0ff57513          	andi	a0,a0,255
    80007a40:	fffff097          	auipc	ra,0xfffff
    80007a44:	534080e7          	jalr	1332(ra) # 80006f74 <consoleintr>
    80007a48:	0054c783          	lbu	a5,5(s1)
    80007a4c:	0017f793          	andi	a5,a5,1
    80007a50:	fe0794e3          	bnez	a5,80007a38 <uartintr+0x28>
    80007a54:	00004617          	auipc	a2,0x4
    80007a58:	c3c60613          	addi	a2,a2,-964 # 8000b690 <uart_tx_r>
    80007a5c:	00004517          	auipc	a0,0x4
    80007a60:	c3c50513          	addi	a0,a0,-964 # 8000b698 <uart_tx_w>
    80007a64:	00063783          	ld	a5,0(a2)
    80007a68:	00053703          	ld	a4,0(a0)
    80007a6c:	04f70263          	beq	a4,a5,80007ab0 <uartintr+0xa0>
    80007a70:	100005b7          	lui	a1,0x10000
    80007a74:	00005817          	auipc	a6,0x5
    80007a78:	f0c80813          	addi	a6,a6,-244 # 8000c980 <uart_tx_buf>
    80007a7c:	01c0006f          	j	80007a98 <uartintr+0x88>
    80007a80:	0006c703          	lbu	a4,0(a3)
    80007a84:	00f63023          	sd	a5,0(a2)
    80007a88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a8c:	00063783          	ld	a5,0(a2)
    80007a90:	00053703          	ld	a4,0(a0)
    80007a94:	00f70e63          	beq	a4,a5,80007ab0 <uartintr+0xa0>
    80007a98:	01f7f713          	andi	a4,a5,31
    80007a9c:	00e806b3          	add	a3,a6,a4
    80007aa0:	0055c703          	lbu	a4,5(a1)
    80007aa4:	00178793          	addi	a5,a5,1
    80007aa8:	02077713          	andi	a4,a4,32
    80007aac:	fc071ae3          	bnez	a4,80007a80 <uartintr+0x70>
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	00813483          	ld	s1,8(sp)
    80007abc:	02010113          	addi	sp,sp,32
    80007ac0:	00008067          	ret
    80007ac4:	00004617          	auipc	a2,0x4
    80007ac8:	bcc60613          	addi	a2,a2,-1076 # 8000b690 <uart_tx_r>
    80007acc:	00004517          	auipc	a0,0x4
    80007ad0:	bcc50513          	addi	a0,a0,-1076 # 8000b698 <uart_tx_w>
    80007ad4:	00063783          	ld	a5,0(a2)
    80007ad8:	00053703          	ld	a4,0(a0)
    80007adc:	04f70263          	beq	a4,a5,80007b20 <uartintr+0x110>
    80007ae0:	100005b7          	lui	a1,0x10000
    80007ae4:	00005817          	auipc	a6,0x5
    80007ae8:	e9c80813          	addi	a6,a6,-356 # 8000c980 <uart_tx_buf>
    80007aec:	01c0006f          	j	80007b08 <uartintr+0xf8>
    80007af0:	0006c703          	lbu	a4,0(a3)
    80007af4:	00f63023          	sd	a5,0(a2)
    80007af8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007afc:	00063783          	ld	a5,0(a2)
    80007b00:	00053703          	ld	a4,0(a0)
    80007b04:	02f70063          	beq	a4,a5,80007b24 <uartintr+0x114>
    80007b08:	01f7f713          	andi	a4,a5,31
    80007b0c:	00e806b3          	add	a3,a6,a4
    80007b10:	0055c703          	lbu	a4,5(a1)
    80007b14:	00178793          	addi	a5,a5,1
    80007b18:	02077713          	andi	a4,a4,32
    80007b1c:	fc071ae3          	bnez	a4,80007af0 <uartintr+0xe0>
    80007b20:	00008067          	ret
    80007b24:	00008067          	ret

0000000080007b28 <kinit>:
    80007b28:	fc010113          	addi	sp,sp,-64
    80007b2c:	02913423          	sd	s1,40(sp)
    80007b30:	fffff7b7          	lui	a5,0xfffff
    80007b34:	00006497          	auipc	s1,0x6
    80007b38:	e6b48493          	addi	s1,s1,-405 # 8000d99f <end+0xfff>
    80007b3c:	02813823          	sd	s0,48(sp)
    80007b40:	01313c23          	sd	s3,24(sp)
    80007b44:	00f4f4b3          	and	s1,s1,a5
    80007b48:	02113c23          	sd	ra,56(sp)
    80007b4c:	03213023          	sd	s2,32(sp)
    80007b50:	01413823          	sd	s4,16(sp)
    80007b54:	01513423          	sd	s5,8(sp)
    80007b58:	04010413          	addi	s0,sp,64
    80007b5c:	000017b7          	lui	a5,0x1
    80007b60:	01100993          	li	s3,17
    80007b64:	00f487b3          	add	a5,s1,a5
    80007b68:	01b99993          	slli	s3,s3,0x1b
    80007b6c:	06f9e063          	bltu	s3,a5,80007bcc <kinit+0xa4>
    80007b70:	00005a97          	auipc	s5,0x5
    80007b74:	e30a8a93          	addi	s5,s5,-464 # 8000c9a0 <end>
    80007b78:	0754ec63          	bltu	s1,s5,80007bf0 <kinit+0xc8>
    80007b7c:	0734fa63          	bgeu	s1,s3,80007bf0 <kinit+0xc8>
    80007b80:	00088a37          	lui	s4,0x88
    80007b84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b88:	00004917          	auipc	s2,0x4
    80007b8c:	b1890913          	addi	s2,s2,-1256 # 8000b6a0 <kmem>
    80007b90:	00ca1a13          	slli	s4,s4,0xc
    80007b94:	0140006f          	j	80007ba8 <kinit+0x80>
    80007b98:	000017b7          	lui	a5,0x1
    80007b9c:	00f484b3          	add	s1,s1,a5
    80007ba0:	0554e863          	bltu	s1,s5,80007bf0 <kinit+0xc8>
    80007ba4:	0534f663          	bgeu	s1,s3,80007bf0 <kinit+0xc8>
    80007ba8:	00001637          	lui	a2,0x1
    80007bac:	00100593          	li	a1,1
    80007bb0:	00048513          	mv	a0,s1
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	5e4080e7          	jalr	1508(ra) # 80008198 <__memset>
    80007bbc:	00093783          	ld	a5,0(s2)
    80007bc0:	00f4b023          	sd	a5,0(s1)
    80007bc4:	00993023          	sd	s1,0(s2)
    80007bc8:	fd4498e3          	bne	s1,s4,80007b98 <kinit+0x70>
    80007bcc:	03813083          	ld	ra,56(sp)
    80007bd0:	03013403          	ld	s0,48(sp)
    80007bd4:	02813483          	ld	s1,40(sp)
    80007bd8:	02013903          	ld	s2,32(sp)
    80007bdc:	01813983          	ld	s3,24(sp)
    80007be0:	01013a03          	ld	s4,16(sp)
    80007be4:	00813a83          	ld	s5,8(sp)
    80007be8:	04010113          	addi	sp,sp,64
    80007bec:	00008067          	ret
    80007bf0:	00002517          	auipc	a0,0x2
    80007bf4:	a4050513          	addi	a0,a0,-1472 # 80009630 <digits+0x18>
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	4b4080e7          	jalr	1204(ra) # 800070ac <panic>

0000000080007c00 <freerange>:
    80007c00:	fc010113          	addi	sp,sp,-64
    80007c04:	000017b7          	lui	a5,0x1
    80007c08:	02913423          	sd	s1,40(sp)
    80007c0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c10:	009504b3          	add	s1,a0,s1
    80007c14:	fffff537          	lui	a0,0xfffff
    80007c18:	02813823          	sd	s0,48(sp)
    80007c1c:	02113c23          	sd	ra,56(sp)
    80007c20:	03213023          	sd	s2,32(sp)
    80007c24:	01313c23          	sd	s3,24(sp)
    80007c28:	01413823          	sd	s4,16(sp)
    80007c2c:	01513423          	sd	s5,8(sp)
    80007c30:	01613023          	sd	s6,0(sp)
    80007c34:	04010413          	addi	s0,sp,64
    80007c38:	00a4f4b3          	and	s1,s1,a0
    80007c3c:	00f487b3          	add	a5,s1,a5
    80007c40:	06f5e463          	bltu	a1,a5,80007ca8 <freerange+0xa8>
    80007c44:	00005a97          	auipc	s5,0x5
    80007c48:	d5ca8a93          	addi	s5,s5,-676 # 8000c9a0 <end>
    80007c4c:	0954e263          	bltu	s1,s5,80007cd0 <freerange+0xd0>
    80007c50:	01100993          	li	s3,17
    80007c54:	01b99993          	slli	s3,s3,0x1b
    80007c58:	0734fc63          	bgeu	s1,s3,80007cd0 <freerange+0xd0>
    80007c5c:	00058a13          	mv	s4,a1
    80007c60:	00004917          	auipc	s2,0x4
    80007c64:	a4090913          	addi	s2,s2,-1472 # 8000b6a0 <kmem>
    80007c68:	00002b37          	lui	s6,0x2
    80007c6c:	0140006f          	j	80007c80 <freerange+0x80>
    80007c70:	000017b7          	lui	a5,0x1
    80007c74:	00f484b3          	add	s1,s1,a5
    80007c78:	0554ec63          	bltu	s1,s5,80007cd0 <freerange+0xd0>
    80007c7c:	0534fa63          	bgeu	s1,s3,80007cd0 <freerange+0xd0>
    80007c80:	00001637          	lui	a2,0x1
    80007c84:	00100593          	li	a1,1
    80007c88:	00048513          	mv	a0,s1
    80007c8c:	00000097          	auipc	ra,0x0
    80007c90:	50c080e7          	jalr	1292(ra) # 80008198 <__memset>
    80007c94:	00093703          	ld	a4,0(s2)
    80007c98:	016487b3          	add	a5,s1,s6
    80007c9c:	00e4b023          	sd	a4,0(s1)
    80007ca0:	00993023          	sd	s1,0(s2)
    80007ca4:	fcfa76e3          	bgeu	s4,a5,80007c70 <freerange+0x70>
    80007ca8:	03813083          	ld	ra,56(sp)
    80007cac:	03013403          	ld	s0,48(sp)
    80007cb0:	02813483          	ld	s1,40(sp)
    80007cb4:	02013903          	ld	s2,32(sp)
    80007cb8:	01813983          	ld	s3,24(sp)
    80007cbc:	01013a03          	ld	s4,16(sp)
    80007cc0:	00813a83          	ld	s5,8(sp)
    80007cc4:	00013b03          	ld	s6,0(sp)
    80007cc8:	04010113          	addi	sp,sp,64
    80007ccc:	00008067          	ret
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	96050513          	addi	a0,a0,-1696 # 80009630 <digits+0x18>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	3d4080e7          	jalr	980(ra) # 800070ac <panic>

0000000080007ce0 <kfree>:
    80007ce0:	fe010113          	addi	sp,sp,-32
    80007ce4:	00813823          	sd	s0,16(sp)
    80007ce8:	00113c23          	sd	ra,24(sp)
    80007cec:	00913423          	sd	s1,8(sp)
    80007cf0:	02010413          	addi	s0,sp,32
    80007cf4:	03451793          	slli	a5,a0,0x34
    80007cf8:	04079c63          	bnez	a5,80007d50 <kfree+0x70>
    80007cfc:	00005797          	auipc	a5,0x5
    80007d00:	ca478793          	addi	a5,a5,-860 # 8000c9a0 <end>
    80007d04:	00050493          	mv	s1,a0
    80007d08:	04f56463          	bltu	a0,a5,80007d50 <kfree+0x70>
    80007d0c:	01100793          	li	a5,17
    80007d10:	01b79793          	slli	a5,a5,0x1b
    80007d14:	02f57e63          	bgeu	a0,a5,80007d50 <kfree+0x70>
    80007d18:	00001637          	lui	a2,0x1
    80007d1c:	00100593          	li	a1,1
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	478080e7          	jalr	1144(ra) # 80008198 <__memset>
    80007d28:	00004797          	auipc	a5,0x4
    80007d2c:	97878793          	addi	a5,a5,-1672 # 8000b6a0 <kmem>
    80007d30:	0007b703          	ld	a4,0(a5)
    80007d34:	01813083          	ld	ra,24(sp)
    80007d38:	01013403          	ld	s0,16(sp)
    80007d3c:	00e4b023          	sd	a4,0(s1)
    80007d40:	0097b023          	sd	s1,0(a5)
    80007d44:	00813483          	ld	s1,8(sp)
    80007d48:	02010113          	addi	sp,sp,32
    80007d4c:	00008067          	ret
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	8e050513          	addi	a0,a0,-1824 # 80009630 <digits+0x18>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	354080e7          	jalr	852(ra) # 800070ac <panic>

0000000080007d60 <kalloc>:
    80007d60:	fe010113          	addi	sp,sp,-32
    80007d64:	00813823          	sd	s0,16(sp)
    80007d68:	00913423          	sd	s1,8(sp)
    80007d6c:	00113c23          	sd	ra,24(sp)
    80007d70:	02010413          	addi	s0,sp,32
    80007d74:	00004797          	auipc	a5,0x4
    80007d78:	92c78793          	addi	a5,a5,-1748 # 8000b6a0 <kmem>
    80007d7c:	0007b483          	ld	s1,0(a5)
    80007d80:	02048063          	beqz	s1,80007da0 <kalloc+0x40>
    80007d84:	0004b703          	ld	a4,0(s1)
    80007d88:	00001637          	lui	a2,0x1
    80007d8c:	00500593          	li	a1,5
    80007d90:	00048513          	mv	a0,s1
    80007d94:	00e7b023          	sd	a4,0(a5)
    80007d98:	00000097          	auipc	ra,0x0
    80007d9c:	400080e7          	jalr	1024(ra) # 80008198 <__memset>
    80007da0:	01813083          	ld	ra,24(sp)
    80007da4:	01013403          	ld	s0,16(sp)
    80007da8:	00048513          	mv	a0,s1
    80007dac:	00813483          	ld	s1,8(sp)
    80007db0:	02010113          	addi	sp,sp,32
    80007db4:	00008067          	ret

0000000080007db8 <initlock>:
    80007db8:	ff010113          	addi	sp,sp,-16
    80007dbc:	00813423          	sd	s0,8(sp)
    80007dc0:	01010413          	addi	s0,sp,16
    80007dc4:	00813403          	ld	s0,8(sp)
    80007dc8:	00b53423          	sd	a1,8(a0)
    80007dcc:	00052023          	sw	zero,0(a0)
    80007dd0:	00053823          	sd	zero,16(a0)
    80007dd4:	01010113          	addi	sp,sp,16
    80007dd8:	00008067          	ret

0000000080007ddc <acquire>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00913423          	sd	s1,8(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	01213023          	sd	s2,0(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	00050493          	mv	s1,a0
    80007df8:	10002973          	csrr	s2,sstatus
    80007dfc:	100027f3          	csrr	a5,sstatus
    80007e00:	ffd7f793          	andi	a5,a5,-3
    80007e04:	10079073          	csrw	sstatus,a5
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	8e8080e7          	jalr	-1816(ra) # 800066f0 <mycpu>
    80007e10:	07852783          	lw	a5,120(a0)
    80007e14:	06078e63          	beqz	a5,80007e90 <acquire+0xb4>
    80007e18:	fffff097          	auipc	ra,0xfffff
    80007e1c:	8d8080e7          	jalr	-1832(ra) # 800066f0 <mycpu>
    80007e20:	07852783          	lw	a5,120(a0)
    80007e24:	0004a703          	lw	a4,0(s1)
    80007e28:	0017879b          	addiw	a5,a5,1
    80007e2c:	06f52c23          	sw	a5,120(a0)
    80007e30:	04071063          	bnez	a4,80007e70 <acquire+0x94>
    80007e34:	00100713          	li	a4,1
    80007e38:	00070793          	mv	a5,a4
    80007e3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e40:	0007879b          	sext.w	a5,a5
    80007e44:	fe079ae3          	bnez	a5,80007e38 <acquire+0x5c>
    80007e48:	0ff0000f          	fence
    80007e4c:	fffff097          	auipc	ra,0xfffff
    80007e50:	8a4080e7          	jalr	-1884(ra) # 800066f0 <mycpu>
    80007e54:	01813083          	ld	ra,24(sp)
    80007e58:	01013403          	ld	s0,16(sp)
    80007e5c:	00a4b823          	sd	a0,16(s1)
    80007e60:	00013903          	ld	s2,0(sp)
    80007e64:	00813483          	ld	s1,8(sp)
    80007e68:	02010113          	addi	sp,sp,32
    80007e6c:	00008067          	ret
    80007e70:	0104b903          	ld	s2,16(s1)
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	87c080e7          	jalr	-1924(ra) # 800066f0 <mycpu>
    80007e7c:	faa91ce3          	bne	s2,a0,80007e34 <acquire+0x58>
    80007e80:	00001517          	auipc	a0,0x1
    80007e84:	7b850513          	addi	a0,a0,1976 # 80009638 <digits+0x20>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	224080e7          	jalr	548(ra) # 800070ac <panic>
    80007e90:	00195913          	srli	s2,s2,0x1
    80007e94:	fffff097          	auipc	ra,0xfffff
    80007e98:	85c080e7          	jalr	-1956(ra) # 800066f0 <mycpu>
    80007e9c:	00197913          	andi	s2,s2,1
    80007ea0:	07252e23          	sw	s2,124(a0)
    80007ea4:	f75ff06f          	j	80007e18 <acquire+0x3c>

0000000080007ea8 <release>:
    80007ea8:	fe010113          	addi	sp,sp,-32
    80007eac:	00813823          	sd	s0,16(sp)
    80007eb0:	00113c23          	sd	ra,24(sp)
    80007eb4:	00913423          	sd	s1,8(sp)
    80007eb8:	01213023          	sd	s2,0(sp)
    80007ebc:	02010413          	addi	s0,sp,32
    80007ec0:	00052783          	lw	a5,0(a0)
    80007ec4:	00079a63          	bnez	a5,80007ed8 <release+0x30>
    80007ec8:	00001517          	auipc	a0,0x1
    80007ecc:	77850513          	addi	a0,a0,1912 # 80009640 <digits+0x28>
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	1dc080e7          	jalr	476(ra) # 800070ac <panic>
    80007ed8:	01053903          	ld	s2,16(a0)
    80007edc:	00050493          	mv	s1,a0
    80007ee0:	fffff097          	auipc	ra,0xfffff
    80007ee4:	810080e7          	jalr	-2032(ra) # 800066f0 <mycpu>
    80007ee8:	fea910e3          	bne	s2,a0,80007ec8 <release+0x20>
    80007eec:	0004b823          	sd	zero,16(s1)
    80007ef0:	0ff0000f          	fence
    80007ef4:	0f50000f          	fence	iorw,ow
    80007ef8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007efc:	ffffe097          	auipc	ra,0xffffe
    80007f00:	7f4080e7          	jalr	2036(ra) # 800066f0 <mycpu>
    80007f04:	100027f3          	csrr	a5,sstatus
    80007f08:	0027f793          	andi	a5,a5,2
    80007f0c:	04079a63          	bnez	a5,80007f60 <release+0xb8>
    80007f10:	07852783          	lw	a5,120(a0)
    80007f14:	02f05e63          	blez	a5,80007f50 <release+0xa8>
    80007f18:	fff7871b          	addiw	a4,a5,-1
    80007f1c:	06e52c23          	sw	a4,120(a0)
    80007f20:	00071c63          	bnez	a4,80007f38 <release+0x90>
    80007f24:	07c52783          	lw	a5,124(a0)
    80007f28:	00078863          	beqz	a5,80007f38 <release+0x90>
    80007f2c:	100027f3          	csrr	a5,sstatus
    80007f30:	0027e793          	ori	a5,a5,2
    80007f34:	10079073          	csrw	sstatus,a5
    80007f38:	01813083          	ld	ra,24(sp)
    80007f3c:	01013403          	ld	s0,16(sp)
    80007f40:	00813483          	ld	s1,8(sp)
    80007f44:	00013903          	ld	s2,0(sp)
    80007f48:	02010113          	addi	sp,sp,32
    80007f4c:	00008067          	ret
    80007f50:	00001517          	auipc	a0,0x1
    80007f54:	71050513          	addi	a0,a0,1808 # 80009660 <digits+0x48>
    80007f58:	fffff097          	auipc	ra,0xfffff
    80007f5c:	154080e7          	jalr	340(ra) # 800070ac <panic>
    80007f60:	00001517          	auipc	a0,0x1
    80007f64:	6e850513          	addi	a0,a0,1768 # 80009648 <digits+0x30>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	144080e7          	jalr	324(ra) # 800070ac <panic>

0000000080007f70 <holding>:
    80007f70:	00052783          	lw	a5,0(a0)
    80007f74:	00079663          	bnez	a5,80007f80 <holding+0x10>
    80007f78:	00000513          	li	a0,0
    80007f7c:	00008067          	ret
    80007f80:	fe010113          	addi	sp,sp,-32
    80007f84:	00813823          	sd	s0,16(sp)
    80007f88:	00913423          	sd	s1,8(sp)
    80007f8c:	00113c23          	sd	ra,24(sp)
    80007f90:	02010413          	addi	s0,sp,32
    80007f94:	01053483          	ld	s1,16(a0)
    80007f98:	ffffe097          	auipc	ra,0xffffe
    80007f9c:	758080e7          	jalr	1880(ra) # 800066f0 <mycpu>
    80007fa0:	01813083          	ld	ra,24(sp)
    80007fa4:	01013403          	ld	s0,16(sp)
    80007fa8:	40a48533          	sub	a0,s1,a0
    80007fac:	00153513          	seqz	a0,a0
    80007fb0:	00813483          	ld	s1,8(sp)
    80007fb4:	02010113          	addi	sp,sp,32
    80007fb8:	00008067          	ret

0000000080007fbc <push_off>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00113c23          	sd	ra,24(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	100024f3          	csrr	s1,sstatus
    80007fd4:	100027f3          	csrr	a5,sstatus
    80007fd8:	ffd7f793          	andi	a5,a5,-3
    80007fdc:	10079073          	csrw	sstatus,a5
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	710080e7          	jalr	1808(ra) # 800066f0 <mycpu>
    80007fe8:	07852783          	lw	a5,120(a0)
    80007fec:	02078663          	beqz	a5,80008018 <push_off+0x5c>
    80007ff0:	ffffe097          	auipc	ra,0xffffe
    80007ff4:	700080e7          	jalr	1792(ra) # 800066f0 <mycpu>
    80007ff8:	07852783          	lw	a5,120(a0)
    80007ffc:	01813083          	ld	ra,24(sp)
    80008000:	01013403          	ld	s0,16(sp)
    80008004:	0017879b          	addiw	a5,a5,1
    80008008:	06f52c23          	sw	a5,120(a0)
    8000800c:	00813483          	ld	s1,8(sp)
    80008010:	02010113          	addi	sp,sp,32
    80008014:	00008067          	ret
    80008018:	0014d493          	srli	s1,s1,0x1
    8000801c:	ffffe097          	auipc	ra,0xffffe
    80008020:	6d4080e7          	jalr	1748(ra) # 800066f0 <mycpu>
    80008024:	0014f493          	andi	s1,s1,1
    80008028:	06952e23          	sw	s1,124(a0)
    8000802c:	fc5ff06f          	j	80007ff0 <push_off+0x34>

0000000080008030 <pop_off>:
    80008030:	ff010113          	addi	sp,sp,-16
    80008034:	00813023          	sd	s0,0(sp)
    80008038:	00113423          	sd	ra,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	ffffe097          	auipc	ra,0xffffe
    80008044:	6b0080e7          	jalr	1712(ra) # 800066f0 <mycpu>
    80008048:	100027f3          	csrr	a5,sstatus
    8000804c:	0027f793          	andi	a5,a5,2
    80008050:	04079663          	bnez	a5,8000809c <pop_off+0x6c>
    80008054:	07852783          	lw	a5,120(a0)
    80008058:	02f05a63          	blez	a5,8000808c <pop_off+0x5c>
    8000805c:	fff7871b          	addiw	a4,a5,-1
    80008060:	06e52c23          	sw	a4,120(a0)
    80008064:	00071c63          	bnez	a4,8000807c <pop_off+0x4c>
    80008068:	07c52783          	lw	a5,124(a0)
    8000806c:	00078863          	beqz	a5,8000807c <pop_off+0x4c>
    80008070:	100027f3          	csrr	a5,sstatus
    80008074:	0027e793          	ori	a5,a5,2
    80008078:	10079073          	csrw	sstatus,a5
    8000807c:	00813083          	ld	ra,8(sp)
    80008080:	00013403          	ld	s0,0(sp)
    80008084:	01010113          	addi	sp,sp,16
    80008088:	00008067          	ret
    8000808c:	00001517          	auipc	a0,0x1
    80008090:	5d450513          	addi	a0,a0,1492 # 80009660 <digits+0x48>
    80008094:	fffff097          	auipc	ra,0xfffff
    80008098:	018080e7          	jalr	24(ra) # 800070ac <panic>
    8000809c:	00001517          	auipc	a0,0x1
    800080a0:	5ac50513          	addi	a0,a0,1452 # 80009648 <digits+0x30>
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	008080e7          	jalr	8(ra) # 800070ac <panic>

00000000800080ac <push_on>:
    800080ac:	fe010113          	addi	sp,sp,-32
    800080b0:	00813823          	sd	s0,16(sp)
    800080b4:	00113c23          	sd	ra,24(sp)
    800080b8:	00913423          	sd	s1,8(sp)
    800080bc:	02010413          	addi	s0,sp,32
    800080c0:	100024f3          	csrr	s1,sstatus
    800080c4:	100027f3          	csrr	a5,sstatus
    800080c8:	0027e793          	ori	a5,a5,2
    800080cc:	10079073          	csrw	sstatus,a5
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	620080e7          	jalr	1568(ra) # 800066f0 <mycpu>
    800080d8:	07852783          	lw	a5,120(a0)
    800080dc:	02078663          	beqz	a5,80008108 <push_on+0x5c>
    800080e0:	ffffe097          	auipc	ra,0xffffe
    800080e4:	610080e7          	jalr	1552(ra) # 800066f0 <mycpu>
    800080e8:	07852783          	lw	a5,120(a0)
    800080ec:	01813083          	ld	ra,24(sp)
    800080f0:	01013403          	ld	s0,16(sp)
    800080f4:	0017879b          	addiw	a5,a5,1
    800080f8:	06f52c23          	sw	a5,120(a0)
    800080fc:	00813483          	ld	s1,8(sp)
    80008100:	02010113          	addi	sp,sp,32
    80008104:	00008067          	ret
    80008108:	0014d493          	srli	s1,s1,0x1
    8000810c:	ffffe097          	auipc	ra,0xffffe
    80008110:	5e4080e7          	jalr	1508(ra) # 800066f0 <mycpu>
    80008114:	0014f493          	andi	s1,s1,1
    80008118:	06952e23          	sw	s1,124(a0)
    8000811c:	fc5ff06f          	j	800080e0 <push_on+0x34>

0000000080008120 <pop_on>:
    80008120:	ff010113          	addi	sp,sp,-16
    80008124:	00813023          	sd	s0,0(sp)
    80008128:	00113423          	sd	ra,8(sp)
    8000812c:	01010413          	addi	s0,sp,16
    80008130:	ffffe097          	auipc	ra,0xffffe
    80008134:	5c0080e7          	jalr	1472(ra) # 800066f0 <mycpu>
    80008138:	100027f3          	csrr	a5,sstatus
    8000813c:	0027f793          	andi	a5,a5,2
    80008140:	04078463          	beqz	a5,80008188 <pop_on+0x68>
    80008144:	07852783          	lw	a5,120(a0)
    80008148:	02f05863          	blez	a5,80008178 <pop_on+0x58>
    8000814c:	fff7879b          	addiw	a5,a5,-1
    80008150:	06f52c23          	sw	a5,120(a0)
    80008154:	07853783          	ld	a5,120(a0)
    80008158:	00079863          	bnez	a5,80008168 <pop_on+0x48>
    8000815c:	100027f3          	csrr	a5,sstatus
    80008160:	ffd7f793          	andi	a5,a5,-3
    80008164:	10079073          	csrw	sstatus,a5
    80008168:	00813083          	ld	ra,8(sp)
    8000816c:	00013403          	ld	s0,0(sp)
    80008170:	01010113          	addi	sp,sp,16
    80008174:	00008067          	ret
    80008178:	00001517          	auipc	a0,0x1
    8000817c:	51050513          	addi	a0,a0,1296 # 80009688 <digits+0x70>
    80008180:	fffff097          	auipc	ra,0xfffff
    80008184:	f2c080e7          	jalr	-212(ra) # 800070ac <panic>
    80008188:	00001517          	auipc	a0,0x1
    8000818c:	4e050513          	addi	a0,a0,1248 # 80009668 <digits+0x50>
    80008190:	fffff097          	auipc	ra,0xfffff
    80008194:	f1c080e7          	jalr	-228(ra) # 800070ac <panic>

0000000080008198 <__memset>:
    80008198:	ff010113          	addi	sp,sp,-16
    8000819c:	00813423          	sd	s0,8(sp)
    800081a0:	01010413          	addi	s0,sp,16
    800081a4:	1a060e63          	beqz	a2,80008360 <__memset+0x1c8>
    800081a8:	40a007b3          	neg	a5,a0
    800081ac:	0077f793          	andi	a5,a5,7
    800081b0:	00778693          	addi	a3,a5,7
    800081b4:	00b00813          	li	a6,11
    800081b8:	0ff5f593          	andi	a1,a1,255
    800081bc:	fff6071b          	addiw	a4,a2,-1
    800081c0:	1b06e663          	bltu	a3,a6,8000836c <__memset+0x1d4>
    800081c4:	1cd76463          	bltu	a4,a3,8000838c <__memset+0x1f4>
    800081c8:	1a078e63          	beqz	a5,80008384 <__memset+0x1ec>
    800081cc:	00b50023          	sb	a1,0(a0)
    800081d0:	00100713          	li	a4,1
    800081d4:	1ae78463          	beq	a5,a4,8000837c <__memset+0x1e4>
    800081d8:	00b500a3          	sb	a1,1(a0)
    800081dc:	00200713          	li	a4,2
    800081e0:	1ae78a63          	beq	a5,a4,80008394 <__memset+0x1fc>
    800081e4:	00b50123          	sb	a1,2(a0)
    800081e8:	00300713          	li	a4,3
    800081ec:	18e78463          	beq	a5,a4,80008374 <__memset+0x1dc>
    800081f0:	00b501a3          	sb	a1,3(a0)
    800081f4:	00400713          	li	a4,4
    800081f8:	1ae78263          	beq	a5,a4,8000839c <__memset+0x204>
    800081fc:	00b50223          	sb	a1,4(a0)
    80008200:	00500713          	li	a4,5
    80008204:	1ae78063          	beq	a5,a4,800083a4 <__memset+0x20c>
    80008208:	00b502a3          	sb	a1,5(a0)
    8000820c:	00700713          	li	a4,7
    80008210:	18e79e63          	bne	a5,a4,800083ac <__memset+0x214>
    80008214:	00b50323          	sb	a1,6(a0)
    80008218:	00700e93          	li	t4,7
    8000821c:	00859713          	slli	a4,a1,0x8
    80008220:	00e5e733          	or	a4,a1,a4
    80008224:	01059e13          	slli	t3,a1,0x10
    80008228:	01c76e33          	or	t3,a4,t3
    8000822c:	01859313          	slli	t1,a1,0x18
    80008230:	006e6333          	or	t1,t3,t1
    80008234:	02059893          	slli	a7,a1,0x20
    80008238:	40f60e3b          	subw	t3,a2,a5
    8000823c:	011368b3          	or	a7,t1,a7
    80008240:	02859813          	slli	a6,a1,0x28
    80008244:	0108e833          	or	a6,a7,a6
    80008248:	03059693          	slli	a3,a1,0x30
    8000824c:	003e589b          	srliw	a7,t3,0x3
    80008250:	00d866b3          	or	a3,a6,a3
    80008254:	03859713          	slli	a4,a1,0x38
    80008258:	00389813          	slli	a6,a7,0x3
    8000825c:	00f507b3          	add	a5,a0,a5
    80008260:	00e6e733          	or	a4,a3,a4
    80008264:	000e089b          	sext.w	a7,t3
    80008268:	00f806b3          	add	a3,a6,a5
    8000826c:	00e7b023          	sd	a4,0(a5)
    80008270:	00878793          	addi	a5,a5,8
    80008274:	fed79ce3          	bne	a5,a3,8000826c <__memset+0xd4>
    80008278:	ff8e7793          	andi	a5,t3,-8
    8000827c:	0007871b          	sext.w	a4,a5
    80008280:	01d787bb          	addw	a5,a5,t4
    80008284:	0ce88e63          	beq	a7,a4,80008360 <__memset+0x1c8>
    80008288:	00f50733          	add	a4,a0,a5
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0017871b          	addiw	a4,a5,1
    80008294:	0cc77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0027871b          	addiw	a4,a5,2
    800082a4:	0ac77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0037871b          	addiw	a4,a5,3
    800082b4:	0ac77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0047871b          	addiw	a4,a5,4
    800082c4:	08c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0057871b          	addiw	a4,a5,5
    800082d4:	08c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0067871b          	addiw	a4,a5,6
    800082e4:	06c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0077871b          	addiw	a4,a5,7
    800082f4:	06c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0087871b          	addiw	a4,a5,8
    80008304:	04c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0097871b          	addiw	a4,a5,9
    80008314:	04c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00a7871b          	addiw	a4,a5,10
    80008324:	02c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00b7871b          	addiw	a4,a5,11
    80008334:	02c77663          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	00c7871b          	addiw	a4,a5,12
    80008344:	00c77e63          	bgeu	a4,a2,80008360 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	00d7879b          	addiw	a5,a5,13
    80008354:	00c7f663          	bgeu	a5,a2,80008360 <__memset+0x1c8>
    80008358:	00f507b3          	add	a5,a0,a5
    8000835c:	00b78023          	sb	a1,0(a5)
    80008360:	00813403          	ld	s0,8(sp)
    80008364:	01010113          	addi	sp,sp,16
    80008368:	00008067          	ret
    8000836c:	00b00693          	li	a3,11
    80008370:	e55ff06f          	j	800081c4 <__memset+0x2c>
    80008374:	00300e93          	li	t4,3
    80008378:	ea5ff06f          	j	8000821c <__memset+0x84>
    8000837c:	00100e93          	li	t4,1
    80008380:	e9dff06f          	j	8000821c <__memset+0x84>
    80008384:	00000e93          	li	t4,0
    80008388:	e95ff06f          	j	8000821c <__memset+0x84>
    8000838c:	00000793          	li	a5,0
    80008390:	ef9ff06f          	j	80008288 <__memset+0xf0>
    80008394:	00200e93          	li	t4,2
    80008398:	e85ff06f          	j	8000821c <__memset+0x84>
    8000839c:	00400e93          	li	t4,4
    800083a0:	e7dff06f          	j	8000821c <__memset+0x84>
    800083a4:	00500e93          	li	t4,5
    800083a8:	e75ff06f          	j	8000821c <__memset+0x84>
    800083ac:	00600e93          	li	t4,6
    800083b0:	e6dff06f          	j	8000821c <__memset+0x84>

00000000800083b4 <__memmove>:
    800083b4:	ff010113          	addi	sp,sp,-16
    800083b8:	00813423          	sd	s0,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	0e060863          	beqz	a2,800084b0 <__memmove+0xfc>
    800083c4:	fff6069b          	addiw	a3,a2,-1
    800083c8:	0006881b          	sext.w	a6,a3
    800083cc:	0ea5e863          	bltu	a1,a0,800084bc <__memmove+0x108>
    800083d0:	00758713          	addi	a4,a1,7
    800083d4:	00a5e7b3          	or	a5,a1,a0
    800083d8:	40a70733          	sub	a4,a4,a0
    800083dc:	0077f793          	andi	a5,a5,7
    800083e0:	00f73713          	sltiu	a4,a4,15
    800083e4:	00174713          	xori	a4,a4,1
    800083e8:	0017b793          	seqz	a5,a5
    800083ec:	00e7f7b3          	and	a5,a5,a4
    800083f0:	10078863          	beqz	a5,80008500 <__memmove+0x14c>
    800083f4:	00900793          	li	a5,9
    800083f8:	1107f463          	bgeu	a5,a6,80008500 <__memmove+0x14c>
    800083fc:	0036581b          	srliw	a6,a2,0x3
    80008400:	fff8081b          	addiw	a6,a6,-1
    80008404:	02081813          	slli	a6,a6,0x20
    80008408:	01d85893          	srli	a7,a6,0x1d
    8000840c:	00858813          	addi	a6,a1,8
    80008410:	00058793          	mv	a5,a1
    80008414:	00050713          	mv	a4,a0
    80008418:	01088833          	add	a6,a7,a6
    8000841c:	0007b883          	ld	a7,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	00870713          	addi	a4,a4,8
    80008428:	ff173c23          	sd	a7,-8(a4)
    8000842c:	ff0798e3          	bne	a5,a6,8000841c <__memmove+0x68>
    80008430:	ff867713          	andi	a4,a2,-8
    80008434:	02071793          	slli	a5,a4,0x20
    80008438:	0207d793          	srli	a5,a5,0x20
    8000843c:	00f585b3          	add	a1,a1,a5
    80008440:	40e686bb          	subw	a3,a3,a4
    80008444:	00f507b3          	add	a5,a0,a5
    80008448:	06e60463          	beq	a2,a4,800084b0 <__memmove+0xfc>
    8000844c:	0005c703          	lbu	a4,0(a1)
    80008450:	00e78023          	sb	a4,0(a5)
    80008454:	04068e63          	beqz	a3,800084b0 <__memmove+0xfc>
    80008458:	0015c603          	lbu	a2,1(a1)
    8000845c:	00100713          	li	a4,1
    80008460:	00c780a3          	sb	a2,1(a5)
    80008464:	04e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008468:	0025c603          	lbu	a2,2(a1)
    8000846c:	00200713          	li	a4,2
    80008470:	00c78123          	sb	a2,2(a5)
    80008474:	02e68e63          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008478:	0035c603          	lbu	a2,3(a1)
    8000847c:	00300713          	li	a4,3
    80008480:	00c781a3          	sb	a2,3(a5)
    80008484:	02e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008488:	0045c603          	lbu	a2,4(a1)
    8000848c:	00400713          	li	a4,4
    80008490:	00c78223          	sb	a2,4(a5)
    80008494:	00e68e63          	beq	a3,a4,800084b0 <__memmove+0xfc>
    80008498:	0055c603          	lbu	a2,5(a1)
    8000849c:	00500713          	li	a4,5
    800084a0:	00c782a3          	sb	a2,5(a5)
    800084a4:	00e68663          	beq	a3,a4,800084b0 <__memmove+0xfc>
    800084a8:	0065c703          	lbu	a4,6(a1)
    800084ac:	00e78323          	sb	a4,6(a5)
    800084b0:	00813403          	ld	s0,8(sp)
    800084b4:	01010113          	addi	sp,sp,16
    800084b8:	00008067          	ret
    800084bc:	02061713          	slli	a4,a2,0x20
    800084c0:	02075713          	srli	a4,a4,0x20
    800084c4:	00e587b3          	add	a5,a1,a4
    800084c8:	f0f574e3          	bgeu	a0,a5,800083d0 <__memmove+0x1c>
    800084cc:	02069613          	slli	a2,a3,0x20
    800084d0:	02065613          	srli	a2,a2,0x20
    800084d4:	fff64613          	not	a2,a2
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00c78633          	add	a2,a5,a2
    800084e0:	fff7c683          	lbu	a3,-1(a5)
    800084e4:	fff78793          	addi	a5,a5,-1
    800084e8:	fff70713          	addi	a4,a4,-1
    800084ec:	00d70023          	sb	a3,0(a4)
    800084f0:	fec798e3          	bne	a5,a2,800084e0 <__memmove+0x12c>
    800084f4:	00813403          	ld	s0,8(sp)
    800084f8:	01010113          	addi	sp,sp,16
    800084fc:	00008067          	ret
    80008500:	02069713          	slli	a4,a3,0x20
    80008504:	02075713          	srli	a4,a4,0x20
    80008508:	00170713          	addi	a4,a4,1
    8000850c:	00e50733          	add	a4,a0,a4
    80008510:	00050793          	mv	a5,a0
    80008514:	0005c683          	lbu	a3,0(a1)
    80008518:	00178793          	addi	a5,a5,1
    8000851c:	00158593          	addi	a1,a1,1
    80008520:	fed78fa3          	sb	a3,-1(a5)
    80008524:	fee798e3          	bne	a5,a4,80008514 <__memmove+0x160>
    80008528:	f89ff06f          	j	800084b0 <__memmove+0xfc>

000000008000852c <__putc>:
    8000852c:	fe010113          	addi	sp,sp,-32
    80008530:	00813823          	sd	s0,16(sp)
    80008534:	00113c23          	sd	ra,24(sp)
    80008538:	02010413          	addi	s0,sp,32
    8000853c:	00050793          	mv	a5,a0
    80008540:	fef40593          	addi	a1,s0,-17
    80008544:	00100613          	li	a2,1
    80008548:	00000513          	li	a0,0
    8000854c:	fef407a3          	sb	a5,-17(s0)
    80008550:	fffff097          	auipc	ra,0xfffff
    80008554:	b3c080e7          	jalr	-1220(ra) # 8000708c <console_write>
    80008558:	01813083          	ld	ra,24(sp)
    8000855c:	01013403          	ld	s0,16(sp)
    80008560:	02010113          	addi	sp,sp,32
    80008564:	00008067          	ret

0000000080008568 <__getc>:
    80008568:	fe010113          	addi	sp,sp,-32
    8000856c:	00813823          	sd	s0,16(sp)
    80008570:	00113c23          	sd	ra,24(sp)
    80008574:	02010413          	addi	s0,sp,32
    80008578:	fe840593          	addi	a1,s0,-24
    8000857c:	00100613          	li	a2,1
    80008580:	00000513          	li	a0,0
    80008584:	fffff097          	auipc	ra,0xfffff
    80008588:	ae8080e7          	jalr	-1304(ra) # 8000706c <console_read>
    8000858c:	fe844503          	lbu	a0,-24(s0)
    80008590:	01813083          	ld	ra,24(sp)
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret

00000000800085a0 <console_handler>:
    800085a0:	fe010113          	addi	sp,sp,-32
    800085a4:	00813823          	sd	s0,16(sp)
    800085a8:	00113c23          	sd	ra,24(sp)
    800085ac:	00913423          	sd	s1,8(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	14202773          	csrr	a4,scause
    800085b8:	100027f3          	csrr	a5,sstatus
    800085bc:	0027f793          	andi	a5,a5,2
    800085c0:	06079e63          	bnez	a5,8000863c <console_handler+0x9c>
    800085c4:	00074c63          	bltz	a4,800085dc <console_handler+0x3c>
    800085c8:	01813083          	ld	ra,24(sp)
    800085cc:	01013403          	ld	s0,16(sp)
    800085d0:	00813483          	ld	s1,8(sp)
    800085d4:	02010113          	addi	sp,sp,32
    800085d8:	00008067          	ret
    800085dc:	0ff77713          	andi	a4,a4,255
    800085e0:	00900793          	li	a5,9
    800085e4:	fef712e3          	bne	a4,a5,800085c8 <console_handler+0x28>
    800085e8:	ffffe097          	auipc	ra,0xffffe
    800085ec:	6dc080e7          	jalr	1756(ra) # 80006cc4 <plic_claim>
    800085f0:	00a00793          	li	a5,10
    800085f4:	00050493          	mv	s1,a0
    800085f8:	02f50c63          	beq	a0,a5,80008630 <console_handler+0x90>
    800085fc:	fc0506e3          	beqz	a0,800085c8 <console_handler+0x28>
    80008600:	00050593          	mv	a1,a0
    80008604:	00001517          	auipc	a0,0x1
    80008608:	f8c50513          	addi	a0,a0,-116 # 80009590 <CONSOLE_STATUS+0x580>
    8000860c:	fffff097          	auipc	ra,0xfffff
    80008610:	afc080e7          	jalr	-1284(ra) # 80007108 <__printf>
    80008614:	01013403          	ld	s0,16(sp)
    80008618:	01813083          	ld	ra,24(sp)
    8000861c:	00048513          	mv	a0,s1
    80008620:	00813483          	ld	s1,8(sp)
    80008624:	02010113          	addi	sp,sp,32
    80008628:	ffffe317          	auipc	t1,0xffffe
    8000862c:	6d430067          	jr	1748(t1) # 80006cfc <plic_complete>
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	3e0080e7          	jalr	992(ra) # 80007a10 <uartintr>
    80008638:	fddff06f          	j	80008614 <console_handler+0x74>
    8000863c:	00001517          	auipc	a0,0x1
    80008640:	05450513          	addi	a0,a0,84 # 80009690 <digits+0x78>
    80008644:	fffff097          	auipc	ra,0xfffff
    80008648:	a68080e7          	jalr	-1432(ra) # 800070ac <panic>
	...
