
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	96013103          	ld	sp,-1696(sp) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	141060ef          	jal	ra,8000695c <start>

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
    800010a8:	10c010ef          	jal	ra,800021b4 <_ZN5Riscv20handleEcallExceptionEv>

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
    800011b0:	398010ef          	jal	ra,80002548 <_ZN5Riscv14timerInterruptEv>

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
    800012b8:	505000ef          	jal	ra,80001fbc <_ZN5Riscv17hardwareInterruptEv>

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
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	868080e7          	jalr	-1944(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    newElem->next= nullptr;
    80001774:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	2587b783          	ld	a5,600(a5) # 8000b9d0 <_ZN9Scheduler5firstE>
    80001780:	02078663          	beqz	a5,800017ac <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	24c78793          	addi	a5,a5,588 # 8000b9d0 <_ZN9Scheduler5firstE>
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
    800017b0:	22478793          	addi	a5,a5,548 # 8000b9d0 <_ZN9Scheduler5firstE>
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
    800017d8:	1fc53503          	ld	a0,508(a0) # 8000b9d0 <_ZN9Scheduler5firstE>
    800017dc:	04050263          	beqz	a0,80001820 <_ZN9Scheduler3getEv+0x60>

    Elem* elem=first;
    TCB* t=elem->t;
    800017e0:	00053483          	ld	s1,0(a0)

    first=first->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	0000a717          	auipc	a4,0xa
    800017ec:	1ef73423          	sd	a5,488(a4) # 8000b9d0 <_ZN9Scheduler5firstE>
    if(first==nullptr)last=nullptr;
    800017f0:	02078263          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x54>


    MemoryAllocator::free(elem);
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	8b0080e7          	jalr	-1872(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>

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
    80001818:	1c07b223          	sd	zero,452(a5) # 8000b9d8 <_ZN9Scheduler4lastE>
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
    80001858:	580080e7          	jalr	1408(ra) # 80005dd4 <_Z8userMainv>
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
    80001888:	98c080e7          	jalr	-1652(ra) # 80003210 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    8000188c:	0000a797          	auipc	a5,0xa
    80001890:	0b47b783          	ld	a5,180(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001894:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001898:	10579073          	csrw	stvec,a5

    _console::inputBuff=new BoundedBuffer();
    8000189c:	02000513          	li	a0,32
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	1f0080e7          	jalr	496(ra) # 80001a90 <_Znwm>
    800018a8:	00050493          	mv	s1,a0
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	3b4080e7          	jalr	948(ra) # 80002c60 <_ZN13BoundedBufferC1Ev>
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	0cc7b783          	ld	a5,204(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018bc:	0097b023          	sd	s1,0(a5)
    _console::outputBuff=new BoundedBuffer();
    800018c0:	02000513          	li	a0,32
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	1cc080e7          	jalr	460(ra) # 80001a90 <_Znwm>
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	390080e7          	jalr	912(ra) # 80002c60 <_ZN13BoundedBufferC1Ev>
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	0607b783          	ld	a5,96(a5) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018e0:	0097b023          	sd	s1,0(a5)


    TCB::newThrUserMode=false;
    800018e4:	0000a497          	auipc	s1,0xa
    800018e8:	0844b483          	ld	s1,132(s1) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001908:	06c7b783          	ld	a5,108(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80001934:	0185b583          	ld	a1,24(a1) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x30>
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

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

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
    800019e8:	f9c7b783          	ld	a5,-100(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x68>
    800019ec:	0007b483          	ld	s1,0(a5)
    800019f0:	00048e63          	beqz	s1,80001a0c <main+0x1a0>
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	3b0080e7          	jalr	944(ra) # 80002da8 <_ZN13BoundedBufferD1Ev>
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	0dc080e7          	jalr	220(ra) # 80001ae0 <_ZdlPv>
    delete _console::outputBuff;
    80001a0c:	0000a797          	auipc	a5,0xa
    80001a10:	f2c7b783          	ld	a5,-212(a5) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a14:	0007b483          	ld	s1,0(a5)
    80001a18:	00048e63          	beqz	s1,80001a34 <main+0x1c8>
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	388080e7          	jalr	904(ra) # 80002da8 <_ZN13BoundedBufferD1Ev>
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	0b4080e7          	jalr	180(ra) # 80001ae0 <_ZdlPv>
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80001a34:	00200793          	li	a5,2
    80001a38:	1007b073          	csrc	sstatus,a5
    /*Scheduler::get();
    Scheduler::get();*/

    Riscv::mc_sstatus(Riscv::BitMaskSStatus::SSTATUS_SIE);
    return 0;
    80001a3c:	00000513          	li	a0,0
    80001a40:	03813083          	ld	ra,56(sp)
    80001a44:	03013403          	ld	s0,48(sp)
    80001a48:	02813483          	ld	s1,40(sp)
    80001a4c:	02013903          	ld	s2,32(sp)
    80001a50:	04010113          	addi	sp,sp,64
    80001a54:	00008067          	ret
    80001a58:	00050913          	mv	s2,a0
    _console::inputBuff=new BoundedBuffer();
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	080080e7          	jalr	128(ra) # 80001ae0 <_ZdlPv>
    80001a68:	00090513          	mv	a0,s2
    80001a6c:	0000b097          	auipc	ra,0xb
    80001a70:	0cc080e7          	jalr	204(ra) # 8000cb38 <_Unwind_Resume>
    80001a74:	00050913          	mv	s2,a0
    _console::outputBuff=new BoundedBuffer();
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	064080e7          	jalr	100(ra) # 80001ae0 <_ZdlPv>
    80001a84:	00090513          	mv	a0,s2
    80001a88:	0000b097          	auipc	ra,0xb
    80001a8c:	0b0080e7          	jalr	176(ra) # 8000cb38 <_Unwind_Resume>

0000000080001a90 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00113423          	sd	ra,8(sp)
    80001a98:	00813023          	sd	s0,0(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	914080e7          	jalr	-1772(ra) # 800013b4 <_Z9mem_allocm>
}
    80001aa8:	00813083          	ld	ra,8(sp)
    80001aac:	00013403          	ld	s0,0(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_Znam>:

void *operator new[](uint64 n)
{
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	8ec080e7          	jalr	-1812(ra) # 800013b4 <_Z9mem_allocm>
}
    80001ad0:	00813083          	ld	ra,8(sp)
    80001ad4:	00013403          	ld	s0,0(sp)
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret

0000000080001ae0 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00113423          	sd	ra,8(sp)
    80001ae8:	00813023          	sd	s0,0(sp)
    80001aec:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	904080e7          	jalr	-1788(ra) # 800013f4 <_Z8mem_freePv>
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	8dc080e7          	jalr	-1828(ra) # 800013f4 <_Z8mem_freePv>
    80001b20:	00813083          	ld	ra,8(sp)
    80001b24:	00013403          	ld	s0,0(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN6Thread22wrapperPolymorphThreadEPv>:

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001b40:	00053783          	ld	a5,0(a0)
    80001b44:	0107b783          	ld	a5,16(a5)
    80001b48:	000780e7          	jalr	a5
}
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	01010113          	addi	sp,sp,16
    80001b58:	00008067          	ret

0000000080001b5c <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001b5c:	0000a797          	auipc	a5,0xa
    80001b60:	b8c78793          	addi	a5,a5,-1140 # 8000b6e8 <_ZTV6Thread+0x10>
    80001b64:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001b68:	00853503          	ld	a0,8(a0)
    80001b6c:	02050863          	beqz	a0,80001b9c <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001b80:	00053783          	ld	a5,0(a0)
    80001b84:	0087b783          	ld	a5,8(a5)
    80001b88:	000780e7          	jalr	a5
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret
    80001b9c:	00008067          	ret

0000000080001ba0 <_ZN14PeriodicThreadD1Ev>:

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}

PeriodicThread::~PeriodicThread() {
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00113423          	sd	ra,8(sp)
    80001ba8:	00813023          	sd	s0,0(sp)
    80001bac:	01010413          	addi	s0,sp,16
    80001bb0:	0000a717          	auipc	a4,0xa
    80001bb4:	b8070713          	addi	a4,a4,-1152 # 8000b730 <_ZTV14PeriodicThread+0x10>
    80001bb8:	00e53023          	sd	a4,0(a0)
    period=0;
    80001bbc:	02053023          	sd	zero,32(a0)
PeriodicThread::~PeriodicThread() {
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	f9c080e7          	jalr	-100(ra) # 80001b5c <_ZN6ThreadD1Ev>
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001bd8:	fe010113          	addi	sp,sp,-32
    80001bdc:	00113c23          	sd	ra,24(sp)
    80001be0:	00813823          	sd	s0,16(sp)
    80001be4:	00913423          	sd	s1,8(sp)
    80001be8:	02010413          	addi	s0,sp,32
    80001bec:	00050493          	mv	s1,a0
}
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	f6c080e7          	jalr	-148(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	ee4080e7          	jalr	-284(ra) # 80001ae0 <_ZdlPv>
    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	02010113          	addi	sp,sp,32
    80001c14:	00008067          	ret

0000000080001c18 <_ZN14PeriodicThreadD0Ev>:
PeriodicThread::~PeriodicThread() {
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	02010413          	addi	s0,sp,32
    80001c2c:	00050493          	mv	s1,a0
}
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	f70080e7          	jalr	-144(ra) # 80001ba0 <_ZN14PeriodicThreadD1Ev>
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	ea4080e7          	jalr	-348(ra) # 80001ae0 <_ZdlPv>
    80001c44:	01813083          	ld	ra,24(sp)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	00813483          	ld	s1,8(sp)
    80001c50:	02010113          	addi	sp,sp,32
    80001c54:	00008067          	ret

0000000080001c58 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::run() {
    80001c58:	fe010113          	addi	sp,sp,-32
    80001c5c:	00113c23          	sd	ra,24(sp)
    80001c60:	00813823          	sd	s0,16(sp)
    80001c64:	00913423          	sd	s1,8(sp)
    80001c68:	02010413          	addi	s0,sp,32
    80001c6c:	00050493          	mv	s1,a0
    while(period!=0){
    80001c70:	0204b783          	ld	a5,32(s1)
    80001c74:	02078263          	beqz	a5,80001c98 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001c78:	0004b783          	ld	a5,0(s1)
    80001c7c:	0187b783          	ld	a5,24(a5)
    80001c80:	00048513          	mv	a0,s1
    80001c84:	000780e7          	jalr	a5
        time_sleep(period);
    80001c88:	0204b503          	ld	a0,32(s1)
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	854080e7          	jalr	-1964(ra) # 800014e0 <_Z10time_sleepm>
    while(period!=0){
    80001c94:	fddff06f          	j	80001c70 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001c98:	01813083          	ld	ra,24(sp)
    80001c9c:	01013403          	ld	s0,16(sp)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret

0000000080001cac <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	a5478793          	addi	a5,a5,-1452 # 8000b710 <_ZTV9Semaphore+0x10>
    80001cc4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001cc8:	00853503          	ld	a0,8(a0)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	930080e7          	jalr	-1744(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ce4:	fe010113          	addi	sp,sp,-32
    80001ce8:	00113c23          	sd	ra,24(sp)
    80001cec:	00813823          	sd	s0,16(sp)
    80001cf0:	00913423          	sd	s1,8(sp)
    80001cf4:	02010413          	addi	s0,sp,32
    80001cf8:	00050493          	mv	s1,a0
}
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	fb0080e7          	jalr	-80(ra) # 80001cac <_ZN9SemaphoreD1Ev>
    80001d04:	00048513          	mv	a0,s1
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	dd8080e7          	jalr	-552(ra) # 80001ae0 <_ZdlPv>
    80001d10:	01813083          	ld	ra,24(sp)
    80001d14:	01013403          	ld	s0,16(sp)
    80001d18:	00813483          	ld	s1,8(sp)
    80001d1c:	02010113          	addi	sp,sp,32
    80001d20:	00008067          	ret

0000000080001d24 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    80001d30:	0000a797          	auipc	a5,0xa
    80001d34:	9b878793          	addi	a5,a5,-1608 # 8000b6e8 <_ZTV6Thread+0x10>
    80001d38:	00f53023          	sd	a5,0(a0)
    80001d3c:	00053423          	sd	zero,8(a0)
    80001d40:	00b53823          	sd	a1,16(a0)
    80001d44:	00c53c23          	sd	a2,24(a0)
    80001d48:	00813403          	ld	s0,8(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN6Thread5startEv>:
int Thread::start() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001d64:	01853603          	ld	a2,24(a0)
    80001d68:	01053583          	ld	a1,16(a0)
    80001d6c:	00850513          	addi	a0,a0,8
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	6c4080e7          	jalr	1732(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	7c4080e7          	jalr	1988(ra) # 8000155c <_Z15thread_dispatchv>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	0000a797          	auipc	a5,0xa
    80001dc0:	92c78793          	addi	a5,a5,-1748 # 8000b6e8 <_ZTV6Thread+0x10>
    80001dc4:	00f53023          	sd	a5,0(a0)
    80001dc8:	00053423          	sd	zero,8(a0)
    80001dcc:	00000797          	auipc	a5,0x0
    80001dd0:	d6478793          	addi	a5,a5,-668 # 80001b30 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80001dd4:	00f53823          	sd	a5,16(a0)
    80001dd8:	00a53c23          	sd	a0,24(a0)
    80001ddc:	00813403          	ld	s0,8(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001df8:	00853503          	ld	a0,8(a0)
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	78c080e7          	jalr	1932(ra) # 80001588 <_Z11thread_joinP3TCB>
}
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	6bc080e7          	jalr	1724(ra) # 800014e0 <_Z10time_sleepm>
}
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    80001e4c:	0000a797          	auipc	a5,0xa
    80001e50:	8c478793          	addi	a5,a5,-1852 # 8000b710 <_ZTV9Semaphore+0x10>
    80001e54:	00f53023          	sd	a5,0(a0)
    80001e58:	00053423          	sd	zero,8(a0)
    sem_open(&this->myHandle, init);
    80001e5c:	00850513          	addi	a0,a0,8
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	758080e7          	jalr	1880(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e88:	00853503          	ld	a0,8(a0)
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	7bc080e7          	jalr	1980(ra) # 80001648 <_Z8sem_waitP4_sem>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001eb4:	00853503          	ld	a0,8(a0)
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	7dc080e7          	jalr	2012(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    period=0;
    80001edc:	02053023          	sd	zero,32(a0)
}
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	01213023          	sd	s2,0(sp)
    80001f00:	02010413          	addi	s0,sp,32
    80001f04:	00050493          	mv	s1,a0
    80001f08:	00058913          	mv	s2,a1
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	ea4080e7          	jalr	-348(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80001f14:	0000a797          	auipc	a5,0xa
    80001f18:	81c78793          	addi	a5,a5,-2020 # 8000b730 <_ZTV14PeriodicThread+0x10>
    80001f1c:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80001f20:	0324b023          	sd	s2,32(s1)
}
    80001f24:	01813083          	ld	ra,24(sp)
    80001f28:	01013403          	ld	s0,16(sp)
    80001f2c:	00813483          	ld	s1,8(sp)
    80001f30:	00013903          	ld	s2,0(sp)
    80001f34:	02010113          	addi	sp,sp,32
    80001f38:	00008067          	ret

0000000080001f3c <_ZN7Console4getcEv>:

char Console::getc() {
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00113423          	sd	ra,8(sp)
    80001f44:	00813023          	sd	s0,0(sp)
    80001f48:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f4c:	fffff097          	auipc	ra,0xfffff
    80001f50:	794080e7          	jalr	1940(ra) # 800016e0 <_Z4getcv>
}
    80001f54:	00813083          	ld	ra,8(sp)
    80001f58:	00013403          	ld	s0,0(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00113423          	sd	ra,8(sp)
    80001f6c:	00813023          	sd	s0,0(sp)
    80001f70:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f74:	fffff097          	auipc	ra,0xfffff
    80001f78:	7a8080e7          	jalr	1960(ra) # 8000171c <_Z4putcc>
}
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00813423          	sd	s0,8(sp)
    80001f94:	01010413          	addi	s0,sp,16
    80001f98:	00813403          	ld	s0,8(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00813423          	sd	s0,8(sp)
    80001fac:	01010413          	addi	s0,sp,16
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN5Riscv17hardwareInterruptEv>:
        }
        mc_sip(SIP_SSIP);
    }
}

void Riscv::hardwareInterrupt() {
    80001fbc:	fd010113          	addi	sp,sp,-48
    80001fc0:	02113423          	sd	ra,40(sp)
    80001fc4:	02813023          	sd	s0,32(sp)
    80001fc8:	00913c23          	sd	s1,24(sp)
    80001fcc:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001fd0:	142027f3          	csrr	a5,scause
    80001fd4:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001fd8:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000009UL){
        //prekid konzola
        console_handler();
    }*/
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80001fdc:	fff00793          	li	a5,-1
    80001fe0:	03f79793          	slli	a5,a5,0x3f
    80001fe4:	00978793          	addi	a5,a5,9
    80001fe8:	00f70c63          	beq	a4,a5,80002000 <_ZN5Riscv17hardwareInterruptEv+0x44>
            }
        }

        plic_complete(intNumber);
    }
}
    80001fec:	02813083          	ld	ra,40(sp)
    80001ff0:	02013403          	ld	s0,32(sp)
    80001ff4:	01813483          	ld	s1,24(sp)
    80001ff8:	03010113          	addi	sp,sp,48
    80001ffc:	00008067          	ret
        int intNumber=plic_claim();
    80002000:	00005097          	auipc	ra,0x5
    80002004:	1b4080e7          	jalr	436(ra) # 800071b4 <plic_claim>
    80002008:	00050493          	mv	s1,a0
        if(intNumber==CONSOLE_IRQ){
    8000200c:	00a00793          	li	a5,10
    80002010:	00f50a63          	beq	a0,a5,80002024 <_ZN5Riscv17hardwareInterruptEv+0x68>
        plic_complete(intNumber);
    80002014:	00048513          	mv	a0,s1
    80002018:	00005097          	auipc	ra,0x5
    8000201c:	1d4080e7          	jalr	468(ra) # 800071ec <plic_complete>
}
    80002020:	fcdff06f          	j	80001fec <_ZN5Riscv17hardwareInterruptEv+0x30>
            while((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002024:	0000a797          	auipc	a5,0xa
    80002028:	9047b783          	ld	a5,-1788(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000202c:	0007b783          	ld	a5,0(a5)
    80002030:	0007c783          	lbu	a5,0(a5)
    80002034:	0017f793          	andi	a5,a5,1
    80002038:	fc078ee3          	beqz	a5,80002014 <_ZN5Riscv17hardwareInterruptEv+0x58>
                char c= *(char*)CONSOLE_RX_DATA;
    8000203c:	0000a797          	auipc	a5,0xa
    80002040:	8e47b783          	ld	a5,-1820(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002044:	0007b783          	ld	a5,0(a5)
                _console::inputBuff_put(c);
    80002048:	0007c503          	lbu	a0,0(a5)
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	e1c080e7          	jalr	-484(ra) # 80002e68 <_ZN8_console13inputBuff_putEc>
            while((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002054:	fd1ff06f          	j	80002024 <_ZN5Riscv17hardwareInterruptEv+0x68>

0000000080002058 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002064:	02000793          	li	a5,32
    80002068:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
    8000206c:	0000a797          	auipc	a5,0xa
    80002070:	8fc7b783          	ld	a5,-1796(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002074:	0007c783          	lbu	a5,0(a5)
    80002078:	02078063          	beqz	a5,80002098 <_ZN5Riscv10popSppSpieEv+0x40>
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    8000207c:	10000793          	li	a5,256
    80002080:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    80002084:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002088:	10200073          	sret
}
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002098:	10000793          	li	a5,256
    8000209c:	1007a073          	csrs	sstatus,a5
}
    800020a0:	fe5ff06f          	j	80002084 <_ZN5Riscv10popSppSpieEv+0x2c>

00000000800020a4 <_ZN5Riscv10putToSleepEm>:


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    800020a4:	10050463          	beqz	a0,800021ac <_ZN5Riscv10putToSleepEm+0x108>
int Riscv::putToSleep(time_t time) {
    800020a8:	fe010113          	addi	sp,sp,-32
    800020ac:	00113c23          	sd	ra,24(sp)
    800020b0:	00813823          	sd	s0,16(sp)
    800020b4:	00913423          	sd	s1,8(sp)
    800020b8:	01213023          	sd	s2,0(sp)
    800020bc:	02010413          	addi	s0,sp,32
    800020c0:	00050493          	mv	s1,a0
    TCB::running->setSleeping(true);
    800020c4:	0000a917          	auipc	s2,0xa
    800020c8:	8ac93903          	ld	s2,-1876(s2) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x58>
    800020cc:	00093783          	ld	a5,0(s2)
    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    800020d0:	00100713          	li	a4,1
    800020d4:	04e780a3          	sb	a4,65(a5)

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    800020d8:	00100513          	li	a0,1
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	ef4080e7          	jalr	-268(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
    newElem->thr=TCB::running;
    800020e4:	00093783          	ld	a5,0(s2)
    800020e8:	00f53023          	sd	a5,0(a0)

    if(!Riscv::headSleeping){
    800020ec:	0000a617          	auipc	a2,0xa
    800020f0:	8f463603          	ld	a2,-1804(a2) # 8000b9e0 <_ZN5Riscv12headSleepingE>
    800020f4:	04060c63          	beqz	a2,8000214c <_ZN5Riscv10putToSleepEm+0xa8>
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
    800020f8:	00863703          	ld	a4,8(a2)
    800020fc:	06976263          	bltu	a4,s1,80002160 <_ZN5Riscv10putToSleepEm+0xbc>
            newElem->toSleepRel=time;
    80002100:	00953423          	sd	s1,8(a0)
            newElem->next=Riscv::headSleeping;
    80002104:	00c53823          	sd	a2,16(a0)
            headSleeping->toSleepRel-=time;
    80002108:	00863703          	ld	a4,8(a2)
    8000210c:	40970733          	sub	a4,a4,s1
    80002110:	00e63423          	sd	a4,8(a2)
            headSleeping=newElem;
    80002114:	0000a797          	auipc	a5,0xa
    80002118:	8ca7b623          	sd	a0,-1844(a5) # 8000b9e0 <_ZN5Riscv12headSleepingE>
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    8000211c:	0000a797          	auipc	a5,0xa
    80002120:	8347b783          	ld	a5,-1996(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002124:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	5dc080e7          	jalr	1500(ra) # 80002704 <_ZN3TCB8dispatchEv>
    return 0;
    80002130:	00000513          	li	a0,0
}
    80002134:	01813083          	ld	ra,24(sp)
    80002138:	01013403          	ld	s0,16(sp)
    8000213c:	00813483          	ld	s1,8(sp)
    80002140:	00013903          	ld	s2,0(sp)
    80002144:	02010113          	addi	sp,sp,32
    80002148:	00008067          	ret
        newElem->toSleepRel=time;
    8000214c:	00953423          	sd	s1,8(a0)
        newElem->next=nullptr;
    80002150:	00053823          	sd	zero,16(a0)
        headSleeping=newElem;
    80002154:	0000a797          	auipc	a5,0xa
    80002158:	88a7b623          	sd	a0,-1908(a5) # 8000b9e0 <_ZN5Riscv12headSleepingE>
    8000215c:	fc1ff06f          	j	8000211c <_ZN5Riscv10putToSleepEm+0x78>
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
    80002160:	40e48733          	sub	a4,s1,a4
            SleepingElem* pom=headSleeping->next;
    80002164:	01063783          	ld	a5,16(a2)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80002168:	00078e63          	beqz	a5,80002184 <_ZN5Riscv10putToSleepEm+0xe0>
    8000216c:	0087b683          	ld	a3,8(a5)
    80002170:	00e6fa63          	bgeu	a3,a4,80002184 <_ZN5Riscv10putToSleepEm+0xe0>
                relTime-=pom->toSleepRel;
    80002174:	40d70733          	sub	a4,a4,a3
                prev=pom;
    80002178:	00078613          	mv	a2,a5
                pom=pom->next;
    8000217c:	0107b783          	ld	a5,16(a5)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80002180:	fe9ff06f          	j	80002168 <_ZN5Riscv10putToSleepEm+0xc4>
            if(pom==nullptr){
    80002184:	02078063          	beqz	a5,800021a4 <_ZN5Riscv10putToSleepEm+0x100>
                newElem->next=pom;
    80002188:	00f53823          	sd	a5,16(a0)
                pom->toSleepRel-=relTime;
    8000218c:	0087b683          	ld	a3,8(a5)
    80002190:	40e686b3          	sub	a3,a3,a4
    80002194:	00d7b423          	sd	a3,8(a5)
            newElem->toSleepRel=relTime;
    80002198:	00e53423          	sd	a4,8(a0)
            prev->next=newElem;
    8000219c:	00a63823          	sd	a0,16(a2)
    800021a0:	f7dff06f          	j	8000211c <_ZN5Riscv10putToSleepEm+0x78>
                newElem->next= nullptr;
    800021a4:	00053823          	sd	zero,16(a0)
    800021a8:	ff1ff06f          	j	80002198 <_ZN5Riscv10putToSleepEm+0xf4>
    if(time<=0)return -1;
    800021ac:	fff00513          	li	a0,-1
}
    800021b0:	00008067          	ret

00000000800021b4 <_ZN5Riscv20handleEcallExceptionEv>:
void Riscv::handleEcallException(){
    800021b4:	f9010113          	addi	sp,sp,-112
    800021b8:	06113423          	sd	ra,104(sp)
    800021bc:	06813023          	sd	s0,96(sp)
    800021c0:	04913c23          	sd	s1,88(sp)
    800021c4:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800021c8:	142027f3          	csrr	a5,scause
    800021cc:	faf43023          	sd	a5,-96(s0)
    return scause;
    800021d0:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    800021d4:	05043783          	ld	a5,80(s0)
    800021d8:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800021dc:	05843783          	ld	a5,88(s0)
    800021e0:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    800021e4:	06043783          	ld	a5,96(s0)
    800021e8:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    800021ec:	06843783          	ld	a5,104(s0)
    800021f0:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    800021f4:	07043783          	ld	a5,112(s0)
    800021f8:	faf43c23          	sd	a5,-72(s0)
    if(scause==0x09UL || scause==0x08UL){
    800021fc:	ff848713          	addi	a4,s1,-8
    80002200:	00100793          	li	a5,1
    80002204:	22e7e263          	bltu	a5,a4,80002428 <_ZN5Riscv20handleEcallExceptionEv+0x274>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002208:	141027f3          	csrr	a5,sepc
    8000220c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002210:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc=r_sepc()+4;
    80002214:	00478793          	addi	a5,a5,4
    80002218:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    8000221c:	100027f3          	csrr	a5,sstatus
    80002220:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002224:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus=r_sstatus();
    80002228:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    8000222c:	fd843703          	ld	a4,-40(s0)
    80002230:	00100793          	li	a5,1
    80002234:	0af70463          	beq	a4,a5,800022dc <_ZN5Riscv20handleEcallExceptionEv+0x128>
        else if(a0==0x02){
    80002238:	fd843703          	ld	a4,-40(s0)
    8000223c:	00200793          	li	a5,2
    80002240:	0cf70863          	beq	a4,a5,80002310 <_ZN5Riscv20handleEcallExceptionEv+0x15c>
        else if(a0==0x11){
    80002244:	fd843703          	ld	a4,-40(s0)
    80002248:	01100793          	li	a5,17
    8000224c:	0cf70c63          	beq	a4,a5,80002324 <_ZN5Riscv20handleEcallExceptionEv+0x170>
        else if(a0==0x12){
    80002250:	fd843703          	ld	a4,-40(s0)
    80002254:	01200793          	li	a5,18
    80002258:	10f70263          	beq	a4,a5,8000235c <_ZN5Riscv20handleEcallExceptionEv+0x1a8>
        else if(a0==0x13){
    8000225c:	fd843703          	ld	a4,-40(s0)
    80002260:	01300793          	li	a5,19
    80002264:	10f70463          	beq	a4,a5,8000236c <_ZN5Riscv20handleEcallExceptionEv+0x1b8>
        else if(a0==0x41){
    80002268:	fd843703          	ld	a4,-40(s0)
    8000226c:	04100793          	li	a5,65
    80002270:	10f70a63          	beq	a4,a5,80002384 <_ZN5Riscv20handleEcallExceptionEv+0x1d0>
        else if(a0==0x42){
    80002274:	fd843703          	ld	a4,-40(s0)
    80002278:	04200793          	li	a5,66
    8000227c:	10f70c63          	beq	a4,a5,80002394 <_ZN5Riscv20handleEcallExceptionEv+0x1e0>
        else if(a0==0x21){
    80002280:	fd843703          	ld	a4,-40(s0)
    80002284:	02100793          	li	a5,33
    80002288:	12f70063          	beq	a4,a5,800023a8 <_ZN5Riscv20handleEcallExceptionEv+0x1f4>
        else if(a0==0x23){
    8000228c:	fd843703          	ld	a4,-40(s0)
    80002290:	02300793          	li	a5,35
    80002294:	14f70463          	beq	a4,a5,800023dc <_ZN5Riscv20handleEcallExceptionEv+0x228>
        else if(a0==0x22){
    80002298:	fd843703          	ld	a4,-40(s0)
    8000229c:	02200793          	li	a5,34
    800022a0:	14f70863          	beq	a4,a5,800023f0 <_ZN5Riscv20handleEcallExceptionEv+0x23c>
        else if(a0==0x24){
    800022a4:	fd843703          	ld	a4,-40(s0)
    800022a8:	02400793          	li	a5,36
    800022ac:	14f70c63          	beq	a4,a5,80002404 <_ZN5Riscv20handleEcallExceptionEv+0x250>
        else if(a0==0x14){
    800022b0:	fd843703          	ld	a4,-40(s0)
    800022b4:	01400793          	li	a5,20
    800022b8:	16f70063          	beq	a4,a5,80002418 <_ZN5Riscv20handleEcallExceptionEv+0x264>
        else if(a0==0x31){
    800022bc:	fd843703          	ld	a4,-40(s0)
    800022c0:	03100793          	li	a5,49
    800022c4:	02f71463          	bne	a4,a5,800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            time_t time=(time_t)a1;
    800022c8:	fd043503          	ld	a0,-48(s0)
            int stat=Riscv::putToSleep(time);
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	dd8080e7          	jalr	-552(ra) # 800020a4 <_ZN5Riscv10putToSleepEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800022d4:	04a43823          	sd	a0,80(s0)
    800022d8:	0140006f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            void *ptr=MemoryAllocator::alloc(a1);
    800022dc:	fd043503          	ld	a0,-48(s0)
    800022e0:	00001097          	auipc	ra,0x1
    800022e4:	cf0080e7          	jalr	-784(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    800022e8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800022ec:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800022f0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800022f4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800022f8:	14179073          	csrw	sepc,a5
}
    800022fc:	06813083          	ld	ra,104(sp)
    80002300:	06013403          	ld	s0,96(sp)
    80002304:	05813483          	ld	s1,88(sp)
    80002308:	07010113          	addi	sp,sp,112
    8000230c:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    80002310:	fd043503          	ld	a0,-48(s0)
    80002314:	00001097          	auipc	ra,0x1
    80002318:	d90080e7          	jalr	-624(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000231c:	04a43823          	sd	a0,80(s0)
    80002320:	fcdff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB* handle= TCB::createThread((TCB::Body)a2, (char*)a4, (void*)a3);
    80002324:	fc843503          	ld	a0,-56(s0)
    80002328:	fb843583          	ld	a1,-72(s0)
    8000232c:	fc043603          	ld	a2,-64(s0)
    80002330:	00000097          	auipc	ra,0x0
    80002334:	504080e7          	jalr	1284(ra) # 80002834 <_ZN3TCB12createThreadEPFvPvEPcS0_>
            if(!handle){
    80002338:	00050c63          	beqz	a0,80002350 <_ZN5Riscv20handleEcallExceptionEv+0x19c>
                TCB** retHandle=(TCB**)a1;
    8000233c:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    80002340:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002344:	00000793          	li	a5,0
    80002348:	04f43823          	sd	a5,80(s0)
    8000234c:	fa1ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002350:	fff00793          	li	a5,-1
    80002354:	04f43823          	sd	a5,80(s0)
    80002358:	f95ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            int stat=TCB::exit();
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	598080e7          	jalr	1432(ra) # 800028f4 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002364:	04a43823          	sd	a0,80(s0)
    80002368:	f85ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    8000236c:	00009797          	auipc	a5,0x9
    80002370:	5e47b783          	ld	a5,1508(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002374:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	38c080e7          	jalr	908(ra) # 80002704 <_ZN3TCB8dispatchEv>
    80002380:	f6dff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c= _console::inputBuff_take();
    80002384:	00001097          	auipc	ra,0x1
    80002388:	b18080e7          	jalr	-1256(ra) # 80002e9c <_ZN8_console14inputBuff_takeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    8000238c:	04a43823          	sd	a0,80(s0)
    80002390:	f5dff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=(char)a1;
    80002394:	fd043503          	ld	a0,-48(s0)
            _console::outputBuff_put(c);
    80002398:	0ff57513          	andi	a0,a0,255
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	b30080e7          	jalr	-1232(ra) # 80002ecc <_ZN8_console14outputBuff_putEc>
    800023a4:	f49ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=_sem::open((int)a2);
    800023a8:	fc843503          	ld	a0,-56(s0)
    800023ac:	0005051b          	sext.w	a0,a0
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	610080e7          	jalr	1552(ra) # 800029c0 <_ZN4_sem4openEi>
            if(!handle){
    800023b8:	00050c63          	beqz	a0,800023d0 <_ZN5Riscv20handleEcallExceptionEv+0x21c>
                _sem** retHandle=(_sem**)a1;
    800023bc:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    800023c0:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    800023c4:	00000793          	li	a5,0
    800023c8:	04f43823          	sd	a5,80(s0)
    800023cc:	f21ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    800023d0:	fff00793          	li	a5,-1
    800023d4:	04f43823          	sd	a5,80(s0)
    800023d8:	f15ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023dc:	fd043503          	ld	a0,-48(s0)
            int stat=handle->wait();
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	6dc080e7          	jalr	1756(ra) # 80002abc <_ZN4_sem4waitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023e8:	04a43823          	sd	a0,80(s0)
    800023ec:	f01ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023f0:	fd043503          	ld	a0,-48(s0)
            int stat=handle->close();
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	7fc080e7          	jalr	2044(ra) # 80002bf0 <_ZN4_sem5closeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023fc:	04a43823          	sd	a0,80(s0)
    80002400:	eedff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002404:	fd043503          	ld	a0,-48(s0)
            int stat=handle->signal();
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	790080e7          	jalr	1936(ra) # 80002b98 <_ZN4_sem6signalEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002410:	04a43823          	sd	a0,80(s0)
    80002414:	ed9ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    80002418:	fd043503          	ld	a0,-48(s0)
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	52c080e7          	jalr	1324(ra) # 80002948 <_ZN3TCB4joinEPS_>
    80002424:	ec9ff06f          	j	800022ec <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    80002428:	00007517          	auipc	a0,0x7
    8000242c:	bf850513          	addi	a0,a0,-1032 # 80009020 <CONSOLE_STATUS+0x10>
    80002430:	00003097          	auipc	ra,0x3
    80002434:	2dc080e7          	jalr	732(ra) # 8000570c <_Z11printStringPKc>
        printInt(scause);
    80002438:	00000613          	li	a2,0
    8000243c:	00a00593          	li	a1,10
    80002440:	0004851b          	sext.w	a0,s1
    80002444:	00003097          	auipc	ra,0x3
    80002448:	478080e7          	jalr	1144(ra) # 800058bc <_Z8printIntiii>
        printString("\nsepc:");
    8000244c:	00007517          	auipc	a0,0x7
    80002450:	bdc50513          	addi	a0,a0,-1060 # 80009028 <CONSOLE_STATUS+0x18>
    80002454:	00003097          	auipc	ra,0x3
    80002458:	2b8080e7          	jalr	696(ra) # 8000570c <_Z11printStringPKc>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    8000245c:	141027f3          	csrr	a5,sepc
    80002460:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002464:	fb043503          	ld	a0,-80(s0)
        printInt(r_sepc());
    80002468:	00000613          	li	a2,0
    8000246c:	00a00593          	li	a1,10
    80002470:	0005051b          	sext.w	a0,a0
    80002474:	00003097          	auipc	ra,0x3
    80002478:	448080e7          	jalr	1096(ra) # 800058bc <_Z8printIntiii>
        printString("\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	efc50513          	addi	a0,a0,-260 # 80009378 <CONSOLE_STATUS+0x368>
    80002484:	00003097          	auipc	ra,0x3
    80002488:	288080e7          	jalr	648(ra) # 8000570c <_Z11printStringPKc>
        while(true){
    8000248c:	0000006f          	j	8000248c <_ZN5Riscv20handleEcallExceptionEv+0x2d8>

0000000080002490 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    80002490:	00009797          	auipc	a5,0x9
    80002494:	5507b783          	ld	a5,1360(a5) # 8000b9e0 <_ZN5Riscv12headSleepingE>
    80002498:	00078a63          	beqz	a5,800024ac <_ZN5Riscv18updateSleepingListEv+0x1c>
        if(--headSleeping->toSleepRel==0){
    8000249c:	0087b703          	ld	a4,8(a5)
    800024a0:	fff70713          	addi	a4,a4,-1
    800024a4:	00e7b423          	sd	a4,8(a5)
    800024a8:	00070463          	beqz	a4,800024b0 <_ZN5Riscv18updateSleepingListEv+0x20>
    800024ac:	00008067          	ret
void Riscv::updateSleepingList() {
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00113423          	sd	ra,8(sp)
    800024b8:	00813023          	sd	s0,0(sp)
    800024bc:	01010413          	addi	s0,sp,16
            headSleeping->thr->setSleeping(false);
    800024c0:	0007b703          	ld	a4,0(a5)
    800024c4:	040700a3          	sb	zero,65(a4)
            Scheduler::put(headSleeping->thr);
    800024c8:	0007b503          	ld	a0,0(a5)
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	280080e7          	jalr	640(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
            SleepingElem* old=headSleeping;
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	50c78793          	addi	a5,a5,1292 # 8000b9e0 <_ZN5Riscv12headSleepingE>
    800024dc:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    800024e0:	01053703          	ld	a4,16(a0)
    800024e4:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	bbc080e7          	jalr	-1092(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    800024f0:	00009797          	auipc	a5,0x9
    800024f4:	4f07b783          	ld	a5,1264(a5) # 8000b9e0 <_ZN5Riscv12headSleepingE>
    800024f8:	04078063          	beqz	a5,80002538 <_ZN5Riscv18updateSleepingListEv+0xa8>
    800024fc:	0087b703          	ld	a4,8(a5)
    80002500:	02071c63          	bnez	a4,80002538 <_ZN5Riscv18updateSleepingListEv+0xa8>
                headSleeping->thr->setSleeping(false);
    80002504:	0007b703          	ld	a4,0(a5)
    80002508:	040700a3          	sb	zero,65(a4)
                Scheduler::put(headSleeping->thr);
    8000250c:	0007b503          	ld	a0,0(a5)
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	23c080e7          	jalr	572(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
                old=headSleeping;
    80002518:	00009797          	auipc	a5,0x9
    8000251c:	4c878793          	addi	a5,a5,1224 # 8000b9e0 <_ZN5Riscv12headSleepingE>
    80002520:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    80002524:	01053703          	ld	a4,16(a0)
    80002528:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	b78080e7          	jalr	-1160(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002534:	fbdff06f          	j	800024f0 <_ZN5Riscv18updateSleepingListEv+0x60>
            }
        }
    }
}
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN5Riscv14timerInterruptEv>:
void Riscv::timerInterrupt() {
    80002548:	fc010113          	addi	sp,sp,-64
    8000254c:	02113c23          	sd	ra,56(sp)
    80002550:	02813823          	sd	s0,48(sp)
    80002554:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002558:	142027f3          	csrr	a5,scause
    8000255c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002560:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000001UL){
    80002564:	fff00793          	li	a5,-1
    80002568:	03f79793          	slli	a5,a5,0x3f
    8000256c:	00178793          	addi	a5,a5,1
    80002570:	00f70a63          	beq	a4,a5,80002584 <_ZN5Riscv14timerInterruptEv+0x3c>
}
    80002574:	03813083          	ld	ra,56(sp)
    80002578:	03013403          	ld	s0,48(sp)
    8000257c:	04010113          	addi	sp,sp,64
    80002580:	00008067          	ret
        updateSleepingList();
    80002584:	00000097          	auipc	ra,0x0
    80002588:	f0c080e7          	jalr	-244(ra) # 80002490 <_ZN5Riscv18updateSleepingListEv>
        TCB::timeSliceCounter++;
    8000258c:	00009717          	auipc	a4,0x9
    80002590:	3c473703          	ld	a4,964(a4) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002594:	00073783          	ld	a5,0(a4)
    80002598:	00178793          	addi	a5,a5,1
    8000259c:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800025a0:	00009717          	auipc	a4,0x9
    800025a4:	3d073703          	ld	a4,976(a4) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x58>
    800025a8:	00073703          	ld	a4,0(a4)
        return timeSlice;
    800025ac:	02873703          	ld	a4,40(a4)
    800025b0:	00e7f863          	bgeu	a5,a4,800025c0 <_ZN5Riscv14timerInterruptEv+0x78>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    800025b4:	00200793          	li	a5,2
    800025b8:	1447b073          	csrc	sip,a5
}
    800025bc:	fb9ff06f          	j	80002574 <_ZN5Riscv14timerInterruptEv+0x2c>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800025c0:	141027f3          	csrr	a5,sepc
    800025c4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800025c8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc=r_sepc();
    800025cc:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800025d0:	100027f3          	csrr	a5,sstatus
    800025d4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800025d8:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus=r_sstatus();
    800025dc:	fcf43823          	sd	a5,-48(s0)
            TCB::timeSliceCounter=0;
    800025e0:	00009797          	auipc	a5,0x9
    800025e4:	3707b783          	ld	a5,880(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x38>
    800025e8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	118080e7          	jalr	280(ra) # 80002704 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800025f4:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800025f8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800025fc:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002600:	14179073          	csrw	sepc,a5
}
    80002604:	fb1ff06f          	j	800025b4 <_ZN5Riscv14timerInterruptEv+0x6c>

0000000080002608 <_ZN3TCBD1Ev>:
                                     sleeping(false)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002608:	00009797          	auipc	a5,0x9
    8000260c:	15878793          	addi	a5,a5,344 # 8000b760 <_ZTV3TCB+0x10>
    80002610:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    80002614:	01053503          	ld	a0,16(a0)
    80002618:	02050663          	beqz	a0,80002644 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    delete[] stack;
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	4dc080e7          	jalr	1244(ra) # 80001b08 <_ZdaPv>
}
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret
    80002644:	00008067          	ret

0000000080002648 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002648:	fe010113          	addi	sp,sp,-32
    8000264c:	00113c23          	sd	ra,24(sp)
    80002650:	00813823          	sd	s0,16(sp)
    80002654:	00913423          	sd	s1,8(sp)
    80002658:	02010413          	addi	s0,sp,32
    8000265c:	00050493          	mv	s1,a0
}
    80002660:	00000097          	auipc	ra,0x0
    80002664:	fa8080e7          	jalr	-88(ra) # 80002608 <_ZN3TCBD1Ev>
    80002668:	00048513          	mv	a0,s1
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	474080e7          	jalr	1140(ra) # 80001ae0 <_ZdlPv>
    80002674:	01813083          	ld	ra,24(sp)
    80002678:	01013403          	ld	s0,16(sp)
    8000267c:	00813483          	ld	s1,8(sp)
    80002680:	02010113          	addi	sp,sp,32
    80002684:	00008067          	ret

0000000080002688 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    80002688:	fe010113          	addi	sp,sp,-32
    8000268c:	00113c23          	sd	ra,24(sp)
    80002690:	00813823          	sd	s0,16(sp)
    80002694:	00913423          	sd	s1,8(sp)
    80002698:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	9bc080e7          	jalr	-1604(ra) # 80002058 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800026a4:	00009497          	auipc	s1,0x9
    800026a8:	34448493          	addi	s1,s1,836 # 8000b9e8 <_ZN3TCB7runningE>
    800026ac:	0004b783          	ld	a5,0(s1)
    800026b0:	0087b703          	ld	a4,8(a5)
    800026b4:	0387b503          	ld	a0,56(a5)
    800026b8:	000700e7          	jalr	a4
    running->setFinished(true);
    800026bc:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800026c0:	00100713          	li	a4,1
    800026c4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	e94080e7          	jalr	-364(ra) # 8000155c <_Z15thread_dispatchv>
}
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	00813483          	ld	s1,8(sp)
    800026dc:	02010113          	addi	sp,sp,32
    800026e0:	00008067          	ret

00000000800026e4 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00813423          	sd	s0,8(sp)
    800026ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800026f0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800026f4:	00000073          	ecall
}
    800026f8:	00813403          	ld	s0,8(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00113c23          	sd	ra,24(sp)
    8000270c:	00813823          	sd	s0,16(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002718:	00009497          	auipc	s1,0x9
    8000271c:	2d04b483          	ld	s1,720(s1) # 8000b9e8 <_ZN3TCB7runningE>
        return finished;
    80002720:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    80002724:	00079a63          	bnez	a5,80002738 <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    80002728:	0404c783          	lbu	a5,64(s1)
    8000272c:	00079663          	bnez	a5,80002738 <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    80002730:	0414c783          	lbu	a5,65(s1)
    80002734:	02078c63          	beqz	a5,8000276c <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	088080e7          	jalr	136(ra) # 800017c0 <_ZN9Scheduler3getEv>
    80002740:	00009797          	auipc	a5,0x9
    80002744:	2aa7b423          	sd	a0,680(a5) # 8000b9e8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002748:	01850593          	addi	a1,a0,24
    8000274c:	01848513          	addi	a0,s1,24
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	bf8080e7          	jalr	-1032(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002758:	01813083          	ld	ra,24(sp)
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	00813483          	ld	s1,8(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret
        Scheduler::put(old);
    8000276c:	00048513          	mv	a0,s1
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	fdc080e7          	jalr	-36(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    80002778:	fc1ff06f          	j	80002738 <_ZN3TCB8dispatchEv+0x34>

000000008000277c <_ZN3TCBC1EPFvPvEPcS0_m>:
                                     sleeping(false)
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	fe478793          	addi	a5,a5,-28 # 8000b760 <_ZTV3TCB+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    80002788:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    8000278c:	06058263          	beqz	a1,800027f0 <_ZN3TCBC1EPFvPvEPcS0_m+0x74>
                                     sleeping(false)
    80002790:	00c53823          	sd	a2,16(a0)
    80002794:	00000797          	auipc	a5,0x0
    80002798:	ef478793          	addi	a5,a5,-268 # 80002688 <_ZN3TCB13threadWrapperEv>
    8000279c:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800027a0:	04060c63          	beqz	a2,800027f8 <_ZN3TCBC1EPFvPvEPcS0_m+0x7c>
    800027a4:	000017b7          	lui	a5,0x1
    800027a8:	00f60633          	add	a2,a2,a5
                                     sleeping(false)
    800027ac:	02c53023          	sd	a2,32(a0)
    800027b0:	02e53423          	sd	a4,40(a0)
    800027b4:	02050823          	sb	zero,48(a0)
    800027b8:	02d53c23          	sd	a3,56(a0)
    800027bc:	04050023          	sb	zero,64(a0)
    800027c0:	040500a3          	sb	zero,65(a0)
        if(body!=nullptr) Scheduler::put(this);
    800027c4:	02058e63          	beqz	a1,80002800 <_ZN3TCBC1EPFvPvEPcS0_m+0x84>
TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	f74080e7          	jalr	-140(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800027f0:	00000613          	li	a2,0
    800027f4:	f9dff06f          	j	80002790 <_ZN3TCBC1EPFvPvEPcS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800027f8:	00000613          	li	a2,0
    800027fc:	fb1ff06f          	j	800027ac <_ZN3TCBC1EPFvPvEPcS0_m+0x30>
    80002800:	00008067          	ret

0000000080002804 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002814:	03f50513          	addi	a0,a0,63
    80002818:	00655513          	srli	a0,a0,0x6
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	7b4080e7          	jalr	1972(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002824:	00813083          	ld	ra,8(sp)
    80002828:	00013403          	ld	s0,0(sp)
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <_ZN3TCB12createThreadEPFvPvEPcS0_>:
TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    80002834:	fd010113          	addi	sp,sp,-48
    80002838:	02113423          	sd	ra,40(sp)
    8000283c:	02813023          	sd	s0,32(sp)
    80002840:	00913c23          	sd	s1,24(sp)
    80002844:	01213823          	sd	s2,16(sp)
    80002848:	01313423          	sd	s3,8(sp)
    8000284c:	01413023          	sd	s4,0(sp)
    80002850:	03010413          	addi	s0,sp,48
    80002854:	00050913          	mv	s2,a0
    80002858:	00058993          	mv	s3,a1
    8000285c:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, DEFAULT_TIME_SLICE);
    80002860:	04800513          	li	a0,72
    80002864:	00000097          	auipc	ra,0x0
    80002868:	fa0080e7          	jalr	-96(ra) # 80002804 <_ZN3TCBnwEm>
    8000286c:	00050493          	mv	s1,a0
    80002870:	00200713          	li	a4,2
    80002874:	000a0693          	mv	a3,s4
    80002878:	00098613          	mv	a2,s3
    8000287c:	00090593          	mv	a1,s2
    80002880:	00000097          	auipc	ra,0x0
    80002884:	efc080e7          	jalr	-260(ra) # 8000277c <_ZN3TCBC1EPFvPvEPcS0_m>
    80002888:	0200006f          	j	800028a8 <_ZN3TCB12createThreadEPFvPvEPcS0_+0x74>
    8000288c:	00050913          	mv	s2,a0
    80002890:	00048513          	mv	a0,s1
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	24c080e7          	jalr	588(ra) # 80001ae0 <_ZdlPv>
    8000289c:	00090513          	mv	a0,s2
    800028a0:	0000a097          	auipc	ra,0xa
    800028a4:	298080e7          	jalr	664(ra) # 8000cb38 <_Unwind_Resume>
}
    800028a8:	00048513          	mv	a0,s1
    800028ac:	02813083          	ld	ra,40(sp)
    800028b0:	02013403          	ld	s0,32(sp)
    800028b4:	01813483          	ld	s1,24(sp)
    800028b8:	01013903          	ld	s2,16(sp)
    800028bc:	00813983          	ld	s3,8(sp)
    800028c0:	00013a03          	ld	s4,0(sp)
    800028c4:	03010113          	addi	sp,sp,48
    800028c8:	00008067          	ret

00000000800028cc <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00113423          	sd	ra,8(sp)
    800028d4:	00813023          	sd	s0,0(sp)
    800028d8:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	7c8080e7          	jalr	1992(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
}
    800028e4:	00813083          	ld	ra,8(sp)
    800028e8:	00013403          	ld	s0,0(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret

00000000800028f4 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(TCB::running->isFinished()){
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	0f47b783          	ld	a5,244(a5) # 8000b9e8 <_ZN3TCB7runningE>
        return finished;
    800028fc:	0307c703          	lbu	a4,48(a5)
    80002900:	04071063          	bnez	a4,80002940 <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
        TCB::finished = finished;
    80002914:	00100713          	li	a4,1
    80002918:	02e78823          	sb	a4,48(a5)
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
    8000291c:	00009797          	auipc	a5,0x9
    80002920:	0c07ba23          	sd	zero,212(a5) # 8000b9f0 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002924:	00000097          	auipc	ra,0x0
    80002928:	de0080e7          	jalr	-544(ra) # 80002704 <_ZN3TCB8dispatchEv>
        return 0;
    8000292c:	00000513          	li	a0,0
    }
}
    80002930:	00813083          	ld	ra,8(sp)
    80002934:	00013403          	ld	s0,0(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret
        return -1;
    80002940:	fff00513          	li	a0,-1
}
    80002944:	00008067          	ret

0000000080002948 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00050493          	mv	s1,a0
        return finished;
    80002960:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    80002964:	00079c63          	bnez	a5,8000297c <_ZN3TCB4joinEPS_+0x34>
        TCB::timeSliceCounter=0;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	0807b423          	sd	zero,136(a5) # 8000b9f0 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	d94080e7          	jalr	-620(ra) # 80002704 <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    80002978:	fe9ff06f          	j	80002960 <_ZN3TCB4joinEPS_+0x18>
    }
}
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret

0000000080002990 <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00113423          	sd	ra,8(sp)
    80002998:	00813023          	sd	s0,0(sp)
    8000299c:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800029a0:	03f50513          	addi	a0,a0,63
    800029a4:	00655513          	srli	a0,a0,0x6
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	628080e7          	jalr	1576(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	02010413          	addi	s0,sp,32
    800029d4:	00050493          	mv	s1,a0
    return new _sem(val);
    800029d8:	02000513          	li	a0,32
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	fb4080e7          	jalr	-76(ra) # 80002990 <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    800029e4:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    800029e8:	00053423          	sd	zero,8(a0)
    800029ec:	00053823          	sd	zero,16(a0)
    800029f0:	00050c23          	sb	zero,24(a0)
}
    800029f4:	01813083          	ld	ra,24(sp)
    800029f8:	01013403          	ld	s0,16(sp)
    800029fc:	00813483          	ld	s1,8(sp)
    80002a00:	02010113          	addi	sp,sp,32
    80002a04:	00008067          	ret

0000000080002a08 <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00113423          	sd	ra,8(sp)
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	68c080e7          	jalr	1676(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
}
    80002a20:	00813083          	ld	ra,8(sp)
    80002a24:	00013403          	ld	s0,0(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    80002a30:	fe010113          	addi	sp,sp,-32
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	00813823          	sd	s0,16(sp)
    80002a3c:	00913423          	sd	s1,8(sp)
    80002a40:	01213023          	sd	s2,0(sp)
    80002a44:	02010413          	addi	s0,sp,32
    80002a48:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    80002a4c:	00009797          	auipc	a5,0x9
    80002a50:	f247b783          	ld	a5,-220(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a54:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002a58:	00100793          	li	a5,1
    80002a5c:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002a60:	00100513          	li	a0,1
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	56c080e7          	jalr	1388(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    80002a6c:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    80002a70:	00053423          	sd	zero,8(a0)
        if(tail){
    80002a74:	0104b783          	ld	a5,16(s1)
    80002a78:	02078c63          	beqz	a5,80002ab0 <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    80002a7c:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    80002a80:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    80002a84:	00009797          	auipc	a5,0x9
    80002a88:	ecc7b783          	ld	a5,-308(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a8c:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	c74080e7          	jalr	-908(ra) # 80002704 <_ZN3TCB8dispatchEv>
}
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret
        }
        else{
            head=tail=newElem;
    80002ab0:	00a4b823          	sd	a0,16(s1)
    80002ab4:	00a4b423          	sd	a0,8(s1)
    80002ab8:	fcdff06f          	j	80002a84 <_ZN4_sem5blockEv+0x54>

0000000080002abc <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    80002abc:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002ac0:	04079e63          	bnez	a5,80002b1c <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	02010413          	addi	s0,sp,32
    80002ad8:	00050493          	mv	s1,a0
    if(--val<0){
    80002adc:	00052783          	lw	a5,0(a0)
    80002ae0:	fff7879b          	addiw	a5,a5,-1
    80002ae4:	00f52023          	sw	a5,0(a0)
    80002ae8:	02079713          	slli	a4,a5,0x20
    80002aec:	02074263          	bltz	a4,80002b10 <_ZN4_sem4waitEv+0x54>
    80002af0:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002af4:	02079863          	bnez	a5,80002b24 <_ZN4_sem4waitEv+0x68>
    return 0;
    80002af8:	00000513          	li	a0,0
}
    80002afc:	01813083          	ld	ra,24(sp)
    80002b00:	01013403          	ld	s0,16(sp)
    80002b04:	00813483          	ld	s1,8(sp)
    80002b08:	02010113          	addi	sp,sp,32
    80002b0c:	00008067          	ret
        block();
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	f20080e7          	jalr	-224(ra) # 80002a30 <_ZN4_sem5blockEv>
    80002b18:	fd9ff06f          	j	80002af0 <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002b1c:	fff00513          	li	a0,-1
}
    80002b20:	00008067          	ret
    if(this->isClosed())return -2;
    80002b24:	ffe00513          	li	a0,-2
    80002b28:	fd5ff06f          	j	80002afc <_ZN4_sem4waitEv+0x40>

0000000080002b2c <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002b2c:	fe010113          	addi	sp,sp,-32
    80002b30:	00113c23          	sd	ra,24(sp)
    80002b34:	00813823          	sd	s0,16(sp)
    80002b38:	00913423          	sd	s1,8(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    80002b40:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002b44:	00853503          	ld	a0,8(a0)
    80002b48:	04050463          	beqz	a0,80002b90 <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002b4c:	00853703          	ld	a4,8(a0)
    80002b50:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002b54:	02070a63          	beqz	a4,80002b88 <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002b58:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	548080e7          	jalr	1352(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
    80002b64:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	be0080e7          	jalr	-1056(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    80002b74:	01813083          	ld	ra,24(sp)
    80002b78:	01013403          	ld	s0,16(sp)
    80002b7c:	00813483          	ld	s1,8(sp)
    80002b80:	02010113          	addi	sp,sp,32
    80002b84:	00008067          	ret
        if(!head){tail=nullptr;}
    80002b88:	0007b823          	sd	zero,16(a5)
    80002b8c:	fcdff06f          	j	80002b58 <_ZN4_sem7unblockEv+0x2c>
            return 0;
    80002b90:	00050493          	mv	s1,a0
    80002b94:	fd1ff06f          	j	80002b64 <_ZN4_sem7unblockEv+0x38>

0000000080002b98 <_ZN4_sem6signalEv>:
    80002b98:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002b9c:	04079663          	bnez	a5,80002be8 <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    80002ba0:	00052783          	lw	a5,0(a0)
    80002ba4:	0017879b          	addiw	a5,a5,1
    80002ba8:	0007871b          	sext.w	a4,a5
    80002bac:	00f52023          	sw	a5,0(a0)
    80002bb0:	00e05663          	blez	a4,80002bbc <_ZN4_sem6signalEv+0x24>
    return 0;
    80002bb4:	00000513          	li	a0,0
}
    80002bb8:	00008067          	ret
int _sem::signal() {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	00813023          	sd	s0,0(sp)
    80002bc8:	01010413          	addi	s0,sp,16
        unblock();
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	f60080e7          	jalr	-160(ra) # 80002b2c <_ZN4_sem7unblockEv>
    return 0;
    80002bd4:	00000513          	li	a0,0
}
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret
    if(this->isClosed())return -1;
    80002be8:	fff00513          	li	a0,-1
    80002bec:	00008067          	ret

0000000080002bf0 <_ZN4_sem5closeEv>:
    80002bf0:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002bf4:	04079263          	bnez	a5,80002c38 <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002bf8:	fe010113          	addi	sp,sp,-32
    80002bfc:	00113c23          	sd	ra,24(sp)
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00913423          	sd	s1,8(sp)
    80002c08:	02010413          	addi	s0,sp,32
    80002c0c:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002c10:	00100793          	li	a5,1
    80002c14:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002c18:	0084b783          	ld	a5,8(s1)
    80002c1c:	02078263          	beqz	a5,80002c40 <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002c20:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002c24:	02078a63          	beqz	a5,80002c58 <_ZN4_sem5closeEv+0x68>
        unblock();
    80002c28:	00048513          	mv	a0,s1
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	f00080e7          	jalr	-256(ra) # 80002b2c <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002c34:	fe5ff06f          	j	80002c18 <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002c38:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002c3c:	00008067          	ret
    return 0;
    80002c40:	00000513          	li	a0,0
}
    80002c44:	01813083          	ld	ra,24(sp)
    80002c48:	01013403          	ld	s0,16(sp)
    80002c4c:	00813483          	ld	s1,8(sp)
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret
    return 0;
    80002c58:	00000513          	li	a0,0
    80002c5c:	fe9ff06f          	j	80002c44 <_ZN4_sem5closeEv+0x54>

0000000080002c60 <_ZN13BoundedBufferC1Ev>:
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0){
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00113c23          	sd	ra,24(sp)
    80002c68:	00813823          	sd	s0,16(sp)
    80002c6c:	00913423          	sd	s1,8(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00050493          	mv	s1,a0
    80002c78:	00052423          	sw	zero,8(a0)
    80002c7c:	00052623          	sw	zero,12(a0)
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002c80:	01000513          	li	a0,16
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	34c080e7          	jalr	844(ra) # 80002fd0 <_ZN15MemoryAllocator5allocEm>
    80002c8c:	00a4b023          	sd	a0,0(s1)
    spaceAvailable=_sem::open(BUFF_CAP);
    80002c90:	3e800513          	li	a0,1000
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	d2c080e7          	jalr	-724(ra) # 800029c0 <_ZN4_sem4openEi>
    80002c9c:	00a4b823          	sd	a0,16(s1)
    itemAvailable=_sem::open(0);
    80002ca0:	00000513          	li	a0,0
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	d1c080e7          	jalr	-740(ra) # 800029c0 <_ZN4_sem4openEi>
    80002cac:	00a4bc23          	sd	a0,24(s1)
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00008067          	ret

0000000080002cc4 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002cc4:	fe010113          	addi	sp,sp,-32
    80002cc8:	00113c23          	sd	ra,24(sp)
    80002ccc:	00813823          	sd	s0,16(sp)
    80002cd0:	00913423          	sd	s1,8(sp)
    80002cd4:	01213023          	sd	s2,0(sp)
    80002cd8:	02010413          	addi	s0,sp,32
    80002cdc:	00050493          	mv	s1,a0
    80002ce0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002ce4:	01053503          	ld	a0,16(a0)
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	dd4080e7          	jalr	-556(ra) # 80002abc <_ZN4_sem4waitEv>
    buffer[tail]=c;
    80002cf0:	0004b783          	ld	a5,0(s1)
    80002cf4:	00c4a703          	lw	a4,12(s1)
    80002cf8:	00e787b3          	add	a5,a5,a4
    80002cfc:	01278023          	sb	s2,0(a5)
    tail=(tail+1)%BUFF_CAP;
    80002d00:	00c4a783          	lw	a5,12(s1)
    80002d04:	0017879b          	addiw	a5,a5,1
    80002d08:	3e800713          	li	a4,1000
    80002d0c:	02e7e7bb          	remw	a5,a5,a4
    80002d10:	00f4a623          	sw	a5,12(s1)
    itemAvailable->signal();
    80002d14:	0184b503          	ld	a0,24(s1)
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	e80080e7          	jalr	-384(ra) # 80002b98 <_ZN4_sem6signalEv>
}
    80002d20:	01813083          	ld	ra,24(sp)
    80002d24:	01013403          	ld	s0,16(sp)
    80002d28:	00813483          	ld	s1,8(sp)
    80002d2c:	00013903          	ld	s2,0(sp)
    80002d30:	02010113          	addi	sp,sp,32
    80002d34:	00008067          	ret

0000000080002d38 <_ZN13BoundedBuffer17takeFromInterruptEv>:


char BoundedBuffer::takeFromInterrupt() {
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	01213023          	sd	s2,0(sp)
    80002d4c:	02010413          	addi	s0,sp,32
    80002d50:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002d54:	01853503          	ld	a0,24(a0)
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	d64080e7          	jalr	-668(ra) # 80002abc <_ZN4_sem4waitEv>
    char c=buffer[head];
    80002d60:	0004b703          	ld	a4,0(s1)
    80002d64:	0084a783          	lw	a5,8(s1)
    80002d68:	00f70733          	add	a4,a4,a5
    80002d6c:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002d70:	0017879b          	addiw	a5,a5,1
    80002d74:	3e800713          	li	a4,1000
    80002d78:	02e7e7bb          	remw	a5,a5,a4
    80002d7c:	00f4a423          	sw	a5,8(s1)
    spaceAvailable->signal();
    80002d80:	0104b503          	ld	a0,16(s1)
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	e14080e7          	jalr	-492(ra) # 80002b98 <_ZN4_sem6signalEv>
    return c;
}
    80002d8c:	00090513          	mv	a0,s2
    80002d90:	01813083          	ld	ra,24(sp)
    80002d94:	01013403          	ld	s0,16(sp)
    80002d98:	00813483          	ld	s1,8(sp)
    80002d9c:	00013903          	ld	s2,0(sp)
    80002da0:	02010113          	addi	sp,sp,32
    80002da4:	00008067          	ret

0000000080002da8 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002da8:	fe010113          	addi	sp,sp,-32
    80002dac:	00113c23          	sd	ra,24(sp)
    80002db0:	00813823          	sd	s0,16(sp)
    80002db4:	00913423          	sd	s1,8(sp)
    80002db8:	02010413          	addi	s0,sp,32
    80002dbc:	00050493          	mv	s1,a0
    MemoryAllocator::free(buffer);
    80002dc0:	00053503          	ld	a0,0(a0)
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	2e0080e7          	jalr	736(ra) # 800030a4 <_ZN15MemoryAllocator4freeEPv>
    /*itemAvailable->close();
    spaceAvailable->close();*/
    sem_close(itemAvailable);
    80002dcc:	0184b503          	ld	a0,24(s1)
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	82c080e7          	jalr	-2004(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002dd8:	0104b503          	ld	a0,16(s1)
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	820080e7          	jalr	-2016(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret

0000000080002df8 <_ZN13BoundedBuffer17takeFromSysThreadEv>:

char BoundedBuffer::takeFromSysThread() {
    80002df8:	fe010113          	addi	sp,sp,-32
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	00813823          	sd	s0,16(sp)
    80002e04:	00913423          	sd	s1,8(sp)
    80002e08:	01213023          	sd	s2,0(sp)
    80002e0c:	02010413          	addi	s0,sp,32
    80002e10:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002e14:	01853503          	ld	a0,24(a0)
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	830080e7          	jalr	-2000(ra) # 80001648 <_Z8sem_waitP4_sem>
    char c=buffer[head];
    80002e20:	0004b703          	ld	a4,0(s1)
    80002e24:	0084a783          	lw	a5,8(s1)
    80002e28:	00f70733          	add	a4,a4,a5
    80002e2c:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002e30:	0017879b          	addiw	a5,a5,1
    80002e34:	3e800713          	li	a4,1000
    80002e38:	02e7e7bb          	remw	a5,a5,a4
    80002e3c:	00f4a423          	sw	a5,8(s1)
    sem_signal(spaceAvailable);
    80002e40:	0104b503          	ld	a0,16(s1)
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	850080e7          	jalr	-1968(ra) # 80001694 <_Z10sem_signalP4_sem>
    return c;
}
    80002e4c:	00090513          	mv	a0,s2
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	01013403          	ld	s0,16(sp)
    80002e58:	00813483          	ld	s1,8(sp)
    80002e5c:	00013903          	ld	s2,0(sp)
    80002e60:	02010113          	addi	sp,sp,32
    80002e64:	00008067          	ret

0000000080002e68 <_ZN8_console13inputBuff_putEc>:

void _console::inputBuff_put(char c) {
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00113423          	sd	ra,8(sp)
    80002e70:	00813023          	sd	s0,0(sp)
    80002e74:	01010413          	addi	s0,sp,16
    80002e78:	00050593          	mv	a1,a0
    inputBuff->put(c);
    80002e7c:	00009517          	auipc	a0,0x9
    80002e80:	b8453503          	ld	a0,-1148(a0) # 8000ba00 <_ZN8_console9inputBuffE>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	e40080e7          	jalr	-448(ra) # 80002cc4 <_ZN13BoundedBuffer3putEc>
}
    80002e8c:	00813083          	ld	ra,8(sp)
    80002e90:	00013403          	ld	s0,0(sp)
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret

0000000080002e9c <_ZN8_console14inputBuff_takeEv>:

char _console::inputBuff_take() {
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00113423          	sd	ra,8(sp)
    80002ea4:	00813023          	sd	s0,0(sp)
    80002ea8:	01010413          	addi	s0,sp,16
    return inputBuff->takeFromInterrupt();
    80002eac:	00009517          	auipc	a0,0x9
    80002eb0:	b5453503          	ld	a0,-1196(a0) # 8000ba00 <_ZN8_console9inputBuffE>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	e84080e7          	jalr	-380(ra) # 80002d38 <_ZN13BoundedBuffer17takeFromInterruptEv>
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN8_console14outputBuff_putEc>:

void _console::outputBuff_put(char c) {
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	00813023          	sd	s0,0(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    80002edc:	00050593          	mv	a1,a0
    outputBuff->put(c);
    80002ee0:	00009517          	auipc	a0,0x9
    80002ee4:	b2853503          	ld	a0,-1240(a0) # 8000ba08 <_ZN8_console10outputBuffE>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	ddc080e7          	jalr	-548(ra) # 80002cc4 <_ZN13BoundedBuffer3putEc>
}
    80002ef0:	00813083          	ld	ra,8(sp)
    80002ef4:	00013403          	ld	s0,0(sp)
    80002ef8:	01010113          	addi	sp,sp,16
    80002efc:	00008067          	ret

0000000080002f00 <_ZN8_console15outputBuff_takeEv>:

char _console::outputBuff_take() {
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00113423          	sd	ra,8(sp)
    80002f08:	00813023          	sd	s0,0(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    return outputBuff->takeFromSysThread();
    80002f10:	00009517          	auipc	a0,0x9
    80002f14:	af853503          	ld	a0,-1288(a0) # 8000ba08 <_ZN8_console10outputBuffE>
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	ee0080e7          	jalr	-288(ra) # 80002df8 <_ZN13BoundedBuffer17takeFromSysThreadEv>
}
    80002f20:	00813083          	ld	ra,8(sp)
    80002f24:	00013403          	ld	s0,0(sp)
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN8_console15consumerConsoleEPv>:
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002f30:	00009797          	auipc	a5,0x9
    80002f34:	9f87b783          	ld	a5,-1544(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f38:	0007b783          	ld	a5,0(a5)
    80002f3c:	0007c783          	lbu	a5,0(a5)
    80002f40:	0207f793          	andi	a5,a5,32
    80002f44:	fe0786e3          	beqz	a5,80002f30 <_ZN8_console15consumerConsoleEPv>
void _console::consumerConsole(void*){
    80002f48:	ff010113          	addi	sp,sp,-16
    80002f4c:	00113423          	sd	ra,8(sp)
    80002f50:	00813023          	sd	s0,0(sp)
    80002f54:	01010413          	addi	s0,sp,16
            char c = _console::outputBuff_take();
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	fa8080e7          	jalr	-88(ra) # 80002f00 <_ZN8_console15outputBuff_takeEv>
            *(char *) CONSOLE_TX_DATA = c;
    80002f60:	00009797          	auipc	a5,0x9
    80002f64:	9f87b783          	ld	a5,-1544(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002f68:	0007b783          	ld	a5,0(a5)
    80002f6c:	00a78023          	sb	a0,0(a5)
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002f70:	00009797          	auipc	a5,0x9
    80002f74:	9b87b783          	ld	a5,-1608(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f78:	0007b783          	ld	a5,0(a5)
    80002f7c:	0007c783          	lbu	a5,0(a5)
    80002f80:	0207f793          	andi	a5,a5,32
    80002f84:	fe0786e3          	beqz	a5,80002f70 <_ZN8_console15consumerConsoleEPv+0x40>
    80002f88:	fd1ff06f          	j	80002f58 <_ZN8_console15consumerConsoleEPv+0x28>

0000000080002f8c <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002f8c:	ff010113          	addi	sp,sp,-16
    80002f90:	00813423          	sd	s0,8(sp)
    80002f94:	01010413          	addi	s0,sp,16
    80002f98:	00100793          	li	a5,1
    80002f9c:	00f50863          	beq	a0,a5,80002fac <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret
    80002fac:	000107b7          	lui	a5,0x10
    80002fb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002fb4:	fef596e3          	bne	a1,a5,80002fa0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002fb8:	00009797          	auipc	a5,0x9
    80002fbc:	9787b783          	ld	a5,-1672(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002fc0:	0007b783          	ld	a5,0(a5)
    80002fc4:	00009717          	auipc	a4,0x9
    80002fc8:	a4f73623          	sd	a5,-1460(a4) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    80002fcc:	fd5ff06f          	j	80002fa0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002fd0 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80002fdc:	0a050c63          	beqz	a0,80003094 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002fe0:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002fe4:	00009797          	auipc	a5,0x9
    80002fe8:	a2c7b783          	ld	a5,-1492(a5) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    80002fec:	00000613          	li	a2,0
    while(free){
    80002ff0:	00078e63          	beqz	a5,8000300c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002ff4:	0007b703          	ld	a4,0(a5)
    80002ff8:	fff70713          	addi	a4,a4,-1
    80002ffc:	00d77863          	bgeu	a4,a3,8000300c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80003000:	00078613          	mv	a2,a5
        free=free->next;
    80003004:	0087b783          	ld	a5,8(a5)
    while(free){
    80003008:	fe9ff06f          	j	80002ff0 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000300c:	08078863          	beqz	a5,8000309c <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80003010:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80003014:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80003018:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000301c:	fff70593          	addi	a1,a4,-1
    80003020:	04d58063          	beq	a1,a3,80003060 <_ZN15MemoryAllocator5allocEm+0x90>
    80003024:	ffe70593          	addi	a1,a4,-2
    80003028:	02d58c63          	beq	a1,a3,80003060 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000302c:	40d70733          	sub	a4,a4,a3
    80003030:	fff70713          	addi	a4,a4,-1
    80003034:	00100593          	li	a1,1
    80003038:	02e5fa63          	bgeu	a1,a4,8000306c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000303c:	00168693          	addi	a3,a3,1
    80003040:	00669593          	slli	a1,a3,0x6
    80003044:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80003048:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    8000304c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80003050:	02060c63          	beqz	a2,80003088 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80003054:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80003058:	00d7b023          	sd	a3,0(a5)
    8000305c:	0100006f          	j	8000306c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80003060:	00060e63          	beqz	a2,8000307c <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80003064:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80003068:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    8000306c:	0007b423          	sd	zero,8(a5)
}
    80003070:	00813403          	ld	s0,8(sp)
    80003074:	01010113          	addi	sp,sp,16
    80003078:	00008067          	ret
            firstFreeSeg=free->next;
    8000307c:	00009697          	auipc	a3,0x9
    80003080:	9906ba23          	sd	a6,-1644(a3) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    80003084:	fe5ff06f          	j	80003068 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80003088:	00009717          	auipc	a4,0x9
    8000308c:	98b73423          	sd	a1,-1656(a4) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    80003090:	fc9ff06f          	j	80003058 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80003094:	00000513          	li	a0,0
    80003098:	fd9ff06f          	j	80003070 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    8000309c:	00078513          	mv	a0,a5
    800030a0:	fd1ff06f          	j	80003070 <_ZN15MemoryAllocator5allocEm+0xa0>

00000000800030a4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00813423          	sd	s0,8(sp)
    800030ac:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    800030b0:	14050c63          	beqz	a0,80003208 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    800030b4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    800030b8:	00009797          	auipc	a5,0x9
    800030bc:	9587b783          	ld	a5,-1704(a5) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    800030c0:	02078a63          	beqz	a5,800030f4 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    800030c4:	06f77863          	bgeu	a4,a5,80003134 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    800030c8:	fc053603          	ld	a2,-64(a0)
    800030cc:	00661693          	slli	a3,a2,0x6
    800030d0:	00d706b3          	add	a3,a4,a3
    800030d4:	02d78a63          	beq	a5,a3,80003108 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    800030d8:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    800030dc:	00009797          	auipc	a5,0x9
    800030e0:	92e7ba23          	sd	a4,-1740(a5) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    800030e4:	00000513          	li	a0,0
}
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret
        freeFromAddr->next=nullptr;
    800030f4:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    800030f8:	00009797          	auipc	a5,0x9
    800030fc:	90e7bc23          	sd	a4,-1768(a5) # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80003100:	00000513          	li	a0,0
    80003104:	fe5ff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80003108:	0007b783          	ld	a5,0(a5)
    8000310c:	00f60633          	add	a2,a2,a5
    80003110:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80003114:	00009797          	auipc	a5,0x9
    80003118:	8fc78793          	addi	a5,a5,-1796 # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    8000311c:	0007b683          	ld	a3,0(a5)
    80003120:	0086b683          	ld	a3,8(a3)
    80003124:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80003128:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000312c:	00000513          	li	a0,0
    80003130:	fb9ff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80003134:	00000693          	li	a3,0
    while(nextFree){
    80003138:	00078a63          	beqz	a5,8000314c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000313c:	00f76863          	bltu	a4,a5,8000314c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80003140:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80003144:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80003148:	ff1ff06f          	j	80003138 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000314c:	02078a63          	beqz	a5,80003180 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003150:	0006b583          	ld	a1,0(a3)
    80003154:	00659613          	slli	a2,a1,0x6
    80003158:	00c68633          	add	a2,a3,a2
    8000315c:	04e60c63          	beq	a2,a4,800031b4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80003160:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80003164:	fc053683          	ld	a3,-64(a0)
    80003168:	00669613          	slli	a2,a3,0x6
    8000316c:	00c70733          	add	a4,a4,a2
    80003170:	06f70e63          	beq	a4,a5,800031ec <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80003174:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80003178:	00000513          	li	a0,0
    8000317c:	f6dff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003180:	0006b603          	ld	a2,0(a3)
    80003184:	00661793          	slli	a5,a2,0x6
    80003188:	00f687b3          	add	a5,a3,a5
    8000318c:	00e78a63          	beq	a5,a4,800031a0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80003190:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    80003194:	00e6b423          	sd	a4,8(a3)
            return 0;
    80003198:	00000513          	li	a0,0
    8000319c:	f4dff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800031a0:	fc053783          	ld	a5,-64(a0)
    800031a4:	00f60633          	add	a2,a2,a5
    800031a8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800031ac:	00000513          	li	a0,0
    800031b0:	f39ff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800031b4:	fc053703          	ld	a4,-64(a0)
    800031b8:	00e585b3          	add	a1,a1,a4
    800031bc:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800031c0:	00659713          	slli	a4,a1,0x6
    800031c4:	00e68733          	add	a4,a3,a4
    800031c8:	00f70663          	beq	a4,a5,800031d4 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    800031cc:	00000513          	li	a0,0
    800031d0:	f19ff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    800031d4:	0007b703          	ld	a4,0(a5)
    800031d8:	00e585b3          	add	a1,a1,a4
    800031dc:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    800031e0:	0087b783          	ld	a5,8(a5)
    800031e4:	00f6b423          	sd	a5,8(a3)
    800031e8:	fe5ff06f          	j	800031cc <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    800031ec:	0007b703          	ld	a4,0(a5)
    800031f0:	00e686b3          	add	a3,a3,a4
    800031f4:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    800031f8:	0087b783          	ld	a5,8(a5)
    800031fc:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80003200:	00000513          	li	a0,0
    80003204:	ee5ff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80003208:	fff00513          	li	a0,-1
    8000320c:	eddff06f          	j	800030e8 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080003210 <_ZN15MemoryAllocator10initializeEv>:
{
    80003210:	ff010113          	addi	sp,sp,-16
    80003214:	00813423          	sd	s0,8(sp)
    80003218:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000321c:	00008797          	auipc	a5,0x8
    80003220:	7147b783          	ld	a5,1812(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003224:	0007b703          	ld	a4,0(a5)
    80003228:	00008697          	auipc	a3,0x8
    8000322c:	7e868693          	addi	a3,a3,2024 # 8000ba10 <_ZN15MemoryAllocator12firstFreeSegE>
    80003230:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80003234:	00008797          	auipc	a5,0x8
    80003238:	7447b783          	ld	a5,1860(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000323c:	0007b783          	ld	a5,0(a5)
    80003240:	40e787b3          	sub	a5,a5,a4
    80003244:	0067d793          	srli	a5,a5,0x6
    80003248:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    8000324c:	0006b783          	ld	a5,0(a3)
    80003250:	0007b423          	sd	zero,8(a5)
    80003254:	00813403          	ld	s0,8(sp)
    80003258:	01010113          	addi	sp,sp,16
    8000325c:	00008067          	ret

0000000080003260 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00113423          	sd	ra,8(sp)
    80003268:	00813023          	sd	s0,0(sp)
    8000326c:	01010413          	addi	s0,sp,16
    80003270:	000105b7          	lui	a1,0x10
    80003274:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003278:	00100513          	li	a0,1
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	d10080e7          	jalr	-752(ra) # 80002f8c <_Z41__static_initialization_and_destruction_0ii>
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003294:	fe010113          	addi	sp,sp,-32
    80003298:	00113c23          	sd	ra,24(sp)
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00913423          	sd	s1,8(sp)
    800032a4:	01213023          	sd	s2,0(sp)
    800032a8:	02010413          	addi	s0,sp,32
    800032ac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032b0:	00000913          	li	s2,0
    800032b4:	00c0006f          	j	800032c0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	2a4080e7          	jalr	676(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800032c0:	ffffe097          	auipc	ra,0xffffe
    800032c4:	420080e7          	jalr	1056(ra) # 800016e0 <_Z4getcv>
    800032c8:	0005059b          	sext.w	a1,a0
    800032cc:	01b00793          	li	a5,27
    800032d0:	02f58a63          	beq	a1,a5,80003304 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800032d4:	0084b503          	ld	a0,8(s1)
    800032d8:	00003097          	auipc	ra,0x3
    800032dc:	400080e7          	jalr	1024(ra) # 800066d8 <_ZN6Buffer3putEi>
        i++;
    800032e0:	0019071b          	addiw	a4,s2,1
    800032e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800032e8:	0004a683          	lw	a3,0(s1)
    800032ec:	0026979b          	slliw	a5,a3,0x2
    800032f0:	00d787bb          	addw	a5,a5,a3
    800032f4:	0017979b          	slliw	a5,a5,0x1
    800032f8:	02f767bb          	remw	a5,a4,a5
    800032fc:	fc0792e3          	bnez	a5,800032c0 <_ZL16producerKeyboardPv+0x2c>
    80003300:	fb9ff06f          	j	800032b8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003304:	00100793          	li	a5,1
    80003308:	00008717          	auipc	a4,0x8
    8000330c:	70f72823          	sw	a5,1808(a4) # 8000ba18 <_ZL9threadEnd>
    data->buffer->put('!');
    80003310:	02100593          	li	a1,33
    80003314:	0084b503          	ld	a0,8(s1)
    80003318:	00003097          	auipc	ra,0x3
    8000331c:	3c0080e7          	jalr	960(ra) # 800066d8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003320:	0104b503          	ld	a0,16(s1)
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	370080e7          	jalr	880(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	00013903          	ld	s2,0(sp)
    8000333c:	02010113          	addi	sp,sp,32
    80003340:	00008067          	ret

0000000080003344 <_ZL8producerPv>:

static void producer(void *arg) {
    80003344:	fe010113          	addi	sp,sp,-32
    80003348:	00113c23          	sd	ra,24(sp)
    8000334c:	00813823          	sd	s0,16(sp)
    80003350:	00913423          	sd	s1,8(sp)
    80003354:	01213023          	sd	s2,0(sp)
    80003358:	02010413          	addi	s0,sp,32
    8000335c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003360:	00000913          	li	s2,0
    80003364:	00c0006f          	j	80003370 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003368:	ffffe097          	auipc	ra,0xffffe
    8000336c:	1f4080e7          	jalr	500(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003370:	00008797          	auipc	a5,0x8
    80003374:	6a87a783          	lw	a5,1704(a5) # 8000ba18 <_ZL9threadEnd>
    80003378:	02079e63          	bnez	a5,800033b4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000337c:	0004a583          	lw	a1,0(s1)
    80003380:	0305859b          	addiw	a1,a1,48
    80003384:	0084b503          	ld	a0,8(s1)
    80003388:	00003097          	auipc	ra,0x3
    8000338c:	350080e7          	jalr	848(ra) # 800066d8 <_ZN6Buffer3putEi>
        i++;
    80003390:	0019071b          	addiw	a4,s2,1
    80003394:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003398:	0004a683          	lw	a3,0(s1)
    8000339c:	0026979b          	slliw	a5,a3,0x2
    800033a0:	00d787bb          	addw	a5,a5,a3
    800033a4:	0017979b          	slliw	a5,a5,0x1
    800033a8:	02f767bb          	remw	a5,a4,a5
    800033ac:	fc0792e3          	bnez	a5,80003370 <_ZL8producerPv+0x2c>
    800033b0:	fb9ff06f          	j	80003368 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033b4:	0104b503          	ld	a0,16(s1)
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	2dc080e7          	jalr	732(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	00013903          	ld	s2,0(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret

00000000800033d8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800033d8:	fd010113          	addi	sp,sp,-48
    800033dc:	02113423          	sd	ra,40(sp)
    800033e0:	02813023          	sd	s0,32(sp)
    800033e4:	00913c23          	sd	s1,24(sp)
    800033e8:	01213823          	sd	s2,16(sp)
    800033ec:	01313423          	sd	s3,8(sp)
    800033f0:	03010413          	addi	s0,sp,48
    800033f4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033f8:	00000993          	li	s3,0
    800033fc:	01c0006f          	j	80003418 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	15c080e7          	jalr	348(ra) # 8000155c <_Z15thread_dispatchv>
    80003408:	0500006f          	j	80003458 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000340c:	00a00513          	li	a0,10
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	30c080e7          	jalr	780(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80003418:	00008797          	auipc	a5,0x8
    8000341c:	6007a783          	lw	a5,1536(a5) # 8000ba18 <_ZL9threadEnd>
    80003420:	06079063          	bnez	a5,80003480 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003424:	00893503          	ld	a0,8(s2)
    80003428:	00003097          	auipc	ra,0x3
    8000342c:	340080e7          	jalr	832(ra) # 80006768 <_ZN6Buffer3getEv>
        i++;
    80003430:	0019849b          	addiw	s1,s3,1
    80003434:	0004899b          	sext.w	s3,s1
        putc(key);
    80003438:	0ff57513          	andi	a0,a0,255
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	2e0080e7          	jalr	736(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003444:	00092703          	lw	a4,0(s2)
    80003448:	0027179b          	slliw	a5,a4,0x2
    8000344c:	00e787bb          	addw	a5,a5,a4
    80003450:	02f4e7bb          	remw	a5,s1,a5
    80003454:	fa0786e3          	beqz	a5,80003400 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003458:	05000793          	li	a5,80
    8000345c:	02f4e4bb          	remw	s1,s1,a5
    80003460:	fa049ce3          	bnez	s1,80003418 <_ZL8consumerPv+0x40>
    80003464:	fa9ff06f          	j	8000340c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003468:	00893503          	ld	a0,8(s2)
    8000346c:	00003097          	auipc	ra,0x3
    80003470:	2fc080e7          	jalr	764(ra) # 80006768 <_ZN6Buffer3getEv>
        putc(key);
    80003474:	0ff57513          	andi	a0,a0,255
    80003478:	ffffe097          	auipc	ra,0xffffe
    8000347c:	2a4080e7          	jalr	676(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003480:	00893503          	ld	a0,8(s2)
    80003484:	00003097          	auipc	ra,0x3
    80003488:	370080e7          	jalr	880(ra) # 800067f4 <_ZN6Buffer6getCntEv>
    8000348c:	fca04ee3          	bgtz	a0,80003468 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003490:	01093503          	ld	a0,16(s2)
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	200080e7          	jalr	512(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    8000349c:	02813083          	ld	ra,40(sp)
    800034a0:	02013403          	ld	s0,32(sp)
    800034a4:	01813483          	ld	s1,24(sp)
    800034a8:	01013903          	ld	s2,16(sp)
    800034ac:	00813983          	ld	s3,8(sp)
    800034b0:	03010113          	addi	sp,sp,48
    800034b4:	00008067          	ret

00000000800034b8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034b8:	f9010113          	addi	sp,sp,-112
    800034bc:	06113423          	sd	ra,104(sp)
    800034c0:	06813023          	sd	s0,96(sp)
    800034c4:	04913c23          	sd	s1,88(sp)
    800034c8:	05213823          	sd	s2,80(sp)
    800034cc:	05313423          	sd	s3,72(sp)
    800034d0:	05413023          	sd	s4,64(sp)
    800034d4:	03513c23          	sd	s5,56(sp)
    800034d8:	03613823          	sd	s6,48(sp)
    800034dc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800034e0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800034e4:	00006517          	auipc	a0,0x6
    800034e8:	b4c50513          	addi	a0,a0,-1204 # 80009030 <CONSOLE_STATUS+0x20>
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	220080e7          	jalr	544(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    800034f4:	01e00593          	li	a1,30
    800034f8:	fa040493          	addi	s1,s0,-96
    800034fc:	00048513          	mv	a0,s1
    80003500:	00002097          	auipc	ra,0x2
    80003504:	294080e7          	jalr	660(ra) # 80005794 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003508:	00048513          	mv	a0,s1
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	360080e7          	jalr	864(ra) # 8000586c <_Z11stringToIntPKc>
    80003514:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	b3850513          	addi	a0,a0,-1224 # 80009050 <CONSOLE_STATUS+0x40>
    80003520:	00002097          	auipc	ra,0x2
    80003524:	1ec080e7          	jalr	492(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    80003528:	01e00593          	li	a1,30
    8000352c:	00048513          	mv	a0,s1
    80003530:	00002097          	auipc	ra,0x2
    80003534:	264080e7          	jalr	612(ra) # 80005794 <_Z9getStringPci>
    n = stringToInt(input);
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	330080e7          	jalr	816(ra) # 8000586c <_Z11stringToIntPKc>
    80003544:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	b2850513          	addi	a0,a0,-1240 # 80009070 <CONSOLE_STATUS+0x60>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	1bc080e7          	jalr	444(ra) # 8000570c <_Z11printStringPKc>
    80003558:	00000613          	li	a2,0
    8000355c:	00a00593          	li	a1,10
    80003560:	00090513          	mv	a0,s2
    80003564:	00002097          	auipc	ra,0x2
    80003568:	358080e7          	jalr	856(ra) # 800058bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000356c:	00006517          	auipc	a0,0x6
    80003570:	b1c50513          	addi	a0,a0,-1252 # 80009088 <CONSOLE_STATUS+0x78>
    80003574:	00002097          	auipc	ra,0x2
    80003578:	198080e7          	jalr	408(ra) # 8000570c <_Z11printStringPKc>
    8000357c:	00000613          	li	a2,0
    80003580:	00a00593          	li	a1,10
    80003584:	00048513          	mv	a0,s1
    80003588:	00002097          	auipc	ra,0x2
    8000358c:	334080e7          	jalr	820(ra) # 800058bc <_Z8printIntiii>
    printString(".\n");
    80003590:	00006517          	auipc	a0,0x6
    80003594:	b1050513          	addi	a0,a0,-1264 # 800090a0 <CONSOLE_STATUS+0x90>
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	174080e7          	jalr	372(ra) # 8000570c <_Z11printStringPKc>
    if(threadNum > n) {
    800035a0:	0324c463          	blt	s1,s2,800035c8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035a4:	03205c63          	blez	s2,800035dc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035a8:	03800513          	li	a0,56
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	4e4080e7          	jalr	1252(ra) # 80001a90 <_Znwm>
    800035b4:	00050a13          	mv	s4,a0
    800035b8:	00048593          	mv	a1,s1
    800035bc:	00003097          	auipc	ra,0x3
    800035c0:	080080e7          	jalr	128(ra) # 8000663c <_ZN6BufferC1Ei>
    800035c4:	0300006f          	j	800035f4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	ae050513          	addi	a0,a0,-1312 # 800090a8 <CONSOLE_STATUS+0x98>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	13c080e7          	jalr	316(ra) # 8000570c <_Z11printStringPKc>
        return;
    800035d8:	0140006f          	j	800035ec <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035dc:	00006517          	auipc	a0,0x6
    800035e0:	b0c50513          	addi	a0,a0,-1268 # 800090e8 <CONSOLE_STATUS+0xd8>
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	128080e7          	jalr	296(ra) # 8000570c <_Z11printStringPKc>
        return;
    800035ec:	000b0113          	mv	sp,s6
    800035f0:	1500006f          	j	80003740 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800035f4:	00000593          	li	a1,0
    800035f8:	00008517          	auipc	a0,0x8
    800035fc:	42850513          	addi	a0,a0,1064 # 8000ba20 <_ZL10waitForAll>
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	fb8080e7          	jalr	-72(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003608:	00391793          	slli	a5,s2,0x3
    8000360c:	00f78793          	addi	a5,a5,15
    80003610:	ff07f793          	andi	a5,a5,-16
    80003614:	40f10133          	sub	sp,sp,a5
    80003618:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000361c:	0019071b          	addiw	a4,s2,1
    80003620:	00171793          	slli	a5,a4,0x1
    80003624:	00e787b3          	add	a5,a5,a4
    80003628:	00379793          	slli	a5,a5,0x3
    8000362c:	00f78793          	addi	a5,a5,15
    80003630:	ff07f793          	andi	a5,a5,-16
    80003634:	40f10133          	sub	sp,sp,a5
    80003638:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000363c:	00191613          	slli	a2,s2,0x1
    80003640:	012607b3          	add	a5,a2,s2
    80003644:	00379793          	slli	a5,a5,0x3
    80003648:	00f987b3          	add	a5,s3,a5
    8000364c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003650:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003654:	00008717          	auipc	a4,0x8
    80003658:	3cc73703          	ld	a4,972(a4) # 8000ba20 <_ZL10waitForAll>
    8000365c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003660:	00078613          	mv	a2,a5
    80003664:	00000597          	auipc	a1,0x0
    80003668:	d7458593          	addi	a1,a1,-652 # 800033d8 <_ZL8consumerPv>
    8000366c:	f9840513          	addi	a0,s0,-104
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	dc4080e7          	jalr	-572(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003678:	00000493          	li	s1,0
    8000367c:	0280006f          	j	800036a4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003680:	00000597          	auipc	a1,0x0
    80003684:	c1458593          	addi	a1,a1,-1004 # 80003294 <_ZL16producerKeyboardPv>
                      data + i);
    80003688:	00179613          	slli	a2,a5,0x1
    8000368c:	00f60633          	add	a2,a2,a5
    80003690:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003694:	00c98633          	add	a2,s3,a2
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	d9c080e7          	jalr	-612(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036a0:	0014849b          	addiw	s1,s1,1
    800036a4:	0524d263          	bge	s1,s2,800036e8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036a8:	00149793          	slli	a5,s1,0x1
    800036ac:	009787b3          	add	a5,a5,s1
    800036b0:	00379793          	slli	a5,a5,0x3
    800036b4:	00f987b3          	add	a5,s3,a5
    800036b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036bc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800036c0:	00008717          	auipc	a4,0x8
    800036c4:	36073703          	ld	a4,864(a4) # 8000ba20 <_ZL10waitForAll>
    800036c8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036cc:	00048793          	mv	a5,s1
    800036d0:	00349513          	slli	a0,s1,0x3
    800036d4:	00aa8533          	add	a0,s5,a0
    800036d8:	fa9054e3          	blez	s1,80003680 <_Z22producerConsumer_C_APIv+0x1c8>
    800036dc:	00000597          	auipc	a1,0x0
    800036e0:	c6858593          	addi	a1,a1,-920 # 80003344 <_ZL8producerPv>
    800036e4:	fa5ff06f          	j	80003688 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	e74080e7          	jalr	-396(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800036f0:	00000493          	li	s1,0
    800036f4:	00994e63          	blt	s2,s1,80003710 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800036f8:	00008517          	auipc	a0,0x8
    800036fc:	32853503          	ld	a0,808(a0) # 8000ba20 <_ZL10waitForAll>
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	f48080e7          	jalr	-184(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003708:	0014849b          	addiw	s1,s1,1
    8000370c:	fe9ff06f          	j	800036f4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003710:	00008517          	auipc	a0,0x8
    80003714:	31053503          	ld	a0,784(a0) # 8000ba20 <_ZL10waitForAll>
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	ee4080e7          	jalr	-284(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003720:	000a0e63          	beqz	s4,8000373c <_Z22producerConsumer_C_APIv+0x284>
    80003724:	000a0513          	mv	a0,s4
    80003728:	00003097          	auipc	ra,0x3
    8000372c:	154080e7          	jalr	340(ra) # 8000687c <_ZN6BufferD1Ev>
    80003730:	000a0513          	mv	a0,s4
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	3ac080e7          	jalr	940(ra) # 80001ae0 <_ZdlPv>
    8000373c:	000b0113          	mv	sp,s6

}
    80003740:	f9040113          	addi	sp,s0,-112
    80003744:	06813083          	ld	ra,104(sp)
    80003748:	06013403          	ld	s0,96(sp)
    8000374c:	05813483          	ld	s1,88(sp)
    80003750:	05013903          	ld	s2,80(sp)
    80003754:	04813983          	ld	s3,72(sp)
    80003758:	04013a03          	ld	s4,64(sp)
    8000375c:	03813a83          	ld	s5,56(sp)
    80003760:	03013b03          	ld	s6,48(sp)
    80003764:	07010113          	addi	sp,sp,112
    80003768:	00008067          	ret
    8000376c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003770:	000a0513          	mv	a0,s4
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	36c080e7          	jalr	876(ra) # 80001ae0 <_ZdlPv>
    8000377c:	00048513          	mv	a0,s1
    80003780:	00009097          	auipc	ra,0x9
    80003784:	3b8080e7          	jalr	952(ra) # 8000cb38 <_Unwind_Resume>

0000000080003788 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	01213023          	sd	s2,0(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800037a4:	00100793          	li	a5,1
    800037a8:	02a7f863          	bgeu	a5,a0,800037d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800037ac:	00a00793          	li	a5,10
    800037b0:	02f577b3          	remu	a5,a0,a5
    800037b4:	02078e63          	beqz	a5,800037f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800037b8:	fff48513          	addi	a0,s1,-1
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	fcc080e7          	jalr	-52(ra) # 80003788 <_ZL9fibonaccim>
    800037c4:	00050913          	mv	s2,a0
    800037c8:	ffe48513          	addi	a0,s1,-2
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	fbc080e7          	jalr	-68(ra) # 80003788 <_ZL9fibonaccim>
    800037d4:	00a90533          	add	a0,s2,a0
}
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	00813483          	ld	s1,8(sp)
    800037e4:	00013903          	ld	s2,0(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	d6c080e7          	jalr	-660(ra) # 8000155c <_Z15thread_dispatchv>
    800037f8:	fc1ff06f          	j	800037b8 <_ZL9fibonaccim+0x30>

00000000800037fc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	01213023          	sd	s2,0(sp)
    80003810:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003814:	00000913          	li	s2,0
    80003818:	0380006f          	j	80003850 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	d40080e7          	jalr	-704(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003824:	00148493          	addi	s1,s1,1
    80003828:	000027b7          	lui	a5,0x2
    8000382c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003830:	0097ee63          	bltu	a5,s1,8000384c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003834:	00000713          	li	a4,0
    80003838:	000077b7          	lui	a5,0x7
    8000383c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003840:	fce7eee3          	bltu	a5,a4,8000381c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003844:	00170713          	addi	a4,a4,1
    80003848:	ff1ff06f          	j	80003838 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000384c:	00190913          	addi	s2,s2,1
    80003850:	00900793          	li	a5,9
    80003854:	0527e063          	bltu	a5,s2,80003894 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	8c050513          	addi	a0,a0,-1856 # 80009118 <CONSOLE_STATUS+0x108>
    80003860:	00002097          	auipc	ra,0x2
    80003864:	eac080e7          	jalr	-340(ra) # 8000570c <_Z11printStringPKc>
    80003868:	00000613          	li	a2,0
    8000386c:	00a00593          	li	a1,10
    80003870:	0009051b          	sext.w	a0,s2
    80003874:	00002097          	auipc	ra,0x2
    80003878:	048080e7          	jalr	72(ra) # 800058bc <_Z8printIntiii>
    8000387c:	00006517          	auipc	a0,0x6
    80003880:	afc50513          	addi	a0,a0,-1284 # 80009378 <CONSOLE_STATUS+0x368>
    80003884:	00002097          	auipc	ra,0x2
    80003888:	e88080e7          	jalr	-376(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000388c:	00000493          	li	s1,0
    80003890:	f99ff06f          	j	80003828 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003894:	00006517          	auipc	a0,0x6
    80003898:	88c50513          	addi	a0,a0,-1908 # 80009120 <CONSOLE_STATUS+0x110>
    8000389c:	00002097          	auipc	ra,0x2
    800038a0:	e70080e7          	jalr	-400(ra) # 8000570c <_Z11printStringPKc>
    finishedA = true;
    800038a4:	00100793          	li	a5,1
    800038a8:	00008717          	auipc	a4,0x8
    800038ac:	18f70023          	sb	a5,384(a4) # 8000ba28 <_ZL9finishedA>
}
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00813483          	ld	s1,8(sp)
    800038bc:	00013903          	ld	s2,0(sp)
    800038c0:	02010113          	addi	sp,sp,32
    800038c4:	00008067          	ret

00000000800038c8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800038c8:	fe010113          	addi	sp,sp,-32
    800038cc:	00113c23          	sd	ra,24(sp)
    800038d0:	00813823          	sd	s0,16(sp)
    800038d4:	00913423          	sd	s1,8(sp)
    800038d8:	01213023          	sd	s2,0(sp)
    800038dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800038e0:	00000913          	li	s2,0
    800038e4:	0380006f          	j	8000391c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	c74080e7          	jalr	-908(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038f0:	00148493          	addi	s1,s1,1
    800038f4:	000027b7          	lui	a5,0x2
    800038f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038fc:	0097ee63          	bltu	a5,s1,80003918 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003900:	00000713          	li	a4,0
    80003904:	000077b7          	lui	a5,0x7
    80003908:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000390c:	fce7eee3          	bltu	a5,a4,800038e8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003910:	00170713          	addi	a4,a4,1
    80003914:	ff1ff06f          	j	80003904 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003918:	00190913          	addi	s2,s2,1
    8000391c:	00f00793          	li	a5,15
    80003920:	0527e063          	bltu	a5,s2,80003960 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003924:	00006517          	auipc	a0,0x6
    80003928:	80c50513          	addi	a0,a0,-2036 # 80009130 <CONSOLE_STATUS+0x120>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	de0080e7          	jalr	-544(ra) # 8000570c <_Z11printStringPKc>
    80003934:	00000613          	li	a2,0
    80003938:	00a00593          	li	a1,10
    8000393c:	0009051b          	sext.w	a0,s2
    80003940:	00002097          	auipc	ra,0x2
    80003944:	f7c080e7          	jalr	-132(ra) # 800058bc <_Z8printIntiii>
    80003948:	00006517          	auipc	a0,0x6
    8000394c:	a3050513          	addi	a0,a0,-1488 # 80009378 <CONSOLE_STATUS+0x368>
    80003950:	00002097          	auipc	ra,0x2
    80003954:	dbc080e7          	jalr	-580(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003958:	00000493          	li	s1,0
    8000395c:	f99ff06f          	j	800038f4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003960:	00005517          	auipc	a0,0x5
    80003964:	7d850513          	addi	a0,a0,2008 # 80009138 <CONSOLE_STATUS+0x128>
    80003968:	00002097          	auipc	ra,0x2
    8000396c:	da4080e7          	jalr	-604(ra) # 8000570c <_Z11printStringPKc>
    finishedB = true;
    80003970:	00100793          	li	a5,1
    80003974:	00008717          	auipc	a4,0x8
    80003978:	0af70aa3          	sb	a5,181(a4) # 8000ba29 <_ZL9finishedB>
    thread_dispatch();
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	be0080e7          	jalr	-1056(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	00013903          	ld	s2,0(sp)
    80003994:	02010113          	addi	sp,sp,32
    80003998:	00008067          	ret

000000008000399c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00113c23          	sd	ra,24(sp)
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	01213023          	sd	s2,0(sp)
    800039b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800039b4:	00000493          	li	s1,0
    800039b8:	0400006f          	j	800039f8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039bc:	00005517          	auipc	a0,0x5
    800039c0:	78c50513          	addi	a0,a0,1932 # 80009148 <CONSOLE_STATUS+0x138>
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	d48080e7          	jalr	-696(ra) # 8000570c <_Z11printStringPKc>
    800039cc:	00000613          	li	a2,0
    800039d0:	00a00593          	li	a1,10
    800039d4:	00048513          	mv	a0,s1
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	ee4080e7          	jalr	-284(ra) # 800058bc <_Z8printIntiii>
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	99850513          	addi	a0,a0,-1640 # 80009378 <CONSOLE_STATUS+0x368>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	d24080e7          	jalr	-732(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800039f0:	0014849b          	addiw	s1,s1,1
    800039f4:	0ff4f493          	andi	s1,s1,255
    800039f8:	00200793          	li	a5,2
    800039fc:	fc97f0e3          	bgeu	a5,s1,800039bc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a00:	00005517          	auipc	a0,0x5
    80003a04:	75050513          	addi	a0,a0,1872 # 80009150 <CONSOLE_STATUS+0x140>
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	d04080e7          	jalr	-764(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a10:	00700313          	li	t1,7
    thread_dispatch();
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	b48080e7          	jalr	-1208(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a1c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a20:	00005517          	auipc	a0,0x5
    80003a24:	74050513          	addi	a0,a0,1856 # 80009160 <CONSOLE_STATUS+0x150>
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	ce4080e7          	jalr	-796(ra) # 8000570c <_Z11printStringPKc>
    80003a30:	00000613          	li	a2,0
    80003a34:	00a00593          	li	a1,10
    80003a38:	0009051b          	sext.w	a0,s2
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	e80080e7          	jalr	-384(ra) # 800058bc <_Z8printIntiii>
    80003a44:	00006517          	auipc	a0,0x6
    80003a48:	93450513          	addi	a0,a0,-1740 # 80009378 <CONSOLE_STATUS+0x368>
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	cc0080e7          	jalr	-832(ra) # 8000570c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a54:	00c00513          	li	a0,12
    80003a58:	00000097          	auipc	ra,0x0
    80003a5c:	d30080e7          	jalr	-720(ra) # 80003788 <_ZL9fibonaccim>
    80003a60:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a64:	00005517          	auipc	a0,0x5
    80003a68:	70450513          	addi	a0,a0,1796 # 80009168 <CONSOLE_STATUS+0x158>
    80003a6c:	00002097          	auipc	ra,0x2
    80003a70:	ca0080e7          	jalr	-864(ra) # 8000570c <_Z11printStringPKc>
    80003a74:	00000613          	li	a2,0
    80003a78:	00a00593          	li	a1,10
    80003a7c:	0009051b          	sext.w	a0,s2
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	e3c080e7          	jalr	-452(ra) # 800058bc <_Z8printIntiii>
    80003a88:	00006517          	auipc	a0,0x6
    80003a8c:	8f050513          	addi	a0,a0,-1808 # 80009378 <CONSOLE_STATUS+0x368>
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	c7c080e7          	jalr	-900(ra) # 8000570c <_Z11printStringPKc>
    80003a98:	0400006f          	j	80003ad8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a9c:	00005517          	auipc	a0,0x5
    80003aa0:	6ac50513          	addi	a0,a0,1708 # 80009148 <CONSOLE_STATUS+0x138>
    80003aa4:	00002097          	auipc	ra,0x2
    80003aa8:	c68080e7          	jalr	-920(ra) # 8000570c <_Z11printStringPKc>
    80003aac:	00000613          	li	a2,0
    80003ab0:	00a00593          	li	a1,10
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	e04080e7          	jalr	-508(ra) # 800058bc <_Z8printIntiii>
    80003ac0:	00006517          	auipc	a0,0x6
    80003ac4:	8b850513          	addi	a0,a0,-1864 # 80009378 <CONSOLE_STATUS+0x368>
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	c44080e7          	jalr	-956(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ad0:	0014849b          	addiw	s1,s1,1
    80003ad4:	0ff4f493          	andi	s1,s1,255
    80003ad8:	00500793          	li	a5,5
    80003adc:	fc97f0e3          	bgeu	a5,s1,80003a9c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003ae0:	00005517          	auipc	a0,0x5
    80003ae4:	69850513          	addi	a0,a0,1688 # 80009178 <CONSOLE_STATUS+0x168>
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	c24080e7          	jalr	-988(ra) # 8000570c <_Z11printStringPKc>
    finishedC = true;
    80003af0:	00100793          	li	a5,1
    80003af4:	00008717          	auipc	a4,0x8
    80003af8:	f2f70b23          	sb	a5,-202(a4) # 8000ba2a <_ZL9finishedC>
    thread_dispatch();
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	a60080e7          	jalr	-1440(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003b04:	01813083          	ld	ra,24(sp)
    80003b08:	01013403          	ld	s0,16(sp)
    80003b0c:	00813483          	ld	s1,8(sp)
    80003b10:	00013903          	ld	s2,0(sp)
    80003b14:	02010113          	addi	sp,sp,32
    80003b18:	00008067          	ret

0000000080003b1c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00113c23          	sd	ra,24(sp)
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	01213023          	sd	s2,0(sp)
    80003b30:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b34:	00a00493          	li	s1,10
    80003b38:	0400006f          	j	80003b78 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b3c:	00005517          	auipc	a0,0x5
    80003b40:	64c50513          	addi	a0,a0,1612 # 80009188 <CONSOLE_STATUS+0x178>
    80003b44:	00002097          	auipc	ra,0x2
    80003b48:	bc8080e7          	jalr	-1080(ra) # 8000570c <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	00048513          	mv	a0,s1
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	d64080e7          	jalr	-668(ra) # 800058bc <_Z8printIntiii>
    80003b60:	00006517          	auipc	a0,0x6
    80003b64:	81850513          	addi	a0,a0,-2024 # 80009378 <CONSOLE_STATUS+0x368>
    80003b68:	00002097          	auipc	ra,0x2
    80003b6c:	ba4080e7          	jalr	-1116(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b70:	0014849b          	addiw	s1,s1,1
    80003b74:	0ff4f493          	andi	s1,s1,255
    80003b78:	00c00793          	li	a5,12
    80003b7c:	fc97f0e3          	bgeu	a5,s1,80003b3c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	61050513          	addi	a0,a0,1552 # 80009190 <CONSOLE_STATUS+0x180>
    80003b88:	00002097          	auipc	ra,0x2
    80003b8c:	b84080e7          	jalr	-1148(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b90:	00500313          	li	t1,5
    thread_dispatch();
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	9c8080e7          	jalr	-1592(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b9c:	01000513          	li	a0,16
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	be8080e7          	jalr	-1048(ra) # 80003788 <_ZL9fibonaccim>
    80003ba8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003bac:	00005517          	auipc	a0,0x5
    80003bb0:	5f450513          	addi	a0,a0,1524 # 800091a0 <CONSOLE_STATUS+0x190>
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	b58080e7          	jalr	-1192(ra) # 8000570c <_Z11printStringPKc>
    80003bbc:	00000613          	li	a2,0
    80003bc0:	00a00593          	li	a1,10
    80003bc4:	0009051b          	sext.w	a0,s2
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	cf4080e7          	jalr	-780(ra) # 800058bc <_Z8printIntiii>
    80003bd0:	00005517          	auipc	a0,0x5
    80003bd4:	7a850513          	addi	a0,a0,1960 # 80009378 <CONSOLE_STATUS+0x368>
    80003bd8:	00002097          	auipc	ra,0x2
    80003bdc:	b34080e7          	jalr	-1228(ra) # 8000570c <_Z11printStringPKc>
    80003be0:	0400006f          	j	80003c20 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003be4:	00005517          	auipc	a0,0x5
    80003be8:	5a450513          	addi	a0,a0,1444 # 80009188 <CONSOLE_STATUS+0x178>
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	b20080e7          	jalr	-1248(ra) # 8000570c <_Z11printStringPKc>
    80003bf4:	00000613          	li	a2,0
    80003bf8:	00a00593          	li	a1,10
    80003bfc:	00048513          	mv	a0,s1
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	cbc080e7          	jalr	-836(ra) # 800058bc <_Z8printIntiii>
    80003c08:	00005517          	auipc	a0,0x5
    80003c0c:	77050513          	addi	a0,a0,1904 # 80009378 <CONSOLE_STATUS+0x368>
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	afc080e7          	jalr	-1284(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c18:	0014849b          	addiw	s1,s1,1
    80003c1c:	0ff4f493          	andi	s1,s1,255
    80003c20:	00f00793          	li	a5,15
    80003c24:	fc97f0e3          	bgeu	a5,s1,80003be4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c28:	00005517          	auipc	a0,0x5
    80003c2c:	58850513          	addi	a0,a0,1416 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	adc080e7          	jalr	-1316(ra) # 8000570c <_Z11printStringPKc>
    finishedD = true;
    80003c38:	00100793          	li	a5,1
    80003c3c:	00008717          	auipc	a4,0x8
    80003c40:	def707a3          	sb	a5,-529(a4) # 8000ba2b <_ZL9finishedD>
    thread_dispatch();
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	918080e7          	jalr	-1768(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret

0000000080003c64 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c64:	fc010113          	addi	sp,sp,-64
    80003c68:	02113c23          	sd	ra,56(sp)
    80003c6c:	02813823          	sd	s0,48(sp)
    80003c70:	02913423          	sd	s1,40(sp)
    80003c74:	03213023          	sd	s2,32(sp)
    80003c78:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003c7c:	02000513          	li	a0,32
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	e10080e7          	jalr	-496(ra) # 80001a90 <_Znwm>
    80003c88:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	124080e7          	jalr	292(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80003c94:	00008797          	auipc	a5,0x8
    80003c98:	aec78793          	addi	a5,a5,-1300 # 8000b780 <_ZTV7WorkerA+0x10>
    80003c9c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ca0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ca4:	00005517          	auipc	a0,0x5
    80003ca8:	51c50513          	addi	a0,a0,1308 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	a60080e7          	jalr	-1440(ra) # 8000570c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003cb4:	02000513          	li	a0,32
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	dd8080e7          	jalr	-552(ra) # 80001a90 <_Znwm>
    80003cc0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	0ec080e7          	jalr	236(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80003ccc:	00008797          	auipc	a5,0x8
    80003cd0:	adc78793          	addi	a5,a5,-1316 # 8000b7a8 <_ZTV7WorkerB+0x10>
    80003cd4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003cd8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	4fc50513          	addi	a0,a0,1276 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	a28080e7          	jalr	-1496(ra) # 8000570c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003cec:	02000513          	li	a0,32
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	da0080e7          	jalr	-608(ra) # 80001a90 <_Znwm>
    80003cf8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	0b4080e7          	jalr	180(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80003d04:	00008797          	auipc	a5,0x8
    80003d08:	acc78793          	addi	a5,a5,-1332 # 8000b7d0 <_ZTV7WorkerC+0x10>
    80003d0c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d10:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	4dc50513          	addi	a0,a0,1244 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	9f0080e7          	jalr	-1552(ra) # 8000570c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d24:	02000513          	li	a0,32
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	d68080e7          	jalr	-664(ra) # 80001a90 <_Znwm>
    80003d30:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	07c080e7          	jalr	124(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80003d3c:	00008797          	auipc	a5,0x8
    80003d40:	abc78793          	addi	a5,a5,-1348 # 8000b7f8 <_ZTV7WorkerD+0x10>
    80003d44:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d48:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d4c:	00005517          	auipc	a0,0x5
    80003d50:	4bc50513          	addi	a0,a0,1212 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003d54:	00002097          	auipc	ra,0x2
    80003d58:	9b8080e7          	jalr	-1608(ra) # 8000570c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d5c:	00000493          	li	s1,0
    80003d60:	00300793          	li	a5,3
    80003d64:	0297c663          	blt	a5,s1,80003d90 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003d68:	00349793          	slli	a5,s1,0x3
    80003d6c:	fe040713          	addi	a4,s0,-32
    80003d70:	00f707b3          	add	a5,a4,a5
    80003d74:	fe07b503          	ld	a0,-32(a5)
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	fdc080e7          	jalr	-36(ra) # 80001d54 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003d80:	0014849b          	addiw	s1,s1,1
    80003d84:	fddff06f          	j	80003d60 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	000080e7          	jalr	ra # 80001d88 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	c987c783          	lbu	a5,-872(a5) # 8000ba28 <_ZL9finishedA>
    80003d98:	fe0788e3          	beqz	a5,80003d88 <_Z20Threads_CPP_API_testv+0x124>
    80003d9c:	00008797          	auipc	a5,0x8
    80003da0:	c8d7c783          	lbu	a5,-883(a5) # 8000ba29 <_ZL9finishedB>
    80003da4:	fe0782e3          	beqz	a5,80003d88 <_Z20Threads_CPP_API_testv+0x124>
    80003da8:	00008797          	auipc	a5,0x8
    80003dac:	c827c783          	lbu	a5,-894(a5) # 8000ba2a <_ZL9finishedC>
    80003db0:	fc078ce3          	beqz	a5,80003d88 <_Z20Threads_CPP_API_testv+0x124>
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	c777c783          	lbu	a5,-905(a5) # 8000ba2b <_ZL9finishedD>
    80003dbc:	fc0786e3          	beqz	a5,80003d88 <_Z20Threads_CPP_API_testv+0x124>
    80003dc0:	fc040493          	addi	s1,s0,-64
    80003dc4:	0080006f          	j	80003dcc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003dc8:	00848493          	addi	s1,s1,8
    80003dcc:	fe040793          	addi	a5,s0,-32
    80003dd0:	08f48663          	beq	s1,a5,80003e5c <_Z20Threads_CPP_API_testv+0x1f8>
    80003dd4:	0004b503          	ld	a0,0(s1)
    80003dd8:	fe0508e3          	beqz	a0,80003dc8 <_Z20Threads_CPP_API_testv+0x164>
    80003ddc:	00053783          	ld	a5,0(a0)
    80003de0:	0087b783          	ld	a5,8(a5)
    80003de4:	000780e7          	jalr	a5
    80003de8:	fe1ff06f          	j	80003dc8 <_Z20Threads_CPP_API_testv+0x164>
    80003dec:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003df0:	00048513          	mv	a0,s1
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	cec080e7          	jalr	-788(ra) # 80001ae0 <_ZdlPv>
    80003dfc:	00090513          	mv	a0,s2
    80003e00:	00009097          	auipc	ra,0x9
    80003e04:	d38080e7          	jalr	-712(ra) # 8000cb38 <_Unwind_Resume>
    80003e08:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e0c:	00048513          	mv	a0,s1
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	cd0080e7          	jalr	-816(ra) # 80001ae0 <_ZdlPv>
    80003e18:	00090513          	mv	a0,s2
    80003e1c:	00009097          	auipc	ra,0x9
    80003e20:	d1c080e7          	jalr	-740(ra) # 8000cb38 <_Unwind_Resume>
    80003e24:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e28:	00048513          	mv	a0,s1
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	cb4080e7          	jalr	-844(ra) # 80001ae0 <_ZdlPv>
    80003e34:	00090513          	mv	a0,s2
    80003e38:	00009097          	auipc	ra,0x9
    80003e3c:	d00080e7          	jalr	-768(ra) # 8000cb38 <_Unwind_Resume>
    80003e40:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e44:	00048513          	mv	a0,s1
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	c98080e7          	jalr	-872(ra) # 80001ae0 <_ZdlPv>
    80003e50:	00090513          	mv	a0,s2
    80003e54:	00009097          	auipc	ra,0x9
    80003e58:	ce4080e7          	jalr	-796(ra) # 8000cb38 <_Unwind_Resume>
}
    80003e5c:	03813083          	ld	ra,56(sp)
    80003e60:	03013403          	ld	s0,48(sp)
    80003e64:	02813483          	ld	s1,40(sp)
    80003e68:	02013903          	ld	s2,32(sp)
    80003e6c:	04010113          	addi	sp,sp,64
    80003e70:	00008067          	ret

0000000080003e74 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003e74:	ff010113          	addi	sp,sp,-16
    80003e78:	00113423          	sd	ra,8(sp)
    80003e7c:	00813023          	sd	s0,0(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	00008797          	auipc	a5,0x8
    80003e88:	8fc78793          	addi	a5,a5,-1796 # 8000b780 <_ZTV7WorkerA+0x10>
    80003e8c:	00f53023          	sd	a5,0(a0)
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	ccc080e7          	jalr	-820(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003e98:	00813083          	ld	ra,8(sp)
    80003e9c:	00013403          	ld	s0,0(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <_ZN7WorkerAD0Ev>:
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00113c23          	sd	ra,24(sp)
    80003eb0:	00813823          	sd	s0,16(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    80003ebc:	00050493          	mv	s1,a0
    80003ec0:	00008797          	auipc	a5,0x8
    80003ec4:	8c078793          	addi	a5,a5,-1856 # 8000b780 <_ZTV7WorkerA+0x10>
    80003ec8:	00f53023          	sd	a5,0(a0)
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	c90080e7          	jalr	-880(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	c08080e7          	jalr	-1016(ra) # 80001ae0 <_ZdlPv>
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	02010113          	addi	sp,sp,32
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ef4:	ff010113          	addi	sp,sp,-16
    80003ef8:	00113423          	sd	ra,8(sp)
    80003efc:	00813023          	sd	s0,0(sp)
    80003f00:	01010413          	addi	s0,sp,16
    80003f04:	00008797          	auipc	a5,0x8
    80003f08:	8a478793          	addi	a5,a5,-1884 # 8000b7a8 <_ZTV7WorkerB+0x10>
    80003f0c:	00f53023          	sd	a5,0(a0)
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	c4c080e7          	jalr	-948(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN7WorkerBD0Ev>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00113c23          	sd	ra,24(sp)
    80003f30:	00813823          	sd	s0,16(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	02010413          	addi	s0,sp,32
    80003f3c:	00050493          	mv	s1,a0
    80003f40:	00008797          	auipc	a5,0x8
    80003f44:	86878793          	addi	a5,a5,-1944 # 8000b7a8 <_ZTV7WorkerB+0x10>
    80003f48:	00f53023          	sd	a5,0(a0)
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	c10080e7          	jalr	-1008(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	b88080e7          	jalr	-1144(ra) # 80001ae0 <_ZdlPv>
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
    80003f84:	00008797          	auipc	a5,0x8
    80003f88:	84c78793          	addi	a5,a5,-1972 # 8000b7d0 <_ZTV7WorkerC+0x10>
    80003f8c:	00f53023          	sd	a5,0(a0)
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	bcc080e7          	jalr	-1076(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZN7WorkerCD0Ev>:
    80003fa8:	fe010113          	addi	sp,sp,-32
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00913423          	sd	s1,8(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    80003fbc:	00050493          	mv	s1,a0
    80003fc0:	00008797          	auipc	a5,0x8
    80003fc4:	81078793          	addi	a5,a5,-2032 # 8000b7d0 <_ZTV7WorkerC+0x10>
    80003fc8:	00f53023          	sd	a5,0(a0)
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	b90080e7          	jalr	-1136(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	b08080e7          	jalr	-1272(ra) # 80001ae0 <_ZdlPv>
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	02010113          	addi	sp,sp,32
    80003ff0:	00008067          	ret

0000000080003ff4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ff4:	ff010113          	addi	sp,sp,-16
    80003ff8:	00113423          	sd	ra,8(sp)
    80003ffc:	00813023          	sd	s0,0(sp)
    80004000:	01010413          	addi	s0,sp,16
    80004004:	00007797          	auipc	a5,0x7
    80004008:	7f478793          	addi	a5,a5,2036 # 8000b7f8 <_ZTV7WorkerD+0x10>
    8000400c:	00f53023          	sd	a5,0(a0)
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	b4c080e7          	jalr	-1204(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZN7WorkerDD0Ev>:
    80004028:	fe010113          	addi	sp,sp,-32
    8000402c:	00113c23          	sd	ra,24(sp)
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00913423          	sd	s1,8(sp)
    80004038:	02010413          	addi	s0,sp,32
    8000403c:	00050493          	mv	s1,a0
    80004040:	00007797          	auipc	a5,0x7
    80004044:	7b878793          	addi	a5,a5,1976 # 8000b7f8 <_ZTV7WorkerD+0x10>
    80004048:	00f53023          	sd	a5,0(a0)
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	b10080e7          	jalr	-1264(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004054:	00048513          	mv	a0,s1
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	a88080e7          	jalr	-1400(ra) # 80001ae0 <_ZdlPv>
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	00813483          	ld	s1,8(sp)
    8000406c:	02010113          	addi	sp,sp,32
    80004070:	00008067          	ret

0000000080004074 <_ZN7WorkerA3runEv>:
    void run() override {
    80004074:	ff010113          	addi	sp,sp,-16
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	00813023          	sd	s0,0(sp)
    80004080:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004084:	00000593          	li	a1,0
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	774080e7          	jalr	1908(ra) # 800037fc <_ZN7WorkerA11workerBodyAEPv>
    }
    80004090:	00813083          	ld	ra,8(sp)
    80004094:	00013403          	ld	s0,0(sp)
    80004098:	01010113          	addi	sp,sp,16
    8000409c:	00008067          	ret

00000000800040a0 <_ZN7WorkerB3runEv>:
    void run() override {
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00113423          	sd	ra,8(sp)
    800040a8:	00813023          	sd	s0,0(sp)
    800040ac:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800040b0:	00000593          	li	a1,0
    800040b4:	00000097          	auipc	ra,0x0
    800040b8:	814080e7          	jalr	-2028(ra) # 800038c8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800040bc:	00813083          	ld	ra,8(sp)
    800040c0:	00013403          	ld	s0,0(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret

00000000800040cc <_ZN7WorkerC3runEv>:
    void run() override {
    800040cc:	ff010113          	addi	sp,sp,-16
    800040d0:	00113423          	sd	ra,8(sp)
    800040d4:	00813023          	sd	s0,0(sp)
    800040d8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800040dc:	00000593          	li	a1,0
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	8bc080e7          	jalr	-1860(ra) # 8000399c <_ZN7WorkerC11workerBodyCEPv>
    }
    800040e8:	00813083          	ld	ra,8(sp)
    800040ec:	00013403          	ld	s0,0(sp)
    800040f0:	01010113          	addi	sp,sp,16
    800040f4:	00008067          	ret

00000000800040f8 <_ZN7WorkerD3runEv>:
    void run() override {
    800040f8:	ff010113          	addi	sp,sp,-16
    800040fc:	00113423          	sd	ra,8(sp)
    80004100:	00813023          	sd	s0,0(sp)
    80004104:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004108:	00000593          	li	a1,0
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	a10080e7          	jalr	-1520(ra) # 80003b1c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004124:	f8010113          	addi	sp,sp,-128
    80004128:	06113c23          	sd	ra,120(sp)
    8000412c:	06813823          	sd	s0,112(sp)
    80004130:	06913423          	sd	s1,104(sp)
    80004134:	07213023          	sd	s2,96(sp)
    80004138:	05313c23          	sd	s3,88(sp)
    8000413c:	05413823          	sd	s4,80(sp)
    80004140:	05513423          	sd	s5,72(sp)
    80004144:	05613023          	sd	s6,64(sp)
    80004148:	03713c23          	sd	s7,56(sp)
    8000414c:	03813823          	sd	s8,48(sp)
    80004150:	03913423          	sd	s9,40(sp)
    80004154:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004158:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000415c:	00005517          	auipc	a0,0x5
    80004160:	ed450513          	addi	a0,a0,-300 # 80009030 <CONSOLE_STATUS+0x20>
    80004164:	00001097          	auipc	ra,0x1
    80004168:	5a8080e7          	jalr	1448(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    8000416c:	01e00593          	li	a1,30
    80004170:	f8040493          	addi	s1,s0,-128
    80004174:	00048513          	mv	a0,s1
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	61c080e7          	jalr	1564(ra) # 80005794 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004180:	00048513          	mv	a0,s1
    80004184:	00001097          	auipc	ra,0x1
    80004188:	6e8080e7          	jalr	1768(ra) # 8000586c <_Z11stringToIntPKc>
    8000418c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004190:	00005517          	auipc	a0,0x5
    80004194:	ec050513          	addi	a0,a0,-320 # 80009050 <CONSOLE_STATUS+0x40>
    80004198:	00001097          	auipc	ra,0x1
    8000419c:	574080e7          	jalr	1396(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    800041a0:	01e00593          	li	a1,30
    800041a4:	00048513          	mv	a0,s1
    800041a8:	00001097          	auipc	ra,0x1
    800041ac:	5ec080e7          	jalr	1516(ra) # 80005794 <_Z9getStringPci>
    n = stringToInt(input);
    800041b0:	00048513          	mv	a0,s1
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	6b8080e7          	jalr	1720(ra) # 8000586c <_Z11stringToIntPKc>
    800041bc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800041c0:	00005517          	auipc	a0,0x5
    800041c4:	eb050513          	addi	a0,a0,-336 # 80009070 <CONSOLE_STATUS+0x60>
    800041c8:	00001097          	auipc	ra,0x1
    800041cc:	544080e7          	jalr	1348(ra) # 8000570c <_Z11printStringPKc>
    printInt(threadNum);
    800041d0:	00000613          	li	a2,0
    800041d4:	00a00593          	li	a1,10
    800041d8:	00098513          	mv	a0,s3
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	6e0080e7          	jalr	1760(ra) # 800058bc <_Z8printIntiii>
    printString(" i velicina bafera ");
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	ea450513          	addi	a0,a0,-348 # 80009088 <CONSOLE_STATUS+0x78>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	520080e7          	jalr	1312(ra) # 8000570c <_Z11printStringPKc>
    printInt(n);
    800041f4:	00000613          	li	a2,0
    800041f8:	00a00593          	li	a1,10
    800041fc:	00048513          	mv	a0,s1
    80004200:	00001097          	auipc	ra,0x1
    80004204:	6bc080e7          	jalr	1724(ra) # 800058bc <_Z8printIntiii>
    printString(".\n");
    80004208:	00005517          	auipc	a0,0x5
    8000420c:	e9850513          	addi	a0,a0,-360 # 800090a0 <CONSOLE_STATUS+0x90>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	4fc080e7          	jalr	1276(ra) # 8000570c <_Z11printStringPKc>
    if (threadNum > n) {
    80004218:	0334c463          	blt	s1,s3,80004240 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000421c:	03305c63          	blez	s3,80004254 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004220:	03800513          	li	a0,56
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	86c080e7          	jalr	-1940(ra) # 80001a90 <_Znwm>
    8000422c:	00050a93          	mv	s5,a0
    80004230:	00048593          	mv	a1,s1
    80004234:	00001097          	auipc	ra,0x1
    80004238:	7a8080e7          	jalr	1960(ra) # 800059dc <_ZN9BufferCPPC1Ei>
    8000423c:	0300006f          	j	8000426c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	e6850513          	addi	a0,a0,-408 # 800090a8 <CONSOLE_STATUS+0x98>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	4c4080e7          	jalr	1220(ra) # 8000570c <_Z11printStringPKc>
        return;
    80004250:	0140006f          	j	80004264 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004254:	00005517          	auipc	a0,0x5
    80004258:	e9450513          	addi	a0,a0,-364 # 800090e8 <CONSOLE_STATUS+0xd8>
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	4b0080e7          	jalr	1200(ra) # 8000570c <_Z11printStringPKc>
        return;
    80004264:	000c0113          	mv	sp,s8
    80004268:	2140006f          	j	8000447c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000426c:	01000513          	li	a0,16
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	820080e7          	jalr	-2016(ra) # 80001a90 <_Znwm>
    80004278:	00050913          	mv	s2,a0
    8000427c:	00000593          	li	a1,0
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	bbc080e7          	jalr	-1092(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    80004288:	00007797          	auipc	a5,0x7
    8000428c:	7b27b823          	sd	s2,1968(a5) # 8000ba38 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004290:	00399793          	slli	a5,s3,0x3
    80004294:	00f78793          	addi	a5,a5,15
    80004298:	ff07f793          	andi	a5,a5,-16
    8000429c:	40f10133          	sub	sp,sp,a5
    800042a0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800042a4:	0019871b          	addiw	a4,s3,1
    800042a8:	00171793          	slli	a5,a4,0x1
    800042ac:	00e787b3          	add	a5,a5,a4
    800042b0:	00379793          	slli	a5,a5,0x3
    800042b4:	00f78793          	addi	a5,a5,15
    800042b8:	ff07f793          	andi	a5,a5,-16
    800042bc:	40f10133          	sub	sp,sp,a5
    800042c0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800042c4:	00199493          	slli	s1,s3,0x1
    800042c8:	013484b3          	add	s1,s1,s3
    800042cc:	00349493          	slli	s1,s1,0x3
    800042d0:	009b04b3          	add	s1,s6,s1
    800042d4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800042d8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800042dc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042e0:	02800513          	li	a0,40
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	7ac080e7          	jalr	1964(ra) # 80001a90 <_Znwm>
    800042ec:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	ac0080e7          	jalr	-1344(ra) # 80001db0 <_ZN6ThreadC1Ev>
    800042f8:	00007797          	auipc	a5,0x7
    800042fc:	57878793          	addi	a5,a5,1400 # 8000b870 <_ZTV8Consumer+0x10>
    80004300:	00fbb023          	sd	a5,0(s7)
    80004304:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004308:	000b8513          	mv	a0,s7
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	a48080e7          	jalr	-1464(ra) # 80001d54 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004314:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004318:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000431c:	00007797          	auipc	a5,0x7
    80004320:	71c7b783          	ld	a5,1820(a5) # 8000ba38 <_ZL10waitForAll>
    80004324:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004328:	02800513          	li	a0,40
    8000432c:	ffffd097          	auipc	ra,0xffffd
    80004330:	764080e7          	jalr	1892(ra) # 80001a90 <_Znwm>
    80004334:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	a78080e7          	jalr	-1416(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80004340:	00007797          	auipc	a5,0x7
    80004344:	4e078793          	addi	a5,a5,1248 # 8000b820 <_ZTV16ProducerKeyborad+0x10>
    80004348:	00f4b023          	sd	a5,0(s1)
    8000434c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004350:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004354:	00048513          	mv	a0,s1
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	9fc080e7          	jalr	-1540(ra) # 80001d54 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004360:	00100913          	li	s2,1
    80004364:	0300006f          	j	80004394 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004368:	00007797          	auipc	a5,0x7
    8000436c:	4e078793          	addi	a5,a5,1248 # 8000b848 <_ZTV8Producer+0x10>
    80004370:	00fcb023          	sd	a5,0(s9)
    80004374:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004378:	00391793          	slli	a5,s2,0x3
    8000437c:	00fa07b3          	add	a5,s4,a5
    80004380:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004384:	000c8513          	mv	a0,s9
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	9cc080e7          	jalr	-1588(ra) # 80001d54 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004390:	0019091b          	addiw	s2,s2,1
    80004394:	05395263          	bge	s2,s3,800043d8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004398:	00191493          	slli	s1,s2,0x1
    8000439c:	012484b3          	add	s1,s1,s2
    800043a0:	00349493          	slli	s1,s1,0x3
    800043a4:	009b04b3          	add	s1,s6,s1
    800043a8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800043ac:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800043b0:	00007797          	auipc	a5,0x7
    800043b4:	6887b783          	ld	a5,1672(a5) # 8000ba38 <_ZL10waitForAll>
    800043b8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800043bc:	02800513          	li	a0,40
    800043c0:	ffffd097          	auipc	ra,0xffffd
    800043c4:	6d0080e7          	jalr	1744(ra) # 80001a90 <_Znwm>
    800043c8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	9e4080e7          	jalr	-1564(ra) # 80001db0 <_ZN6ThreadC1Ev>
    800043d4:	f95ff06f          	j	80004368 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	9b0080e7          	jalr	-1616(ra) # 80001d88 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800043e0:	00000493          	li	s1,0
    800043e4:	0099ce63          	blt	s3,s1,80004400 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800043e8:	00007517          	auipc	a0,0x7
    800043ec:	65053503          	ld	a0,1616(a0) # 8000ba38 <_ZL10waitForAll>
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	a88080e7          	jalr	-1400(ra) # 80001e78 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800043f8:	0014849b          	addiw	s1,s1,1
    800043fc:	fe9ff06f          	j	800043e4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004400:	00007517          	auipc	a0,0x7
    80004404:	63853503          	ld	a0,1592(a0) # 8000ba38 <_ZL10waitForAll>
    80004408:	00050863          	beqz	a0,80004418 <_Z20testConsumerProducerv+0x2f4>
    8000440c:	00053783          	ld	a5,0(a0)
    80004410:	0087b783          	ld	a5,8(a5)
    80004414:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004418:	00000493          	li	s1,0
    8000441c:	0080006f          	j	80004424 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004420:	0014849b          	addiw	s1,s1,1
    80004424:	0334d263          	bge	s1,s3,80004448 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004428:	00349793          	slli	a5,s1,0x3
    8000442c:	00fa07b3          	add	a5,s4,a5
    80004430:	0007b503          	ld	a0,0(a5)
    80004434:	fe0506e3          	beqz	a0,80004420 <_Z20testConsumerProducerv+0x2fc>
    80004438:	00053783          	ld	a5,0(a0)
    8000443c:	0087b783          	ld	a5,8(a5)
    80004440:	000780e7          	jalr	a5
    80004444:	fddff06f          	j	80004420 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004448:	000b8a63          	beqz	s7,8000445c <_Z20testConsumerProducerv+0x338>
    8000444c:	000bb783          	ld	a5,0(s7)
    80004450:	0087b783          	ld	a5,8(a5)
    80004454:	000b8513          	mv	a0,s7
    80004458:	000780e7          	jalr	a5
    delete buffer;
    8000445c:	000a8e63          	beqz	s5,80004478 <_Z20testConsumerProducerv+0x354>
    80004460:	000a8513          	mv	a0,s5
    80004464:	00002097          	auipc	ra,0x2
    80004468:	870080e7          	jalr	-1936(ra) # 80005cd4 <_ZN9BufferCPPD1Ev>
    8000446c:	000a8513          	mv	a0,s5
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	670080e7          	jalr	1648(ra) # 80001ae0 <_ZdlPv>
    80004478:	000c0113          	mv	sp,s8
}
    8000447c:	f8040113          	addi	sp,s0,-128
    80004480:	07813083          	ld	ra,120(sp)
    80004484:	07013403          	ld	s0,112(sp)
    80004488:	06813483          	ld	s1,104(sp)
    8000448c:	06013903          	ld	s2,96(sp)
    80004490:	05813983          	ld	s3,88(sp)
    80004494:	05013a03          	ld	s4,80(sp)
    80004498:	04813a83          	ld	s5,72(sp)
    8000449c:	04013b03          	ld	s6,64(sp)
    800044a0:	03813b83          	ld	s7,56(sp)
    800044a4:	03013c03          	ld	s8,48(sp)
    800044a8:	02813c83          	ld	s9,40(sp)
    800044ac:	08010113          	addi	sp,sp,128
    800044b0:	00008067          	ret
    800044b4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044b8:	000a8513          	mv	a0,s5
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	624080e7          	jalr	1572(ra) # 80001ae0 <_ZdlPv>
    800044c4:	00048513          	mv	a0,s1
    800044c8:	00008097          	auipc	ra,0x8
    800044cc:	670080e7          	jalr	1648(ra) # 8000cb38 <_Unwind_Resume>
    800044d0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800044d4:	00090513          	mv	a0,s2
    800044d8:	ffffd097          	auipc	ra,0xffffd
    800044dc:	608080e7          	jalr	1544(ra) # 80001ae0 <_ZdlPv>
    800044e0:	00048513          	mv	a0,s1
    800044e4:	00008097          	auipc	ra,0x8
    800044e8:	654080e7          	jalr	1620(ra) # 8000cb38 <_Unwind_Resume>
    800044ec:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044f0:	000b8513          	mv	a0,s7
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	5ec080e7          	jalr	1516(ra) # 80001ae0 <_ZdlPv>
    800044fc:	00048513          	mv	a0,s1
    80004500:	00008097          	auipc	ra,0x8
    80004504:	638080e7          	jalr	1592(ra) # 8000cb38 <_Unwind_Resume>
    80004508:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000450c:	00048513          	mv	a0,s1
    80004510:	ffffd097          	auipc	ra,0xffffd
    80004514:	5d0080e7          	jalr	1488(ra) # 80001ae0 <_ZdlPv>
    80004518:	00090513          	mv	a0,s2
    8000451c:	00008097          	auipc	ra,0x8
    80004520:	61c080e7          	jalr	1564(ra) # 8000cb38 <_Unwind_Resume>
    80004524:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004528:	000c8513          	mv	a0,s9
    8000452c:	ffffd097          	auipc	ra,0xffffd
    80004530:	5b4080e7          	jalr	1460(ra) # 80001ae0 <_ZdlPv>
    80004534:	00048513          	mv	a0,s1
    80004538:	00008097          	auipc	ra,0x8
    8000453c:	600080e7          	jalr	1536(ra) # 8000cb38 <_Unwind_Resume>

0000000080004540 <_ZN8Consumer3runEv>:
    void run() override {
    80004540:	fd010113          	addi	sp,sp,-48
    80004544:	02113423          	sd	ra,40(sp)
    80004548:	02813023          	sd	s0,32(sp)
    8000454c:	00913c23          	sd	s1,24(sp)
    80004550:	01213823          	sd	s2,16(sp)
    80004554:	01313423          	sd	s3,8(sp)
    80004558:	03010413          	addi	s0,sp,48
    8000455c:	00050913          	mv	s2,a0
        int i = 0;
    80004560:	00000993          	li	s3,0
    80004564:	0100006f          	j	80004574 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004568:	00a00513          	li	a0,10
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	9f8080e7          	jalr	-1544(ra) # 80001f64 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004574:	00007797          	auipc	a5,0x7
    80004578:	4bc7a783          	lw	a5,1212(a5) # 8000ba30 <_ZL9threadEnd>
    8000457c:	04079a63          	bnez	a5,800045d0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004580:	02093783          	ld	a5,32(s2)
    80004584:	0087b503          	ld	a0,8(a5)
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	638080e7          	jalr	1592(ra) # 80005bc0 <_ZN9BufferCPP3getEv>
            i++;
    80004590:	0019849b          	addiw	s1,s3,1
    80004594:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004598:	0ff57513          	andi	a0,a0,255
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	9c8080e7          	jalr	-1592(ra) # 80001f64 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800045a4:	05000793          	li	a5,80
    800045a8:	02f4e4bb          	remw	s1,s1,a5
    800045ac:	fc0494e3          	bnez	s1,80004574 <_ZN8Consumer3runEv+0x34>
    800045b0:	fb9ff06f          	j	80004568 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045b4:	02093783          	ld	a5,32(s2)
    800045b8:	0087b503          	ld	a0,8(a5)
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	604080e7          	jalr	1540(ra) # 80005bc0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800045c4:	0ff57513          	andi	a0,a0,255
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	99c080e7          	jalr	-1636(ra) # 80001f64 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800045d0:	02093783          	ld	a5,32(s2)
    800045d4:	0087b503          	ld	a0,8(a5)
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	674080e7          	jalr	1652(ra) # 80005c4c <_ZN9BufferCPP6getCntEv>
    800045e0:	fca04ae3          	bgtz	a0,800045b4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800045e4:	02093783          	ld	a5,32(s2)
    800045e8:	0107b503          	ld	a0,16(a5)
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	8b8080e7          	jalr	-1864(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
    }
    800045f4:	02813083          	ld	ra,40(sp)
    800045f8:	02013403          	ld	s0,32(sp)
    800045fc:	01813483          	ld	s1,24(sp)
    80004600:	01013903          	ld	s2,16(sp)
    80004604:	00813983          	ld	s3,8(sp)
    80004608:	03010113          	addi	sp,sp,48
    8000460c:	00008067          	ret

0000000080004610 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00113423          	sd	ra,8(sp)
    80004618:	00813023          	sd	s0,0(sp)
    8000461c:	01010413          	addi	s0,sp,16
    80004620:	00007797          	auipc	a5,0x7
    80004624:	25078793          	addi	a5,a5,592 # 8000b870 <_ZTV8Consumer+0x10>
    80004628:	00f53023          	sd	a5,0(a0)
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	530080e7          	jalr	1328(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004634:	00813083          	ld	ra,8(sp)
    80004638:	00013403          	ld	s0,0(sp)
    8000463c:	01010113          	addi	sp,sp,16
    80004640:	00008067          	ret

0000000080004644 <_ZN8ConsumerD0Ev>:
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00913423          	sd	s1,8(sp)
    80004654:	02010413          	addi	s0,sp,32
    80004658:	00050493          	mv	s1,a0
    8000465c:	00007797          	auipc	a5,0x7
    80004660:	21478793          	addi	a5,a5,532 # 8000b870 <_ZTV8Consumer+0x10>
    80004664:	00f53023          	sd	a5,0(a0)
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	4f4080e7          	jalr	1268(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004670:	00048513          	mv	a0,s1
    80004674:	ffffd097          	auipc	ra,0xffffd
    80004678:	46c080e7          	jalr	1132(ra) # 80001ae0 <_ZdlPv>
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	01013403          	ld	s0,16(sp)
    80004684:	00813483          	ld	s1,8(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	00008067          	ret

0000000080004690 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004690:	ff010113          	addi	sp,sp,-16
    80004694:	00113423          	sd	ra,8(sp)
    80004698:	00813023          	sd	s0,0(sp)
    8000469c:	01010413          	addi	s0,sp,16
    800046a0:	00007797          	auipc	a5,0x7
    800046a4:	18078793          	addi	a5,a5,384 # 8000b820 <_ZTV16ProducerKeyborad+0x10>
    800046a8:	00f53023          	sd	a5,0(a0)
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	4b0080e7          	jalr	1200(ra) # 80001b5c <_ZN6ThreadD1Ev>
    800046b4:	00813083          	ld	ra,8(sp)
    800046b8:	00013403          	ld	s0,0(sp)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret

00000000800046c4 <_ZN16ProducerKeyboradD0Ev>:
    800046c4:	fe010113          	addi	sp,sp,-32
    800046c8:	00113c23          	sd	ra,24(sp)
    800046cc:	00813823          	sd	s0,16(sp)
    800046d0:	00913423          	sd	s1,8(sp)
    800046d4:	02010413          	addi	s0,sp,32
    800046d8:	00050493          	mv	s1,a0
    800046dc:	00007797          	auipc	a5,0x7
    800046e0:	14478793          	addi	a5,a5,324 # 8000b820 <_ZTV16ProducerKeyborad+0x10>
    800046e4:	00f53023          	sd	a5,0(a0)
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	474080e7          	jalr	1140(ra) # 80001b5c <_ZN6ThreadD1Ev>
    800046f0:	00048513          	mv	a0,s1
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	3ec080e7          	jalr	1004(ra) # 80001ae0 <_ZdlPv>
    800046fc:	01813083          	ld	ra,24(sp)
    80004700:	01013403          	ld	s0,16(sp)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00113423          	sd	ra,8(sp)
    80004718:	00813023          	sd	s0,0(sp)
    8000471c:	01010413          	addi	s0,sp,16
    80004720:	00007797          	auipc	a5,0x7
    80004724:	12878793          	addi	a5,a5,296 # 8000b848 <_ZTV8Producer+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	430080e7          	jalr	1072(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004734:	00813083          	ld	ra,8(sp)
    80004738:	00013403          	ld	s0,0(sp)
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret

0000000080004744 <_ZN8ProducerD0Ev>:
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	02010413          	addi	s0,sp,32
    80004758:	00050493          	mv	s1,a0
    8000475c:	00007797          	auipc	a5,0x7
    80004760:	0ec78793          	addi	a5,a5,236 # 8000b848 <_ZTV8Producer+0x10>
    80004764:	00f53023          	sd	a5,0(a0)
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	3f4080e7          	jalr	1012(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80004770:	00048513          	mv	a0,s1
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	36c080e7          	jalr	876(ra) # 80001ae0 <_ZdlPv>
    8000477c:	01813083          	ld	ra,24(sp)
    80004780:	01013403          	ld	s0,16(sp)
    80004784:	00813483          	ld	s1,8(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret

0000000080004790 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004790:	fe010113          	addi	sp,sp,-32
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	00813823          	sd	s0,16(sp)
    8000479c:	00913423          	sd	s1,8(sp)
    800047a0:	02010413          	addi	s0,sp,32
    800047a4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	f38080e7          	jalr	-200(ra) # 800016e0 <_Z4getcv>
    800047b0:	0005059b          	sext.w	a1,a0
    800047b4:	01b00793          	li	a5,27
    800047b8:	00f58c63          	beq	a1,a5,800047d0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047bc:	0204b783          	ld	a5,32(s1)
    800047c0:	0087b503          	ld	a0,8(a5)
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	36c080e7          	jalr	876(ra) # 80005b30 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800047cc:	fddff06f          	j	800047a8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800047d0:	00100793          	li	a5,1
    800047d4:	00007717          	auipc	a4,0x7
    800047d8:	24f72e23          	sw	a5,604(a4) # 8000ba30 <_ZL9threadEnd>
        td->buffer->put('!');
    800047dc:	0204b783          	ld	a5,32(s1)
    800047e0:	02100593          	li	a1,33
    800047e4:	0087b503          	ld	a0,8(a5)
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	348080e7          	jalr	840(ra) # 80005b30 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800047f0:	0204b783          	ld	a5,32(s1)
    800047f4:	0107b503          	ld	a0,16(a5)
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	6ac080e7          	jalr	1708(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
    }
    80004800:	01813083          	ld	ra,24(sp)
    80004804:	01013403          	ld	s0,16(sp)
    80004808:	00813483          	ld	s1,8(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00008067          	ret

0000000080004814 <_ZN8Producer3runEv>:
    void run() override {
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	02010413          	addi	s0,sp,32
    8000482c:	00050493          	mv	s1,a0
        int i = 0;
    80004830:	00000913          	li	s2,0
        while (!threadEnd) {
    80004834:	00007797          	auipc	a5,0x7
    80004838:	1fc7a783          	lw	a5,508(a5) # 8000ba30 <_ZL9threadEnd>
    8000483c:	04079263          	bnez	a5,80004880 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004840:	0204b783          	ld	a5,32(s1)
    80004844:	0007a583          	lw	a1,0(a5)
    80004848:	0305859b          	addiw	a1,a1,48
    8000484c:	0087b503          	ld	a0,8(a5)
    80004850:	00001097          	auipc	ra,0x1
    80004854:	2e0080e7          	jalr	736(ra) # 80005b30 <_ZN9BufferCPP3putEi>
            i++;
    80004858:	0019071b          	addiw	a4,s2,1
    8000485c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004860:	0204b783          	ld	a5,32(s1)
    80004864:	0007a783          	lw	a5,0(a5)
    80004868:	00e787bb          	addw	a5,a5,a4
    8000486c:	00500513          	li	a0,5
    80004870:	02a7e53b          	remw	a0,a5,a0
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	5a0080e7          	jalr	1440(ra) # 80001e14 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000487c:	fb9ff06f          	j	80004834 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004880:	0204b783          	ld	a5,32(s1)
    80004884:	0107b503          	ld	a0,16(a5)
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	61c080e7          	jalr	1564(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
    }
    80004890:	01813083          	ld	ra,24(sp)
    80004894:	01013403          	ld	s0,16(sp)
    80004898:	00813483          	ld	s1,8(sp)
    8000489c:	00013903          	ld	s2,0(sp)
    800048a0:	02010113          	addi	sp,sp,32
    800048a4:	00008067          	ret

00000000800048a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00113c23          	sd	ra,24(sp)
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	01213023          	sd	s2,0(sp)
    800048bc:	02010413          	addi	s0,sp,32
    800048c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048c4:	00100793          	li	a5,1
    800048c8:	02a7f863          	bgeu	a5,a0,800048f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048cc:	00a00793          	li	a5,10
    800048d0:	02f577b3          	remu	a5,a0,a5
    800048d4:	02078e63          	beqz	a5,80004910 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048d8:	fff48513          	addi	a0,s1,-1
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	fcc080e7          	jalr	-52(ra) # 800048a8 <_ZL9fibonaccim>
    800048e4:	00050913          	mv	s2,a0
    800048e8:	ffe48513          	addi	a0,s1,-2
    800048ec:	00000097          	auipc	ra,0x0
    800048f0:	fbc080e7          	jalr	-68(ra) # 800048a8 <_ZL9fibonaccim>
    800048f4:	00a90533          	add	a0,s2,a0
}
    800048f8:	01813083          	ld	ra,24(sp)
    800048fc:	01013403          	ld	s0,16(sp)
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	00013903          	ld	s2,0(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	c4c080e7          	jalr	-948(ra) # 8000155c <_Z15thread_dispatchv>
    80004918:	fc1ff06f          	j	800048d8 <_ZL9fibonaccim+0x30>

000000008000491c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000491c:	fe010113          	addi	sp,sp,-32
    80004920:	00113c23          	sd	ra,24(sp)
    80004924:	00813823          	sd	s0,16(sp)
    80004928:	00913423          	sd	s1,8(sp)
    8000492c:	01213023          	sd	s2,0(sp)
    80004930:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004934:	00a00493          	li	s1,10
    80004938:	0400006f          	j	80004978 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000493c:	00005517          	auipc	a0,0x5
    80004940:	84c50513          	addi	a0,a0,-1972 # 80009188 <CONSOLE_STATUS+0x178>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	dc8080e7          	jalr	-568(ra) # 8000570c <_Z11printStringPKc>
    8000494c:	00000613          	li	a2,0
    80004950:	00a00593          	li	a1,10
    80004954:	00048513          	mv	a0,s1
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	f64080e7          	jalr	-156(ra) # 800058bc <_Z8printIntiii>
    80004960:	00005517          	auipc	a0,0x5
    80004964:	a1850513          	addi	a0,a0,-1512 # 80009378 <CONSOLE_STATUS+0x368>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	da4080e7          	jalr	-604(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004970:	0014849b          	addiw	s1,s1,1
    80004974:	0ff4f493          	andi	s1,s1,255
    80004978:	00c00793          	li	a5,12
    8000497c:	fc97f0e3          	bgeu	a5,s1,8000493c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004980:	00005517          	auipc	a0,0x5
    80004984:	81050513          	addi	a0,a0,-2032 # 80009190 <CONSOLE_STATUS+0x180>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	d84080e7          	jalr	-636(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004990:	00500313          	li	t1,5
    thread_dispatch();
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	bc8080e7          	jalr	-1080(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000499c:	01000513          	li	a0,16
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	f08080e7          	jalr	-248(ra) # 800048a8 <_ZL9fibonaccim>
    800049a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800049ac:	00004517          	auipc	a0,0x4
    800049b0:	7f450513          	addi	a0,a0,2036 # 800091a0 <CONSOLE_STATUS+0x190>
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	d58080e7          	jalr	-680(ra) # 8000570c <_Z11printStringPKc>
    800049bc:	00000613          	li	a2,0
    800049c0:	00a00593          	li	a1,10
    800049c4:	0009051b          	sext.w	a0,s2
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	ef4080e7          	jalr	-268(ra) # 800058bc <_Z8printIntiii>
    800049d0:	00005517          	auipc	a0,0x5
    800049d4:	9a850513          	addi	a0,a0,-1624 # 80009378 <CONSOLE_STATUS+0x368>
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	d34080e7          	jalr	-716(ra) # 8000570c <_Z11printStringPKc>
    800049e0:	0400006f          	j	80004a20 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049e4:	00004517          	auipc	a0,0x4
    800049e8:	7a450513          	addi	a0,a0,1956 # 80009188 <CONSOLE_STATUS+0x178>
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	d20080e7          	jalr	-736(ra) # 8000570c <_Z11printStringPKc>
    800049f4:	00000613          	li	a2,0
    800049f8:	00a00593          	li	a1,10
    800049fc:	00048513          	mv	a0,s1
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	ebc080e7          	jalr	-324(ra) # 800058bc <_Z8printIntiii>
    80004a08:	00005517          	auipc	a0,0x5
    80004a0c:	97050513          	addi	a0,a0,-1680 # 80009378 <CONSOLE_STATUS+0x368>
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	cfc080e7          	jalr	-772(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a18:	0014849b          	addiw	s1,s1,1
    80004a1c:	0ff4f493          	andi	s1,s1,255
    80004a20:	00f00793          	li	a5,15
    80004a24:	fc97f0e3          	bgeu	a5,s1,800049e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a28:	00004517          	auipc	a0,0x4
    80004a2c:	78850513          	addi	a0,a0,1928 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	cdc080e7          	jalr	-804(ra) # 8000570c <_Z11printStringPKc>
    finishedD = true;
    80004a38:	00100793          	li	a5,1
    80004a3c:	00007717          	auipc	a4,0x7
    80004a40:	00f70223          	sb	a5,4(a4) # 8000ba40 <_ZL9finishedD>
    thread_dispatch();
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	b18080e7          	jalr	-1256(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004a4c:	01813083          	ld	ra,24(sp)
    80004a50:	01013403          	ld	s0,16(sp)
    80004a54:	00813483          	ld	s1,8(sp)
    80004a58:	00013903          	ld	s2,0(sp)
    80004a5c:	02010113          	addi	sp,sp,32
    80004a60:	00008067          	ret

0000000080004a64 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a64:	fe010113          	addi	sp,sp,-32
    80004a68:	00113c23          	sd	ra,24(sp)
    80004a6c:	00813823          	sd	s0,16(sp)
    80004a70:	00913423          	sd	s1,8(sp)
    80004a74:	01213023          	sd	s2,0(sp)
    80004a78:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004a7c:	00000493          	li	s1,0
    80004a80:	0400006f          	j	80004ac0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004a84:	00004517          	auipc	a0,0x4
    80004a88:	6c450513          	addi	a0,a0,1732 # 80009148 <CONSOLE_STATUS+0x138>
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	c80080e7          	jalr	-896(ra) # 8000570c <_Z11printStringPKc>
    80004a94:	00000613          	li	a2,0
    80004a98:	00a00593          	li	a1,10
    80004a9c:	00048513          	mv	a0,s1
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	e1c080e7          	jalr	-484(ra) # 800058bc <_Z8printIntiii>
    80004aa8:	00005517          	auipc	a0,0x5
    80004aac:	8d050513          	addi	a0,a0,-1840 # 80009378 <CONSOLE_STATUS+0x368>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	c5c080e7          	jalr	-932(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ab8:	0014849b          	addiw	s1,s1,1
    80004abc:	0ff4f493          	andi	s1,s1,255
    80004ac0:	00200793          	li	a5,2
    80004ac4:	fc97f0e3          	bgeu	a5,s1,80004a84 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ac8:	00004517          	auipc	a0,0x4
    80004acc:	68850513          	addi	a0,a0,1672 # 80009150 <CONSOLE_STATUS+0x140>
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	c3c080e7          	jalr	-964(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ad8:	00700313          	li	t1,7
    thread_dispatch();
    80004adc:	ffffd097          	auipc	ra,0xffffd
    80004ae0:	a80080e7          	jalr	-1408(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ae4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004ae8:	00004517          	auipc	a0,0x4
    80004aec:	67850513          	addi	a0,a0,1656 # 80009160 <CONSOLE_STATUS+0x150>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	c1c080e7          	jalr	-996(ra) # 8000570c <_Z11printStringPKc>
    80004af8:	00000613          	li	a2,0
    80004afc:	00a00593          	li	a1,10
    80004b00:	0009051b          	sext.w	a0,s2
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	db8080e7          	jalr	-584(ra) # 800058bc <_Z8printIntiii>
    80004b0c:	00005517          	auipc	a0,0x5
    80004b10:	86c50513          	addi	a0,a0,-1940 # 80009378 <CONSOLE_STATUS+0x368>
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	bf8080e7          	jalr	-1032(ra) # 8000570c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b1c:	00c00513          	li	a0,12
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	d88080e7          	jalr	-632(ra) # 800048a8 <_ZL9fibonaccim>
    80004b28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b2c:	00004517          	auipc	a0,0x4
    80004b30:	63c50513          	addi	a0,a0,1596 # 80009168 <CONSOLE_STATUS+0x158>
    80004b34:	00001097          	auipc	ra,0x1
    80004b38:	bd8080e7          	jalr	-1064(ra) # 8000570c <_Z11printStringPKc>
    80004b3c:	00000613          	li	a2,0
    80004b40:	00a00593          	li	a1,10
    80004b44:	0009051b          	sext.w	a0,s2
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	d74080e7          	jalr	-652(ra) # 800058bc <_Z8printIntiii>
    80004b50:	00005517          	auipc	a0,0x5
    80004b54:	82850513          	addi	a0,a0,-2008 # 80009378 <CONSOLE_STATUS+0x368>
    80004b58:	00001097          	auipc	ra,0x1
    80004b5c:	bb4080e7          	jalr	-1100(ra) # 8000570c <_Z11printStringPKc>
    80004b60:	0400006f          	j	80004ba0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b64:	00004517          	auipc	a0,0x4
    80004b68:	5e450513          	addi	a0,a0,1508 # 80009148 <CONSOLE_STATUS+0x138>
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	ba0080e7          	jalr	-1120(ra) # 8000570c <_Z11printStringPKc>
    80004b74:	00000613          	li	a2,0
    80004b78:	00a00593          	li	a1,10
    80004b7c:	00048513          	mv	a0,s1
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	d3c080e7          	jalr	-708(ra) # 800058bc <_Z8printIntiii>
    80004b88:	00004517          	auipc	a0,0x4
    80004b8c:	7f050513          	addi	a0,a0,2032 # 80009378 <CONSOLE_STATUS+0x368>
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	b7c080e7          	jalr	-1156(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004b98:	0014849b          	addiw	s1,s1,1
    80004b9c:	0ff4f493          	andi	s1,s1,255
    80004ba0:	00500793          	li	a5,5
    80004ba4:	fc97f0e3          	bgeu	a5,s1,80004b64 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ba8:	00004517          	auipc	a0,0x4
    80004bac:	57850513          	addi	a0,a0,1400 # 80009120 <CONSOLE_STATUS+0x110>
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	b5c080e7          	jalr	-1188(ra) # 8000570c <_Z11printStringPKc>
    finishedC = true;
    80004bb8:	00100793          	li	a5,1
    80004bbc:	00007717          	auipc	a4,0x7
    80004bc0:	e8f702a3          	sb	a5,-379(a4) # 8000ba41 <_ZL9finishedC>
    thread_dispatch();
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	998080e7          	jalr	-1640(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004bcc:	01813083          	ld	ra,24(sp)
    80004bd0:	01013403          	ld	s0,16(sp)
    80004bd4:	00813483          	ld	s1,8(sp)
    80004bd8:	00013903          	ld	s2,0(sp)
    80004bdc:	02010113          	addi	sp,sp,32
    80004be0:	00008067          	ret

0000000080004be4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004be4:	fe010113          	addi	sp,sp,-32
    80004be8:	00113c23          	sd	ra,24(sp)
    80004bec:	00813823          	sd	s0,16(sp)
    80004bf0:	00913423          	sd	s1,8(sp)
    80004bf4:	01213023          	sd	s2,0(sp)
    80004bf8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004bfc:	00000913          	li	s2,0
    80004c00:	0380006f          	j	80004c38 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	958080e7          	jalr	-1704(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c0c:	00148493          	addi	s1,s1,1
    80004c10:	000027b7          	lui	a5,0x2
    80004c14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c18:	0097ee63          	bltu	a5,s1,80004c34 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c1c:	00000713          	li	a4,0
    80004c20:	000077b7          	lui	a5,0x7
    80004c24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c28:	fce7eee3          	bltu	a5,a4,80004c04 <_ZL11workerBodyBPv+0x20>
    80004c2c:	00170713          	addi	a4,a4,1
    80004c30:	ff1ff06f          	j	80004c20 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c34:	00190913          	addi	s2,s2,1
    80004c38:	00f00793          	li	a5,15
    80004c3c:	0527e063          	bltu	a5,s2,80004c7c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c40:	00004517          	auipc	a0,0x4
    80004c44:	4f050513          	addi	a0,a0,1264 # 80009130 <CONSOLE_STATUS+0x120>
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	ac4080e7          	jalr	-1340(ra) # 8000570c <_Z11printStringPKc>
    80004c50:	00000613          	li	a2,0
    80004c54:	00a00593          	li	a1,10
    80004c58:	0009051b          	sext.w	a0,s2
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	c60080e7          	jalr	-928(ra) # 800058bc <_Z8printIntiii>
    80004c64:	00004517          	auipc	a0,0x4
    80004c68:	71450513          	addi	a0,a0,1812 # 80009378 <CONSOLE_STATUS+0x368>
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	aa0080e7          	jalr	-1376(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c74:	00000493          	li	s1,0
    80004c78:	f99ff06f          	j	80004c10 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	4bc50513          	addi	a0,a0,1212 # 80009138 <CONSOLE_STATUS+0x128>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	a88080e7          	jalr	-1400(ra) # 8000570c <_Z11printStringPKc>
    finishedB = true;
    80004c8c:	00100793          	li	a5,1
    80004c90:	00007717          	auipc	a4,0x7
    80004c94:	daf70923          	sb	a5,-590(a4) # 8000ba42 <_ZL9finishedB>
    thread_dispatch();
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	8c4080e7          	jalr	-1852(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004ca0:	01813083          	ld	ra,24(sp)
    80004ca4:	01013403          	ld	s0,16(sp)
    80004ca8:	00813483          	ld	s1,8(sp)
    80004cac:	00013903          	ld	s2,0(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret

0000000080004cb8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	00813823          	sd	s0,16(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	01213023          	sd	s2,0(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004cd0:	00000913          	li	s2,0
    80004cd4:	0380006f          	j	80004d0c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	884080e7          	jalr	-1916(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ce0:	00148493          	addi	s1,s1,1
    80004ce4:	000027b7          	lui	a5,0x2
    80004ce8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cec:	0097ee63          	bltu	a5,s1,80004d08 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004cf0:	00000713          	li	a4,0
    80004cf4:	000077b7          	lui	a5,0x7
    80004cf8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cfc:	fce7eee3          	bltu	a5,a4,80004cd8 <_ZL11workerBodyAPv+0x20>
    80004d00:	00170713          	addi	a4,a4,1
    80004d04:	ff1ff06f          	j	80004cf4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d08:	00190913          	addi	s2,s2,1
    80004d0c:	00900793          	li	a5,9
    80004d10:	0527e063          	bltu	a5,s2,80004d50 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	40450513          	addi	a0,a0,1028 # 80009118 <CONSOLE_STATUS+0x108>
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	9f0080e7          	jalr	-1552(ra) # 8000570c <_Z11printStringPKc>
    80004d24:	00000613          	li	a2,0
    80004d28:	00a00593          	li	a1,10
    80004d2c:	0009051b          	sext.w	a0,s2
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	b8c080e7          	jalr	-1140(ra) # 800058bc <_Z8printIntiii>
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	64050513          	addi	a0,a0,1600 # 80009378 <CONSOLE_STATUS+0x368>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	9cc080e7          	jalr	-1588(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d48:	00000493          	li	s1,0
    80004d4c:	f99ff06f          	j	80004ce4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	3d050513          	addi	a0,a0,976 # 80009120 <CONSOLE_STATUS+0x110>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	9b4080e7          	jalr	-1612(ra) # 8000570c <_Z11printStringPKc>
    finishedA = true;
    80004d60:	00100793          	li	a5,1
    80004d64:	00007717          	auipc	a4,0x7
    80004d68:	ccf70fa3          	sb	a5,-801(a4) # 8000ba43 <_ZL9finishedA>
}
    80004d6c:	01813083          	ld	ra,24(sp)
    80004d70:	01013403          	ld	s0,16(sp)
    80004d74:	00813483          	ld	s1,8(sp)
    80004d78:	00013903          	ld	s2,0(sp)
    80004d7c:	02010113          	addi	sp,sp,32
    80004d80:	00008067          	ret

0000000080004d84 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004d84:	fd010113          	addi	sp,sp,-48
    80004d88:	02113423          	sd	ra,40(sp)
    80004d8c:	02813023          	sd	s0,32(sp)
    80004d90:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004d94:	00000613          	li	a2,0
    80004d98:	00000597          	auipc	a1,0x0
    80004d9c:	f2058593          	addi	a1,a1,-224 # 80004cb8 <_ZL11workerBodyAPv>
    80004da0:	fd040513          	addi	a0,s0,-48
    80004da4:	ffffc097          	auipc	ra,0xffffc
    80004da8:	690080e7          	jalr	1680(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004dac:	00004517          	auipc	a0,0x4
    80004db0:	41450513          	addi	a0,a0,1044 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	958080e7          	jalr	-1704(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004dbc:	00000613          	li	a2,0
    80004dc0:	00000597          	auipc	a1,0x0
    80004dc4:	e2458593          	addi	a1,a1,-476 # 80004be4 <_ZL11workerBodyBPv>
    80004dc8:	fd840513          	addi	a0,s0,-40
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	668080e7          	jalr	1640(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004dd4:	00004517          	auipc	a0,0x4
    80004dd8:	40450513          	addi	a0,a0,1028 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	930080e7          	jalr	-1744(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004de4:	00000613          	li	a2,0
    80004de8:	00000597          	auipc	a1,0x0
    80004dec:	c7c58593          	addi	a1,a1,-900 # 80004a64 <_ZL11workerBodyCPv>
    80004df0:	fe040513          	addi	a0,s0,-32
    80004df4:	ffffc097          	auipc	ra,0xffffc
    80004df8:	640080e7          	jalr	1600(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	3f450513          	addi	a0,a0,1012 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	908080e7          	jalr	-1784(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e0c:	00000613          	li	a2,0
    80004e10:	00000597          	auipc	a1,0x0
    80004e14:	b0c58593          	addi	a1,a1,-1268 # 8000491c <_ZL11workerBodyDPv>
    80004e18:	fe840513          	addi	a0,s0,-24
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	618080e7          	jalr	1560(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	3e450513          	addi	a0,a0,996 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	8e0080e7          	jalr	-1824(ra) # 8000570c <_Z11printStringPKc>
    80004e34:	00c0006f          	j	80004e40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e38:	ffffc097          	auipc	ra,0xffffc
    80004e3c:	724080e7          	jalr	1828(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e40:	00007797          	auipc	a5,0x7
    80004e44:	c037c783          	lbu	a5,-1021(a5) # 8000ba43 <_ZL9finishedA>
    80004e48:	fe0788e3          	beqz	a5,80004e38 <_Z18Threads_C_API_testv+0xb4>
    80004e4c:	00007797          	auipc	a5,0x7
    80004e50:	bf67c783          	lbu	a5,-1034(a5) # 8000ba42 <_ZL9finishedB>
    80004e54:	fe0782e3          	beqz	a5,80004e38 <_Z18Threads_C_API_testv+0xb4>
    80004e58:	00007797          	auipc	a5,0x7
    80004e5c:	be97c783          	lbu	a5,-1047(a5) # 8000ba41 <_ZL9finishedC>
    80004e60:	fc078ce3          	beqz	a5,80004e38 <_Z18Threads_C_API_testv+0xb4>
    80004e64:	00007797          	auipc	a5,0x7
    80004e68:	bdc7c783          	lbu	a5,-1060(a5) # 8000ba40 <_ZL9finishedD>
    80004e6c:	fc0786e3          	beqz	a5,80004e38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004e70:	02813083          	ld	ra,40(sp)
    80004e74:	02013403          	ld	s0,32(sp)
    80004e78:	03010113          	addi	sp,sp,48
    80004e7c:	00008067          	ret

0000000080004e80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004e80:	fd010113          	addi	sp,sp,-48
    80004e84:	02113423          	sd	ra,40(sp)
    80004e88:	02813023          	sd	s0,32(sp)
    80004e8c:	00913c23          	sd	s1,24(sp)
    80004e90:	01213823          	sd	s2,16(sp)
    80004e94:	01313423          	sd	s3,8(sp)
    80004e98:	03010413          	addi	s0,sp,48
    80004e9c:	00050993          	mv	s3,a0
    80004ea0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ea4:	00000913          	li	s2,0
    80004ea8:	00c0006f          	j	80004eb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	edc080e7          	jalr	-292(ra) # 80001d88 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	82c080e7          	jalr	-2004(ra) # 800016e0 <_Z4getcv>
    80004ebc:	0005059b          	sext.w	a1,a0
    80004ec0:	01b00793          	li	a5,27
    80004ec4:	02f58a63          	beq	a1,a5,80004ef8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ec8:	0084b503          	ld	a0,8(s1)
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	c64080e7          	jalr	-924(ra) # 80005b30 <_ZN9BufferCPP3putEi>
        i++;
    80004ed4:	0019071b          	addiw	a4,s2,1
    80004ed8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004edc:	0004a683          	lw	a3,0(s1)
    80004ee0:	0026979b          	slliw	a5,a3,0x2
    80004ee4:	00d787bb          	addw	a5,a5,a3
    80004ee8:	0017979b          	slliw	a5,a5,0x1
    80004eec:	02f767bb          	remw	a5,a4,a5
    80004ef0:	fc0792e3          	bnez	a5,80004eb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ef4:	fb9ff06f          	j	80004eac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004ef8:	00100793          	li	a5,1
    80004efc:	00007717          	auipc	a4,0x7
    80004f00:	b4f72623          	sw	a5,-1204(a4) # 8000ba48 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f04:	0209b783          	ld	a5,32(s3)
    80004f08:	02100593          	li	a1,33
    80004f0c:	0087b503          	ld	a0,8(a5)
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	c20080e7          	jalr	-992(ra) # 80005b30 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f18:	0104b503          	ld	a0,16(s1)
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	f88080e7          	jalr	-120(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
}
    80004f24:	02813083          	ld	ra,40(sp)
    80004f28:	02013403          	ld	s0,32(sp)
    80004f2c:	01813483          	ld	s1,24(sp)
    80004f30:	01013903          	ld	s2,16(sp)
    80004f34:	00813983          	ld	s3,8(sp)
    80004f38:	03010113          	addi	sp,sp,48
    80004f3c:	00008067          	ret

0000000080004f40 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f40:	fe010113          	addi	sp,sp,-32
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00813823          	sd	s0,16(sp)
    80004f4c:	00913423          	sd	s1,8(sp)
    80004f50:	01213023          	sd	s2,0(sp)
    80004f54:	02010413          	addi	s0,sp,32
    80004f58:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f5c:	00000913          	li	s2,0
    80004f60:	00c0006f          	j	80004f6c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	e24080e7          	jalr	-476(ra) # 80001d88 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004f6c:	00007797          	auipc	a5,0x7
    80004f70:	adc7a783          	lw	a5,-1316(a5) # 8000ba48 <_ZL9threadEnd>
    80004f74:	02079e63          	bnez	a5,80004fb0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004f78:	0004a583          	lw	a1,0(s1)
    80004f7c:	0305859b          	addiw	a1,a1,48
    80004f80:	0084b503          	ld	a0,8(s1)
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	bac080e7          	jalr	-1108(ra) # 80005b30 <_ZN9BufferCPP3putEi>
        i++;
    80004f8c:	0019071b          	addiw	a4,s2,1
    80004f90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f94:	0004a683          	lw	a3,0(s1)
    80004f98:	0026979b          	slliw	a5,a3,0x2
    80004f9c:	00d787bb          	addw	a5,a5,a3
    80004fa0:	0017979b          	slliw	a5,a5,0x1
    80004fa4:	02f767bb          	remw	a5,a4,a5
    80004fa8:	fc0792e3          	bnez	a5,80004f6c <_ZN12ProducerSync8producerEPv+0x2c>
    80004fac:	fb9ff06f          	j	80004f64 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004fb0:	0104b503          	ld	a0,16(s1)
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	ef0080e7          	jalr	-272(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
}
    80004fbc:	01813083          	ld	ra,24(sp)
    80004fc0:	01013403          	ld	s0,16(sp)
    80004fc4:	00813483          	ld	s1,8(sp)
    80004fc8:	00013903          	ld	s2,0(sp)
    80004fcc:	02010113          	addi	sp,sp,32
    80004fd0:	00008067          	ret

0000000080004fd4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004fd4:	fd010113          	addi	sp,sp,-48
    80004fd8:	02113423          	sd	ra,40(sp)
    80004fdc:	02813023          	sd	s0,32(sp)
    80004fe0:	00913c23          	sd	s1,24(sp)
    80004fe4:	01213823          	sd	s2,16(sp)
    80004fe8:	01313423          	sd	s3,8(sp)
    80004fec:	01413023          	sd	s4,0(sp)
    80004ff0:	03010413          	addi	s0,sp,48
    80004ff4:	00050993          	mv	s3,a0
    80004ff8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ffc:	00000a13          	li	s4,0
    80005000:	01c0006f          	j	8000501c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	d84080e7          	jalr	-636(ra) # 80001d88 <_ZN6Thread8dispatchEv>
    8000500c:	0500006f          	j	8000505c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005010:	00a00513          	li	a0,10
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	708080e7          	jalr	1800(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    8000501c:	00007797          	auipc	a5,0x7
    80005020:	a2c7a783          	lw	a5,-1492(a5) # 8000ba48 <_ZL9threadEnd>
    80005024:	06079263          	bnez	a5,80005088 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005028:	00893503          	ld	a0,8(s2)
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	b94080e7          	jalr	-1132(ra) # 80005bc0 <_ZN9BufferCPP3getEv>
        i++;
    80005034:	001a049b          	addiw	s1,s4,1
    80005038:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000503c:	0ff57513          	andi	a0,a0,255
    80005040:	ffffc097          	auipc	ra,0xffffc
    80005044:	6dc080e7          	jalr	1756(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005048:	00092703          	lw	a4,0(s2)
    8000504c:	0027179b          	slliw	a5,a4,0x2
    80005050:	00e787bb          	addw	a5,a5,a4
    80005054:	02f4e7bb          	remw	a5,s1,a5
    80005058:	fa0786e3          	beqz	a5,80005004 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000505c:	05000793          	li	a5,80
    80005060:	02f4e4bb          	remw	s1,s1,a5
    80005064:	fa049ce3          	bnez	s1,8000501c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005068:	fa9ff06f          	j	80005010 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000506c:	0209b783          	ld	a5,32(s3)
    80005070:	0087b503          	ld	a0,8(a5)
    80005074:	00001097          	auipc	ra,0x1
    80005078:	b4c080e7          	jalr	-1204(ra) # 80005bc0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000507c:	0ff57513          	andi	a0,a0,255
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	ee4080e7          	jalr	-284(ra) # 80001f64 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005088:	0209b783          	ld	a5,32(s3)
    8000508c:	0087b503          	ld	a0,8(a5)
    80005090:	00001097          	auipc	ra,0x1
    80005094:	bbc080e7          	jalr	-1092(ra) # 80005c4c <_ZN9BufferCPP6getCntEv>
    80005098:	fca04ae3          	bgtz	a0,8000506c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000509c:	01093503          	ld	a0,16(s2)
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	e04080e7          	jalr	-508(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
}
    800050a8:	02813083          	ld	ra,40(sp)
    800050ac:	02013403          	ld	s0,32(sp)
    800050b0:	01813483          	ld	s1,24(sp)
    800050b4:	01013903          	ld	s2,16(sp)
    800050b8:	00813983          	ld	s3,8(sp)
    800050bc:	00013a03          	ld	s4,0(sp)
    800050c0:	03010113          	addi	sp,sp,48
    800050c4:	00008067          	ret

00000000800050c8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800050c8:	f8010113          	addi	sp,sp,-128
    800050cc:	06113c23          	sd	ra,120(sp)
    800050d0:	06813823          	sd	s0,112(sp)
    800050d4:	06913423          	sd	s1,104(sp)
    800050d8:	07213023          	sd	s2,96(sp)
    800050dc:	05313c23          	sd	s3,88(sp)
    800050e0:	05413823          	sd	s4,80(sp)
    800050e4:	05513423          	sd	s5,72(sp)
    800050e8:	05613023          	sd	s6,64(sp)
    800050ec:	03713c23          	sd	s7,56(sp)
    800050f0:	03813823          	sd	s8,48(sp)
    800050f4:	03913423          	sd	s9,40(sp)
    800050f8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800050fc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	f3050513          	addi	a0,a0,-208 # 80009030 <CONSOLE_STATUS+0x20>
    80005108:	00000097          	auipc	ra,0x0
    8000510c:	604080e7          	jalr	1540(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    80005110:	01e00593          	li	a1,30
    80005114:	f8040493          	addi	s1,s0,-128
    80005118:	00048513          	mv	a0,s1
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	678080e7          	jalr	1656(ra) # 80005794 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005124:	00048513          	mv	a0,s1
    80005128:	00000097          	auipc	ra,0x0
    8000512c:	744080e7          	jalr	1860(ra) # 8000586c <_Z11stringToIntPKc>
    80005130:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005134:	00004517          	auipc	a0,0x4
    80005138:	f1c50513          	addi	a0,a0,-228 # 80009050 <CONSOLE_STATUS+0x40>
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	5d0080e7          	jalr	1488(ra) # 8000570c <_Z11printStringPKc>
    getString(input, 30);
    80005144:	01e00593          	li	a1,30
    80005148:	00048513          	mv	a0,s1
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	648080e7          	jalr	1608(ra) # 80005794 <_Z9getStringPci>
    n = stringToInt(input);
    80005154:	00048513          	mv	a0,s1
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	714080e7          	jalr	1812(ra) # 8000586c <_Z11stringToIntPKc>
    80005160:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005164:	00004517          	auipc	a0,0x4
    80005168:	f0c50513          	addi	a0,a0,-244 # 80009070 <CONSOLE_STATUS+0x60>
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	5a0080e7          	jalr	1440(ra) # 8000570c <_Z11printStringPKc>
    80005174:	00000613          	li	a2,0
    80005178:	00a00593          	li	a1,10
    8000517c:	00090513          	mv	a0,s2
    80005180:	00000097          	auipc	ra,0x0
    80005184:	73c080e7          	jalr	1852(ra) # 800058bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005188:	00004517          	auipc	a0,0x4
    8000518c:	f0050513          	addi	a0,a0,-256 # 80009088 <CONSOLE_STATUS+0x78>
    80005190:	00000097          	auipc	ra,0x0
    80005194:	57c080e7          	jalr	1404(ra) # 8000570c <_Z11printStringPKc>
    80005198:	00000613          	li	a2,0
    8000519c:	00a00593          	li	a1,10
    800051a0:	00048513          	mv	a0,s1
    800051a4:	00000097          	auipc	ra,0x0
    800051a8:	718080e7          	jalr	1816(ra) # 800058bc <_Z8printIntiii>
    printString(".\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	ef450513          	addi	a0,a0,-268 # 800090a0 <CONSOLE_STATUS+0x90>
    800051b4:	00000097          	auipc	ra,0x0
    800051b8:	558080e7          	jalr	1368(ra) # 8000570c <_Z11printStringPKc>
    if(threadNum > n) {
    800051bc:	0324c463          	blt	s1,s2,800051e4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800051c0:	03205c63          	blez	s2,800051f8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800051c4:	03800513          	li	a0,56
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	8c8080e7          	jalr	-1848(ra) # 80001a90 <_Znwm>
    800051d0:	00050a93          	mv	s5,a0
    800051d4:	00048593          	mv	a1,s1
    800051d8:	00001097          	auipc	ra,0x1
    800051dc:	804080e7          	jalr	-2044(ra) # 800059dc <_ZN9BufferCPPC1Ei>
    800051e0:	0300006f          	j	80005210 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800051e4:	00004517          	auipc	a0,0x4
    800051e8:	ec450513          	addi	a0,a0,-316 # 800090a8 <CONSOLE_STATUS+0x98>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	520080e7          	jalr	1312(ra) # 8000570c <_Z11printStringPKc>
        return;
    800051f4:	0140006f          	j	80005208 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800051f8:	00004517          	auipc	a0,0x4
    800051fc:	ef050513          	addi	a0,a0,-272 # 800090e8 <CONSOLE_STATUS+0xd8>
    80005200:	00000097          	auipc	ra,0x0
    80005204:	50c080e7          	jalr	1292(ra) # 8000570c <_Z11printStringPKc>
        return;
    80005208:	000b8113          	mv	sp,s7
    8000520c:	2380006f          	j	80005444 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005210:	01000513          	li	a0,16
    80005214:	ffffd097          	auipc	ra,0xffffd
    80005218:	87c080e7          	jalr	-1924(ra) # 80001a90 <_Znwm>
    8000521c:	00050493          	mv	s1,a0
    80005220:	00000593          	li	a1,0
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	c18080e7          	jalr	-1000(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    8000522c:	00007797          	auipc	a5,0x7
    80005230:	8297b223          	sd	s1,-2012(a5) # 8000ba50 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005234:	00391793          	slli	a5,s2,0x3
    80005238:	00f78793          	addi	a5,a5,15
    8000523c:	ff07f793          	andi	a5,a5,-16
    80005240:	40f10133          	sub	sp,sp,a5
    80005244:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005248:	0019071b          	addiw	a4,s2,1
    8000524c:	00171793          	slli	a5,a4,0x1
    80005250:	00e787b3          	add	a5,a5,a4
    80005254:	00379793          	slli	a5,a5,0x3
    80005258:	00f78793          	addi	a5,a5,15
    8000525c:	ff07f793          	andi	a5,a5,-16
    80005260:	40f10133          	sub	sp,sp,a5
    80005264:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005268:	00191c13          	slli	s8,s2,0x1
    8000526c:	012c07b3          	add	a5,s8,s2
    80005270:	00379793          	slli	a5,a5,0x3
    80005274:	00fa07b3          	add	a5,s4,a5
    80005278:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000527c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005280:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005284:	02800513          	li	a0,40
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	808080e7          	jalr	-2040(ra) # 80001a90 <_Znwm>
    80005290:	00050b13          	mv	s6,a0
    80005294:	012c0c33          	add	s8,s8,s2
    80005298:	003c1c13          	slli	s8,s8,0x3
    8000529c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	b10080e7          	jalr	-1264(ra) # 80001db0 <_ZN6ThreadC1Ev>
    800052a8:	00006797          	auipc	a5,0x6
    800052ac:	64078793          	addi	a5,a5,1600 # 8000b8e8 <_ZTV12ConsumerSync+0x10>
    800052b0:	00fb3023          	sd	a5,0(s6)
    800052b4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800052b8:	000b0513          	mv	a0,s6
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	a98080e7          	jalr	-1384(ra) # 80001d54 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052c4:	00000493          	li	s1,0
    800052c8:	0380006f          	j	80005300 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800052cc:	00006797          	auipc	a5,0x6
    800052d0:	5f478793          	addi	a5,a5,1524 # 8000b8c0 <_ZTV12ProducerSync+0x10>
    800052d4:	00fcb023          	sd	a5,0(s9)
    800052d8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800052dc:	00349793          	slli	a5,s1,0x3
    800052e0:	00f987b3          	add	a5,s3,a5
    800052e4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800052e8:	00349793          	slli	a5,s1,0x3
    800052ec:	00f987b3          	add	a5,s3,a5
    800052f0:	0007b503          	ld	a0,0(a5)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	a60080e7          	jalr	-1440(ra) # 80001d54 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052fc:	0014849b          	addiw	s1,s1,1
    80005300:	0b24d063          	bge	s1,s2,800053a0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005304:	00149793          	slli	a5,s1,0x1
    80005308:	009787b3          	add	a5,a5,s1
    8000530c:	00379793          	slli	a5,a5,0x3
    80005310:	00fa07b3          	add	a5,s4,a5
    80005314:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005318:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000531c:	00006717          	auipc	a4,0x6
    80005320:	73473703          	ld	a4,1844(a4) # 8000ba50 <_ZL10waitForAll>
    80005324:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005328:	02905863          	blez	s1,80005358 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000532c:	02800513          	li	a0,40
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	760080e7          	jalr	1888(ra) # 80001a90 <_Znwm>
    80005338:	00050c93          	mv	s9,a0
    8000533c:	00149c13          	slli	s8,s1,0x1
    80005340:	009c0c33          	add	s8,s8,s1
    80005344:	003c1c13          	slli	s8,s8,0x3
    80005348:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	a64080e7          	jalr	-1436(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80005354:	f79ff06f          	j	800052cc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005358:	02800513          	li	a0,40
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	734080e7          	jalr	1844(ra) # 80001a90 <_Znwm>
    80005364:	00050c93          	mv	s9,a0
    80005368:	00149c13          	slli	s8,s1,0x1
    8000536c:	009c0c33          	add	s8,s8,s1
    80005370:	003c1c13          	slli	s8,s8,0x3
    80005374:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	a38080e7          	jalr	-1480(ra) # 80001db0 <_ZN6ThreadC1Ev>
    80005380:	00006797          	auipc	a5,0x6
    80005384:	51878793          	addi	a5,a5,1304 # 8000b898 <_ZTV16ProducerKeyboard+0x10>
    80005388:	00fcb023          	sd	a5,0(s9)
    8000538c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005390:	00349793          	slli	a5,s1,0x3
    80005394:	00f987b3          	add	a5,s3,a5
    80005398:	0197b023          	sd	s9,0(a5)
    8000539c:	f4dff06f          	j	800052e8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	9e8080e7          	jalr	-1560(ra) # 80001d88 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800053a8:	00000493          	li	s1,0
    800053ac:	00994e63          	blt	s2,s1,800053c8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800053b0:	00006517          	auipc	a0,0x6
    800053b4:	6a053503          	ld	a0,1696(a0) # 8000ba50 <_ZL10waitForAll>
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	ac0080e7          	jalr	-1344(ra) # 80001e78 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800053c0:	0014849b          	addiw	s1,s1,1
    800053c4:	fe9ff06f          	j	800053ac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800053c8:	00000493          	li	s1,0
    800053cc:	0080006f          	j	800053d4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800053d0:	0014849b          	addiw	s1,s1,1
    800053d4:	0324d263          	bge	s1,s2,800053f8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800053d8:	00349793          	slli	a5,s1,0x3
    800053dc:	00f987b3          	add	a5,s3,a5
    800053e0:	0007b503          	ld	a0,0(a5)
    800053e4:	fe0506e3          	beqz	a0,800053d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800053e8:	00053783          	ld	a5,0(a0)
    800053ec:	0087b783          	ld	a5,8(a5)
    800053f0:	000780e7          	jalr	a5
    800053f4:	fddff06f          	j	800053d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800053f8:	000b0a63          	beqz	s6,8000540c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800053fc:	000b3783          	ld	a5,0(s6)
    80005400:	0087b783          	ld	a5,8(a5)
    80005404:	000b0513          	mv	a0,s6
    80005408:	000780e7          	jalr	a5
    delete waitForAll;
    8000540c:	00006517          	auipc	a0,0x6
    80005410:	64453503          	ld	a0,1604(a0) # 8000ba50 <_ZL10waitForAll>
    80005414:	00050863          	beqz	a0,80005424 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005418:	00053783          	ld	a5,0(a0)
    8000541c:	0087b783          	ld	a5,8(a5)
    80005420:	000780e7          	jalr	a5
    delete buffer;
    80005424:	000a8e63          	beqz	s5,80005440 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005428:	000a8513          	mv	a0,s5
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	8a8080e7          	jalr	-1880(ra) # 80005cd4 <_ZN9BufferCPPD1Ev>
    80005434:	000a8513          	mv	a0,s5
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	6a8080e7          	jalr	1704(ra) # 80001ae0 <_ZdlPv>
    80005440:	000b8113          	mv	sp,s7

}
    80005444:	f8040113          	addi	sp,s0,-128
    80005448:	07813083          	ld	ra,120(sp)
    8000544c:	07013403          	ld	s0,112(sp)
    80005450:	06813483          	ld	s1,104(sp)
    80005454:	06013903          	ld	s2,96(sp)
    80005458:	05813983          	ld	s3,88(sp)
    8000545c:	05013a03          	ld	s4,80(sp)
    80005460:	04813a83          	ld	s5,72(sp)
    80005464:	04013b03          	ld	s6,64(sp)
    80005468:	03813b83          	ld	s7,56(sp)
    8000546c:	03013c03          	ld	s8,48(sp)
    80005470:	02813c83          	ld	s9,40(sp)
    80005474:	08010113          	addi	sp,sp,128
    80005478:	00008067          	ret
    8000547c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005480:	000a8513          	mv	a0,s5
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	65c080e7          	jalr	1628(ra) # 80001ae0 <_ZdlPv>
    8000548c:	00048513          	mv	a0,s1
    80005490:	00007097          	auipc	ra,0x7
    80005494:	6a8080e7          	jalr	1704(ra) # 8000cb38 <_Unwind_Resume>
    80005498:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000549c:	00048513          	mv	a0,s1
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	640080e7          	jalr	1600(ra) # 80001ae0 <_ZdlPv>
    800054a8:	00090513          	mv	a0,s2
    800054ac:	00007097          	auipc	ra,0x7
    800054b0:	68c080e7          	jalr	1676(ra) # 8000cb38 <_Unwind_Resume>
    800054b4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800054b8:	000b0513          	mv	a0,s6
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	624080e7          	jalr	1572(ra) # 80001ae0 <_ZdlPv>
    800054c4:	00048513          	mv	a0,s1
    800054c8:	00007097          	auipc	ra,0x7
    800054cc:	670080e7          	jalr	1648(ra) # 8000cb38 <_Unwind_Resume>
    800054d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800054d4:	000c8513          	mv	a0,s9
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	608080e7          	jalr	1544(ra) # 80001ae0 <_ZdlPv>
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00007097          	auipc	ra,0x7
    800054e8:	654080e7          	jalr	1620(ra) # 8000cb38 <_Unwind_Resume>
    800054ec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800054f0:	000c8513          	mv	a0,s9
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	5ec080e7          	jalr	1516(ra) # 80001ae0 <_ZdlPv>
    800054fc:	00048513          	mv	a0,s1
    80005500:	00007097          	auipc	ra,0x7
    80005504:	638080e7          	jalr	1592(ra) # 8000cb38 <_Unwind_Resume>

0000000080005508 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005508:	ff010113          	addi	sp,sp,-16
    8000550c:	00113423          	sd	ra,8(sp)
    80005510:	00813023          	sd	s0,0(sp)
    80005514:	01010413          	addi	s0,sp,16
    80005518:	00006797          	auipc	a5,0x6
    8000551c:	3d078793          	addi	a5,a5,976 # 8000b8e8 <_ZTV12ConsumerSync+0x10>
    80005520:	00f53023          	sd	a5,0(a0)
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	638080e7          	jalr	1592(ra) # 80001b5c <_ZN6ThreadD1Ev>
    8000552c:	00813083          	ld	ra,8(sp)
    80005530:	00013403          	ld	s0,0(sp)
    80005534:	01010113          	addi	sp,sp,16
    80005538:	00008067          	ret

000000008000553c <_ZN12ConsumerSyncD0Ev>:
    8000553c:	fe010113          	addi	sp,sp,-32
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	02010413          	addi	s0,sp,32
    80005550:	00050493          	mv	s1,a0
    80005554:	00006797          	auipc	a5,0x6
    80005558:	39478793          	addi	a5,a5,916 # 8000b8e8 <_ZTV12ConsumerSync+0x10>
    8000555c:	00f53023          	sd	a5,0(a0)
    80005560:	ffffc097          	auipc	ra,0xffffc
    80005564:	5fc080e7          	jalr	1532(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80005568:	00048513          	mv	a0,s1
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	574080e7          	jalr	1396(ra) # 80001ae0 <_ZdlPv>
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00813483          	ld	s1,8(sp)
    80005580:	02010113          	addi	sp,sp,32
    80005584:	00008067          	ret

0000000080005588 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005588:	ff010113          	addi	sp,sp,-16
    8000558c:	00113423          	sd	ra,8(sp)
    80005590:	00813023          	sd	s0,0(sp)
    80005594:	01010413          	addi	s0,sp,16
    80005598:	00006797          	auipc	a5,0x6
    8000559c:	32878793          	addi	a5,a5,808 # 8000b8c0 <_ZTV12ProducerSync+0x10>
    800055a0:	00f53023          	sd	a5,0(a0)
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	5b8080e7          	jalr	1464(ra) # 80001b5c <_ZN6ThreadD1Ev>
    800055ac:	00813083          	ld	ra,8(sp)
    800055b0:	00013403          	ld	s0,0(sp)
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret

00000000800055bc <_ZN12ProducerSyncD0Ev>:
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00113c23          	sd	ra,24(sp)
    800055c4:	00813823          	sd	s0,16(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	00050493          	mv	s1,a0
    800055d4:	00006797          	auipc	a5,0x6
    800055d8:	2ec78793          	addi	a5,a5,748 # 8000b8c0 <_ZTV12ProducerSync+0x10>
    800055dc:	00f53023          	sd	a5,0(a0)
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	57c080e7          	jalr	1404(ra) # 80001b5c <_ZN6ThreadD1Ev>
    800055e8:	00048513          	mv	a0,s1
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	4f4080e7          	jalr	1268(ra) # 80001ae0 <_ZdlPv>
    800055f4:	01813083          	ld	ra,24(sp)
    800055f8:	01013403          	ld	s0,16(sp)
    800055fc:	00813483          	ld	s1,8(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret

0000000080005608 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00113423          	sd	ra,8(sp)
    80005610:	00813023          	sd	s0,0(sp)
    80005614:	01010413          	addi	s0,sp,16
    80005618:	00006797          	auipc	a5,0x6
    8000561c:	28078793          	addi	a5,a5,640 # 8000b898 <_ZTV16ProducerKeyboard+0x10>
    80005620:	00f53023          	sd	a5,0(a0)
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	538080e7          	jalr	1336(ra) # 80001b5c <_ZN6ThreadD1Ev>
    8000562c:	00813083          	ld	ra,8(sp)
    80005630:	00013403          	ld	s0,0(sp)
    80005634:	01010113          	addi	sp,sp,16
    80005638:	00008067          	ret

000000008000563c <_ZN16ProducerKeyboardD0Ev>:
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00113c23          	sd	ra,24(sp)
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	02010413          	addi	s0,sp,32
    80005650:	00050493          	mv	s1,a0
    80005654:	00006797          	auipc	a5,0x6
    80005658:	24478793          	addi	a5,a5,580 # 8000b898 <_ZTV16ProducerKeyboard+0x10>
    8000565c:	00f53023          	sd	a5,0(a0)
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	4fc080e7          	jalr	1276(ra) # 80001b5c <_ZN6ThreadD1Ev>
    80005668:	00048513          	mv	a0,s1
    8000566c:	ffffc097          	auipc	ra,0xffffc
    80005670:	474080e7          	jalr	1140(ra) # 80001ae0 <_ZdlPv>
    80005674:	01813083          	ld	ra,24(sp)
    80005678:	01013403          	ld	s0,16(sp)
    8000567c:	00813483          	ld	s1,8(sp)
    80005680:	02010113          	addi	sp,sp,32
    80005684:	00008067          	ret

0000000080005688 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005688:	ff010113          	addi	sp,sp,-16
    8000568c:	00113423          	sd	ra,8(sp)
    80005690:	00813023          	sd	s0,0(sp)
    80005694:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005698:	02053583          	ld	a1,32(a0)
    8000569c:	fffff097          	auipc	ra,0xfffff
    800056a0:	7e4080e7          	jalr	2020(ra) # 80004e80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800056a4:	00813083          	ld	ra,8(sp)
    800056a8:	00013403          	ld	s0,0(sp)
    800056ac:	01010113          	addi	sp,sp,16
    800056b0:	00008067          	ret

00000000800056b4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800056b4:	ff010113          	addi	sp,sp,-16
    800056b8:	00113423          	sd	ra,8(sp)
    800056bc:	00813023          	sd	s0,0(sp)
    800056c0:	01010413          	addi	s0,sp,16
        producer(td);
    800056c4:	02053583          	ld	a1,32(a0)
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	878080e7          	jalr	-1928(ra) # 80004f40 <_ZN12ProducerSync8producerEPv>
    }
    800056d0:	00813083          	ld	ra,8(sp)
    800056d4:	00013403          	ld	s0,0(sp)
    800056d8:	01010113          	addi	sp,sp,16
    800056dc:	00008067          	ret

00000000800056e0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800056e0:	ff010113          	addi	sp,sp,-16
    800056e4:	00113423          	sd	ra,8(sp)
    800056e8:	00813023          	sd	s0,0(sp)
    800056ec:	01010413          	addi	s0,sp,16
        consumer(td);
    800056f0:	02053583          	ld	a1,32(a0)
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	8e0080e7          	jalr	-1824(ra) # 80004fd4 <_ZN12ConsumerSync8consumerEPv>
    }
    800056fc:	00813083          	ld	ra,8(sp)
    80005700:	00013403          	ld	s0,0(sp)
    80005704:	01010113          	addi	sp,sp,16
    80005708:	00008067          	ret

000000008000570c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000570c:	fe010113          	addi	sp,sp,-32
    80005710:	00113c23          	sd	ra,24(sp)
    80005714:	00813823          	sd	s0,16(sp)
    80005718:	00913423          	sd	s1,8(sp)
    8000571c:	02010413          	addi	s0,sp,32
    80005720:	00050493          	mv	s1,a0
    LOCK();
    80005724:	00100613          	li	a2,1
    80005728:	00000593          	li	a1,0
    8000572c:	00006517          	auipc	a0,0x6
    80005730:	32c50513          	addi	a0,a0,812 # 8000ba58 <lockPrint>
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	c28080e7          	jalr	-984(ra) # 8000135c <copy_and_swap>
    8000573c:	00050863          	beqz	a0,8000574c <_Z11printStringPKc+0x40>
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	e1c080e7          	jalr	-484(ra) # 8000155c <_Z15thread_dispatchv>
    80005748:	fddff06f          	j	80005724 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000574c:	0004c503          	lbu	a0,0(s1)
    80005750:	00050a63          	beqz	a0,80005764 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	fc8080e7          	jalr	-56(ra) # 8000171c <_Z4putcc>
        string++;
    8000575c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005760:	fedff06f          	j	8000574c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005764:	00000613          	li	a2,0
    80005768:	00100593          	li	a1,1
    8000576c:	00006517          	auipc	a0,0x6
    80005770:	2ec50513          	addi	a0,a0,748 # 8000ba58 <lockPrint>
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	be8080e7          	jalr	-1048(ra) # 8000135c <copy_and_swap>
    8000577c:	fe0514e3          	bnez	a0,80005764 <_Z11printStringPKc+0x58>
}
    80005780:	01813083          	ld	ra,24(sp)
    80005784:	01013403          	ld	s0,16(sp)
    80005788:	00813483          	ld	s1,8(sp)
    8000578c:	02010113          	addi	sp,sp,32
    80005790:	00008067          	ret

0000000080005794 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005794:	fd010113          	addi	sp,sp,-48
    80005798:	02113423          	sd	ra,40(sp)
    8000579c:	02813023          	sd	s0,32(sp)
    800057a0:	00913c23          	sd	s1,24(sp)
    800057a4:	01213823          	sd	s2,16(sp)
    800057a8:	01313423          	sd	s3,8(sp)
    800057ac:	01413023          	sd	s4,0(sp)
    800057b0:	03010413          	addi	s0,sp,48
    800057b4:	00050993          	mv	s3,a0
    800057b8:	00058a13          	mv	s4,a1
    LOCK();
    800057bc:	00100613          	li	a2,1
    800057c0:	00000593          	li	a1,0
    800057c4:	00006517          	auipc	a0,0x6
    800057c8:	29450513          	addi	a0,a0,660 # 8000ba58 <lockPrint>
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	b90080e7          	jalr	-1136(ra) # 8000135c <copy_and_swap>
    800057d4:	00050863          	beqz	a0,800057e4 <_Z9getStringPci+0x50>
    800057d8:	ffffc097          	auipc	ra,0xffffc
    800057dc:	d84080e7          	jalr	-636(ra) # 8000155c <_Z15thread_dispatchv>
    800057e0:	fddff06f          	j	800057bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800057e4:	00000913          	li	s2,0
    800057e8:	00090493          	mv	s1,s2
    800057ec:	0019091b          	addiw	s2,s2,1
    800057f0:	03495a63          	bge	s2,s4,80005824 <_Z9getStringPci+0x90>
        cc = getc();
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	eec080e7          	jalr	-276(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    800057fc:	02050463          	beqz	a0,80005824 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005800:	009984b3          	add	s1,s3,s1
    80005804:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005808:	00a00793          	li	a5,10
    8000580c:	00f50a63          	beq	a0,a5,80005820 <_Z9getStringPci+0x8c>
    80005810:	00d00793          	li	a5,13
    80005814:	fcf51ae3          	bne	a0,a5,800057e8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005818:	00090493          	mv	s1,s2
    8000581c:	0080006f          	j	80005824 <_Z9getStringPci+0x90>
    80005820:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005824:	009984b3          	add	s1,s3,s1
    80005828:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000582c:	00000613          	li	a2,0
    80005830:	00100593          	li	a1,1
    80005834:	00006517          	auipc	a0,0x6
    80005838:	22450513          	addi	a0,a0,548 # 8000ba58 <lockPrint>
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	b20080e7          	jalr	-1248(ra) # 8000135c <copy_and_swap>
    80005844:	fe0514e3          	bnez	a0,8000582c <_Z9getStringPci+0x98>
    return buf;
}
    80005848:	00098513          	mv	a0,s3
    8000584c:	02813083          	ld	ra,40(sp)
    80005850:	02013403          	ld	s0,32(sp)
    80005854:	01813483          	ld	s1,24(sp)
    80005858:	01013903          	ld	s2,16(sp)
    8000585c:	00813983          	ld	s3,8(sp)
    80005860:	00013a03          	ld	s4,0(sp)
    80005864:	03010113          	addi	sp,sp,48
    80005868:	00008067          	ret

000000008000586c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000586c:	ff010113          	addi	sp,sp,-16
    80005870:	00813423          	sd	s0,8(sp)
    80005874:	01010413          	addi	s0,sp,16
    80005878:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000587c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005880:	0006c603          	lbu	a2,0(a3)
    80005884:	fd06071b          	addiw	a4,a2,-48
    80005888:	0ff77713          	andi	a4,a4,255
    8000588c:	00900793          	li	a5,9
    80005890:	02e7e063          	bltu	a5,a4,800058b0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005894:	0025179b          	slliw	a5,a0,0x2
    80005898:	00a787bb          	addw	a5,a5,a0
    8000589c:	0017979b          	slliw	a5,a5,0x1
    800058a0:	00168693          	addi	a3,a3,1
    800058a4:	00c787bb          	addw	a5,a5,a2
    800058a8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800058ac:	fd5ff06f          	j	80005880 <_Z11stringToIntPKc+0x14>
    return n;
}
    800058b0:	00813403          	ld	s0,8(sp)
    800058b4:	01010113          	addi	sp,sp,16
    800058b8:	00008067          	ret

00000000800058bc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058bc:	fc010113          	addi	sp,sp,-64
    800058c0:	02113c23          	sd	ra,56(sp)
    800058c4:	02813823          	sd	s0,48(sp)
    800058c8:	02913423          	sd	s1,40(sp)
    800058cc:	03213023          	sd	s2,32(sp)
    800058d0:	01313c23          	sd	s3,24(sp)
    800058d4:	04010413          	addi	s0,sp,64
    800058d8:	00050493          	mv	s1,a0
    800058dc:	00058913          	mv	s2,a1
    800058e0:	00060993          	mv	s3,a2
    LOCK();
    800058e4:	00100613          	li	a2,1
    800058e8:	00000593          	li	a1,0
    800058ec:	00006517          	auipc	a0,0x6
    800058f0:	16c50513          	addi	a0,a0,364 # 8000ba58 <lockPrint>
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	a68080e7          	jalr	-1432(ra) # 8000135c <copy_and_swap>
    800058fc:	00050863          	beqz	a0,8000590c <_Z8printIntiii+0x50>
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	c5c080e7          	jalr	-932(ra) # 8000155c <_Z15thread_dispatchv>
    80005908:	fddff06f          	j	800058e4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000590c:	00098463          	beqz	s3,80005914 <_Z8printIntiii+0x58>
    80005910:	0804c463          	bltz	s1,80005998 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005914:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005918:	00000593          	li	a1,0
    }

    i = 0;
    8000591c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005920:	0009079b          	sext.w	a5,s2
    80005924:	0325773b          	remuw	a4,a0,s2
    80005928:	00048613          	mv	a2,s1
    8000592c:	0014849b          	addiw	s1,s1,1
    80005930:	02071693          	slli	a3,a4,0x20
    80005934:	0206d693          	srli	a3,a3,0x20
    80005938:	00006717          	auipc	a4,0x6
    8000593c:	fc870713          	addi	a4,a4,-56 # 8000b900 <digits>
    80005940:	00d70733          	add	a4,a4,a3
    80005944:	00074683          	lbu	a3,0(a4)
    80005948:	fd040713          	addi	a4,s0,-48
    8000594c:	00c70733          	add	a4,a4,a2
    80005950:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005954:	0005071b          	sext.w	a4,a0
    80005958:	0325553b          	divuw	a0,a0,s2
    8000595c:	fcf772e3          	bgeu	a4,a5,80005920 <_Z8printIntiii+0x64>
    if(neg)
    80005960:	00058c63          	beqz	a1,80005978 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005964:	fd040793          	addi	a5,s0,-48
    80005968:	009784b3          	add	s1,a5,s1
    8000596c:	02d00793          	li	a5,45
    80005970:	fef48823          	sb	a5,-16(s1)
    80005974:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005978:	fff4849b          	addiw	s1,s1,-1
    8000597c:	0204c463          	bltz	s1,800059a4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005980:	fd040793          	addi	a5,s0,-48
    80005984:	009787b3          	add	a5,a5,s1
    80005988:	ff07c503          	lbu	a0,-16(a5)
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	d90080e7          	jalr	-624(ra) # 8000171c <_Z4putcc>
    80005994:	fe5ff06f          	j	80005978 <_Z8printIntiii+0xbc>
        x = -xx;
    80005998:	4090053b          	negw	a0,s1
        neg = 1;
    8000599c:	00100593          	li	a1,1
        x = -xx;
    800059a0:	f7dff06f          	j	8000591c <_Z8printIntiii+0x60>

    UNLOCK();
    800059a4:	00000613          	li	a2,0
    800059a8:	00100593          	li	a1,1
    800059ac:	00006517          	auipc	a0,0x6
    800059b0:	0ac50513          	addi	a0,a0,172 # 8000ba58 <lockPrint>
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	9a8080e7          	jalr	-1624(ra) # 8000135c <copy_and_swap>
    800059bc:	fe0514e3          	bnez	a0,800059a4 <_Z8printIntiii+0xe8>
    800059c0:	03813083          	ld	ra,56(sp)
    800059c4:	03013403          	ld	s0,48(sp)
    800059c8:	02813483          	ld	s1,40(sp)
    800059cc:	02013903          	ld	s2,32(sp)
    800059d0:	01813983          	ld	s3,24(sp)
    800059d4:	04010113          	addi	sp,sp,64
    800059d8:	00008067          	ret

00000000800059dc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059dc:	fd010113          	addi	sp,sp,-48
    800059e0:	02113423          	sd	ra,40(sp)
    800059e4:	02813023          	sd	s0,32(sp)
    800059e8:	00913c23          	sd	s1,24(sp)
    800059ec:	01213823          	sd	s2,16(sp)
    800059f0:	01313423          	sd	s3,8(sp)
    800059f4:	03010413          	addi	s0,sp,48
    800059f8:	00050493          	mv	s1,a0
    800059fc:	00058913          	mv	s2,a1
    80005a00:	0015879b          	addiw	a5,a1,1
    80005a04:	0007851b          	sext.w	a0,a5
    80005a08:	00f4a023          	sw	a5,0(s1)
    80005a0c:	0004a823          	sw	zero,16(s1)
    80005a10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a14:	00251513          	slli	a0,a0,0x2
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	99c080e7          	jalr	-1636(ra) # 800013b4 <_Z9mem_allocm>
    80005a20:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a24:	01000513          	li	a0,16
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	068080e7          	jalr	104(ra) # 80001a90 <_Znwm>
    80005a30:	00050993          	mv	s3,a0
    80005a34:	00000593          	li	a1,0
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	404080e7          	jalr	1028(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    80005a40:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a44:	01000513          	li	a0,16
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	048080e7          	jalr	72(ra) # 80001a90 <_Znwm>
    80005a50:	00050993          	mv	s3,a0
    80005a54:	00090593          	mv	a1,s2
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	3e4080e7          	jalr	996(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    80005a60:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a64:	01000513          	li	a0,16
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	028080e7          	jalr	40(ra) # 80001a90 <_Znwm>
    80005a70:	00050913          	mv	s2,a0
    80005a74:	00100593          	li	a1,1
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	3c4080e7          	jalr	964(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    80005a80:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005a84:	01000513          	li	a0,16
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	008080e7          	jalr	8(ra) # 80001a90 <_Znwm>
    80005a90:	00050913          	mv	s2,a0
    80005a94:	00100593          	li	a1,1
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	3a4080e7          	jalr	932(ra) # 80001e3c <_ZN9SemaphoreC1Ej>
    80005aa0:	0324b823          	sd	s2,48(s1)
}
    80005aa4:	02813083          	ld	ra,40(sp)
    80005aa8:	02013403          	ld	s0,32(sp)
    80005aac:	01813483          	ld	s1,24(sp)
    80005ab0:	01013903          	ld	s2,16(sp)
    80005ab4:	00813983          	ld	s3,8(sp)
    80005ab8:	03010113          	addi	sp,sp,48
    80005abc:	00008067          	ret
    80005ac0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ac4:	00098513          	mv	a0,s3
    80005ac8:	ffffc097          	auipc	ra,0xffffc
    80005acc:	018080e7          	jalr	24(ra) # 80001ae0 <_ZdlPv>
    80005ad0:	00048513          	mv	a0,s1
    80005ad4:	00007097          	auipc	ra,0x7
    80005ad8:	064080e7          	jalr	100(ra) # 8000cb38 <_Unwind_Resume>
    80005adc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ae0:	00098513          	mv	a0,s3
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	ffc080e7          	jalr	-4(ra) # 80001ae0 <_ZdlPv>
    80005aec:	00048513          	mv	a0,s1
    80005af0:	00007097          	auipc	ra,0x7
    80005af4:	048080e7          	jalr	72(ra) # 8000cb38 <_Unwind_Resume>
    80005af8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005afc:	00090513          	mv	a0,s2
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	fe0080e7          	jalr	-32(ra) # 80001ae0 <_ZdlPv>
    80005b08:	00048513          	mv	a0,s1
    80005b0c:	00007097          	auipc	ra,0x7
    80005b10:	02c080e7          	jalr	44(ra) # 8000cb38 <_Unwind_Resume>
    80005b14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b18:	00090513          	mv	a0,s2
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	fc4080e7          	jalr	-60(ra) # 80001ae0 <_ZdlPv>
    80005b24:	00048513          	mv	a0,s1
    80005b28:	00007097          	auipc	ra,0x7
    80005b2c:	010080e7          	jalr	16(ra) # 8000cb38 <_Unwind_Resume>

0000000080005b30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b30:	fe010113          	addi	sp,sp,-32
    80005b34:	00113c23          	sd	ra,24(sp)
    80005b38:	00813823          	sd	s0,16(sp)
    80005b3c:	00913423          	sd	s1,8(sp)
    80005b40:	01213023          	sd	s2,0(sp)
    80005b44:	02010413          	addi	s0,sp,32
    80005b48:	00050493          	mv	s1,a0
    80005b4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b50:	01853503          	ld	a0,24(a0)
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	324080e7          	jalr	804(ra) # 80001e78 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b5c:	0304b503          	ld	a0,48(s1)
    80005b60:	ffffc097          	auipc	ra,0xffffc
    80005b64:	318080e7          	jalr	792(ra) # 80001e78 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b68:	0084b783          	ld	a5,8(s1)
    80005b6c:	0144a703          	lw	a4,20(s1)
    80005b70:	00271713          	slli	a4,a4,0x2
    80005b74:	00e787b3          	add	a5,a5,a4
    80005b78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b7c:	0144a783          	lw	a5,20(s1)
    80005b80:	0017879b          	addiw	a5,a5,1
    80005b84:	0004a703          	lw	a4,0(s1)
    80005b88:	02e7e7bb          	remw	a5,a5,a4
    80005b8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005b90:	0304b503          	ld	a0,48(s1)
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	310080e7          	jalr	784(ra) # 80001ea4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005b9c:	0204b503          	ld	a0,32(s1)
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	304080e7          	jalr	772(ra) # 80001ea4 <_ZN9Semaphore6signalEv>

}
    80005ba8:	01813083          	ld	ra,24(sp)
    80005bac:	01013403          	ld	s0,16(sp)
    80005bb0:	00813483          	ld	s1,8(sp)
    80005bb4:	00013903          	ld	s2,0(sp)
    80005bb8:	02010113          	addi	sp,sp,32
    80005bbc:	00008067          	ret

0000000080005bc0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	00813823          	sd	s0,16(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	01213023          	sd	s2,0(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    80005bd8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bdc:	02053503          	ld	a0,32(a0)
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	298080e7          	jalr	664(ra) # 80001e78 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005be8:	0284b503          	ld	a0,40(s1)
    80005bec:	ffffc097          	auipc	ra,0xffffc
    80005bf0:	28c080e7          	jalr	652(ra) # 80001e78 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005bf4:	0084b703          	ld	a4,8(s1)
    80005bf8:	0104a783          	lw	a5,16(s1)
    80005bfc:	00279693          	slli	a3,a5,0x2
    80005c00:	00d70733          	add	a4,a4,a3
    80005c04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c08:	0017879b          	addiw	a5,a5,1
    80005c0c:	0004a703          	lw	a4,0(s1)
    80005c10:	02e7e7bb          	remw	a5,a5,a4
    80005c14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c18:	0284b503          	ld	a0,40(s1)
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	288080e7          	jalr	648(ra) # 80001ea4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c24:	0184b503          	ld	a0,24(s1)
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	27c080e7          	jalr	636(ra) # 80001ea4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c30:	00090513          	mv	a0,s2
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	00013903          	ld	s2,0(sp)
    80005c44:	02010113          	addi	sp,sp,32
    80005c48:	00008067          	ret

0000000080005c4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c4c:	fe010113          	addi	sp,sp,-32
    80005c50:	00113c23          	sd	ra,24(sp)
    80005c54:	00813823          	sd	s0,16(sp)
    80005c58:	00913423          	sd	s1,8(sp)
    80005c5c:	01213023          	sd	s2,0(sp)
    80005c60:	02010413          	addi	s0,sp,32
    80005c64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c68:	02853503          	ld	a0,40(a0)
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	20c080e7          	jalr	524(ra) # 80001e78 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005c74:	0304b503          	ld	a0,48(s1)
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	200080e7          	jalr	512(ra) # 80001e78 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005c80:	0144a783          	lw	a5,20(s1)
    80005c84:	0104a903          	lw	s2,16(s1)
    80005c88:	0327ce63          	blt	a5,s2,80005cc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005c8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005c90:	0304b503          	ld	a0,48(s1)
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	210080e7          	jalr	528(ra) # 80001ea4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005c9c:	0284b503          	ld	a0,40(s1)
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	204080e7          	jalr	516(ra) # 80001ea4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	00813483          	ld	s1,8(sp)
    80005cb8:	00013903          	ld	s2,0(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret
        ret = cap - head + tail;
    80005cc4:	0004a703          	lw	a4,0(s1)
    80005cc8:	4127093b          	subw	s2,a4,s2
    80005ccc:	00f9093b          	addw	s2,s2,a5
    80005cd0:	fc1ff06f          	j	80005c90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005cd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005cd4:	fe010113          	addi	sp,sp,-32
    80005cd8:	00113c23          	sd	ra,24(sp)
    80005cdc:	00813823          	sd	s0,16(sp)
    80005ce0:	00913423          	sd	s1,8(sp)
    80005ce4:	02010413          	addi	s0,sp,32
    80005ce8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005cec:	00a00513          	li	a0,10
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	274080e7          	jalr	628(ra) # 80001f64 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	52850513          	addi	a0,a0,1320 # 80009220 <CONSOLE_STATUS+0x210>
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	a0c080e7          	jalr	-1524(ra) # 8000570c <_Z11printStringPKc>
    while (getCnt()) {
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	00000097          	auipc	ra,0x0
    80005d10:	f40080e7          	jalr	-192(ra) # 80005c4c <_ZN9BufferCPP6getCntEv>
    80005d14:	02050c63          	beqz	a0,80005d4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d18:	0084b783          	ld	a5,8(s1)
    80005d1c:	0104a703          	lw	a4,16(s1)
    80005d20:	00271713          	slli	a4,a4,0x2
    80005d24:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d28:	0007c503          	lbu	a0,0(a5)
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	238080e7          	jalr	568(ra) # 80001f64 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d34:	0104a783          	lw	a5,16(s1)
    80005d38:	0017879b          	addiw	a5,a5,1
    80005d3c:	0004a703          	lw	a4,0(s1)
    80005d40:	02e7e7bb          	remw	a5,a5,a4
    80005d44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d48:	fc1ff06f          	j	80005d08 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d4c:	02100513          	li	a0,33
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	214080e7          	jalr	532(ra) # 80001f64 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d58:	00a00513          	li	a0,10
    80005d5c:	ffffc097          	auipc	ra,0xffffc
    80005d60:	208080e7          	jalr	520(ra) # 80001f64 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d64:	0084b503          	ld	a0,8(s1)
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	68c080e7          	jalr	1676(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005d70:	0204b503          	ld	a0,32(s1)
    80005d74:	00050863          	beqz	a0,80005d84 <_ZN9BufferCPPD1Ev+0xb0>
    80005d78:	00053783          	ld	a5,0(a0)
    80005d7c:	0087b783          	ld	a5,8(a5)
    80005d80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d84:	0184b503          	ld	a0,24(s1)
    80005d88:	00050863          	beqz	a0,80005d98 <_ZN9BufferCPPD1Ev+0xc4>
    80005d8c:	00053783          	ld	a5,0(a0)
    80005d90:	0087b783          	ld	a5,8(a5)
    80005d94:	000780e7          	jalr	a5
    delete mutexTail;
    80005d98:	0304b503          	ld	a0,48(s1)
    80005d9c:	00050863          	beqz	a0,80005dac <_ZN9BufferCPPD1Ev+0xd8>
    80005da0:	00053783          	ld	a5,0(a0)
    80005da4:	0087b783          	ld	a5,8(a5)
    80005da8:	000780e7          	jalr	a5
    delete mutexHead;
    80005dac:	0284b503          	ld	a0,40(s1)
    80005db0:	00050863          	beqz	a0,80005dc0 <_ZN9BufferCPPD1Ev+0xec>
    80005db4:	00053783          	ld	a5,0(a0)
    80005db8:	0087b783          	ld	a5,8(a5)
    80005dbc:	000780e7          	jalr	a5
}
    80005dc0:	01813083          	ld	ra,24(sp)
    80005dc4:	01013403          	ld	s0,16(sp)
    80005dc8:	00813483          	ld	s1,8(sp)
    80005dcc:	02010113          	addi	sp,sp,32
    80005dd0:	00008067          	ret

0000000080005dd4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005dd4:	fe010113          	addi	sp,sp,-32
    80005dd8:	00113c23          	sd	ra,24(sp)
    80005ddc:	00813823          	sd	s0,16(sp)
    80005de0:	00913423          	sd	s1,8(sp)
    80005de4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	45050513          	addi	a0,a0,1104 # 80009238 <CONSOLE_STATUS+0x228>
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	91c080e7          	jalr	-1764(ra) # 8000570c <_Z11printStringPKc>
    int test = getc() - '0';
    80005df8:	ffffc097          	auipc	ra,0xffffc
    80005dfc:	8e8080e7          	jalr	-1816(ra) # 800016e0 <_Z4getcv>
    80005e00:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	8dc080e7          	jalr	-1828(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e0c:	00700793          	li	a5,7
    80005e10:	1097e263          	bltu	a5,s1,80005f14 <_Z8userMainv+0x140>
    80005e14:	00249493          	slli	s1,s1,0x2
    80005e18:	00003717          	auipc	a4,0x3
    80005e1c:	67870713          	addi	a4,a4,1656 # 80009490 <CONSOLE_STATUS+0x480>
    80005e20:	00e484b3          	add	s1,s1,a4
    80005e24:	0004a783          	lw	a5,0(s1)
    80005e28:	00e787b3          	add	a5,a5,a4
    80005e2c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	f54080e7          	jalr	-172(ra) # 80004d84 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	42050513          	addi	a0,a0,1056 # 80009258 <CONSOLE_STATUS+0x248>
    80005e40:	00000097          	auipc	ra,0x0
    80005e44:	8cc080e7          	jalr	-1844(ra) # 8000570c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005e48:	01813083          	ld	ra,24(sp)
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	00813483          	ld	s1,8(sp)
    80005e54:	02010113          	addi	sp,sp,32
    80005e58:	00008067          	ret
            Threads_CPP_API_test();
    80005e5c:	ffffe097          	auipc	ra,0xffffe
    80005e60:	e08080e7          	jalr	-504(ra) # 80003c64 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005e64:	00003517          	auipc	a0,0x3
    80005e68:	43450513          	addi	a0,a0,1076 # 80009298 <CONSOLE_STATUS+0x288>
    80005e6c:	00000097          	auipc	ra,0x0
    80005e70:	8a0080e7          	jalr	-1888(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005e74:	fd5ff06f          	j	80005e48 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005e78:	ffffd097          	auipc	ra,0xffffd
    80005e7c:	640080e7          	jalr	1600(ra) # 800034b8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	45850513          	addi	a0,a0,1112 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005e88:	00000097          	auipc	ra,0x0
    80005e8c:	884080e7          	jalr	-1916(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005e90:	fb9ff06f          	j	80005e48 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005e94:	fffff097          	auipc	ra,0xfffff
    80005e98:	234080e7          	jalr	564(ra) # 800050c8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005e9c:	00003517          	auipc	a0,0x3
    80005ea0:	48c50513          	addi	a0,a0,1164 # 80009328 <CONSOLE_STATUS+0x318>
    80005ea4:	00000097          	auipc	ra,0x0
    80005ea8:	868080e7          	jalr	-1944(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005eac:	f9dff06f          	j	80005e48 <_Z8userMainv+0x74>
            testSleeping();
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	11c080e7          	jalr	284(ra) # 80005fcc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	4c850513          	addi	a0,a0,1224 # 80009380 <CONSOLE_STATUS+0x370>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	84c080e7          	jalr	-1972(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005ec8:	f81ff06f          	j	80005e48 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005ecc:	ffffe097          	auipc	ra,0xffffe
    80005ed0:	258080e7          	jalr	600(ra) # 80004124 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	4dc50513          	addi	a0,a0,1244 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005edc:	00000097          	auipc	ra,0x0
    80005ee0:	830080e7          	jalr	-2000(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005ee4:	f65ff06f          	j	80005e48 <_Z8userMainv+0x74>
            System_Mode_test();
    80005ee8:	00000097          	auipc	ra,0x0
    80005eec:	658080e7          	jalr	1624(ra) # 80006540 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	50050513          	addi	a0,a0,1280 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005ef8:	00000097          	auipc	ra,0x0
    80005efc:	814080e7          	jalr	-2028(ra) # 8000570c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	51050513          	addi	a0,a0,1296 # 80009410 <CONSOLE_STATUS+0x400>
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	804080e7          	jalr	-2044(ra) # 8000570c <_Z11printStringPKc>
            break;
    80005f10:	f39ff06f          	j	80005e48 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005f14:	00003517          	auipc	a0,0x3
    80005f18:	55450513          	addi	a0,a0,1364 # 80009468 <CONSOLE_STATUS+0x458>
    80005f1c:	fffff097          	auipc	ra,0xfffff
    80005f20:	7f0080e7          	jalr	2032(ra) # 8000570c <_Z11printStringPKc>
    80005f24:	f25ff06f          	j	80005e48 <_Z8userMainv+0x74>

0000000080005f28 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	01213023          	sd	s2,0(sp)
    80005f3c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f40:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f44:	00600493          	li	s1,6
    while (--i > 0) {
    80005f48:	fff4849b          	addiw	s1,s1,-1
    80005f4c:	04905463          	blez	s1,80005f94 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	56050513          	addi	a0,a0,1376 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	7b4080e7          	jalr	1972(ra) # 8000570c <_Z11printStringPKc>
        printInt(sleep_time);
    80005f60:	00000613          	li	a2,0
    80005f64:	00a00593          	li	a1,10
    80005f68:	0009051b          	sext.w	a0,s2
    80005f6c:	00000097          	auipc	ra,0x0
    80005f70:	950080e7          	jalr	-1712(ra) # 800058bc <_Z8printIntiii>
        printString(" !\n");
    80005f74:	00003517          	auipc	a0,0x3
    80005f78:	54450513          	addi	a0,a0,1348 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005f7c:	fffff097          	auipc	ra,0xfffff
    80005f80:	790080e7          	jalr	1936(ra) # 8000570c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f84:	00090513          	mv	a0,s2
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	558080e7          	jalr	1368(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80005f90:	fb9ff06f          	j	80005f48 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f94:	00a00793          	li	a5,10
    80005f98:	02f95933          	divu	s2,s2,a5
    80005f9c:	fff90913          	addi	s2,s2,-1
    80005fa0:	00006797          	auipc	a5,0x6
    80005fa4:	ac078793          	addi	a5,a5,-1344 # 8000ba60 <_ZL8finished>
    80005fa8:	01278933          	add	s2,a5,s2
    80005fac:	00100793          	li	a5,1
    80005fb0:	00f90023          	sb	a5,0(s2)
}
    80005fb4:	01813083          	ld	ra,24(sp)
    80005fb8:	01013403          	ld	s0,16(sp)
    80005fbc:	00813483          	ld	s1,8(sp)
    80005fc0:	00013903          	ld	s2,0(sp)
    80005fc4:	02010113          	addi	sp,sp,32
    80005fc8:	00008067          	ret

0000000080005fcc <_Z12testSleepingv>:

void testSleeping() {
    80005fcc:	fc010113          	addi	sp,sp,-64
    80005fd0:	02113c23          	sd	ra,56(sp)
    80005fd4:	02813823          	sd	s0,48(sp)
    80005fd8:	02913423          	sd	s1,40(sp)
    80005fdc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005fe0:	00a00793          	li	a5,10
    80005fe4:	fcf43823          	sd	a5,-48(s0)
    80005fe8:	01400793          	li	a5,20
    80005fec:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ff0:	00000493          	li	s1,0
    80005ff4:	02c0006f          	j	80006020 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ff8:	00349793          	slli	a5,s1,0x3
    80005ffc:	fd040613          	addi	a2,s0,-48
    80006000:	00f60633          	add	a2,a2,a5
    80006004:	00000597          	auipc	a1,0x0
    80006008:	f2458593          	addi	a1,a1,-220 # 80005f28 <_ZL9sleepyRunPv>
    8000600c:	fc040513          	addi	a0,s0,-64
    80006010:	00f50533          	add	a0,a0,a5
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	420080e7          	jalr	1056(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000601c:	0014849b          	addiw	s1,s1,1
    80006020:	00100793          	li	a5,1
    80006024:	fc97dae3          	bge	a5,s1,80005ff8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006028:	00006797          	auipc	a5,0x6
    8000602c:	a387c783          	lbu	a5,-1480(a5) # 8000ba60 <_ZL8finished>
    80006030:	fe078ce3          	beqz	a5,80006028 <_Z12testSleepingv+0x5c>
    80006034:	00006797          	auipc	a5,0x6
    80006038:	a2d7c783          	lbu	a5,-1491(a5) # 8000ba61 <_ZL8finished+0x1>
    8000603c:	fe0786e3          	beqz	a5,80006028 <_Z12testSleepingv+0x5c>
}
    80006040:	03813083          	ld	ra,56(sp)
    80006044:	03013403          	ld	s0,48(sp)
    80006048:	02813483          	ld	s1,40(sp)
    8000604c:	04010113          	addi	sp,sp,64
    80006050:	00008067          	ret

0000000080006054 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006054:	fe010113          	addi	sp,sp,-32
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	00813823          	sd	s0,16(sp)
    80006060:	00913423          	sd	s1,8(sp)
    80006064:	01213023          	sd	s2,0(sp)
    80006068:	02010413          	addi	s0,sp,32
    8000606c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006070:	00100793          	li	a5,1
    80006074:	02a7f863          	bgeu	a5,a0,800060a4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006078:	00a00793          	li	a5,10
    8000607c:	02f577b3          	remu	a5,a0,a5
    80006080:	02078e63          	beqz	a5,800060bc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006084:	fff48513          	addi	a0,s1,-1
    80006088:	00000097          	auipc	ra,0x0
    8000608c:	fcc080e7          	jalr	-52(ra) # 80006054 <_ZL9fibonaccim>
    80006090:	00050913          	mv	s2,a0
    80006094:	ffe48513          	addi	a0,s1,-2
    80006098:	00000097          	auipc	ra,0x0
    8000609c:	fbc080e7          	jalr	-68(ra) # 80006054 <_ZL9fibonaccim>
    800060a0:	00a90533          	add	a0,s2,a0
}
    800060a4:	01813083          	ld	ra,24(sp)
    800060a8:	01013403          	ld	s0,16(sp)
    800060ac:	00813483          	ld	s1,8(sp)
    800060b0:	00013903          	ld	s2,0(sp)
    800060b4:	02010113          	addi	sp,sp,32
    800060b8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800060bc:	ffffb097          	auipc	ra,0xffffb
    800060c0:	4a0080e7          	jalr	1184(ra) # 8000155c <_Z15thread_dispatchv>
    800060c4:	fc1ff06f          	j	80006084 <_ZL9fibonaccim+0x30>

00000000800060c8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	01213023          	sd	s2,0(sp)
    800060dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800060e0:	00a00493          	li	s1,10
    800060e4:	0400006f          	j	80006124 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800060e8:	00003517          	auipc	a0,0x3
    800060ec:	0a050513          	addi	a0,a0,160 # 80009188 <CONSOLE_STATUS+0x178>
    800060f0:	fffff097          	auipc	ra,0xfffff
    800060f4:	61c080e7          	jalr	1564(ra) # 8000570c <_Z11printStringPKc>
    800060f8:	00000613          	li	a2,0
    800060fc:	00a00593          	li	a1,10
    80006100:	00048513          	mv	a0,s1
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	7b8080e7          	jalr	1976(ra) # 800058bc <_Z8printIntiii>
    8000610c:	00003517          	auipc	a0,0x3
    80006110:	26c50513          	addi	a0,a0,620 # 80009378 <CONSOLE_STATUS+0x368>
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	5f8080e7          	jalr	1528(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000611c:	0014849b          	addiw	s1,s1,1
    80006120:	0ff4f493          	andi	s1,s1,255
    80006124:	00c00793          	li	a5,12
    80006128:	fc97f0e3          	bgeu	a5,s1,800060e8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000612c:	00003517          	auipc	a0,0x3
    80006130:	06450513          	addi	a0,a0,100 # 80009190 <CONSOLE_STATUS+0x180>
    80006134:	fffff097          	auipc	ra,0xfffff
    80006138:	5d8080e7          	jalr	1496(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000613c:	00500313          	li	t1,5
    thread_dispatch();
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	41c080e7          	jalr	1052(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006148:	01000513          	li	a0,16
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	f08080e7          	jalr	-248(ra) # 80006054 <_ZL9fibonaccim>
    80006154:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006158:	00003517          	auipc	a0,0x3
    8000615c:	04850513          	addi	a0,a0,72 # 800091a0 <CONSOLE_STATUS+0x190>
    80006160:	fffff097          	auipc	ra,0xfffff
    80006164:	5ac080e7          	jalr	1452(ra) # 8000570c <_Z11printStringPKc>
    80006168:	00000613          	li	a2,0
    8000616c:	00a00593          	li	a1,10
    80006170:	0009051b          	sext.w	a0,s2
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	748080e7          	jalr	1864(ra) # 800058bc <_Z8printIntiii>
    8000617c:	00003517          	auipc	a0,0x3
    80006180:	1fc50513          	addi	a0,a0,508 # 80009378 <CONSOLE_STATUS+0x368>
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	588080e7          	jalr	1416(ra) # 8000570c <_Z11printStringPKc>
    8000618c:	0400006f          	j	800061cc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006190:	00003517          	auipc	a0,0x3
    80006194:	ff850513          	addi	a0,a0,-8 # 80009188 <CONSOLE_STATUS+0x178>
    80006198:	fffff097          	auipc	ra,0xfffff
    8000619c:	574080e7          	jalr	1396(ra) # 8000570c <_Z11printStringPKc>
    800061a0:	00000613          	li	a2,0
    800061a4:	00a00593          	li	a1,10
    800061a8:	00048513          	mv	a0,s1
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	710080e7          	jalr	1808(ra) # 800058bc <_Z8printIntiii>
    800061b4:	00003517          	auipc	a0,0x3
    800061b8:	1c450513          	addi	a0,a0,452 # 80009378 <CONSOLE_STATUS+0x368>
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	550080e7          	jalr	1360(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800061c4:	0014849b          	addiw	s1,s1,1
    800061c8:	0ff4f493          	andi	s1,s1,255
    800061cc:	00f00793          	li	a5,15
    800061d0:	fc97f0e3          	bgeu	a5,s1,80006190 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	fdc50513          	addi	a0,a0,-36 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	530080e7          	jalr	1328(ra) # 8000570c <_Z11printStringPKc>
    finishedD = true;
    800061e4:	00100793          	li	a5,1
    800061e8:	00006717          	auipc	a4,0x6
    800061ec:	86f70d23          	sb	a5,-1926(a4) # 8000ba62 <_ZL9finishedD>
    thread_dispatch();
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	36c080e7          	jalr	876(ra) # 8000155c <_Z15thread_dispatchv>
}
    800061f8:	01813083          	ld	ra,24(sp)
    800061fc:	01013403          	ld	s0,16(sp)
    80006200:	00813483          	ld	s1,8(sp)
    80006204:	00013903          	ld	s2,0(sp)
    80006208:	02010113          	addi	sp,sp,32
    8000620c:	00008067          	ret

0000000080006210 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006210:	fe010113          	addi	sp,sp,-32
    80006214:	00113c23          	sd	ra,24(sp)
    80006218:	00813823          	sd	s0,16(sp)
    8000621c:	00913423          	sd	s1,8(sp)
    80006220:	01213023          	sd	s2,0(sp)
    80006224:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006228:	00000493          	li	s1,0
    8000622c:	0400006f          	j	8000626c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006230:	00003517          	auipc	a0,0x3
    80006234:	f1850513          	addi	a0,a0,-232 # 80009148 <CONSOLE_STATUS+0x138>
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	4d4080e7          	jalr	1236(ra) # 8000570c <_Z11printStringPKc>
    80006240:	00000613          	li	a2,0
    80006244:	00a00593          	li	a1,10
    80006248:	00048513          	mv	a0,s1
    8000624c:	fffff097          	auipc	ra,0xfffff
    80006250:	670080e7          	jalr	1648(ra) # 800058bc <_Z8printIntiii>
    80006254:	00003517          	auipc	a0,0x3
    80006258:	12450513          	addi	a0,a0,292 # 80009378 <CONSOLE_STATUS+0x368>
    8000625c:	fffff097          	auipc	ra,0xfffff
    80006260:	4b0080e7          	jalr	1200(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006264:	0014849b          	addiw	s1,s1,1
    80006268:	0ff4f493          	andi	s1,s1,255
    8000626c:	00200793          	li	a5,2
    80006270:	fc97f0e3          	bgeu	a5,s1,80006230 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006274:	00003517          	auipc	a0,0x3
    80006278:	edc50513          	addi	a0,a0,-292 # 80009150 <CONSOLE_STATUS+0x140>
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	490080e7          	jalr	1168(ra) # 8000570c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006284:	00700313          	li	t1,7
    thread_dispatch();
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	2d4080e7          	jalr	724(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006290:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006294:	00003517          	auipc	a0,0x3
    80006298:	ecc50513          	addi	a0,a0,-308 # 80009160 <CONSOLE_STATUS+0x150>
    8000629c:	fffff097          	auipc	ra,0xfffff
    800062a0:	470080e7          	jalr	1136(ra) # 8000570c <_Z11printStringPKc>
    800062a4:	00000613          	li	a2,0
    800062a8:	00a00593          	li	a1,10
    800062ac:	0009051b          	sext.w	a0,s2
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	60c080e7          	jalr	1548(ra) # 800058bc <_Z8printIntiii>
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	0c050513          	addi	a0,a0,192 # 80009378 <CONSOLE_STATUS+0x368>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	44c080e7          	jalr	1100(ra) # 8000570c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800062c8:	00c00513          	li	a0,12
    800062cc:	00000097          	auipc	ra,0x0
    800062d0:	d88080e7          	jalr	-632(ra) # 80006054 <_ZL9fibonaccim>
    800062d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800062d8:	00003517          	auipc	a0,0x3
    800062dc:	e9050513          	addi	a0,a0,-368 # 80009168 <CONSOLE_STATUS+0x158>
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	42c080e7          	jalr	1068(ra) # 8000570c <_Z11printStringPKc>
    800062e8:	00000613          	li	a2,0
    800062ec:	00a00593          	li	a1,10
    800062f0:	0009051b          	sext.w	a0,s2
    800062f4:	fffff097          	auipc	ra,0xfffff
    800062f8:	5c8080e7          	jalr	1480(ra) # 800058bc <_Z8printIntiii>
    800062fc:	00003517          	auipc	a0,0x3
    80006300:	07c50513          	addi	a0,a0,124 # 80009378 <CONSOLE_STATUS+0x368>
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	408080e7          	jalr	1032(ra) # 8000570c <_Z11printStringPKc>
    8000630c:	0400006f          	j	8000634c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006310:	00003517          	auipc	a0,0x3
    80006314:	e3850513          	addi	a0,a0,-456 # 80009148 <CONSOLE_STATUS+0x138>
    80006318:	fffff097          	auipc	ra,0xfffff
    8000631c:	3f4080e7          	jalr	1012(ra) # 8000570c <_Z11printStringPKc>
    80006320:	00000613          	li	a2,0
    80006324:	00a00593          	li	a1,10
    80006328:	00048513          	mv	a0,s1
    8000632c:	fffff097          	auipc	ra,0xfffff
    80006330:	590080e7          	jalr	1424(ra) # 800058bc <_Z8printIntiii>
    80006334:	00003517          	auipc	a0,0x3
    80006338:	04450513          	addi	a0,a0,68 # 80009378 <CONSOLE_STATUS+0x368>
    8000633c:	fffff097          	auipc	ra,0xfffff
    80006340:	3d0080e7          	jalr	976(ra) # 8000570c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006344:	0014849b          	addiw	s1,s1,1
    80006348:	0ff4f493          	andi	s1,s1,255
    8000634c:	00500793          	li	a5,5
    80006350:	fc97f0e3          	bgeu	a5,s1,80006310 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006354:	00003517          	auipc	a0,0x3
    80006358:	dcc50513          	addi	a0,a0,-564 # 80009120 <CONSOLE_STATUS+0x110>
    8000635c:	fffff097          	auipc	ra,0xfffff
    80006360:	3b0080e7          	jalr	944(ra) # 8000570c <_Z11printStringPKc>
    finishedC = true;
    80006364:	00100793          	li	a5,1
    80006368:	00005717          	auipc	a4,0x5
    8000636c:	6ef70da3          	sb	a5,1787(a4) # 8000ba63 <_ZL9finishedC>
    thread_dispatch();
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	1ec080e7          	jalr	492(ra) # 8000155c <_Z15thread_dispatchv>
}
    80006378:	01813083          	ld	ra,24(sp)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	00813483          	ld	s1,8(sp)
    80006384:	00013903          	ld	s2,0(sp)
    80006388:	02010113          	addi	sp,sp,32
    8000638c:	00008067          	ret

0000000080006390 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006390:	fe010113          	addi	sp,sp,-32
    80006394:	00113c23          	sd	ra,24(sp)
    80006398:	00813823          	sd	s0,16(sp)
    8000639c:	00913423          	sd	s1,8(sp)
    800063a0:	01213023          	sd	s2,0(sp)
    800063a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800063a8:	00000913          	li	s2,0
    800063ac:	0400006f          	j	800063ec <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	1ac080e7          	jalr	428(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800063b8:	00148493          	addi	s1,s1,1
    800063bc:	000027b7          	lui	a5,0x2
    800063c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800063c4:	0097ee63          	bltu	a5,s1,800063e0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800063c8:	00000713          	li	a4,0
    800063cc:	000077b7          	lui	a5,0x7
    800063d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063d4:	fce7eee3          	bltu	a5,a4,800063b0 <_ZL11workerBodyBPv+0x20>
    800063d8:	00170713          	addi	a4,a4,1
    800063dc:	ff1ff06f          	j	800063cc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800063e0:	00a00793          	li	a5,10
    800063e4:	04f90663          	beq	s2,a5,80006430 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800063e8:	00190913          	addi	s2,s2,1
    800063ec:	00f00793          	li	a5,15
    800063f0:	0527e463          	bltu	a5,s2,80006438 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800063f4:	00003517          	auipc	a0,0x3
    800063f8:	d3c50513          	addi	a0,a0,-708 # 80009130 <CONSOLE_STATUS+0x120>
    800063fc:	fffff097          	auipc	ra,0xfffff
    80006400:	310080e7          	jalr	784(ra) # 8000570c <_Z11printStringPKc>
    80006404:	00000613          	li	a2,0
    80006408:	00a00593          	li	a1,10
    8000640c:	0009051b          	sext.w	a0,s2
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	4ac080e7          	jalr	1196(ra) # 800058bc <_Z8printIntiii>
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	f6050513          	addi	a0,a0,-160 # 80009378 <CONSOLE_STATUS+0x368>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	2ec080e7          	jalr	748(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006428:	00000493          	li	s1,0
    8000642c:	f91ff06f          	j	800063bc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006430:	14102ff3          	csrr	t6,sepc
    80006434:	fb5ff06f          	j	800063e8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	d0050513          	addi	a0,a0,-768 # 80009138 <CONSOLE_STATUS+0x128>
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	2cc080e7          	jalr	716(ra) # 8000570c <_Z11printStringPKc>
    finishedB = true;
    80006448:	00100793          	li	a5,1
    8000644c:	00005717          	auipc	a4,0x5
    80006450:	60f70c23          	sb	a5,1560(a4) # 8000ba64 <_ZL9finishedB>
    thread_dispatch();
    80006454:	ffffb097          	auipc	ra,0xffffb
    80006458:	108080e7          	jalr	264(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	00013903          	ld	s2,0(sp)
    8000646c:	02010113          	addi	sp,sp,32
    80006470:	00008067          	ret

0000000080006474 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006474:	fe010113          	addi	sp,sp,-32
    80006478:	00113c23          	sd	ra,24(sp)
    8000647c:	00813823          	sd	s0,16(sp)
    80006480:	00913423          	sd	s1,8(sp)
    80006484:	01213023          	sd	s2,0(sp)
    80006488:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000648c:	00000913          	li	s2,0
    80006490:	0380006f          	j	800064c8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	0c8080e7          	jalr	200(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000649c:	00148493          	addi	s1,s1,1
    800064a0:	000027b7          	lui	a5,0x2
    800064a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064a8:	0097ee63          	bltu	a5,s1,800064c4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064ac:	00000713          	li	a4,0
    800064b0:	000077b7          	lui	a5,0x7
    800064b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064b8:	fce7eee3          	bltu	a5,a4,80006494 <_ZL11workerBodyAPv+0x20>
    800064bc:	00170713          	addi	a4,a4,1
    800064c0:	ff1ff06f          	j	800064b0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800064c4:	00190913          	addi	s2,s2,1
    800064c8:	00900793          	li	a5,9
    800064cc:	0527e063          	bltu	a5,s2,8000650c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	c4850513          	addi	a0,a0,-952 # 80009118 <CONSOLE_STATUS+0x108>
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	234080e7          	jalr	564(ra) # 8000570c <_Z11printStringPKc>
    800064e0:	00000613          	li	a2,0
    800064e4:	00a00593          	li	a1,10
    800064e8:	0009051b          	sext.w	a0,s2
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	3d0080e7          	jalr	976(ra) # 800058bc <_Z8printIntiii>
    800064f4:	00003517          	auipc	a0,0x3
    800064f8:	e8450513          	addi	a0,a0,-380 # 80009378 <CONSOLE_STATUS+0x368>
    800064fc:	fffff097          	auipc	ra,0xfffff
    80006500:	210080e7          	jalr	528(ra) # 8000570c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006504:	00000493          	li	s1,0
    80006508:	f99ff06f          	j	800064a0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000650c:	00003517          	auipc	a0,0x3
    80006510:	c1450513          	addi	a0,a0,-1004 # 80009120 <CONSOLE_STATUS+0x110>
    80006514:	fffff097          	auipc	ra,0xfffff
    80006518:	1f8080e7          	jalr	504(ra) # 8000570c <_Z11printStringPKc>
    finishedA = true;
    8000651c:	00100793          	li	a5,1
    80006520:	00005717          	auipc	a4,0x5
    80006524:	54f702a3          	sb	a5,1349(a4) # 8000ba65 <_ZL9finishedA>
}
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	00813483          	ld	s1,8(sp)
    80006534:	00013903          	ld	s2,0(sp)
    80006538:	02010113          	addi	sp,sp,32
    8000653c:	00008067          	ret

0000000080006540 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006540:	fd010113          	addi	sp,sp,-48
    80006544:	02113423          	sd	ra,40(sp)
    80006548:	02813023          	sd	s0,32(sp)
    8000654c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006550:	00000613          	li	a2,0
    80006554:	00000597          	auipc	a1,0x0
    80006558:	f2058593          	addi	a1,a1,-224 # 80006474 <_ZL11workerBodyAPv>
    8000655c:	fd040513          	addi	a0,s0,-48
    80006560:	ffffb097          	auipc	ra,0xffffb
    80006564:	ed4080e7          	jalr	-300(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006568:	00003517          	auipc	a0,0x3
    8000656c:	c5850513          	addi	a0,a0,-936 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	19c080e7          	jalr	412(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006578:	00000613          	li	a2,0
    8000657c:	00000597          	auipc	a1,0x0
    80006580:	e1458593          	addi	a1,a1,-492 # 80006390 <_ZL11workerBodyBPv>
    80006584:	fd840513          	addi	a0,s0,-40
    80006588:	ffffb097          	auipc	ra,0xffffb
    8000658c:	eac080e7          	jalr	-340(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006590:	00003517          	auipc	a0,0x3
    80006594:	c4850513          	addi	a0,a0,-952 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	174080e7          	jalr	372(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800065a0:	00000613          	li	a2,0
    800065a4:	00000597          	auipc	a1,0x0
    800065a8:	c6c58593          	addi	a1,a1,-916 # 80006210 <_ZL11workerBodyCPv>
    800065ac:	fe040513          	addi	a0,s0,-32
    800065b0:	ffffb097          	auipc	ra,0xffffb
    800065b4:	e84080e7          	jalr	-380(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	c3850513          	addi	a0,a0,-968 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	14c080e7          	jalr	332(ra) # 8000570c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800065c8:	00000613          	li	a2,0
    800065cc:	00000597          	auipc	a1,0x0
    800065d0:	afc58593          	addi	a1,a1,-1284 # 800060c8 <_ZL11workerBodyDPv>
    800065d4:	fe840513          	addi	a0,s0,-24
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	e5c080e7          	jalr	-420(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	c2850513          	addi	a0,a0,-984 # 80009208 <CONSOLE_STATUS+0x1f8>
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	124080e7          	jalr	292(ra) # 8000570c <_Z11printStringPKc>
    800065f0:	00c0006f          	j	800065fc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	f68080e7          	jalr	-152(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800065fc:	00005797          	auipc	a5,0x5
    80006600:	4697c783          	lbu	a5,1129(a5) # 8000ba65 <_ZL9finishedA>
    80006604:	fe0788e3          	beqz	a5,800065f4 <_Z16System_Mode_testv+0xb4>
    80006608:	00005797          	auipc	a5,0x5
    8000660c:	45c7c783          	lbu	a5,1116(a5) # 8000ba64 <_ZL9finishedB>
    80006610:	fe0782e3          	beqz	a5,800065f4 <_Z16System_Mode_testv+0xb4>
    80006614:	00005797          	auipc	a5,0x5
    80006618:	44f7c783          	lbu	a5,1103(a5) # 8000ba63 <_ZL9finishedC>
    8000661c:	fc078ce3          	beqz	a5,800065f4 <_Z16System_Mode_testv+0xb4>
    80006620:	00005797          	auipc	a5,0x5
    80006624:	4427c783          	lbu	a5,1090(a5) # 8000ba62 <_ZL9finishedD>
    80006628:	fc0786e3          	beqz	a5,800065f4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000662c:	02813083          	ld	ra,40(sp)
    80006630:	02013403          	ld	s0,32(sp)
    80006634:	03010113          	addi	sp,sp,48
    80006638:	00008067          	ret

000000008000663c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000663c:	fe010113          	addi	sp,sp,-32
    80006640:	00113c23          	sd	ra,24(sp)
    80006644:	00813823          	sd	s0,16(sp)
    80006648:	00913423          	sd	s1,8(sp)
    8000664c:	01213023          	sd	s2,0(sp)
    80006650:	02010413          	addi	s0,sp,32
    80006654:	00050493          	mv	s1,a0
    80006658:	00058913          	mv	s2,a1
    8000665c:	0015879b          	addiw	a5,a1,1
    80006660:	0007851b          	sext.w	a0,a5
    80006664:	00f4a023          	sw	a5,0(s1)
    80006668:	0004a823          	sw	zero,16(s1)
    8000666c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006670:	00251513          	slli	a0,a0,0x2
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	d40080e7          	jalr	-704(ra) # 800013b4 <_Z9mem_allocm>
    8000667c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006680:	00000593          	li	a1,0
    80006684:	02048513          	addi	a0,s1,32
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	f30080e7          	jalr	-208(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006690:	00090593          	mv	a1,s2
    80006694:	01848513          	addi	a0,s1,24
    80006698:	ffffb097          	auipc	ra,0xffffb
    8000669c:	f20080e7          	jalr	-224(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800066a0:	00100593          	li	a1,1
    800066a4:	02848513          	addi	a0,s1,40
    800066a8:	ffffb097          	auipc	ra,0xffffb
    800066ac:	f10080e7          	jalr	-240(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800066b0:	00100593          	li	a1,1
    800066b4:	03048513          	addi	a0,s1,48
    800066b8:	ffffb097          	auipc	ra,0xffffb
    800066bc:	f00080e7          	jalr	-256(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    800066c0:	01813083          	ld	ra,24(sp)
    800066c4:	01013403          	ld	s0,16(sp)
    800066c8:	00813483          	ld	s1,8(sp)
    800066cc:	00013903          	ld	s2,0(sp)
    800066d0:	02010113          	addi	sp,sp,32
    800066d4:	00008067          	ret

00000000800066d8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800066d8:	fe010113          	addi	sp,sp,-32
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	00813823          	sd	s0,16(sp)
    800066e4:	00913423          	sd	s1,8(sp)
    800066e8:	01213023          	sd	s2,0(sp)
    800066ec:	02010413          	addi	s0,sp,32
    800066f0:	00050493          	mv	s1,a0
    800066f4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066f8:	01853503          	ld	a0,24(a0)
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	f4c080e7          	jalr	-180(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006704:	0304b503          	ld	a0,48(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	f40080e7          	jalr	-192(ra) # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006710:	0084b783          	ld	a5,8(s1)
    80006714:	0144a703          	lw	a4,20(s1)
    80006718:	00271713          	slli	a4,a4,0x2
    8000671c:	00e787b3          	add	a5,a5,a4
    80006720:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006724:	0144a783          	lw	a5,20(s1)
    80006728:	0017879b          	addiw	a5,a5,1
    8000672c:	0004a703          	lw	a4,0(s1)
    80006730:	02e7e7bb          	remw	a5,a5,a4
    80006734:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006738:	0304b503          	ld	a0,48(s1)
    8000673c:	ffffb097          	auipc	ra,0xffffb
    80006740:	f58080e7          	jalr	-168(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006744:	0204b503          	ld	a0,32(s1)
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	f4c080e7          	jalr	-180(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006750:	01813083          	ld	ra,24(sp)
    80006754:	01013403          	ld	s0,16(sp)
    80006758:	00813483          	ld	s1,8(sp)
    8000675c:	00013903          	ld	s2,0(sp)
    80006760:	02010113          	addi	sp,sp,32
    80006764:	00008067          	ret

0000000080006768 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00113c23          	sd	ra,24(sp)
    80006770:	00813823          	sd	s0,16(sp)
    80006774:	00913423          	sd	s1,8(sp)
    80006778:	01213023          	sd	s2,0(sp)
    8000677c:	02010413          	addi	s0,sp,32
    80006780:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006784:	02053503          	ld	a0,32(a0)
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	ec0080e7          	jalr	-320(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006790:	0284b503          	ld	a0,40(s1)
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	eb4080e7          	jalr	-332(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000679c:	0084b703          	ld	a4,8(s1)
    800067a0:	0104a783          	lw	a5,16(s1)
    800067a4:	00279693          	slli	a3,a5,0x2
    800067a8:	00d70733          	add	a4,a4,a3
    800067ac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800067b0:	0017879b          	addiw	a5,a5,1
    800067b4:	0004a703          	lw	a4,0(s1)
    800067b8:	02e7e7bb          	remw	a5,a5,a4
    800067bc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800067c0:	0284b503          	ld	a0,40(s1)
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	ed0080e7          	jalr	-304(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800067cc:	0184b503          	ld	a0,24(s1)
    800067d0:	ffffb097          	auipc	ra,0xffffb
    800067d4:	ec4080e7          	jalr	-316(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    800067d8:	00090513          	mv	a0,s2
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	00013903          	ld	s2,0(sp)
    800067ec:	02010113          	addi	sp,sp,32
    800067f0:	00008067          	ret

00000000800067f4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800067f4:	fe010113          	addi	sp,sp,-32
    800067f8:	00113c23          	sd	ra,24(sp)
    800067fc:	00813823          	sd	s0,16(sp)
    80006800:	00913423          	sd	s1,8(sp)
    80006804:	01213023          	sd	s2,0(sp)
    80006808:	02010413          	addi	s0,sp,32
    8000680c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006810:	02853503          	ld	a0,40(a0)
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	e34080e7          	jalr	-460(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000681c:	0304b503          	ld	a0,48(s1)
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	e28080e7          	jalr	-472(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006828:	0144a783          	lw	a5,20(s1)
    8000682c:	0104a903          	lw	s2,16(s1)
    80006830:	0327ce63          	blt	a5,s2,8000686c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006834:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006838:	0304b503          	ld	a0,48(s1)
    8000683c:	ffffb097          	auipc	ra,0xffffb
    80006840:	e58080e7          	jalr	-424(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006844:	0284b503          	ld	a0,40(s1)
    80006848:	ffffb097          	auipc	ra,0xffffb
    8000684c:	e4c080e7          	jalr	-436(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006850:	00090513          	mv	a0,s2
    80006854:	01813083          	ld	ra,24(sp)
    80006858:	01013403          	ld	s0,16(sp)
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	00013903          	ld	s2,0(sp)
    80006864:	02010113          	addi	sp,sp,32
    80006868:	00008067          	ret
        ret = cap - head + tail;
    8000686c:	0004a703          	lw	a4,0(s1)
    80006870:	4127093b          	subw	s2,a4,s2
    80006874:	00f9093b          	addw	s2,s2,a5
    80006878:	fc1ff06f          	j	80006838 <_ZN6Buffer6getCntEv+0x44>

000000008000687c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000687c:	fe010113          	addi	sp,sp,-32
    80006880:	00113c23          	sd	ra,24(sp)
    80006884:	00813823          	sd	s0,16(sp)
    80006888:	00913423          	sd	s1,8(sp)
    8000688c:	02010413          	addi	s0,sp,32
    80006890:	00050493          	mv	s1,a0
    putc('\n');
    80006894:	00a00513          	li	a0,10
    80006898:	ffffb097          	auipc	ra,0xffffb
    8000689c:	e84080e7          	jalr	-380(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    800068a0:	00003517          	auipc	a0,0x3
    800068a4:	98050513          	addi	a0,a0,-1664 # 80009220 <CONSOLE_STATUS+0x210>
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	e64080e7          	jalr	-412(ra) # 8000570c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800068b0:	00048513          	mv	a0,s1
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	f40080e7          	jalr	-192(ra) # 800067f4 <_ZN6Buffer6getCntEv>
    800068bc:	02a05c63          	blez	a0,800068f4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800068c0:	0084b783          	ld	a5,8(s1)
    800068c4:	0104a703          	lw	a4,16(s1)
    800068c8:	00271713          	slli	a4,a4,0x2
    800068cc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800068d0:	0007c503          	lbu	a0,0(a5)
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	e48080e7          	jalr	-440(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    800068dc:	0104a783          	lw	a5,16(s1)
    800068e0:	0017879b          	addiw	a5,a5,1
    800068e4:	0004a703          	lw	a4,0(s1)
    800068e8:	02e7e7bb          	remw	a5,a5,a4
    800068ec:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800068f0:	fc1ff06f          	j	800068b0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800068f4:	02100513          	li	a0,33
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	e24080e7          	jalr	-476(ra) # 8000171c <_Z4putcc>
    putc('\n');
    80006900:	00a00513          	li	a0,10
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	e18080e7          	jalr	-488(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    8000690c:	0084b503          	ld	a0,8(s1)
    80006910:	ffffb097          	auipc	ra,0xffffb
    80006914:	ae4080e7          	jalr	-1308(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006918:	0204b503          	ld	a0,32(s1)
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	ce0080e7          	jalr	-800(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006924:	0184b503          	ld	a0,24(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	cd4080e7          	jalr	-812(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006930:	0304b503          	ld	a0,48(s1)
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	cc8080e7          	jalr	-824(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000693c:	0284b503          	ld	a0,40(s1)
    80006940:	ffffb097          	auipc	ra,0xffffb
    80006944:	cbc080e7          	jalr	-836(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80006948:	01813083          	ld	ra,24(sp)
    8000694c:	01013403          	ld	s0,16(sp)
    80006950:	00813483          	ld	s1,8(sp)
    80006954:	02010113          	addi	sp,sp,32
    80006958:	00008067          	ret

000000008000695c <start>:
    8000695c:	ff010113          	addi	sp,sp,-16
    80006960:	00813423          	sd	s0,8(sp)
    80006964:	01010413          	addi	s0,sp,16
    80006968:	300027f3          	csrr	a5,mstatus
    8000696c:	ffffe737          	lui	a4,0xffffe
    80006970:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b2f>
    80006974:	00e7f7b3          	and	a5,a5,a4
    80006978:	00001737          	lui	a4,0x1
    8000697c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006980:	00e7e7b3          	or	a5,a5,a4
    80006984:	30079073          	csrw	mstatus,a5
    80006988:	00000797          	auipc	a5,0x0
    8000698c:	16078793          	addi	a5,a5,352 # 80006ae8 <system_main>
    80006990:	34179073          	csrw	mepc,a5
    80006994:	00000793          	li	a5,0
    80006998:	18079073          	csrw	satp,a5
    8000699c:	000107b7          	lui	a5,0x10
    800069a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800069a4:	30279073          	csrw	medeleg,a5
    800069a8:	30379073          	csrw	mideleg,a5
    800069ac:	104027f3          	csrr	a5,sie
    800069b0:	2227e793          	ori	a5,a5,546
    800069b4:	10479073          	csrw	sie,a5
    800069b8:	fff00793          	li	a5,-1
    800069bc:	00a7d793          	srli	a5,a5,0xa
    800069c0:	3b079073          	csrw	pmpaddr0,a5
    800069c4:	00f00793          	li	a5,15
    800069c8:	3a079073          	csrw	pmpcfg0,a5
    800069cc:	f14027f3          	csrr	a5,mhartid
    800069d0:	0200c737          	lui	a4,0x200c
    800069d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800069d8:	0007869b          	sext.w	a3,a5
    800069dc:	00269713          	slli	a4,a3,0x2
    800069e0:	000f4637          	lui	a2,0xf4
    800069e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069e8:	00d70733          	add	a4,a4,a3
    800069ec:	0037979b          	slliw	a5,a5,0x3
    800069f0:	020046b7          	lui	a3,0x2004
    800069f4:	00d787b3          	add	a5,a5,a3
    800069f8:	00c585b3          	add	a1,a1,a2
    800069fc:	00371693          	slli	a3,a4,0x3
    80006a00:	00005717          	auipc	a4,0x5
    80006a04:	07070713          	addi	a4,a4,112 # 8000ba70 <timer_scratch>
    80006a08:	00b7b023          	sd	a1,0(a5)
    80006a0c:	00d70733          	add	a4,a4,a3
    80006a10:	00f73c23          	sd	a5,24(a4)
    80006a14:	02c73023          	sd	a2,32(a4)
    80006a18:	34071073          	csrw	mscratch,a4
    80006a1c:	00000797          	auipc	a5,0x0
    80006a20:	6e478793          	addi	a5,a5,1764 # 80007100 <timervec>
    80006a24:	30579073          	csrw	mtvec,a5
    80006a28:	300027f3          	csrr	a5,mstatus
    80006a2c:	0087e793          	ori	a5,a5,8
    80006a30:	30079073          	csrw	mstatus,a5
    80006a34:	304027f3          	csrr	a5,mie
    80006a38:	0807e793          	ori	a5,a5,128
    80006a3c:	30479073          	csrw	mie,a5
    80006a40:	f14027f3          	csrr	a5,mhartid
    80006a44:	0007879b          	sext.w	a5,a5
    80006a48:	00078213          	mv	tp,a5
    80006a4c:	30200073          	mret
    80006a50:	00813403          	ld	s0,8(sp)
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00008067          	ret

0000000080006a5c <timerinit>:
    80006a5c:	ff010113          	addi	sp,sp,-16
    80006a60:	00813423          	sd	s0,8(sp)
    80006a64:	01010413          	addi	s0,sp,16
    80006a68:	f14027f3          	csrr	a5,mhartid
    80006a6c:	0200c737          	lui	a4,0x200c
    80006a70:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a74:	0007869b          	sext.w	a3,a5
    80006a78:	00269713          	slli	a4,a3,0x2
    80006a7c:	000f4637          	lui	a2,0xf4
    80006a80:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a84:	00d70733          	add	a4,a4,a3
    80006a88:	0037979b          	slliw	a5,a5,0x3
    80006a8c:	020046b7          	lui	a3,0x2004
    80006a90:	00d787b3          	add	a5,a5,a3
    80006a94:	00c585b3          	add	a1,a1,a2
    80006a98:	00371693          	slli	a3,a4,0x3
    80006a9c:	00005717          	auipc	a4,0x5
    80006aa0:	fd470713          	addi	a4,a4,-44 # 8000ba70 <timer_scratch>
    80006aa4:	00b7b023          	sd	a1,0(a5)
    80006aa8:	00d70733          	add	a4,a4,a3
    80006aac:	00f73c23          	sd	a5,24(a4)
    80006ab0:	02c73023          	sd	a2,32(a4)
    80006ab4:	34071073          	csrw	mscratch,a4
    80006ab8:	00000797          	auipc	a5,0x0
    80006abc:	64878793          	addi	a5,a5,1608 # 80007100 <timervec>
    80006ac0:	30579073          	csrw	mtvec,a5
    80006ac4:	300027f3          	csrr	a5,mstatus
    80006ac8:	0087e793          	ori	a5,a5,8
    80006acc:	30079073          	csrw	mstatus,a5
    80006ad0:	304027f3          	csrr	a5,mie
    80006ad4:	0807e793          	ori	a5,a5,128
    80006ad8:	30479073          	csrw	mie,a5
    80006adc:	00813403          	ld	s0,8(sp)
    80006ae0:	01010113          	addi	sp,sp,16
    80006ae4:	00008067          	ret

0000000080006ae8 <system_main>:
    80006ae8:	fe010113          	addi	sp,sp,-32
    80006aec:	00813823          	sd	s0,16(sp)
    80006af0:	00913423          	sd	s1,8(sp)
    80006af4:	00113c23          	sd	ra,24(sp)
    80006af8:	02010413          	addi	s0,sp,32
    80006afc:	00000097          	auipc	ra,0x0
    80006b00:	0c4080e7          	jalr	196(ra) # 80006bc0 <cpuid>
    80006b04:	00005497          	auipc	s1,0x5
    80006b08:	e9c48493          	addi	s1,s1,-356 # 8000b9a0 <started>
    80006b0c:	02050263          	beqz	a0,80006b30 <system_main+0x48>
    80006b10:	0004a783          	lw	a5,0(s1)
    80006b14:	0007879b          	sext.w	a5,a5
    80006b18:	fe078ce3          	beqz	a5,80006b10 <system_main+0x28>
    80006b1c:	0ff0000f          	fence
    80006b20:	00003517          	auipc	a0,0x3
    80006b24:	9d050513          	addi	a0,a0,-1584 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006b28:	00001097          	auipc	ra,0x1
    80006b2c:	a74080e7          	jalr	-1420(ra) # 8000759c <panic>
    80006b30:	00001097          	auipc	ra,0x1
    80006b34:	9c8080e7          	jalr	-1592(ra) # 800074f8 <consoleinit>
    80006b38:	00001097          	auipc	ra,0x1
    80006b3c:	154080e7          	jalr	340(ra) # 80007c8c <printfinit>
    80006b40:	00003517          	auipc	a0,0x3
    80006b44:	83850513          	addi	a0,a0,-1992 # 80009378 <CONSOLE_STATUS+0x368>
    80006b48:	00001097          	auipc	ra,0x1
    80006b4c:	ab0080e7          	jalr	-1360(ra) # 800075f8 <__printf>
    80006b50:	00003517          	auipc	a0,0x3
    80006b54:	97050513          	addi	a0,a0,-1680 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006b58:	00001097          	auipc	ra,0x1
    80006b5c:	aa0080e7          	jalr	-1376(ra) # 800075f8 <__printf>
    80006b60:	00003517          	auipc	a0,0x3
    80006b64:	81850513          	addi	a0,a0,-2024 # 80009378 <CONSOLE_STATUS+0x368>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	a90080e7          	jalr	-1392(ra) # 800075f8 <__printf>
    80006b70:	00001097          	auipc	ra,0x1
    80006b74:	4a8080e7          	jalr	1192(ra) # 80008018 <kinit>
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	148080e7          	jalr	328(ra) # 80006cc0 <trapinit>
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	16c080e7          	jalr	364(ra) # 80006cec <trapinithart>
    80006b88:	00000097          	auipc	ra,0x0
    80006b8c:	5b8080e7          	jalr	1464(ra) # 80007140 <plicinit>
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	5d8080e7          	jalr	1496(ra) # 80007168 <plicinithart>
    80006b98:	00000097          	auipc	ra,0x0
    80006b9c:	078080e7          	jalr	120(ra) # 80006c10 <userinit>
    80006ba0:	0ff0000f          	fence
    80006ba4:	00100793          	li	a5,1
    80006ba8:	00003517          	auipc	a0,0x3
    80006bac:	93050513          	addi	a0,a0,-1744 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006bb0:	00f4a023          	sw	a5,0(s1)
    80006bb4:	00001097          	auipc	ra,0x1
    80006bb8:	a44080e7          	jalr	-1468(ra) # 800075f8 <__printf>
    80006bbc:	0000006f          	j	80006bbc <system_main+0xd4>

0000000080006bc0 <cpuid>:
    80006bc0:	ff010113          	addi	sp,sp,-16
    80006bc4:	00813423          	sd	s0,8(sp)
    80006bc8:	01010413          	addi	s0,sp,16
    80006bcc:	00020513          	mv	a0,tp
    80006bd0:	00813403          	ld	s0,8(sp)
    80006bd4:	0005051b          	sext.w	a0,a0
    80006bd8:	01010113          	addi	sp,sp,16
    80006bdc:	00008067          	ret

0000000080006be0 <mycpu>:
    80006be0:	ff010113          	addi	sp,sp,-16
    80006be4:	00813423          	sd	s0,8(sp)
    80006be8:	01010413          	addi	s0,sp,16
    80006bec:	00020793          	mv	a5,tp
    80006bf0:	00813403          	ld	s0,8(sp)
    80006bf4:	0007879b          	sext.w	a5,a5
    80006bf8:	00779793          	slli	a5,a5,0x7
    80006bfc:	00006517          	auipc	a0,0x6
    80006c00:	ea450513          	addi	a0,a0,-348 # 8000caa0 <cpus>
    80006c04:	00f50533          	add	a0,a0,a5
    80006c08:	01010113          	addi	sp,sp,16
    80006c0c:	00008067          	ret

0000000080006c10 <userinit>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813423          	sd	s0,8(sp)
    80006c18:	01010413          	addi	s0,sp,16
    80006c1c:	00813403          	ld	s0,8(sp)
    80006c20:	01010113          	addi	sp,sp,16
    80006c24:	ffffb317          	auipc	t1,0xffffb
    80006c28:	c4830067          	jr	-952(t1) # 8000186c <main>

0000000080006c2c <either_copyout>:
    80006c2c:	ff010113          	addi	sp,sp,-16
    80006c30:	00813023          	sd	s0,0(sp)
    80006c34:	00113423          	sd	ra,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	02051663          	bnez	a0,80006c68 <either_copyout+0x3c>
    80006c40:	00058513          	mv	a0,a1
    80006c44:	00060593          	mv	a1,a2
    80006c48:	0006861b          	sext.w	a2,a3
    80006c4c:	00002097          	auipc	ra,0x2
    80006c50:	c58080e7          	jalr	-936(ra) # 800088a4 <__memmove>
    80006c54:	00813083          	ld	ra,8(sp)
    80006c58:	00013403          	ld	s0,0(sp)
    80006c5c:	00000513          	li	a0,0
    80006c60:	01010113          	addi	sp,sp,16
    80006c64:	00008067          	ret
    80006c68:	00003517          	auipc	a0,0x3
    80006c6c:	8b050513          	addi	a0,a0,-1872 # 80009518 <CONSOLE_STATUS+0x508>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	92c080e7          	jalr	-1748(ra) # 8000759c <panic>

0000000080006c78 <either_copyin>:
    80006c78:	ff010113          	addi	sp,sp,-16
    80006c7c:	00813023          	sd	s0,0(sp)
    80006c80:	00113423          	sd	ra,8(sp)
    80006c84:	01010413          	addi	s0,sp,16
    80006c88:	02059463          	bnez	a1,80006cb0 <either_copyin+0x38>
    80006c8c:	00060593          	mv	a1,a2
    80006c90:	0006861b          	sext.w	a2,a3
    80006c94:	00002097          	auipc	ra,0x2
    80006c98:	c10080e7          	jalr	-1008(ra) # 800088a4 <__memmove>
    80006c9c:	00813083          	ld	ra,8(sp)
    80006ca0:	00013403          	ld	s0,0(sp)
    80006ca4:	00000513          	li	a0,0
    80006ca8:	01010113          	addi	sp,sp,16
    80006cac:	00008067          	ret
    80006cb0:	00003517          	auipc	a0,0x3
    80006cb4:	89050513          	addi	a0,a0,-1904 # 80009540 <CONSOLE_STATUS+0x530>
    80006cb8:	00001097          	auipc	ra,0x1
    80006cbc:	8e4080e7          	jalr	-1820(ra) # 8000759c <panic>

0000000080006cc0 <trapinit>:
    80006cc0:	ff010113          	addi	sp,sp,-16
    80006cc4:	00813423          	sd	s0,8(sp)
    80006cc8:	01010413          	addi	s0,sp,16
    80006ccc:	00813403          	ld	s0,8(sp)
    80006cd0:	00003597          	auipc	a1,0x3
    80006cd4:	89858593          	addi	a1,a1,-1896 # 80009568 <CONSOLE_STATUS+0x558>
    80006cd8:	00006517          	auipc	a0,0x6
    80006cdc:	e4850513          	addi	a0,a0,-440 # 8000cb20 <tickslock>
    80006ce0:	01010113          	addi	sp,sp,16
    80006ce4:	00001317          	auipc	t1,0x1
    80006ce8:	5c430067          	jr	1476(t1) # 800082a8 <initlock>

0000000080006cec <trapinithart>:
    80006cec:	ff010113          	addi	sp,sp,-16
    80006cf0:	00813423          	sd	s0,8(sp)
    80006cf4:	01010413          	addi	s0,sp,16
    80006cf8:	00000797          	auipc	a5,0x0
    80006cfc:	2f878793          	addi	a5,a5,760 # 80006ff0 <kernelvec>
    80006d00:	10579073          	csrw	stvec,a5
    80006d04:	00813403          	ld	s0,8(sp)
    80006d08:	01010113          	addi	sp,sp,16
    80006d0c:	00008067          	ret

0000000080006d10 <usertrap>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813423          	sd	s0,8(sp)
    80006d18:	01010413          	addi	s0,sp,16
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <usertrapret>:
    80006d28:	ff010113          	addi	sp,sp,-16
    80006d2c:	00813423          	sd	s0,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00813403          	ld	s0,8(sp)
    80006d38:	01010113          	addi	sp,sp,16
    80006d3c:	00008067          	ret

0000000080006d40 <kerneltrap>:
    80006d40:	fe010113          	addi	sp,sp,-32
    80006d44:	00813823          	sd	s0,16(sp)
    80006d48:	00113c23          	sd	ra,24(sp)
    80006d4c:	00913423          	sd	s1,8(sp)
    80006d50:	02010413          	addi	s0,sp,32
    80006d54:	142025f3          	csrr	a1,scause
    80006d58:	100027f3          	csrr	a5,sstatus
    80006d5c:	0027f793          	andi	a5,a5,2
    80006d60:	10079c63          	bnez	a5,80006e78 <kerneltrap+0x138>
    80006d64:	142027f3          	csrr	a5,scause
    80006d68:	0207ce63          	bltz	a5,80006da4 <kerneltrap+0x64>
    80006d6c:	00003517          	auipc	a0,0x3
    80006d70:	84450513          	addi	a0,a0,-1980 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	884080e7          	jalr	-1916(ra) # 800075f8 <__printf>
    80006d7c:	141025f3          	csrr	a1,sepc
    80006d80:	14302673          	csrr	a2,stval
    80006d84:	00003517          	auipc	a0,0x3
    80006d88:	83c50513          	addi	a0,a0,-1988 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	86c080e7          	jalr	-1940(ra) # 800075f8 <__printf>
    80006d94:	00003517          	auipc	a0,0x3
    80006d98:	84450513          	addi	a0,a0,-1980 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	800080e7          	jalr	-2048(ra) # 8000759c <panic>
    80006da4:	0ff7f713          	andi	a4,a5,255
    80006da8:	00900693          	li	a3,9
    80006dac:	04d70063          	beq	a4,a3,80006dec <kerneltrap+0xac>
    80006db0:	fff00713          	li	a4,-1
    80006db4:	03f71713          	slli	a4,a4,0x3f
    80006db8:	00170713          	addi	a4,a4,1
    80006dbc:	fae798e3          	bne	a5,a4,80006d6c <kerneltrap+0x2c>
    80006dc0:	00000097          	auipc	ra,0x0
    80006dc4:	e00080e7          	jalr	-512(ra) # 80006bc0 <cpuid>
    80006dc8:	06050663          	beqz	a0,80006e34 <kerneltrap+0xf4>
    80006dcc:	144027f3          	csrr	a5,sip
    80006dd0:	ffd7f793          	andi	a5,a5,-3
    80006dd4:	14479073          	csrw	sip,a5
    80006dd8:	01813083          	ld	ra,24(sp)
    80006ddc:	01013403          	ld	s0,16(sp)
    80006de0:	00813483          	ld	s1,8(sp)
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	00008067          	ret
    80006dec:	00000097          	auipc	ra,0x0
    80006df0:	3c8080e7          	jalr	968(ra) # 800071b4 <plic_claim>
    80006df4:	00a00793          	li	a5,10
    80006df8:	00050493          	mv	s1,a0
    80006dfc:	06f50863          	beq	a0,a5,80006e6c <kerneltrap+0x12c>
    80006e00:	fc050ce3          	beqz	a0,80006dd8 <kerneltrap+0x98>
    80006e04:	00050593          	mv	a1,a0
    80006e08:	00002517          	auipc	a0,0x2
    80006e0c:	78850513          	addi	a0,a0,1928 # 80009590 <CONSOLE_STATUS+0x580>
    80006e10:	00000097          	auipc	ra,0x0
    80006e14:	7e8080e7          	jalr	2024(ra) # 800075f8 <__printf>
    80006e18:	01013403          	ld	s0,16(sp)
    80006e1c:	01813083          	ld	ra,24(sp)
    80006e20:	00048513          	mv	a0,s1
    80006e24:	00813483          	ld	s1,8(sp)
    80006e28:	02010113          	addi	sp,sp,32
    80006e2c:	00000317          	auipc	t1,0x0
    80006e30:	3c030067          	jr	960(t1) # 800071ec <plic_complete>
    80006e34:	00006517          	auipc	a0,0x6
    80006e38:	cec50513          	addi	a0,a0,-788 # 8000cb20 <tickslock>
    80006e3c:	00001097          	auipc	ra,0x1
    80006e40:	490080e7          	jalr	1168(ra) # 800082cc <acquire>
    80006e44:	00005717          	auipc	a4,0x5
    80006e48:	b6070713          	addi	a4,a4,-1184 # 8000b9a4 <ticks>
    80006e4c:	00072783          	lw	a5,0(a4)
    80006e50:	00006517          	auipc	a0,0x6
    80006e54:	cd050513          	addi	a0,a0,-816 # 8000cb20 <tickslock>
    80006e58:	0017879b          	addiw	a5,a5,1
    80006e5c:	00f72023          	sw	a5,0(a4)
    80006e60:	00001097          	auipc	ra,0x1
    80006e64:	538080e7          	jalr	1336(ra) # 80008398 <release>
    80006e68:	f65ff06f          	j	80006dcc <kerneltrap+0x8c>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	094080e7          	jalr	148(ra) # 80007f00 <uartintr>
    80006e74:	fa5ff06f          	j	80006e18 <kerneltrap+0xd8>
    80006e78:	00002517          	auipc	a0,0x2
    80006e7c:	6f850513          	addi	a0,a0,1784 # 80009570 <CONSOLE_STATUS+0x560>
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	71c080e7          	jalr	1820(ra) # 8000759c <panic>

0000000080006e88 <clockintr>:
    80006e88:	fe010113          	addi	sp,sp,-32
    80006e8c:	00813823          	sd	s0,16(sp)
    80006e90:	00913423          	sd	s1,8(sp)
    80006e94:	00113c23          	sd	ra,24(sp)
    80006e98:	02010413          	addi	s0,sp,32
    80006e9c:	00006497          	auipc	s1,0x6
    80006ea0:	c8448493          	addi	s1,s1,-892 # 8000cb20 <tickslock>
    80006ea4:	00048513          	mv	a0,s1
    80006ea8:	00001097          	auipc	ra,0x1
    80006eac:	424080e7          	jalr	1060(ra) # 800082cc <acquire>
    80006eb0:	00005717          	auipc	a4,0x5
    80006eb4:	af470713          	addi	a4,a4,-1292 # 8000b9a4 <ticks>
    80006eb8:	00072783          	lw	a5,0(a4)
    80006ebc:	01013403          	ld	s0,16(sp)
    80006ec0:	01813083          	ld	ra,24(sp)
    80006ec4:	00048513          	mv	a0,s1
    80006ec8:	0017879b          	addiw	a5,a5,1
    80006ecc:	00813483          	ld	s1,8(sp)
    80006ed0:	00f72023          	sw	a5,0(a4)
    80006ed4:	02010113          	addi	sp,sp,32
    80006ed8:	00001317          	auipc	t1,0x1
    80006edc:	4c030067          	jr	1216(t1) # 80008398 <release>

0000000080006ee0 <devintr>:
    80006ee0:	142027f3          	csrr	a5,scause
    80006ee4:	00000513          	li	a0,0
    80006ee8:	0007c463          	bltz	a5,80006ef0 <devintr+0x10>
    80006eec:	00008067          	ret
    80006ef0:	fe010113          	addi	sp,sp,-32
    80006ef4:	00813823          	sd	s0,16(sp)
    80006ef8:	00113c23          	sd	ra,24(sp)
    80006efc:	00913423          	sd	s1,8(sp)
    80006f00:	02010413          	addi	s0,sp,32
    80006f04:	0ff7f713          	andi	a4,a5,255
    80006f08:	00900693          	li	a3,9
    80006f0c:	04d70c63          	beq	a4,a3,80006f64 <devintr+0x84>
    80006f10:	fff00713          	li	a4,-1
    80006f14:	03f71713          	slli	a4,a4,0x3f
    80006f18:	00170713          	addi	a4,a4,1
    80006f1c:	00e78c63          	beq	a5,a4,80006f34 <devintr+0x54>
    80006f20:	01813083          	ld	ra,24(sp)
    80006f24:	01013403          	ld	s0,16(sp)
    80006f28:	00813483          	ld	s1,8(sp)
    80006f2c:	02010113          	addi	sp,sp,32
    80006f30:	00008067          	ret
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	c8c080e7          	jalr	-884(ra) # 80006bc0 <cpuid>
    80006f3c:	06050663          	beqz	a0,80006fa8 <devintr+0xc8>
    80006f40:	144027f3          	csrr	a5,sip
    80006f44:	ffd7f793          	andi	a5,a5,-3
    80006f48:	14479073          	csrw	sip,a5
    80006f4c:	01813083          	ld	ra,24(sp)
    80006f50:	01013403          	ld	s0,16(sp)
    80006f54:	00813483          	ld	s1,8(sp)
    80006f58:	00200513          	li	a0,2
    80006f5c:	02010113          	addi	sp,sp,32
    80006f60:	00008067          	ret
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	250080e7          	jalr	592(ra) # 800071b4 <plic_claim>
    80006f6c:	00a00793          	li	a5,10
    80006f70:	00050493          	mv	s1,a0
    80006f74:	06f50663          	beq	a0,a5,80006fe0 <devintr+0x100>
    80006f78:	00100513          	li	a0,1
    80006f7c:	fa0482e3          	beqz	s1,80006f20 <devintr+0x40>
    80006f80:	00048593          	mv	a1,s1
    80006f84:	00002517          	auipc	a0,0x2
    80006f88:	60c50513          	addi	a0,a0,1548 # 80009590 <CONSOLE_STATUS+0x580>
    80006f8c:	00000097          	auipc	ra,0x0
    80006f90:	66c080e7          	jalr	1644(ra) # 800075f8 <__printf>
    80006f94:	00048513          	mv	a0,s1
    80006f98:	00000097          	auipc	ra,0x0
    80006f9c:	254080e7          	jalr	596(ra) # 800071ec <plic_complete>
    80006fa0:	00100513          	li	a0,1
    80006fa4:	f7dff06f          	j	80006f20 <devintr+0x40>
    80006fa8:	00006517          	auipc	a0,0x6
    80006fac:	b7850513          	addi	a0,a0,-1160 # 8000cb20 <tickslock>
    80006fb0:	00001097          	auipc	ra,0x1
    80006fb4:	31c080e7          	jalr	796(ra) # 800082cc <acquire>
    80006fb8:	00005717          	auipc	a4,0x5
    80006fbc:	9ec70713          	addi	a4,a4,-1556 # 8000b9a4 <ticks>
    80006fc0:	00072783          	lw	a5,0(a4)
    80006fc4:	00006517          	auipc	a0,0x6
    80006fc8:	b5c50513          	addi	a0,a0,-1188 # 8000cb20 <tickslock>
    80006fcc:	0017879b          	addiw	a5,a5,1
    80006fd0:	00f72023          	sw	a5,0(a4)
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	3c4080e7          	jalr	964(ra) # 80008398 <release>
    80006fdc:	f65ff06f          	j	80006f40 <devintr+0x60>
    80006fe0:	00001097          	auipc	ra,0x1
    80006fe4:	f20080e7          	jalr	-224(ra) # 80007f00 <uartintr>
    80006fe8:	fadff06f          	j	80006f94 <devintr+0xb4>
    80006fec:	0000                	unimp
	...

0000000080006ff0 <kernelvec>:
    80006ff0:	f0010113          	addi	sp,sp,-256
    80006ff4:	00113023          	sd	ra,0(sp)
    80006ff8:	00213423          	sd	sp,8(sp)
    80006ffc:	00313823          	sd	gp,16(sp)
    80007000:	00413c23          	sd	tp,24(sp)
    80007004:	02513023          	sd	t0,32(sp)
    80007008:	02613423          	sd	t1,40(sp)
    8000700c:	02713823          	sd	t2,48(sp)
    80007010:	02813c23          	sd	s0,56(sp)
    80007014:	04913023          	sd	s1,64(sp)
    80007018:	04a13423          	sd	a0,72(sp)
    8000701c:	04b13823          	sd	a1,80(sp)
    80007020:	04c13c23          	sd	a2,88(sp)
    80007024:	06d13023          	sd	a3,96(sp)
    80007028:	06e13423          	sd	a4,104(sp)
    8000702c:	06f13823          	sd	a5,112(sp)
    80007030:	07013c23          	sd	a6,120(sp)
    80007034:	09113023          	sd	a7,128(sp)
    80007038:	09213423          	sd	s2,136(sp)
    8000703c:	09313823          	sd	s3,144(sp)
    80007040:	09413c23          	sd	s4,152(sp)
    80007044:	0b513023          	sd	s5,160(sp)
    80007048:	0b613423          	sd	s6,168(sp)
    8000704c:	0b713823          	sd	s7,176(sp)
    80007050:	0b813c23          	sd	s8,184(sp)
    80007054:	0d913023          	sd	s9,192(sp)
    80007058:	0da13423          	sd	s10,200(sp)
    8000705c:	0db13823          	sd	s11,208(sp)
    80007060:	0dc13c23          	sd	t3,216(sp)
    80007064:	0fd13023          	sd	t4,224(sp)
    80007068:	0fe13423          	sd	t5,232(sp)
    8000706c:	0ff13823          	sd	t6,240(sp)
    80007070:	cd1ff0ef          	jal	ra,80006d40 <kerneltrap>
    80007074:	00013083          	ld	ra,0(sp)
    80007078:	00813103          	ld	sp,8(sp)
    8000707c:	01013183          	ld	gp,16(sp)
    80007080:	02013283          	ld	t0,32(sp)
    80007084:	02813303          	ld	t1,40(sp)
    80007088:	03013383          	ld	t2,48(sp)
    8000708c:	03813403          	ld	s0,56(sp)
    80007090:	04013483          	ld	s1,64(sp)
    80007094:	04813503          	ld	a0,72(sp)
    80007098:	05013583          	ld	a1,80(sp)
    8000709c:	05813603          	ld	a2,88(sp)
    800070a0:	06013683          	ld	a3,96(sp)
    800070a4:	06813703          	ld	a4,104(sp)
    800070a8:	07013783          	ld	a5,112(sp)
    800070ac:	07813803          	ld	a6,120(sp)
    800070b0:	08013883          	ld	a7,128(sp)
    800070b4:	08813903          	ld	s2,136(sp)
    800070b8:	09013983          	ld	s3,144(sp)
    800070bc:	09813a03          	ld	s4,152(sp)
    800070c0:	0a013a83          	ld	s5,160(sp)
    800070c4:	0a813b03          	ld	s6,168(sp)
    800070c8:	0b013b83          	ld	s7,176(sp)
    800070cc:	0b813c03          	ld	s8,184(sp)
    800070d0:	0c013c83          	ld	s9,192(sp)
    800070d4:	0c813d03          	ld	s10,200(sp)
    800070d8:	0d013d83          	ld	s11,208(sp)
    800070dc:	0d813e03          	ld	t3,216(sp)
    800070e0:	0e013e83          	ld	t4,224(sp)
    800070e4:	0e813f03          	ld	t5,232(sp)
    800070e8:	0f013f83          	ld	t6,240(sp)
    800070ec:	10010113          	addi	sp,sp,256
    800070f0:	10200073          	sret
    800070f4:	00000013          	nop
    800070f8:	00000013          	nop
    800070fc:	00000013          	nop

0000000080007100 <timervec>:
    80007100:	34051573          	csrrw	a0,mscratch,a0
    80007104:	00b53023          	sd	a1,0(a0)
    80007108:	00c53423          	sd	a2,8(a0)
    8000710c:	00d53823          	sd	a3,16(a0)
    80007110:	01853583          	ld	a1,24(a0)
    80007114:	02053603          	ld	a2,32(a0)
    80007118:	0005b683          	ld	a3,0(a1)
    8000711c:	00c686b3          	add	a3,a3,a2
    80007120:	00d5b023          	sd	a3,0(a1)
    80007124:	00200593          	li	a1,2
    80007128:	14459073          	csrw	sip,a1
    8000712c:	01053683          	ld	a3,16(a0)
    80007130:	00853603          	ld	a2,8(a0)
    80007134:	00053583          	ld	a1,0(a0)
    80007138:	34051573          	csrrw	a0,mscratch,a0
    8000713c:	30200073          	mret

0000000080007140 <plicinit>:
    80007140:	ff010113          	addi	sp,sp,-16
    80007144:	00813423          	sd	s0,8(sp)
    80007148:	01010413          	addi	s0,sp,16
    8000714c:	00813403          	ld	s0,8(sp)
    80007150:	0c0007b7          	lui	a5,0xc000
    80007154:	00100713          	li	a4,1
    80007158:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000715c:	00e7a223          	sw	a4,4(a5)
    80007160:	01010113          	addi	sp,sp,16
    80007164:	00008067          	ret

0000000080007168 <plicinithart>:
    80007168:	ff010113          	addi	sp,sp,-16
    8000716c:	00813023          	sd	s0,0(sp)
    80007170:	00113423          	sd	ra,8(sp)
    80007174:	01010413          	addi	s0,sp,16
    80007178:	00000097          	auipc	ra,0x0
    8000717c:	a48080e7          	jalr	-1464(ra) # 80006bc0 <cpuid>
    80007180:	0085171b          	slliw	a4,a0,0x8
    80007184:	0c0027b7          	lui	a5,0xc002
    80007188:	00e787b3          	add	a5,a5,a4
    8000718c:	40200713          	li	a4,1026
    80007190:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007194:	00813083          	ld	ra,8(sp)
    80007198:	00013403          	ld	s0,0(sp)
    8000719c:	00d5151b          	slliw	a0,a0,0xd
    800071a0:	0c2017b7          	lui	a5,0xc201
    800071a4:	00a78533          	add	a0,a5,a0
    800071a8:	00052023          	sw	zero,0(a0)
    800071ac:	01010113          	addi	sp,sp,16
    800071b0:	00008067          	ret

00000000800071b4 <plic_claim>:
    800071b4:	ff010113          	addi	sp,sp,-16
    800071b8:	00813023          	sd	s0,0(sp)
    800071bc:	00113423          	sd	ra,8(sp)
    800071c0:	01010413          	addi	s0,sp,16
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	9fc080e7          	jalr	-1540(ra) # 80006bc0 <cpuid>
    800071cc:	00813083          	ld	ra,8(sp)
    800071d0:	00013403          	ld	s0,0(sp)
    800071d4:	00d5151b          	slliw	a0,a0,0xd
    800071d8:	0c2017b7          	lui	a5,0xc201
    800071dc:	00a78533          	add	a0,a5,a0
    800071e0:	00452503          	lw	a0,4(a0)
    800071e4:	01010113          	addi	sp,sp,16
    800071e8:	00008067          	ret

00000000800071ec <plic_complete>:
    800071ec:	fe010113          	addi	sp,sp,-32
    800071f0:	00813823          	sd	s0,16(sp)
    800071f4:	00913423          	sd	s1,8(sp)
    800071f8:	00113c23          	sd	ra,24(sp)
    800071fc:	02010413          	addi	s0,sp,32
    80007200:	00050493          	mv	s1,a0
    80007204:	00000097          	auipc	ra,0x0
    80007208:	9bc080e7          	jalr	-1604(ra) # 80006bc0 <cpuid>
    8000720c:	01813083          	ld	ra,24(sp)
    80007210:	01013403          	ld	s0,16(sp)
    80007214:	00d5179b          	slliw	a5,a0,0xd
    80007218:	0c201737          	lui	a4,0xc201
    8000721c:	00f707b3          	add	a5,a4,a5
    80007220:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007224:	00813483          	ld	s1,8(sp)
    80007228:	02010113          	addi	sp,sp,32
    8000722c:	00008067          	ret

0000000080007230 <consolewrite>:
    80007230:	fb010113          	addi	sp,sp,-80
    80007234:	04813023          	sd	s0,64(sp)
    80007238:	04113423          	sd	ra,72(sp)
    8000723c:	02913c23          	sd	s1,56(sp)
    80007240:	03213823          	sd	s2,48(sp)
    80007244:	03313423          	sd	s3,40(sp)
    80007248:	03413023          	sd	s4,32(sp)
    8000724c:	01513c23          	sd	s5,24(sp)
    80007250:	05010413          	addi	s0,sp,80
    80007254:	06c05c63          	blez	a2,800072cc <consolewrite+0x9c>
    80007258:	00060993          	mv	s3,a2
    8000725c:	00050a13          	mv	s4,a0
    80007260:	00058493          	mv	s1,a1
    80007264:	00000913          	li	s2,0
    80007268:	fff00a93          	li	s5,-1
    8000726c:	01c0006f          	j	80007288 <consolewrite+0x58>
    80007270:	fbf44503          	lbu	a0,-65(s0)
    80007274:	0019091b          	addiw	s2,s2,1
    80007278:	00148493          	addi	s1,s1,1
    8000727c:	00001097          	auipc	ra,0x1
    80007280:	a9c080e7          	jalr	-1380(ra) # 80007d18 <uartputc>
    80007284:	03298063          	beq	s3,s2,800072a4 <consolewrite+0x74>
    80007288:	00048613          	mv	a2,s1
    8000728c:	00100693          	li	a3,1
    80007290:	000a0593          	mv	a1,s4
    80007294:	fbf40513          	addi	a0,s0,-65
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	9e0080e7          	jalr	-1568(ra) # 80006c78 <either_copyin>
    800072a0:	fd5518e3          	bne	a0,s5,80007270 <consolewrite+0x40>
    800072a4:	04813083          	ld	ra,72(sp)
    800072a8:	04013403          	ld	s0,64(sp)
    800072ac:	03813483          	ld	s1,56(sp)
    800072b0:	02813983          	ld	s3,40(sp)
    800072b4:	02013a03          	ld	s4,32(sp)
    800072b8:	01813a83          	ld	s5,24(sp)
    800072bc:	00090513          	mv	a0,s2
    800072c0:	03013903          	ld	s2,48(sp)
    800072c4:	05010113          	addi	sp,sp,80
    800072c8:	00008067          	ret
    800072cc:	00000913          	li	s2,0
    800072d0:	fd5ff06f          	j	800072a4 <consolewrite+0x74>

00000000800072d4 <consoleread>:
    800072d4:	f9010113          	addi	sp,sp,-112
    800072d8:	06813023          	sd	s0,96(sp)
    800072dc:	04913c23          	sd	s1,88(sp)
    800072e0:	05213823          	sd	s2,80(sp)
    800072e4:	05313423          	sd	s3,72(sp)
    800072e8:	05413023          	sd	s4,64(sp)
    800072ec:	03513c23          	sd	s5,56(sp)
    800072f0:	03613823          	sd	s6,48(sp)
    800072f4:	03713423          	sd	s7,40(sp)
    800072f8:	03813023          	sd	s8,32(sp)
    800072fc:	06113423          	sd	ra,104(sp)
    80007300:	01913c23          	sd	s9,24(sp)
    80007304:	07010413          	addi	s0,sp,112
    80007308:	00060b93          	mv	s7,a2
    8000730c:	00050913          	mv	s2,a0
    80007310:	00058c13          	mv	s8,a1
    80007314:	00060b1b          	sext.w	s6,a2
    80007318:	00006497          	auipc	s1,0x6
    8000731c:	83048493          	addi	s1,s1,-2000 # 8000cb48 <cons>
    80007320:	00400993          	li	s3,4
    80007324:	fff00a13          	li	s4,-1
    80007328:	00a00a93          	li	s5,10
    8000732c:	05705e63          	blez	s7,80007388 <consoleread+0xb4>
    80007330:	09c4a703          	lw	a4,156(s1)
    80007334:	0984a783          	lw	a5,152(s1)
    80007338:	0007071b          	sext.w	a4,a4
    8000733c:	08e78463          	beq	a5,a4,800073c4 <consoleread+0xf0>
    80007340:	07f7f713          	andi	a4,a5,127
    80007344:	00e48733          	add	a4,s1,a4
    80007348:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000734c:	0017869b          	addiw	a3,a5,1
    80007350:	08d4ac23          	sw	a3,152(s1)
    80007354:	00070c9b          	sext.w	s9,a4
    80007358:	0b370663          	beq	a4,s3,80007404 <consoleread+0x130>
    8000735c:	00100693          	li	a3,1
    80007360:	f9f40613          	addi	a2,s0,-97
    80007364:	000c0593          	mv	a1,s8
    80007368:	00090513          	mv	a0,s2
    8000736c:	f8e40fa3          	sb	a4,-97(s0)
    80007370:	00000097          	auipc	ra,0x0
    80007374:	8bc080e7          	jalr	-1860(ra) # 80006c2c <either_copyout>
    80007378:	01450863          	beq	a0,s4,80007388 <consoleread+0xb4>
    8000737c:	001c0c13          	addi	s8,s8,1
    80007380:	fffb8b9b          	addiw	s7,s7,-1
    80007384:	fb5c94e3          	bne	s9,s5,8000732c <consoleread+0x58>
    80007388:	000b851b          	sext.w	a0,s7
    8000738c:	06813083          	ld	ra,104(sp)
    80007390:	06013403          	ld	s0,96(sp)
    80007394:	05813483          	ld	s1,88(sp)
    80007398:	05013903          	ld	s2,80(sp)
    8000739c:	04813983          	ld	s3,72(sp)
    800073a0:	04013a03          	ld	s4,64(sp)
    800073a4:	03813a83          	ld	s5,56(sp)
    800073a8:	02813b83          	ld	s7,40(sp)
    800073ac:	02013c03          	ld	s8,32(sp)
    800073b0:	01813c83          	ld	s9,24(sp)
    800073b4:	40ab053b          	subw	a0,s6,a0
    800073b8:	03013b03          	ld	s6,48(sp)
    800073bc:	07010113          	addi	sp,sp,112
    800073c0:	00008067          	ret
    800073c4:	00001097          	auipc	ra,0x1
    800073c8:	1d8080e7          	jalr	472(ra) # 8000859c <push_on>
    800073cc:	0984a703          	lw	a4,152(s1)
    800073d0:	09c4a783          	lw	a5,156(s1)
    800073d4:	0007879b          	sext.w	a5,a5
    800073d8:	fef70ce3          	beq	a4,a5,800073d0 <consoleread+0xfc>
    800073dc:	00001097          	auipc	ra,0x1
    800073e0:	234080e7          	jalr	564(ra) # 80008610 <pop_on>
    800073e4:	0984a783          	lw	a5,152(s1)
    800073e8:	07f7f713          	andi	a4,a5,127
    800073ec:	00e48733          	add	a4,s1,a4
    800073f0:	01874703          	lbu	a4,24(a4)
    800073f4:	0017869b          	addiw	a3,a5,1
    800073f8:	08d4ac23          	sw	a3,152(s1)
    800073fc:	00070c9b          	sext.w	s9,a4
    80007400:	f5371ee3          	bne	a4,s3,8000735c <consoleread+0x88>
    80007404:	000b851b          	sext.w	a0,s7
    80007408:	f96bf2e3          	bgeu	s7,s6,8000738c <consoleread+0xb8>
    8000740c:	08f4ac23          	sw	a5,152(s1)
    80007410:	f7dff06f          	j	8000738c <consoleread+0xb8>

0000000080007414 <consputc>:
    80007414:	10000793          	li	a5,256
    80007418:	00f50663          	beq	a0,a5,80007424 <consputc+0x10>
    8000741c:	00001317          	auipc	t1,0x1
    80007420:	9f430067          	jr	-1548(t1) # 80007e10 <uartputc_sync>
    80007424:	ff010113          	addi	sp,sp,-16
    80007428:	00113423          	sd	ra,8(sp)
    8000742c:	00813023          	sd	s0,0(sp)
    80007430:	01010413          	addi	s0,sp,16
    80007434:	00800513          	li	a0,8
    80007438:	00001097          	auipc	ra,0x1
    8000743c:	9d8080e7          	jalr	-1576(ra) # 80007e10 <uartputc_sync>
    80007440:	02000513          	li	a0,32
    80007444:	00001097          	auipc	ra,0x1
    80007448:	9cc080e7          	jalr	-1588(ra) # 80007e10 <uartputc_sync>
    8000744c:	00013403          	ld	s0,0(sp)
    80007450:	00813083          	ld	ra,8(sp)
    80007454:	00800513          	li	a0,8
    80007458:	01010113          	addi	sp,sp,16
    8000745c:	00001317          	auipc	t1,0x1
    80007460:	9b430067          	jr	-1612(t1) # 80007e10 <uartputc_sync>

0000000080007464 <consoleintr>:
    80007464:	fe010113          	addi	sp,sp,-32
    80007468:	00813823          	sd	s0,16(sp)
    8000746c:	00913423          	sd	s1,8(sp)
    80007470:	01213023          	sd	s2,0(sp)
    80007474:	00113c23          	sd	ra,24(sp)
    80007478:	02010413          	addi	s0,sp,32
    8000747c:	00005917          	auipc	s2,0x5
    80007480:	6cc90913          	addi	s2,s2,1740 # 8000cb48 <cons>
    80007484:	00050493          	mv	s1,a0
    80007488:	00090513          	mv	a0,s2
    8000748c:	00001097          	auipc	ra,0x1
    80007490:	e40080e7          	jalr	-448(ra) # 800082cc <acquire>
    80007494:	02048c63          	beqz	s1,800074cc <consoleintr+0x68>
    80007498:	0a092783          	lw	a5,160(s2)
    8000749c:	09892703          	lw	a4,152(s2)
    800074a0:	07f00693          	li	a3,127
    800074a4:	40e7873b          	subw	a4,a5,a4
    800074a8:	02e6e263          	bltu	a3,a4,800074cc <consoleintr+0x68>
    800074ac:	00d00713          	li	a4,13
    800074b0:	04e48063          	beq	s1,a4,800074f0 <consoleintr+0x8c>
    800074b4:	07f7f713          	andi	a4,a5,127
    800074b8:	00e90733          	add	a4,s2,a4
    800074bc:	0017879b          	addiw	a5,a5,1
    800074c0:	0af92023          	sw	a5,160(s2)
    800074c4:	00970c23          	sb	s1,24(a4)
    800074c8:	08f92e23          	sw	a5,156(s2)
    800074cc:	01013403          	ld	s0,16(sp)
    800074d0:	01813083          	ld	ra,24(sp)
    800074d4:	00813483          	ld	s1,8(sp)
    800074d8:	00013903          	ld	s2,0(sp)
    800074dc:	00005517          	auipc	a0,0x5
    800074e0:	66c50513          	addi	a0,a0,1644 # 8000cb48 <cons>
    800074e4:	02010113          	addi	sp,sp,32
    800074e8:	00001317          	auipc	t1,0x1
    800074ec:	eb030067          	jr	-336(t1) # 80008398 <release>
    800074f0:	00a00493          	li	s1,10
    800074f4:	fc1ff06f          	j	800074b4 <consoleintr+0x50>

00000000800074f8 <consoleinit>:
    800074f8:	fe010113          	addi	sp,sp,-32
    800074fc:	00113c23          	sd	ra,24(sp)
    80007500:	00813823          	sd	s0,16(sp)
    80007504:	00913423          	sd	s1,8(sp)
    80007508:	02010413          	addi	s0,sp,32
    8000750c:	00005497          	auipc	s1,0x5
    80007510:	63c48493          	addi	s1,s1,1596 # 8000cb48 <cons>
    80007514:	00048513          	mv	a0,s1
    80007518:	00002597          	auipc	a1,0x2
    8000751c:	0d058593          	addi	a1,a1,208 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007520:	00001097          	auipc	ra,0x1
    80007524:	d88080e7          	jalr	-632(ra) # 800082a8 <initlock>
    80007528:	00000097          	auipc	ra,0x0
    8000752c:	7ac080e7          	jalr	1964(ra) # 80007cd4 <uartinit>
    80007530:	01813083          	ld	ra,24(sp)
    80007534:	01013403          	ld	s0,16(sp)
    80007538:	00000797          	auipc	a5,0x0
    8000753c:	d9c78793          	addi	a5,a5,-612 # 800072d4 <consoleread>
    80007540:	0af4bc23          	sd	a5,184(s1)
    80007544:	00000797          	auipc	a5,0x0
    80007548:	cec78793          	addi	a5,a5,-788 # 80007230 <consolewrite>
    8000754c:	0cf4b023          	sd	a5,192(s1)
    80007550:	00813483          	ld	s1,8(sp)
    80007554:	02010113          	addi	sp,sp,32
    80007558:	00008067          	ret

000000008000755c <console_read>:
    8000755c:	ff010113          	addi	sp,sp,-16
    80007560:	00813423          	sd	s0,8(sp)
    80007564:	01010413          	addi	s0,sp,16
    80007568:	00813403          	ld	s0,8(sp)
    8000756c:	00005317          	auipc	t1,0x5
    80007570:	69433303          	ld	t1,1684(t1) # 8000cc00 <devsw+0x10>
    80007574:	01010113          	addi	sp,sp,16
    80007578:	00030067          	jr	t1

000000008000757c <console_write>:
    8000757c:	ff010113          	addi	sp,sp,-16
    80007580:	00813423          	sd	s0,8(sp)
    80007584:	01010413          	addi	s0,sp,16
    80007588:	00813403          	ld	s0,8(sp)
    8000758c:	00005317          	auipc	t1,0x5
    80007590:	67c33303          	ld	t1,1660(t1) # 8000cc08 <devsw+0x18>
    80007594:	01010113          	addi	sp,sp,16
    80007598:	00030067          	jr	t1

000000008000759c <panic>:
    8000759c:	fe010113          	addi	sp,sp,-32
    800075a0:	00113c23          	sd	ra,24(sp)
    800075a4:	00813823          	sd	s0,16(sp)
    800075a8:	00913423          	sd	s1,8(sp)
    800075ac:	02010413          	addi	s0,sp,32
    800075b0:	00050493          	mv	s1,a0
    800075b4:	00002517          	auipc	a0,0x2
    800075b8:	03c50513          	addi	a0,a0,60 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800075bc:	00005797          	auipc	a5,0x5
    800075c0:	6e07a623          	sw	zero,1772(a5) # 8000cca8 <pr+0x18>
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	034080e7          	jalr	52(ra) # 800075f8 <__printf>
    800075cc:	00048513          	mv	a0,s1
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	028080e7          	jalr	40(ra) # 800075f8 <__printf>
    800075d8:	00002517          	auipc	a0,0x2
    800075dc:	da050513          	addi	a0,a0,-608 # 80009378 <CONSOLE_STATUS+0x368>
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	018080e7          	jalr	24(ra) # 800075f8 <__printf>
    800075e8:	00100793          	li	a5,1
    800075ec:	00004717          	auipc	a4,0x4
    800075f0:	3af72e23          	sw	a5,956(a4) # 8000b9a8 <panicked>
    800075f4:	0000006f          	j	800075f4 <panic+0x58>

00000000800075f8 <__printf>:
    800075f8:	f3010113          	addi	sp,sp,-208
    800075fc:	08813023          	sd	s0,128(sp)
    80007600:	07313423          	sd	s3,104(sp)
    80007604:	09010413          	addi	s0,sp,144
    80007608:	05813023          	sd	s8,64(sp)
    8000760c:	08113423          	sd	ra,136(sp)
    80007610:	06913c23          	sd	s1,120(sp)
    80007614:	07213823          	sd	s2,112(sp)
    80007618:	07413023          	sd	s4,96(sp)
    8000761c:	05513c23          	sd	s5,88(sp)
    80007620:	05613823          	sd	s6,80(sp)
    80007624:	05713423          	sd	s7,72(sp)
    80007628:	03913c23          	sd	s9,56(sp)
    8000762c:	03a13823          	sd	s10,48(sp)
    80007630:	03b13423          	sd	s11,40(sp)
    80007634:	00005317          	auipc	t1,0x5
    80007638:	65c30313          	addi	t1,t1,1628 # 8000cc90 <pr>
    8000763c:	01832c03          	lw	s8,24(t1)
    80007640:	00b43423          	sd	a1,8(s0)
    80007644:	00c43823          	sd	a2,16(s0)
    80007648:	00d43c23          	sd	a3,24(s0)
    8000764c:	02e43023          	sd	a4,32(s0)
    80007650:	02f43423          	sd	a5,40(s0)
    80007654:	03043823          	sd	a6,48(s0)
    80007658:	03143c23          	sd	a7,56(s0)
    8000765c:	00050993          	mv	s3,a0
    80007660:	4a0c1663          	bnez	s8,80007b0c <__printf+0x514>
    80007664:	60098c63          	beqz	s3,80007c7c <__printf+0x684>
    80007668:	0009c503          	lbu	a0,0(s3)
    8000766c:	00840793          	addi	a5,s0,8
    80007670:	f6f43c23          	sd	a5,-136(s0)
    80007674:	00000493          	li	s1,0
    80007678:	22050063          	beqz	a0,80007898 <__printf+0x2a0>
    8000767c:	00002a37          	lui	s4,0x2
    80007680:	00018ab7          	lui	s5,0x18
    80007684:	000f4b37          	lui	s6,0xf4
    80007688:	00989bb7          	lui	s7,0x989
    8000768c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007690:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007694:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007698:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000769c:	00148c9b          	addiw	s9,s1,1
    800076a0:	02500793          	li	a5,37
    800076a4:	01998933          	add	s2,s3,s9
    800076a8:	38f51263          	bne	a0,a5,80007a2c <__printf+0x434>
    800076ac:	00094783          	lbu	a5,0(s2)
    800076b0:	00078c9b          	sext.w	s9,a5
    800076b4:	1e078263          	beqz	a5,80007898 <__printf+0x2a0>
    800076b8:	0024849b          	addiw	s1,s1,2
    800076bc:	07000713          	li	a4,112
    800076c0:	00998933          	add	s2,s3,s1
    800076c4:	38e78a63          	beq	a5,a4,80007a58 <__printf+0x460>
    800076c8:	20f76863          	bltu	a4,a5,800078d8 <__printf+0x2e0>
    800076cc:	42a78863          	beq	a5,a0,80007afc <__printf+0x504>
    800076d0:	06400713          	li	a4,100
    800076d4:	40e79663          	bne	a5,a4,80007ae0 <__printf+0x4e8>
    800076d8:	f7843783          	ld	a5,-136(s0)
    800076dc:	0007a603          	lw	a2,0(a5)
    800076e0:	00878793          	addi	a5,a5,8
    800076e4:	f6f43c23          	sd	a5,-136(s0)
    800076e8:	42064a63          	bltz	a2,80007b1c <__printf+0x524>
    800076ec:	00a00713          	li	a4,10
    800076f0:	02e677bb          	remuw	a5,a2,a4
    800076f4:	00002d97          	auipc	s11,0x2
    800076f8:	f24d8d93          	addi	s11,s11,-220 # 80009618 <digits>
    800076fc:	00900593          	li	a1,9
    80007700:	0006051b          	sext.w	a0,a2
    80007704:	00000c93          	li	s9,0
    80007708:	02079793          	slli	a5,a5,0x20
    8000770c:	0207d793          	srli	a5,a5,0x20
    80007710:	00fd87b3          	add	a5,s11,a5
    80007714:	0007c783          	lbu	a5,0(a5)
    80007718:	02e656bb          	divuw	a3,a2,a4
    8000771c:	f8f40023          	sb	a5,-128(s0)
    80007720:	14c5d863          	bge	a1,a2,80007870 <__printf+0x278>
    80007724:	06300593          	li	a1,99
    80007728:	00100c93          	li	s9,1
    8000772c:	02e6f7bb          	remuw	a5,a3,a4
    80007730:	02079793          	slli	a5,a5,0x20
    80007734:	0207d793          	srli	a5,a5,0x20
    80007738:	00fd87b3          	add	a5,s11,a5
    8000773c:	0007c783          	lbu	a5,0(a5)
    80007740:	02e6d73b          	divuw	a4,a3,a4
    80007744:	f8f400a3          	sb	a5,-127(s0)
    80007748:	12a5f463          	bgeu	a1,a0,80007870 <__printf+0x278>
    8000774c:	00a00693          	li	a3,10
    80007750:	00900593          	li	a1,9
    80007754:	02d777bb          	remuw	a5,a4,a3
    80007758:	02079793          	slli	a5,a5,0x20
    8000775c:	0207d793          	srli	a5,a5,0x20
    80007760:	00fd87b3          	add	a5,s11,a5
    80007764:	0007c503          	lbu	a0,0(a5)
    80007768:	02d757bb          	divuw	a5,a4,a3
    8000776c:	f8a40123          	sb	a0,-126(s0)
    80007770:	48e5f263          	bgeu	a1,a4,80007bf4 <__printf+0x5fc>
    80007774:	06300513          	li	a0,99
    80007778:	02d7f5bb          	remuw	a1,a5,a3
    8000777c:	02059593          	slli	a1,a1,0x20
    80007780:	0205d593          	srli	a1,a1,0x20
    80007784:	00bd85b3          	add	a1,s11,a1
    80007788:	0005c583          	lbu	a1,0(a1)
    8000778c:	02d7d7bb          	divuw	a5,a5,a3
    80007790:	f8b401a3          	sb	a1,-125(s0)
    80007794:	48e57263          	bgeu	a0,a4,80007c18 <__printf+0x620>
    80007798:	3e700513          	li	a0,999
    8000779c:	02d7f5bb          	remuw	a1,a5,a3
    800077a0:	02059593          	slli	a1,a1,0x20
    800077a4:	0205d593          	srli	a1,a1,0x20
    800077a8:	00bd85b3          	add	a1,s11,a1
    800077ac:	0005c583          	lbu	a1,0(a1)
    800077b0:	02d7d7bb          	divuw	a5,a5,a3
    800077b4:	f8b40223          	sb	a1,-124(s0)
    800077b8:	46e57663          	bgeu	a0,a4,80007c24 <__printf+0x62c>
    800077bc:	02d7f5bb          	remuw	a1,a5,a3
    800077c0:	02059593          	slli	a1,a1,0x20
    800077c4:	0205d593          	srli	a1,a1,0x20
    800077c8:	00bd85b3          	add	a1,s11,a1
    800077cc:	0005c583          	lbu	a1,0(a1)
    800077d0:	02d7d7bb          	divuw	a5,a5,a3
    800077d4:	f8b402a3          	sb	a1,-123(s0)
    800077d8:	46ea7863          	bgeu	s4,a4,80007c48 <__printf+0x650>
    800077dc:	02d7f5bb          	remuw	a1,a5,a3
    800077e0:	02059593          	slli	a1,a1,0x20
    800077e4:	0205d593          	srli	a1,a1,0x20
    800077e8:	00bd85b3          	add	a1,s11,a1
    800077ec:	0005c583          	lbu	a1,0(a1)
    800077f0:	02d7d7bb          	divuw	a5,a5,a3
    800077f4:	f8b40323          	sb	a1,-122(s0)
    800077f8:	3eeaf863          	bgeu	s5,a4,80007be8 <__printf+0x5f0>
    800077fc:	02d7f5bb          	remuw	a1,a5,a3
    80007800:	02059593          	slli	a1,a1,0x20
    80007804:	0205d593          	srli	a1,a1,0x20
    80007808:	00bd85b3          	add	a1,s11,a1
    8000780c:	0005c583          	lbu	a1,0(a1)
    80007810:	02d7d7bb          	divuw	a5,a5,a3
    80007814:	f8b403a3          	sb	a1,-121(s0)
    80007818:	42eb7e63          	bgeu	s6,a4,80007c54 <__printf+0x65c>
    8000781c:	02d7f5bb          	remuw	a1,a5,a3
    80007820:	02059593          	slli	a1,a1,0x20
    80007824:	0205d593          	srli	a1,a1,0x20
    80007828:	00bd85b3          	add	a1,s11,a1
    8000782c:	0005c583          	lbu	a1,0(a1)
    80007830:	02d7d7bb          	divuw	a5,a5,a3
    80007834:	f8b40423          	sb	a1,-120(s0)
    80007838:	42ebfc63          	bgeu	s7,a4,80007c70 <__printf+0x678>
    8000783c:	02079793          	slli	a5,a5,0x20
    80007840:	0207d793          	srli	a5,a5,0x20
    80007844:	00fd8db3          	add	s11,s11,a5
    80007848:	000dc703          	lbu	a4,0(s11)
    8000784c:	00a00793          	li	a5,10
    80007850:	00900c93          	li	s9,9
    80007854:	f8e404a3          	sb	a4,-119(s0)
    80007858:	00065c63          	bgez	a2,80007870 <__printf+0x278>
    8000785c:	f9040713          	addi	a4,s0,-112
    80007860:	00f70733          	add	a4,a4,a5
    80007864:	02d00693          	li	a3,45
    80007868:	fed70823          	sb	a3,-16(a4)
    8000786c:	00078c93          	mv	s9,a5
    80007870:	f8040793          	addi	a5,s0,-128
    80007874:	01978cb3          	add	s9,a5,s9
    80007878:	f7f40d13          	addi	s10,s0,-129
    8000787c:	000cc503          	lbu	a0,0(s9)
    80007880:	fffc8c93          	addi	s9,s9,-1
    80007884:	00000097          	auipc	ra,0x0
    80007888:	b90080e7          	jalr	-1136(ra) # 80007414 <consputc>
    8000788c:	ffac98e3          	bne	s9,s10,8000787c <__printf+0x284>
    80007890:	00094503          	lbu	a0,0(s2)
    80007894:	e00514e3          	bnez	a0,8000769c <__printf+0xa4>
    80007898:	1a0c1663          	bnez	s8,80007a44 <__printf+0x44c>
    8000789c:	08813083          	ld	ra,136(sp)
    800078a0:	08013403          	ld	s0,128(sp)
    800078a4:	07813483          	ld	s1,120(sp)
    800078a8:	07013903          	ld	s2,112(sp)
    800078ac:	06813983          	ld	s3,104(sp)
    800078b0:	06013a03          	ld	s4,96(sp)
    800078b4:	05813a83          	ld	s5,88(sp)
    800078b8:	05013b03          	ld	s6,80(sp)
    800078bc:	04813b83          	ld	s7,72(sp)
    800078c0:	04013c03          	ld	s8,64(sp)
    800078c4:	03813c83          	ld	s9,56(sp)
    800078c8:	03013d03          	ld	s10,48(sp)
    800078cc:	02813d83          	ld	s11,40(sp)
    800078d0:	0d010113          	addi	sp,sp,208
    800078d4:	00008067          	ret
    800078d8:	07300713          	li	a4,115
    800078dc:	1ce78a63          	beq	a5,a4,80007ab0 <__printf+0x4b8>
    800078e0:	07800713          	li	a4,120
    800078e4:	1ee79e63          	bne	a5,a4,80007ae0 <__printf+0x4e8>
    800078e8:	f7843783          	ld	a5,-136(s0)
    800078ec:	0007a703          	lw	a4,0(a5)
    800078f0:	00878793          	addi	a5,a5,8
    800078f4:	f6f43c23          	sd	a5,-136(s0)
    800078f8:	28074263          	bltz	a4,80007b7c <__printf+0x584>
    800078fc:	00002d97          	auipc	s11,0x2
    80007900:	d1cd8d93          	addi	s11,s11,-740 # 80009618 <digits>
    80007904:	00f77793          	andi	a5,a4,15
    80007908:	00fd87b3          	add	a5,s11,a5
    8000790c:	0007c683          	lbu	a3,0(a5)
    80007910:	00f00613          	li	a2,15
    80007914:	0007079b          	sext.w	a5,a4
    80007918:	f8d40023          	sb	a3,-128(s0)
    8000791c:	0047559b          	srliw	a1,a4,0x4
    80007920:	0047569b          	srliw	a3,a4,0x4
    80007924:	00000c93          	li	s9,0
    80007928:	0ee65063          	bge	a2,a4,80007a08 <__printf+0x410>
    8000792c:	00f6f693          	andi	a3,a3,15
    80007930:	00dd86b3          	add	a3,s11,a3
    80007934:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007938:	0087d79b          	srliw	a5,a5,0x8
    8000793c:	00100c93          	li	s9,1
    80007940:	f8d400a3          	sb	a3,-127(s0)
    80007944:	0cb67263          	bgeu	a2,a1,80007a08 <__printf+0x410>
    80007948:	00f7f693          	andi	a3,a5,15
    8000794c:	00dd86b3          	add	a3,s11,a3
    80007950:	0006c583          	lbu	a1,0(a3)
    80007954:	00f00613          	li	a2,15
    80007958:	0047d69b          	srliw	a3,a5,0x4
    8000795c:	f8b40123          	sb	a1,-126(s0)
    80007960:	0047d593          	srli	a1,a5,0x4
    80007964:	28f67e63          	bgeu	a2,a5,80007c00 <__printf+0x608>
    80007968:	00f6f693          	andi	a3,a3,15
    8000796c:	00dd86b3          	add	a3,s11,a3
    80007970:	0006c503          	lbu	a0,0(a3)
    80007974:	0087d813          	srli	a6,a5,0x8
    80007978:	0087d69b          	srliw	a3,a5,0x8
    8000797c:	f8a401a3          	sb	a0,-125(s0)
    80007980:	28b67663          	bgeu	a2,a1,80007c0c <__printf+0x614>
    80007984:	00f6f693          	andi	a3,a3,15
    80007988:	00dd86b3          	add	a3,s11,a3
    8000798c:	0006c583          	lbu	a1,0(a3)
    80007990:	00c7d513          	srli	a0,a5,0xc
    80007994:	00c7d69b          	srliw	a3,a5,0xc
    80007998:	f8b40223          	sb	a1,-124(s0)
    8000799c:	29067a63          	bgeu	a2,a6,80007c30 <__printf+0x638>
    800079a0:	00f6f693          	andi	a3,a3,15
    800079a4:	00dd86b3          	add	a3,s11,a3
    800079a8:	0006c583          	lbu	a1,0(a3)
    800079ac:	0107d813          	srli	a6,a5,0x10
    800079b0:	0107d69b          	srliw	a3,a5,0x10
    800079b4:	f8b402a3          	sb	a1,-123(s0)
    800079b8:	28a67263          	bgeu	a2,a0,80007c3c <__printf+0x644>
    800079bc:	00f6f693          	andi	a3,a3,15
    800079c0:	00dd86b3          	add	a3,s11,a3
    800079c4:	0006c683          	lbu	a3,0(a3)
    800079c8:	0147d79b          	srliw	a5,a5,0x14
    800079cc:	f8d40323          	sb	a3,-122(s0)
    800079d0:	21067663          	bgeu	a2,a6,80007bdc <__printf+0x5e4>
    800079d4:	02079793          	slli	a5,a5,0x20
    800079d8:	0207d793          	srli	a5,a5,0x20
    800079dc:	00fd8db3          	add	s11,s11,a5
    800079e0:	000dc683          	lbu	a3,0(s11)
    800079e4:	00800793          	li	a5,8
    800079e8:	00700c93          	li	s9,7
    800079ec:	f8d403a3          	sb	a3,-121(s0)
    800079f0:	00075c63          	bgez	a4,80007a08 <__printf+0x410>
    800079f4:	f9040713          	addi	a4,s0,-112
    800079f8:	00f70733          	add	a4,a4,a5
    800079fc:	02d00693          	li	a3,45
    80007a00:	fed70823          	sb	a3,-16(a4)
    80007a04:	00078c93          	mv	s9,a5
    80007a08:	f8040793          	addi	a5,s0,-128
    80007a0c:	01978cb3          	add	s9,a5,s9
    80007a10:	f7f40d13          	addi	s10,s0,-129
    80007a14:	000cc503          	lbu	a0,0(s9)
    80007a18:	fffc8c93          	addi	s9,s9,-1
    80007a1c:	00000097          	auipc	ra,0x0
    80007a20:	9f8080e7          	jalr	-1544(ra) # 80007414 <consputc>
    80007a24:	ff9d18e3          	bne	s10,s9,80007a14 <__printf+0x41c>
    80007a28:	0100006f          	j	80007a38 <__printf+0x440>
    80007a2c:	00000097          	auipc	ra,0x0
    80007a30:	9e8080e7          	jalr	-1560(ra) # 80007414 <consputc>
    80007a34:	000c8493          	mv	s1,s9
    80007a38:	00094503          	lbu	a0,0(s2)
    80007a3c:	c60510e3          	bnez	a0,8000769c <__printf+0xa4>
    80007a40:	e40c0ee3          	beqz	s8,8000789c <__printf+0x2a4>
    80007a44:	00005517          	auipc	a0,0x5
    80007a48:	24c50513          	addi	a0,a0,588 # 8000cc90 <pr>
    80007a4c:	00001097          	auipc	ra,0x1
    80007a50:	94c080e7          	jalr	-1716(ra) # 80008398 <release>
    80007a54:	e49ff06f          	j	8000789c <__printf+0x2a4>
    80007a58:	f7843783          	ld	a5,-136(s0)
    80007a5c:	03000513          	li	a0,48
    80007a60:	01000d13          	li	s10,16
    80007a64:	00878713          	addi	a4,a5,8
    80007a68:	0007bc83          	ld	s9,0(a5)
    80007a6c:	f6e43c23          	sd	a4,-136(s0)
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	9a4080e7          	jalr	-1628(ra) # 80007414 <consputc>
    80007a78:	07800513          	li	a0,120
    80007a7c:	00000097          	auipc	ra,0x0
    80007a80:	998080e7          	jalr	-1640(ra) # 80007414 <consputc>
    80007a84:	00002d97          	auipc	s11,0x2
    80007a88:	b94d8d93          	addi	s11,s11,-1132 # 80009618 <digits>
    80007a8c:	03ccd793          	srli	a5,s9,0x3c
    80007a90:	00fd87b3          	add	a5,s11,a5
    80007a94:	0007c503          	lbu	a0,0(a5)
    80007a98:	fffd0d1b          	addiw	s10,s10,-1
    80007a9c:	004c9c93          	slli	s9,s9,0x4
    80007aa0:	00000097          	auipc	ra,0x0
    80007aa4:	974080e7          	jalr	-1676(ra) # 80007414 <consputc>
    80007aa8:	fe0d12e3          	bnez	s10,80007a8c <__printf+0x494>
    80007aac:	f8dff06f          	j	80007a38 <__printf+0x440>
    80007ab0:	f7843783          	ld	a5,-136(s0)
    80007ab4:	0007bc83          	ld	s9,0(a5)
    80007ab8:	00878793          	addi	a5,a5,8
    80007abc:	f6f43c23          	sd	a5,-136(s0)
    80007ac0:	000c9a63          	bnez	s9,80007ad4 <__printf+0x4dc>
    80007ac4:	1080006f          	j	80007bcc <__printf+0x5d4>
    80007ac8:	001c8c93          	addi	s9,s9,1
    80007acc:	00000097          	auipc	ra,0x0
    80007ad0:	948080e7          	jalr	-1720(ra) # 80007414 <consputc>
    80007ad4:	000cc503          	lbu	a0,0(s9)
    80007ad8:	fe0518e3          	bnez	a0,80007ac8 <__printf+0x4d0>
    80007adc:	f5dff06f          	j	80007a38 <__printf+0x440>
    80007ae0:	02500513          	li	a0,37
    80007ae4:	00000097          	auipc	ra,0x0
    80007ae8:	930080e7          	jalr	-1744(ra) # 80007414 <consputc>
    80007aec:	000c8513          	mv	a0,s9
    80007af0:	00000097          	auipc	ra,0x0
    80007af4:	924080e7          	jalr	-1756(ra) # 80007414 <consputc>
    80007af8:	f41ff06f          	j	80007a38 <__printf+0x440>
    80007afc:	02500513          	li	a0,37
    80007b00:	00000097          	auipc	ra,0x0
    80007b04:	914080e7          	jalr	-1772(ra) # 80007414 <consputc>
    80007b08:	f31ff06f          	j	80007a38 <__printf+0x440>
    80007b0c:	00030513          	mv	a0,t1
    80007b10:	00000097          	auipc	ra,0x0
    80007b14:	7bc080e7          	jalr	1980(ra) # 800082cc <acquire>
    80007b18:	b4dff06f          	j	80007664 <__printf+0x6c>
    80007b1c:	40c0053b          	negw	a0,a2
    80007b20:	00a00713          	li	a4,10
    80007b24:	02e576bb          	remuw	a3,a0,a4
    80007b28:	00002d97          	auipc	s11,0x2
    80007b2c:	af0d8d93          	addi	s11,s11,-1296 # 80009618 <digits>
    80007b30:	ff700593          	li	a1,-9
    80007b34:	02069693          	slli	a3,a3,0x20
    80007b38:	0206d693          	srli	a3,a3,0x20
    80007b3c:	00dd86b3          	add	a3,s11,a3
    80007b40:	0006c683          	lbu	a3,0(a3)
    80007b44:	02e557bb          	divuw	a5,a0,a4
    80007b48:	f8d40023          	sb	a3,-128(s0)
    80007b4c:	10b65e63          	bge	a2,a1,80007c68 <__printf+0x670>
    80007b50:	06300593          	li	a1,99
    80007b54:	02e7f6bb          	remuw	a3,a5,a4
    80007b58:	02069693          	slli	a3,a3,0x20
    80007b5c:	0206d693          	srli	a3,a3,0x20
    80007b60:	00dd86b3          	add	a3,s11,a3
    80007b64:	0006c683          	lbu	a3,0(a3)
    80007b68:	02e7d73b          	divuw	a4,a5,a4
    80007b6c:	00200793          	li	a5,2
    80007b70:	f8d400a3          	sb	a3,-127(s0)
    80007b74:	bca5ece3          	bltu	a1,a0,8000774c <__printf+0x154>
    80007b78:	ce5ff06f          	j	8000785c <__printf+0x264>
    80007b7c:	40e007bb          	negw	a5,a4
    80007b80:	00002d97          	auipc	s11,0x2
    80007b84:	a98d8d93          	addi	s11,s11,-1384 # 80009618 <digits>
    80007b88:	00f7f693          	andi	a3,a5,15
    80007b8c:	00dd86b3          	add	a3,s11,a3
    80007b90:	0006c583          	lbu	a1,0(a3)
    80007b94:	ff100613          	li	a2,-15
    80007b98:	0047d69b          	srliw	a3,a5,0x4
    80007b9c:	f8b40023          	sb	a1,-128(s0)
    80007ba0:	0047d59b          	srliw	a1,a5,0x4
    80007ba4:	0ac75e63          	bge	a4,a2,80007c60 <__printf+0x668>
    80007ba8:	00f6f693          	andi	a3,a3,15
    80007bac:	00dd86b3          	add	a3,s11,a3
    80007bb0:	0006c603          	lbu	a2,0(a3)
    80007bb4:	00f00693          	li	a3,15
    80007bb8:	0087d79b          	srliw	a5,a5,0x8
    80007bbc:	f8c400a3          	sb	a2,-127(s0)
    80007bc0:	d8b6e4e3          	bltu	a3,a1,80007948 <__printf+0x350>
    80007bc4:	00200793          	li	a5,2
    80007bc8:	e2dff06f          	j	800079f4 <__printf+0x3fc>
    80007bcc:	00002c97          	auipc	s9,0x2
    80007bd0:	a2cc8c93          	addi	s9,s9,-1492 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80007bd4:	02800513          	li	a0,40
    80007bd8:	ef1ff06f          	j	80007ac8 <__printf+0x4d0>
    80007bdc:	00700793          	li	a5,7
    80007be0:	00600c93          	li	s9,6
    80007be4:	e0dff06f          	j	800079f0 <__printf+0x3f8>
    80007be8:	00700793          	li	a5,7
    80007bec:	00600c93          	li	s9,6
    80007bf0:	c69ff06f          	j	80007858 <__printf+0x260>
    80007bf4:	00300793          	li	a5,3
    80007bf8:	00200c93          	li	s9,2
    80007bfc:	c5dff06f          	j	80007858 <__printf+0x260>
    80007c00:	00300793          	li	a5,3
    80007c04:	00200c93          	li	s9,2
    80007c08:	de9ff06f          	j	800079f0 <__printf+0x3f8>
    80007c0c:	00400793          	li	a5,4
    80007c10:	00300c93          	li	s9,3
    80007c14:	dddff06f          	j	800079f0 <__printf+0x3f8>
    80007c18:	00400793          	li	a5,4
    80007c1c:	00300c93          	li	s9,3
    80007c20:	c39ff06f          	j	80007858 <__printf+0x260>
    80007c24:	00500793          	li	a5,5
    80007c28:	00400c93          	li	s9,4
    80007c2c:	c2dff06f          	j	80007858 <__printf+0x260>
    80007c30:	00500793          	li	a5,5
    80007c34:	00400c93          	li	s9,4
    80007c38:	db9ff06f          	j	800079f0 <__printf+0x3f8>
    80007c3c:	00600793          	li	a5,6
    80007c40:	00500c93          	li	s9,5
    80007c44:	dadff06f          	j	800079f0 <__printf+0x3f8>
    80007c48:	00600793          	li	a5,6
    80007c4c:	00500c93          	li	s9,5
    80007c50:	c09ff06f          	j	80007858 <__printf+0x260>
    80007c54:	00800793          	li	a5,8
    80007c58:	00700c93          	li	s9,7
    80007c5c:	bfdff06f          	j	80007858 <__printf+0x260>
    80007c60:	00100793          	li	a5,1
    80007c64:	d91ff06f          	j	800079f4 <__printf+0x3fc>
    80007c68:	00100793          	li	a5,1
    80007c6c:	bf1ff06f          	j	8000785c <__printf+0x264>
    80007c70:	00900793          	li	a5,9
    80007c74:	00800c93          	li	s9,8
    80007c78:	be1ff06f          	j	80007858 <__printf+0x260>
    80007c7c:	00002517          	auipc	a0,0x2
    80007c80:	98450513          	addi	a0,a0,-1660 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007c84:	00000097          	auipc	ra,0x0
    80007c88:	918080e7          	jalr	-1768(ra) # 8000759c <panic>

0000000080007c8c <printfinit>:
    80007c8c:	fe010113          	addi	sp,sp,-32
    80007c90:	00813823          	sd	s0,16(sp)
    80007c94:	00913423          	sd	s1,8(sp)
    80007c98:	00113c23          	sd	ra,24(sp)
    80007c9c:	02010413          	addi	s0,sp,32
    80007ca0:	00005497          	auipc	s1,0x5
    80007ca4:	ff048493          	addi	s1,s1,-16 # 8000cc90 <pr>
    80007ca8:	00048513          	mv	a0,s1
    80007cac:	00002597          	auipc	a1,0x2
    80007cb0:	96458593          	addi	a1,a1,-1692 # 80009610 <CONSOLE_STATUS+0x600>
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	5f4080e7          	jalr	1524(ra) # 800082a8 <initlock>
    80007cbc:	01813083          	ld	ra,24(sp)
    80007cc0:	01013403          	ld	s0,16(sp)
    80007cc4:	0004ac23          	sw	zero,24(s1)
    80007cc8:	00813483          	ld	s1,8(sp)
    80007ccc:	02010113          	addi	sp,sp,32
    80007cd0:	00008067          	ret

0000000080007cd4 <uartinit>:
    80007cd4:	ff010113          	addi	sp,sp,-16
    80007cd8:	00813423          	sd	s0,8(sp)
    80007cdc:	01010413          	addi	s0,sp,16
    80007ce0:	100007b7          	lui	a5,0x10000
    80007ce4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ce8:	f8000713          	li	a4,-128
    80007cec:	00e781a3          	sb	a4,3(a5)
    80007cf0:	00300713          	li	a4,3
    80007cf4:	00e78023          	sb	a4,0(a5)
    80007cf8:	000780a3          	sb	zero,1(a5)
    80007cfc:	00e781a3          	sb	a4,3(a5)
    80007d00:	00700693          	li	a3,7
    80007d04:	00d78123          	sb	a3,2(a5)
    80007d08:	00e780a3          	sb	a4,1(a5)
    80007d0c:	00813403          	ld	s0,8(sp)
    80007d10:	01010113          	addi	sp,sp,16
    80007d14:	00008067          	ret

0000000080007d18 <uartputc>:
    80007d18:	00004797          	auipc	a5,0x4
    80007d1c:	c907a783          	lw	a5,-880(a5) # 8000b9a8 <panicked>
    80007d20:	00078463          	beqz	a5,80007d28 <uartputc+0x10>
    80007d24:	0000006f          	j	80007d24 <uartputc+0xc>
    80007d28:	fd010113          	addi	sp,sp,-48
    80007d2c:	02813023          	sd	s0,32(sp)
    80007d30:	00913c23          	sd	s1,24(sp)
    80007d34:	01213823          	sd	s2,16(sp)
    80007d38:	01313423          	sd	s3,8(sp)
    80007d3c:	02113423          	sd	ra,40(sp)
    80007d40:	03010413          	addi	s0,sp,48
    80007d44:	00004917          	auipc	s2,0x4
    80007d48:	c6c90913          	addi	s2,s2,-916 # 8000b9b0 <uart_tx_r>
    80007d4c:	00093783          	ld	a5,0(s2)
    80007d50:	00004497          	auipc	s1,0x4
    80007d54:	c6848493          	addi	s1,s1,-920 # 8000b9b8 <uart_tx_w>
    80007d58:	0004b703          	ld	a4,0(s1)
    80007d5c:	02078693          	addi	a3,a5,32
    80007d60:	00050993          	mv	s3,a0
    80007d64:	02e69c63          	bne	a3,a4,80007d9c <uartputc+0x84>
    80007d68:	00001097          	auipc	ra,0x1
    80007d6c:	834080e7          	jalr	-1996(ra) # 8000859c <push_on>
    80007d70:	00093783          	ld	a5,0(s2)
    80007d74:	0004b703          	ld	a4,0(s1)
    80007d78:	02078793          	addi	a5,a5,32
    80007d7c:	00e79463          	bne	a5,a4,80007d84 <uartputc+0x6c>
    80007d80:	0000006f          	j	80007d80 <uartputc+0x68>
    80007d84:	00001097          	auipc	ra,0x1
    80007d88:	88c080e7          	jalr	-1908(ra) # 80008610 <pop_on>
    80007d8c:	00093783          	ld	a5,0(s2)
    80007d90:	0004b703          	ld	a4,0(s1)
    80007d94:	02078693          	addi	a3,a5,32
    80007d98:	fce688e3          	beq	a3,a4,80007d68 <uartputc+0x50>
    80007d9c:	01f77693          	andi	a3,a4,31
    80007da0:	00005597          	auipc	a1,0x5
    80007da4:	f1058593          	addi	a1,a1,-240 # 8000ccb0 <uart_tx_buf>
    80007da8:	00d586b3          	add	a3,a1,a3
    80007dac:	00170713          	addi	a4,a4,1
    80007db0:	01368023          	sb	s3,0(a3)
    80007db4:	00e4b023          	sd	a4,0(s1)
    80007db8:	10000637          	lui	a2,0x10000
    80007dbc:	02f71063          	bne	a4,a5,80007ddc <uartputc+0xc4>
    80007dc0:	0340006f          	j	80007df4 <uartputc+0xdc>
    80007dc4:	00074703          	lbu	a4,0(a4)
    80007dc8:	00f93023          	sd	a5,0(s2)
    80007dcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007dd0:	00093783          	ld	a5,0(s2)
    80007dd4:	0004b703          	ld	a4,0(s1)
    80007dd8:	00f70e63          	beq	a4,a5,80007df4 <uartputc+0xdc>
    80007ddc:	00564683          	lbu	a3,5(a2)
    80007de0:	01f7f713          	andi	a4,a5,31
    80007de4:	00e58733          	add	a4,a1,a4
    80007de8:	0206f693          	andi	a3,a3,32
    80007dec:	00178793          	addi	a5,a5,1
    80007df0:	fc069ae3          	bnez	a3,80007dc4 <uartputc+0xac>
    80007df4:	02813083          	ld	ra,40(sp)
    80007df8:	02013403          	ld	s0,32(sp)
    80007dfc:	01813483          	ld	s1,24(sp)
    80007e00:	01013903          	ld	s2,16(sp)
    80007e04:	00813983          	ld	s3,8(sp)
    80007e08:	03010113          	addi	sp,sp,48
    80007e0c:	00008067          	ret

0000000080007e10 <uartputc_sync>:
    80007e10:	ff010113          	addi	sp,sp,-16
    80007e14:	00813423          	sd	s0,8(sp)
    80007e18:	01010413          	addi	s0,sp,16
    80007e1c:	00004717          	auipc	a4,0x4
    80007e20:	b8c72703          	lw	a4,-1140(a4) # 8000b9a8 <panicked>
    80007e24:	02071663          	bnez	a4,80007e50 <uartputc_sync+0x40>
    80007e28:	00050793          	mv	a5,a0
    80007e2c:	100006b7          	lui	a3,0x10000
    80007e30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007e34:	02077713          	andi	a4,a4,32
    80007e38:	fe070ce3          	beqz	a4,80007e30 <uartputc_sync+0x20>
    80007e3c:	0ff7f793          	andi	a5,a5,255
    80007e40:	00f68023          	sb	a5,0(a3)
    80007e44:	00813403          	ld	s0,8(sp)
    80007e48:	01010113          	addi	sp,sp,16
    80007e4c:	00008067          	ret
    80007e50:	0000006f          	j	80007e50 <uartputc_sync+0x40>

0000000080007e54 <uartstart>:
    80007e54:	ff010113          	addi	sp,sp,-16
    80007e58:	00813423          	sd	s0,8(sp)
    80007e5c:	01010413          	addi	s0,sp,16
    80007e60:	00004617          	auipc	a2,0x4
    80007e64:	b5060613          	addi	a2,a2,-1200 # 8000b9b0 <uart_tx_r>
    80007e68:	00004517          	auipc	a0,0x4
    80007e6c:	b5050513          	addi	a0,a0,-1200 # 8000b9b8 <uart_tx_w>
    80007e70:	00063783          	ld	a5,0(a2)
    80007e74:	00053703          	ld	a4,0(a0)
    80007e78:	04f70263          	beq	a4,a5,80007ebc <uartstart+0x68>
    80007e7c:	100005b7          	lui	a1,0x10000
    80007e80:	00005817          	auipc	a6,0x5
    80007e84:	e3080813          	addi	a6,a6,-464 # 8000ccb0 <uart_tx_buf>
    80007e88:	01c0006f          	j	80007ea4 <uartstart+0x50>
    80007e8c:	0006c703          	lbu	a4,0(a3)
    80007e90:	00f63023          	sd	a5,0(a2)
    80007e94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e98:	00063783          	ld	a5,0(a2)
    80007e9c:	00053703          	ld	a4,0(a0)
    80007ea0:	00f70e63          	beq	a4,a5,80007ebc <uartstart+0x68>
    80007ea4:	01f7f713          	andi	a4,a5,31
    80007ea8:	00e806b3          	add	a3,a6,a4
    80007eac:	0055c703          	lbu	a4,5(a1)
    80007eb0:	00178793          	addi	a5,a5,1
    80007eb4:	02077713          	andi	a4,a4,32
    80007eb8:	fc071ae3          	bnez	a4,80007e8c <uartstart+0x38>
    80007ebc:	00813403          	ld	s0,8(sp)
    80007ec0:	01010113          	addi	sp,sp,16
    80007ec4:	00008067          	ret

0000000080007ec8 <uartgetc>:
    80007ec8:	ff010113          	addi	sp,sp,-16
    80007ecc:	00813423          	sd	s0,8(sp)
    80007ed0:	01010413          	addi	s0,sp,16
    80007ed4:	10000737          	lui	a4,0x10000
    80007ed8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007edc:	0017f793          	andi	a5,a5,1
    80007ee0:	00078c63          	beqz	a5,80007ef8 <uartgetc+0x30>
    80007ee4:	00074503          	lbu	a0,0(a4)
    80007ee8:	0ff57513          	andi	a0,a0,255
    80007eec:	00813403          	ld	s0,8(sp)
    80007ef0:	01010113          	addi	sp,sp,16
    80007ef4:	00008067          	ret
    80007ef8:	fff00513          	li	a0,-1
    80007efc:	ff1ff06f          	j	80007eec <uartgetc+0x24>

0000000080007f00 <uartintr>:
    80007f00:	100007b7          	lui	a5,0x10000
    80007f04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007f08:	0017f793          	andi	a5,a5,1
    80007f0c:	0a078463          	beqz	a5,80007fb4 <uartintr+0xb4>
    80007f10:	fe010113          	addi	sp,sp,-32
    80007f14:	00813823          	sd	s0,16(sp)
    80007f18:	00913423          	sd	s1,8(sp)
    80007f1c:	00113c23          	sd	ra,24(sp)
    80007f20:	02010413          	addi	s0,sp,32
    80007f24:	100004b7          	lui	s1,0x10000
    80007f28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007f2c:	0ff57513          	andi	a0,a0,255
    80007f30:	fffff097          	auipc	ra,0xfffff
    80007f34:	534080e7          	jalr	1332(ra) # 80007464 <consoleintr>
    80007f38:	0054c783          	lbu	a5,5(s1)
    80007f3c:	0017f793          	andi	a5,a5,1
    80007f40:	fe0794e3          	bnez	a5,80007f28 <uartintr+0x28>
    80007f44:	00004617          	auipc	a2,0x4
    80007f48:	a6c60613          	addi	a2,a2,-1428 # 8000b9b0 <uart_tx_r>
    80007f4c:	00004517          	auipc	a0,0x4
    80007f50:	a6c50513          	addi	a0,a0,-1428 # 8000b9b8 <uart_tx_w>
    80007f54:	00063783          	ld	a5,0(a2)
    80007f58:	00053703          	ld	a4,0(a0)
    80007f5c:	04f70263          	beq	a4,a5,80007fa0 <uartintr+0xa0>
    80007f60:	100005b7          	lui	a1,0x10000
    80007f64:	00005817          	auipc	a6,0x5
    80007f68:	d4c80813          	addi	a6,a6,-692 # 8000ccb0 <uart_tx_buf>
    80007f6c:	01c0006f          	j	80007f88 <uartintr+0x88>
    80007f70:	0006c703          	lbu	a4,0(a3)
    80007f74:	00f63023          	sd	a5,0(a2)
    80007f78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f7c:	00063783          	ld	a5,0(a2)
    80007f80:	00053703          	ld	a4,0(a0)
    80007f84:	00f70e63          	beq	a4,a5,80007fa0 <uartintr+0xa0>
    80007f88:	01f7f713          	andi	a4,a5,31
    80007f8c:	00e806b3          	add	a3,a6,a4
    80007f90:	0055c703          	lbu	a4,5(a1)
    80007f94:	00178793          	addi	a5,a5,1
    80007f98:	02077713          	andi	a4,a4,32
    80007f9c:	fc071ae3          	bnez	a4,80007f70 <uartintr+0x70>
    80007fa0:	01813083          	ld	ra,24(sp)
    80007fa4:	01013403          	ld	s0,16(sp)
    80007fa8:	00813483          	ld	s1,8(sp)
    80007fac:	02010113          	addi	sp,sp,32
    80007fb0:	00008067          	ret
    80007fb4:	00004617          	auipc	a2,0x4
    80007fb8:	9fc60613          	addi	a2,a2,-1540 # 8000b9b0 <uart_tx_r>
    80007fbc:	00004517          	auipc	a0,0x4
    80007fc0:	9fc50513          	addi	a0,a0,-1540 # 8000b9b8 <uart_tx_w>
    80007fc4:	00063783          	ld	a5,0(a2)
    80007fc8:	00053703          	ld	a4,0(a0)
    80007fcc:	04f70263          	beq	a4,a5,80008010 <uartintr+0x110>
    80007fd0:	100005b7          	lui	a1,0x10000
    80007fd4:	00005817          	auipc	a6,0x5
    80007fd8:	cdc80813          	addi	a6,a6,-804 # 8000ccb0 <uart_tx_buf>
    80007fdc:	01c0006f          	j	80007ff8 <uartintr+0xf8>
    80007fe0:	0006c703          	lbu	a4,0(a3)
    80007fe4:	00f63023          	sd	a5,0(a2)
    80007fe8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fec:	00063783          	ld	a5,0(a2)
    80007ff0:	00053703          	ld	a4,0(a0)
    80007ff4:	02f70063          	beq	a4,a5,80008014 <uartintr+0x114>
    80007ff8:	01f7f713          	andi	a4,a5,31
    80007ffc:	00e806b3          	add	a3,a6,a4
    80008000:	0055c703          	lbu	a4,5(a1)
    80008004:	00178793          	addi	a5,a5,1
    80008008:	02077713          	andi	a4,a4,32
    8000800c:	fc071ae3          	bnez	a4,80007fe0 <uartintr+0xe0>
    80008010:	00008067          	ret
    80008014:	00008067          	ret

0000000080008018 <kinit>:
    80008018:	fc010113          	addi	sp,sp,-64
    8000801c:	02913423          	sd	s1,40(sp)
    80008020:	fffff7b7          	lui	a5,0xfffff
    80008024:	00006497          	auipc	s1,0x6
    80008028:	cab48493          	addi	s1,s1,-853 # 8000dccf <end+0xfff>
    8000802c:	02813823          	sd	s0,48(sp)
    80008030:	01313c23          	sd	s3,24(sp)
    80008034:	00f4f4b3          	and	s1,s1,a5
    80008038:	02113c23          	sd	ra,56(sp)
    8000803c:	03213023          	sd	s2,32(sp)
    80008040:	01413823          	sd	s4,16(sp)
    80008044:	01513423          	sd	s5,8(sp)
    80008048:	04010413          	addi	s0,sp,64
    8000804c:	000017b7          	lui	a5,0x1
    80008050:	01100993          	li	s3,17
    80008054:	00f487b3          	add	a5,s1,a5
    80008058:	01b99993          	slli	s3,s3,0x1b
    8000805c:	06f9e063          	bltu	s3,a5,800080bc <kinit+0xa4>
    80008060:	00005a97          	auipc	s5,0x5
    80008064:	c70a8a93          	addi	s5,s5,-912 # 8000ccd0 <end>
    80008068:	0754ec63          	bltu	s1,s5,800080e0 <kinit+0xc8>
    8000806c:	0734fa63          	bgeu	s1,s3,800080e0 <kinit+0xc8>
    80008070:	00088a37          	lui	s4,0x88
    80008074:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008078:	00004917          	auipc	s2,0x4
    8000807c:	94890913          	addi	s2,s2,-1720 # 8000b9c0 <kmem>
    80008080:	00ca1a13          	slli	s4,s4,0xc
    80008084:	0140006f          	j	80008098 <kinit+0x80>
    80008088:	000017b7          	lui	a5,0x1
    8000808c:	00f484b3          	add	s1,s1,a5
    80008090:	0554e863          	bltu	s1,s5,800080e0 <kinit+0xc8>
    80008094:	0534f663          	bgeu	s1,s3,800080e0 <kinit+0xc8>
    80008098:	00001637          	lui	a2,0x1
    8000809c:	00100593          	li	a1,1
    800080a0:	00048513          	mv	a0,s1
    800080a4:	00000097          	auipc	ra,0x0
    800080a8:	5e4080e7          	jalr	1508(ra) # 80008688 <__memset>
    800080ac:	00093783          	ld	a5,0(s2)
    800080b0:	00f4b023          	sd	a5,0(s1)
    800080b4:	00993023          	sd	s1,0(s2)
    800080b8:	fd4498e3          	bne	s1,s4,80008088 <kinit+0x70>
    800080bc:	03813083          	ld	ra,56(sp)
    800080c0:	03013403          	ld	s0,48(sp)
    800080c4:	02813483          	ld	s1,40(sp)
    800080c8:	02013903          	ld	s2,32(sp)
    800080cc:	01813983          	ld	s3,24(sp)
    800080d0:	01013a03          	ld	s4,16(sp)
    800080d4:	00813a83          	ld	s5,8(sp)
    800080d8:	04010113          	addi	sp,sp,64
    800080dc:	00008067          	ret
    800080e0:	00001517          	auipc	a0,0x1
    800080e4:	55050513          	addi	a0,a0,1360 # 80009630 <digits+0x18>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	4b4080e7          	jalr	1204(ra) # 8000759c <panic>

00000000800080f0 <freerange>:
    800080f0:	fc010113          	addi	sp,sp,-64
    800080f4:	000017b7          	lui	a5,0x1
    800080f8:	02913423          	sd	s1,40(sp)
    800080fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008100:	009504b3          	add	s1,a0,s1
    80008104:	fffff537          	lui	a0,0xfffff
    80008108:	02813823          	sd	s0,48(sp)
    8000810c:	02113c23          	sd	ra,56(sp)
    80008110:	03213023          	sd	s2,32(sp)
    80008114:	01313c23          	sd	s3,24(sp)
    80008118:	01413823          	sd	s4,16(sp)
    8000811c:	01513423          	sd	s5,8(sp)
    80008120:	01613023          	sd	s6,0(sp)
    80008124:	04010413          	addi	s0,sp,64
    80008128:	00a4f4b3          	and	s1,s1,a0
    8000812c:	00f487b3          	add	a5,s1,a5
    80008130:	06f5e463          	bltu	a1,a5,80008198 <freerange+0xa8>
    80008134:	00005a97          	auipc	s5,0x5
    80008138:	b9ca8a93          	addi	s5,s5,-1124 # 8000ccd0 <end>
    8000813c:	0954e263          	bltu	s1,s5,800081c0 <freerange+0xd0>
    80008140:	01100993          	li	s3,17
    80008144:	01b99993          	slli	s3,s3,0x1b
    80008148:	0734fc63          	bgeu	s1,s3,800081c0 <freerange+0xd0>
    8000814c:	00058a13          	mv	s4,a1
    80008150:	00004917          	auipc	s2,0x4
    80008154:	87090913          	addi	s2,s2,-1936 # 8000b9c0 <kmem>
    80008158:	00002b37          	lui	s6,0x2
    8000815c:	0140006f          	j	80008170 <freerange+0x80>
    80008160:	000017b7          	lui	a5,0x1
    80008164:	00f484b3          	add	s1,s1,a5
    80008168:	0554ec63          	bltu	s1,s5,800081c0 <freerange+0xd0>
    8000816c:	0534fa63          	bgeu	s1,s3,800081c0 <freerange+0xd0>
    80008170:	00001637          	lui	a2,0x1
    80008174:	00100593          	li	a1,1
    80008178:	00048513          	mv	a0,s1
    8000817c:	00000097          	auipc	ra,0x0
    80008180:	50c080e7          	jalr	1292(ra) # 80008688 <__memset>
    80008184:	00093703          	ld	a4,0(s2)
    80008188:	016487b3          	add	a5,s1,s6
    8000818c:	00e4b023          	sd	a4,0(s1)
    80008190:	00993023          	sd	s1,0(s2)
    80008194:	fcfa76e3          	bgeu	s4,a5,80008160 <freerange+0x70>
    80008198:	03813083          	ld	ra,56(sp)
    8000819c:	03013403          	ld	s0,48(sp)
    800081a0:	02813483          	ld	s1,40(sp)
    800081a4:	02013903          	ld	s2,32(sp)
    800081a8:	01813983          	ld	s3,24(sp)
    800081ac:	01013a03          	ld	s4,16(sp)
    800081b0:	00813a83          	ld	s5,8(sp)
    800081b4:	00013b03          	ld	s6,0(sp)
    800081b8:	04010113          	addi	sp,sp,64
    800081bc:	00008067          	ret
    800081c0:	00001517          	auipc	a0,0x1
    800081c4:	47050513          	addi	a0,a0,1136 # 80009630 <digits+0x18>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	3d4080e7          	jalr	980(ra) # 8000759c <panic>

00000000800081d0 <kfree>:
    800081d0:	fe010113          	addi	sp,sp,-32
    800081d4:	00813823          	sd	s0,16(sp)
    800081d8:	00113c23          	sd	ra,24(sp)
    800081dc:	00913423          	sd	s1,8(sp)
    800081e0:	02010413          	addi	s0,sp,32
    800081e4:	03451793          	slli	a5,a0,0x34
    800081e8:	04079c63          	bnez	a5,80008240 <kfree+0x70>
    800081ec:	00005797          	auipc	a5,0x5
    800081f0:	ae478793          	addi	a5,a5,-1308 # 8000ccd0 <end>
    800081f4:	00050493          	mv	s1,a0
    800081f8:	04f56463          	bltu	a0,a5,80008240 <kfree+0x70>
    800081fc:	01100793          	li	a5,17
    80008200:	01b79793          	slli	a5,a5,0x1b
    80008204:	02f57e63          	bgeu	a0,a5,80008240 <kfree+0x70>
    80008208:	00001637          	lui	a2,0x1
    8000820c:	00100593          	li	a1,1
    80008210:	00000097          	auipc	ra,0x0
    80008214:	478080e7          	jalr	1144(ra) # 80008688 <__memset>
    80008218:	00003797          	auipc	a5,0x3
    8000821c:	7a878793          	addi	a5,a5,1960 # 8000b9c0 <kmem>
    80008220:	0007b703          	ld	a4,0(a5)
    80008224:	01813083          	ld	ra,24(sp)
    80008228:	01013403          	ld	s0,16(sp)
    8000822c:	00e4b023          	sd	a4,0(s1)
    80008230:	0097b023          	sd	s1,0(a5)
    80008234:	00813483          	ld	s1,8(sp)
    80008238:	02010113          	addi	sp,sp,32
    8000823c:	00008067          	ret
    80008240:	00001517          	auipc	a0,0x1
    80008244:	3f050513          	addi	a0,a0,1008 # 80009630 <digits+0x18>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	354080e7          	jalr	852(ra) # 8000759c <panic>

0000000080008250 <kalloc>:
    80008250:	fe010113          	addi	sp,sp,-32
    80008254:	00813823          	sd	s0,16(sp)
    80008258:	00913423          	sd	s1,8(sp)
    8000825c:	00113c23          	sd	ra,24(sp)
    80008260:	02010413          	addi	s0,sp,32
    80008264:	00003797          	auipc	a5,0x3
    80008268:	75c78793          	addi	a5,a5,1884 # 8000b9c0 <kmem>
    8000826c:	0007b483          	ld	s1,0(a5)
    80008270:	02048063          	beqz	s1,80008290 <kalloc+0x40>
    80008274:	0004b703          	ld	a4,0(s1)
    80008278:	00001637          	lui	a2,0x1
    8000827c:	00500593          	li	a1,5
    80008280:	00048513          	mv	a0,s1
    80008284:	00e7b023          	sd	a4,0(a5)
    80008288:	00000097          	auipc	ra,0x0
    8000828c:	400080e7          	jalr	1024(ra) # 80008688 <__memset>
    80008290:	01813083          	ld	ra,24(sp)
    80008294:	01013403          	ld	s0,16(sp)
    80008298:	00048513          	mv	a0,s1
    8000829c:	00813483          	ld	s1,8(sp)
    800082a0:	02010113          	addi	sp,sp,32
    800082a4:	00008067          	ret

00000000800082a8 <initlock>:
    800082a8:	ff010113          	addi	sp,sp,-16
    800082ac:	00813423          	sd	s0,8(sp)
    800082b0:	01010413          	addi	s0,sp,16
    800082b4:	00813403          	ld	s0,8(sp)
    800082b8:	00b53423          	sd	a1,8(a0)
    800082bc:	00052023          	sw	zero,0(a0)
    800082c0:	00053823          	sd	zero,16(a0)
    800082c4:	01010113          	addi	sp,sp,16
    800082c8:	00008067          	ret

00000000800082cc <acquire>:
    800082cc:	fe010113          	addi	sp,sp,-32
    800082d0:	00813823          	sd	s0,16(sp)
    800082d4:	00913423          	sd	s1,8(sp)
    800082d8:	00113c23          	sd	ra,24(sp)
    800082dc:	01213023          	sd	s2,0(sp)
    800082e0:	02010413          	addi	s0,sp,32
    800082e4:	00050493          	mv	s1,a0
    800082e8:	10002973          	csrr	s2,sstatus
    800082ec:	100027f3          	csrr	a5,sstatus
    800082f0:	ffd7f793          	andi	a5,a5,-3
    800082f4:	10079073          	csrw	sstatus,a5
    800082f8:	fffff097          	auipc	ra,0xfffff
    800082fc:	8e8080e7          	jalr	-1816(ra) # 80006be0 <mycpu>
    80008300:	07852783          	lw	a5,120(a0)
    80008304:	06078e63          	beqz	a5,80008380 <acquire+0xb4>
    80008308:	fffff097          	auipc	ra,0xfffff
    8000830c:	8d8080e7          	jalr	-1832(ra) # 80006be0 <mycpu>
    80008310:	07852783          	lw	a5,120(a0)
    80008314:	0004a703          	lw	a4,0(s1)
    80008318:	0017879b          	addiw	a5,a5,1
    8000831c:	06f52c23          	sw	a5,120(a0)
    80008320:	04071063          	bnez	a4,80008360 <acquire+0x94>
    80008324:	00100713          	li	a4,1
    80008328:	00070793          	mv	a5,a4
    8000832c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008330:	0007879b          	sext.w	a5,a5
    80008334:	fe079ae3          	bnez	a5,80008328 <acquire+0x5c>
    80008338:	0ff0000f          	fence
    8000833c:	fffff097          	auipc	ra,0xfffff
    80008340:	8a4080e7          	jalr	-1884(ra) # 80006be0 <mycpu>
    80008344:	01813083          	ld	ra,24(sp)
    80008348:	01013403          	ld	s0,16(sp)
    8000834c:	00a4b823          	sd	a0,16(s1)
    80008350:	00013903          	ld	s2,0(sp)
    80008354:	00813483          	ld	s1,8(sp)
    80008358:	02010113          	addi	sp,sp,32
    8000835c:	00008067          	ret
    80008360:	0104b903          	ld	s2,16(s1)
    80008364:	fffff097          	auipc	ra,0xfffff
    80008368:	87c080e7          	jalr	-1924(ra) # 80006be0 <mycpu>
    8000836c:	faa91ce3          	bne	s2,a0,80008324 <acquire+0x58>
    80008370:	00001517          	auipc	a0,0x1
    80008374:	2c850513          	addi	a0,a0,712 # 80009638 <digits+0x20>
    80008378:	fffff097          	auipc	ra,0xfffff
    8000837c:	224080e7          	jalr	548(ra) # 8000759c <panic>
    80008380:	00195913          	srli	s2,s2,0x1
    80008384:	fffff097          	auipc	ra,0xfffff
    80008388:	85c080e7          	jalr	-1956(ra) # 80006be0 <mycpu>
    8000838c:	00197913          	andi	s2,s2,1
    80008390:	07252e23          	sw	s2,124(a0)
    80008394:	f75ff06f          	j	80008308 <acquire+0x3c>

0000000080008398 <release>:
    80008398:	fe010113          	addi	sp,sp,-32
    8000839c:	00813823          	sd	s0,16(sp)
    800083a0:	00113c23          	sd	ra,24(sp)
    800083a4:	00913423          	sd	s1,8(sp)
    800083a8:	01213023          	sd	s2,0(sp)
    800083ac:	02010413          	addi	s0,sp,32
    800083b0:	00052783          	lw	a5,0(a0)
    800083b4:	00079a63          	bnez	a5,800083c8 <release+0x30>
    800083b8:	00001517          	auipc	a0,0x1
    800083bc:	28850513          	addi	a0,a0,648 # 80009640 <digits+0x28>
    800083c0:	fffff097          	auipc	ra,0xfffff
    800083c4:	1dc080e7          	jalr	476(ra) # 8000759c <panic>
    800083c8:	01053903          	ld	s2,16(a0)
    800083cc:	00050493          	mv	s1,a0
    800083d0:	fffff097          	auipc	ra,0xfffff
    800083d4:	810080e7          	jalr	-2032(ra) # 80006be0 <mycpu>
    800083d8:	fea910e3          	bne	s2,a0,800083b8 <release+0x20>
    800083dc:	0004b823          	sd	zero,16(s1)
    800083e0:	0ff0000f          	fence
    800083e4:	0f50000f          	fence	iorw,ow
    800083e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800083ec:	ffffe097          	auipc	ra,0xffffe
    800083f0:	7f4080e7          	jalr	2036(ra) # 80006be0 <mycpu>
    800083f4:	100027f3          	csrr	a5,sstatus
    800083f8:	0027f793          	andi	a5,a5,2
    800083fc:	04079a63          	bnez	a5,80008450 <release+0xb8>
    80008400:	07852783          	lw	a5,120(a0)
    80008404:	02f05e63          	blez	a5,80008440 <release+0xa8>
    80008408:	fff7871b          	addiw	a4,a5,-1
    8000840c:	06e52c23          	sw	a4,120(a0)
    80008410:	00071c63          	bnez	a4,80008428 <release+0x90>
    80008414:	07c52783          	lw	a5,124(a0)
    80008418:	00078863          	beqz	a5,80008428 <release+0x90>
    8000841c:	100027f3          	csrr	a5,sstatus
    80008420:	0027e793          	ori	a5,a5,2
    80008424:	10079073          	csrw	sstatus,a5
    80008428:	01813083          	ld	ra,24(sp)
    8000842c:	01013403          	ld	s0,16(sp)
    80008430:	00813483          	ld	s1,8(sp)
    80008434:	00013903          	ld	s2,0(sp)
    80008438:	02010113          	addi	sp,sp,32
    8000843c:	00008067          	ret
    80008440:	00001517          	auipc	a0,0x1
    80008444:	22050513          	addi	a0,a0,544 # 80009660 <digits+0x48>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	154080e7          	jalr	340(ra) # 8000759c <panic>
    80008450:	00001517          	auipc	a0,0x1
    80008454:	1f850513          	addi	a0,a0,504 # 80009648 <digits+0x30>
    80008458:	fffff097          	auipc	ra,0xfffff
    8000845c:	144080e7          	jalr	324(ra) # 8000759c <panic>

0000000080008460 <holding>:
    80008460:	00052783          	lw	a5,0(a0)
    80008464:	00079663          	bnez	a5,80008470 <holding+0x10>
    80008468:	00000513          	li	a0,0
    8000846c:	00008067          	ret
    80008470:	fe010113          	addi	sp,sp,-32
    80008474:	00813823          	sd	s0,16(sp)
    80008478:	00913423          	sd	s1,8(sp)
    8000847c:	00113c23          	sd	ra,24(sp)
    80008480:	02010413          	addi	s0,sp,32
    80008484:	01053483          	ld	s1,16(a0)
    80008488:	ffffe097          	auipc	ra,0xffffe
    8000848c:	758080e7          	jalr	1880(ra) # 80006be0 <mycpu>
    80008490:	01813083          	ld	ra,24(sp)
    80008494:	01013403          	ld	s0,16(sp)
    80008498:	40a48533          	sub	a0,s1,a0
    8000849c:	00153513          	seqz	a0,a0
    800084a0:	00813483          	ld	s1,8(sp)
    800084a4:	02010113          	addi	sp,sp,32
    800084a8:	00008067          	ret

00000000800084ac <push_off>:
    800084ac:	fe010113          	addi	sp,sp,-32
    800084b0:	00813823          	sd	s0,16(sp)
    800084b4:	00113c23          	sd	ra,24(sp)
    800084b8:	00913423          	sd	s1,8(sp)
    800084bc:	02010413          	addi	s0,sp,32
    800084c0:	100024f3          	csrr	s1,sstatus
    800084c4:	100027f3          	csrr	a5,sstatus
    800084c8:	ffd7f793          	andi	a5,a5,-3
    800084cc:	10079073          	csrw	sstatus,a5
    800084d0:	ffffe097          	auipc	ra,0xffffe
    800084d4:	710080e7          	jalr	1808(ra) # 80006be0 <mycpu>
    800084d8:	07852783          	lw	a5,120(a0)
    800084dc:	02078663          	beqz	a5,80008508 <push_off+0x5c>
    800084e0:	ffffe097          	auipc	ra,0xffffe
    800084e4:	700080e7          	jalr	1792(ra) # 80006be0 <mycpu>
    800084e8:	07852783          	lw	a5,120(a0)
    800084ec:	01813083          	ld	ra,24(sp)
    800084f0:	01013403          	ld	s0,16(sp)
    800084f4:	0017879b          	addiw	a5,a5,1
    800084f8:	06f52c23          	sw	a5,120(a0)
    800084fc:	00813483          	ld	s1,8(sp)
    80008500:	02010113          	addi	sp,sp,32
    80008504:	00008067          	ret
    80008508:	0014d493          	srli	s1,s1,0x1
    8000850c:	ffffe097          	auipc	ra,0xffffe
    80008510:	6d4080e7          	jalr	1748(ra) # 80006be0 <mycpu>
    80008514:	0014f493          	andi	s1,s1,1
    80008518:	06952e23          	sw	s1,124(a0)
    8000851c:	fc5ff06f          	j	800084e0 <push_off+0x34>

0000000080008520 <pop_off>:
    80008520:	ff010113          	addi	sp,sp,-16
    80008524:	00813023          	sd	s0,0(sp)
    80008528:	00113423          	sd	ra,8(sp)
    8000852c:	01010413          	addi	s0,sp,16
    80008530:	ffffe097          	auipc	ra,0xffffe
    80008534:	6b0080e7          	jalr	1712(ra) # 80006be0 <mycpu>
    80008538:	100027f3          	csrr	a5,sstatus
    8000853c:	0027f793          	andi	a5,a5,2
    80008540:	04079663          	bnez	a5,8000858c <pop_off+0x6c>
    80008544:	07852783          	lw	a5,120(a0)
    80008548:	02f05a63          	blez	a5,8000857c <pop_off+0x5c>
    8000854c:	fff7871b          	addiw	a4,a5,-1
    80008550:	06e52c23          	sw	a4,120(a0)
    80008554:	00071c63          	bnez	a4,8000856c <pop_off+0x4c>
    80008558:	07c52783          	lw	a5,124(a0)
    8000855c:	00078863          	beqz	a5,8000856c <pop_off+0x4c>
    80008560:	100027f3          	csrr	a5,sstatus
    80008564:	0027e793          	ori	a5,a5,2
    80008568:	10079073          	csrw	sstatus,a5
    8000856c:	00813083          	ld	ra,8(sp)
    80008570:	00013403          	ld	s0,0(sp)
    80008574:	01010113          	addi	sp,sp,16
    80008578:	00008067          	ret
    8000857c:	00001517          	auipc	a0,0x1
    80008580:	0e450513          	addi	a0,a0,228 # 80009660 <digits+0x48>
    80008584:	fffff097          	auipc	ra,0xfffff
    80008588:	018080e7          	jalr	24(ra) # 8000759c <panic>
    8000858c:	00001517          	auipc	a0,0x1
    80008590:	0bc50513          	addi	a0,a0,188 # 80009648 <digits+0x30>
    80008594:	fffff097          	auipc	ra,0xfffff
    80008598:	008080e7          	jalr	8(ra) # 8000759c <panic>

000000008000859c <push_on>:
    8000859c:	fe010113          	addi	sp,sp,-32
    800085a0:	00813823          	sd	s0,16(sp)
    800085a4:	00113c23          	sd	ra,24(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	02010413          	addi	s0,sp,32
    800085b0:	100024f3          	csrr	s1,sstatus
    800085b4:	100027f3          	csrr	a5,sstatus
    800085b8:	0027e793          	ori	a5,a5,2
    800085bc:	10079073          	csrw	sstatus,a5
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	620080e7          	jalr	1568(ra) # 80006be0 <mycpu>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	02078663          	beqz	a5,800085f8 <push_on+0x5c>
    800085d0:	ffffe097          	auipc	ra,0xffffe
    800085d4:	610080e7          	jalr	1552(ra) # 80006be0 <mycpu>
    800085d8:	07852783          	lw	a5,120(a0)
    800085dc:	01813083          	ld	ra,24(sp)
    800085e0:	01013403          	ld	s0,16(sp)
    800085e4:	0017879b          	addiw	a5,a5,1
    800085e8:	06f52c23          	sw	a5,120(a0)
    800085ec:	00813483          	ld	s1,8(sp)
    800085f0:	02010113          	addi	sp,sp,32
    800085f4:	00008067          	ret
    800085f8:	0014d493          	srli	s1,s1,0x1
    800085fc:	ffffe097          	auipc	ra,0xffffe
    80008600:	5e4080e7          	jalr	1508(ra) # 80006be0 <mycpu>
    80008604:	0014f493          	andi	s1,s1,1
    80008608:	06952e23          	sw	s1,124(a0)
    8000860c:	fc5ff06f          	j	800085d0 <push_on+0x34>

0000000080008610 <pop_on>:
    80008610:	ff010113          	addi	sp,sp,-16
    80008614:	00813023          	sd	s0,0(sp)
    80008618:	00113423          	sd	ra,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	ffffe097          	auipc	ra,0xffffe
    80008624:	5c0080e7          	jalr	1472(ra) # 80006be0 <mycpu>
    80008628:	100027f3          	csrr	a5,sstatus
    8000862c:	0027f793          	andi	a5,a5,2
    80008630:	04078463          	beqz	a5,80008678 <pop_on+0x68>
    80008634:	07852783          	lw	a5,120(a0)
    80008638:	02f05863          	blez	a5,80008668 <pop_on+0x58>
    8000863c:	fff7879b          	addiw	a5,a5,-1
    80008640:	06f52c23          	sw	a5,120(a0)
    80008644:	07853783          	ld	a5,120(a0)
    80008648:	00079863          	bnez	a5,80008658 <pop_on+0x48>
    8000864c:	100027f3          	csrr	a5,sstatus
    80008650:	ffd7f793          	andi	a5,a5,-3
    80008654:	10079073          	csrw	sstatus,a5
    80008658:	00813083          	ld	ra,8(sp)
    8000865c:	00013403          	ld	s0,0(sp)
    80008660:	01010113          	addi	sp,sp,16
    80008664:	00008067          	ret
    80008668:	00001517          	auipc	a0,0x1
    8000866c:	02050513          	addi	a0,a0,32 # 80009688 <digits+0x70>
    80008670:	fffff097          	auipc	ra,0xfffff
    80008674:	f2c080e7          	jalr	-212(ra) # 8000759c <panic>
    80008678:	00001517          	auipc	a0,0x1
    8000867c:	ff050513          	addi	a0,a0,-16 # 80009668 <digits+0x50>
    80008680:	fffff097          	auipc	ra,0xfffff
    80008684:	f1c080e7          	jalr	-228(ra) # 8000759c <panic>

0000000080008688 <__memset>:
    80008688:	ff010113          	addi	sp,sp,-16
    8000868c:	00813423          	sd	s0,8(sp)
    80008690:	01010413          	addi	s0,sp,16
    80008694:	1a060e63          	beqz	a2,80008850 <__memset+0x1c8>
    80008698:	40a007b3          	neg	a5,a0
    8000869c:	0077f793          	andi	a5,a5,7
    800086a0:	00778693          	addi	a3,a5,7
    800086a4:	00b00813          	li	a6,11
    800086a8:	0ff5f593          	andi	a1,a1,255
    800086ac:	fff6071b          	addiw	a4,a2,-1
    800086b0:	1b06e663          	bltu	a3,a6,8000885c <__memset+0x1d4>
    800086b4:	1cd76463          	bltu	a4,a3,8000887c <__memset+0x1f4>
    800086b8:	1a078e63          	beqz	a5,80008874 <__memset+0x1ec>
    800086bc:	00b50023          	sb	a1,0(a0)
    800086c0:	00100713          	li	a4,1
    800086c4:	1ae78463          	beq	a5,a4,8000886c <__memset+0x1e4>
    800086c8:	00b500a3          	sb	a1,1(a0)
    800086cc:	00200713          	li	a4,2
    800086d0:	1ae78a63          	beq	a5,a4,80008884 <__memset+0x1fc>
    800086d4:	00b50123          	sb	a1,2(a0)
    800086d8:	00300713          	li	a4,3
    800086dc:	18e78463          	beq	a5,a4,80008864 <__memset+0x1dc>
    800086e0:	00b501a3          	sb	a1,3(a0)
    800086e4:	00400713          	li	a4,4
    800086e8:	1ae78263          	beq	a5,a4,8000888c <__memset+0x204>
    800086ec:	00b50223          	sb	a1,4(a0)
    800086f0:	00500713          	li	a4,5
    800086f4:	1ae78063          	beq	a5,a4,80008894 <__memset+0x20c>
    800086f8:	00b502a3          	sb	a1,5(a0)
    800086fc:	00700713          	li	a4,7
    80008700:	18e79e63          	bne	a5,a4,8000889c <__memset+0x214>
    80008704:	00b50323          	sb	a1,6(a0)
    80008708:	00700e93          	li	t4,7
    8000870c:	00859713          	slli	a4,a1,0x8
    80008710:	00e5e733          	or	a4,a1,a4
    80008714:	01059e13          	slli	t3,a1,0x10
    80008718:	01c76e33          	or	t3,a4,t3
    8000871c:	01859313          	slli	t1,a1,0x18
    80008720:	006e6333          	or	t1,t3,t1
    80008724:	02059893          	slli	a7,a1,0x20
    80008728:	40f60e3b          	subw	t3,a2,a5
    8000872c:	011368b3          	or	a7,t1,a7
    80008730:	02859813          	slli	a6,a1,0x28
    80008734:	0108e833          	or	a6,a7,a6
    80008738:	03059693          	slli	a3,a1,0x30
    8000873c:	003e589b          	srliw	a7,t3,0x3
    80008740:	00d866b3          	or	a3,a6,a3
    80008744:	03859713          	slli	a4,a1,0x38
    80008748:	00389813          	slli	a6,a7,0x3
    8000874c:	00f507b3          	add	a5,a0,a5
    80008750:	00e6e733          	or	a4,a3,a4
    80008754:	000e089b          	sext.w	a7,t3
    80008758:	00f806b3          	add	a3,a6,a5
    8000875c:	00e7b023          	sd	a4,0(a5)
    80008760:	00878793          	addi	a5,a5,8
    80008764:	fed79ce3          	bne	a5,a3,8000875c <__memset+0xd4>
    80008768:	ff8e7793          	andi	a5,t3,-8
    8000876c:	0007871b          	sext.w	a4,a5
    80008770:	01d787bb          	addw	a5,a5,t4
    80008774:	0ce88e63          	beq	a7,a4,80008850 <__memset+0x1c8>
    80008778:	00f50733          	add	a4,a0,a5
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	0017871b          	addiw	a4,a5,1
    80008784:	0cc77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	0027871b          	addiw	a4,a5,2
    80008794:	0ac77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	0037871b          	addiw	a4,a5,3
    800087a4:	0ac77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	0047871b          	addiw	a4,a5,4
    800087b4:	08c77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	0057871b          	addiw	a4,a5,5
    800087c4:	08c77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	0067871b          	addiw	a4,a5,6
    800087d4:	06c77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	0077871b          	addiw	a4,a5,7
    800087e4:	06c77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	0087871b          	addiw	a4,a5,8
    800087f4:	04c77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	0097871b          	addiw	a4,a5,9
    80008804:	04c77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008808:	00e50733          	add	a4,a0,a4
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	00a7871b          	addiw	a4,a5,10
    80008814:	02c77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	00b7871b          	addiw	a4,a5,11
    80008824:	02c77663          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	00c7871b          	addiw	a4,a5,12
    80008834:	00c77e63          	bgeu	a4,a2,80008850 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	00d7879b          	addiw	a5,a5,13
    80008844:	00c7f663          	bgeu	a5,a2,80008850 <__memset+0x1c8>
    80008848:	00f507b3          	add	a5,a0,a5
    8000884c:	00b78023          	sb	a1,0(a5)
    80008850:	00813403          	ld	s0,8(sp)
    80008854:	01010113          	addi	sp,sp,16
    80008858:	00008067          	ret
    8000885c:	00b00693          	li	a3,11
    80008860:	e55ff06f          	j	800086b4 <__memset+0x2c>
    80008864:	00300e93          	li	t4,3
    80008868:	ea5ff06f          	j	8000870c <__memset+0x84>
    8000886c:	00100e93          	li	t4,1
    80008870:	e9dff06f          	j	8000870c <__memset+0x84>
    80008874:	00000e93          	li	t4,0
    80008878:	e95ff06f          	j	8000870c <__memset+0x84>
    8000887c:	00000793          	li	a5,0
    80008880:	ef9ff06f          	j	80008778 <__memset+0xf0>
    80008884:	00200e93          	li	t4,2
    80008888:	e85ff06f          	j	8000870c <__memset+0x84>
    8000888c:	00400e93          	li	t4,4
    80008890:	e7dff06f          	j	8000870c <__memset+0x84>
    80008894:	00500e93          	li	t4,5
    80008898:	e75ff06f          	j	8000870c <__memset+0x84>
    8000889c:	00600e93          	li	t4,6
    800088a0:	e6dff06f          	j	8000870c <__memset+0x84>

00000000800088a4 <__memmove>:
    800088a4:	ff010113          	addi	sp,sp,-16
    800088a8:	00813423          	sd	s0,8(sp)
    800088ac:	01010413          	addi	s0,sp,16
    800088b0:	0e060863          	beqz	a2,800089a0 <__memmove+0xfc>
    800088b4:	fff6069b          	addiw	a3,a2,-1
    800088b8:	0006881b          	sext.w	a6,a3
    800088bc:	0ea5e863          	bltu	a1,a0,800089ac <__memmove+0x108>
    800088c0:	00758713          	addi	a4,a1,7
    800088c4:	00a5e7b3          	or	a5,a1,a0
    800088c8:	40a70733          	sub	a4,a4,a0
    800088cc:	0077f793          	andi	a5,a5,7
    800088d0:	00f73713          	sltiu	a4,a4,15
    800088d4:	00174713          	xori	a4,a4,1
    800088d8:	0017b793          	seqz	a5,a5
    800088dc:	00e7f7b3          	and	a5,a5,a4
    800088e0:	10078863          	beqz	a5,800089f0 <__memmove+0x14c>
    800088e4:	00900793          	li	a5,9
    800088e8:	1107f463          	bgeu	a5,a6,800089f0 <__memmove+0x14c>
    800088ec:	0036581b          	srliw	a6,a2,0x3
    800088f0:	fff8081b          	addiw	a6,a6,-1
    800088f4:	02081813          	slli	a6,a6,0x20
    800088f8:	01d85893          	srli	a7,a6,0x1d
    800088fc:	00858813          	addi	a6,a1,8
    80008900:	00058793          	mv	a5,a1
    80008904:	00050713          	mv	a4,a0
    80008908:	01088833          	add	a6,a7,a6
    8000890c:	0007b883          	ld	a7,0(a5)
    80008910:	00878793          	addi	a5,a5,8
    80008914:	00870713          	addi	a4,a4,8
    80008918:	ff173c23          	sd	a7,-8(a4)
    8000891c:	ff0798e3          	bne	a5,a6,8000890c <__memmove+0x68>
    80008920:	ff867713          	andi	a4,a2,-8
    80008924:	02071793          	slli	a5,a4,0x20
    80008928:	0207d793          	srli	a5,a5,0x20
    8000892c:	00f585b3          	add	a1,a1,a5
    80008930:	40e686bb          	subw	a3,a3,a4
    80008934:	00f507b3          	add	a5,a0,a5
    80008938:	06e60463          	beq	a2,a4,800089a0 <__memmove+0xfc>
    8000893c:	0005c703          	lbu	a4,0(a1)
    80008940:	00e78023          	sb	a4,0(a5)
    80008944:	04068e63          	beqz	a3,800089a0 <__memmove+0xfc>
    80008948:	0015c603          	lbu	a2,1(a1)
    8000894c:	00100713          	li	a4,1
    80008950:	00c780a3          	sb	a2,1(a5)
    80008954:	04e68663          	beq	a3,a4,800089a0 <__memmove+0xfc>
    80008958:	0025c603          	lbu	a2,2(a1)
    8000895c:	00200713          	li	a4,2
    80008960:	00c78123          	sb	a2,2(a5)
    80008964:	02e68e63          	beq	a3,a4,800089a0 <__memmove+0xfc>
    80008968:	0035c603          	lbu	a2,3(a1)
    8000896c:	00300713          	li	a4,3
    80008970:	00c781a3          	sb	a2,3(a5)
    80008974:	02e68663          	beq	a3,a4,800089a0 <__memmove+0xfc>
    80008978:	0045c603          	lbu	a2,4(a1)
    8000897c:	00400713          	li	a4,4
    80008980:	00c78223          	sb	a2,4(a5)
    80008984:	00e68e63          	beq	a3,a4,800089a0 <__memmove+0xfc>
    80008988:	0055c603          	lbu	a2,5(a1)
    8000898c:	00500713          	li	a4,5
    80008990:	00c782a3          	sb	a2,5(a5)
    80008994:	00e68663          	beq	a3,a4,800089a0 <__memmove+0xfc>
    80008998:	0065c703          	lbu	a4,6(a1)
    8000899c:	00e78323          	sb	a4,6(a5)
    800089a0:	00813403          	ld	s0,8(sp)
    800089a4:	01010113          	addi	sp,sp,16
    800089a8:	00008067          	ret
    800089ac:	02061713          	slli	a4,a2,0x20
    800089b0:	02075713          	srli	a4,a4,0x20
    800089b4:	00e587b3          	add	a5,a1,a4
    800089b8:	f0f574e3          	bgeu	a0,a5,800088c0 <__memmove+0x1c>
    800089bc:	02069613          	slli	a2,a3,0x20
    800089c0:	02065613          	srli	a2,a2,0x20
    800089c4:	fff64613          	not	a2,a2
    800089c8:	00e50733          	add	a4,a0,a4
    800089cc:	00c78633          	add	a2,a5,a2
    800089d0:	fff7c683          	lbu	a3,-1(a5)
    800089d4:	fff78793          	addi	a5,a5,-1
    800089d8:	fff70713          	addi	a4,a4,-1
    800089dc:	00d70023          	sb	a3,0(a4)
    800089e0:	fec798e3          	bne	a5,a2,800089d0 <__memmove+0x12c>
    800089e4:	00813403          	ld	s0,8(sp)
    800089e8:	01010113          	addi	sp,sp,16
    800089ec:	00008067          	ret
    800089f0:	02069713          	slli	a4,a3,0x20
    800089f4:	02075713          	srli	a4,a4,0x20
    800089f8:	00170713          	addi	a4,a4,1
    800089fc:	00e50733          	add	a4,a0,a4
    80008a00:	00050793          	mv	a5,a0
    80008a04:	0005c683          	lbu	a3,0(a1)
    80008a08:	00178793          	addi	a5,a5,1
    80008a0c:	00158593          	addi	a1,a1,1
    80008a10:	fed78fa3          	sb	a3,-1(a5)
    80008a14:	fee798e3          	bne	a5,a4,80008a04 <__memmove+0x160>
    80008a18:	f89ff06f          	j	800089a0 <__memmove+0xfc>
	...
