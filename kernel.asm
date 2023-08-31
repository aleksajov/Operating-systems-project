
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	99013103          	ld	sp,-1648(sp) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	171060ef          	jal	ra,8000698c <start>

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
    800010a8:	0bc010ef          	jal	ra,80002164 <_ZN5Riscv20handleEcallExceptionEv>

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
    800012b8:	4c9000ef          	jal	ra,80001f80 <_ZN5Riscv17hardwareInterruptEv>

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
//


#include "../h/syscall_c.hpp"

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
    8000176c:	898080e7          	jalr	-1896(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    newElem->next= nullptr;
    80001774:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	2887b783          	ld	a5,648(a5) # 8000ba00 <_ZN9Scheduler5firstE>
    80001780:	02078663          	beqz	a5,800017ac <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	27c78793          	addi	a5,a5,636 # 8000ba00 <_ZN9Scheduler5firstE>
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
    800017b0:	25478793          	addi	a5,a5,596 # 8000ba00 <_ZN9Scheduler5firstE>
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
    800017d8:	22c53503          	ld	a0,556(a0) # 8000ba00 <_ZN9Scheduler5firstE>
    800017dc:	04050263          	beqz	a0,80001820 <_ZN9Scheduler3getEv+0x60>

    Elem* elem=first;
    TCB* t=elem->t;
    800017e0:	00053483          	ld	s1,0(a0)

    first=first->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	0000a717          	auipc	a4,0xa
    800017ec:	20f73c23          	sd	a5,536(a4) # 8000ba00 <_ZN9Scheduler5firstE>
    if(first==nullptr)last=nullptr;
    800017f0:	02078263          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x54>


    MemoryAllocator::free(elem);
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	8e0080e7          	jalr	-1824(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>

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
    80001818:	1e07ba23          	sd	zero,500(a5) # 8000ba08 <_ZN9Scheduler4lastE>
    8000181c:	fd9ff06f          	j	800017f4 <_ZN9Scheduler3getEv+0x34>
    if(first==nullptr)return nullptr;
    80001820:	00050493          	mv	s1,a0
    80001824:	fd9ff06f          	j	800017fc <_ZN9Scheduler3getEv+0x3c>

0000000080001828 <_Z10idleThreadPv>:
#include "../test/printing.hpp"
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
    80001858:	5b0080e7          	jalr	1456(ra) # 80005e04 <_Z8userMainv>
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
    80001888:	9bc080e7          	jalr	-1604(ra) # 80003240 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    8000188c:	0000a797          	auipc	a5,0xa
    80001890:	0e47b783          	ld	a5,228(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800018a4:	1a0080e7          	jalr	416(ra) # 80001a40 <_Znwm>
    800018a8:	00050493          	mv	s1,a0
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	368080e7          	jalr	872(ra) # 80002c14 <_ZN13BoundedBufferC1Ev>
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	0fc7b783          	ld	a5,252(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018bc:	0097b023          	sd	s1,0(a5)
    _console::outputBuff=new BoundedBuffer();
    800018c0:	02800513          	li	a0,40
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	17c080e7          	jalr	380(ra) # 80001a40 <_Znwm>
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	344080e7          	jalr	836(ra) # 80002c14 <_ZN13BoundedBufferC1Ev>
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	0907b783          	ld	a5,144(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018e0:	0097b023          	sd	s1,0(a5)


    TCB::newThrUserMode=false;
    800018e4:	0000a497          	auipc	s1,0xa
    800018e8:	0b44b483          	ld	s1,180(s1) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001908:	09c7b783          	ld	a5,156(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80001934:	0485b583          	ld	a1,72(a1) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x30>
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


    thread_dispatch();
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
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800019e4:	00200793          	li	a5,2
    800019e8:	1007b073          	csrc	sstatus,a5
    //delete Riscv::headSleeping;


    Riscv::mc_sstatus(Riscv::BitMaskSStatus::SSTATUS_SIE);
    return 0;
    800019ec:	00000513          	li	a0,0
    800019f0:	03813083          	ld	ra,56(sp)
    800019f4:	03013403          	ld	s0,48(sp)
    800019f8:	02813483          	ld	s1,40(sp)
    800019fc:	02013903          	ld	s2,32(sp)
    80001a00:	04010113          	addi	sp,sp,64
    80001a04:	00008067          	ret
    80001a08:	00050913          	mv	s2,a0
    _console::inputBuff=new BoundedBuffer();
    80001a0c:	00048513          	mv	a0,s1
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	080080e7          	jalr	128(ra) # 80001a90 <_ZdlPv>
    80001a18:	00090513          	mv	a0,s2
    80001a1c:	0000b097          	auipc	ra,0xb
    80001a20:	14c080e7          	jalr	332(ra) # 8000cb68 <_Unwind_Resume>
    80001a24:	00050913          	mv	s2,a0
    _console::outputBuff=new BoundedBuffer();
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	064080e7          	jalr	100(ra) # 80001a90 <_ZdlPv>
    80001a34:	00090513          	mv	a0,s2
    80001a38:	0000b097          	auipc	ra,0xb
    80001a3c:	130080e7          	jalr	304(ra) # 8000cb68 <_Unwind_Resume>

0000000080001a40 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi 7
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00113423          	sd	ra,8(sp)
    80001a48:	00813023          	sd	s0,0(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	964080e7          	jalr	-1692(ra) # 800013b4 <_Z9mem_allocm>
}
    80001a58:	00813083          	ld	ra,8(sp)
    80001a5c:	00013403          	ld	s0,0(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <_Znam>:

void *operator new[](uint64 n)
{
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00113423          	sd	ra,8(sp)
    80001a70:	00813023          	sd	s0,0(sp)
    80001a74:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	93c080e7          	jalr	-1732(ra) # 800013b4 <_Z9mem_allocm>
}
    80001a80:	00813083          	ld	ra,8(sp)
    80001a84:	00013403          	ld	s0,0(sp)
    80001a88:	01010113          	addi	sp,sp,16
    80001a8c:	00008067          	ret

0000000080001a90 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00113423          	sd	ra,8(sp)
    80001a98:	00813023          	sd	s0,0(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	954080e7          	jalr	-1708(ra) # 800013f4 <_Z8mem_freePv>
}
    80001aa8:	00813083          	ld	ra,8(sp)
    80001aac:	00013403          	ld	s0,0(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	92c080e7          	jalr	-1748(ra) # 800013f4 <_Z8mem_freePv>
    80001ad0:	00813083          	ld	ra,8(sp)
    80001ad4:	00013403          	ld	s0,0(sp)
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret

0000000080001ae0 <_ZN6Thread22wrapperPolymorphThreadEPv>:

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00113423          	sd	ra,8(sp)
    80001ae8:	00813023          	sd	s0,0(sp)
    80001aec:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001af0:	00053783          	ld	a5,0(a0)
    80001af4:	0107b783          	ld	a5,16(a5)
    80001af8:	000780e7          	jalr	a5
}
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    80001b20:	00050493          	mv	s1,a0
    80001b24:	0000a797          	auipc	a5,0xa
    80001b28:	bf478793          	addi	a5,a5,-1036 # 8000b718 <_ZTV6Thread+0x10>
    80001b2c:	00f53023          	sd	a5,0(a0)
    thread_join(myHandle);
    80001b30:	00853503          	ld	a0,8(a0)
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	a54080e7          	jalr	-1452(ra) # 80001588 <_Z11thread_joinP3TCB>
    delete myHandle;
    80001b3c:	0084b503          	ld	a0,8(s1)
    80001b40:	00050863          	beqz	a0,80001b50 <_ZN6ThreadD1Ev+0x44>
    80001b44:	00053783          	ld	a5,0(a0)
    80001b48:	0087b783          	ld	a5,8(a5)
    80001b4c:	000780e7          	jalr	a5
}
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_ZN14PeriodicThreadD1Ev>:

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}

PeriodicThread::~PeriodicThread() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    80001b74:	0000a717          	auipc	a4,0xa
    80001b78:	bec70713          	addi	a4,a4,-1044 # 8000b760 <_ZTV14PeriodicThread+0x10>
    80001b7c:	00e53023          	sd	a4,0(a0)
    period=0;
    80001b80:	02053023          	sd	zero,32(a0)
PeriodicThread::~PeriodicThread() {
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	f88080e7          	jalr	-120(ra) # 80001b0c <_ZN6ThreadD1Ev>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	00913423          	sd	s1,8(sp)
    80001bac:	02010413          	addi	s0,sp,32
    80001bb0:	00050493          	mv	s1,a0
}
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	f58080e7          	jalr	-168(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80001bbc:	00048513          	mv	a0,s1
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	ed0080e7          	jalr	-304(ra) # 80001a90 <_ZdlPv>
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN14PeriodicThreadD0Ev>:
PeriodicThread::~PeriodicThread() {
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050493          	mv	s1,a0
}
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	f70080e7          	jalr	-144(ra) # 80001b64 <_ZN14PeriodicThreadD1Ev>
    80001bfc:	00048513          	mv	a0,s1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	e90080e7          	jalr	-368(ra) # 80001a90 <_ZdlPv>
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	01013403          	ld	s0,16(sp)
    80001c10:	00813483          	ld	s1,8(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret

0000000080001c1c <_ZN14PeriodicThread3runEv>:

void PeriodicThread::run() {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    while(period!=0){
    80001c34:	0204b783          	ld	a5,32(s1)
    80001c38:	02078263          	beqz	a5,80001c5c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001c3c:	0004b783          	ld	a5,0(s1)
    80001c40:	0187b783          	ld	a5,24(a5)
    80001c44:	00048513          	mv	a0,s1
    80001c48:	000780e7          	jalr	a5
        time_sleep(period);
    80001c4c:	0204b503          	ld	a0,32(s1)
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	890080e7          	jalr	-1904(ra) # 800014e0 <_Z10time_sleepm>
    while(period!=0){
    80001c58:	fddff06f          	j	80001c34 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001c5c:	01813083          	ld	ra,24(sp)
    80001c60:	01013403          	ld	s0,16(sp)
    80001c64:	00813483          	ld	s1,8(sp)
    80001c68:	02010113          	addi	sp,sp,32
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    80001c80:	0000a797          	auipc	a5,0xa
    80001c84:	ac078793          	addi	a5,a5,-1344 # 8000b740 <_ZTV9Semaphore+0x10>
    80001c88:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001c8c:	00853503          	ld	a0,8(a0)
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	96c080e7          	jalr	-1684(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ca8:	fe010113          	addi	sp,sp,-32
    80001cac:	00113c23          	sd	ra,24(sp)
    80001cb0:	00813823          	sd	s0,16(sp)
    80001cb4:	00913423          	sd	s1,8(sp)
    80001cb8:	02010413          	addi	s0,sp,32
    80001cbc:	00050493          	mv	s1,a0
}
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	fb0080e7          	jalr	-80(ra) # 80001c70 <_ZN9SemaphoreD1Ev>
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	dc4080e7          	jalr	-572(ra) # 80001a90 <_ZdlPv>
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    80001cf4:	0000a797          	auipc	a5,0xa
    80001cf8:	a2478793          	addi	a5,a5,-1500 # 8000b718 <_ZTV6Thread+0x10>
    80001cfc:	00f53023          	sd	a5,0(a0)
    80001d00:	00053423          	sd	zero,8(a0)
    80001d04:	00b53823          	sd	a1,16(a0)
    80001d08:	00c53c23          	sd	a2,24(a0)
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN6Thread5startEv>:
int Thread::start() {
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00113423          	sd	ra,8(sp)
    80001d20:	00813023          	sd	s0,0(sp)
    80001d24:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001d28:	01853603          	ld	a2,24(a0)
    80001d2c:	01053583          	ld	a1,16(a0)
    80001d30:	00850513          	addi	a0,a0,8
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	700080e7          	jalr	1792(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001d3c:	00813083          	ld	ra,8(sp)
    80001d40:	00013403          	ld	s0,0(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00113423          	sd	ra,8(sp)
    80001d54:	00813023          	sd	s0,0(sp)
    80001d58:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	800080e7          	jalr	-2048(ra) # 8000155c <_Z15thread_dispatchv>
}
    80001d64:	00813083          	ld	ra,8(sp)
    80001d68:	00013403          	ld	s0,0(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813423          	sd	s0,8(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    80001d80:	0000a797          	auipc	a5,0xa
    80001d84:	99878793          	addi	a5,a5,-1640 # 8000b718 <_ZTV6Thread+0x10>
    80001d88:	00f53023          	sd	a5,0(a0)
    80001d8c:	00053423          	sd	zero,8(a0)
    80001d90:	00000797          	auipc	a5,0x0
    80001d94:	d5078793          	addi	a5,a5,-688 # 80001ae0 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80001d98:	00f53823          	sd	a5,16(a0)
    80001d9c:	00a53c23          	sd	a0,24(a0)
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_ZN6Thread4joinEv>:
void Thread::join() {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001dbc:	00853503          	ld	a0,8(a0)
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	7c8080e7          	jalr	1992(ra) # 80001588 <_Z11thread_joinP3TCB>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	6f8080e7          	jalr	1784(ra) # 800014e0 <_Z10time_sleepm>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	0000a797          	auipc	a5,0xa
    80001e14:	93078793          	addi	a5,a5,-1744 # 8000b740 <_ZTV9Semaphore+0x10>
    80001e18:	00f53023          	sd	a5,0(a0)
    80001e1c:	00053423          	sd	zero,8(a0)
    sem_open(&this->myHandle, init);
    80001e20:	00850513          	addi	a0,a0,8
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	794080e7          	jalr	1940(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e4c:	00853503          	ld	a0,8(a0)
    80001e50:	fffff097          	auipc	ra,0xfffff
    80001e54:	7f8080e7          	jalr	2040(ra) # 80001648 <_Z8sem_waitP4_sem>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e78:	00853503          	ld	a0,8(a0)
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	818080e7          	jalr	-2024(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80001e84:	00813083          	ld	ra,8(sp)
    80001e88:	00013403          	ld	s0,0(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813423          	sd	s0,8(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    period=0;
    80001ea0:	02053023          	sd	zero,32(a0)
}
    80001ea4:	00813403          	ld	s0,8(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001eb0:	fe010113          	addi	sp,sp,-32
    80001eb4:	00113c23          	sd	ra,24(sp)
    80001eb8:	00813823          	sd	s0,16(sp)
    80001ebc:	00913423          	sd	s1,8(sp)
    80001ec0:	01213023          	sd	s2,0(sp)
    80001ec4:	02010413          	addi	s0,sp,32
    80001ec8:	00050493          	mv	s1,a0
    80001ecc:	00058913          	mv	s2,a1
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	ea4080e7          	jalr	-348(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80001ed8:	0000a797          	auipc	a5,0xa
    80001edc:	88878793          	addi	a5,a5,-1912 # 8000b760 <_ZTV14PeriodicThread+0x10>
    80001ee0:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80001ee4:	0324b023          	sd	s2,32(s1)
}
    80001ee8:	01813083          	ld	ra,24(sp)
    80001eec:	01013403          	ld	s0,16(sp)
    80001ef0:	00813483          	ld	s1,8(sp)
    80001ef4:	00013903          	ld	s2,0(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret

0000000080001f00 <_ZN7Console4getcEv>:

char Console::getc() {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f10:	fffff097          	auipc	ra,0xfffff
    80001f14:	7d0080e7          	jalr	2000(ra) # 800016e0 <_Z4getcv>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	00813023          	sd	s0,0(sp)
    80001f34:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	7e4080e7          	jalr	2020(ra) # 8000171c <_Z4putcc>
}
    80001f40:	00813083          	ld	ra,8(sp)
    80001f44:	00013403          	ld	s0,0(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813423          	sd	s0,8(sp)
    80001f58:	01010413          	addi	s0,sp,16
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN5Riscv17hardwareInterruptEv>:
        w_sepc(sepc);
    }
    mc_sip(SIP_SSIP);
}

void Riscv::hardwareInterrupt() {
    80001f80:	fe010113          	addi	sp,sp,-32
    80001f84:	00113c23          	sd	ra,24(sp)
    80001f88:	00813823          	sd	s0,16(sp)
    80001f8c:	00913423          	sd	s1,8(sp)
    80001f90:	02010413          	addi	s0,sp,32
    int intNumber=plic_claim();
    80001f94:	00005097          	auipc	ra,0x5
    80001f98:	250080e7          	jalr	592(ra) # 800071e4 <plic_claim>
    80001f9c:	00050493          	mv	s1,a0

    if(intNumber==CONSOLE_IRQ){
    80001fa0:	00a00793          	li	a5,10
    80001fa4:	02f50263          	beq	a0,a5,80001fc8 <_ZN5Riscv17hardwareInterruptEv+0x48>
            char c= *(char*)CONSOLE_RX_DATA;
            _console::inputBuff_put(c);
        }
    }

    plic_complete(intNumber);
    80001fa8:	00048513          	mv	a0,s1
    80001fac:	00005097          	auipc	ra,0x5
    80001fb0:	270080e7          	jalr	624(ra) # 8000721c <plic_complete>
}
    80001fb4:	01813083          	ld	ra,24(sp)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	02010113          	addi	sp,sp,32
    80001fc4:	00008067          	ret
        while((!_console::inputBuff_full()) && ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)){
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	fc4080e7          	jalr	-60(ra) # 80002f8c <_ZN8_console14inputBuff_fullEv>
    80001fd0:	fc051ce3          	bnez	a0,80001fa8 <_ZN5Riscv17hardwareInterruptEv+0x28>
    80001fd4:	0000a797          	auipc	a5,0xa
    80001fd8:	9847b783          	ld	a5,-1660(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001fdc:	0007b783          	ld	a5,0(a5)
    80001fe0:	0007c783          	lbu	a5,0(a5)
    80001fe4:	0017f793          	andi	a5,a5,1
    80001fe8:	fc0780e3          	beqz	a5,80001fa8 <_ZN5Riscv17hardwareInterruptEv+0x28>
            char c= *(char*)CONSOLE_RX_DATA;
    80001fec:	0000a797          	auipc	a5,0xa
    80001ff0:	9647b783          	ld	a5,-1692(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ff4:	0007b783          	ld	a5,0(a5)
            _console::inputBuff_put(c);
    80001ff8:	0007c503          	lbu	a0,0(a5)
    80001ffc:	00001097          	auipc	ra,0x1
    80002000:	e6c080e7          	jalr	-404(ra) # 80002e68 <_ZN8_console13inputBuff_putEc>
        while((!_console::inputBuff_full()) && ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)){
    80002004:	fc5ff06f          	j	80001fc8 <_ZN5Riscv17hardwareInterruptEv+0x48>

0000000080002008 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002014:	02000793          	li	a5,32
    80002018:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
    8000201c:	0000a797          	auipc	a5,0xa
    80002020:	97c7b783          	ld	a5,-1668(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002024:	0007c783          	lbu	a5,0(a5)
    80002028:	02078063          	beqz	a5,80002048 <_ZN5Riscv10popSppSpieEv+0x40>
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    8000202c:	10000793          	li	a5,256
    80002030:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    80002034:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002038:	10200073          	sret
}
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002048:	10000793          	li	a5,256
    8000204c:	1007a073          	csrs	sstatus,a5
}
    80002050:	fe5ff06f          	j	80002034 <_ZN5Riscv10popSppSpieEv+0x2c>

0000000080002054 <_ZN5Riscv10putToSleepEm>:


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    80002054:	10050463          	beqz	a0,8000215c <_ZN5Riscv10putToSleepEm+0x108>
int Riscv::putToSleep(time_t time) {
    80002058:	fe010113          	addi	sp,sp,-32
    8000205c:	00113c23          	sd	ra,24(sp)
    80002060:	00813823          	sd	s0,16(sp)
    80002064:	00913423          	sd	s1,8(sp)
    80002068:	01213023          	sd	s2,0(sp)
    8000206c:	02010413          	addi	s0,sp,32
    80002070:	00050493          	mv	s1,a0
    TCB::running->setSleeping(true);
    80002074:	0000a917          	auipc	s2,0xa
    80002078:	92c93903          	ld	s2,-1748(s2) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000207c:	00093783          	ld	a5,0(s2)
    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    80002080:	00100713          	li	a4,1
    80002084:	04e780a3          	sb	a4,65(a5)

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002088:	00100513          	li	a0,1
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	f74080e7          	jalr	-140(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
    newElem->thr=TCB::running;
    80002094:	00093783          	ld	a5,0(s2)
    80002098:	00f53023          	sd	a5,0(a0)

    if(!Riscv::headSleeping){
    8000209c:	0000a617          	auipc	a2,0xa
    800020a0:	97463603          	ld	a2,-1676(a2) # 8000ba10 <_ZN5Riscv12headSleepingE>
    800020a4:	04060c63          	beqz	a2,800020fc <_ZN5Riscv10putToSleepEm+0xa8>
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
    800020a8:	00863703          	ld	a4,8(a2)
    800020ac:	06976263          	bltu	a4,s1,80002110 <_ZN5Riscv10putToSleepEm+0xbc>
            newElem->toSleepRel=time;
    800020b0:	00953423          	sd	s1,8(a0)
            newElem->next=Riscv::headSleeping;
    800020b4:	00c53823          	sd	a2,16(a0)
            headSleeping->toSleepRel-=time;
    800020b8:	00863703          	ld	a4,8(a2)
    800020bc:	40970733          	sub	a4,a4,s1
    800020c0:	00e63423          	sd	a4,8(a2)
            headSleeping=newElem;
    800020c4:	0000a797          	auipc	a5,0xa
    800020c8:	94a7b623          	sd	a0,-1716(a5) # 8000ba10 <_ZN5Riscv12headSleepingE>
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    800020cc:	0000a797          	auipc	a5,0xa
    800020d0:	8b47b783          	ld	a5,-1868(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x38>
    800020d4:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	5ec080e7          	jalr	1516(ra) # 800026c4 <_ZN3TCB8dispatchEv>
    return 0;
    800020e0:	00000513          	li	a0,0
}
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	00013903          	ld	s2,0(sp)
    800020f4:	02010113          	addi	sp,sp,32
    800020f8:	00008067          	ret
        newElem->toSleepRel=time;
    800020fc:	00953423          	sd	s1,8(a0)
        newElem->next=nullptr;
    80002100:	00053823          	sd	zero,16(a0)
        headSleeping=newElem;
    80002104:	0000a797          	auipc	a5,0xa
    80002108:	90a7b623          	sd	a0,-1780(a5) # 8000ba10 <_ZN5Riscv12headSleepingE>
    8000210c:	fc1ff06f          	j	800020cc <_ZN5Riscv10putToSleepEm+0x78>
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
    80002110:	40e48733          	sub	a4,s1,a4
            SleepingElem* pom=headSleeping->next;
    80002114:	01063783          	ld	a5,16(a2)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80002118:	00078e63          	beqz	a5,80002134 <_ZN5Riscv10putToSleepEm+0xe0>
    8000211c:	0087b683          	ld	a3,8(a5)
    80002120:	00e6fa63          	bgeu	a3,a4,80002134 <_ZN5Riscv10putToSleepEm+0xe0>
                relTime-=pom->toSleepRel;
    80002124:	40d70733          	sub	a4,a4,a3
                prev=pom;
    80002128:	00078613          	mv	a2,a5
                pom=pom->next;
    8000212c:	0107b783          	ld	a5,16(a5)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80002130:	fe9ff06f          	j	80002118 <_ZN5Riscv10putToSleepEm+0xc4>
            if(pom==nullptr){
    80002134:	02078063          	beqz	a5,80002154 <_ZN5Riscv10putToSleepEm+0x100>
                newElem->next=pom;
    80002138:	00f53823          	sd	a5,16(a0)
                pom->toSleepRel-=relTime;
    8000213c:	0087b683          	ld	a3,8(a5)
    80002140:	40e686b3          	sub	a3,a3,a4
    80002144:	00d7b423          	sd	a3,8(a5)
            newElem->toSleepRel=relTime;
    80002148:	00e53423          	sd	a4,8(a0)
            prev->next=newElem;
    8000214c:	00a63823          	sd	a0,16(a2)
    80002150:	f7dff06f          	j	800020cc <_ZN5Riscv10putToSleepEm+0x78>
                newElem->next= nullptr;
    80002154:	00053823          	sd	zero,16(a0)
    80002158:	ff1ff06f          	j	80002148 <_ZN5Riscv10putToSleepEm+0xf4>
    if(time<=0)return -1;
    8000215c:	fff00513          	li	a0,-1
}
    80002160:	00008067          	ret

0000000080002164 <_ZN5Riscv20handleEcallExceptionEv>:
void Riscv::handleEcallException(){
    80002164:	f9010113          	addi	sp,sp,-112
    80002168:	06113423          	sd	ra,104(sp)
    8000216c:	06813023          	sd	s0,96(sp)
    80002170:	04913c23          	sd	s1,88(sp)
    80002174:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002178:	142027f3          	csrr	a5,scause
    8000217c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002180:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    80002184:	05043783          	ld	a5,80(s0)
    80002188:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    8000218c:	05843783          	ld	a5,88(s0)
    80002190:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    80002194:	06043783          	ld	a5,96(s0)
    80002198:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    8000219c:	06843783          	ld	a5,104(s0)
    800021a0:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    800021a4:	07043783          	ld	a5,112(s0)
    800021a8:	faf43c23          	sd	a5,-72(s0)
    if(scause==0x09UL || scause==0x08UL){
    800021ac:	ff848713          	addi	a4,s1,-8
    800021b0:	00100793          	li	a5,1
    800021b4:	26e7ea63          	bltu	a5,a4,80002428 <_ZN5Riscv20handleEcallExceptionEv+0x2c4>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800021b8:	141027f3          	csrr	a5,sepc
    800021bc:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800021c0:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc=r_sepc()+4;
    800021c4:	00478793          	addi	a5,a5,4
    800021c8:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800021cc:	100027f3          	csrr	a5,sstatus
    800021d0:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800021d4:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus=r_sstatus();
    800021d8:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    800021dc:	fd843703          	ld	a4,-40(s0)
    800021e0:	00100793          	li	a5,1
    800021e4:	0af70463          	beq	a4,a5,8000228c <_ZN5Riscv20handleEcallExceptionEv+0x128>
        else if(a0==0x02){
    800021e8:	fd843703          	ld	a4,-40(s0)
    800021ec:	00200793          	li	a5,2
    800021f0:	0cf70863          	beq	a4,a5,800022c0 <_ZN5Riscv20handleEcallExceptionEv+0x15c>
        else if(a0==0x11){
    800021f4:	fd843703          	ld	a4,-40(s0)
    800021f8:	01100793          	li	a5,17
    800021fc:	0cf70c63          	beq	a4,a5,800022d4 <_ZN5Riscv20handleEcallExceptionEv+0x170>
        else if(a0==0x12){
    80002200:	fd843703          	ld	a4,-40(s0)
    80002204:	01200793          	li	a5,18
    80002208:	10f70a63          	beq	a4,a5,8000231c <_ZN5Riscv20handleEcallExceptionEv+0x1b8>
        else if(a0==0x13){
    8000220c:	fd843703          	ld	a4,-40(s0)
    80002210:	01300793          	li	a5,19
    80002214:	10f70c63          	beq	a4,a5,8000232c <_ZN5Riscv20handleEcallExceptionEv+0x1c8>
        else if(a0==0x41){
    80002218:	fd843703          	ld	a4,-40(s0)
    8000221c:	04100793          	li	a5,65
    80002220:	12f70263          	beq	a4,a5,80002344 <_ZN5Riscv20handleEcallExceptionEv+0x1e0>
        else if(a0==0x42){
    80002224:	fd843703          	ld	a4,-40(s0)
    80002228:	04200793          	li	a5,66
    8000222c:	12f70463          	beq	a4,a5,80002354 <_ZN5Riscv20handleEcallExceptionEv+0x1f0>
        else if(a0==0x21){
    80002230:	fd843703          	ld	a4,-40(s0)
    80002234:	02100793          	li	a5,33
    80002238:	12f70863          	beq	a4,a5,80002368 <_ZN5Riscv20handleEcallExceptionEv+0x204>
        else if(a0==0x23){
    8000223c:	fd843703          	ld	a4,-40(s0)
    80002240:	02300793          	li	a5,35
    80002244:	16f70463          	beq	a4,a5,800023ac <_ZN5Riscv20handleEcallExceptionEv+0x248>
        else if(a0==0x22){
    80002248:	fd843703          	ld	a4,-40(s0)
    8000224c:	02200793          	li	a5,34
    80002250:	18f70063          	beq	a4,a5,800023d0 <_ZN5Riscv20handleEcallExceptionEv+0x26c>
        else if(a0==0x24){
    80002254:	fd843703          	ld	a4,-40(s0)
    80002258:	02400793          	li	a5,36
    8000225c:	18f70c63          	beq	a4,a5,800023f4 <_ZN5Riscv20handleEcallExceptionEv+0x290>
        else if(a0==0x14){
    80002260:	fd843703          	ld	a4,-40(s0)
    80002264:	01400793          	li	a5,20
    80002268:	1af70863          	beq	a4,a5,80002418 <_ZN5Riscv20handleEcallExceptionEv+0x2b4>
        else if(a0==0x31){
    8000226c:	fd843703          	ld	a4,-40(s0)
    80002270:	03100793          	li	a5,49
    80002274:	02f71463          	bne	a4,a5,8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            time_t time=(time_t)a1;
    80002278:	fd043503          	ld	a0,-48(s0)
            int stat=Riscv::putToSleep(time);
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	dd8080e7          	jalr	-552(ra) # 80002054 <_ZN5Riscv10putToSleepEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002284:	04a43823          	sd	a0,80(s0)
    80002288:	0140006f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            void *ptr=MemoryAllocator::alloc(a1);
    8000228c:	fd043503          	ld	a0,-48(s0)
    80002290:	00001097          	auipc	ra,0x1
    80002294:	d70080e7          	jalr	-656(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80002298:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    8000229c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800022a0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800022a4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800022a8:	14179073          	csrw	sepc,a5
}
    800022ac:	06813083          	ld	ra,104(sp)
    800022b0:	06013403          	ld	s0,96(sp)
    800022b4:	05813483          	ld	s1,88(sp)
    800022b8:	07010113          	addi	sp,sp,112
    800022bc:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    800022c0:	fd043503          	ld	a0,-48(s0)
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	e10080e7          	jalr	-496(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800022cc:	04a43823          	sd	a0,80(s0)
    800022d0:	fcdff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB** retHandle=(TCB**)a1;
    800022d4:	fd043483          	ld	s1,-48(s0)
            if(!retHandle)__asm__ volatile("sd %0, 0x50(fp)": : "r"(-2));
    800022d8:	00049863          	bnez	s1,800022e8 <_ZN5Riscv20handleEcallExceptionEv+0x184>
    800022dc:	ffe00793          	li	a5,-2
    800022e0:	04f43823          	sd	a5,80(s0)
    800022e4:	fb9ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                TCB* handle= TCB::createThread((TCB::Body)a2, (char*)a4, (void*)a3);
    800022e8:	fc843503          	ld	a0,-56(s0)
    800022ec:	fb843583          	ld	a1,-72(s0)
    800022f0:	fc043603          	ld	a2,-64(s0)
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	500080e7          	jalr	1280(ra) # 800027f4 <_ZN3TCB12createThreadEPFvPvEPcS0_>
                if(!handle){
    800022fc:	00050a63          	beqz	a0,80002310 <_ZN5Riscv20handleEcallExceptionEv+0x1ac>
                    *retHandle=handle;
    80002300:	00a4b023          	sd	a0,0(s1)
                    __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002304:	00000793          	li	a5,0
    80002308:	04f43823          	sd	a5,80(s0)
    8000230c:	f91ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                    __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002310:	fff00793          	li	a5,-1
    80002314:	04f43823          	sd	a5,80(s0)
    80002318:	f85ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            int stat=TCB::exit();
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	598080e7          	jalr	1432(ra) # 800028b4 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002324:	04a43823          	sd	a0,80(s0)
    80002328:	f75ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    8000232c:	00009797          	auipc	a5,0x9
    80002330:	6547b783          	ld	a5,1620(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002334:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	38c080e7          	jalr	908(ra) # 800026c4 <_ZN3TCB8dispatchEv>
    80002340:	f5dff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c= _console::inputBuff_take();
    80002344:	00001097          	auipc	ra,0x1
    80002348:	b58080e7          	jalr	-1192(ra) # 80002e9c <_ZN8_console14inputBuff_takeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    8000234c:	04a43823          	sd	a0,80(s0)
    80002350:	f4dff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=(char)a1;
    80002354:	fd043503          	ld	a0,-48(s0)
            _console::outputBuff_put(c);
    80002358:	0ff57513          	andi	a0,a0,255
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	b70080e7          	jalr	-1168(ra) # 80002ecc <_ZN8_console14outputBuff_putEc>
    80002364:	f39ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem** retHandle=(_sem**)a1;
    80002368:	fd043483          	ld	s1,-48(s0)
            if(!retHandle)__asm__ volatile("sd %0, 0x50(fp)": : "r"(-2));
    8000236c:	00049863          	bnez	s1,8000237c <_ZN5Riscv20handleEcallExceptionEv+0x218>
    80002370:	ffe00793          	li	a5,-2
    80002374:	04f43823          	sd	a5,80(s0)
    80002378:	f25ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                _sem* handle=_sem::open((int)a2);
    8000237c:	fc843503          	ld	a0,-56(s0)
    80002380:	0005051b          	sext.w	a0,a0
    80002384:	00000097          	auipc	ra,0x0
    80002388:	5f0080e7          	jalr	1520(ra) # 80002974 <_ZN4_sem4openEi>
                if(!handle){
    8000238c:	00050a63          	beqz	a0,800023a0 <_ZN5Riscv20handleEcallExceptionEv+0x23c>
                    *retHandle=handle;
    80002390:	00a4b023          	sd	a0,0(s1)
                    __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002394:	00000793          	li	a5,0
    80002398:	04f43823          	sd	a5,80(s0)
    8000239c:	f01ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                    __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    800023a0:	fff00793          	li	a5,-1
    800023a4:	04f43823          	sd	a5,80(s0)
    800023a8:	ef5ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023ac:	fd043503          	ld	a0,-48(s0)
            if(!handle)__asm__ volatile("sd %0, 0x50(fp)": : "r"(-2));
    800023b0:	00051863          	bnez	a0,800023c0 <_ZN5Riscv20handleEcallExceptionEv+0x25c>
    800023b4:	ffe00793          	li	a5,-2
    800023b8:	04f43823          	sd	a5,80(s0)
    800023bc:	ee1ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                int stat=handle->wait();
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	6b0080e7          	jalr	1712(ra) # 80002a70 <_ZN4_sem4waitEv>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023c8:	04a43823          	sd	a0,80(s0)
    800023cc:	ed1ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023d0:	fd043503          	ld	a0,-48(s0)
            if(!handle)__asm__ volatile("sd %0, 0x50(fp)": : "r"(-2));
    800023d4:	00051863          	bnez	a0,800023e4 <_ZN5Riscv20handleEcallExceptionEv+0x280>
    800023d8:	ffe00793          	li	a5,-2
    800023dc:	04f43823          	sd	a5,80(s0)
    800023e0:	ebdff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                int stat=handle->close();
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	7c0080e7          	jalr	1984(ra) # 80002ba4 <_ZN4_sem5closeEv>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023ec:	04a43823          	sd	a0,80(s0)
    800023f0:	eadff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023f4:	fd043503          	ld	a0,-48(s0)
            if(!handle)__asm__ volatile("sd %0, 0x50(fp)": : "r"(-2));
    800023f8:	00051863          	bnez	a0,80002408 <_ZN5Riscv20handleEcallExceptionEv+0x2a4>
    800023fc:	ffe00793          	li	a5,-2
    80002400:	04f43823          	sd	a5,80(s0)
    80002404:	e99ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
                int stat=handle->signal();
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	744080e7          	jalr	1860(ra) # 80002b4c <_ZN4_sem6signalEv>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002410:	04a43823          	sd	a0,80(s0)
    80002414:	e89ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    80002418:	fd043503          	ld	a0,-48(s0)
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	4dc080e7          	jalr	1244(ra) # 800028f8 <_ZN3TCB4joinEPS_>
    80002424:	e79ff06f          	j	8000229c <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    80002428:	00007517          	auipc	a0,0x7
    8000242c:	bf850513          	addi	a0,a0,-1032 # 80009020 <CONSOLE_STATUS+0x10>
    80002430:	00003097          	auipc	ra,0x3
    80002434:	30c080e7          	jalr	780(ra) # 8000573c <_Z11printStringPKc>
        printInt(scause);
    80002438:	00000613          	li	a2,0
    8000243c:	00a00593          	li	a1,10
    80002440:	0004851b          	sext.w	a0,s1
    80002444:	00003097          	auipc	ra,0x3
    80002448:	4a8080e7          	jalr	1192(ra) # 800058ec <_Z8printIntiii>
        printString("\nsepc:");
    8000244c:	00007517          	auipc	a0,0x7
    80002450:	bdc50513          	addi	a0,a0,-1060 # 80009028 <CONSOLE_STATUS+0x18>
    80002454:	00003097          	auipc	ra,0x3
    80002458:	2e8080e7          	jalr	744(ra) # 8000573c <_Z11printStringPKc>
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
    80002478:	478080e7          	jalr	1144(ra) # 800058ec <_Z8printIntiii>
        printString("\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	efc50513          	addi	a0,a0,-260 # 80009378 <CONSOLE_STATUS+0x368>
    80002484:	00003097          	auipc	ra,0x3
    80002488:	2b8080e7          	jalr	696(ra) # 8000573c <_Z11printStringPKc>
        while(true){ }
    8000248c:	0000006f          	j	8000248c <_ZN5Riscv20handleEcallExceptionEv+0x328>

0000000080002490 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    80002490:	00009797          	auipc	a5,0x9
    80002494:	5807b783          	ld	a5,1408(a5) # 8000ba10 <_ZN5Riscv12headSleepingE>
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
    800024d8:	53c78793          	addi	a5,a5,1340 # 8000ba10 <_ZN5Riscv12headSleepingE>
    800024dc:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    800024e0:	01053703          	ld	a4,16(a0)
    800024e4:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	bec080e7          	jalr	-1044(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    800024f0:	00009797          	auipc	a5,0x9
    800024f4:	5207b783          	ld	a5,1312(a5) # 8000ba10 <_ZN5Riscv12headSleepingE>
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
    8000251c:	4f878793          	addi	a5,a5,1272 # 8000ba10 <_ZN5Riscv12headSleepingE>
    80002520:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    80002524:	01053703          	ld	a4,16(a0)
    80002528:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	ba8080e7          	jalr	-1112(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
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
    80002548:	fd010113          	addi	sp,sp,-48
    8000254c:	02113423          	sd	ra,40(sp)
    80002550:	02813023          	sd	s0,32(sp)
    80002554:	03010413          	addi	s0,sp,48
    updateSleepingList();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	f38080e7          	jalr	-200(ra) # 80002490 <_ZN5Riscv18updateSleepingListEv>
    TCB::timeSliceCounter++;
    80002560:	00009717          	auipc	a4,0x9
    80002564:	42073703          	ld	a4,1056(a4) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002568:	00073783          	ld	a5,0(a4)
    8000256c:	00178793          	addi	a5,a5,1
    80002570:	00f73023          	sd	a5,0(a4)
    if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    80002574:	00009717          	auipc	a4,0x9
    80002578:	42c73703          	ld	a4,1068(a4) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000257c:	00073703          	ld	a4,0(a4)
        return timeSlice;
    80002580:	02873703          	ld	a4,40(a4)
    80002584:	00e7fe63          	bgeu	a5,a4,800025a0 <_ZN5Riscv14timerInterruptEv+0x58>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    80002588:	00200793          	li	a5,2
    8000258c:	1447b073          	csrc	sip,a5
}
    80002590:	02813083          	ld	ra,40(sp)
    80002594:	02013403          	ld	s0,32(sp)
    80002598:	03010113          	addi	sp,sp,48
    8000259c:	00008067          	ret
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800025a0:	141027f3          	csrr	a5,sepc
    800025a4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800025a8:	fe843783          	ld	a5,-24(s0)
        uint64 volatile sepc=r_sepc();
    800025ac:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800025b0:	100027f3          	csrr	a5,sstatus
    800025b4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800025b8:	fe043783          	ld	a5,-32(s0)
        uint64 volatile sstatus=r_sstatus();
    800025bc:	fcf43c23          	sd	a5,-40(s0)
        TCB::timeSliceCounter=0;
    800025c0:	00009797          	auipc	a5,0x9
    800025c4:	3c07b783          	ld	a5,960(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x38>
    800025c8:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	0f8080e7          	jalr	248(ra) # 800026c4 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800025d4:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800025d8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800025dc:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800025e0:	14179073          	csrw	sepc,a5
}
    800025e4:	fa5ff06f          	j	80002588 <_ZN5Riscv14timerInterruptEv+0x40>

00000000800025e8 <_ZN3TCBD1Ev>:
                                     sleeping(false)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    800025e8:	00009797          	auipc	a5,0x9
    800025ec:	1a878793          	addi	a5,a5,424 # 8000b790 <_ZTV3TCB+0x10>
    800025f0:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    800025f4:	01053503          	ld	a0,16(a0)
    800025f8:	02050663          	beqz	a0,80002624 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00113423          	sd	ra,8(sp)
    80002604:	00813023          	sd	s0,0(sp)
    80002608:	01010413          	addi	s0,sp,16
    delete[] stack;
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	4ac080e7          	jalr	1196(ra) # 80001ab8 <_ZdaPv>
}
    80002614:	00813083          	ld	ra,8(sp)
    80002618:	00013403          	ld	s0,0(sp)
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret
    80002624:	00008067          	ret

0000000080002628 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002628:	fe010113          	addi	sp,sp,-32
    8000262c:	00113c23          	sd	ra,24(sp)
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00913423          	sd	s1,8(sp)
    80002638:	02010413          	addi	s0,sp,32
    8000263c:	00050493          	mv	s1,a0
}
    80002640:	00000097          	auipc	ra,0x0
    80002644:	fa8080e7          	jalr	-88(ra) # 800025e8 <_ZN3TCBD1Ev>
    80002648:	00048513          	mv	a0,s1
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	444080e7          	jalr	1092(ra) # 80001a90 <_ZdlPv>
    80002654:	01813083          	ld	ra,24(sp)
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	00813483          	ld	s1,8(sp)
    80002660:	02010113          	addi	sp,sp,32
    80002664:	00008067          	ret

0000000080002668 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    80002668:	fe010113          	addi	sp,sp,-32
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00813823          	sd	s0,16(sp)
    80002674:	00913423          	sd	s1,8(sp)
    80002678:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	98c080e7          	jalr	-1652(ra) # 80002008 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002684:	00009497          	auipc	s1,0x9
    80002688:	39448493          	addi	s1,s1,916 # 8000ba18 <_ZN3TCB7runningE>
    8000268c:	0004b783          	ld	a5,0(s1)
    80002690:	0087b703          	ld	a4,8(a5)
    80002694:	0387b503          	ld	a0,56(a5)
    80002698:	000700e7          	jalr	a4
    running->setFinished(true);
    8000269c:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800026a0:	00100713          	li	a4,1
    800026a4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	eb4080e7          	jalr	-332(ra) # 8000155c <_Z15thread_dispatchv>
}
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret

00000000800026c4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	02010413          	addi	s0,sp,32
    TCB* old=running;
    800026d8:	00009497          	auipc	s1,0x9
    800026dc:	3404b483          	ld	s1,832(s1) # 8000ba18 <_ZN3TCB7runningE>
        return finished;
    800026e0:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    800026e4:	00079a63          	bnez	a5,800026f8 <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    800026e8:	0404c783          	lbu	a5,64(s1)
    800026ec:	00079663          	bnez	a5,800026f8 <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    800026f0:	0414c783          	lbu	a5,65(s1)
    800026f4:	02078c63          	beqz	a5,8000272c <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	0c8080e7          	jalr	200(ra) # 800017c0 <_ZN9Scheduler3getEv>
    80002700:	00009797          	auipc	a5,0x9
    80002704:	30a7bc23          	sd	a0,792(a5) # 8000ba18 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002708:	01850593          	addi	a1,a0,24
    8000270c:	01848513          	addi	a0,s1,24
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	c38080e7          	jalr	-968(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002718:	01813083          	ld	ra,24(sp)
    8000271c:	01013403          	ld	s0,16(sp)
    80002720:	00813483          	ld	s1,8(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret
        Scheduler::put(old);
    8000272c:	00048513          	mv	a0,s1
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	01c080e7          	jalr	28(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    80002738:	fc1ff06f          	j	800026f8 <_ZN3TCB8dispatchEv+0x34>

000000008000273c <_ZN3TCBC1EPFvPvEPcS0_m>:
                                     sleeping(false)
    8000273c:	00009797          	auipc	a5,0x9
    80002740:	05478793          	addi	a5,a5,84 # 8000b790 <_ZTV3TCB+0x10>
    80002744:	00f53023          	sd	a5,0(a0)
    80002748:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    8000274c:	06058263          	beqz	a1,800027b0 <_ZN3TCBC1EPFvPvEPcS0_m+0x74>
                                     sleeping(false)
    80002750:	00c53823          	sd	a2,16(a0)
    80002754:	00000797          	auipc	a5,0x0
    80002758:	f1478793          	addi	a5,a5,-236 # 80002668 <_ZN3TCB13threadWrapperEv>
    8000275c:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002760:	04060c63          	beqz	a2,800027b8 <_ZN3TCBC1EPFvPvEPcS0_m+0x7c>
    80002764:	000017b7          	lui	a5,0x1
    80002768:	00f60633          	add	a2,a2,a5
                                     sleeping(false)
    8000276c:	02c53023          	sd	a2,32(a0)
    80002770:	02e53423          	sd	a4,40(a0)
    80002774:	02050823          	sb	zero,48(a0)
    80002778:	02d53c23          	sd	a3,56(a0)
    8000277c:	04050023          	sb	zero,64(a0)
    80002780:	040500a3          	sb	zero,65(a0)
        if(body!=nullptr) Scheduler::put(this);
    80002784:	02058e63          	beqz	a1,800027c0 <_ZN3TCBC1EPFvPvEPcS0_m+0x84>
TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00113423          	sd	ra,8(sp)
    80002790:	00813023          	sd	s0,0(sp)
    80002794:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	fb4080e7          	jalr	-76(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    800027a0:	00813083          	ld	ra,8(sp)
    800027a4:	00013403          	ld	s0,0(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800027b0:	00000613          	li	a2,0
    800027b4:	f9dff06f          	j	80002750 <_ZN3TCBC1EPFvPvEPcS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800027b8:	00000613          	li	a2,0
    800027bc:	fb1ff06f          	j	8000276c <_ZN3TCBC1EPFvPvEPcS0_m+0x30>
    800027c0:	00008067          	ret

00000000800027c4 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00113423          	sd	ra,8(sp)
    800027cc:	00813023          	sd	s0,0(sp)
    800027d0:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800027d4:	03f50513          	addi	a0,a0,63
    800027d8:	00655513          	srli	a0,a0,0x6
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	824080e7          	jalr	-2012(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800027e4:	00813083          	ld	ra,8(sp)
    800027e8:	00013403          	ld	s0,0(sp)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <_ZN3TCB12createThreadEPFvPvEPcS0_>:
TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    800027f4:	fd010113          	addi	sp,sp,-48
    800027f8:	02113423          	sd	ra,40(sp)
    800027fc:	02813023          	sd	s0,32(sp)
    80002800:	00913c23          	sd	s1,24(sp)
    80002804:	01213823          	sd	s2,16(sp)
    80002808:	01313423          	sd	s3,8(sp)
    8000280c:	01413023          	sd	s4,0(sp)
    80002810:	03010413          	addi	s0,sp,48
    80002814:	00050913          	mv	s2,a0
    80002818:	00058993          	mv	s3,a1
    8000281c:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, DEFAULT_TIME_SLICE);
    80002820:	04800513          	li	a0,72
    80002824:	00000097          	auipc	ra,0x0
    80002828:	fa0080e7          	jalr	-96(ra) # 800027c4 <_ZN3TCBnwEm>
    8000282c:	00050493          	mv	s1,a0
    80002830:	00200713          	li	a4,2
    80002834:	000a0693          	mv	a3,s4
    80002838:	00098613          	mv	a2,s3
    8000283c:	00090593          	mv	a1,s2
    80002840:	00000097          	auipc	ra,0x0
    80002844:	efc080e7          	jalr	-260(ra) # 8000273c <_ZN3TCBC1EPFvPvEPcS0_m>
    80002848:	0200006f          	j	80002868 <_ZN3TCB12createThreadEPFvPvEPcS0_+0x74>
    8000284c:	00050913          	mv	s2,a0
    80002850:	00048513          	mv	a0,s1
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	23c080e7          	jalr	572(ra) # 80001a90 <_ZdlPv>
    8000285c:	00090513          	mv	a0,s2
    80002860:	0000a097          	auipc	ra,0xa
    80002864:	308080e7          	jalr	776(ra) # 8000cb68 <_Unwind_Resume>
}
    80002868:	00048513          	mv	a0,s1
    8000286c:	02813083          	ld	ra,40(sp)
    80002870:	02013403          	ld	s0,32(sp)
    80002874:	01813483          	ld	s1,24(sp)
    80002878:	01013903          	ld	s2,16(sp)
    8000287c:	00813983          	ld	s3,8(sp)
    80002880:	00013a03          	ld	s4,0(sp)
    80002884:	03010113          	addi	sp,sp,48
    80002888:	00008067          	ret

000000008000288c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	00813023          	sd	s0,0(sp)
    80002898:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	838080e7          	jalr	-1992(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
}
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN3TCB4exitEv>:

int TCB::exit() {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
    TCB::running->setFinished(true);
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	15478793          	addi	a5,a5,340 # 8000ba18 <_ZN3TCB7runningE>
    800028cc:	0007b703          	ld	a4,0(a5)
        TCB::finished = finished;
    800028d0:	00100693          	li	a3,1
    800028d4:	02d70823          	sb	a3,48(a4)
    TCB::timeSliceCounter=0;
    800028d8:	0007b423          	sd	zero,8(a5)
    TCB::dispatch();
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	de8080e7          	jalr	-536(ra) # 800026c4 <_ZN3TCB8dispatchEv>
    return 0;
}
    800028e4:	00000513          	li	a0,0
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	02010413          	addi	s0,sp,32
    8000290c:	00050493          	mv	s1,a0
    if(!thr)return;
    80002910:	02050063          	beqz	a0,80002930 <_ZN3TCB4joinEPS_+0x38>
        return finished;
    80002914:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    80002918:	00079c63          	bnez	a5,80002930 <_ZN3TCB4joinEPS_+0x38>
        TCB::timeSliceCounter=0;
    8000291c:	00009797          	auipc	a5,0x9
    80002920:	1007b223          	sd	zero,260(a5) # 8000ba20 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002924:	00000097          	auipc	ra,0x0
    80002928:	da0080e7          	jalr	-608(ra) # 800026c4 <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    8000292c:	fe9ff06f          	j	80002914 <_ZN3TCB4joinEPS_+0x1c>
    }
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret

0000000080002944 <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00113423          	sd	ra,8(sp)
    8000294c:	00813023          	sd	s0,0(sp)
    80002950:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002954:	03f50513          	addi	a0,a0,63
    80002958:	00655513          	srli	a0,a0,0x6
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	6a4080e7          	jalr	1700(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002964:	00813083          	ld	ra,8(sp)
    80002968:	00013403          	ld	s0,0(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
    80002988:	00050493          	mv	s1,a0
    return new _sem(val);
    8000298c:	02000513          	li	a0,32
    80002990:	00000097          	auipc	ra,0x0
    80002994:	fb4080e7          	jalr	-76(ra) # 80002944 <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    80002998:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    8000299c:	00053423          	sd	zero,8(a0)
    800029a0:	00053823          	sd	zero,16(a0)
    800029a4:	00050c23          	sb	zero,24(a0)
}
    800029a8:	01813083          	ld	ra,24(sp)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	02010113          	addi	sp,sp,32
    800029b8:	00008067          	ret

00000000800029bc <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	708080e7          	jalr	1800(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
}
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	01213023          	sd	s2,0(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    80002a00:	00009797          	auipc	a5,0x9
    80002a04:	fa07b783          	ld	a5,-96(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a08:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002a0c:	00100793          	li	a5,1
    80002a10:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002a14:	00100513          	li	a0,1
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	5e8080e7          	jalr	1512(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    80002a20:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    80002a24:	00053423          	sd	zero,8(a0)
        if(tail){
    80002a28:	0104b783          	ld	a5,16(s1)
    80002a2c:	02078c63          	beqz	a5,80002a64 <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    80002a30:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    80002a34:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    80002a38:	00009797          	auipc	a5,0x9
    80002a3c:	f487b783          	ld	a5,-184(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a40:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	c80080e7          	jalr	-896(ra) # 800026c4 <_ZN3TCB8dispatchEv>
}
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	00013903          	ld	s2,0(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret
        }
        else{
            head=tail=newElem;
    80002a64:	00a4b823          	sd	a0,16(s1)
    80002a68:	00a4b423          	sd	a0,8(s1)
    80002a6c:	fcdff06f          	j	80002a38 <_ZN4_sem5blockEv+0x54>

0000000080002a70 <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    80002a70:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002a74:	04079e63          	bnez	a5,80002ad0 <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00113c23          	sd	ra,24(sp)
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	00050493          	mv	s1,a0
    if(--val<0){
    80002a90:	00052783          	lw	a5,0(a0)
    80002a94:	fff7879b          	addiw	a5,a5,-1
    80002a98:	00f52023          	sw	a5,0(a0)
    80002a9c:	02079713          	slli	a4,a5,0x20
    80002aa0:	02074263          	bltz	a4,80002ac4 <_ZN4_sem4waitEv+0x54>
    80002aa4:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002aa8:	02079863          	bnez	a5,80002ad8 <_ZN4_sem4waitEv+0x68>
    return 0;
    80002aac:	00000513          	li	a0,0
}
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	01013403          	ld	s0,16(sp)
    80002ab8:	00813483          	ld	s1,8(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret
        block();
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	f20080e7          	jalr	-224(ra) # 800029e4 <_ZN4_sem5blockEv>
    80002acc:	fd9ff06f          	j	80002aa4 <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002ad0:	fff00513          	li	a0,-1
}
    80002ad4:	00008067          	ret
    if(this->isClosed())return -2;
    80002ad8:	ffe00513          	li	a0,-2
    80002adc:	fd5ff06f          	j	80002ab0 <_ZN4_sem4waitEv+0x40>

0000000080002ae0 <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002ae0:	fe010113          	addi	sp,sp,-32
    80002ae4:	00113c23          	sd	ra,24(sp)
    80002ae8:	00813823          	sd	s0,16(sp)
    80002aec:	00913423          	sd	s1,8(sp)
    80002af0:	02010413          	addi	s0,sp,32
    80002af4:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002af8:	00853503          	ld	a0,8(a0)
    80002afc:	04050463          	beqz	a0,80002b44 <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002b00:	00853703          	ld	a4,8(a0)
    80002b04:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002b08:	02070a63          	beqz	a4,80002b3c <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002b0c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	5c4080e7          	jalr	1476(ra) # 800030d4 <_ZN15MemoryAllocator4freeEPv>
    80002b18:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	c2c080e7          	jalr	-980(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    80002b28:	01813083          	ld	ra,24(sp)
    80002b2c:	01013403          	ld	s0,16(sp)
    80002b30:	00813483          	ld	s1,8(sp)
    80002b34:	02010113          	addi	sp,sp,32
    80002b38:	00008067          	ret
        if(!head){tail=nullptr;}
    80002b3c:	0007b823          	sd	zero,16(a5)
    80002b40:	fcdff06f          	j	80002b0c <_ZN4_sem7unblockEv+0x2c>
            return 0;
    80002b44:	00050493          	mv	s1,a0
    80002b48:	fd1ff06f          	j	80002b18 <_ZN4_sem7unblockEv+0x38>

0000000080002b4c <_ZN4_sem6signalEv>:
    80002b4c:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002b50:	04079663          	bnez	a5,80002b9c <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    80002b54:	00052783          	lw	a5,0(a0)
    80002b58:	0017879b          	addiw	a5,a5,1
    80002b5c:	0007871b          	sext.w	a4,a5
    80002b60:	00f52023          	sw	a5,0(a0)
    80002b64:	00e05663          	blez	a4,80002b70 <_ZN4_sem6signalEv+0x24>
    return 0;
    80002b68:	00000513          	li	a0,0
}
    80002b6c:	00008067          	ret
int _sem::signal() {
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00113423          	sd	ra,8(sp)
    80002b78:	00813023          	sd	s0,0(sp)
    80002b7c:	01010413          	addi	s0,sp,16
        unblock();
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	f60080e7          	jalr	-160(ra) # 80002ae0 <_ZN4_sem7unblockEv>
    return 0;
    80002b88:	00000513          	li	a0,0
}
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret
    if(this->isClosed())return -1;
    80002b9c:	fff00513          	li	a0,-1
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZN4_sem5closeEv>:
    80002ba4:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002ba8:	04079263          	bnez	a5,80002bec <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002bc4:	00100793          	li	a5,1
    80002bc8:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002bcc:	0084b783          	ld	a5,8(s1)
    80002bd0:	02078263          	beqz	a5,80002bf4 <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002bd4:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002bd8:	02078a63          	beqz	a5,80002c0c <_ZN4_sem5closeEv+0x68>
        unblock();
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	f00080e7          	jalr	-256(ra) # 80002ae0 <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002be8:	fe5ff06f          	j	80002bcc <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002bec:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002bf0:	00008067          	ret
    return 0;
    80002bf4:	00000513          	li	a0,0
}
    80002bf8:	01813083          	ld	ra,24(sp)
    80002bfc:	01013403          	ld	s0,16(sp)
    80002c00:	00813483          	ld	s1,8(sp)
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00008067          	ret
    return 0;
    80002c0c:	00000513          	li	a0,0
    80002c10:	fe9ff06f          	j	80002bf8 <_ZN4_sem5closeEv+0x54>

0000000080002c14 <_ZN13BoundedBufferC1Ev>:
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0), count(0){
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	02010413          	addi	s0,sp,32
    80002c28:	00050493          	mv	s1,a0
    80002c2c:	00052423          	sw	zero,8(a0)
    80002c30:	00052623          	sw	zero,12(a0)
    80002c34:	00052823          	sw	zero,16(a0)
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002c38:	01000513          	li	a0,16
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	3c4080e7          	jalr	964(ra) # 80003000 <_ZN15MemoryAllocator5allocEm>
    80002c44:	00a4b023          	sd	a0,0(s1)
    spaceAvailable=_sem::open(BUFF_CAP);
    80002c48:	3e800513          	li	a0,1000
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	d28080e7          	jalr	-728(ra) # 80002974 <_ZN4_sem4openEi>
    80002c54:	00a4bc23          	sd	a0,24(s1)
    itemAvailable=_sem::open(0);
    80002c58:	00000513          	li	a0,0
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	d18080e7          	jalr	-744(ra) # 80002974 <_ZN4_sem4openEi>
    80002c64:	02a4b023          	sd	a0,32(s1)
}
    80002c68:	01813083          	ld	ra,24(sp)
    80002c6c:	01013403          	ld	s0,16(sp)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret

0000000080002c7c <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002c7c:	fe010113          	addi	sp,sp,-32
    80002c80:	00113c23          	sd	ra,24(sp)
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	01213023          	sd	s2,0(sp)
    80002c90:	02010413          	addi	s0,sp,32
    80002c94:	00050493          	mv	s1,a0
    80002c98:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002c9c:	01853503          	ld	a0,24(a0)
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	dd0080e7          	jalr	-560(ra) # 80002a70 <_ZN4_sem4waitEv>
    buffer[tail]=c;
    80002ca8:	0004b783          	ld	a5,0(s1)
    80002cac:	00c4a703          	lw	a4,12(s1)
    80002cb0:	00e787b3          	add	a5,a5,a4
    80002cb4:	01278023          	sb	s2,0(a5)
    tail=(tail+1)%BUFF_CAP;
    80002cb8:	00c4a783          	lw	a5,12(s1)
    80002cbc:	0017879b          	addiw	a5,a5,1
    80002cc0:	3e800713          	li	a4,1000
    80002cc4:	02e7e7bb          	remw	a5,a5,a4
    80002cc8:	00f4a623          	sw	a5,12(s1)
    count++;
    80002ccc:	0104a783          	lw	a5,16(s1)
    80002cd0:	0017879b          	addiw	a5,a5,1
    80002cd4:	00f4a823          	sw	a5,16(s1)
    itemAvailable->signal();
    80002cd8:	0204b503          	ld	a0,32(s1)
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	e70080e7          	jalr	-400(ra) # 80002b4c <_ZN4_sem6signalEv>
}
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	00013903          	ld	s2,0(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_ZN13BoundedBuffer17takeFromInterruptEv>:


char BoundedBuffer::takeFromInterrupt() {
    80002cfc:	fe010113          	addi	sp,sp,-32
    80002d00:	00113c23          	sd	ra,24(sp)
    80002d04:	00813823          	sd	s0,16(sp)
    80002d08:	00913423          	sd	s1,8(sp)
    80002d0c:	01213023          	sd	s2,0(sp)
    80002d10:	02010413          	addi	s0,sp,32
    80002d14:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002d18:	02053503          	ld	a0,32(a0)
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	d54080e7          	jalr	-684(ra) # 80002a70 <_ZN4_sem4waitEv>
    char c=buffer[head];
    80002d24:	0004b703          	ld	a4,0(s1)
    80002d28:	0084a783          	lw	a5,8(s1)
    80002d2c:	00f70733          	add	a4,a4,a5
    80002d30:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002d34:	0017879b          	addiw	a5,a5,1
    80002d38:	3e800713          	li	a4,1000
    80002d3c:	02e7e7bb          	remw	a5,a5,a4
    80002d40:	00f4a423          	sw	a5,8(s1)
    count--;
    80002d44:	0104a783          	lw	a5,16(s1)
    80002d48:	fff7879b          	addiw	a5,a5,-1
    80002d4c:	00f4a823          	sw	a5,16(s1)
    spaceAvailable->signal();
    80002d50:	0184b503          	ld	a0,24(s1)
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	df8080e7          	jalr	-520(ra) # 80002b4c <_ZN4_sem6signalEv>
    return c;
}
    80002d5c:	00090513          	mv	a0,s2
    80002d60:	01813083          	ld	ra,24(sp)
    80002d64:	01013403          	ld	s0,16(sp)
    80002d68:	00813483          	ld	s1,8(sp)
    80002d6c:	00013903          	ld	s2,0(sp)
    80002d70:	02010113          	addi	sp,sp,32
    80002d74:	00008067          	ret

0000000080002d78 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002d78:	fe010113          	addi	sp,sp,-32
    80002d7c:	00113c23          	sd	ra,24(sp)
    80002d80:	00813823          	sd	s0,16(sp)
    80002d84:	00913423          	sd	s1,8(sp)
    80002d88:	02010413          	addi	s0,sp,32
    80002d8c:	00050493          	mv	s1,a0
    mem_free(buffer);
    80002d90:	00053503          	ld	a0,0(a0)
    80002d94:	ffffe097          	auipc	ra,0xffffe
    80002d98:	660080e7          	jalr	1632(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80002d9c:	0204b503          	ld	a0,32(s1)
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	85c080e7          	jalr	-1956(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002da8:	0184b503          	ld	a0,24(s1)
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	850080e7          	jalr	-1968(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	02010113          	addi	sp,sp,32
    80002dc4:	00008067          	ret

0000000080002dc8 <_ZN13BoundedBuffer17takeFromSysThreadEv>:

char BoundedBuffer::takeFromSysThread() {
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00113c23          	sd	ra,24(sp)
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	01213023          	sd	s2,0(sp)
    80002ddc:	02010413          	addi	s0,sp,32
    80002de0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002de4:	02053503          	ld	a0,32(a0)
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	860080e7          	jalr	-1952(ra) # 80001648 <_Z8sem_waitP4_sem>
    char c=buffer[head];
    80002df0:	0004b703          	ld	a4,0(s1)
    80002df4:	0084a783          	lw	a5,8(s1)
    80002df8:	00f70733          	add	a4,a4,a5
    80002dfc:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002e00:	0017879b          	addiw	a5,a5,1
    80002e04:	3e800713          	li	a4,1000
    80002e08:	02e7e7bb          	remw	a5,a5,a4
    80002e0c:	00f4a423          	sw	a5,8(s1)
    count--;
    80002e10:	0104a783          	lw	a5,16(s1)
    80002e14:	fff7879b          	addiw	a5,a5,-1
    80002e18:	00f4a823          	sw	a5,16(s1)
    sem_signal(spaceAvailable);
    80002e1c:	0184b503          	ld	a0,24(s1)
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	874080e7          	jalr	-1932(ra) # 80001694 <_Z10sem_signalP4_sem>
    return c;
}
    80002e28:	00090513          	mv	a0,s2
    80002e2c:	01813083          	ld	ra,24(sp)
    80002e30:	01013403          	ld	s0,16(sp)
    80002e34:	00813483          	ld	s1,8(sp)
    80002e38:	00013903          	ld	s2,0(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret

0000000080002e44 <_ZN13BoundedBuffer6isFullEv>:

bool BoundedBuffer::isFull() {
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    return count==BUFF_CAP;
    80002e50:	01052503          	lw	a0,16(a0)
    80002e54:	c1850513          	addi	a0,a0,-1000
}
    80002e58:	00153513          	seqz	a0,a0
    80002e5c:	00813403          	ld	s0,8(sp)
    80002e60:	01010113          	addi	sp,sp,16
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
    80002e80:	bb453503          	ld	a0,-1100(a0) # 8000ba30 <_ZN8_console9inputBuffE>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	df8080e7          	jalr	-520(ra) # 80002c7c <_ZN13BoundedBuffer3putEc>
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
    80002eb0:	b8453503          	ld	a0,-1148(a0) # 8000ba30 <_ZN8_console9inputBuffE>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	e48080e7          	jalr	-440(ra) # 80002cfc <_ZN13BoundedBuffer17takeFromInterruptEv>
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
    80002ee4:	b5853503          	ld	a0,-1192(a0) # 8000ba38 <_ZN8_console10outputBuffE>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	d94080e7          	jalr	-620(ra) # 80002c7c <_ZN13BoundedBuffer3putEc>
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
    80002f14:	b2853503          	ld	a0,-1240(a0) # 8000ba38 <_ZN8_console10outputBuffE>
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	eb0080e7          	jalr	-336(ra) # 80002dc8 <_ZN13BoundedBuffer17takeFromSysThreadEv>
}
    80002f20:	00813083          	ld	ra,8(sp)
    80002f24:	00013403          	ld	s0,0(sp)
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN8_console15consumerConsoleEPv>:
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002f30:	00009797          	auipc	a5,0x9
    80002f34:	a287b783          	ld	a5,-1496(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002f64:	a287b783          	ld	a5,-1496(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002f68:	0007b783          	ld	a5,0(a5)
    80002f6c:	00a78023          	sb	a0,0(a5)
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002f70:	00009797          	auipc	a5,0x9
    80002f74:	9e87b783          	ld	a5,-1560(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f78:	0007b783          	ld	a5,0(a5)
    80002f7c:	0007c783          	lbu	a5,0(a5)
    80002f80:	0207f793          	andi	a5,a5,32
    80002f84:	fe0786e3          	beqz	a5,80002f70 <_ZN8_console15consumerConsoleEPv+0x40>
    80002f88:	fd1ff06f          	j	80002f58 <_ZN8_console15consumerConsoleEPv+0x28>

0000000080002f8c <_ZN8_console14inputBuff_fullEv>:

bool _console::inputBuff_full() {
    80002f8c:	ff010113          	addi	sp,sp,-16
    80002f90:	00113423          	sd	ra,8(sp)
    80002f94:	00813023          	sd	s0,0(sp)
    80002f98:	01010413          	addi	s0,sp,16
    return inputBuff->isFull();
    80002f9c:	00009517          	auipc	a0,0x9
    80002fa0:	a9453503          	ld	a0,-1388(a0) # 8000ba30 <_ZN8_console9inputBuffE>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	ea0080e7          	jalr	-352(ra) # 80002e44 <_ZN13BoundedBuffer6isFullEv>
}
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret

0000000080002fbc <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00813423          	sd	s0,8(sp)
    80002fc4:	01010413          	addi	s0,sp,16
    80002fc8:	00100793          	li	a5,1
    80002fcc:	00f50863          	beq	a0,a5,80002fdc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret
    80002fdc:	000107b7          	lui	a5,0x10
    80002fe0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002fe4:	fef596e3          	bne	a1,a5,80002fd0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002fe8:	00009797          	auipc	a5,0x9
    80002fec:	9787b783          	ld	a5,-1672(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002ff0:	0007b783          	ld	a5,0(a5)
    80002ff4:	00009717          	auipc	a4,0x9
    80002ff8:	a4f73623          	sd	a5,-1460(a4) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    80002ffc:	fd5ff06f          	j	80002fd0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003000 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80003000:	ff010113          	addi	sp,sp,-16
    80003004:	00813423          	sd	s0,8(sp)
    80003008:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    8000300c:	0a050c63          	beqz	a0,800030c4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80003010:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80003014:	00009797          	auipc	a5,0x9
    80003018:	a2c7b783          	ld	a5,-1492(a5) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    8000301c:	00000613          	li	a2,0
    while(free){
    80003020:	00078e63          	beqz	a5,8000303c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80003024:	0007b703          	ld	a4,0(a5)
    80003028:	fff70713          	addi	a4,a4,-1
    8000302c:	00d77863          	bgeu	a4,a3,8000303c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80003030:	00078613          	mv	a2,a5
        free=free->next;
    80003034:	0087b783          	ld	a5,8(a5)
    while(free){
    80003038:	fe9ff06f          	j	80003020 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000303c:	08078863          	beqz	a5,800030cc <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80003040:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80003044:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80003048:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000304c:	fff70593          	addi	a1,a4,-1
    80003050:	04d58063          	beq	a1,a3,80003090 <_ZN15MemoryAllocator5allocEm+0x90>
    80003054:	ffe70593          	addi	a1,a4,-2
    80003058:	02d58c63          	beq	a1,a3,80003090 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000305c:	40d70733          	sub	a4,a4,a3
    80003060:	fff70713          	addi	a4,a4,-1
    80003064:	00100593          	li	a1,1
    80003068:	02e5fa63          	bgeu	a1,a4,8000309c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000306c:	00168693          	addi	a3,a3,1
    80003070:	00669593          	slli	a1,a3,0x6
    80003074:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80003078:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    8000307c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80003080:	02060c63          	beqz	a2,800030b8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80003084:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80003088:	00d7b023          	sd	a3,0(a5)
    8000308c:	0100006f          	j	8000309c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80003090:	00060e63          	beqz	a2,800030ac <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80003094:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80003098:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    8000309c:	0007b423          	sd	zero,8(a5)
}
    800030a0:	00813403          	ld	s0,8(sp)
    800030a4:	01010113          	addi	sp,sp,16
    800030a8:	00008067          	ret
            firstFreeSeg=free->next;
    800030ac:	00009697          	auipc	a3,0x9
    800030b0:	9906ba23          	sd	a6,-1644(a3) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    800030b4:	fe5ff06f          	j	80003098 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    800030b8:	00009717          	auipc	a4,0x9
    800030bc:	98b73423          	sd	a1,-1656(a4) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    800030c0:	fc9ff06f          	j	80003088 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    800030c4:	00000513          	li	a0,0
    800030c8:	fd9ff06f          	j	800030a0 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    800030cc:	00078513          	mv	a0,a5
    800030d0:	fd1ff06f          	j	800030a0 <_ZN15MemoryAllocator5allocEm+0xa0>

00000000800030d4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00813423          	sd	s0,8(sp)
    800030dc:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    800030e0:	14050c63          	beqz	a0,80003238 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    800030e4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    800030e8:	00009797          	auipc	a5,0x9
    800030ec:	9587b783          	ld	a5,-1704(a5) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    800030f0:	02078a63          	beqz	a5,80003124 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    800030f4:	06f77863          	bgeu	a4,a5,80003164 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    800030f8:	fc053603          	ld	a2,-64(a0)
    800030fc:	00661693          	slli	a3,a2,0x6
    80003100:	00d706b3          	add	a3,a4,a3
    80003104:	02d78a63          	beq	a5,a3,80003138 <_ZN15MemoryAllocator4freeEPv+0x64>
            freeFromAddr->next=firstFreeSeg;
    80003108:	fcf53423          	sd	a5,-56(a0)
            firstFreeSeg=freeFromAddr;
    8000310c:	00009797          	auipc	a5,0x9
    80003110:	92e7ba23          	sd	a4,-1740(a5) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
            return 0;
    80003114:	00000513          	li	a0,0
}
    80003118:	00813403          	ld	s0,8(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret
        freeFromAddr->next=nullptr;
    80003124:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80003128:	00009797          	auipc	a5,0x9
    8000312c:	90e7bc23          	sd	a4,-1768(a5) # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80003130:	00000513          	li	a0,0
    80003134:	fe5ff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80003138:	0007b783          	ld	a5,0(a5)
    8000313c:	00f60633          	add	a2,a2,a5
    80003140:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80003144:	00009797          	auipc	a5,0x9
    80003148:	8fc78793          	addi	a5,a5,-1796 # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    8000314c:	0007b683          	ld	a3,0(a5)
    80003150:	0086b683          	ld	a3,8(a3)
    80003154:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80003158:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000315c:	00000513          	li	a0,0
    80003160:	fb9ff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80003164:	00000693          	li	a3,0
    while(nextFree){
    80003168:	00078a63          	beqz	a5,8000317c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000316c:	00f76863          	bltu	a4,a5,8000317c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80003170:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80003174:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80003178:	ff1ff06f          	j	80003168 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000317c:	02078a63          	beqz	a5,800031b0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003180:	0006b583          	ld	a1,0(a3)
    80003184:	00659613          	slli	a2,a1,0x6
    80003188:	00c68633          	add	a2,a3,a2
    8000318c:	04e60c63          	beq	a2,a4,800031e4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80003190:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80003194:	fc053683          	ld	a3,-64(a0)
    80003198:	00669613          	slli	a2,a3,0x6
    8000319c:	00c70733          	add	a4,a4,a2
    800031a0:	06f70e63          	beq	a4,a5,8000321c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    800031a4:	fcf53423          	sd	a5,-56(a0)
    return 0;
    800031a8:	00000513          	li	a0,0
    800031ac:	f6dff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800031b0:	0006b603          	ld	a2,0(a3)
    800031b4:	00661793          	slli	a5,a2,0x6
    800031b8:	00f687b3          	add	a5,a3,a5
    800031bc:	00e78a63          	beq	a5,a4,800031d0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800031c0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800031c4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800031c8:	00000513          	li	a0,0
    800031cc:	f4dff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800031d0:	fc053783          	ld	a5,-64(a0)
    800031d4:	00f60633          	add	a2,a2,a5
    800031d8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800031dc:	00000513          	li	a0,0
    800031e0:	f39ff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800031e4:	fc053703          	ld	a4,-64(a0)
    800031e8:	00e585b3          	add	a1,a1,a4
    800031ec:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800031f0:	00659713          	slli	a4,a1,0x6
    800031f4:	00e68733          	add	a4,a3,a4
    800031f8:	00f70663          	beq	a4,a5,80003204 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    800031fc:	00000513          	li	a0,0
    80003200:	f19ff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80003204:	0007b703          	ld	a4,0(a5)
    80003208:	00e585b3          	add	a1,a1,a4
    8000320c:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80003210:	0087b783          	ld	a5,8(a5)
    80003214:	00f6b423          	sd	a5,8(a3)
    80003218:	fe5ff06f          	j	800031fc <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    8000321c:	0007b703          	ld	a4,0(a5)
    80003220:	00e686b3          	add	a3,a3,a4
    80003224:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80003228:	0087b783          	ld	a5,8(a5)
    8000322c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80003230:	00000513          	li	a0,0
    80003234:	ee5ff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80003238:	fff00513          	li	a0,-1
    8000323c:	eddff06f          	j	80003118 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080003240 <_ZN15MemoryAllocator10initializeEv>:
{
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00813423          	sd	s0,8(sp)
    80003248:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000324c:	00008797          	auipc	a5,0x8
    80003250:	7147b783          	ld	a5,1812(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003254:	0007b703          	ld	a4,0(a5)
    80003258:	00008697          	auipc	a3,0x8
    8000325c:	7e868693          	addi	a3,a3,2024 # 8000ba40 <_ZN15MemoryAllocator12firstFreeSegE>
    80003260:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80003264:	00008797          	auipc	a5,0x8
    80003268:	7447b783          	ld	a5,1860(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000326c:	0007b783          	ld	a5,0(a5)
    80003270:	40e787b3          	sub	a5,a5,a4
    80003274:	0067d793          	srli	a5,a5,0x6
    80003278:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    8000327c:	0006b783          	ld	a5,0(a3)
    80003280:	0007b423          	sd	zero,8(a5)
    80003284:	00813403          	ld	s0,8(sp)
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret

0000000080003290 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00113423          	sd	ra,8(sp)
    80003298:	00813023          	sd	s0,0(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	000105b7          	lui	a1,0x10
    800032a4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800032a8:	00100513          	li	a0,1
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	d10080e7          	jalr	-752(ra) # 80002fbc <_Z41__static_initialization_and_destruction_0ii>
    800032b4:	00813083          	ld	ra,8(sp)
    800032b8:	00013403          	ld	s0,0(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret

00000000800032c4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    800032dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032e0:	00000913          	li	s2,0
    800032e4:	00c0006f          	j	800032f0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032e8:	ffffe097          	auipc	ra,0xffffe
    800032ec:	274080e7          	jalr	628(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	3f0080e7          	jalr	1008(ra) # 800016e0 <_Z4getcv>
    800032f8:	0005059b          	sext.w	a1,a0
    800032fc:	01b00793          	li	a5,27
    80003300:	02f58a63          	beq	a1,a5,80003334 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003304:	0084b503          	ld	a0,8(s1)
    80003308:	00003097          	auipc	ra,0x3
    8000330c:	400080e7          	jalr	1024(ra) # 80006708 <_ZN6Buffer3putEi>
        i++;
    80003310:	0019071b          	addiw	a4,s2,1
    80003314:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003318:	0004a683          	lw	a3,0(s1)
    8000331c:	0026979b          	slliw	a5,a3,0x2
    80003320:	00d787bb          	addw	a5,a5,a3
    80003324:	0017979b          	slliw	a5,a5,0x1
    80003328:	02f767bb          	remw	a5,a4,a5
    8000332c:	fc0792e3          	bnez	a5,800032f0 <_ZL16producerKeyboardPv+0x2c>
    80003330:	fb9ff06f          	j	800032e8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003334:	00100793          	li	a5,1
    80003338:	00008717          	auipc	a4,0x8
    8000333c:	70f72823          	sw	a5,1808(a4) # 8000ba48 <_ZL9threadEnd>
    data->buffer->put('!');
    80003340:	02100593          	li	a1,33
    80003344:	0084b503          	ld	a0,8(s1)
    80003348:	00003097          	auipc	ra,0x3
    8000334c:	3c0080e7          	jalr	960(ra) # 80006708 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003350:	0104b503          	ld	a0,16(s1)
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	340080e7          	jalr	832(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    8000335c:	01813083          	ld	ra,24(sp)
    80003360:	01013403          	ld	s0,16(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	00013903          	ld	s2,0(sp)
    8000336c:	02010113          	addi	sp,sp,32
    80003370:	00008067          	ret

0000000080003374 <_ZL8producerPv>:

static void producer(void *arg) {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	01213023          	sd	s2,0(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003390:	00000913          	li	s2,0
    80003394:	00c0006f          	j	800033a0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	1c4080e7          	jalr	452(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    800033a0:	00008797          	auipc	a5,0x8
    800033a4:	6a87a783          	lw	a5,1704(a5) # 8000ba48 <_ZL9threadEnd>
    800033a8:	02079e63          	bnez	a5,800033e4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033ac:	0004a583          	lw	a1,0(s1)
    800033b0:	0305859b          	addiw	a1,a1,48
    800033b4:	0084b503          	ld	a0,8(s1)
    800033b8:	00003097          	auipc	ra,0x3
    800033bc:	350080e7          	jalr	848(ra) # 80006708 <_ZN6Buffer3putEi>
        i++;
    800033c0:	0019071b          	addiw	a4,s2,1
    800033c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033c8:	0004a683          	lw	a3,0(s1)
    800033cc:	0026979b          	slliw	a5,a3,0x2
    800033d0:	00d787bb          	addw	a5,a5,a3
    800033d4:	0017979b          	slliw	a5,a5,0x1
    800033d8:	02f767bb          	remw	a5,a4,a5
    800033dc:	fc0792e3          	bnez	a5,800033a0 <_ZL8producerPv+0x2c>
    800033e0:	fb9ff06f          	j	80003398 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033e4:	0104b503          	ld	a0,16(s1)
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	2ac080e7          	jalr	684(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	00813483          	ld	s1,8(sp)
    800033fc:	00013903          	ld	s2,0(sp)
    80003400:	02010113          	addi	sp,sp,32
    80003404:	00008067          	ret

0000000080003408 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003408:	fd010113          	addi	sp,sp,-48
    8000340c:	02113423          	sd	ra,40(sp)
    80003410:	02813023          	sd	s0,32(sp)
    80003414:	00913c23          	sd	s1,24(sp)
    80003418:	01213823          	sd	s2,16(sp)
    8000341c:	01313423          	sd	s3,8(sp)
    80003420:	03010413          	addi	s0,sp,48
    80003424:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003428:	00000993          	li	s3,0
    8000342c:	01c0006f          	j	80003448 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	12c080e7          	jalr	300(ra) # 8000155c <_Z15thread_dispatchv>
    80003438:	0500006f          	j	80003488 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000343c:	00a00513          	li	a0,10
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	2dc080e7          	jalr	732(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80003448:	00008797          	auipc	a5,0x8
    8000344c:	6007a783          	lw	a5,1536(a5) # 8000ba48 <_ZL9threadEnd>
    80003450:	06079063          	bnez	a5,800034b0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003454:	00893503          	ld	a0,8(s2)
    80003458:	00003097          	auipc	ra,0x3
    8000345c:	340080e7          	jalr	832(ra) # 80006798 <_ZN6Buffer3getEv>
        i++;
    80003460:	0019849b          	addiw	s1,s3,1
    80003464:	0004899b          	sext.w	s3,s1
        putc(key);
    80003468:	0ff57513          	andi	a0,a0,255
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	2b0080e7          	jalr	688(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003474:	00092703          	lw	a4,0(s2)
    80003478:	0027179b          	slliw	a5,a4,0x2
    8000347c:	00e787bb          	addw	a5,a5,a4
    80003480:	02f4e7bb          	remw	a5,s1,a5
    80003484:	fa0786e3          	beqz	a5,80003430 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003488:	05000793          	li	a5,80
    8000348c:	02f4e4bb          	remw	s1,s1,a5
    80003490:	fa049ce3          	bnez	s1,80003448 <_ZL8consumerPv+0x40>
    80003494:	fa9ff06f          	j	8000343c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003498:	00893503          	ld	a0,8(s2)
    8000349c:	00003097          	auipc	ra,0x3
    800034a0:	2fc080e7          	jalr	764(ra) # 80006798 <_ZN6Buffer3getEv>
        putc(key);
    800034a4:	0ff57513          	andi	a0,a0,255
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	274080e7          	jalr	628(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800034b0:	00893503          	ld	a0,8(s2)
    800034b4:	00003097          	auipc	ra,0x3
    800034b8:	370080e7          	jalr	880(ra) # 80006824 <_ZN6Buffer6getCntEv>
    800034bc:	fca04ee3          	bgtz	a0,80003498 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800034c0:	01093503          	ld	a0,16(s2)
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	1d0080e7          	jalr	464(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    800034cc:	02813083          	ld	ra,40(sp)
    800034d0:	02013403          	ld	s0,32(sp)
    800034d4:	01813483          	ld	s1,24(sp)
    800034d8:	01013903          	ld	s2,16(sp)
    800034dc:	00813983          	ld	s3,8(sp)
    800034e0:	03010113          	addi	sp,sp,48
    800034e4:	00008067          	ret

00000000800034e8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034e8:	f9010113          	addi	sp,sp,-112
    800034ec:	06113423          	sd	ra,104(sp)
    800034f0:	06813023          	sd	s0,96(sp)
    800034f4:	04913c23          	sd	s1,88(sp)
    800034f8:	05213823          	sd	s2,80(sp)
    800034fc:	05313423          	sd	s3,72(sp)
    80003500:	05413023          	sd	s4,64(sp)
    80003504:	03513c23          	sd	s5,56(sp)
    80003508:	03613823          	sd	s6,48(sp)
    8000350c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003510:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003514:	00006517          	auipc	a0,0x6
    80003518:	b1c50513          	addi	a0,a0,-1252 # 80009030 <CONSOLE_STATUS+0x20>
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	220080e7          	jalr	544(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    80003524:	01e00593          	li	a1,30
    80003528:	fa040493          	addi	s1,s0,-96
    8000352c:	00048513          	mv	a0,s1
    80003530:	00002097          	auipc	ra,0x2
    80003534:	294080e7          	jalr	660(ra) # 800057c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	360080e7          	jalr	864(ra) # 8000589c <_Z11stringToIntPKc>
    80003544:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	b0850513          	addi	a0,a0,-1272 # 80009050 <CONSOLE_STATUS+0x40>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	1ec080e7          	jalr	492(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    80003558:	01e00593          	li	a1,30
    8000355c:	00048513          	mv	a0,s1
    80003560:	00002097          	auipc	ra,0x2
    80003564:	264080e7          	jalr	612(ra) # 800057c4 <_Z9getStringPci>
    n = stringToInt(input);
    80003568:	00048513          	mv	a0,s1
    8000356c:	00002097          	auipc	ra,0x2
    80003570:	330080e7          	jalr	816(ra) # 8000589c <_Z11stringToIntPKc>
    80003574:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	af850513          	addi	a0,a0,-1288 # 80009070 <CONSOLE_STATUS+0x60>
    80003580:	00002097          	auipc	ra,0x2
    80003584:	1bc080e7          	jalr	444(ra) # 8000573c <_Z11printStringPKc>
    80003588:	00000613          	li	a2,0
    8000358c:	00a00593          	li	a1,10
    80003590:	00090513          	mv	a0,s2
    80003594:	00002097          	auipc	ra,0x2
    80003598:	358080e7          	jalr	856(ra) # 800058ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000359c:	00006517          	auipc	a0,0x6
    800035a0:	aec50513          	addi	a0,a0,-1300 # 80009088 <CONSOLE_STATUS+0x78>
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	198080e7          	jalr	408(ra) # 8000573c <_Z11printStringPKc>
    800035ac:	00000613          	li	a2,0
    800035b0:	00a00593          	li	a1,10
    800035b4:	00048513          	mv	a0,s1
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	334080e7          	jalr	820(ra) # 800058ec <_Z8printIntiii>
    printString(".\n");
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	ae050513          	addi	a0,a0,-1312 # 800090a0 <CONSOLE_STATUS+0x90>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	174080e7          	jalr	372(ra) # 8000573c <_Z11printStringPKc>
    if(threadNum > n) {
    800035d0:	0324c463          	blt	s1,s2,800035f8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035d4:	03205c63          	blez	s2,8000360c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035d8:	03800513          	li	a0,56
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	464080e7          	jalr	1124(ra) # 80001a40 <_Znwm>
    800035e4:	00050a13          	mv	s4,a0
    800035e8:	00048593          	mv	a1,s1
    800035ec:	00003097          	auipc	ra,0x3
    800035f0:	080080e7          	jalr	128(ra) # 8000666c <_ZN6BufferC1Ei>
    800035f4:	0300006f          	j	80003624 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	ab050513          	addi	a0,a0,-1360 # 800090a8 <CONSOLE_STATUS+0x98>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	13c080e7          	jalr	316(ra) # 8000573c <_Z11printStringPKc>
        return;
    80003608:	0140006f          	j	8000361c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000360c:	00006517          	auipc	a0,0x6
    80003610:	adc50513          	addi	a0,a0,-1316 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003614:	00002097          	auipc	ra,0x2
    80003618:	128080e7          	jalr	296(ra) # 8000573c <_Z11printStringPKc>
        return;
    8000361c:	000b0113          	mv	sp,s6
    80003620:	1500006f          	j	80003770 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003624:	00000593          	li	a1,0
    80003628:	00008517          	auipc	a0,0x8
    8000362c:	42850513          	addi	a0,a0,1064 # 8000ba50 <_ZL10waitForAll>
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	f88080e7          	jalr	-120(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003638:	00391793          	slli	a5,s2,0x3
    8000363c:	00f78793          	addi	a5,a5,15
    80003640:	ff07f793          	andi	a5,a5,-16
    80003644:	40f10133          	sub	sp,sp,a5
    80003648:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000364c:	0019071b          	addiw	a4,s2,1
    80003650:	00171793          	slli	a5,a4,0x1
    80003654:	00e787b3          	add	a5,a5,a4
    80003658:	00379793          	slli	a5,a5,0x3
    8000365c:	00f78793          	addi	a5,a5,15
    80003660:	ff07f793          	andi	a5,a5,-16
    80003664:	40f10133          	sub	sp,sp,a5
    80003668:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000366c:	00191613          	slli	a2,s2,0x1
    80003670:	012607b3          	add	a5,a2,s2
    80003674:	00379793          	slli	a5,a5,0x3
    80003678:	00f987b3          	add	a5,s3,a5
    8000367c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003680:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003684:	00008717          	auipc	a4,0x8
    80003688:	3cc73703          	ld	a4,972(a4) # 8000ba50 <_ZL10waitForAll>
    8000368c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003690:	00078613          	mv	a2,a5
    80003694:	00000597          	auipc	a1,0x0
    80003698:	d7458593          	addi	a1,a1,-652 # 80003408 <_ZL8consumerPv>
    8000369c:	f9840513          	addi	a0,s0,-104
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	d94080e7          	jalr	-620(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036a8:	00000493          	li	s1,0
    800036ac:	0280006f          	j	800036d4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800036b0:	00000597          	auipc	a1,0x0
    800036b4:	c1458593          	addi	a1,a1,-1004 # 800032c4 <_ZL16producerKeyboardPv>
                      data + i);
    800036b8:	00179613          	slli	a2,a5,0x1
    800036bc:	00f60633          	add	a2,a2,a5
    800036c0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800036c4:	00c98633          	add	a2,s3,a2
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	d6c080e7          	jalr	-660(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036d0:	0014849b          	addiw	s1,s1,1
    800036d4:	0524d263          	bge	s1,s2,80003718 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036d8:	00149793          	slli	a5,s1,0x1
    800036dc:	009787b3          	add	a5,a5,s1
    800036e0:	00379793          	slli	a5,a5,0x3
    800036e4:	00f987b3          	add	a5,s3,a5
    800036e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036ec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800036f0:	00008717          	auipc	a4,0x8
    800036f4:	36073703          	ld	a4,864(a4) # 8000ba50 <_ZL10waitForAll>
    800036f8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036fc:	00048793          	mv	a5,s1
    80003700:	00349513          	slli	a0,s1,0x3
    80003704:	00aa8533          	add	a0,s5,a0
    80003708:	fa9054e3          	blez	s1,800036b0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000370c:	00000597          	auipc	a1,0x0
    80003710:	c6858593          	addi	a1,a1,-920 # 80003374 <_ZL8producerPv>
    80003714:	fa5ff06f          	j	800036b8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	e44080e7          	jalr	-444(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003720:	00000493          	li	s1,0
    80003724:	00994e63          	blt	s2,s1,80003740 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003728:	00008517          	auipc	a0,0x8
    8000372c:	32853503          	ld	a0,808(a0) # 8000ba50 <_ZL10waitForAll>
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	f18080e7          	jalr	-232(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003738:	0014849b          	addiw	s1,s1,1
    8000373c:	fe9ff06f          	j	80003724 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003740:	00008517          	auipc	a0,0x8
    80003744:	31053503          	ld	a0,784(a0) # 8000ba50 <_ZL10waitForAll>
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	eb4080e7          	jalr	-332(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003750:	000a0e63          	beqz	s4,8000376c <_Z22producerConsumer_C_APIv+0x284>
    80003754:	000a0513          	mv	a0,s4
    80003758:	00003097          	auipc	ra,0x3
    8000375c:	154080e7          	jalr	340(ra) # 800068ac <_ZN6BufferD1Ev>
    80003760:	000a0513          	mv	a0,s4
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	32c080e7          	jalr	812(ra) # 80001a90 <_ZdlPv>
    8000376c:	000b0113          	mv	sp,s6

}
    80003770:	f9040113          	addi	sp,s0,-112
    80003774:	06813083          	ld	ra,104(sp)
    80003778:	06013403          	ld	s0,96(sp)
    8000377c:	05813483          	ld	s1,88(sp)
    80003780:	05013903          	ld	s2,80(sp)
    80003784:	04813983          	ld	s3,72(sp)
    80003788:	04013a03          	ld	s4,64(sp)
    8000378c:	03813a83          	ld	s5,56(sp)
    80003790:	03013b03          	ld	s6,48(sp)
    80003794:	07010113          	addi	sp,sp,112
    80003798:	00008067          	ret
    8000379c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800037a0:	000a0513          	mv	a0,s4
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	2ec080e7          	jalr	748(ra) # 80001a90 <_ZdlPv>
    800037ac:	00048513          	mv	a0,s1
    800037b0:	00009097          	auipc	ra,0x9
    800037b4:	3b8080e7          	jalr	952(ra) # 8000cb68 <_Unwind_Resume>

00000000800037b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800037b8:	fe010113          	addi	sp,sp,-32
    800037bc:	00113c23          	sd	ra,24(sp)
    800037c0:	00813823          	sd	s0,16(sp)
    800037c4:	00913423          	sd	s1,8(sp)
    800037c8:	01213023          	sd	s2,0(sp)
    800037cc:	02010413          	addi	s0,sp,32
    800037d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800037d4:	00100793          	li	a5,1
    800037d8:	02a7f863          	bgeu	a5,a0,80003808 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800037dc:	00a00793          	li	a5,10
    800037e0:	02f577b3          	remu	a5,a0,a5
    800037e4:	02078e63          	beqz	a5,80003820 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800037e8:	fff48513          	addi	a0,s1,-1
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	fcc080e7          	jalr	-52(ra) # 800037b8 <_ZL9fibonaccim>
    800037f4:	00050913          	mv	s2,a0
    800037f8:	ffe48513          	addi	a0,s1,-2
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	fbc080e7          	jalr	-68(ra) # 800037b8 <_ZL9fibonaccim>
    80003804:	00a90533          	add	a0,s2,a0
}
    80003808:	01813083          	ld	ra,24(sp)
    8000380c:	01013403          	ld	s0,16(sp)
    80003810:	00813483          	ld	s1,8(sp)
    80003814:	00013903          	ld	s2,0(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	d3c080e7          	jalr	-708(ra) # 8000155c <_Z15thread_dispatchv>
    80003828:	fc1ff06f          	j	800037e8 <_ZL9fibonaccim+0x30>

000000008000382c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000382c:	fe010113          	addi	sp,sp,-32
    80003830:	00113c23          	sd	ra,24(sp)
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	01213023          	sd	s2,0(sp)
    80003840:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003844:	00000913          	li	s2,0
    80003848:	0380006f          	j	80003880 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	d10080e7          	jalr	-752(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003854:	00148493          	addi	s1,s1,1
    80003858:	000027b7          	lui	a5,0x2
    8000385c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003860:	0097ee63          	bltu	a5,s1,8000387c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003864:	00000713          	li	a4,0
    80003868:	000077b7          	lui	a5,0x7
    8000386c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003870:	fce7eee3          	bltu	a5,a4,8000384c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003874:	00170713          	addi	a4,a4,1
    80003878:	ff1ff06f          	j	80003868 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000387c:	00190913          	addi	s2,s2,1
    80003880:	00900793          	li	a5,9
    80003884:	0527e063          	bltu	a5,s2,800038c4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003888:	00006517          	auipc	a0,0x6
    8000388c:	89050513          	addi	a0,a0,-1904 # 80009118 <CONSOLE_STATUS+0x108>
    80003890:	00002097          	auipc	ra,0x2
    80003894:	eac080e7          	jalr	-340(ra) # 8000573c <_Z11printStringPKc>
    80003898:	00000613          	li	a2,0
    8000389c:	00a00593          	li	a1,10
    800038a0:	0009051b          	sext.w	a0,s2
    800038a4:	00002097          	auipc	ra,0x2
    800038a8:	048080e7          	jalr	72(ra) # 800058ec <_Z8printIntiii>
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	acc50513          	addi	a0,a0,-1332 # 80009378 <CONSOLE_STATUS+0x368>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	e88080e7          	jalr	-376(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038bc:	00000493          	li	s1,0
    800038c0:	f99ff06f          	j	80003858 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800038c4:	00006517          	auipc	a0,0x6
    800038c8:	85c50513          	addi	a0,a0,-1956 # 80009120 <CONSOLE_STATUS+0x110>
    800038cc:	00002097          	auipc	ra,0x2
    800038d0:	e70080e7          	jalr	-400(ra) # 8000573c <_Z11printStringPKc>
    finishedA = true;
    800038d4:	00100793          	li	a5,1
    800038d8:	00008717          	auipc	a4,0x8
    800038dc:	18f70023          	sb	a5,384(a4) # 8000ba58 <_ZL9finishedA>
}
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	00813483          	ld	s1,8(sp)
    800038ec:	00013903          	ld	s2,0(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret

00000000800038f8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	01213023          	sd	s2,0(sp)
    8000390c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003910:	00000913          	li	s2,0
    80003914:	0380006f          	j	8000394c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	c44080e7          	jalr	-956(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003920:	00148493          	addi	s1,s1,1
    80003924:	000027b7          	lui	a5,0x2
    80003928:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000392c:	0097ee63          	bltu	a5,s1,80003948 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003930:	00000713          	li	a4,0
    80003934:	000077b7          	lui	a5,0x7
    80003938:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000393c:	fce7eee3          	bltu	a5,a4,80003918 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003940:	00170713          	addi	a4,a4,1
    80003944:	ff1ff06f          	j	80003934 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003948:	00190913          	addi	s2,s2,1
    8000394c:	00f00793          	li	a5,15
    80003950:	0527e063          	bltu	a5,s2,80003990 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003954:	00005517          	auipc	a0,0x5
    80003958:	7dc50513          	addi	a0,a0,2012 # 80009130 <CONSOLE_STATUS+0x120>
    8000395c:	00002097          	auipc	ra,0x2
    80003960:	de0080e7          	jalr	-544(ra) # 8000573c <_Z11printStringPKc>
    80003964:	00000613          	li	a2,0
    80003968:	00a00593          	li	a1,10
    8000396c:	0009051b          	sext.w	a0,s2
    80003970:	00002097          	auipc	ra,0x2
    80003974:	f7c080e7          	jalr	-132(ra) # 800058ec <_Z8printIntiii>
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	a0050513          	addi	a0,a0,-1536 # 80009378 <CONSOLE_STATUS+0x368>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	dbc080e7          	jalr	-580(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003988:	00000493          	li	s1,0
    8000398c:	f99ff06f          	j	80003924 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003990:	00005517          	auipc	a0,0x5
    80003994:	7a850513          	addi	a0,a0,1960 # 80009138 <CONSOLE_STATUS+0x128>
    80003998:	00002097          	auipc	ra,0x2
    8000399c:	da4080e7          	jalr	-604(ra) # 8000573c <_Z11printStringPKc>
    finishedB = true;
    800039a0:	00100793          	li	a5,1
    800039a4:	00008717          	auipc	a4,0x8
    800039a8:	0af70aa3          	sb	a5,181(a4) # 8000ba59 <_ZL9finishedB>
    thread_dispatch();
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	bb0080e7          	jalr	-1104(ra) # 8000155c <_Z15thread_dispatchv>
}
    800039b4:	01813083          	ld	ra,24(sp)
    800039b8:	01013403          	ld	s0,16(sp)
    800039bc:	00813483          	ld	s1,8(sp)
    800039c0:	00013903          	ld	s2,0(sp)
    800039c4:	02010113          	addi	sp,sp,32
    800039c8:	00008067          	ret

00000000800039cc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800039cc:	fe010113          	addi	sp,sp,-32
    800039d0:	00113c23          	sd	ra,24(sp)
    800039d4:	00813823          	sd	s0,16(sp)
    800039d8:	00913423          	sd	s1,8(sp)
    800039dc:	01213023          	sd	s2,0(sp)
    800039e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800039e4:	00000493          	li	s1,0
    800039e8:	0400006f          	j	80003a28 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039ec:	00005517          	auipc	a0,0x5
    800039f0:	75c50513          	addi	a0,a0,1884 # 80009148 <CONSOLE_STATUS+0x138>
    800039f4:	00002097          	auipc	ra,0x2
    800039f8:	d48080e7          	jalr	-696(ra) # 8000573c <_Z11printStringPKc>
    800039fc:	00000613          	li	a2,0
    80003a00:	00a00593          	li	a1,10
    80003a04:	00048513          	mv	a0,s1
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	ee4080e7          	jalr	-284(ra) # 800058ec <_Z8printIntiii>
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	96850513          	addi	a0,a0,-1688 # 80009378 <CONSOLE_STATUS+0x368>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	d24080e7          	jalr	-732(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a20:	0014849b          	addiw	s1,s1,1
    80003a24:	0ff4f493          	andi	s1,s1,255
    80003a28:	00200793          	li	a5,2
    80003a2c:	fc97f0e3          	bgeu	a5,s1,800039ec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a30:	00005517          	auipc	a0,0x5
    80003a34:	72050513          	addi	a0,a0,1824 # 80009150 <CONSOLE_STATUS+0x140>
    80003a38:	00002097          	auipc	ra,0x2
    80003a3c:	d04080e7          	jalr	-764(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a40:	00700313          	li	t1,7
    thread_dispatch();
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	b18080e7          	jalr	-1256(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a4c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a50:	00005517          	auipc	a0,0x5
    80003a54:	71050513          	addi	a0,a0,1808 # 80009160 <CONSOLE_STATUS+0x150>
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	ce4080e7          	jalr	-796(ra) # 8000573c <_Z11printStringPKc>
    80003a60:	00000613          	li	a2,0
    80003a64:	00a00593          	li	a1,10
    80003a68:	0009051b          	sext.w	a0,s2
    80003a6c:	00002097          	auipc	ra,0x2
    80003a70:	e80080e7          	jalr	-384(ra) # 800058ec <_Z8printIntiii>
    80003a74:	00006517          	auipc	a0,0x6
    80003a78:	90450513          	addi	a0,a0,-1788 # 80009378 <CONSOLE_STATUS+0x368>
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	cc0080e7          	jalr	-832(ra) # 8000573c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a84:	00c00513          	li	a0,12
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	d30080e7          	jalr	-720(ra) # 800037b8 <_ZL9fibonaccim>
    80003a90:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a94:	00005517          	auipc	a0,0x5
    80003a98:	6d450513          	addi	a0,a0,1748 # 80009168 <CONSOLE_STATUS+0x158>
    80003a9c:	00002097          	auipc	ra,0x2
    80003aa0:	ca0080e7          	jalr	-864(ra) # 8000573c <_Z11printStringPKc>
    80003aa4:	00000613          	li	a2,0
    80003aa8:	00a00593          	li	a1,10
    80003aac:	0009051b          	sext.w	a0,s2
    80003ab0:	00002097          	auipc	ra,0x2
    80003ab4:	e3c080e7          	jalr	-452(ra) # 800058ec <_Z8printIntiii>
    80003ab8:	00006517          	auipc	a0,0x6
    80003abc:	8c050513          	addi	a0,a0,-1856 # 80009378 <CONSOLE_STATUS+0x368>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	c7c080e7          	jalr	-900(ra) # 8000573c <_Z11printStringPKc>
    80003ac8:	0400006f          	j	80003b08 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003acc:	00005517          	auipc	a0,0x5
    80003ad0:	67c50513          	addi	a0,a0,1660 # 80009148 <CONSOLE_STATUS+0x138>
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	c68080e7          	jalr	-920(ra) # 8000573c <_Z11printStringPKc>
    80003adc:	00000613          	li	a2,0
    80003ae0:	00a00593          	li	a1,10
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	e04080e7          	jalr	-508(ra) # 800058ec <_Z8printIntiii>
    80003af0:	00006517          	auipc	a0,0x6
    80003af4:	88850513          	addi	a0,a0,-1912 # 80009378 <CONSOLE_STATUS+0x368>
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	c44080e7          	jalr	-956(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b00:	0014849b          	addiw	s1,s1,1
    80003b04:	0ff4f493          	andi	s1,s1,255
    80003b08:	00500793          	li	a5,5
    80003b0c:	fc97f0e3          	bgeu	a5,s1,80003acc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003b10:	00005517          	auipc	a0,0x5
    80003b14:	66850513          	addi	a0,a0,1640 # 80009178 <CONSOLE_STATUS+0x168>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	c24080e7          	jalr	-988(ra) # 8000573c <_Z11printStringPKc>
    finishedC = true;
    80003b20:	00100793          	li	a5,1
    80003b24:	00008717          	auipc	a4,0x8
    80003b28:	f2f70b23          	sb	a5,-202(a4) # 8000ba5a <_ZL9finishedC>
    thread_dispatch();
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	a30080e7          	jalr	-1488(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	00013903          	ld	s2,0(sp)
    80003b44:	02010113          	addi	sp,sp,32
    80003b48:	00008067          	ret

0000000080003b4c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	01213023          	sd	s2,0(sp)
    80003b60:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b64:	00a00493          	li	s1,10
    80003b68:	0400006f          	j	80003ba8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b6c:	00005517          	auipc	a0,0x5
    80003b70:	61c50513          	addi	a0,a0,1564 # 80009188 <CONSOLE_STATUS+0x178>
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	bc8080e7          	jalr	-1080(ra) # 8000573c <_Z11printStringPKc>
    80003b7c:	00000613          	li	a2,0
    80003b80:	00a00593          	li	a1,10
    80003b84:	00048513          	mv	a0,s1
    80003b88:	00002097          	auipc	ra,0x2
    80003b8c:	d64080e7          	jalr	-668(ra) # 800058ec <_Z8printIntiii>
    80003b90:	00005517          	auipc	a0,0x5
    80003b94:	7e850513          	addi	a0,a0,2024 # 80009378 <CONSOLE_STATUS+0x368>
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	ba4080e7          	jalr	-1116(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ba0:	0014849b          	addiw	s1,s1,1
    80003ba4:	0ff4f493          	andi	s1,s1,255
    80003ba8:	00c00793          	li	a5,12
    80003bac:	fc97f0e3          	bgeu	a5,s1,80003b6c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003bb0:	00005517          	auipc	a0,0x5
    80003bb4:	5e050513          	addi	a0,a0,1504 # 80009190 <CONSOLE_STATUS+0x180>
    80003bb8:	00002097          	auipc	ra,0x2
    80003bbc:	b84080e7          	jalr	-1148(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003bc0:	00500313          	li	t1,5
    thread_dispatch();
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	998080e7          	jalr	-1640(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003bcc:	01000513          	li	a0,16
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	be8080e7          	jalr	-1048(ra) # 800037b8 <_ZL9fibonaccim>
    80003bd8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003bdc:	00005517          	auipc	a0,0x5
    80003be0:	5c450513          	addi	a0,a0,1476 # 800091a0 <CONSOLE_STATUS+0x190>
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	b58080e7          	jalr	-1192(ra) # 8000573c <_Z11printStringPKc>
    80003bec:	00000613          	li	a2,0
    80003bf0:	00a00593          	li	a1,10
    80003bf4:	0009051b          	sext.w	a0,s2
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	cf4080e7          	jalr	-780(ra) # 800058ec <_Z8printIntiii>
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	77850513          	addi	a0,a0,1912 # 80009378 <CONSOLE_STATUS+0x368>
    80003c08:	00002097          	auipc	ra,0x2
    80003c0c:	b34080e7          	jalr	-1228(ra) # 8000573c <_Z11printStringPKc>
    80003c10:	0400006f          	j	80003c50 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c14:	00005517          	auipc	a0,0x5
    80003c18:	57450513          	addi	a0,a0,1396 # 80009188 <CONSOLE_STATUS+0x178>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	b20080e7          	jalr	-1248(ra) # 8000573c <_Z11printStringPKc>
    80003c24:	00000613          	li	a2,0
    80003c28:	00a00593          	li	a1,10
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	cbc080e7          	jalr	-836(ra) # 800058ec <_Z8printIntiii>
    80003c38:	00005517          	auipc	a0,0x5
    80003c3c:	74050513          	addi	a0,a0,1856 # 80009378 <CONSOLE_STATUS+0x368>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	afc080e7          	jalr	-1284(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c48:	0014849b          	addiw	s1,s1,1
    80003c4c:	0ff4f493          	andi	s1,s1,255
    80003c50:	00f00793          	li	a5,15
    80003c54:	fc97f0e3          	bgeu	a5,s1,80003c14 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	55850513          	addi	a0,a0,1368 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	adc080e7          	jalr	-1316(ra) # 8000573c <_Z11printStringPKc>
    finishedD = true;
    80003c68:	00100793          	li	a5,1
    80003c6c:	00008717          	auipc	a4,0x8
    80003c70:	def707a3          	sb	a5,-529(a4) # 8000ba5b <_ZL9finishedD>
    thread_dispatch();
    80003c74:	ffffe097          	auipc	ra,0xffffe
    80003c78:	8e8080e7          	jalr	-1816(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003c7c:	01813083          	ld	ra,24(sp)
    80003c80:	01013403          	ld	s0,16(sp)
    80003c84:	00813483          	ld	s1,8(sp)
    80003c88:	00013903          	ld	s2,0(sp)
    80003c8c:	02010113          	addi	sp,sp,32
    80003c90:	00008067          	ret

0000000080003c94 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c94:	fc010113          	addi	sp,sp,-64
    80003c98:	02113c23          	sd	ra,56(sp)
    80003c9c:	02813823          	sd	s0,48(sp)
    80003ca0:	02913423          	sd	s1,40(sp)
    80003ca4:	03213023          	sd	s2,32(sp)
    80003ca8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003cac:	02000513          	li	a0,32
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	d90080e7          	jalr	-624(ra) # 80001a40 <_Znwm>
    80003cb8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	0b8080e7          	jalr	184(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80003cc4:	00008797          	auipc	a5,0x8
    80003cc8:	aec78793          	addi	a5,a5,-1300 # 8000b7b0 <_ZTV7WorkerA+0x10>
    80003ccc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003cd0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003cd4:	00005517          	auipc	a0,0x5
    80003cd8:	4ec50513          	addi	a0,a0,1260 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	a60080e7          	jalr	-1440(ra) # 8000573c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ce4:	02000513          	li	a0,32
    80003ce8:	ffffe097          	auipc	ra,0xffffe
    80003cec:	d58080e7          	jalr	-680(ra) # 80001a40 <_Znwm>
    80003cf0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003cf4:	ffffe097          	auipc	ra,0xffffe
    80003cf8:	080080e7          	jalr	128(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80003cfc:	00008797          	auipc	a5,0x8
    80003d00:	adc78793          	addi	a5,a5,-1316 # 8000b7d8 <_ZTV7WorkerB+0x10>
    80003d04:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d08:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	4cc50513          	addi	a0,a0,1228 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	a28080e7          	jalr	-1496(ra) # 8000573c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d1c:	02000513          	li	a0,32
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	d20080e7          	jalr	-736(ra) # 80001a40 <_Znwm>
    80003d28:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	048080e7          	jalr	72(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80003d34:	00008797          	auipc	a5,0x8
    80003d38:	acc78793          	addi	a5,a5,-1332 # 8000b800 <_ZTV7WorkerC+0x10>
    80003d3c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d40:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d44:	00005517          	auipc	a0,0x5
    80003d48:	4ac50513          	addi	a0,a0,1196 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003d4c:	00002097          	auipc	ra,0x2
    80003d50:	9f0080e7          	jalr	-1552(ra) # 8000573c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d54:	02000513          	li	a0,32
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	ce8080e7          	jalr	-792(ra) # 80001a40 <_Znwm>
    80003d60:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	010080e7          	jalr	16(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80003d6c:	00008797          	auipc	a5,0x8
    80003d70:	abc78793          	addi	a5,a5,-1348 # 8000b828 <_ZTV7WorkerD+0x10>
    80003d74:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d78:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	48c50513          	addi	a0,a0,1164 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	9b8080e7          	jalr	-1608(ra) # 8000573c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d8c:	00000493          	li	s1,0
    80003d90:	00300793          	li	a5,3
    80003d94:	0297c663          	blt	a5,s1,80003dc0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003d98:	00349793          	slli	a5,s1,0x3
    80003d9c:	fe040713          	addi	a4,s0,-32
    80003da0:	00f707b3          	add	a5,a4,a5
    80003da4:	fe07b503          	ld	a0,-32(a5)
    80003da8:	ffffe097          	auipc	ra,0xffffe
    80003dac:	f70080e7          	jalr	-144(ra) # 80001d18 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003db0:	0014849b          	addiw	s1,s1,1
    80003db4:	fddff06f          	j	80003d90 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	f94080e7          	jalr	-108(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003dc0:	00008797          	auipc	a5,0x8
    80003dc4:	c987c783          	lbu	a5,-872(a5) # 8000ba58 <_ZL9finishedA>
    80003dc8:	fe0788e3          	beqz	a5,80003db8 <_Z20Threads_CPP_API_testv+0x124>
    80003dcc:	00008797          	auipc	a5,0x8
    80003dd0:	c8d7c783          	lbu	a5,-883(a5) # 8000ba59 <_ZL9finishedB>
    80003dd4:	fe0782e3          	beqz	a5,80003db8 <_Z20Threads_CPP_API_testv+0x124>
    80003dd8:	00008797          	auipc	a5,0x8
    80003ddc:	c827c783          	lbu	a5,-894(a5) # 8000ba5a <_ZL9finishedC>
    80003de0:	fc078ce3          	beqz	a5,80003db8 <_Z20Threads_CPP_API_testv+0x124>
    80003de4:	00008797          	auipc	a5,0x8
    80003de8:	c777c783          	lbu	a5,-905(a5) # 8000ba5b <_ZL9finishedD>
    80003dec:	fc0786e3          	beqz	a5,80003db8 <_Z20Threads_CPP_API_testv+0x124>
    80003df0:	fc040493          	addi	s1,s0,-64
    80003df4:	0080006f          	j	80003dfc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003df8:	00848493          	addi	s1,s1,8
    80003dfc:	fe040793          	addi	a5,s0,-32
    80003e00:	08f48663          	beq	s1,a5,80003e8c <_Z20Threads_CPP_API_testv+0x1f8>
    80003e04:	0004b503          	ld	a0,0(s1)
    80003e08:	fe0508e3          	beqz	a0,80003df8 <_Z20Threads_CPP_API_testv+0x164>
    80003e0c:	00053783          	ld	a5,0(a0)
    80003e10:	0087b783          	ld	a5,8(a5)
    80003e14:	000780e7          	jalr	a5
    80003e18:	fe1ff06f          	j	80003df8 <_Z20Threads_CPP_API_testv+0x164>
    80003e1c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e20:	00048513          	mv	a0,s1
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	c6c080e7          	jalr	-916(ra) # 80001a90 <_ZdlPv>
    80003e2c:	00090513          	mv	a0,s2
    80003e30:	00009097          	auipc	ra,0x9
    80003e34:	d38080e7          	jalr	-712(ra) # 8000cb68 <_Unwind_Resume>
    80003e38:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	c50080e7          	jalr	-944(ra) # 80001a90 <_ZdlPv>
    80003e48:	00090513          	mv	a0,s2
    80003e4c:	00009097          	auipc	ra,0x9
    80003e50:	d1c080e7          	jalr	-740(ra) # 8000cb68 <_Unwind_Resume>
    80003e54:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	c34080e7          	jalr	-972(ra) # 80001a90 <_ZdlPv>
    80003e64:	00090513          	mv	a0,s2
    80003e68:	00009097          	auipc	ra,0x9
    80003e6c:	d00080e7          	jalr	-768(ra) # 8000cb68 <_Unwind_Resume>
    80003e70:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e74:	00048513          	mv	a0,s1
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	c18080e7          	jalr	-1000(ra) # 80001a90 <_ZdlPv>
    80003e80:	00090513          	mv	a0,s2
    80003e84:	00009097          	auipc	ra,0x9
    80003e88:	ce4080e7          	jalr	-796(ra) # 8000cb68 <_Unwind_Resume>
}
    80003e8c:	03813083          	ld	ra,56(sp)
    80003e90:	03013403          	ld	s0,48(sp)
    80003e94:	02813483          	ld	s1,40(sp)
    80003e98:	02013903          	ld	s2,32(sp)
    80003e9c:	04010113          	addi	sp,sp,64
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003ea4:	ff010113          	addi	sp,sp,-16
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	00813023          	sd	s0,0(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    80003eb4:	00008797          	auipc	a5,0x8
    80003eb8:	8fc78793          	addi	a5,a5,-1796 # 8000b7b0 <_ZTV7WorkerA+0x10>
    80003ebc:	00f53023          	sd	a5,0(a0)
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	c4c080e7          	jalr	-948(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80003ec8:	00813083          	ld	ra,8(sp)
    80003ecc:	00013403          	ld	s0,0(sp)
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <_ZN7WorkerAD0Ev>:
    80003ed8:	fe010113          	addi	sp,sp,-32
    80003edc:	00113c23          	sd	ra,24(sp)
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    80003eec:	00050493          	mv	s1,a0
    80003ef0:	00008797          	auipc	a5,0x8
    80003ef4:	8c078793          	addi	a5,a5,-1856 # 8000b7b0 <_ZTV7WorkerA+0x10>
    80003ef8:	00f53023          	sd	a5,0(a0)
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	c10080e7          	jalr	-1008(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80003f04:	00048513          	mv	a0,s1
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	b88080e7          	jalr	-1144(ra) # 80001a90 <_ZdlPv>
    80003f10:	01813083          	ld	ra,24(sp)
    80003f14:	01013403          	ld	s0,16(sp)
    80003f18:	00813483          	ld	s1,8(sp)
    80003f1c:	02010113          	addi	sp,sp,32
    80003f20:	00008067          	ret

0000000080003f24 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00113423          	sd	ra,8(sp)
    80003f2c:	00813023          	sd	s0,0(sp)
    80003f30:	01010413          	addi	s0,sp,16
    80003f34:	00008797          	auipc	a5,0x8
    80003f38:	8a478793          	addi	a5,a5,-1884 # 8000b7d8 <_ZTV7WorkerB+0x10>
    80003f3c:	00f53023          	sd	a5,0(a0)
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	bcc080e7          	jalr	-1076(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80003f48:	00813083          	ld	ra,8(sp)
    80003f4c:	00013403          	ld	s0,0(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <_ZN7WorkerBD0Ev>:
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00113c23          	sd	ra,24(sp)
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00050493          	mv	s1,a0
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	86878793          	addi	a5,a5,-1944 # 8000b7d8 <_ZTV7WorkerB+0x10>
    80003f78:	00f53023          	sd	a5,0(a0)
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	b90080e7          	jalr	-1136(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80003f84:	00048513          	mv	a0,s1
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	b08080e7          	jalr	-1272(ra) # 80001a90 <_ZdlPv>
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	01013403          	ld	s0,16(sp)
    80003f98:	00813483          	ld	s1,8(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    80003fb4:	00008797          	auipc	a5,0x8
    80003fb8:	84c78793          	addi	a5,a5,-1972 # 8000b800 <_ZTV7WorkerC+0x10>
    80003fbc:	00f53023          	sd	a5,0(a0)
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	b4c080e7          	jalr	-1204(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80003fc8:	00813083          	ld	ra,8(sp)
    80003fcc:	00013403          	ld	s0,0(sp)
    80003fd0:	01010113          	addi	sp,sp,16
    80003fd4:	00008067          	ret

0000000080003fd8 <_ZN7WorkerCD0Ev>:
    80003fd8:	fe010113          	addi	sp,sp,-32
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	00050493          	mv	s1,a0
    80003ff0:	00008797          	auipc	a5,0x8
    80003ff4:	81078793          	addi	a5,a5,-2032 # 8000b800 <_ZTV7WorkerC+0x10>
    80003ff8:	00f53023          	sd	a5,0(a0)
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	b10080e7          	jalr	-1264(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004004:	00048513          	mv	a0,s1
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	a88080e7          	jalr	-1400(ra) # 80001a90 <_ZdlPv>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	00813483          	ld	s1,8(sp)
    8000401c:	02010113          	addi	sp,sp,32
    80004020:	00008067          	ret

0000000080004024 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00113423          	sd	ra,8(sp)
    8000402c:	00813023          	sd	s0,0(sp)
    80004030:	01010413          	addi	s0,sp,16
    80004034:	00007797          	auipc	a5,0x7
    80004038:	7f478793          	addi	a5,a5,2036 # 8000b828 <_ZTV7WorkerD+0x10>
    8000403c:	00f53023          	sd	a5,0(a0)
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	acc080e7          	jalr	-1332(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004048:	00813083          	ld	ra,8(sp)
    8000404c:	00013403          	ld	s0,0(sp)
    80004050:	01010113          	addi	sp,sp,16
    80004054:	00008067          	ret

0000000080004058 <_ZN7WorkerDD0Ev>:
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00113c23          	sd	ra,24(sp)
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	00050493          	mv	s1,a0
    80004070:	00007797          	auipc	a5,0x7
    80004074:	7b878793          	addi	a5,a5,1976 # 8000b828 <_ZTV7WorkerD+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	a90080e7          	jalr	-1392(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004084:	00048513          	mv	a0,s1
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	a08080e7          	jalr	-1528(ra) # 80001a90 <_ZdlPv>
    80004090:	01813083          	ld	ra,24(sp)
    80004094:	01013403          	ld	s0,16(sp)
    80004098:	00813483          	ld	s1,8(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	00813023          	sd	s0,0(sp)
    800040b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800040b4:	00000593          	li	a1,0
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	774080e7          	jalr	1908(ra) # 8000382c <_ZN7WorkerA11workerBodyAEPv>
    }
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret

00000000800040d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00113423          	sd	ra,8(sp)
    800040d8:	00813023          	sd	s0,0(sp)
    800040dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800040e0:	00000593          	li	a1,0
    800040e4:	00000097          	auipc	ra,0x0
    800040e8:	814080e7          	jalr	-2028(ra) # 800038f8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_ZN7WorkerC3runEv>:
    void run() override {
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00113423          	sd	ra,8(sp)
    80004104:	00813023          	sd	s0,0(sp)
    80004108:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000410c:	00000593          	li	a1,0
    80004110:	00000097          	auipc	ra,0x0
    80004114:	8bc080e7          	jalr	-1860(ra) # 800039cc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerD3runEv>:
    void run() override {
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004138:	00000593          	li	a1,0
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	a10080e7          	jalr	-1520(ra) # 80003b4c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004144:	00813083          	ld	ra,8(sp)
    80004148:	00013403          	ld	s0,0(sp)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004154:	f8010113          	addi	sp,sp,-128
    80004158:	06113c23          	sd	ra,120(sp)
    8000415c:	06813823          	sd	s0,112(sp)
    80004160:	06913423          	sd	s1,104(sp)
    80004164:	07213023          	sd	s2,96(sp)
    80004168:	05313c23          	sd	s3,88(sp)
    8000416c:	05413823          	sd	s4,80(sp)
    80004170:	05513423          	sd	s5,72(sp)
    80004174:	05613023          	sd	s6,64(sp)
    80004178:	03713c23          	sd	s7,56(sp)
    8000417c:	03813823          	sd	s8,48(sp)
    80004180:	03913423          	sd	s9,40(sp)
    80004184:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004188:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000418c:	00005517          	auipc	a0,0x5
    80004190:	ea450513          	addi	a0,a0,-348 # 80009030 <CONSOLE_STATUS+0x20>
    80004194:	00001097          	auipc	ra,0x1
    80004198:	5a8080e7          	jalr	1448(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    8000419c:	01e00593          	li	a1,30
    800041a0:	f8040493          	addi	s1,s0,-128
    800041a4:	00048513          	mv	a0,s1
    800041a8:	00001097          	auipc	ra,0x1
    800041ac:	61c080e7          	jalr	1564(ra) # 800057c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800041b0:	00048513          	mv	a0,s1
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	6e8080e7          	jalr	1768(ra) # 8000589c <_Z11stringToIntPKc>
    800041bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800041c0:	00005517          	auipc	a0,0x5
    800041c4:	e9050513          	addi	a0,a0,-368 # 80009050 <CONSOLE_STATUS+0x40>
    800041c8:	00001097          	auipc	ra,0x1
    800041cc:	574080e7          	jalr	1396(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    800041d0:	01e00593          	li	a1,30
    800041d4:	00048513          	mv	a0,s1
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	5ec080e7          	jalr	1516(ra) # 800057c4 <_Z9getStringPci>
    n = stringToInt(input);
    800041e0:	00048513          	mv	a0,s1
    800041e4:	00001097          	auipc	ra,0x1
    800041e8:	6b8080e7          	jalr	1720(ra) # 8000589c <_Z11stringToIntPKc>
    800041ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800041f0:	00005517          	auipc	a0,0x5
    800041f4:	e8050513          	addi	a0,a0,-384 # 80009070 <CONSOLE_STATUS+0x60>
    800041f8:	00001097          	auipc	ra,0x1
    800041fc:	544080e7          	jalr	1348(ra) # 8000573c <_Z11printStringPKc>
    printInt(threadNum);
    80004200:	00000613          	li	a2,0
    80004204:	00a00593          	li	a1,10
    80004208:	00098513          	mv	a0,s3
    8000420c:	00001097          	auipc	ra,0x1
    80004210:	6e0080e7          	jalr	1760(ra) # 800058ec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004214:	00005517          	auipc	a0,0x5
    80004218:	e7450513          	addi	a0,a0,-396 # 80009088 <CONSOLE_STATUS+0x78>
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	520080e7          	jalr	1312(ra) # 8000573c <_Z11printStringPKc>
    printInt(n);
    80004224:	00000613          	li	a2,0
    80004228:	00a00593          	li	a1,10
    8000422c:	00048513          	mv	a0,s1
    80004230:	00001097          	auipc	ra,0x1
    80004234:	6bc080e7          	jalr	1724(ra) # 800058ec <_Z8printIntiii>
    printString(".\n");
    80004238:	00005517          	auipc	a0,0x5
    8000423c:	e6850513          	addi	a0,a0,-408 # 800090a0 <CONSOLE_STATUS+0x90>
    80004240:	00001097          	auipc	ra,0x1
    80004244:	4fc080e7          	jalr	1276(ra) # 8000573c <_Z11printStringPKc>
    if (threadNum > n) {
    80004248:	0334c463          	blt	s1,s3,80004270 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000424c:	03305c63          	blez	s3,80004284 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004250:	03800513          	li	a0,56
    80004254:	ffffd097          	auipc	ra,0xffffd
    80004258:	7ec080e7          	jalr	2028(ra) # 80001a40 <_Znwm>
    8000425c:	00050a93          	mv	s5,a0
    80004260:	00048593          	mv	a1,s1
    80004264:	00001097          	auipc	ra,0x1
    80004268:	7a8080e7          	jalr	1960(ra) # 80005a0c <_ZN9BufferCPPC1Ei>
    8000426c:	0300006f          	j	8000429c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004270:	00005517          	auipc	a0,0x5
    80004274:	e3850513          	addi	a0,a0,-456 # 800090a8 <CONSOLE_STATUS+0x98>
    80004278:	00001097          	auipc	ra,0x1
    8000427c:	4c4080e7          	jalr	1220(ra) # 8000573c <_Z11printStringPKc>
        return;
    80004280:	0140006f          	j	80004294 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004284:	00005517          	auipc	a0,0x5
    80004288:	e6450513          	addi	a0,a0,-412 # 800090e8 <CONSOLE_STATUS+0xd8>
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	4b0080e7          	jalr	1200(ra) # 8000573c <_Z11printStringPKc>
        return;
    80004294:	000c0113          	mv	sp,s8
    80004298:	2140006f          	j	800044ac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000429c:	01000513          	li	a0,16
    800042a0:	ffffd097          	auipc	ra,0xffffd
    800042a4:	7a0080e7          	jalr	1952(ra) # 80001a40 <_Znwm>
    800042a8:	00050913          	mv	s2,a0
    800042ac:	00000593          	li	a1,0
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	b50080e7          	jalr	-1200(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    800042b8:	00007797          	auipc	a5,0x7
    800042bc:	7b27b823          	sd	s2,1968(a5) # 8000ba68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800042c0:	00399793          	slli	a5,s3,0x3
    800042c4:	00f78793          	addi	a5,a5,15
    800042c8:	ff07f793          	andi	a5,a5,-16
    800042cc:	40f10133          	sub	sp,sp,a5
    800042d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800042d4:	0019871b          	addiw	a4,s3,1
    800042d8:	00171793          	slli	a5,a4,0x1
    800042dc:	00e787b3          	add	a5,a5,a4
    800042e0:	00379793          	slli	a5,a5,0x3
    800042e4:	00f78793          	addi	a5,a5,15
    800042e8:	ff07f793          	andi	a5,a5,-16
    800042ec:	40f10133          	sub	sp,sp,a5
    800042f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800042f4:	00199493          	slli	s1,s3,0x1
    800042f8:	013484b3          	add	s1,s1,s3
    800042fc:	00349493          	slli	s1,s1,0x3
    80004300:	009b04b3          	add	s1,s6,s1
    80004304:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004308:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000430c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004310:	02800513          	li	a0,40
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	72c080e7          	jalr	1836(ra) # 80001a40 <_Znwm>
    8000431c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	a54080e7          	jalr	-1452(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80004328:	00007797          	auipc	a5,0x7
    8000432c:	57878793          	addi	a5,a5,1400 # 8000b8a0 <_ZTV8Consumer+0x10>
    80004330:	00fbb023          	sd	a5,0(s7)
    80004334:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004338:	000b8513          	mv	a0,s7
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	9dc080e7          	jalr	-1572(ra) # 80001d18 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004344:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004348:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000434c:	00007797          	auipc	a5,0x7
    80004350:	71c7b783          	ld	a5,1820(a5) # 8000ba68 <_ZL10waitForAll>
    80004354:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004358:	02800513          	li	a0,40
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	6e4080e7          	jalr	1764(ra) # 80001a40 <_Znwm>
    80004364:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	a0c080e7          	jalr	-1524(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80004370:	00007797          	auipc	a5,0x7
    80004374:	4e078793          	addi	a5,a5,1248 # 8000b850 <_ZTV16ProducerKeyborad+0x10>
    80004378:	00f4b023          	sd	a5,0(s1)
    8000437c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004380:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004384:	00048513          	mv	a0,s1
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	990080e7          	jalr	-1648(ra) # 80001d18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004390:	00100913          	li	s2,1
    80004394:	0300006f          	j	800043c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004398:	00007797          	auipc	a5,0x7
    8000439c:	4e078793          	addi	a5,a5,1248 # 8000b878 <_ZTV8Producer+0x10>
    800043a0:	00fcb023          	sd	a5,0(s9)
    800043a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800043a8:	00391793          	slli	a5,s2,0x3
    800043ac:	00fa07b3          	add	a5,s4,a5
    800043b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800043b4:	000c8513          	mv	a0,s9
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	960080e7          	jalr	-1696(ra) # 80001d18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043c0:	0019091b          	addiw	s2,s2,1
    800043c4:	05395263          	bge	s2,s3,80004408 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800043c8:	00191493          	slli	s1,s2,0x1
    800043cc:	012484b3          	add	s1,s1,s2
    800043d0:	00349493          	slli	s1,s1,0x3
    800043d4:	009b04b3          	add	s1,s6,s1
    800043d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800043dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800043e0:	00007797          	auipc	a5,0x7
    800043e4:	6887b783          	ld	a5,1672(a5) # 8000ba68 <_ZL10waitForAll>
    800043e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800043ec:	02800513          	li	a0,40
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	650080e7          	jalr	1616(ra) # 80001a40 <_Znwm>
    800043f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	978080e7          	jalr	-1672(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80004404:	f95ff06f          	j	80004398 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	944080e7          	jalr	-1724(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004410:	00000493          	li	s1,0
    80004414:	0099ce63          	blt	s3,s1,80004430 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004418:	00007517          	auipc	a0,0x7
    8000441c:	65053503          	ld	a0,1616(a0) # 8000ba68 <_ZL10waitForAll>
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	a1c080e7          	jalr	-1508(ra) # 80001e3c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004428:	0014849b          	addiw	s1,s1,1
    8000442c:	fe9ff06f          	j	80004414 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004430:	00007517          	auipc	a0,0x7
    80004434:	63853503          	ld	a0,1592(a0) # 8000ba68 <_ZL10waitForAll>
    80004438:	00050863          	beqz	a0,80004448 <_Z20testConsumerProducerv+0x2f4>
    8000443c:	00053783          	ld	a5,0(a0)
    80004440:	0087b783          	ld	a5,8(a5)
    80004444:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004448:	00000493          	li	s1,0
    8000444c:	0080006f          	j	80004454 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004450:	0014849b          	addiw	s1,s1,1
    80004454:	0334d263          	bge	s1,s3,80004478 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004458:	00349793          	slli	a5,s1,0x3
    8000445c:	00fa07b3          	add	a5,s4,a5
    80004460:	0007b503          	ld	a0,0(a5)
    80004464:	fe0506e3          	beqz	a0,80004450 <_Z20testConsumerProducerv+0x2fc>
    80004468:	00053783          	ld	a5,0(a0)
    8000446c:	0087b783          	ld	a5,8(a5)
    80004470:	000780e7          	jalr	a5
    80004474:	fddff06f          	j	80004450 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004478:	000b8a63          	beqz	s7,8000448c <_Z20testConsumerProducerv+0x338>
    8000447c:	000bb783          	ld	a5,0(s7)
    80004480:	0087b783          	ld	a5,8(a5)
    80004484:	000b8513          	mv	a0,s7
    80004488:	000780e7          	jalr	a5
    delete buffer;
    8000448c:	000a8e63          	beqz	s5,800044a8 <_Z20testConsumerProducerv+0x354>
    80004490:	000a8513          	mv	a0,s5
    80004494:	00002097          	auipc	ra,0x2
    80004498:	870080e7          	jalr	-1936(ra) # 80005d04 <_ZN9BufferCPPD1Ev>
    8000449c:	000a8513          	mv	a0,s5
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	5f0080e7          	jalr	1520(ra) # 80001a90 <_ZdlPv>
    800044a8:	000c0113          	mv	sp,s8
}
    800044ac:	f8040113          	addi	sp,s0,-128
    800044b0:	07813083          	ld	ra,120(sp)
    800044b4:	07013403          	ld	s0,112(sp)
    800044b8:	06813483          	ld	s1,104(sp)
    800044bc:	06013903          	ld	s2,96(sp)
    800044c0:	05813983          	ld	s3,88(sp)
    800044c4:	05013a03          	ld	s4,80(sp)
    800044c8:	04813a83          	ld	s5,72(sp)
    800044cc:	04013b03          	ld	s6,64(sp)
    800044d0:	03813b83          	ld	s7,56(sp)
    800044d4:	03013c03          	ld	s8,48(sp)
    800044d8:	02813c83          	ld	s9,40(sp)
    800044dc:	08010113          	addi	sp,sp,128
    800044e0:	00008067          	ret
    800044e4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044e8:	000a8513          	mv	a0,s5
    800044ec:	ffffd097          	auipc	ra,0xffffd
    800044f0:	5a4080e7          	jalr	1444(ra) # 80001a90 <_ZdlPv>
    800044f4:	00048513          	mv	a0,s1
    800044f8:	00008097          	auipc	ra,0x8
    800044fc:	670080e7          	jalr	1648(ra) # 8000cb68 <_Unwind_Resume>
    80004500:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004504:	00090513          	mv	a0,s2
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	588080e7          	jalr	1416(ra) # 80001a90 <_ZdlPv>
    80004510:	00048513          	mv	a0,s1
    80004514:	00008097          	auipc	ra,0x8
    80004518:	654080e7          	jalr	1620(ra) # 8000cb68 <_Unwind_Resume>
    8000451c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004520:	000b8513          	mv	a0,s7
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	56c080e7          	jalr	1388(ra) # 80001a90 <_ZdlPv>
    8000452c:	00048513          	mv	a0,s1
    80004530:	00008097          	auipc	ra,0x8
    80004534:	638080e7          	jalr	1592(ra) # 8000cb68 <_Unwind_Resume>
    80004538:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000453c:	00048513          	mv	a0,s1
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	550080e7          	jalr	1360(ra) # 80001a90 <_ZdlPv>
    80004548:	00090513          	mv	a0,s2
    8000454c:	00008097          	auipc	ra,0x8
    80004550:	61c080e7          	jalr	1564(ra) # 8000cb68 <_Unwind_Resume>
    80004554:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004558:	000c8513          	mv	a0,s9
    8000455c:	ffffd097          	auipc	ra,0xffffd
    80004560:	534080e7          	jalr	1332(ra) # 80001a90 <_ZdlPv>
    80004564:	00048513          	mv	a0,s1
    80004568:	00008097          	auipc	ra,0x8
    8000456c:	600080e7          	jalr	1536(ra) # 8000cb68 <_Unwind_Resume>

0000000080004570 <_ZN8Consumer3runEv>:
    void run() override {
    80004570:	fd010113          	addi	sp,sp,-48
    80004574:	02113423          	sd	ra,40(sp)
    80004578:	02813023          	sd	s0,32(sp)
    8000457c:	00913c23          	sd	s1,24(sp)
    80004580:	01213823          	sd	s2,16(sp)
    80004584:	01313423          	sd	s3,8(sp)
    80004588:	03010413          	addi	s0,sp,48
    8000458c:	00050913          	mv	s2,a0
        int i = 0;
    80004590:	00000993          	li	s3,0
    80004594:	0100006f          	j	800045a4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004598:	00a00513          	li	a0,10
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	98c080e7          	jalr	-1652(ra) # 80001f28 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800045a4:	00007797          	auipc	a5,0x7
    800045a8:	4bc7a783          	lw	a5,1212(a5) # 8000ba60 <_ZL9threadEnd>
    800045ac:	04079a63          	bnez	a5,80004600 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800045b0:	02093783          	ld	a5,32(s2)
    800045b4:	0087b503          	ld	a0,8(a5)
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	638080e7          	jalr	1592(ra) # 80005bf0 <_ZN9BufferCPP3getEv>
            i++;
    800045c0:	0019849b          	addiw	s1,s3,1
    800045c4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800045c8:	0ff57513          	andi	a0,a0,255
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	95c080e7          	jalr	-1700(ra) # 80001f28 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800045d4:	05000793          	li	a5,80
    800045d8:	02f4e4bb          	remw	s1,s1,a5
    800045dc:	fc0494e3          	bnez	s1,800045a4 <_ZN8Consumer3runEv+0x34>
    800045e0:	fb9ff06f          	j	80004598 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045e4:	02093783          	ld	a5,32(s2)
    800045e8:	0087b503          	ld	a0,8(a5)
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	604080e7          	jalr	1540(ra) # 80005bf0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800045f4:	0ff57513          	andi	a0,a0,255
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	930080e7          	jalr	-1744(ra) # 80001f28 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004600:	02093783          	ld	a5,32(s2)
    80004604:	0087b503          	ld	a0,8(a5)
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	674080e7          	jalr	1652(ra) # 80005c7c <_ZN9BufferCPP6getCntEv>
    80004610:	fca04ae3          	bgtz	a0,800045e4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004614:	02093783          	ld	a5,32(s2)
    80004618:	0107b503          	ld	a0,16(a5)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	84c080e7          	jalr	-1972(ra) # 80001e68 <_ZN9Semaphore6signalEv>
    }
    80004624:	02813083          	ld	ra,40(sp)
    80004628:	02013403          	ld	s0,32(sp)
    8000462c:	01813483          	ld	s1,24(sp)
    80004630:	01013903          	ld	s2,16(sp)
    80004634:	00813983          	ld	s3,8(sp)
    80004638:	03010113          	addi	sp,sp,48
    8000463c:	00008067          	ret

0000000080004640 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00113423          	sd	ra,8(sp)
    80004648:	00813023          	sd	s0,0(sp)
    8000464c:	01010413          	addi	s0,sp,16
    80004650:	00007797          	auipc	a5,0x7
    80004654:	25078793          	addi	a5,a5,592 # 8000b8a0 <_ZTV8Consumer+0x10>
    80004658:	00f53023          	sd	a5,0(a0)
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	4b0080e7          	jalr	1200(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004664:	00813083          	ld	ra,8(sp)
    80004668:	00013403          	ld	s0,0(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN8ConsumerD0Ev>:
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00113c23          	sd	ra,24(sp)
    8000467c:	00813823          	sd	s0,16(sp)
    80004680:	00913423          	sd	s1,8(sp)
    80004684:	02010413          	addi	s0,sp,32
    80004688:	00050493          	mv	s1,a0
    8000468c:	00007797          	auipc	a5,0x7
    80004690:	21478793          	addi	a5,a5,532 # 8000b8a0 <_ZTV8Consumer+0x10>
    80004694:	00f53023          	sd	a5,0(a0)
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	474080e7          	jalr	1140(ra) # 80001b0c <_ZN6ThreadD1Ev>
    800046a0:	00048513          	mv	a0,s1
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	3ec080e7          	jalr	1004(ra) # 80001a90 <_ZdlPv>
    800046ac:	01813083          	ld	ra,24(sp)
    800046b0:	01013403          	ld	s0,16(sp)
    800046b4:	00813483          	ld	s1,8(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret

00000000800046c0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800046c0:	ff010113          	addi	sp,sp,-16
    800046c4:	00113423          	sd	ra,8(sp)
    800046c8:	00813023          	sd	s0,0(sp)
    800046cc:	01010413          	addi	s0,sp,16
    800046d0:	00007797          	auipc	a5,0x7
    800046d4:	18078793          	addi	a5,a5,384 # 8000b850 <_ZTV16ProducerKeyborad+0x10>
    800046d8:	00f53023          	sd	a5,0(a0)
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	430080e7          	jalr	1072(ra) # 80001b0c <_ZN6ThreadD1Ev>
    800046e4:	00813083          	ld	ra,8(sp)
    800046e8:	00013403          	ld	s0,0(sp)
    800046ec:	01010113          	addi	sp,sp,16
    800046f0:	00008067          	ret

00000000800046f4 <_ZN16ProducerKeyboradD0Ev>:
    800046f4:	fe010113          	addi	sp,sp,-32
    800046f8:	00113c23          	sd	ra,24(sp)
    800046fc:	00813823          	sd	s0,16(sp)
    80004700:	00913423          	sd	s1,8(sp)
    80004704:	02010413          	addi	s0,sp,32
    80004708:	00050493          	mv	s1,a0
    8000470c:	00007797          	auipc	a5,0x7
    80004710:	14478793          	addi	a5,a5,324 # 8000b850 <_ZTV16ProducerKeyborad+0x10>
    80004714:	00f53023          	sd	a5,0(a0)
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	3f4080e7          	jalr	1012(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004720:	00048513          	mv	a0,s1
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	36c080e7          	jalr	876(ra) # 80001a90 <_ZdlPv>
    8000472c:	01813083          	ld	ra,24(sp)
    80004730:	01013403          	ld	s0,16(sp)
    80004734:	00813483          	ld	s1,8(sp)
    80004738:	02010113          	addi	sp,sp,32
    8000473c:	00008067          	ret

0000000080004740 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004740:	ff010113          	addi	sp,sp,-16
    80004744:	00113423          	sd	ra,8(sp)
    80004748:	00813023          	sd	s0,0(sp)
    8000474c:	01010413          	addi	s0,sp,16
    80004750:	00007797          	auipc	a5,0x7
    80004754:	12878793          	addi	a5,a5,296 # 8000b878 <_ZTV8Producer+0x10>
    80004758:	00f53023          	sd	a5,0(a0)
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	3b0080e7          	jalr	944(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80004764:	00813083          	ld	ra,8(sp)
    80004768:	00013403          	ld	s0,0(sp)
    8000476c:	01010113          	addi	sp,sp,16
    80004770:	00008067          	ret

0000000080004774 <_ZN8ProducerD0Ev>:
    80004774:	fe010113          	addi	sp,sp,-32
    80004778:	00113c23          	sd	ra,24(sp)
    8000477c:	00813823          	sd	s0,16(sp)
    80004780:	00913423          	sd	s1,8(sp)
    80004784:	02010413          	addi	s0,sp,32
    80004788:	00050493          	mv	s1,a0
    8000478c:	00007797          	auipc	a5,0x7
    80004790:	0ec78793          	addi	a5,a5,236 # 8000b878 <_ZTV8Producer+0x10>
    80004794:	00f53023          	sd	a5,0(a0)
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	374080e7          	jalr	884(ra) # 80001b0c <_ZN6ThreadD1Ev>
    800047a0:	00048513          	mv	a0,s1
    800047a4:	ffffd097          	auipc	ra,0xffffd
    800047a8:	2ec080e7          	jalr	748(ra) # 80001a90 <_ZdlPv>
    800047ac:	01813083          	ld	ra,24(sp)
    800047b0:	01013403          	ld	s0,16(sp)
    800047b4:	00813483          	ld	s1,8(sp)
    800047b8:	02010113          	addi	sp,sp,32
    800047bc:	00008067          	ret

00000000800047c0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800047c0:	fe010113          	addi	sp,sp,-32
    800047c4:	00113c23          	sd	ra,24(sp)
    800047c8:	00813823          	sd	s0,16(sp)
    800047cc:	00913423          	sd	s1,8(sp)
    800047d0:	02010413          	addi	s0,sp,32
    800047d4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	f08080e7          	jalr	-248(ra) # 800016e0 <_Z4getcv>
    800047e0:	0005059b          	sext.w	a1,a0
    800047e4:	01b00793          	li	a5,27
    800047e8:	00f58c63          	beq	a1,a5,80004800 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047ec:	0204b783          	ld	a5,32(s1)
    800047f0:	0087b503          	ld	a0,8(a5)
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	36c080e7          	jalr	876(ra) # 80005b60 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800047fc:	fddff06f          	j	800047d8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004800:	00100793          	li	a5,1
    80004804:	00007717          	auipc	a4,0x7
    80004808:	24f72e23          	sw	a5,604(a4) # 8000ba60 <_ZL9threadEnd>
        td->buffer->put('!');
    8000480c:	0204b783          	ld	a5,32(s1)
    80004810:	02100593          	li	a1,33
    80004814:	0087b503          	ld	a0,8(a5)
    80004818:	00001097          	auipc	ra,0x1
    8000481c:	348080e7          	jalr	840(ra) # 80005b60 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004820:	0204b783          	ld	a5,32(s1)
    80004824:	0107b503          	ld	a0,16(a5)
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	640080e7          	jalr	1600(ra) # 80001e68 <_ZN9Semaphore6signalEv>
    }
    80004830:	01813083          	ld	ra,24(sp)
    80004834:	01013403          	ld	s0,16(sp)
    80004838:	00813483          	ld	s1,8(sp)
    8000483c:	02010113          	addi	sp,sp,32
    80004840:	00008067          	ret

0000000080004844 <_ZN8Producer3runEv>:
    void run() override {
    80004844:	fe010113          	addi	sp,sp,-32
    80004848:	00113c23          	sd	ra,24(sp)
    8000484c:	00813823          	sd	s0,16(sp)
    80004850:	00913423          	sd	s1,8(sp)
    80004854:	01213023          	sd	s2,0(sp)
    80004858:	02010413          	addi	s0,sp,32
    8000485c:	00050493          	mv	s1,a0
        int i = 0;
    80004860:	00000913          	li	s2,0
        while (!threadEnd) {
    80004864:	00007797          	auipc	a5,0x7
    80004868:	1fc7a783          	lw	a5,508(a5) # 8000ba60 <_ZL9threadEnd>
    8000486c:	04079263          	bnez	a5,800048b0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004870:	0204b783          	ld	a5,32(s1)
    80004874:	0007a583          	lw	a1,0(a5)
    80004878:	0305859b          	addiw	a1,a1,48
    8000487c:	0087b503          	ld	a0,8(a5)
    80004880:	00001097          	auipc	ra,0x1
    80004884:	2e0080e7          	jalr	736(ra) # 80005b60 <_ZN9BufferCPP3putEi>
            i++;
    80004888:	0019071b          	addiw	a4,s2,1
    8000488c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004890:	0204b783          	ld	a5,32(s1)
    80004894:	0007a783          	lw	a5,0(a5)
    80004898:	00e787bb          	addw	a5,a5,a4
    8000489c:	00500513          	li	a0,5
    800048a0:	02a7e53b          	remw	a0,a5,a0
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	534080e7          	jalr	1332(ra) # 80001dd8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800048ac:	fb9ff06f          	j	80004864 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800048b0:	0204b783          	ld	a5,32(s1)
    800048b4:	0107b503          	ld	a0,16(a5)
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	5b0080e7          	jalr	1456(ra) # 80001e68 <_ZN9Semaphore6signalEv>
    }
    800048c0:	01813083          	ld	ra,24(sp)
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	00813483          	ld	s1,8(sp)
    800048cc:	00013903          	ld	s2,0(sp)
    800048d0:	02010113          	addi	sp,sp,32
    800048d4:	00008067          	ret

00000000800048d8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048d8:	fe010113          	addi	sp,sp,-32
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00813823          	sd	s0,16(sp)
    800048e4:	00913423          	sd	s1,8(sp)
    800048e8:	01213023          	sd	s2,0(sp)
    800048ec:	02010413          	addi	s0,sp,32
    800048f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048f4:	00100793          	li	a5,1
    800048f8:	02a7f863          	bgeu	a5,a0,80004928 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048fc:	00a00793          	li	a5,10
    80004900:	02f577b3          	remu	a5,a0,a5
    80004904:	02078e63          	beqz	a5,80004940 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004908:	fff48513          	addi	a0,s1,-1
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	fcc080e7          	jalr	-52(ra) # 800048d8 <_ZL9fibonaccim>
    80004914:	00050913          	mv	s2,a0
    80004918:	ffe48513          	addi	a0,s1,-2
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	fbc080e7          	jalr	-68(ra) # 800048d8 <_ZL9fibonaccim>
    80004924:	00a90533          	add	a0,s2,a0
}
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	c1c080e7          	jalr	-996(ra) # 8000155c <_Z15thread_dispatchv>
    80004948:	fc1ff06f          	j	80004908 <_ZL9fibonaccim+0x30>

000000008000494c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000494c:	fe010113          	addi	sp,sp,-32
    80004950:	00113c23          	sd	ra,24(sp)
    80004954:	00813823          	sd	s0,16(sp)
    80004958:	00913423          	sd	s1,8(sp)
    8000495c:	01213023          	sd	s2,0(sp)
    80004960:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004964:	00a00493          	li	s1,10
    80004968:	0400006f          	j	800049a8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000496c:	00005517          	auipc	a0,0x5
    80004970:	81c50513          	addi	a0,a0,-2020 # 80009188 <CONSOLE_STATUS+0x178>
    80004974:	00001097          	auipc	ra,0x1
    80004978:	dc8080e7          	jalr	-568(ra) # 8000573c <_Z11printStringPKc>
    8000497c:	00000613          	li	a2,0
    80004980:	00a00593          	li	a1,10
    80004984:	00048513          	mv	a0,s1
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	f64080e7          	jalr	-156(ra) # 800058ec <_Z8printIntiii>
    80004990:	00005517          	auipc	a0,0x5
    80004994:	9e850513          	addi	a0,a0,-1560 # 80009378 <CONSOLE_STATUS+0x368>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	da4080e7          	jalr	-604(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049a0:	0014849b          	addiw	s1,s1,1
    800049a4:	0ff4f493          	andi	s1,s1,255
    800049a8:	00c00793          	li	a5,12
    800049ac:	fc97f0e3          	bgeu	a5,s1,8000496c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800049b0:	00004517          	auipc	a0,0x4
    800049b4:	7e050513          	addi	a0,a0,2016 # 80009190 <CONSOLE_STATUS+0x180>
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	d84080e7          	jalr	-636(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800049c0:	00500313          	li	t1,5
    thread_dispatch();
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	b98080e7          	jalr	-1128(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800049cc:	01000513          	li	a0,16
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	f08080e7          	jalr	-248(ra) # 800048d8 <_ZL9fibonaccim>
    800049d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800049dc:	00004517          	auipc	a0,0x4
    800049e0:	7c450513          	addi	a0,a0,1988 # 800091a0 <CONSOLE_STATUS+0x190>
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	d58080e7          	jalr	-680(ra) # 8000573c <_Z11printStringPKc>
    800049ec:	00000613          	li	a2,0
    800049f0:	00a00593          	li	a1,10
    800049f4:	0009051b          	sext.w	a0,s2
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	ef4080e7          	jalr	-268(ra) # 800058ec <_Z8printIntiii>
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	97850513          	addi	a0,a0,-1672 # 80009378 <CONSOLE_STATUS+0x368>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	d34080e7          	jalr	-716(ra) # 8000573c <_Z11printStringPKc>
    80004a10:	0400006f          	j	80004a50 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a14:	00004517          	auipc	a0,0x4
    80004a18:	77450513          	addi	a0,a0,1908 # 80009188 <CONSOLE_STATUS+0x178>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	d20080e7          	jalr	-736(ra) # 8000573c <_Z11printStringPKc>
    80004a24:	00000613          	li	a2,0
    80004a28:	00a00593          	li	a1,10
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	ebc080e7          	jalr	-324(ra) # 800058ec <_Z8printIntiii>
    80004a38:	00005517          	auipc	a0,0x5
    80004a3c:	94050513          	addi	a0,a0,-1728 # 80009378 <CONSOLE_STATUS+0x368>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	cfc080e7          	jalr	-772(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a48:	0014849b          	addiw	s1,s1,1
    80004a4c:	0ff4f493          	andi	s1,s1,255
    80004a50:	00f00793          	li	a5,15
    80004a54:	fc97f0e3          	bgeu	a5,s1,80004a14 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a58:	00004517          	auipc	a0,0x4
    80004a5c:	75850513          	addi	a0,a0,1880 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	cdc080e7          	jalr	-804(ra) # 8000573c <_Z11printStringPKc>
    finishedD = true;
    80004a68:	00100793          	li	a5,1
    80004a6c:	00007717          	auipc	a4,0x7
    80004a70:	00f70223          	sb	a5,4(a4) # 8000ba70 <_ZL9finishedD>
    thread_dispatch();
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	ae8080e7          	jalr	-1304(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	00013903          	ld	s2,0(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret

0000000080004a94 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004aac:	00000493          	li	s1,0
    80004ab0:	0400006f          	j	80004af0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ab4:	00004517          	auipc	a0,0x4
    80004ab8:	69450513          	addi	a0,a0,1684 # 80009148 <CONSOLE_STATUS+0x138>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	c80080e7          	jalr	-896(ra) # 8000573c <_Z11printStringPKc>
    80004ac4:	00000613          	li	a2,0
    80004ac8:	00a00593          	li	a1,10
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	e1c080e7          	jalr	-484(ra) # 800058ec <_Z8printIntiii>
    80004ad8:	00005517          	auipc	a0,0x5
    80004adc:	8a050513          	addi	a0,a0,-1888 # 80009378 <CONSOLE_STATUS+0x368>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	c5c080e7          	jalr	-932(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ae8:	0014849b          	addiw	s1,s1,1
    80004aec:	0ff4f493          	andi	s1,s1,255
    80004af0:	00200793          	li	a5,2
    80004af4:	fc97f0e3          	bgeu	a5,s1,80004ab4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004af8:	00004517          	auipc	a0,0x4
    80004afc:	65850513          	addi	a0,a0,1624 # 80009150 <CONSOLE_STATUS+0x140>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	c3c080e7          	jalr	-964(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b08:	00700313          	li	t1,7
    thread_dispatch();
    80004b0c:	ffffd097          	auipc	ra,0xffffd
    80004b10:	a50080e7          	jalr	-1456(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b14:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b18:	00004517          	auipc	a0,0x4
    80004b1c:	64850513          	addi	a0,a0,1608 # 80009160 <CONSOLE_STATUS+0x150>
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	c1c080e7          	jalr	-996(ra) # 8000573c <_Z11printStringPKc>
    80004b28:	00000613          	li	a2,0
    80004b2c:	00a00593          	li	a1,10
    80004b30:	0009051b          	sext.w	a0,s2
    80004b34:	00001097          	auipc	ra,0x1
    80004b38:	db8080e7          	jalr	-584(ra) # 800058ec <_Z8printIntiii>
    80004b3c:	00005517          	auipc	a0,0x5
    80004b40:	83c50513          	addi	a0,a0,-1988 # 80009378 <CONSOLE_STATUS+0x368>
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	bf8080e7          	jalr	-1032(ra) # 8000573c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b4c:	00c00513          	li	a0,12
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	d88080e7          	jalr	-632(ra) # 800048d8 <_ZL9fibonaccim>
    80004b58:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	60c50513          	addi	a0,a0,1548 # 80009168 <CONSOLE_STATUS+0x158>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	bd8080e7          	jalr	-1064(ra) # 8000573c <_Z11printStringPKc>
    80004b6c:	00000613          	li	a2,0
    80004b70:	00a00593          	li	a1,10
    80004b74:	0009051b          	sext.w	a0,s2
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	d74080e7          	jalr	-652(ra) # 800058ec <_Z8printIntiii>
    80004b80:	00004517          	auipc	a0,0x4
    80004b84:	7f850513          	addi	a0,a0,2040 # 80009378 <CONSOLE_STATUS+0x368>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	bb4080e7          	jalr	-1100(ra) # 8000573c <_Z11printStringPKc>
    80004b90:	0400006f          	j	80004bd0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	5b450513          	addi	a0,a0,1460 # 80009148 <CONSOLE_STATUS+0x138>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	ba0080e7          	jalr	-1120(ra) # 8000573c <_Z11printStringPKc>
    80004ba4:	00000613          	li	a2,0
    80004ba8:	00a00593          	li	a1,10
    80004bac:	00048513          	mv	a0,s1
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	d3c080e7          	jalr	-708(ra) # 800058ec <_Z8printIntiii>
    80004bb8:	00004517          	auipc	a0,0x4
    80004bbc:	7c050513          	addi	a0,a0,1984 # 80009378 <CONSOLE_STATUS+0x368>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	b7c080e7          	jalr	-1156(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bc8:	0014849b          	addiw	s1,s1,1
    80004bcc:	0ff4f493          	andi	s1,s1,255
    80004bd0:	00500793          	li	a5,5
    80004bd4:	fc97f0e3          	bgeu	a5,s1,80004b94 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004bd8:	00004517          	auipc	a0,0x4
    80004bdc:	54850513          	addi	a0,a0,1352 # 80009120 <CONSOLE_STATUS+0x110>
    80004be0:	00001097          	auipc	ra,0x1
    80004be4:	b5c080e7          	jalr	-1188(ra) # 8000573c <_Z11printStringPKc>
    finishedC = true;
    80004be8:	00100793          	li	a5,1
    80004bec:	00007717          	auipc	a4,0x7
    80004bf0:	e8f702a3          	sb	a5,-379(a4) # 8000ba71 <_ZL9finishedC>
    thread_dispatch();
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	968080e7          	jalr	-1688(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004bfc:	01813083          	ld	ra,24(sp)
    80004c00:	01013403          	ld	s0,16(sp)
    80004c04:	00813483          	ld	s1,8(sp)
    80004c08:	00013903          	ld	s2,0(sp)
    80004c0c:	02010113          	addi	sp,sp,32
    80004c10:	00008067          	ret

0000000080004c14 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c14:	fe010113          	addi	sp,sp,-32
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00813823          	sd	s0,16(sp)
    80004c20:	00913423          	sd	s1,8(sp)
    80004c24:	01213023          	sd	s2,0(sp)
    80004c28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c2c:	00000913          	li	s2,0
    80004c30:	0380006f          	j	80004c68 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	928080e7          	jalr	-1752(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c3c:	00148493          	addi	s1,s1,1
    80004c40:	000027b7          	lui	a5,0x2
    80004c44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c48:	0097ee63          	bltu	a5,s1,80004c64 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c4c:	00000713          	li	a4,0
    80004c50:	000077b7          	lui	a5,0x7
    80004c54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c58:	fce7eee3          	bltu	a5,a4,80004c34 <_ZL11workerBodyBPv+0x20>
    80004c5c:	00170713          	addi	a4,a4,1
    80004c60:	ff1ff06f          	j	80004c50 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c64:	00190913          	addi	s2,s2,1
    80004c68:	00f00793          	li	a5,15
    80004c6c:	0527e063          	bltu	a5,s2,80004cac <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c70:	00004517          	auipc	a0,0x4
    80004c74:	4c050513          	addi	a0,a0,1216 # 80009130 <CONSOLE_STATUS+0x120>
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	ac4080e7          	jalr	-1340(ra) # 8000573c <_Z11printStringPKc>
    80004c80:	00000613          	li	a2,0
    80004c84:	00a00593          	li	a1,10
    80004c88:	0009051b          	sext.w	a0,s2
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	c60080e7          	jalr	-928(ra) # 800058ec <_Z8printIntiii>
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	6e450513          	addi	a0,a0,1764 # 80009378 <CONSOLE_STATUS+0x368>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	aa0080e7          	jalr	-1376(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ca4:	00000493          	li	s1,0
    80004ca8:	f99ff06f          	j	80004c40 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004cac:	00004517          	auipc	a0,0x4
    80004cb0:	48c50513          	addi	a0,a0,1164 # 80009138 <CONSOLE_STATUS+0x128>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	a88080e7          	jalr	-1400(ra) # 8000573c <_Z11printStringPKc>
    finishedB = true;
    80004cbc:	00100793          	li	a5,1
    80004cc0:	00007717          	auipc	a4,0x7
    80004cc4:	daf70923          	sb	a5,-590(a4) # 8000ba72 <_ZL9finishedB>
    thread_dispatch();
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	894080e7          	jalr	-1900(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	00013903          	ld	s2,0(sp)
    80004ce0:	02010113          	addi	sp,sp,32
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ce8:	fe010113          	addi	sp,sp,-32
    80004cec:	00113c23          	sd	ra,24(sp)
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	01213023          	sd	s2,0(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d00:	00000913          	li	s2,0
    80004d04:	0380006f          	j	80004d3c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	854080e7          	jalr	-1964(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d10:	00148493          	addi	s1,s1,1
    80004d14:	000027b7          	lui	a5,0x2
    80004d18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d1c:	0097ee63          	bltu	a5,s1,80004d38 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d20:	00000713          	li	a4,0
    80004d24:	000077b7          	lui	a5,0x7
    80004d28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d2c:	fce7eee3          	bltu	a5,a4,80004d08 <_ZL11workerBodyAPv+0x20>
    80004d30:	00170713          	addi	a4,a4,1
    80004d34:	ff1ff06f          	j	80004d24 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d38:	00190913          	addi	s2,s2,1
    80004d3c:	00900793          	li	a5,9
    80004d40:	0527e063          	bltu	a5,s2,80004d80 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d44:	00004517          	auipc	a0,0x4
    80004d48:	3d450513          	addi	a0,a0,980 # 80009118 <CONSOLE_STATUS+0x108>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	9f0080e7          	jalr	-1552(ra) # 8000573c <_Z11printStringPKc>
    80004d54:	00000613          	li	a2,0
    80004d58:	00a00593          	li	a1,10
    80004d5c:	0009051b          	sext.w	a0,s2
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	b8c080e7          	jalr	-1140(ra) # 800058ec <_Z8printIntiii>
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	61050513          	addi	a0,a0,1552 # 80009378 <CONSOLE_STATUS+0x368>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	9cc080e7          	jalr	-1588(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d78:	00000493          	li	s1,0
    80004d7c:	f99ff06f          	j	80004d14 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d80:	00004517          	auipc	a0,0x4
    80004d84:	3a050513          	addi	a0,a0,928 # 80009120 <CONSOLE_STATUS+0x110>
    80004d88:	00001097          	auipc	ra,0x1
    80004d8c:	9b4080e7          	jalr	-1612(ra) # 8000573c <_Z11printStringPKc>
    finishedA = true;
    80004d90:	00100793          	li	a5,1
    80004d94:	00007717          	auipc	a4,0x7
    80004d98:	ccf70fa3          	sb	a5,-801(a4) # 8000ba73 <_ZL9finishedA>
}
    80004d9c:	01813083          	ld	ra,24(sp)
    80004da0:	01013403          	ld	s0,16(sp)
    80004da4:	00813483          	ld	s1,8(sp)
    80004da8:	00013903          	ld	s2,0(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret

0000000080004db4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004db4:	fd010113          	addi	sp,sp,-48
    80004db8:	02113423          	sd	ra,40(sp)
    80004dbc:	02813023          	sd	s0,32(sp)
    80004dc0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004dc4:	00000613          	li	a2,0
    80004dc8:	00000597          	auipc	a1,0x0
    80004dcc:	f2058593          	addi	a1,a1,-224 # 80004ce8 <_ZL11workerBodyAPv>
    80004dd0:	fd040513          	addi	a0,s0,-48
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	660080e7          	jalr	1632(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	3e450513          	addi	a0,a0,996 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	958080e7          	jalr	-1704(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004dec:	00000613          	li	a2,0
    80004df0:	00000597          	auipc	a1,0x0
    80004df4:	e2458593          	addi	a1,a1,-476 # 80004c14 <_ZL11workerBodyBPv>
    80004df8:	fd840513          	addi	a0,s0,-40
    80004dfc:	ffffc097          	auipc	ra,0xffffc
    80004e00:	638080e7          	jalr	1592(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	3d450513          	addi	a0,a0,980 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	930080e7          	jalr	-1744(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e14:	00000613          	li	a2,0
    80004e18:	00000597          	auipc	a1,0x0
    80004e1c:	c7c58593          	addi	a1,a1,-900 # 80004a94 <_ZL11workerBodyCPv>
    80004e20:	fe040513          	addi	a0,s0,-32
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	610080e7          	jalr	1552(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	3c450513          	addi	a0,a0,964 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	908080e7          	jalr	-1784(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e3c:	00000613          	li	a2,0
    80004e40:	00000597          	auipc	a1,0x0
    80004e44:	b0c58593          	addi	a1,a1,-1268 # 8000494c <_ZL11workerBodyDPv>
    80004e48:	fe840513          	addi	a0,s0,-24
    80004e4c:	ffffc097          	auipc	ra,0xffffc
    80004e50:	5e8080e7          	jalr	1512(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	3b450513          	addi	a0,a0,948 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	8e0080e7          	jalr	-1824(ra) # 8000573c <_Z11printStringPKc>
    80004e64:	00c0006f          	j	80004e70 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	6f4080e7          	jalr	1780(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e70:	00007797          	auipc	a5,0x7
    80004e74:	c037c783          	lbu	a5,-1021(a5) # 8000ba73 <_ZL9finishedA>
    80004e78:	fe0788e3          	beqz	a5,80004e68 <_Z18Threads_C_API_testv+0xb4>
    80004e7c:	00007797          	auipc	a5,0x7
    80004e80:	bf67c783          	lbu	a5,-1034(a5) # 8000ba72 <_ZL9finishedB>
    80004e84:	fe0782e3          	beqz	a5,80004e68 <_Z18Threads_C_API_testv+0xb4>
    80004e88:	00007797          	auipc	a5,0x7
    80004e8c:	be97c783          	lbu	a5,-1047(a5) # 8000ba71 <_ZL9finishedC>
    80004e90:	fc078ce3          	beqz	a5,80004e68 <_Z18Threads_C_API_testv+0xb4>
    80004e94:	00007797          	auipc	a5,0x7
    80004e98:	bdc7c783          	lbu	a5,-1060(a5) # 8000ba70 <_ZL9finishedD>
    80004e9c:	fc0786e3          	beqz	a5,80004e68 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004ea0:	02813083          	ld	ra,40(sp)
    80004ea4:	02013403          	ld	s0,32(sp)
    80004ea8:	03010113          	addi	sp,sp,48
    80004eac:	00008067          	ret

0000000080004eb0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004eb0:	fd010113          	addi	sp,sp,-48
    80004eb4:	02113423          	sd	ra,40(sp)
    80004eb8:	02813023          	sd	s0,32(sp)
    80004ebc:	00913c23          	sd	s1,24(sp)
    80004ec0:	01213823          	sd	s2,16(sp)
    80004ec4:	01313423          	sd	s3,8(sp)
    80004ec8:	03010413          	addi	s0,sp,48
    80004ecc:	00050993          	mv	s3,a0
    80004ed0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ed4:	00000913          	li	s2,0
    80004ed8:	00c0006f          	j	80004ee4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	e70080e7          	jalr	-400(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	7fc080e7          	jalr	2044(ra) # 800016e0 <_Z4getcv>
    80004eec:	0005059b          	sext.w	a1,a0
    80004ef0:	01b00793          	li	a5,27
    80004ef4:	02f58a63          	beq	a1,a5,80004f28 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ef8:	0084b503          	ld	a0,8(s1)
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	c64080e7          	jalr	-924(ra) # 80005b60 <_ZN9BufferCPP3putEi>
        i++;
    80004f04:	0019071b          	addiw	a4,s2,1
    80004f08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f0c:	0004a683          	lw	a3,0(s1)
    80004f10:	0026979b          	slliw	a5,a3,0x2
    80004f14:	00d787bb          	addw	a5,a5,a3
    80004f18:	0017979b          	slliw	a5,a5,0x1
    80004f1c:	02f767bb          	remw	a5,a4,a5
    80004f20:	fc0792e3          	bnez	a5,80004ee4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f24:	fb9ff06f          	j	80004edc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f28:	00100793          	li	a5,1
    80004f2c:	00007717          	auipc	a4,0x7
    80004f30:	b4f72623          	sw	a5,-1204(a4) # 8000ba78 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f34:	0209b783          	ld	a5,32(s3)
    80004f38:	02100593          	li	a1,33
    80004f3c:	0087b503          	ld	a0,8(a5)
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	c20080e7          	jalr	-992(ra) # 80005b60 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f48:	0104b503          	ld	a0,16(s1)
    80004f4c:	ffffd097          	auipc	ra,0xffffd
    80004f50:	f1c080e7          	jalr	-228(ra) # 80001e68 <_ZN9Semaphore6signalEv>
}
    80004f54:	02813083          	ld	ra,40(sp)
    80004f58:	02013403          	ld	s0,32(sp)
    80004f5c:	01813483          	ld	s1,24(sp)
    80004f60:	01013903          	ld	s2,16(sp)
    80004f64:	00813983          	ld	s3,8(sp)
    80004f68:	03010113          	addi	sp,sp,48
    80004f6c:	00008067          	ret

0000000080004f70 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f70:	fe010113          	addi	sp,sp,-32
    80004f74:	00113c23          	sd	ra,24(sp)
    80004f78:	00813823          	sd	s0,16(sp)
    80004f7c:	00913423          	sd	s1,8(sp)
    80004f80:	01213023          	sd	s2,0(sp)
    80004f84:	02010413          	addi	s0,sp,32
    80004f88:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f8c:	00000913          	li	s2,0
    80004f90:	00c0006f          	j	80004f9c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	db8080e7          	jalr	-584(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004f9c:	00007797          	auipc	a5,0x7
    80004fa0:	adc7a783          	lw	a5,-1316(a5) # 8000ba78 <_ZL9threadEnd>
    80004fa4:	02079e63          	bnez	a5,80004fe0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004fa8:	0004a583          	lw	a1,0(s1)
    80004fac:	0305859b          	addiw	a1,a1,48
    80004fb0:	0084b503          	ld	a0,8(s1)
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	bac080e7          	jalr	-1108(ra) # 80005b60 <_ZN9BufferCPP3putEi>
        i++;
    80004fbc:	0019071b          	addiw	a4,s2,1
    80004fc0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fc4:	0004a683          	lw	a3,0(s1)
    80004fc8:	0026979b          	slliw	a5,a3,0x2
    80004fcc:	00d787bb          	addw	a5,a5,a3
    80004fd0:	0017979b          	slliw	a5,a5,0x1
    80004fd4:	02f767bb          	remw	a5,a4,a5
    80004fd8:	fc0792e3          	bnez	a5,80004f9c <_ZN12ProducerSync8producerEPv+0x2c>
    80004fdc:	fb9ff06f          	j	80004f94 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004fe0:	0104b503          	ld	a0,16(s1)
    80004fe4:	ffffd097          	auipc	ra,0xffffd
    80004fe8:	e84080e7          	jalr	-380(ra) # 80001e68 <_ZN9Semaphore6signalEv>
}
    80004fec:	01813083          	ld	ra,24(sp)
    80004ff0:	01013403          	ld	s0,16(sp)
    80004ff4:	00813483          	ld	s1,8(sp)
    80004ff8:	00013903          	ld	s2,0(sp)
    80004ffc:	02010113          	addi	sp,sp,32
    80005000:	00008067          	ret

0000000080005004 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005004:	fd010113          	addi	sp,sp,-48
    80005008:	02113423          	sd	ra,40(sp)
    8000500c:	02813023          	sd	s0,32(sp)
    80005010:	00913c23          	sd	s1,24(sp)
    80005014:	01213823          	sd	s2,16(sp)
    80005018:	01313423          	sd	s3,8(sp)
    8000501c:	01413023          	sd	s4,0(sp)
    80005020:	03010413          	addi	s0,sp,48
    80005024:	00050993          	mv	s3,a0
    80005028:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000502c:	00000a13          	li	s4,0
    80005030:	01c0006f          	j	8000504c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	d18080e7          	jalr	-744(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    8000503c:	0500006f          	j	8000508c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005040:	00a00513          	li	a0,10
    80005044:	ffffc097          	auipc	ra,0xffffc
    80005048:	6d8080e7          	jalr	1752(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    8000504c:	00007797          	auipc	a5,0x7
    80005050:	a2c7a783          	lw	a5,-1492(a5) # 8000ba78 <_ZL9threadEnd>
    80005054:	06079263          	bnez	a5,800050b8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005058:	00893503          	ld	a0,8(s2)
    8000505c:	00001097          	auipc	ra,0x1
    80005060:	b94080e7          	jalr	-1132(ra) # 80005bf0 <_ZN9BufferCPP3getEv>
        i++;
    80005064:	001a049b          	addiw	s1,s4,1
    80005068:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000506c:	0ff57513          	andi	a0,a0,255
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	6ac080e7          	jalr	1708(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005078:	00092703          	lw	a4,0(s2)
    8000507c:	0027179b          	slliw	a5,a4,0x2
    80005080:	00e787bb          	addw	a5,a5,a4
    80005084:	02f4e7bb          	remw	a5,s1,a5
    80005088:	fa0786e3          	beqz	a5,80005034 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000508c:	05000793          	li	a5,80
    80005090:	02f4e4bb          	remw	s1,s1,a5
    80005094:	fa049ce3          	bnez	s1,8000504c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005098:	fa9ff06f          	j	80005040 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000509c:	0209b783          	ld	a5,32(s3)
    800050a0:	0087b503          	ld	a0,8(a5)
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	b4c080e7          	jalr	-1204(ra) # 80005bf0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800050ac:	0ff57513          	andi	a0,a0,255
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	e78080e7          	jalr	-392(ra) # 80001f28 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800050b8:	0209b783          	ld	a5,32(s3)
    800050bc:	0087b503          	ld	a0,8(a5)
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	bbc080e7          	jalr	-1092(ra) # 80005c7c <_ZN9BufferCPP6getCntEv>
    800050c8:	fca04ae3          	bgtz	a0,8000509c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800050cc:	01093503          	ld	a0,16(s2)
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	d98080e7          	jalr	-616(ra) # 80001e68 <_ZN9Semaphore6signalEv>
}
    800050d8:	02813083          	ld	ra,40(sp)
    800050dc:	02013403          	ld	s0,32(sp)
    800050e0:	01813483          	ld	s1,24(sp)
    800050e4:	01013903          	ld	s2,16(sp)
    800050e8:	00813983          	ld	s3,8(sp)
    800050ec:	00013a03          	ld	s4,0(sp)
    800050f0:	03010113          	addi	sp,sp,48
    800050f4:	00008067          	ret

00000000800050f8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800050f8:	f8010113          	addi	sp,sp,-128
    800050fc:	06113c23          	sd	ra,120(sp)
    80005100:	06813823          	sd	s0,112(sp)
    80005104:	06913423          	sd	s1,104(sp)
    80005108:	07213023          	sd	s2,96(sp)
    8000510c:	05313c23          	sd	s3,88(sp)
    80005110:	05413823          	sd	s4,80(sp)
    80005114:	05513423          	sd	s5,72(sp)
    80005118:	05613023          	sd	s6,64(sp)
    8000511c:	03713c23          	sd	s7,56(sp)
    80005120:	03813823          	sd	s8,48(sp)
    80005124:	03913423          	sd	s9,40(sp)
    80005128:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000512c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	f0050513          	addi	a0,a0,-256 # 80009030 <CONSOLE_STATUS+0x20>
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	604080e7          	jalr	1540(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    80005140:	01e00593          	li	a1,30
    80005144:	f8040493          	addi	s1,s0,-128
    80005148:	00048513          	mv	a0,s1
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	678080e7          	jalr	1656(ra) # 800057c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005154:	00048513          	mv	a0,s1
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	744080e7          	jalr	1860(ra) # 8000589c <_Z11stringToIntPKc>
    80005160:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005164:	00004517          	auipc	a0,0x4
    80005168:	eec50513          	addi	a0,a0,-276 # 80009050 <CONSOLE_STATUS+0x40>
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	5d0080e7          	jalr	1488(ra) # 8000573c <_Z11printStringPKc>
    getString(input, 30);
    80005174:	01e00593          	li	a1,30
    80005178:	00048513          	mv	a0,s1
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	648080e7          	jalr	1608(ra) # 800057c4 <_Z9getStringPci>
    n = stringToInt(input);
    80005184:	00048513          	mv	a0,s1
    80005188:	00000097          	auipc	ra,0x0
    8000518c:	714080e7          	jalr	1812(ra) # 8000589c <_Z11stringToIntPKc>
    80005190:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005194:	00004517          	auipc	a0,0x4
    80005198:	edc50513          	addi	a0,a0,-292 # 80009070 <CONSOLE_STATUS+0x60>
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	5a0080e7          	jalr	1440(ra) # 8000573c <_Z11printStringPKc>
    800051a4:	00000613          	li	a2,0
    800051a8:	00a00593          	li	a1,10
    800051ac:	00090513          	mv	a0,s2
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	73c080e7          	jalr	1852(ra) # 800058ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800051b8:	00004517          	auipc	a0,0x4
    800051bc:	ed050513          	addi	a0,a0,-304 # 80009088 <CONSOLE_STATUS+0x78>
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	57c080e7          	jalr	1404(ra) # 8000573c <_Z11printStringPKc>
    800051c8:	00000613          	li	a2,0
    800051cc:	00a00593          	li	a1,10
    800051d0:	00048513          	mv	a0,s1
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	718080e7          	jalr	1816(ra) # 800058ec <_Z8printIntiii>
    printString(".\n");
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	ec450513          	addi	a0,a0,-316 # 800090a0 <CONSOLE_STATUS+0x90>
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	558080e7          	jalr	1368(ra) # 8000573c <_Z11printStringPKc>
    if(threadNum > n) {
    800051ec:	0324c463          	blt	s1,s2,80005214 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800051f0:	03205c63          	blez	s2,80005228 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800051f4:	03800513          	li	a0,56
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	848080e7          	jalr	-1976(ra) # 80001a40 <_Znwm>
    80005200:	00050a93          	mv	s5,a0
    80005204:	00048593          	mv	a1,s1
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	804080e7          	jalr	-2044(ra) # 80005a0c <_ZN9BufferCPPC1Ei>
    80005210:	0300006f          	j	80005240 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005214:	00004517          	auipc	a0,0x4
    80005218:	e9450513          	addi	a0,a0,-364 # 800090a8 <CONSOLE_STATUS+0x98>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	520080e7          	jalr	1312(ra) # 8000573c <_Z11printStringPKc>
        return;
    80005224:	0140006f          	j	80005238 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005228:	00004517          	auipc	a0,0x4
    8000522c:	ec050513          	addi	a0,a0,-320 # 800090e8 <CONSOLE_STATUS+0xd8>
    80005230:	00000097          	auipc	ra,0x0
    80005234:	50c080e7          	jalr	1292(ra) # 8000573c <_Z11printStringPKc>
        return;
    80005238:	000b8113          	mv	sp,s7
    8000523c:	2380006f          	j	80005474 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005240:	01000513          	li	a0,16
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	7fc080e7          	jalr	2044(ra) # 80001a40 <_Znwm>
    8000524c:	00050493          	mv	s1,a0
    80005250:	00000593          	li	a1,0
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	bac080e7          	jalr	-1108(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    8000525c:	00007797          	auipc	a5,0x7
    80005260:	8297b223          	sd	s1,-2012(a5) # 8000ba80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005264:	00391793          	slli	a5,s2,0x3
    80005268:	00f78793          	addi	a5,a5,15
    8000526c:	ff07f793          	andi	a5,a5,-16
    80005270:	40f10133          	sub	sp,sp,a5
    80005274:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005278:	0019071b          	addiw	a4,s2,1
    8000527c:	00171793          	slli	a5,a4,0x1
    80005280:	00e787b3          	add	a5,a5,a4
    80005284:	00379793          	slli	a5,a5,0x3
    80005288:	00f78793          	addi	a5,a5,15
    8000528c:	ff07f793          	andi	a5,a5,-16
    80005290:	40f10133          	sub	sp,sp,a5
    80005294:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005298:	00191c13          	slli	s8,s2,0x1
    8000529c:	012c07b3          	add	a5,s8,s2
    800052a0:	00379793          	slli	a5,a5,0x3
    800052a4:	00fa07b3          	add	a5,s4,a5
    800052a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800052ac:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800052b0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800052b4:	02800513          	li	a0,40
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	788080e7          	jalr	1928(ra) # 80001a40 <_Znwm>
    800052c0:	00050b13          	mv	s6,a0
    800052c4:	012c0c33          	add	s8,s8,s2
    800052c8:	003c1c13          	slli	s8,s8,0x3
    800052cc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	aa4080e7          	jalr	-1372(ra) # 80001d74 <_ZN6ThreadC1Ev>
    800052d8:	00006797          	auipc	a5,0x6
    800052dc:	64078793          	addi	a5,a5,1600 # 8000b918 <_ZTV12ConsumerSync+0x10>
    800052e0:	00fb3023          	sd	a5,0(s6)
    800052e4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800052e8:	000b0513          	mv	a0,s6
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	a2c080e7          	jalr	-1492(ra) # 80001d18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052f4:	00000493          	li	s1,0
    800052f8:	0380006f          	j	80005330 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800052fc:	00006797          	auipc	a5,0x6
    80005300:	5f478793          	addi	a5,a5,1524 # 8000b8f0 <_ZTV12ProducerSync+0x10>
    80005304:	00fcb023          	sd	a5,0(s9)
    80005308:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000530c:	00349793          	slli	a5,s1,0x3
    80005310:	00f987b3          	add	a5,s3,a5
    80005314:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005318:	00349793          	slli	a5,s1,0x3
    8000531c:	00f987b3          	add	a5,s3,a5
    80005320:	0007b503          	ld	a0,0(a5)
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	9f4080e7          	jalr	-1548(ra) # 80001d18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000532c:	0014849b          	addiw	s1,s1,1
    80005330:	0b24d063          	bge	s1,s2,800053d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005334:	00149793          	slli	a5,s1,0x1
    80005338:	009787b3          	add	a5,a5,s1
    8000533c:	00379793          	slli	a5,a5,0x3
    80005340:	00fa07b3          	add	a5,s4,a5
    80005344:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005348:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000534c:	00006717          	auipc	a4,0x6
    80005350:	73473703          	ld	a4,1844(a4) # 8000ba80 <_ZL10waitForAll>
    80005354:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005358:	02905863          	blez	s1,80005388 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000535c:	02800513          	li	a0,40
    80005360:	ffffc097          	auipc	ra,0xffffc
    80005364:	6e0080e7          	jalr	1760(ra) # 80001a40 <_Znwm>
    80005368:	00050c93          	mv	s9,a0
    8000536c:	00149c13          	slli	s8,s1,0x1
    80005370:	009c0c33          	add	s8,s8,s1
    80005374:	003c1c13          	slli	s8,s8,0x3
    80005378:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000537c:	ffffd097          	auipc	ra,0xffffd
    80005380:	9f8080e7          	jalr	-1544(ra) # 80001d74 <_ZN6ThreadC1Ev>
    80005384:	f79ff06f          	j	800052fc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005388:	02800513          	li	a0,40
    8000538c:	ffffc097          	auipc	ra,0xffffc
    80005390:	6b4080e7          	jalr	1716(ra) # 80001a40 <_Znwm>
    80005394:	00050c93          	mv	s9,a0
    80005398:	00149c13          	slli	s8,s1,0x1
    8000539c:	009c0c33          	add	s8,s8,s1
    800053a0:	003c1c13          	slli	s8,s8,0x3
    800053a4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	9cc080e7          	jalr	-1588(ra) # 80001d74 <_ZN6ThreadC1Ev>
    800053b0:	00006797          	auipc	a5,0x6
    800053b4:	51878793          	addi	a5,a5,1304 # 8000b8c8 <_ZTV16ProducerKeyboard+0x10>
    800053b8:	00fcb023          	sd	a5,0(s9)
    800053bc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800053c0:	00349793          	slli	a5,s1,0x3
    800053c4:	00f987b3          	add	a5,s3,a5
    800053c8:	0197b023          	sd	s9,0(a5)
    800053cc:	f4dff06f          	j	80005318 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	97c080e7          	jalr	-1668(ra) # 80001d4c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800053d8:	00000493          	li	s1,0
    800053dc:	00994e63          	blt	s2,s1,800053f8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800053e0:	00006517          	auipc	a0,0x6
    800053e4:	6a053503          	ld	a0,1696(a0) # 8000ba80 <_ZL10waitForAll>
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	a54080e7          	jalr	-1452(ra) # 80001e3c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800053f0:	0014849b          	addiw	s1,s1,1
    800053f4:	fe9ff06f          	j	800053dc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800053f8:	00000493          	li	s1,0
    800053fc:	0080006f          	j	80005404 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005400:	0014849b          	addiw	s1,s1,1
    80005404:	0324d263          	bge	s1,s2,80005428 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005408:	00349793          	slli	a5,s1,0x3
    8000540c:	00f987b3          	add	a5,s3,a5
    80005410:	0007b503          	ld	a0,0(a5)
    80005414:	fe0506e3          	beqz	a0,80005400 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005418:	00053783          	ld	a5,0(a0)
    8000541c:	0087b783          	ld	a5,8(a5)
    80005420:	000780e7          	jalr	a5
    80005424:	fddff06f          	j	80005400 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005428:	000b0a63          	beqz	s6,8000543c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000542c:	000b3783          	ld	a5,0(s6)
    80005430:	0087b783          	ld	a5,8(a5)
    80005434:	000b0513          	mv	a0,s6
    80005438:	000780e7          	jalr	a5
    delete waitForAll;
    8000543c:	00006517          	auipc	a0,0x6
    80005440:	64453503          	ld	a0,1604(a0) # 8000ba80 <_ZL10waitForAll>
    80005444:	00050863          	beqz	a0,80005454 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005448:	00053783          	ld	a5,0(a0)
    8000544c:	0087b783          	ld	a5,8(a5)
    80005450:	000780e7          	jalr	a5
    delete buffer;
    80005454:	000a8e63          	beqz	s5,80005470 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005458:	000a8513          	mv	a0,s5
    8000545c:	00001097          	auipc	ra,0x1
    80005460:	8a8080e7          	jalr	-1880(ra) # 80005d04 <_ZN9BufferCPPD1Ev>
    80005464:	000a8513          	mv	a0,s5
    80005468:	ffffc097          	auipc	ra,0xffffc
    8000546c:	628080e7          	jalr	1576(ra) # 80001a90 <_ZdlPv>
    80005470:	000b8113          	mv	sp,s7

}
    80005474:	f8040113          	addi	sp,s0,-128
    80005478:	07813083          	ld	ra,120(sp)
    8000547c:	07013403          	ld	s0,112(sp)
    80005480:	06813483          	ld	s1,104(sp)
    80005484:	06013903          	ld	s2,96(sp)
    80005488:	05813983          	ld	s3,88(sp)
    8000548c:	05013a03          	ld	s4,80(sp)
    80005490:	04813a83          	ld	s5,72(sp)
    80005494:	04013b03          	ld	s6,64(sp)
    80005498:	03813b83          	ld	s7,56(sp)
    8000549c:	03013c03          	ld	s8,48(sp)
    800054a0:	02813c83          	ld	s9,40(sp)
    800054a4:	08010113          	addi	sp,sp,128
    800054a8:	00008067          	ret
    800054ac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800054b0:	000a8513          	mv	a0,s5
    800054b4:	ffffc097          	auipc	ra,0xffffc
    800054b8:	5dc080e7          	jalr	1500(ra) # 80001a90 <_ZdlPv>
    800054bc:	00048513          	mv	a0,s1
    800054c0:	00007097          	auipc	ra,0x7
    800054c4:	6a8080e7          	jalr	1704(ra) # 8000cb68 <_Unwind_Resume>
    800054c8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800054cc:	00048513          	mv	a0,s1
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	5c0080e7          	jalr	1472(ra) # 80001a90 <_ZdlPv>
    800054d8:	00090513          	mv	a0,s2
    800054dc:	00007097          	auipc	ra,0x7
    800054e0:	68c080e7          	jalr	1676(ra) # 8000cb68 <_Unwind_Resume>
    800054e4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800054e8:	000b0513          	mv	a0,s6
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	5a4080e7          	jalr	1444(ra) # 80001a90 <_ZdlPv>
    800054f4:	00048513          	mv	a0,s1
    800054f8:	00007097          	auipc	ra,0x7
    800054fc:	670080e7          	jalr	1648(ra) # 8000cb68 <_Unwind_Resume>
    80005500:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005504:	000c8513          	mv	a0,s9
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	588080e7          	jalr	1416(ra) # 80001a90 <_ZdlPv>
    80005510:	00048513          	mv	a0,s1
    80005514:	00007097          	auipc	ra,0x7
    80005518:	654080e7          	jalr	1620(ra) # 8000cb68 <_Unwind_Resume>
    8000551c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005520:	000c8513          	mv	a0,s9
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	56c080e7          	jalr	1388(ra) # 80001a90 <_ZdlPv>
    8000552c:	00048513          	mv	a0,s1
    80005530:	00007097          	auipc	ra,0x7
    80005534:	638080e7          	jalr	1592(ra) # 8000cb68 <_Unwind_Resume>

0000000080005538 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005538:	ff010113          	addi	sp,sp,-16
    8000553c:	00113423          	sd	ra,8(sp)
    80005540:	00813023          	sd	s0,0(sp)
    80005544:	01010413          	addi	s0,sp,16
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	3d078793          	addi	a5,a5,976 # 8000b918 <_ZTV12ConsumerSync+0x10>
    80005550:	00f53023          	sd	a5,0(a0)
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	5b8080e7          	jalr	1464(ra) # 80001b0c <_ZN6ThreadD1Ev>
    8000555c:	00813083          	ld	ra,8(sp)
    80005560:	00013403          	ld	s0,0(sp)
    80005564:	01010113          	addi	sp,sp,16
    80005568:	00008067          	ret

000000008000556c <_ZN12ConsumerSyncD0Ev>:
    8000556c:	fe010113          	addi	sp,sp,-32
    80005570:	00113c23          	sd	ra,24(sp)
    80005574:	00813823          	sd	s0,16(sp)
    80005578:	00913423          	sd	s1,8(sp)
    8000557c:	02010413          	addi	s0,sp,32
    80005580:	00050493          	mv	s1,a0
    80005584:	00006797          	auipc	a5,0x6
    80005588:	39478793          	addi	a5,a5,916 # 8000b918 <_ZTV12ConsumerSync+0x10>
    8000558c:	00f53023          	sd	a5,0(a0)
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	57c080e7          	jalr	1404(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80005598:	00048513          	mv	a0,s1
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	4f4080e7          	jalr	1268(ra) # 80001a90 <_ZdlPv>
    800055a4:	01813083          	ld	ra,24(sp)
    800055a8:	01013403          	ld	s0,16(sp)
    800055ac:	00813483          	ld	s1,8(sp)
    800055b0:	02010113          	addi	sp,sp,32
    800055b4:	00008067          	ret

00000000800055b8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800055b8:	ff010113          	addi	sp,sp,-16
    800055bc:	00113423          	sd	ra,8(sp)
    800055c0:	00813023          	sd	s0,0(sp)
    800055c4:	01010413          	addi	s0,sp,16
    800055c8:	00006797          	auipc	a5,0x6
    800055cc:	32878793          	addi	a5,a5,808 # 8000b8f0 <_ZTV12ProducerSync+0x10>
    800055d0:	00f53023          	sd	a5,0(a0)
    800055d4:	ffffc097          	auipc	ra,0xffffc
    800055d8:	538080e7          	jalr	1336(ra) # 80001b0c <_ZN6ThreadD1Ev>
    800055dc:	00813083          	ld	ra,8(sp)
    800055e0:	00013403          	ld	s0,0(sp)
    800055e4:	01010113          	addi	sp,sp,16
    800055e8:	00008067          	ret

00000000800055ec <_ZN12ProducerSyncD0Ev>:
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00113c23          	sd	ra,24(sp)
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	02010413          	addi	s0,sp,32
    80005600:	00050493          	mv	s1,a0
    80005604:	00006797          	auipc	a5,0x6
    80005608:	2ec78793          	addi	a5,a5,748 # 8000b8f0 <_ZTV12ProducerSync+0x10>
    8000560c:	00f53023          	sd	a5,0(a0)
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	4fc080e7          	jalr	1276(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80005618:	00048513          	mv	a0,s1
    8000561c:	ffffc097          	auipc	ra,0xffffc
    80005620:	474080e7          	jalr	1140(ra) # 80001a90 <_ZdlPv>
    80005624:	01813083          	ld	ra,24(sp)
    80005628:	01013403          	ld	s0,16(sp)
    8000562c:	00813483          	ld	s1,8(sp)
    80005630:	02010113          	addi	sp,sp,32
    80005634:	00008067          	ret

0000000080005638 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005638:	ff010113          	addi	sp,sp,-16
    8000563c:	00113423          	sd	ra,8(sp)
    80005640:	00813023          	sd	s0,0(sp)
    80005644:	01010413          	addi	s0,sp,16
    80005648:	00006797          	auipc	a5,0x6
    8000564c:	28078793          	addi	a5,a5,640 # 8000b8c8 <_ZTV16ProducerKeyboard+0x10>
    80005650:	00f53023          	sd	a5,0(a0)
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	4b8080e7          	jalr	1208(ra) # 80001b0c <_ZN6ThreadD1Ev>
    8000565c:	00813083          	ld	ra,8(sp)
    80005660:	00013403          	ld	s0,0(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret

000000008000566c <_ZN16ProducerKeyboardD0Ev>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00113c23          	sd	ra,24(sp)
    80005674:	00813823          	sd	s0,16(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	00050493          	mv	s1,a0
    80005684:	00006797          	auipc	a5,0x6
    80005688:	24478793          	addi	a5,a5,580 # 8000b8c8 <_ZTV16ProducerKeyboard+0x10>
    8000568c:	00f53023          	sd	a5,0(a0)
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	47c080e7          	jalr	1148(ra) # 80001b0c <_ZN6ThreadD1Ev>
    80005698:	00048513          	mv	a0,s1
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	3f4080e7          	jalr	1012(ra) # 80001a90 <_ZdlPv>
    800056a4:	01813083          	ld	ra,24(sp)
    800056a8:	01013403          	ld	s0,16(sp)
    800056ac:	00813483          	ld	s1,8(sp)
    800056b0:	02010113          	addi	sp,sp,32
    800056b4:	00008067          	ret

00000000800056b8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00113423          	sd	ra,8(sp)
    800056c0:	00813023          	sd	s0,0(sp)
    800056c4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800056c8:	02053583          	ld	a1,32(a0)
    800056cc:	fffff097          	auipc	ra,0xfffff
    800056d0:	7e4080e7          	jalr	2020(ra) # 80004eb0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800056d4:	00813083          	ld	ra,8(sp)
    800056d8:	00013403          	ld	s0,0(sp)
    800056dc:	01010113          	addi	sp,sp,16
    800056e0:	00008067          	ret

00000000800056e4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800056e4:	ff010113          	addi	sp,sp,-16
    800056e8:	00113423          	sd	ra,8(sp)
    800056ec:	00813023          	sd	s0,0(sp)
    800056f0:	01010413          	addi	s0,sp,16
        producer(td);
    800056f4:	02053583          	ld	a1,32(a0)
    800056f8:	00000097          	auipc	ra,0x0
    800056fc:	878080e7          	jalr	-1928(ra) # 80004f70 <_ZN12ProducerSync8producerEPv>
    }
    80005700:	00813083          	ld	ra,8(sp)
    80005704:	00013403          	ld	s0,0(sp)
    80005708:	01010113          	addi	sp,sp,16
    8000570c:	00008067          	ret

0000000080005710 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005710:	ff010113          	addi	sp,sp,-16
    80005714:	00113423          	sd	ra,8(sp)
    80005718:	00813023          	sd	s0,0(sp)
    8000571c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005720:	02053583          	ld	a1,32(a0)
    80005724:	00000097          	auipc	ra,0x0
    80005728:	8e0080e7          	jalr	-1824(ra) # 80005004 <_ZN12ConsumerSync8consumerEPv>
    }
    8000572c:	00813083          	ld	ra,8(sp)
    80005730:	00013403          	ld	s0,0(sp)
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00008067          	ret

000000008000573c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00113c23          	sd	ra,24(sp)
    80005744:	00813823          	sd	s0,16(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	02010413          	addi	s0,sp,32
    80005750:	00050493          	mv	s1,a0
    LOCK();
    80005754:	00100613          	li	a2,1
    80005758:	00000593          	li	a1,0
    8000575c:	00006517          	auipc	a0,0x6
    80005760:	32c50513          	addi	a0,a0,812 # 8000ba88 <lockPrint>
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	bf8080e7          	jalr	-1032(ra) # 8000135c <copy_and_swap>
    8000576c:	00050863          	beqz	a0,8000577c <_Z11printStringPKc+0x40>
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	dec080e7          	jalr	-532(ra) # 8000155c <_Z15thread_dispatchv>
    80005778:	fddff06f          	j	80005754 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000577c:	0004c503          	lbu	a0,0(s1)
    80005780:	00050a63          	beqz	a0,80005794 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	f98080e7          	jalr	-104(ra) # 8000171c <_Z4putcc>
        string++;
    8000578c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005790:	fedff06f          	j	8000577c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005794:	00000613          	li	a2,0
    80005798:	00100593          	li	a1,1
    8000579c:	00006517          	auipc	a0,0x6
    800057a0:	2ec50513          	addi	a0,a0,748 # 8000ba88 <lockPrint>
    800057a4:	ffffc097          	auipc	ra,0xffffc
    800057a8:	bb8080e7          	jalr	-1096(ra) # 8000135c <copy_and_swap>
    800057ac:	fe0514e3          	bnez	a0,80005794 <_Z11printStringPKc+0x58>
}
    800057b0:	01813083          	ld	ra,24(sp)
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	00813483          	ld	s1,8(sp)
    800057bc:	02010113          	addi	sp,sp,32
    800057c0:	00008067          	ret

00000000800057c4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800057c4:	fd010113          	addi	sp,sp,-48
    800057c8:	02113423          	sd	ra,40(sp)
    800057cc:	02813023          	sd	s0,32(sp)
    800057d0:	00913c23          	sd	s1,24(sp)
    800057d4:	01213823          	sd	s2,16(sp)
    800057d8:	01313423          	sd	s3,8(sp)
    800057dc:	01413023          	sd	s4,0(sp)
    800057e0:	03010413          	addi	s0,sp,48
    800057e4:	00050993          	mv	s3,a0
    800057e8:	00058a13          	mv	s4,a1
    LOCK();
    800057ec:	00100613          	li	a2,1
    800057f0:	00000593          	li	a1,0
    800057f4:	00006517          	auipc	a0,0x6
    800057f8:	29450513          	addi	a0,a0,660 # 8000ba88 <lockPrint>
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	b60080e7          	jalr	-1184(ra) # 8000135c <copy_and_swap>
    80005804:	00050863          	beqz	a0,80005814 <_Z9getStringPci+0x50>
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	d54080e7          	jalr	-684(ra) # 8000155c <_Z15thread_dispatchv>
    80005810:	fddff06f          	j	800057ec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005814:	00000913          	li	s2,0
    80005818:	00090493          	mv	s1,s2
    8000581c:	0019091b          	addiw	s2,s2,1
    80005820:	03495a63          	bge	s2,s4,80005854 <_Z9getStringPci+0x90>
        cc = getc();
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	ebc080e7          	jalr	-324(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    8000582c:	02050463          	beqz	a0,80005854 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005830:	009984b3          	add	s1,s3,s1
    80005834:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005838:	00a00793          	li	a5,10
    8000583c:	00f50a63          	beq	a0,a5,80005850 <_Z9getStringPci+0x8c>
    80005840:	00d00793          	li	a5,13
    80005844:	fcf51ae3          	bne	a0,a5,80005818 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005848:	00090493          	mv	s1,s2
    8000584c:	0080006f          	j	80005854 <_Z9getStringPci+0x90>
    80005850:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005854:	009984b3          	add	s1,s3,s1
    80005858:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000585c:	00000613          	li	a2,0
    80005860:	00100593          	li	a1,1
    80005864:	00006517          	auipc	a0,0x6
    80005868:	22450513          	addi	a0,a0,548 # 8000ba88 <lockPrint>
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	af0080e7          	jalr	-1296(ra) # 8000135c <copy_and_swap>
    80005874:	fe0514e3          	bnez	a0,8000585c <_Z9getStringPci+0x98>
    return buf;
}
    80005878:	00098513          	mv	a0,s3
    8000587c:	02813083          	ld	ra,40(sp)
    80005880:	02013403          	ld	s0,32(sp)
    80005884:	01813483          	ld	s1,24(sp)
    80005888:	01013903          	ld	s2,16(sp)
    8000588c:	00813983          	ld	s3,8(sp)
    80005890:	00013a03          	ld	s4,0(sp)
    80005894:	03010113          	addi	sp,sp,48
    80005898:	00008067          	ret

000000008000589c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000589c:	ff010113          	addi	sp,sp,-16
    800058a0:	00813423          	sd	s0,8(sp)
    800058a4:	01010413          	addi	s0,sp,16
    800058a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800058ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800058b0:	0006c603          	lbu	a2,0(a3)
    800058b4:	fd06071b          	addiw	a4,a2,-48
    800058b8:	0ff77713          	andi	a4,a4,255
    800058bc:	00900793          	li	a5,9
    800058c0:	02e7e063          	bltu	a5,a4,800058e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800058c4:	0025179b          	slliw	a5,a0,0x2
    800058c8:	00a787bb          	addw	a5,a5,a0
    800058cc:	0017979b          	slliw	a5,a5,0x1
    800058d0:	00168693          	addi	a3,a3,1
    800058d4:	00c787bb          	addw	a5,a5,a2
    800058d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800058dc:	fd5ff06f          	j	800058b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800058e0:	00813403          	ld	s0,8(sp)
    800058e4:	01010113          	addi	sp,sp,16
    800058e8:	00008067          	ret

00000000800058ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058ec:	fc010113          	addi	sp,sp,-64
    800058f0:	02113c23          	sd	ra,56(sp)
    800058f4:	02813823          	sd	s0,48(sp)
    800058f8:	02913423          	sd	s1,40(sp)
    800058fc:	03213023          	sd	s2,32(sp)
    80005900:	01313c23          	sd	s3,24(sp)
    80005904:	04010413          	addi	s0,sp,64
    80005908:	00050493          	mv	s1,a0
    8000590c:	00058913          	mv	s2,a1
    80005910:	00060993          	mv	s3,a2
    LOCK();
    80005914:	00100613          	li	a2,1
    80005918:	00000593          	li	a1,0
    8000591c:	00006517          	auipc	a0,0x6
    80005920:	16c50513          	addi	a0,a0,364 # 8000ba88 <lockPrint>
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	a38080e7          	jalr	-1480(ra) # 8000135c <copy_and_swap>
    8000592c:	00050863          	beqz	a0,8000593c <_Z8printIntiii+0x50>
    80005930:	ffffc097          	auipc	ra,0xffffc
    80005934:	c2c080e7          	jalr	-980(ra) # 8000155c <_Z15thread_dispatchv>
    80005938:	fddff06f          	j	80005914 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000593c:	00098463          	beqz	s3,80005944 <_Z8printIntiii+0x58>
    80005940:	0804c463          	bltz	s1,800059c8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005944:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005948:	00000593          	li	a1,0
    }

    i = 0;
    8000594c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005950:	0009079b          	sext.w	a5,s2
    80005954:	0325773b          	remuw	a4,a0,s2
    80005958:	00048613          	mv	a2,s1
    8000595c:	0014849b          	addiw	s1,s1,1
    80005960:	02071693          	slli	a3,a4,0x20
    80005964:	0206d693          	srli	a3,a3,0x20
    80005968:	00006717          	auipc	a4,0x6
    8000596c:	fc870713          	addi	a4,a4,-56 # 8000b930 <digits>
    80005970:	00d70733          	add	a4,a4,a3
    80005974:	00074683          	lbu	a3,0(a4)
    80005978:	fd040713          	addi	a4,s0,-48
    8000597c:	00c70733          	add	a4,a4,a2
    80005980:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005984:	0005071b          	sext.w	a4,a0
    80005988:	0325553b          	divuw	a0,a0,s2
    8000598c:	fcf772e3          	bgeu	a4,a5,80005950 <_Z8printIntiii+0x64>
    if(neg)
    80005990:	00058c63          	beqz	a1,800059a8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005994:	fd040793          	addi	a5,s0,-48
    80005998:	009784b3          	add	s1,a5,s1
    8000599c:	02d00793          	li	a5,45
    800059a0:	fef48823          	sb	a5,-16(s1)
    800059a4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800059a8:	fff4849b          	addiw	s1,s1,-1
    800059ac:	0204c463          	bltz	s1,800059d4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800059b0:	fd040793          	addi	a5,s0,-48
    800059b4:	009787b3          	add	a5,a5,s1
    800059b8:	ff07c503          	lbu	a0,-16(a5)
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	d60080e7          	jalr	-672(ra) # 8000171c <_Z4putcc>
    800059c4:	fe5ff06f          	j	800059a8 <_Z8printIntiii+0xbc>
        x = -xx;
    800059c8:	4090053b          	negw	a0,s1
        neg = 1;
    800059cc:	00100593          	li	a1,1
        x = -xx;
    800059d0:	f7dff06f          	j	8000594c <_Z8printIntiii+0x60>

    UNLOCK();
    800059d4:	00000613          	li	a2,0
    800059d8:	00100593          	li	a1,1
    800059dc:	00006517          	auipc	a0,0x6
    800059e0:	0ac50513          	addi	a0,a0,172 # 8000ba88 <lockPrint>
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	978080e7          	jalr	-1672(ra) # 8000135c <copy_and_swap>
    800059ec:	fe0514e3          	bnez	a0,800059d4 <_Z8printIntiii+0xe8>
    800059f0:	03813083          	ld	ra,56(sp)
    800059f4:	03013403          	ld	s0,48(sp)
    800059f8:	02813483          	ld	s1,40(sp)
    800059fc:	02013903          	ld	s2,32(sp)
    80005a00:	01813983          	ld	s3,24(sp)
    80005a04:	04010113          	addi	sp,sp,64
    80005a08:	00008067          	ret

0000000080005a0c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a0c:	fd010113          	addi	sp,sp,-48
    80005a10:	02113423          	sd	ra,40(sp)
    80005a14:	02813023          	sd	s0,32(sp)
    80005a18:	00913c23          	sd	s1,24(sp)
    80005a1c:	01213823          	sd	s2,16(sp)
    80005a20:	01313423          	sd	s3,8(sp)
    80005a24:	03010413          	addi	s0,sp,48
    80005a28:	00050493          	mv	s1,a0
    80005a2c:	00058913          	mv	s2,a1
    80005a30:	0015879b          	addiw	a5,a1,1
    80005a34:	0007851b          	sext.w	a0,a5
    80005a38:	00f4a023          	sw	a5,0(s1)
    80005a3c:	0004a823          	sw	zero,16(s1)
    80005a40:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a44:	00251513          	slli	a0,a0,0x2
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	96c080e7          	jalr	-1684(ra) # 800013b4 <_Z9mem_allocm>
    80005a50:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a54:	01000513          	li	a0,16
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	fe8080e7          	jalr	-24(ra) # 80001a40 <_Znwm>
    80005a60:	00050993          	mv	s3,a0
    80005a64:	00000593          	li	a1,0
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	398080e7          	jalr	920(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    80005a70:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a74:	01000513          	li	a0,16
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	fc8080e7          	jalr	-56(ra) # 80001a40 <_Znwm>
    80005a80:	00050993          	mv	s3,a0
    80005a84:	00090593          	mv	a1,s2
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	378080e7          	jalr	888(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    80005a90:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a94:	01000513          	li	a0,16
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	fa8080e7          	jalr	-88(ra) # 80001a40 <_Znwm>
    80005aa0:	00050913          	mv	s2,a0
    80005aa4:	00100593          	li	a1,1
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	358080e7          	jalr	856(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    80005ab0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ab4:	01000513          	li	a0,16
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	f88080e7          	jalr	-120(ra) # 80001a40 <_Znwm>
    80005ac0:	00050913          	mv	s2,a0
    80005ac4:	00100593          	li	a1,1
    80005ac8:	ffffc097          	auipc	ra,0xffffc
    80005acc:	338080e7          	jalr	824(ra) # 80001e00 <_ZN9SemaphoreC1Ej>
    80005ad0:	0324b823          	sd	s2,48(s1)
}
    80005ad4:	02813083          	ld	ra,40(sp)
    80005ad8:	02013403          	ld	s0,32(sp)
    80005adc:	01813483          	ld	s1,24(sp)
    80005ae0:	01013903          	ld	s2,16(sp)
    80005ae4:	00813983          	ld	s3,8(sp)
    80005ae8:	03010113          	addi	sp,sp,48
    80005aec:	00008067          	ret
    80005af0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005af4:	00098513          	mv	a0,s3
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	f98080e7          	jalr	-104(ra) # 80001a90 <_ZdlPv>
    80005b00:	00048513          	mv	a0,s1
    80005b04:	00007097          	auipc	ra,0x7
    80005b08:	064080e7          	jalr	100(ra) # 8000cb68 <_Unwind_Resume>
    80005b0c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b10:	00098513          	mv	a0,s3
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	f7c080e7          	jalr	-132(ra) # 80001a90 <_ZdlPv>
    80005b1c:	00048513          	mv	a0,s1
    80005b20:	00007097          	auipc	ra,0x7
    80005b24:	048080e7          	jalr	72(ra) # 8000cb68 <_Unwind_Resume>
    80005b28:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b2c:	00090513          	mv	a0,s2
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	f60080e7          	jalr	-160(ra) # 80001a90 <_ZdlPv>
    80005b38:	00048513          	mv	a0,s1
    80005b3c:	00007097          	auipc	ra,0x7
    80005b40:	02c080e7          	jalr	44(ra) # 8000cb68 <_Unwind_Resume>
    80005b44:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b48:	00090513          	mv	a0,s2
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	f44080e7          	jalr	-188(ra) # 80001a90 <_ZdlPv>
    80005b54:	00048513          	mv	a0,s1
    80005b58:	00007097          	auipc	ra,0x7
    80005b5c:	010080e7          	jalr	16(ra) # 8000cb68 <_Unwind_Resume>

0000000080005b60 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00113c23          	sd	ra,24(sp)
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	01213023          	sd	s2,0(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00050493          	mv	s1,a0
    80005b7c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b80:	01853503          	ld	a0,24(a0)
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	2b8080e7          	jalr	696(ra) # 80001e3c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b8c:	0304b503          	ld	a0,48(s1)
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	2ac080e7          	jalr	684(ra) # 80001e3c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b98:	0084b783          	ld	a5,8(s1)
    80005b9c:	0144a703          	lw	a4,20(s1)
    80005ba0:	00271713          	slli	a4,a4,0x2
    80005ba4:	00e787b3          	add	a5,a5,a4
    80005ba8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bac:	0144a783          	lw	a5,20(s1)
    80005bb0:	0017879b          	addiw	a5,a5,1
    80005bb4:	0004a703          	lw	a4,0(s1)
    80005bb8:	02e7e7bb          	remw	a5,a5,a4
    80005bbc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005bc0:	0304b503          	ld	a0,48(s1)
    80005bc4:	ffffc097          	auipc	ra,0xffffc
    80005bc8:	2a4080e7          	jalr	676(ra) # 80001e68 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bcc:	0204b503          	ld	a0,32(s1)
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	298080e7          	jalr	664(ra) # 80001e68 <_ZN9Semaphore6signalEv>

}
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	01013403          	ld	s0,16(sp)
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	00013903          	ld	s2,0(sp)
    80005be8:	02010113          	addi	sp,sp,32
    80005bec:	00008067          	ret

0000000080005bf0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bf0:	fe010113          	addi	sp,sp,-32
    80005bf4:	00113c23          	sd	ra,24(sp)
    80005bf8:	00813823          	sd	s0,16(sp)
    80005bfc:	00913423          	sd	s1,8(sp)
    80005c00:	01213023          	sd	s2,0(sp)
    80005c04:	02010413          	addi	s0,sp,32
    80005c08:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c0c:	02053503          	ld	a0,32(a0)
    80005c10:	ffffc097          	auipc	ra,0xffffc
    80005c14:	22c080e7          	jalr	556(ra) # 80001e3c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c18:	0284b503          	ld	a0,40(s1)
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	220080e7          	jalr	544(ra) # 80001e3c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c24:	0084b703          	ld	a4,8(s1)
    80005c28:	0104a783          	lw	a5,16(s1)
    80005c2c:	00279693          	slli	a3,a5,0x2
    80005c30:	00d70733          	add	a4,a4,a3
    80005c34:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c38:	0017879b          	addiw	a5,a5,1
    80005c3c:	0004a703          	lw	a4,0(s1)
    80005c40:	02e7e7bb          	remw	a5,a5,a4
    80005c44:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c48:	0284b503          	ld	a0,40(s1)
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	21c080e7          	jalr	540(ra) # 80001e68 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c54:	0184b503          	ld	a0,24(s1)
    80005c58:	ffffc097          	auipc	ra,0xffffc
    80005c5c:	210080e7          	jalr	528(ra) # 80001e68 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c60:	00090513          	mv	a0,s2
    80005c64:	01813083          	ld	ra,24(sp)
    80005c68:	01013403          	ld	s0,16(sp)
    80005c6c:	00813483          	ld	s1,8(sp)
    80005c70:	00013903          	ld	s2,0(sp)
    80005c74:	02010113          	addi	sp,sp,32
    80005c78:	00008067          	ret

0000000080005c7c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00113c23          	sd	ra,24(sp)
    80005c84:	00813823          	sd	s0,16(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	01213023          	sd	s2,0(sp)
    80005c90:	02010413          	addi	s0,sp,32
    80005c94:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c98:	02853503          	ld	a0,40(a0)
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	1a0080e7          	jalr	416(ra) # 80001e3c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ca4:	0304b503          	ld	a0,48(s1)
    80005ca8:	ffffc097          	auipc	ra,0xffffc
    80005cac:	194080e7          	jalr	404(ra) # 80001e3c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005cb0:	0144a783          	lw	a5,20(s1)
    80005cb4:	0104a903          	lw	s2,16(s1)
    80005cb8:	0327ce63          	blt	a5,s2,80005cf4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005cbc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005cc0:	0304b503          	ld	a0,48(s1)
    80005cc4:	ffffc097          	auipc	ra,0xffffc
    80005cc8:	1a4080e7          	jalr	420(ra) # 80001e68 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ccc:	0284b503          	ld	a0,40(s1)
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	198080e7          	jalr	408(ra) # 80001e68 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cd8:	00090513          	mv	a0,s2
    80005cdc:	01813083          	ld	ra,24(sp)
    80005ce0:	01013403          	ld	s0,16(sp)
    80005ce4:	00813483          	ld	s1,8(sp)
    80005ce8:	00013903          	ld	s2,0(sp)
    80005cec:	02010113          	addi	sp,sp,32
    80005cf0:	00008067          	ret
        ret = cap - head + tail;
    80005cf4:	0004a703          	lw	a4,0(s1)
    80005cf8:	4127093b          	subw	s2,a4,s2
    80005cfc:	00f9093b          	addw	s2,s2,a5
    80005d00:	fc1ff06f          	j	80005cc0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d04 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	02010413          	addi	s0,sp,32
    80005d18:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d1c:	00a00513          	li	a0,10
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	208080e7          	jalr	520(ra) # 80001f28 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	4f850513          	addi	a0,a0,1272 # 80009220 <CONSOLE_STATUS+0x210>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	a0c080e7          	jalr	-1524(ra) # 8000573c <_Z11printStringPKc>
    while (getCnt()) {
    80005d38:	00048513          	mv	a0,s1
    80005d3c:	00000097          	auipc	ra,0x0
    80005d40:	f40080e7          	jalr	-192(ra) # 80005c7c <_ZN9BufferCPP6getCntEv>
    80005d44:	02050c63          	beqz	a0,80005d7c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d48:	0084b783          	ld	a5,8(s1)
    80005d4c:	0104a703          	lw	a4,16(s1)
    80005d50:	00271713          	slli	a4,a4,0x2
    80005d54:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d58:	0007c503          	lbu	a0,0(a5)
    80005d5c:	ffffc097          	auipc	ra,0xffffc
    80005d60:	1cc080e7          	jalr	460(ra) # 80001f28 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d64:	0104a783          	lw	a5,16(s1)
    80005d68:	0017879b          	addiw	a5,a5,1
    80005d6c:	0004a703          	lw	a4,0(s1)
    80005d70:	02e7e7bb          	remw	a5,a5,a4
    80005d74:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d78:	fc1ff06f          	j	80005d38 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d7c:	02100513          	li	a0,33
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	1a8080e7          	jalr	424(ra) # 80001f28 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d88:	00a00513          	li	a0,10
    80005d8c:	ffffc097          	auipc	ra,0xffffc
    80005d90:	19c080e7          	jalr	412(ra) # 80001f28 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d94:	0084b503          	ld	a0,8(s1)
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	65c080e7          	jalr	1628(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005da0:	0204b503          	ld	a0,32(s1)
    80005da4:	00050863          	beqz	a0,80005db4 <_ZN9BufferCPPD1Ev+0xb0>
    80005da8:	00053783          	ld	a5,0(a0)
    80005dac:	0087b783          	ld	a5,8(a5)
    80005db0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005db4:	0184b503          	ld	a0,24(s1)
    80005db8:	00050863          	beqz	a0,80005dc8 <_ZN9BufferCPPD1Ev+0xc4>
    80005dbc:	00053783          	ld	a5,0(a0)
    80005dc0:	0087b783          	ld	a5,8(a5)
    80005dc4:	000780e7          	jalr	a5
    delete mutexTail;
    80005dc8:	0304b503          	ld	a0,48(s1)
    80005dcc:	00050863          	beqz	a0,80005ddc <_ZN9BufferCPPD1Ev+0xd8>
    80005dd0:	00053783          	ld	a5,0(a0)
    80005dd4:	0087b783          	ld	a5,8(a5)
    80005dd8:	000780e7          	jalr	a5
    delete mutexHead;
    80005ddc:	0284b503          	ld	a0,40(s1)
    80005de0:	00050863          	beqz	a0,80005df0 <_ZN9BufferCPPD1Ev+0xec>
    80005de4:	00053783          	ld	a5,0(a0)
    80005de8:	0087b783          	ld	a5,8(a5)
    80005dec:	000780e7          	jalr	a5
}
    80005df0:	01813083          	ld	ra,24(sp)
    80005df4:	01013403          	ld	s0,16(sp)
    80005df8:	00813483          	ld	s1,8(sp)
    80005dfc:	02010113          	addi	sp,sp,32
    80005e00:	00008067          	ret

0000000080005e04 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e04:	fe010113          	addi	sp,sp,-32
    80005e08:	00113c23          	sd	ra,24(sp)
    80005e0c:	00813823          	sd	s0,16(sp)
    80005e10:	00913423          	sd	s1,8(sp)
    80005e14:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e18:	00003517          	auipc	a0,0x3
    80005e1c:	42050513          	addi	a0,a0,1056 # 80009238 <CONSOLE_STATUS+0x228>
    80005e20:	00000097          	auipc	ra,0x0
    80005e24:	91c080e7          	jalr	-1764(ra) # 8000573c <_Z11printStringPKc>
    int test = getc() - '0';
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	8b8080e7          	jalr	-1864(ra) # 800016e0 <_Z4getcv>
    80005e30:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e34:	ffffc097          	auipc	ra,0xffffc
    80005e38:	8ac080e7          	jalr	-1876(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e3c:	00700793          	li	a5,7
    80005e40:	1097e263          	bltu	a5,s1,80005f44 <_Z8userMainv+0x140>
    80005e44:	00249493          	slli	s1,s1,0x2
    80005e48:	00003717          	auipc	a4,0x3
    80005e4c:	64870713          	addi	a4,a4,1608 # 80009490 <CONSOLE_STATUS+0x480>
    80005e50:	00e484b3          	add	s1,s1,a4
    80005e54:	0004a783          	lw	a5,0(s1)
    80005e58:	00e787b3          	add	a5,a5,a4
    80005e5c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005e60:	fffff097          	auipc	ra,0xfffff
    80005e64:	f54080e7          	jalr	-172(ra) # 80004db4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005e68:	00003517          	auipc	a0,0x3
    80005e6c:	3f050513          	addi	a0,a0,1008 # 80009258 <CONSOLE_STATUS+0x248>
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	8cc080e7          	jalr	-1844(ra) # 8000573c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005e78:	01813083          	ld	ra,24(sp)
    80005e7c:	01013403          	ld	s0,16(sp)
    80005e80:	00813483          	ld	s1,8(sp)
    80005e84:	02010113          	addi	sp,sp,32
    80005e88:	00008067          	ret
            Threads_CPP_API_test();
    80005e8c:	ffffe097          	auipc	ra,0xffffe
    80005e90:	e08080e7          	jalr	-504(ra) # 80003c94 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005e94:	00003517          	auipc	a0,0x3
    80005e98:	40450513          	addi	a0,a0,1028 # 80009298 <CONSOLE_STATUS+0x288>
    80005e9c:	00000097          	auipc	ra,0x0
    80005ea0:	8a0080e7          	jalr	-1888(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005ea4:	fd5ff06f          	j	80005e78 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005ea8:	ffffd097          	auipc	ra,0xffffd
    80005eac:	640080e7          	jalr	1600(ra) # 800034e8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005eb0:	00003517          	auipc	a0,0x3
    80005eb4:	42850513          	addi	a0,a0,1064 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005eb8:	00000097          	auipc	ra,0x0
    80005ebc:	884080e7          	jalr	-1916(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005ec0:	fb9ff06f          	j	80005e78 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	234080e7          	jalr	564(ra) # 800050f8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	45c50513          	addi	a0,a0,1116 # 80009328 <CONSOLE_STATUS+0x318>
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	868080e7          	jalr	-1944(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005edc:	f9dff06f          	j	80005e78 <_Z8userMainv+0x74>
            testSleeping();
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	11c080e7          	jalr	284(ra) # 80005ffc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	49850513          	addi	a0,a0,1176 # 80009380 <CONSOLE_STATUS+0x370>
    80005ef0:	00000097          	auipc	ra,0x0
    80005ef4:	84c080e7          	jalr	-1972(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005ef8:	f81ff06f          	j	80005e78 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005efc:	ffffe097          	auipc	ra,0xffffe
    80005f00:	258080e7          	jalr	600(ra) # 80004154 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f04:	00003517          	auipc	a0,0x3
    80005f08:	4ac50513          	addi	a0,a0,1196 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005f0c:	00000097          	auipc	ra,0x0
    80005f10:	830080e7          	jalr	-2000(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005f14:	f65ff06f          	j	80005e78 <_Z8userMainv+0x74>
            System_Mode_test();
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	658080e7          	jalr	1624(ra) # 80006570 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005f20:	00003517          	auipc	a0,0x3
    80005f24:	4d050513          	addi	a0,a0,1232 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005f28:	00000097          	auipc	ra,0x0
    80005f2c:	814080e7          	jalr	-2028(ra) # 8000573c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	4e050513          	addi	a0,a0,1248 # 80009410 <CONSOLE_STATUS+0x400>
    80005f38:	00000097          	auipc	ra,0x0
    80005f3c:	804080e7          	jalr	-2044(ra) # 8000573c <_Z11printStringPKc>
            break;
    80005f40:	f39ff06f          	j	80005e78 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005f44:	00003517          	auipc	a0,0x3
    80005f48:	52450513          	addi	a0,a0,1316 # 80009468 <CONSOLE_STATUS+0x458>
    80005f4c:	fffff097          	auipc	ra,0xfffff
    80005f50:	7f0080e7          	jalr	2032(ra) # 8000573c <_Z11printStringPKc>
    80005f54:	f25ff06f          	j	80005e78 <_Z8userMainv+0x74>

0000000080005f58 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f70:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f74:	00600493          	li	s1,6
    while (--i > 0) {
    80005f78:	fff4849b          	addiw	s1,s1,-1
    80005f7c:	04905463          	blez	s1,80005fc4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	53050513          	addi	a0,a0,1328 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005f88:	fffff097          	auipc	ra,0xfffff
    80005f8c:	7b4080e7          	jalr	1972(ra) # 8000573c <_Z11printStringPKc>
        printInt(sleep_time);
    80005f90:	00000613          	li	a2,0
    80005f94:	00a00593          	li	a1,10
    80005f98:	0009051b          	sext.w	a0,s2
    80005f9c:	00000097          	auipc	ra,0x0
    80005fa0:	950080e7          	jalr	-1712(ra) # 800058ec <_Z8printIntiii>
        printString(" !\n");
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	51450513          	addi	a0,a0,1300 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	790080e7          	jalr	1936(ra) # 8000573c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005fb4:	00090513          	mv	a0,s2
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	528080e7          	jalr	1320(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80005fc0:	fb9ff06f          	j	80005f78 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005fc4:	00a00793          	li	a5,10
    80005fc8:	02f95933          	divu	s2,s2,a5
    80005fcc:	fff90913          	addi	s2,s2,-1
    80005fd0:	00006797          	auipc	a5,0x6
    80005fd4:	ac078793          	addi	a5,a5,-1344 # 8000ba90 <_ZL8finished>
    80005fd8:	01278933          	add	s2,a5,s2
    80005fdc:	00100793          	li	a5,1
    80005fe0:	00f90023          	sb	a5,0(s2)
}
    80005fe4:	01813083          	ld	ra,24(sp)
    80005fe8:	01013403          	ld	s0,16(sp)
    80005fec:	00813483          	ld	s1,8(sp)
    80005ff0:	00013903          	ld	s2,0(sp)
    80005ff4:	02010113          	addi	sp,sp,32
    80005ff8:	00008067          	ret

0000000080005ffc <_Z12testSleepingv>:

void testSleeping() {
    80005ffc:	fc010113          	addi	sp,sp,-64
    80006000:	02113c23          	sd	ra,56(sp)
    80006004:	02813823          	sd	s0,48(sp)
    80006008:	02913423          	sd	s1,40(sp)
    8000600c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006010:	00a00793          	li	a5,10
    80006014:	fcf43823          	sd	a5,-48(s0)
    80006018:	01400793          	li	a5,20
    8000601c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006020:	00000493          	li	s1,0
    80006024:	02c0006f          	j	80006050 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006028:	00349793          	slli	a5,s1,0x3
    8000602c:	fd040613          	addi	a2,s0,-48
    80006030:	00f60633          	add	a2,a2,a5
    80006034:	00000597          	auipc	a1,0x0
    80006038:	f2458593          	addi	a1,a1,-220 # 80005f58 <_ZL9sleepyRunPv>
    8000603c:	fc040513          	addi	a0,s0,-64
    80006040:	00f50533          	add	a0,a0,a5
    80006044:	ffffb097          	auipc	ra,0xffffb
    80006048:	3f0080e7          	jalr	1008(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000604c:	0014849b          	addiw	s1,s1,1
    80006050:	00100793          	li	a5,1
    80006054:	fc97dae3          	bge	a5,s1,80006028 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006058:	00006797          	auipc	a5,0x6
    8000605c:	a387c783          	lbu	a5,-1480(a5) # 8000ba90 <_ZL8finished>
    80006060:	fe078ce3          	beqz	a5,80006058 <_Z12testSleepingv+0x5c>
    80006064:	00006797          	auipc	a5,0x6
    80006068:	a2d7c783          	lbu	a5,-1491(a5) # 8000ba91 <_ZL8finished+0x1>
    8000606c:	fe0786e3          	beqz	a5,80006058 <_Z12testSleepingv+0x5c>
}
    80006070:	03813083          	ld	ra,56(sp)
    80006074:	03013403          	ld	s0,48(sp)
    80006078:	02813483          	ld	s1,40(sp)
    8000607c:	04010113          	addi	sp,sp,64
    80006080:	00008067          	ret

0000000080006084 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006084:	fe010113          	addi	sp,sp,-32
    80006088:	00113c23          	sd	ra,24(sp)
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00913423          	sd	s1,8(sp)
    80006094:	01213023          	sd	s2,0(sp)
    80006098:	02010413          	addi	s0,sp,32
    8000609c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800060a0:	00100793          	li	a5,1
    800060a4:	02a7f863          	bgeu	a5,a0,800060d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800060a8:	00a00793          	li	a5,10
    800060ac:	02f577b3          	remu	a5,a0,a5
    800060b0:	02078e63          	beqz	a5,800060ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800060b4:	fff48513          	addi	a0,s1,-1
    800060b8:	00000097          	auipc	ra,0x0
    800060bc:	fcc080e7          	jalr	-52(ra) # 80006084 <_ZL9fibonaccim>
    800060c0:	00050913          	mv	s2,a0
    800060c4:	ffe48513          	addi	a0,s1,-2
    800060c8:	00000097          	auipc	ra,0x0
    800060cc:	fbc080e7          	jalr	-68(ra) # 80006084 <_ZL9fibonaccim>
    800060d0:	00a90533          	add	a0,s2,a0
}
    800060d4:	01813083          	ld	ra,24(sp)
    800060d8:	01013403          	ld	s0,16(sp)
    800060dc:	00813483          	ld	s1,8(sp)
    800060e0:	00013903          	ld	s2,0(sp)
    800060e4:	02010113          	addi	sp,sp,32
    800060e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	470080e7          	jalr	1136(ra) # 8000155c <_Z15thread_dispatchv>
    800060f4:	fc1ff06f          	j	800060b4 <_ZL9fibonaccim+0x30>

00000000800060f8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800060f8:	fe010113          	addi	sp,sp,-32
    800060fc:	00113c23          	sd	ra,24(sp)
    80006100:	00813823          	sd	s0,16(sp)
    80006104:	00913423          	sd	s1,8(sp)
    80006108:	01213023          	sd	s2,0(sp)
    8000610c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006110:	00a00493          	li	s1,10
    80006114:	0400006f          	j	80006154 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006118:	00003517          	auipc	a0,0x3
    8000611c:	07050513          	addi	a0,a0,112 # 80009188 <CONSOLE_STATUS+0x178>
    80006120:	fffff097          	auipc	ra,0xfffff
    80006124:	61c080e7          	jalr	1564(ra) # 8000573c <_Z11printStringPKc>
    80006128:	00000613          	li	a2,0
    8000612c:	00a00593          	li	a1,10
    80006130:	00048513          	mv	a0,s1
    80006134:	fffff097          	auipc	ra,0xfffff
    80006138:	7b8080e7          	jalr	1976(ra) # 800058ec <_Z8printIntiii>
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	23c50513          	addi	a0,a0,572 # 80009378 <CONSOLE_STATUS+0x368>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	5f8080e7          	jalr	1528(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000614c:	0014849b          	addiw	s1,s1,1
    80006150:	0ff4f493          	andi	s1,s1,255
    80006154:	00c00793          	li	a5,12
    80006158:	fc97f0e3          	bgeu	a5,s1,80006118 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	03450513          	addi	a0,a0,52 # 80009190 <CONSOLE_STATUS+0x180>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	5d8080e7          	jalr	1496(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000616c:	00500313          	li	t1,5
    thread_dispatch();
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	3ec080e7          	jalr	1004(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006178:	01000513          	li	a0,16
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	f08080e7          	jalr	-248(ra) # 80006084 <_ZL9fibonaccim>
    80006184:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006188:	00003517          	auipc	a0,0x3
    8000618c:	01850513          	addi	a0,a0,24 # 800091a0 <CONSOLE_STATUS+0x190>
    80006190:	fffff097          	auipc	ra,0xfffff
    80006194:	5ac080e7          	jalr	1452(ra) # 8000573c <_Z11printStringPKc>
    80006198:	00000613          	li	a2,0
    8000619c:	00a00593          	li	a1,10
    800061a0:	0009051b          	sext.w	a0,s2
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	748080e7          	jalr	1864(ra) # 800058ec <_Z8printIntiii>
    800061ac:	00003517          	auipc	a0,0x3
    800061b0:	1cc50513          	addi	a0,a0,460 # 80009378 <CONSOLE_STATUS+0x368>
    800061b4:	fffff097          	auipc	ra,0xfffff
    800061b8:	588080e7          	jalr	1416(ra) # 8000573c <_Z11printStringPKc>
    800061bc:	0400006f          	j	800061fc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	fc850513          	addi	a0,a0,-56 # 80009188 <CONSOLE_STATUS+0x178>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	574080e7          	jalr	1396(ra) # 8000573c <_Z11printStringPKc>
    800061d0:	00000613          	li	a2,0
    800061d4:	00a00593          	li	a1,10
    800061d8:	00048513          	mv	a0,s1
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	710080e7          	jalr	1808(ra) # 800058ec <_Z8printIntiii>
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	19450513          	addi	a0,a0,404 # 80009378 <CONSOLE_STATUS+0x368>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	550080e7          	jalr	1360(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800061f4:	0014849b          	addiw	s1,s1,1
    800061f8:	0ff4f493          	andi	s1,s1,255
    800061fc:	00f00793          	li	a5,15
    80006200:	fc97f0e3          	bgeu	a5,s1,800061c0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	fac50513          	addi	a0,a0,-84 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	530080e7          	jalr	1328(ra) # 8000573c <_Z11printStringPKc>
    finishedD = true;
    80006214:	00100793          	li	a5,1
    80006218:	00006717          	auipc	a4,0x6
    8000621c:	86f70d23          	sb	a5,-1926(a4) # 8000ba92 <_ZL9finishedD>
    thread_dispatch();
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	33c080e7          	jalr	828(ra) # 8000155c <_Z15thread_dispatchv>
}
    80006228:	01813083          	ld	ra,24(sp)
    8000622c:	01013403          	ld	s0,16(sp)
    80006230:	00813483          	ld	s1,8(sp)
    80006234:	00013903          	ld	s2,0(sp)
    80006238:	02010113          	addi	sp,sp,32
    8000623c:	00008067          	ret

0000000080006240 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	01213023          	sd	s2,0(sp)
    80006254:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006258:	00000493          	li	s1,0
    8000625c:	0400006f          	j	8000629c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	ee850513          	addi	a0,a0,-280 # 80009148 <CONSOLE_STATUS+0x138>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	4d4080e7          	jalr	1236(ra) # 8000573c <_Z11printStringPKc>
    80006270:	00000613          	li	a2,0
    80006274:	00a00593          	li	a1,10
    80006278:	00048513          	mv	a0,s1
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	670080e7          	jalr	1648(ra) # 800058ec <_Z8printIntiii>
    80006284:	00003517          	auipc	a0,0x3
    80006288:	0f450513          	addi	a0,a0,244 # 80009378 <CONSOLE_STATUS+0x368>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	4b0080e7          	jalr	1200(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006294:	0014849b          	addiw	s1,s1,1
    80006298:	0ff4f493          	andi	s1,s1,255
    8000629c:	00200793          	li	a5,2
    800062a0:	fc97f0e3          	bgeu	a5,s1,80006260 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	eac50513          	addi	a0,a0,-340 # 80009150 <CONSOLE_STATUS+0x140>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	490080e7          	jalr	1168(ra) # 8000573c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800062b4:	00700313          	li	t1,7
    thread_dispatch();
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	2a4080e7          	jalr	676(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800062c0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800062c4:	00003517          	auipc	a0,0x3
    800062c8:	e9c50513          	addi	a0,a0,-356 # 80009160 <CONSOLE_STATUS+0x150>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	470080e7          	jalr	1136(ra) # 8000573c <_Z11printStringPKc>
    800062d4:	00000613          	li	a2,0
    800062d8:	00a00593          	li	a1,10
    800062dc:	0009051b          	sext.w	a0,s2
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	60c080e7          	jalr	1548(ra) # 800058ec <_Z8printIntiii>
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	09050513          	addi	a0,a0,144 # 80009378 <CONSOLE_STATUS+0x368>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	44c080e7          	jalr	1100(ra) # 8000573c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800062f8:	00c00513          	li	a0,12
    800062fc:	00000097          	auipc	ra,0x0
    80006300:	d88080e7          	jalr	-632(ra) # 80006084 <_ZL9fibonaccim>
    80006304:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006308:	00003517          	auipc	a0,0x3
    8000630c:	e6050513          	addi	a0,a0,-416 # 80009168 <CONSOLE_STATUS+0x158>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	42c080e7          	jalr	1068(ra) # 8000573c <_Z11printStringPKc>
    80006318:	00000613          	li	a2,0
    8000631c:	00a00593          	li	a1,10
    80006320:	0009051b          	sext.w	a0,s2
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	5c8080e7          	jalr	1480(ra) # 800058ec <_Z8printIntiii>
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	04c50513          	addi	a0,a0,76 # 80009378 <CONSOLE_STATUS+0x368>
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	408080e7          	jalr	1032(ra) # 8000573c <_Z11printStringPKc>
    8000633c:	0400006f          	j	8000637c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006340:	00003517          	auipc	a0,0x3
    80006344:	e0850513          	addi	a0,a0,-504 # 80009148 <CONSOLE_STATUS+0x138>
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	3f4080e7          	jalr	1012(ra) # 8000573c <_Z11printStringPKc>
    80006350:	00000613          	li	a2,0
    80006354:	00a00593          	li	a1,10
    80006358:	00048513          	mv	a0,s1
    8000635c:	fffff097          	auipc	ra,0xfffff
    80006360:	590080e7          	jalr	1424(ra) # 800058ec <_Z8printIntiii>
    80006364:	00003517          	auipc	a0,0x3
    80006368:	01450513          	addi	a0,a0,20 # 80009378 <CONSOLE_STATUS+0x368>
    8000636c:	fffff097          	auipc	ra,0xfffff
    80006370:	3d0080e7          	jalr	976(ra) # 8000573c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006374:	0014849b          	addiw	s1,s1,1
    80006378:	0ff4f493          	andi	s1,s1,255
    8000637c:	00500793          	li	a5,5
    80006380:	fc97f0e3          	bgeu	a5,s1,80006340 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	d9c50513          	addi	a0,a0,-612 # 80009120 <CONSOLE_STATUS+0x110>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	3b0080e7          	jalr	944(ra) # 8000573c <_Z11printStringPKc>
    finishedC = true;
    80006394:	00100793          	li	a5,1
    80006398:	00005717          	auipc	a4,0x5
    8000639c:	6ef70da3          	sb	a5,1787(a4) # 8000ba93 <_ZL9finishedC>
    thread_dispatch();
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	1bc080e7          	jalr	444(ra) # 8000155c <_Z15thread_dispatchv>
}
    800063a8:	01813083          	ld	ra,24(sp)
    800063ac:	01013403          	ld	s0,16(sp)
    800063b0:	00813483          	ld	s1,8(sp)
    800063b4:	00013903          	ld	s2,0(sp)
    800063b8:	02010113          	addi	sp,sp,32
    800063bc:	00008067          	ret

00000000800063c0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800063c0:	fe010113          	addi	sp,sp,-32
    800063c4:	00113c23          	sd	ra,24(sp)
    800063c8:	00813823          	sd	s0,16(sp)
    800063cc:	00913423          	sd	s1,8(sp)
    800063d0:	01213023          	sd	s2,0(sp)
    800063d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800063d8:	00000913          	li	s2,0
    800063dc:	0400006f          	j	8000641c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	17c080e7          	jalr	380(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800063e8:	00148493          	addi	s1,s1,1
    800063ec:	000027b7          	lui	a5,0x2
    800063f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800063f4:	0097ee63          	bltu	a5,s1,80006410 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800063f8:	00000713          	li	a4,0
    800063fc:	000077b7          	lui	a5,0x7
    80006400:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006404:	fce7eee3          	bltu	a5,a4,800063e0 <_ZL11workerBodyBPv+0x20>
    80006408:	00170713          	addi	a4,a4,1
    8000640c:	ff1ff06f          	j	800063fc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006410:	00a00793          	li	a5,10
    80006414:	04f90663          	beq	s2,a5,80006460 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006418:	00190913          	addi	s2,s2,1
    8000641c:	00f00793          	li	a5,15
    80006420:	0527e463          	bltu	a5,s2,80006468 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006424:	00003517          	auipc	a0,0x3
    80006428:	d0c50513          	addi	a0,a0,-756 # 80009130 <CONSOLE_STATUS+0x120>
    8000642c:	fffff097          	auipc	ra,0xfffff
    80006430:	310080e7          	jalr	784(ra) # 8000573c <_Z11printStringPKc>
    80006434:	00000613          	li	a2,0
    80006438:	00a00593          	li	a1,10
    8000643c:	0009051b          	sext.w	a0,s2
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	4ac080e7          	jalr	1196(ra) # 800058ec <_Z8printIntiii>
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	f3050513          	addi	a0,a0,-208 # 80009378 <CONSOLE_STATUS+0x368>
    80006450:	fffff097          	auipc	ra,0xfffff
    80006454:	2ec080e7          	jalr	748(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006458:	00000493          	li	s1,0
    8000645c:	f91ff06f          	j	800063ec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006460:	14102ff3          	csrr	t6,sepc
    80006464:	fb5ff06f          	j	80006418 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	cd050513          	addi	a0,a0,-816 # 80009138 <CONSOLE_STATUS+0x128>
    80006470:	fffff097          	auipc	ra,0xfffff
    80006474:	2cc080e7          	jalr	716(ra) # 8000573c <_Z11printStringPKc>
    finishedB = true;
    80006478:	00100793          	li	a5,1
    8000647c:	00005717          	auipc	a4,0x5
    80006480:	60f70c23          	sb	a5,1560(a4) # 8000ba94 <_ZL9finishedB>
    thread_dispatch();
    80006484:	ffffb097          	auipc	ra,0xffffb
    80006488:	0d8080e7          	jalr	216(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000648c:	01813083          	ld	ra,24(sp)
    80006490:	01013403          	ld	s0,16(sp)
    80006494:	00813483          	ld	s1,8(sp)
    80006498:	00013903          	ld	s2,0(sp)
    8000649c:	02010113          	addi	sp,sp,32
    800064a0:	00008067          	ret

00000000800064a4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800064a4:	fe010113          	addi	sp,sp,-32
    800064a8:	00113c23          	sd	ra,24(sp)
    800064ac:	00813823          	sd	s0,16(sp)
    800064b0:	00913423          	sd	s1,8(sp)
    800064b4:	01213023          	sd	s2,0(sp)
    800064b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800064bc:	00000913          	li	s2,0
    800064c0:	0380006f          	j	800064f8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800064c4:	ffffb097          	auipc	ra,0xffffb
    800064c8:	098080e7          	jalr	152(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800064cc:	00148493          	addi	s1,s1,1
    800064d0:	000027b7          	lui	a5,0x2
    800064d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064d8:	0097ee63          	bltu	a5,s1,800064f4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064dc:	00000713          	li	a4,0
    800064e0:	000077b7          	lui	a5,0x7
    800064e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064e8:	fce7eee3          	bltu	a5,a4,800064c4 <_ZL11workerBodyAPv+0x20>
    800064ec:	00170713          	addi	a4,a4,1
    800064f0:	ff1ff06f          	j	800064e0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800064f4:	00190913          	addi	s2,s2,1
    800064f8:	00900793          	li	a5,9
    800064fc:	0527e063          	bltu	a5,s2,8000653c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006500:	00003517          	auipc	a0,0x3
    80006504:	c1850513          	addi	a0,a0,-1000 # 80009118 <CONSOLE_STATUS+0x108>
    80006508:	fffff097          	auipc	ra,0xfffff
    8000650c:	234080e7          	jalr	564(ra) # 8000573c <_Z11printStringPKc>
    80006510:	00000613          	li	a2,0
    80006514:	00a00593          	li	a1,10
    80006518:	0009051b          	sext.w	a0,s2
    8000651c:	fffff097          	auipc	ra,0xfffff
    80006520:	3d0080e7          	jalr	976(ra) # 800058ec <_Z8printIntiii>
    80006524:	00003517          	auipc	a0,0x3
    80006528:	e5450513          	addi	a0,a0,-428 # 80009378 <CONSOLE_STATUS+0x368>
    8000652c:	fffff097          	auipc	ra,0xfffff
    80006530:	210080e7          	jalr	528(ra) # 8000573c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006534:	00000493          	li	s1,0
    80006538:	f99ff06f          	j	800064d0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000653c:	00003517          	auipc	a0,0x3
    80006540:	be450513          	addi	a0,a0,-1052 # 80009120 <CONSOLE_STATUS+0x110>
    80006544:	fffff097          	auipc	ra,0xfffff
    80006548:	1f8080e7          	jalr	504(ra) # 8000573c <_Z11printStringPKc>
    finishedA = true;
    8000654c:	00100793          	li	a5,1
    80006550:	00005717          	auipc	a4,0x5
    80006554:	54f702a3          	sb	a5,1349(a4) # 8000ba95 <_ZL9finishedA>
}
    80006558:	01813083          	ld	ra,24(sp)
    8000655c:	01013403          	ld	s0,16(sp)
    80006560:	00813483          	ld	s1,8(sp)
    80006564:	00013903          	ld	s2,0(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret

0000000080006570 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006570:	fd010113          	addi	sp,sp,-48
    80006574:	02113423          	sd	ra,40(sp)
    80006578:	02813023          	sd	s0,32(sp)
    8000657c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006580:	00000613          	li	a2,0
    80006584:	00000597          	auipc	a1,0x0
    80006588:	f2058593          	addi	a1,a1,-224 # 800064a4 <_ZL11workerBodyAPv>
    8000658c:	fd040513          	addi	a0,s0,-48
    80006590:	ffffb097          	auipc	ra,0xffffb
    80006594:	ea4080e7          	jalr	-348(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	c2850513          	addi	a0,a0,-984 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	19c080e7          	jalr	412(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800065a8:	00000613          	li	a2,0
    800065ac:	00000597          	auipc	a1,0x0
    800065b0:	e1458593          	addi	a1,a1,-492 # 800063c0 <_ZL11workerBodyBPv>
    800065b4:	fd840513          	addi	a0,s0,-40
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	e7c080e7          	jalr	-388(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800065c0:	00003517          	auipc	a0,0x3
    800065c4:	c1850513          	addi	a0,a0,-1000 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800065c8:	fffff097          	auipc	ra,0xfffff
    800065cc:	174080e7          	jalr	372(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800065d0:	00000613          	li	a2,0
    800065d4:	00000597          	auipc	a1,0x0
    800065d8:	c6c58593          	addi	a1,a1,-916 # 80006240 <_ZL11workerBodyCPv>
    800065dc:	fe040513          	addi	a0,s0,-32
    800065e0:	ffffb097          	auipc	ra,0xffffb
    800065e4:	e54080e7          	jalr	-428(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	c0850513          	addi	a0,a0,-1016 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	14c080e7          	jalr	332(ra) # 8000573c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800065f8:	00000613          	li	a2,0
    800065fc:	00000597          	auipc	a1,0x0
    80006600:	afc58593          	addi	a1,a1,-1284 # 800060f8 <_ZL11workerBodyDPv>
    80006604:	fe840513          	addi	a0,s0,-24
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	e2c080e7          	jalr	-468(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006610:	00003517          	auipc	a0,0x3
    80006614:	bf850513          	addi	a0,a0,-1032 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006618:	fffff097          	auipc	ra,0xfffff
    8000661c:	124080e7          	jalr	292(ra) # 8000573c <_Z11printStringPKc>
    80006620:	00c0006f          	j	8000662c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006624:	ffffb097          	auipc	ra,0xffffb
    80006628:	f38080e7          	jalr	-200(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000662c:	00005797          	auipc	a5,0x5
    80006630:	4697c783          	lbu	a5,1129(a5) # 8000ba95 <_ZL9finishedA>
    80006634:	fe0788e3          	beqz	a5,80006624 <_Z16System_Mode_testv+0xb4>
    80006638:	00005797          	auipc	a5,0x5
    8000663c:	45c7c783          	lbu	a5,1116(a5) # 8000ba94 <_ZL9finishedB>
    80006640:	fe0782e3          	beqz	a5,80006624 <_Z16System_Mode_testv+0xb4>
    80006644:	00005797          	auipc	a5,0x5
    80006648:	44f7c783          	lbu	a5,1103(a5) # 8000ba93 <_ZL9finishedC>
    8000664c:	fc078ce3          	beqz	a5,80006624 <_Z16System_Mode_testv+0xb4>
    80006650:	00005797          	auipc	a5,0x5
    80006654:	4427c783          	lbu	a5,1090(a5) # 8000ba92 <_ZL9finishedD>
    80006658:	fc0786e3          	beqz	a5,80006624 <_Z16System_Mode_testv+0xb4>
    }

}
    8000665c:	02813083          	ld	ra,40(sp)
    80006660:	02013403          	ld	s0,32(sp)
    80006664:	03010113          	addi	sp,sp,48
    80006668:	00008067          	ret

000000008000666c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000666c:	fe010113          	addi	sp,sp,-32
    80006670:	00113c23          	sd	ra,24(sp)
    80006674:	00813823          	sd	s0,16(sp)
    80006678:	00913423          	sd	s1,8(sp)
    8000667c:	01213023          	sd	s2,0(sp)
    80006680:	02010413          	addi	s0,sp,32
    80006684:	00050493          	mv	s1,a0
    80006688:	00058913          	mv	s2,a1
    8000668c:	0015879b          	addiw	a5,a1,1
    80006690:	0007851b          	sext.w	a0,a5
    80006694:	00f4a023          	sw	a5,0(s1)
    80006698:	0004a823          	sw	zero,16(s1)
    8000669c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800066a0:	00251513          	slli	a0,a0,0x2
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	d10080e7          	jalr	-752(ra) # 800013b4 <_Z9mem_allocm>
    800066ac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800066b0:	00000593          	li	a1,0
    800066b4:	02048513          	addi	a0,s1,32
    800066b8:	ffffb097          	auipc	ra,0xffffb
    800066bc:	f00080e7          	jalr	-256(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800066c0:	00090593          	mv	a1,s2
    800066c4:	01848513          	addi	a0,s1,24
    800066c8:	ffffb097          	auipc	ra,0xffffb
    800066cc:	ef0080e7          	jalr	-272(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800066d0:	00100593          	li	a1,1
    800066d4:	02848513          	addi	a0,s1,40
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	ee0080e7          	jalr	-288(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800066e0:	00100593          	li	a1,1
    800066e4:	03048513          	addi	a0,s1,48
    800066e8:	ffffb097          	auipc	ra,0xffffb
    800066ec:	ed0080e7          	jalr	-304(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    800066f0:	01813083          	ld	ra,24(sp)
    800066f4:	01013403          	ld	s0,16(sp)
    800066f8:	00813483          	ld	s1,8(sp)
    800066fc:	00013903          	ld	s2,0(sp)
    80006700:	02010113          	addi	sp,sp,32
    80006704:	00008067          	ret

0000000080006708 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006708:	fe010113          	addi	sp,sp,-32
    8000670c:	00113c23          	sd	ra,24(sp)
    80006710:	00813823          	sd	s0,16(sp)
    80006714:	00913423          	sd	s1,8(sp)
    80006718:	01213023          	sd	s2,0(sp)
    8000671c:	02010413          	addi	s0,sp,32
    80006720:	00050493          	mv	s1,a0
    80006724:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006728:	01853503          	ld	a0,24(a0)
    8000672c:	ffffb097          	auipc	ra,0xffffb
    80006730:	f1c080e7          	jalr	-228(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006734:	0304b503          	ld	a0,48(s1)
    80006738:	ffffb097          	auipc	ra,0xffffb
    8000673c:	f10080e7          	jalr	-240(ra) # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006740:	0084b783          	ld	a5,8(s1)
    80006744:	0144a703          	lw	a4,20(s1)
    80006748:	00271713          	slli	a4,a4,0x2
    8000674c:	00e787b3          	add	a5,a5,a4
    80006750:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006754:	0144a783          	lw	a5,20(s1)
    80006758:	0017879b          	addiw	a5,a5,1
    8000675c:	0004a703          	lw	a4,0(s1)
    80006760:	02e7e7bb          	remw	a5,a5,a4
    80006764:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006768:	0304b503          	ld	a0,48(s1)
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	f28080e7          	jalr	-216(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006774:	0204b503          	ld	a0,32(s1)
    80006778:	ffffb097          	auipc	ra,0xffffb
    8000677c:	f1c080e7          	jalr	-228(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006780:	01813083          	ld	ra,24(sp)
    80006784:	01013403          	ld	s0,16(sp)
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	00013903          	ld	s2,0(sp)
    80006790:	02010113          	addi	sp,sp,32
    80006794:	00008067          	ret

0000000080006798 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006798:	fe010113          	addi	sp,sp,-32
    8000679c:	00113c23          	sd	ra,24(sp)
    800067a0:	00813823          	sd	s0,16(sp)
    800067a4:	00913423          	sd	s1,8(sp)
    800067a8:	01213023          	sd	s2,0(sp)
    800067ac:	02010413          	addi	s0,sp,32
    800067b0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800067b4:	02053503          	ld	a0,32(a0)
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	e90080e7          	jalr	-368(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800067c0:	0284b503          	ld	a0,40(s1)
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	e84080e7          	jalr	-380(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800067cc:	0084b703          	ld	a4,8(s1)
    800067d0:	0104a783          	lw	a5,16(s1)
    800067d4:	00279693          	slli	a3,a5,0x2
    800067d8:	00d70733          	add	a4,a4,a3
    800067dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800067e0:	0017879b          	addiw	a5,a5,1
    800067e4:	0004a703          	lw	a4,0(s1)
    800067e8:	02e7e7bb          	remw	a5,a5,a4
    800067ec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800067f0:	0284b503          	ld	a0,40(s1)
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	ea0080e7          	jalr	-352(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800067fc:	0184b503          	ld	a0,24(s1)
    80006800:	ffffb097          	auipc	ra,0xffffb
    80006804:	e94080e7          	jalr	-364(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006808:	00090513          	mv	a0,s2
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	00013903          	ld	s2,0(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret

0000000080006824 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006824:	fe010113          	addi	sp,sp,-32
    80006828:	00113c23          	sd	ra,24(sp)
    8000682c:	00813823          	sd	s0,16(sp)
    80006830:	00913423          	sd	s1,8(sp)
    80006834:	01213023          	sd	s2,0(sp)
    80006838:	02010413          	addi	s0,sp,32
    8000683c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006840:	02853503          	ld	a0,40(a0)
    80006844:	ffffb097          	auipc	ra,0xffffb
    80006848:	e04080e7          	jalr	-508(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000684c:	0304b503          	ld	a0,48(s1)
    80006850:	ffffb097          	auipc	ra,0xffffb
    80006854:	df8080e7          	jalr	-520(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006858:	0144a783          	lw	a5,20(s1)
    8000685c:	0104a903          	lw	s2,16(s1)
    80006860:	0327ce63          	blt	a5,s2,8000689c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006864:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006868:	0304b503          	ld	a0,48(s1)
    8000686c:	ffffb097          	auipc	ra,0xffffb
    80006870:	e28080e7          	jalr	-472(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006874:	0284b503          	ld	a0,40(s1)
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	e1c080e7          	jalr	-484(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006880:	00090513          	mv	a0,s2
    80006884:	01813083          	ld	ra,24(sp)
    80006888:	01013403          	ld	s0,16(sp)
    8000688c:	00813483          	ld	s1,8(sp)
    80006890:	00013903          	ld	s2,0(sp)
    80006894:	02010113          	addi	sp,sp,32
    80006898:	00008067          	ret
        ret = cap - head + tail;
    8000689c:	0004a703          	lw	a4,0(s1)
    800068a0:	4127093b          	subw	s2,a4,s2
    800068a4:	00f9093b          	addw	s2,s2,a5
    800068a8:	fc1ff06f          	j	80006868 <_ZN6Buffer6getCntEv+0x44>

00000000800068ac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800068ac:	fe010113          	addi	sp,sp,-32
    800068b0:	00113c23          	sd	ra,24(sp)
    800068b4:	00813823          	sd	s0,16(sp)
    800068b8:	00913423          	sd	s1,8(sp)
    800068bc:	02010413          	addi	s0,sp,32
    800068c0:	00050493          	mv	s1,a0
    putc('\n');
    800068c4:	00a00513          	li	a0,10
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	e54080e7          	jalr	-428(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    800068d0:	00003517          	auipc	a0,0x3
    800068d4:	95050513          	addi	a0,a0,-1712 # 80009220 <CONSOLE_STATUS+0x210>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	e64080e7          	jalr	-412(ra) # 8000573c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800068e0:	00048513          	mv	a0,s1
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	f40080e7          	jalr	-192(ra) # 80006824 <_ZN6Buffer6getCntEv>
    800068ec:	02a05c63          	blez	a0,80006924 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800068f0:	0084b783          	ld	a5,8(s1)
    800068f4:	0104a703          	lw	a4,16(s1)
    800068f8:	00271713          	slli	a4,a4,0x2
    800068fc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006900:	0007c503          	lbu	a0,0(a5)
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	e18080e7          	jalr	-488(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    8000690c:	0104a783          	lw	a5,16(s1)
    80006910:	0017879b          	addiw	a5,a5,1
    80006914:	0004a703          	lw	a4,0(s1)
    80006918:	02e7e7bb          	remw	a5,a5,a4
    8000691c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006920:	fc1ff06f          	j	800068e0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006924:	02100513          	li	a0,33
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	df4080e7          	jalr	-524(ra) # 8000171c <_Z4putcc>
    putc('\n');
    80006930:	00a00513          	li	a0,10
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	de8080e7          	jalr	-536(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    8000693c:	0084b503          	ld	a0,8(s1)
    80006940:	ffffb097          	auipc	ra,0xffffb
    80006944:	ab4080e7          	jalr	-1356(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006948:	0204b503          	ld	a0,32(s1)
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	cb0080e7          	jalr	-848(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006954:	0184b503          	ld	a0,24(s1)
    80006958:	ffffb097          	auipc	ra,0xffffb
    8000695c:	ca4080e7          	jalr	-860(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006960:	0304b503          	ld	a0,48(s1)
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	c98080e7          	jalr	-872(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000696c:	0284b503          	ld	a0,40(s1)
    80006970:	ffffb097          	auipc	ra,0xffffb
    80006974:	c8c080e7          	jalr	-884(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80006978:	01813083          	ld	ra,24(sp)
    8000697c:	01013403          	ld	s0,16(sp)
    80006980:	00813483          	ld	s1,8(sp)
    80006984:	02010113          	addi	sp,sp,32
    80006988:	00008067          	ret

000000008000698c <start>:
    8000698c:	ff010113          	addi	sp,sp,-16
    80006990:	00813423          	sd	s0,8(sp)
    80006994:	01010413          	addi	s0,sp,16
    80006998:	300027f3          	csrr	a5,mstatus
    8000699c:	ffffe737          	lui	a4,0xffffe
    800069a0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1aff>
    800069a4:	00e7f7b3          	and	a5,a5,a4
    800069a8:	00001737          	lui	a4,0x1
    800069ac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800069b0:	00e7e7b3          	or	a5,a5,a4
    800069b4:	30079073          	csrw	mstatus,a5
    800069b8:	00000797          	auipc	a5,0x0
    800069bc:	16078793          	addi	a5,a5,352 # 80006b18 <system_main>
    800069c0:	34179073          	csrw	mepc,a5
    800069c4:	00000793          	li	a5,0
    800069c8:	18079073          	csrw	satp,a5
    800069cc:	000107b7          	lui	a5,0x10
    800069d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800069d4:	30279073          	csrw	medeleg,a5
    800069d8:	30379073          	csrw	mideleg,a5
    800069dc:	104027f3          	csrr	a5,sie
    800069e0:	2227e793          	ori	a5,a5,546
    800069e4:	10479073          	csrw	sie,a5
    800069e8:	fff00793          	li	a5,-1
    800069ec:	00a7d793          	srli	a5,a5,0xa
    800069f0:	3b079073          	csrw	pmpaddr0,a5
    800069f4:	00f00793          	li	a5,15
    800069f8:	3a079073          	csrw	pmpcfg0,a5
    800069fc:	f14027f3          	csrr	a5,mhartid
    80006a00:	0200c737          	lui	a4,0x200c
    80006a04:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a08:	0007869b          	sext.w	a3,a5
    80006a0c:	00269713          	slli	a4,a3,0x2
    80006a10:	000f4637          	lui	a2,0xf4
    80006a14:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a18:	00d70733          	add	a4,a4,a3
    80006a1c:	0037979b          	slliw	a5,a5,0x3
    80006a20:	020046b7          	lui	a3,0x2004
    80006a24:	00d787b3          	add	a5,a5,a3
    80006a28:	00c585b3          	add	a1,a1,a2
    80006a2c:	00371693          	slli	a3,a4,0x3
    80006a30:	00005717          	auipc	a4,0x5
    80006a34:	07070713          	addi	a4,a4,112 # 8000baa0 <timer_scratch>
    80006a38:	00b7b023          	sd	a1,0(a5)
    80006a3c:	00d70733          	add	a4,a4,a3
    80006a40:	00f73c23          	sd	a5,24(a4)
    80006a44:	02c73023          	sd	a2,32(a4)
    80006a48:	34071073          	csrw	mscratch,a4
    80006a4c:	00000797          	auipc	a5,0x0
    80006a50:	6e478793          	addi	a5,a5,1764 # 80007130 <timervec>
    80006a54:	30579073          	csrw	mtvec,a5
    80006a58:	300027f3          	csrr	a5,mstatus
    80006a5c:	0087e793          	ori	a5,a5,8
    80006a60:	30079073          	csrw	mstatus,a5
    80006a64:	304027f3          	csrr	a5,mie
    80006a68:	0807e793          	ori	a5,a5,128
    80006a6c:	30479073          	csrw	mie,a5
    80006a70:	f14027f3          	csrr	a5,mhartid
    80006a74:	0007879b          	sext.w	a5,a5
    80006a78:	00078213          	mv	tp,a5
    80006a7c:	30200073          	mret
    80006a80:	00813403          	ld	s0,8(sp)
    80006a84:	01010113          	addi	sp,sp,16
    80006a88:	00008067          	ret

0000000080006a8c <timerinit>:
    80006a8c:	ff010113          	addi	sp,sp,-16
    80006a90:	00813423          	sd	s0,8(sp)
    80006a94:	01010413          	addi	s0,sp,16
    80006a98:	f14027f3          	csrr	a5,mhartid
    80006a9c:	0200c737          	lui	a4,0x200c
    80006aa0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006aa4:	0007869b          	sext.w	a3,a5
    80006aa8:	00269713          	slli	a4,a3,0x2
    80006aac:	000f4637          	lui	a2,0xf4
    80006ab0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006ab4:	00d70733          	add	a4,a4,a3
    80006ab8:	0037979b          	slliw	a5,a5,0x3
    80006abc:	020046b7          	lui	a3,0x2004
    80006ac0:	00d787b3          	add	a5,a5,a3
    80006ac4:	00c585b3          	add	a1,a1,a2
    80006ac8:	00371693          	slli	a3,a4,0x3
    80006acc:	00005717          	auipc	a4,0x5
    80006ad0:	fd470713          	addi	a4,a4,-44 # 8000baa0 <timer_scratch>
    80006ad4:	00b7b023          	sd	a1,0(a5)
    80006ad8:	00d70733          	add	a4,a4,a3
    80006adc:	00f73c23          	sd	a5,24(a4)
    80006ae0:	02c73023          	sd	a2,32(a4)
    80006ae4:	34071073          	csrw	mscratch,a4
    80006ae8:	00000797          	auipc	a5,0x0
    80006aec:	64878793          	addi	a5,a5,1608 # 80007130 <timervec>
    80006af0:	30579073          	csrw	mtvec,a5
    80006af4:	300027f3          	csrr	a5,mstatus
    80006af8:	0087e793          	ori	a5,a5,8
    80006afc:	30079073          	csrw	mstatus,a5
    80006b00:	304027f3          	csrr	a5,mie
    80006b04:	0807e793          	ori	a5,a5,128
    80006b08:	30479073          	csrw	mie,a5
    80006b0c:	00813403          	ld	s0,8(sp)
    80006b10:	01010113          	addi	sp,sp,16
    80006b14:	00008067          	ret

0000000080006b18 <system_main>:
    80006b18:	fe010113          	addi	sp,sp,-32
    80006b1c:	00813823          	sd	s0,16(sp)
    80006b20:	00913423          	sd	s1,8(sp)
    80006b24:	00113c23          	sd	ra,24(sp)
    80006b28:	02010413          	addi	s0,sp,32
    80006b2c:	00000097          	auipc	ra,0x0
    80006b30:	0c4080e7          	jalr	196(ra) # 80006bf0 <cpuid>
    80006b34:	00005497          	auipc	s1,0x5
    80006b38:	e9c48493          	addi	s1,s1,-356 # 8000b9d0 <started>
    80006b3c:	02050263          	beqz	a0,80006b60 <system_main+0x48>
    80006b40:	0004a783          	lw	a5,0(s1)
    80006b44:	0007879b          	sext.w	a5,a5
    80006b48:	fe078ce3          	beqz	a5,80006b40 <system_main+0x28>
    80006b4c:	0ff0000f          	fence
    80006b50:	00003517          	auipc	a0,0x3
    80006b54:	9a050513          	addi	a0,a0,-1632 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006b58:	00001097          	auipc	ra,0x1
    80006b5c:	a74080e7          	jalr	-1420(ra) # 800075cc <panic>
    80006b60:	00001097          	auipc	ra,0x1
    80006b64:	9c8080e7          	jalr	-1592(ra) # 80007528 <consoleinit>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	154080e7          	jalr	340(ra) # 80007cbc <printfinit>
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	80850513          	addi	a0,a0,-2040 # 80009378 <CONSOLE_STATUS+0x368>
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	ab0080e7          	jalr	-1360(ra) # 80007628 <__printf>
    80006b80:	00003517          	auipc	a0,0x3
    80006b84:	94050513          	addi	a0,a0,-1728 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006b88:	00001097          	auipc	ra,0x1
    80006b8c:	aa0080e7          	jalr	-1376(ra) # 80007628 <__printf>
    80006b90:	00002517          	auipc	a0,0x2
    80006b94:	7e850513          	addi	a0,a0,2024 # 80009378 <CONSOLE_STATUS+0x368>
    80006b98:	00001097          	auipc	ra,0x1
    80006b9c:	a90080e7          	jalr	-1392(ra) # 80007628 <__printf>
    80006ba0:	00001097          	auipc	ra,0x1
    80006ba4:	4a8080e7          	jalr	1192(ra) # 80008048 <kinit>
    80006ba8:	00000097          	auipc	ra,0x0
    80006bac:	148080e7          	jalr	328(ra) # 80006cf0 <trapinit>
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	16c080e7          	jalr	364(ra) # 80006d1c <trapinithart>
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	5b8080e7          	jalr	1464(ra) # 80007170 <plicinit>
    80006bc0:	00000097          	auipc	ra,0x0
    80006bc4:	5d8080e7          	jalr	1496(ra) # 80007198 <plicinithart>
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	078080e7          	jalr	120(ra) # 80006c40 <userinit>
    80006bd0:	0ff0000f          	fence
    80006bd4:	00100793          	li	a5,1
    80006bd8:	00003517          	auipc	a0,0x3
    80006bdc:	90050513          	addi	a0,a0,-1792 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006be0:	00f4a023          	sw	a5,0(s1)
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	a44080e7          	jalr	-1468(ra) # 80007628 <__printf>
    80006bec:	0000006f          	j	80006bec <system_main+0xd4>

0000000080006bf0 <cpuid>:
    80006bf0:	ff010113          	addi	sp,sp,-16
    80006bf4:	00813423          	sd	s0,8(sp)
    80006bf8:	01010413          	addi	s0,sp,16
    80006bfc:	00020513          	mv	a0,tp
    80006c00:	00813403          	ld	s0,8(sp)
    80006c04:	0005051b          	sext.w	a0,a0
    80006c08:	01010113          	addi	sp,sp,16
    80006c0c:	00008067          	ret

0000000080006c10 <mycpu>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813423          	sd	s0,8(sp)
    80006c18:	01010413          	addi	s0,sp,16
    80006c1c:	00020793          	mv	a5,tp
    80006c20:	00813403          	ld	s0,8(sp)
    80006c24:	0007879b          	sext.w	a5,a5
    80006c28:	00779793          	slli	a5,a5,0x7
    80006c2c:	00006517          	auipc	a0,0x6
    80006c30:	ea450513          	addi	a0,a0,-348 # 8000cad0 <cpus>
    80006c34:	00f50533          	add	a0,a0,a5
    80006c38:	01010113          	addi	sp,sp,16
    80006c3c:	00008067          	ret

0000000080006c40 <userinit>:
    80006c40:	ff010113          	addi	sp,sp,-16
    80006c44:	00813423          	sd	s0,8(sp)
    80006c48:	01010413          	addi	s0,sp,16
    80006c4c:	00813403          	ld	s0,8(sp)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	ffffb317          	auipc	t1,0xffffb
    80006c58:	c1830067          	jr	-1000(t1) # 8000186c <main>

0000000080006c5c <either_copyout>:
    80006c5c:	ff010113          	addi	sp,sp,-16
    80006c60:	00813023          	sd	s0,0(sp)
    80006c64:	00113423          	sd	ra,8(sp)
    80006c68:	01010413          	addi	s0,sp,16
    80006c6c:	02051663          	bnez	a0,80006c98 <either_copyout+0x3c>
    80006c70:	00058513          	mv	a0,a1
    80006c74:	00060593          	mv	a1,a2
    80006c78:	0006861b          	sext.w	a2,a3
    80006c7c:	00002097          	auipc	ra,0x2
    80006c80:	c58080e7          	jalr	-936(ra) # 800088d4 <__memmove>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00000513          	li	a0,0
    80006c90:	01010113          	addi	sp,sp,16
    80006c94:	00008067          	ret
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	88050513          	addi	a0,a0,-1920 # 80009518 <CONSOLE_STATUS+0x508>
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	92c080e7          	jalr	-1748(ra) # 800075cc <panic>

0000000080006ca8 <either_copyin>:
    80006ca8:	ff010113          	addi	sp,sp,-16
    80006cac:	00813023          	sd	s0,0(sp)
    80006cb0:	00113423          	sd	ra,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	02059463          	bnez	a1,80006ce0 <either_copyin+0x38>
    80006cbc:	00060593          	mv	a1,a2
    80006cc0:	0006861b          	sext.w	a2,a3
    80006cc4:	00002097          	auipc	ra,0x2
    80006cc8:	c10080e7          	jalr	-1008(ra) # 800088d4 <__memmove>
    80006ccc:	00813083          	ld	ra,8(sp)
    80006cd0:	00013403          	ld	s0,0(sp)
    80006cd4:	00000513          	li	a0,0
    80006cd8:	01010113          	addi	sp,sp,16
    80006cdc:	00008067          	ret
    80006ce0:	00003517          	auipc	a0,0x3
    80006ce4:	86050513          	addi	a0,a0,-1952 # 80009540 <CONSOLE_STATUS+0x530>
    80006ce8:	00001097          	auipc	ra,0x1
    80006cec:	8e4080e7          	jalr	-1820(ra) # 800075cc <panic>

0000000080006cf0 <trapinit>:
    80006cf0:	ff010113          	addi	sp,sp,-16
    80006cf4:	00813423          	sd	s0,8(sp)
    80006cf8:	01010413          	addi	s0,sp,16
    80006cfc:	00813403          	ld	s0,8(sp)
    80006d00:	00003597          	auipc	a1,0x3
    80006d04:	86858593          	addi	a1,a1,-1944 # 80009568 <CONSOLE_STATUS+0x558>
    80006d08:	00006517          	auipc	a0,0x6
    80006d0c:	e4850513          	addi	a0,a0,-440 # 8000cb50 <tickslock>
    80006d10:	01010113          	addi	sp,sp,16
    80006d14:	00001317          	auipc	t1,0x1
    80006d18:	5c430067          	jr	1476(t1) # 800082d8 <initlock>

0000000080006d1c <trapinithart>:
    80006d1c:	ff010113          	addi	sp,sp,-16
    80006d20:	00813423          	sd	s0,8(sp)
    80006d24:	01010413          	addi	s0,sp,16
    80006d28:	00000797          	auipc	a5,0x0
    80006d2c:	2f878793          	addi	a5,a5,760 # 80007020 <kernelvec>
    80006d30:	10579073          	csrw	stvec,a5
    80006d34:	00813403          	ld	s0,8(sp)
    80006d38:	01010113          	addi	sp,sp,16
    80006d3c:	00008067          	ret

0000000080006d40 <usertrap>:
    80006d40:	ff010113          	addi	sp,sp,-16
    80006d44:	00813423          	sd	s0,8(sp)
    80006d48:	01010413          	addi	s0,sp,16
    80006d4c:	00813403          	ld	s0,8(sp)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret

0000000080006d58 <usertrapret>:
    80006d58:	ff010113          	addi	sp,sp,-16
    80006d5c:	00813423          	sd	s0,8(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00813403          	ld	s0,8(sp)
    80006d68:	01010113          	addi	sp,sp,16
    80006d6c:	00008067          	ret

0000000080006d70 <kerneltrap>:
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00113c23          	sd	ra,24(sp)
    80006d7c:	00913423          	sd	s1,8(sp)
    80006d80:	02010413          	addi	s0,sp,32
    80006d84:	142025f3          	csrr	a1,scause
    80006d88:	100027f3          	csrr	a5,sstatus
    80006d8c:	0027f793          	andi	a5,a5,2
    80006d90:	10079c63          	bnez	a5,80006ea8 <kerneltrap+0x138>
    80006d94:	142027f3          	csrr	a5,scause
    80006d98:	0207ce63          	bltz	a5,80006dd4 <kerneltrap+0x64>
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	81450513          	addi	a0,a0,-2028 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	884080e7          	jalr	-1916(ra) # 80007628 <__printf>
    80006dac:	141025f3          	csrr	a1,sepc
    80006db0:	14302673          	csrr	a2,stval
    80006db4:	00003517          	auipc	a0,0x3
    80006db8:	80c50513          	addi	a0,a0,-2036 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	86c080e7          	jalr	-1940(ra) # 80007628 <__printf>
    80006dc4:	00003517          	auipc	a0,0x3
    80006dc8:	81450513          	addi	a0,a0,-2028 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006dcc:	00001097          	auipc	ra,0x1
    80006dd0:	800080e7          	jalr	-2048(ra) # 800075cc <panic>
    80006dd4:	0ff7f713          	andi	a4,a5,255
    80006dd8:	00900693          	li	a3,9
    80006ddc:	04d70063          	beq	a4,a3,80006e1c <kerneltrap+0xac>
    80006de0:	fff00713          	li	a4,-1
    80006de4:	03f71713          	slli	a4,a4,0x3f
    80006de8:	00170713          	addi	a4,a4,1
    80006dec:	fae798e3          	bne	a5,a4,80006d9c <kerneltrap+0x2c>
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	e00080e7          	jalr	-512(ra) # 80006bf0 <cpuid>
    80006df8:	06050663          	beqz	a0,80006e64 <kerneltrap+0xf4>
    80006dfc:	144027f3          	csrr	a5,sip
    80006e00:	ffd7f793          	andi	a5,a5,-3
    80006e04:	14479073          	csrw	sip,a5
    80006e08:	01813083          	ld	ra,24(sp)
    80006e0c:	01013403          	ld	s0,16(sp)
    80006e10:	00813483          	ld	s1,8(sp)
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00008067          	ret
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	3c8080e7          	jalr	968(ra) # 800071e4 <plic_claim>
    80006e24:	00a00793          	li	a5,10
    80006e28:	00050493          	mv	s1,a0
    80006e2c:	06f50863          	beq	a0,a5,80006e9c <kerneltrap+0x12c>
    80006e30:	fc050ce3          	beqz	a0,80006e08 <kerneltrap+0x98>
    80006e34:	00050593          	mv	a1,a0
    80006e38:	00002517          	auipc	a0,0x2
    80006e3c:	75850513          	addi	a0,a0,1880 # 80009590 <CONSOLE_STATUS+0x580>
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	7e8080e7          	jalr	2024(ra) # 80007628 <__printf>
    80006e48:	01013403          	ld	s0,16(sp)
    80006e4c:	01813083          	ld	ra,24(sp)
    80006e50:	00048513          	mv	a0,s1
    80006e54:	00813483          	ld	s1,8(sp)
    80006e58:	02010113          	addi	sp,sp,32
    80006e5c:	00000317          	auipc	t1,0x0
    80006e60:	3c030067          	jr	960(t1) # 8000721c <plic_complete>
    80006e64:	00006517          	auipc	a0,0x6
    80006e68:	cec50513          	addi	a0,a0,-788 # 8000cb50 <tickslock>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	490080e7          	jalr	1168(ra) # 800082fc <acquire>
    80006e74:	00005717          	auipc	a4,0x5
    80006e78:	b6070713          	addi	a4,a4,-1184 # 8000b9d4 <ticks>
    80006e7c:	00072783          	lw	a5,0(a4)
    80006e80:	00006517          	auipc	a0,0x6
    80006e84:	cd050513          	addi	a0,a0,-816 # 8000cb50 <tickslock>
    80006e88:	0017879b          	addiw	a5,a5,1
    80006e8c:	00f72023          	sw	a5,0(a4)
    80006e90:	00001097          	auipc	ra,0x1
    80006e94:	538080e7          	jalr	1336(ra) # 800083c8 <release>
    80006e98:	f65ff06f          	j	80006dfc <kerneltrap+0x8c>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	094080e7          	jalr	148(ra) # 80007f30 <uartintr>
    80006ea4:	fa5ff06f          	j	80006e48 <kerneltrap+0xd8>
    80006ea8:	00002517          	auipc	a0,0x2
    80006eac:	6c850513          	addi	a0,a0,1736 # 80009570 <CONSOLE_STATUS+0x560>
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	71c080e7          	jalr	1820(ra) # 800075cc <panic>

0000000080006eb8 <clockintr>:
    80006eb8:	fe010113          	addi	sp,sp,-32
    80006ebc:	00813823          	sd	s0,16(sp)
    80006ec0:	00913423          	sd	s1,8(sp)
    80006ec4:	00113c23          	sd	ra,24(sp)
    80006ec8:	02010413          	addi	s0,sp,32
    80006ecc:	00006497          	auipc	s1,0x6
    80006ed0:	c8448493          	addi	s1,s1,-892 # 8000cb50 <tickslock>
    80006ed4:	00048513          	mv	a0,s1
    80006ed8:	00001097          	auipc	ra,0x1
    80006edc:	424080e7          	jalr	1060(ra) # 800082fc <acquire>
    80006ee0:	00005717          	auipc	a4,0x5
    80006ee4:	af470713          	addi	a4,a4,-1292 # 8000b9d4 <ticks>
    80006ee8:	00072783          	lw	a5,0(a4)
    80006eec:	01013403          	ld	s0,16(sp)
    80006ef0:	01813083          	ld	ra,24(sp)
    80006ef4:	00048513          	mv	a0,s1
    80006ef8:	0017879b          	addiw	a5,a5,1
    80006efc:	00813483          	ld	s1,8(sp)
    80006f00:	00f72023          	sw	a5,0(a4)
    80006f04:	02010113          	addi	sp,sp,32
    80006f08:	00001317          	auipc	t1,0x1
    80006f0c:	4c030067          	jr	1216(t1) # 800083c8 <release>

0000000080006f10 <devintr>:
    80006f10:	142027f3          	csrr	a5,scause
    80006f14:	00000513          	li	a0,0
    80006f18:	0007c463          	bltz	a5,80006f20 <devintr+0x10>
    80006f1c:	00008067          	ret
    80006f20:	fe010113          	addi	sp,sp,-32
    80006f24:	00813823          	sd	s0,16(sp)
    80006f28:	00113c23          	sd	ra,24(sp)
    80006f2c:	00913423          	sd	s1,8(sp)
    80006f30:	02010413          	addi	s0,sp,32
    80006f34:	0ff7f713          	andi	a4,a5,255
    80006f38:	00900693          	li	a3,9
    80006f3c:	04d70c63          	beq	a4,a3,80006f94 <devintr+0x84>
    80006f40:	fff00713          	li	a4,-1
    80006f44:	03f71713          	slli	a4,a4,0x3f
    80006f48:	00170713          	addi	a4,a4,1
    80006f4c:	00e78c63          	beq	a5,a4,80006f64 <devintr+0x54>
    80006f50:	01813083          	ld	ra,24(sp)
    80006f54:	01013403          	ld	s0,16(sp)
    80006f58:	00813483          	ld	s1,8(sp)
    80006f5c:	02010113          	addi	sp,sp,32
    80006f60:	00008067          	ret
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	c8c080e7          	jalr	-884(ra) # 80006bf0 <cpuid>
    80006f6c:	06050663          	beqz	a0,80006fd8 <devintr+0xc8>
    80006f70:	144027f3          	csrr	a5,sip
    80006f74:	ffd7f793          	andi	a5,a5,-3
    80006f78:	14479073          	csrw	sip,a5
    80006f7c:	01813083          	ld	ra,24(sp)
    80006f80:	01013403          	ld	s0,16(sp)
    80006f84:	00813483          	ld	s1,8(sp)
    80006f88:	00200513          	li	a0,2
    80006f8c:	02010113          	addi	sp,sp,32
    80006f90:	00008067          	ret
    80006f94:	00000097          	auipc	ra,0x0
    80006f98:	250080e7          	jalr	592(ra) # 800071e4 <plic_claim>
    80006f9c:	00a00793          	li	a5,10
    80006fa0:	00050493          	mv	s1,a0
    80006fa4:	06f50663          	beq	a0,a5,80007010 <devintr+0x100>
    80006fa8:	00100513          	li	a0,1
    80006fac:	fa0482e3          	beqz	s1,80006f50 <devintr+0x40>
    80006fb0:	00048593          	mv	a1,s1
    80006fb4:	00002517          	auipc	a0,0x2
    80006fb8:	5dc50513          	addi	a0,a0,1500 # 80009590 <CONSOLE_STATUS+0x580>
    80006fbc:	00000097          	auipc	ra,0x0
    80006fc0:	66c080e7          	jalr	1644(ra) # 80007628 <__printf>
    80006fc4:	00048513          	mv	a0,s1
    80006fc8:	00000097          	auipc	ra,0x0
    80006fcc:	254080e7          	jalr	596(ra) # 8000721c <plic_complete>
    80006fd0:	00100513          	li	a0,1
    80006fd4:	f7dff06f          	j	80006f50 <devintr+0x40>
    80006fd8:	00006517          	auipc	a0,0x6
    80006fdc:	b7850513          	addi	a0,a0,-1160 # 8000cb50 <tickslock>
    80006fe0:	00001097          	auipc	ra,0x1
    80006fe4:	31c080e7          	jalr	796(ra) # 800082fc <acquire>
    80006fe8:	00005717          	auipc	a4,0x5
    80006fec:	9ec70713          	addi	a4,a4,-1556 # 8000b9d4 <ticks>
    80006ff0:	00072783          	lw	a5,0(a4)
    80006ff4:	00006517          	auipc	a0,0x6
    80006ff8:	b5c50513          	addi	a0,a0,-1188 # 8000cb50 <tickslock>
    80006ffc:	0017879b          	addiw	a5,a5,1
    80007000:	00f72023          	sw	a5,0(a4)
    80007004:	00001097          	auipc	ra,0x1
    80007008:	3c4080e7          	jalr	964(ra) # 800083c8 <release>
    8000700c:	f65ff06f          	j	80006f70 <devintr+0x60>
    80007010:	00001097          	auipc	ra,0x1
    80007014:	f20080e7          	jalr	-224(ra) # 80007f30 <uartintr>
    80007018:	fadff06f          	j	80006fc4 <devintr+0xb4>
    8000701c:	0000                	unimp
	...

0000000080007020 <kernelvec>:
    80007020:	f0010113          	addi	sp,sp,-256
    80007024:	00113023          	sd	ra,0(sp)
    80007028:	00213423          	sd	sp,8(sp)
    8000702c:	00313823          	sd	gp,16(sp)
    80007030:	00413c23          	sd	tp,24(sp)
    80007034:	02513023          	sd	t0,32(sp)
    80007038:	02613423          	sd	t1,40(sp)
    8000703c:	02713823          	sd	t2,48(sp)
    80007040:	02813c23          	sd	s0,56(sp)
    80007044:	04913023          	sd	s1,64(sp)
    80007048:	04a13423          	sd	a0,72(sp)
    8000704c:	04b13823          	sd	a1,80(sp)
    80007050:	04c13c23          	sd	a2,88(sp)
    80007054:	06d13023          	sd	a3,96(sp)
    80007058:	06e13423          	sd	a4,104(sp)
    8000705c:	06f13823          	sd	a5,112(sp)
    80007060:	07013c23          	sd	a6,120(sp)
    80007064:	09113023          	sd	a7,128(sp)
    80007068:	09213423          	sd	s2,136(sp)
    8000706c:	09313823          	sd	s3,144(sp)
    80007070:	09413c23          	sd	s4,152(sp)
    80007074:	0b513023          	sd	s5,160(sp)
    80007078:	0b613423          	sd	s6,168(sp)
    8000707c:	0b713823          	sd	s7,176(sp)
    80007080:	0b813c23          	sd	s8,184(sp)
    80007084:	0d913023          	sd	s9,192(sp)
    80007088:	0da13423          	sd	s10,200(sp)
    8000708c:	0db13823          	sd	s11,208(sp)
    80007090:	0dc13c23          	sd	t3,216(sp)
    80007094:	0fd13023          	sd	t4,224(sp)
    80007098:	0fe13423          	sd	t5,232(sp)
    8000709c:	0ff13823          	sd	t6,240(sp)
    800070a0:	cd1ff0ef          	jal	ra,80006d70 <kerneltrap>
    800070a4:	00013083          	ld	ra,0(sp)
    800070a8:	00813103          	ld	sp,8(sp)
    800070ac:	01013183          	ld	gp,16(sp)
    800070b0:	02013283          	ld	t0,32(sp)
    800070b4:	02813303          	ld	t1,40(sp)
    800070b8:	03013383          	ld	t2,48(sp)
    800070bc:	03813403          	ld	s0,56(sp)
    800070c0:	04013483          	ld	s1,64(sp)
    800070c4:	04813503          	ld	a0,72(sp)
    800070c8:	05013583          	ld	a1,80(sp)
    800070cc:	05813603          	ld	a2,88(sp)
    800070d0:	06013683          	ld	a3,96(sp)
    800070d4:	06813703          	ld	a4,104(sp)
    800070d8:	07013783          	ld	a5,112(sp)
    800070dc:	07813803          	ld	a6,120(sp)
    800070e0:	08013883          	ld	a7,128(sp)
    800070e4:	08813903          	ld	s2,136(sp)
    800070e8:	09013983          	ld	s3,144(sp)
    800070ec:	09813a03          	ld	s4,152(sp)
    800070f0:	0a013a83          	ld	s5,160(sp)
    800070f4:	0a813b03          	ld	s6,168(sp)
    800070f8:	0b013b83          	ld	s7,176(sp)
    800070fc:	0b813c03          	ld	s8,184(sp)
    80007100:	0c013c83          	ld	s9,192(sp)
    80007104:	0c813d03          	ld	s10,200(sp)
    80007108:	0d013d83          	ld	s11,208(sp)
    8000710c:	0d813e03          	ld	t3,216(sp)
    80007110:	0e013e83          	ld	t4,224(sp)
    80007114:	0e813f03          	ld	t5,232(sp)
    80007118:	0f013f83          	ld	t6,240(sp)
    8000711c:	10010113          	addi	sp,sp,256
    80007120:	10200073          	sret
    80007124:	00000013          	nop
    80007128:	00000013          	nop
    8000712c:	00000013          	nop

0000000080007130 <timervec>:
    80007130:	34051573          	csrrw	a0,mscratch,a0
    80007134:	00b53023          	sd	a1,0(a0)
    80007138:	00c53423          	sd	a2,8(a0)
    8000713c:	00d53823          	sd	a3,16(a0)
    80007140:	01853583          	ld	a1,24(a0)
    80007144:	02053603          	ld	a2,32(a0)
    80007148:	0005b683          	ld	a3,0(a1)
    8000714c:	00c686b3          	add	a3,a3,a2
    80007150:	00d5b023          	sd	a3,0(a1)
    80007154:	00200593          	li	a1,2
    80007158:	14459073          	csrw	sip,a1
    8000715c:	01053683          	ld	a3,16(a0)
    80007160:	00853603          	ld	a2,8(a0)
    80007164:	00053583          	ld	a1,0(a0)
    80007168:	34051573          	csrrw	a0,mscratch,a0
    8000716c:	30200073          	mret

0000000080007170 <plicinit>:
    80007170:	ff010113          	addi	sp,sp,-16
    80007174:	00813423          	sd	s0,8(sp)
    80007178:	01010413          	addi	s0,sp,16
    8000717c:	00813403          	ld	s0,8(sp)
    80007180:	0c0007b7          	lui	a5,0xc000
    80007184:	00100713          	li	a4,1
    80007188:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000718c:	00e7a223          	sw	a4,4(a5)
    80007190:	01010113          	addi	sp,sp,16
    80007194:	00008067          	ret

0000000080007198 <plicinithart>:
    80007198:	ff010113          	addi	sp,sp,-16
    8000719c:	00813023          	sd	s0,0(sp)
    800071a0:	00113423          	sd	ra,8(sp)
    800071a4:	01010413          	addi	s0,sp,16
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	a48080e7          	jalr	-1464(ra) # 80006bf0 <cpuid>
    800071b0:	0085171b          	slliw	a4,a0,0x8
    800071b4:	0c0027b7          	lui	a5,0xc002
    800071b8:	00e787b3          	add	a5,a5,a4
    800071bc:	40200713          	li	a4,1026
    800071c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800071c4:	00813083          	ld	ra,8(sp)
    800071c8:	00013403          	ld	s0,0(sp)
    800071cc:	00d5151b          	slliw	a0,a0,0xd
    800071d0:	0c2017b7          	lui	a5,0xc201
    800071d4:	00a78533          	add	a0,a5,a0
    800071d8:	00052023          	sw	zero,0(a0)
    800071dc:	01010113          	addi	sp,sp,16
    800071e0:	00008067          	ret

00000000800071e4 <plic_claim>:
    800071e4:	ff010113          	addi	sp,sp,-16
    800071e8:	00813023          	sd	s0,0(sp)
    800071ec:	00113423          	sd	ra,8(sp)
    800071f0:	01010413          	addi	s0,sp,16
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	9fc080e7          	jalr	-1540(ra) # 80006bf0 <cpuid>
    800071fc:	00813083          	ld	ra,8(sp)
    80007200:	00013403          	ld	s0,0(sp)
    80007204:	00d5151b          	slliw	a0,a0,0xd
    80007208:	0c2017b7          	lui	a5,0xc201
    8000720c:	00a78533          	add	a0,a5,a0
    80007210:	00452503          	lw	a0,4(a0)
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00008067          	ret

000000008000721c <plic_complete>:
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	00113c23          	sd	ra,24(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	00050493          	mv	s1,a0
    80007234:	00000097          	auipc	ra,0x0
    80007238:	9bc080e7          	jalr	-1604(ra) # 80006bf0 <cpuid>
    8000723c:	01813083          	ld	ra,24(sp)
    80007240:	01013403          	ld	s0,16(sp)
    80007244:	00d5179b          	slliw	a5,a0,0xd
    80007248:	0c201737          	lui	a4,0xc201
    8000724c:	00f707b3          	add	a5,a4,a5
    80007250:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007254:	00813483          	ld	s1,8(sp)
    80007258:	02010113          	addi	sp,sp,32
    8000725c:	00008067          	ret

0000000080007260 <consolewrite>:
    80007260:	fb010113          	addi	sp,sp,-80
    80007264:	04813023          	sd	s0,64(sp)
    80007268:	04113423          	sd	ra,72(sp)
    8000726c:	02913c23          	sd	s1,56(sp)
    80007270:	03213823          	sd	s2,48(sp)
    80007274:	03313423          	sd	s3,40(sp)
    80007278:	03413023          	sd	s4,32(sp)
    8000727c:	01513c23          	sd	s5,24(sp)
    80007280:	05010413          	addi	s0,sp,80
    80007284:	06c05c63          	blez	a2,800072fc <consolewrite+0x9c>
    80007288:	00060993          	mv	s3,a2
    8000728c:	00050a13          	mv	s4,a0
    80007290:	00058493          	mv	s1,a1
    80007294:	00000913          	li	s2,0
    80007298:	fff00a93          	li	s5,-1
    8000729c:	01c0006f          	j	800072b8 <consolewrite+0x58>
    800072a0:	fbf44503          	lbu	a0,-65(s0)
    800072a4:	0019091b          	addiw	s2,s2,1
    800072a8:	00148493          	addi	s1,s1,1
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	a9c080e7          	jalr	-1380(ra) # 80007d48 <uartputc>
    800072b4:	03298063          	beq	s3,s2,800072d4 <consolewrite+0x74>
    800072b8:	00048613          	mv	a2,s1
    800072bc:	00100693          	li	a3,1
    800072c0:	000a0593          	mv	a1,s4
    800072c4:	fbf40513          	addi	a0,s0,-65
    800072c8:	00000097          	auipc	ra,0x0
    800072cc:	9e0080e7          	jalr	-1568(ra) # 80006ca8 <either_copyin>
    800072d0:	fd5518e3          	bne	a0,s5,800072a0 <consolewrite+0x40>
    800072d4:	04813083          	ld	ra,72(sp)
    800072d8:	04013403          	ld	s0,64(sp)
    800072dc:	03813483          	ld	s1,56(sp)
    800072e0:	02813983          	ld	s3,40(sp)
    800072e4:	02013a03          	ld	s4,32(sp)
    800072e8:	01813a83          	ld	s5,24(sp)
    800072ec:	00090513          	mv	a0,s2
    800072f0:	03013903          	ld	s2,48(sp)
    800072f4:	05010113          	addi	sp,sp,80
    800072f8:	00008067          	ret
    800072fc:	00000913          	li	s2,0
    80007300:	fd5ff06f          	j	800072d4 <consolewrite+0x74>

0000000080007304 <consoleread>:
    80007304:	f9010113          	addi	sp,sp,-112
    80007308:	06813023          	sd	s0,96(sp)
    8000730c:	04913c23          	sd	s1,88(sp)
    80007310:	05213823          	sd	s2,80(sp)
    80007314:	05313423          	sd	s3,72(sp)
    80007318:	05413023          	sd	s4,64(sp)
    8000731c:	03513c23          	sd	s5,56(sp)
    80007320:	03613823          	sd	s6,48(sp)
    80007324:	03713423          	sd	s7,40(sp)
    80007328:	03813023          	sd	s8,32(sp)
    8000732c:	06113423          	sd	ra,104(sp)
    80007330:	01913c23          	sd	s9,24(sp)
    80007334:	07010413          	addi	s0,sp,112
    80007338:	00060b93          	mv	s7,a2
    8000733c:	00050913          	mv	s2,a0
    80007340:	00058c13          	mv	s8,a1
    80007344:	00060b1b          	sext.w	s6,a2
    80007348:	00006497          	auipc	s1,0x6
    8000734c:	83048493          	addi	s1,s1,-2000 # 8000cb78 <cons>
    80007350:	00400993          	li	s3,4
    80007354:	fff00a13          	li	s4,-1
    80007358:	00a00a93          	li	s5,10
    8000735c:	05705e63          	blez	s7,800073b8 <consoleread+0xb4>
    80007360:	09c4a703          	lw	a4,156(s1)
    80007364:	0984a783          	lw	a5,152(s1)
    80007368:	0007071b          	sext.w	a4,a4
    8000736c:	08e78463          	beq	a5,a4,800073f4 <consoleread+0xf0>
    80007370:	07f7f713          	andi	a4,a5,127
    80007374:	00e48733          	add	a4,s1,a4
    80007378:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000737c:	0017869b          	addiw	a3,a5,1
    80007380:	08d4ac23          	sw	a3,152(s1)
    80007384:	00070c9b          	sext.w	s9,a4
    80007388:	0b370663          	beq	a4,s3,80007434 <consoleread+0x130>
    8000738c:	00100693          	li	a3,1
    80007390:	f9f40613          	addi	a2,s0,-97
    80007394:	000c0593          	mv	a1,s8
    80007398:	00090513          	mv	a0,s2
    8000739c:	f8e40fa3          	sb	a4,-97(s0)
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	8bc080e7          	jalr	-1860(ra) # 80006c5c <either_copyout>
    800073a8:	01450863          	beq	a0,s4,800073b8 <consoleread+0xb4>
    800073ac:	001c0c13          	addi	s8,s8,1
    800073b0:	fffb8b9b          	addiw	s7,s7,-1
    800073b4:	fb5c94e3          	bne	s9,s5,8000735c <consoleread+0x58>
    800073b8:	000b851b          	sext.w	a0,s7
    800073bc:	06813083          	ld	ra,104(sp)
    800073c0:	06013403          	ld	s0,96(sp)
    800073c4:	05813483          	ld	s1,88(sp)
    800073c8:	05013903          	ld	s2,80(sp)
    800073cc:	04813983          	ld	s3,72(sp)
    800073d0:	04013a03          	ld	s4,64(sp)
    800073d4:	03813a83          	ld	s5,56(sp)
    800073d8:	02813b83          	ld	s7,40(sp)
    800073dc:	02013c03          	ld	s8,32(sp)
    800073e0:	01813c83          	ld	s9,24(sp)
    800073e4:	40ab053b          	subw	a0,s6,a0
    800073e8:	03013b03          	ld	s6,48(sp)
    800073ec:	07010113          	addi	sp,sp,112
    800073f0:	00008067          	ret
    800073f4:	00001097          	auipc	ra,0x1
    800073f8:	1d8080e7          	jalr	472(ra) # 800085cc <push_on>
    800073fc:	0984a703          	lw	a4,152(s1)
    80007400:	09c4a783          	lw	a5,156(s1)
    80007404:	0007879b          	sext.w	a5,a5
    80007408:	fef70ce3          	beq	a4,a5,80007400 <consoleread+0xfc>
    8000740c:	00001097          	auipc	ra,0x1
    80007410:	234080e7          	jalr	564(ra) # 80008640 <pop_on>
    80007414:	0984a783          	lw	a5,152(s1)
    80007418:	07f7f713          	andi	a4,a5,127
    8000741c:	00e48733          	add	a4,s1,a4
    80007420:	01874703          	lbu	a4,24(a4)
    80007424:	0017869b          	addiw	a3,a5,1
    80007428:	08d4ac23          	sw	a3,152(s1)
    8000742c:	00070c9b          	sext.w	s9,a4
    80007430:	f5371ee3          	bne	a4,s3,8000738c <consoleread+0x88>
    80007434:	000b851b          	sext.w	a0,s7
    80007438:	f96bf2e3          	bgeu	s7,s6,800073bc <consoleread+0xb8>
    8000743c:	08f4ac23          	sw	a5,152(s1)
    80007440:	f7dff06f          	j	800073bc <consoleread+0xb8>

0000000080007444 <consputc>:
    80007444:	10000793          	li	a5,256
    80007448:	00f50663          	beq	a0,a5,80007454 <consputc+0x10>
    8000744c:	00001317          	auipc	t1,0x1
    80007450:	9f430067          	jr	-1548(t1) # 80007e40 <uartputc_sync>
    80007454:	ff010113          	addi	sp,sp,-16
    80007458:	00113423          	sd	ra,8(sp)
    8000745c:	00813023          	sd	s0,0(sp)
    80007460:	01010413          	addi	s0,sp,16
    80007464:	00800513          	li	a0,8
    80007468:	00001097          	auipc	ra,0x1
    8000746c:	9d8080e7          	jalr	-1576(ra) # 80007e40 <uartputc_sync>
    80007470:	02000513          	li	a0,32
    80007474:	00001097          	auipc	ra,0x1
    80007478:	9cc080e7          	jalr	-1588(ra) # 80007e40 <uartputc_sync>
    8000747c:	00013403          	ld	s0,0(sp)
    80007480:	00813083          	ld	ra,8(sp)
    80007484:	00800513          	li	a0,8
    80007488:	01010113          	addi	sp,sp,16
    8000748c:	00001317          	auipc	t1,0x1
    80007490:	9b430067          	jr	-1612(t1) # 80007e40 <uartputc_sync>

0000000080007494 <consoleintr>:
    80007494:	fe010113          	addi	sp,sp,-32
    80007498:	00813823          	sd	s0,16(sp)
    8000749c:	00913423          	sd	s1,8(sp)
    800074a0:	01213023          	sd	s2,0(sp)
    800074a4:	00113c23          	sd	ra,24(sp)
    800074a8:	02010413          	addi	s0,sp,32
    800074ac:	00005917          	auipc	s2,0x5
    800074b0:	6cc90913          	addi	s2,s2,1740 # 8000cb78 <cons>
    800074b4:	00050493          	mv	s1,a0
    800074b8:	00090513          	mv	a0,s2
    800074bc:	00001097          	auipc	ra,0x1
    800074c0:	e40080e7          	jalr	-448(ra) # 800082fc <acquire>
    800074c4:	02048c63          	beqz	s1,800074fc <consoleintr+0x68>
    800074c8:	0a092783          	lw	a5,160(s2)
    800074cc:	09892703          	lw	a4,152(s2)
    800074d0:	07f00693          	li	a3,127
    800074d4:	40e7873b          	subw	a4,a5,a4
    800074d8:	02e6e263          	bltu	a3,a4,800074fc <consoleintr+0x68>
    800074dc:	00d00713          	li	a4,13
    800074e0:	04e48063          	beq	s1,a4,80007520 <consoleintr+0x8c>
    800074e4:	07f7f713          	andi	a4,a5,127
    800074e8:	00e90733          	add	a4,s2,a4
    800074ec:	0017879b          	addiw	a5,a5,1
    800074f0:	0af92023          	sw	a5,160(s2)
    800074f4:	00970c23          	sb	s1,24(a4)
    800074f8:	08f92e23          	sw	a5,156(s2)
    800074fc:	01013403          	ld	s0,16(sp)
    80007500:	01813083          	ld	ra,24(sp)
    80007504:	00813483          	ld	s1,8(sp)
    80007508:	00013903          	ld	s2,0(sp)
    8000750c:	00005517          	auipc	a0,0x5
    80007510:	66c50513          	addi	a0,a0,1644 # 8000cb78 <cons>
    80007514:	02010113          	addi	sp,sp,32
    80007518:	00001317          	auipc	t1,0x1
    8000751c:	eb030067          	jr	-336(t1) # 800083c8 <release>
    80007520:	00a00493          	li	s1,10
    80007524:	fc1ff06f          	j	800074e4 <consoleintr+0x50>

0000000080007528 <consoleinit>:
    80007528:	fe010113          	addi	sp,sp,-32
    8000752c:	00113c23          	sd	ra,24(sp)
    80007530:	00813823          	sd	s0,16(sp)
    80007534:	00913423          	sd	s1,8(sp)
    80007538:	02010413          	addi	s0,sp,32
    8000753c:	00005497          	auipc	s1,0x5
    80007540:	63c48493          	addi	s1,s1,1596 # 8000cb78 <cons>
    80007544:	00048513          	mv	a0,s1
    80007548:	00002597          	auipc	a1,0x2
    8000754c:	0a058593          	addi	a1,a1,160 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007550:	00001097          	auipc	ra,0x1
    80007554:	d88080e7          	jalr	-632(ra) # 800082d8 <initlock>
    80007558:	00000097          	auipc	ra,0x0
    8000755c:	7ac080e7          	jalr	1964(ra) # 80007d04 <uartinit>
    80007560:	01813083          	ld	ra,24(sp)
    80007564:	01013403          	ld	s0,16(sp)
    80007568:	00000797          	auipc	a5,0x0
    8000756c:	d9c78793          	addi	a5,a5,-612 # 80007304 <consoleread>
    80007570:	0af4bc23          	sd	a5,184(s1)
    80007574:	00000797          	auipc	a5,0x0
    80007578:	cec78793          	addi	a5,a5,-788 # 80007260 <consolewrite>
    8000757c:	0cf4b023          	sd	a5,192(s1)
    80007580:	00813483          	ld	s1,8(sp)
    80007584:	02010113          	addi	sp,sp,32
    80007588:	00008067          	ret

000000008000758c <console_read>:
    8000758c:	ff010113          	addi	sp,sp,-16
    80007590:	00813423          	sd	s0,8(sp)
    80007594:	01010413          	addi	s0,sp,16
    80007598:	00813403          	ld	s0,8(sp)
    8000759c:	00005317          	auipc	t1,0x5
    800075a0:	69433303          	ld	t1,1684(t1) # 8000cc30 <devsw+0x10>
    800075a4:	01010113          	addi	sp,sp,16
    800075a8:	00030067          	jr	t1

00000000800075ac <console_write>:
    800075ac:	ff010113          	addi	sp,sp,-16
    800075b0:	00813423          	sd	s0,8(sp)
    800075b4:	01010413          	addi	s0,sp,16
    800075b8:	00813403          	ld	s0,8(sp)
    800075bc:	00005317          	auipc	t1,0x5
    800075c0:	67c33303          	ld	t1,1660(t1) # 8000cc38 <devsw+0x18>
    800075c4:	01010113          	addi	sp,sp,16
    800075c8:	00030067          	jr	t1

00000000800075cc <panic>:
    800075cc:	fe010113          	addi	sp,sp,-32
    800075d0:	00113c23          	sd	ra,24(sp)
    800075d4:	00813823          	sd	s0,16(sp)
    800075d8:	00913423          	sd	s1,8(sp)
    800075dc:	02010413          	addi	s0,sp,32
    800075e0:	00050493          	mv	s1,a0
    800075e4:	00002517          	auipc	a0,0x2
    800075e8:	00c50513          	addi	a0,a0,12 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800075ec:	00005797          	auipc	a5,0x5
    800075f0:	6e07a623          	sw	zero,1772(a5) # 8000ccd8 <pr+0x18>
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	034080e7          	jalr	52(ra) # 80007628 <__printf>
    800075fc:	00048513          	mv	a0,s1
    80007600:	00000097          	auipc	ra,0x0
    80007604:	028080e7          	jalr	40(ra) # 80007628 <__printf>
    80007608:	00002517          	auipc	a0,0x2
    8000760c:	d7050513          	addi	a0,a0,-656 # 80009378 <CONSOLE_STATUS+0x368>
    80007610:	00000097          	auipc	ra,0x0
    80007614:	018080e7          	jalr	24(ra) # 80007628 <__printf>
    80007618:	00100793          	li	a5,1
    8000761c:	00004717          	auipc	a4,0x4
    80007620:	3af72e23          	sw	a5,956(a4) # 8000b9d8 <panicked>
    80007624:	0000006f          	j	80007624 <panic+0x58>

0000000080007628 <__printf>:
    80007628:	f3010113          	addi	sp,sp,-208
    8000762c:	08813023          	sd	s0,128(sp)
    80007630:	07313423          	sd	s3,104(sp)
    80007634:	09010413          	addi	s0,sp,144
    80007638:	05813023          	sd	s8,64(sp)
    8000763c:	08113423          	sd	ra,136(sp)
    80007640:	06913c23          	sd	s1,120(sp)
    80007644:	07213823          	sd	s2,112(sp)
    80007648:	07413023          	sd	s4,96(sp)
    8000764c:	05513c23          	sd	s5,88(sp)
    80007650:	05613823          	sd	s6,80(sp)
    80007654:	05713423          	sd	s7,72(sp)
    80007658:	03913c23          	sd	s9,56(sp)
    8000765c:	03a13823          	sd	s10,48(sp)
    80007660:	03b13423          	sd	s11,40(sp)
    80007664:	00005317          	auipc	t1,0x5
    80007668:	65c30313          	addi	t1,t1,1628 # 8000ccc0 <pr>
    8000766c:	01832c03          	lw	s8,24(t1)
    80007670:	00b43423          	sd	a1,8(s0)
    80007674:	00c43823          	sd	a2,16(s0)
    80007678:	00d43c23          	sd	a3,24(s0)
    8000767c:	02e43023          	sd	a4,32(s0)
    80007680:	02f43423          	sd	a5,40(s0)
    80007684:	03043823          	sd	a6,48(s0)
    80007688:	03143c23          	sd	a7,56(s0)
    8000768c:	00050993          	mv	s3,a0
    80007690:	4a0c1663          	bnez	s8,80007b3c <__printf+0x514>
    80007694:	60098c63          	beqz	s3,80007cac <__printf+0x684>
    80007698:	0009c503          	lbu	a0,0(s3)
    8000769c:	00840793          	addi	a5,s0,8
    800076a0:	f6f43c23          	sd	a5,-136(s0)
    800076a4:	00000493          	li	s1,0
    800076a8:	22050063          	beqz	a0,800078c8 <__printf+0x2a0>
    800076ac:	00002a37          	lui	s4,0x2
    800076b0:	00018ab7          	lui	s5,0x18
    800076b4:	000f4b37          	lui	s6,0xf4
    800076b8:	00989bb7          	lui	s7,0x989
    800076bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800076c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800076c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800076c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800076cc:	00148c9b          	addiw	s9,s1,1
    800076d0:	02500793          	li	a5,37
    800076d4:	01998933          	add	s2,s3,s9
    800076d8:	38f51263          	bne	a0,a5,80007a5c <__printf+0x434>
    800076dc:	00094783          	lbu	a5,0(s2)
    800076e0:	00078c9b          	sext.w	s9,a5
    800076e4:	1e078263          	beqz	a5,800078c8 <__printf+0x2a0>
    800076e8:	0024849b          	addiw	s1,s1,2
    800076ec:	07000713          	li	a4,112
    800076f0:	00998933          	add	s2,s3,s1
    800076f4:	38e78a63          	beq	a5,a4,80007a88 <__printf+0x460>
    800076f8:	20f76863          	bltu	a4,a5,80007908 <__printf+0x2e0>
    800076fc:	42a78863          	beq	a5,a0,80007b2c <__printf+0x504>
    80007700:	06400713          	li	a4,100
    80007704:	40e79663          	bne	a5,a4,80007b10 <__printf+0x4e8>
    80007708:	f7843783          	ld	a5,-136(s0)
    8000770c:	0007a603          	lw	a2,0(a5)
    80007710:	00878793          	addi	a5,a5,8
    80007714:	f6f43c23          	sd	a5,-136(s0)
    80007718:	42064a63          	bltz	a2,80007b4c <__printf+0x524>
    8000771c:	00a00713          	li	a4,10
    80007720:	02e677bb          	remuw	a5,a2,a4
    80007724:	00002d97          	auipc	s11,0x2
    80007728:	ef4d8d93          	addi	s11,s11,-268 # 80009618 <digits>
    8000772c:	00900593          	li	a1,9
    80007730:	0006051b          	sext.w	a0,a2
    80007734:	00000c93          	li	s9,0
    80007738:	02079793          	slli	a5,a5,0x20
    8000773c:	0207d793          	srli	a5,a5,0x20
    80007740:	00fd87b3          	add	a5,s11,a5
    80007744:	0007c783          	lbu	a5,0(a5)
    80007748:	02e656bb          	divuw	a3,a2,a4
    8000774c:	f8f40023          	sb	a5,-128(s0)
    80007750:	14c5d863          	bge	a1,a2,800078a0 <__printf+0x278>
    80007754:	06300593          	li	a1,99
    80007758:	00100c93          	li	s9,1
    8000775c:	02e6f7bb          	remuw	a5,a3,a4
    80007760:	02079793          	slli	a5,a5,0x20
    80007764:	0207d793          	srli	a5,a5,0x20
    80007768:	00fd87b3          	add	a5,s11,a5
    8000776c:	0007c783          	lbu	a5,0(a5)
    80007770:	02e6d73b          	divuw	a4,a3,a4
    80007774:	f8f400a3          	sb	a5,-127(s0)
    80007778:	12a5f463          	bgeu	a1,a0,800078a0 <__printf+0x278>
    8000777c:	00a00693          	li	a3,10
    80007780:	00900593          	li	a1,9
    80007784:	02d777bb          	remuw	a5,a4,a3
    80007788:	02079793          	slli	a5,a5,0x20
    8000778c:	0207d793          	srli	a5,a5,0x20
    80007790:	00fd87b3          	add	a5,s11,a5
    80007794:	0007c503          	lbu	a0,0(a5)
    80007798:	02d757bb          	divuw	a5,a4,a3
    8000779c:	f8a40123          	sb	a0,-126(s0)
    800077a0:	48e5f263          	bgeu	a1,a4,80007c24 <__printf+0x5fc>
    800077a4:	06300513          	li	a0,99
    800077a8:	02d7f5bb          	remuw	a1,a5,a3
    800077ac:	02059593          	slli	a1,a1,0x20
    800077b0:	0205d593          	srli	a1,a1,0x20
    800077b4:	00bd85b3          	add	a1,s11,a1
    800077b8:	0005c583          	lbu	a1,0(a1)
    800077bc:	02d7d7bb          	divuw	a5,a5,a3
    800077c0:	f8b401a3          	sb	a1,-125(s0)
    800077c4:	48e57263          	bgeu	a0,a4,80007c48 <__printf+0x620>
    800077c8:	3e700513          	li	a0,999
    800077cc:	02d7f5bb          	remuw	a1,a5,a3
    800077d0:	02059593          	slli	a1,a1,0x20
    800077d4:	0205d593          	srli	a1,a1,0x20
    800077d8:	00bd85b3          	add	a1,s11,a1
    800077dc:	0005c583          	lbu	a1,0(a1)
    800077e0:	02d7d7bb          	divuw	a5,a5,a3
    800077e4:	f8b40223          	sb	a1,-124(s0)
    800077e8:	46e57663          	bgeu	a0,a4,80007c54 <__printf+0x62c>
    800077ec:	02d7f5bb          	remuw	a1,a5,a3
    800077f0:	02059593          	slli	a1,a1,0x20
    800077f4:	0205d593          	srli	a1,a1,0x20
    800077f8:	00bd85b3          	add	a1,s11,a1
    800077fc:	0005c583          	lbu	a1,0(a1)
    80007800:	02d7d7bb          	divuw	a5,a5,a3
    80007804:	f8b402a3          	sb	a1,-123(s0)
    80007808:	46ea7863          	bgeu	s4,a4,80007c78 <__printf+0x650>
    8000780c:	02d7f5bb          	remuw	a1,a5,a3
    80007810:	02059593          	slli	a1,a1,0x20
    80007814:	0205d593          	srli	a1,a1,0x20
    80007818:	00bd85b3          	add	a1,s11,a1
    8000781c:	0005c583          	lbu	a1,0(a1)
    80007820:	02d7d7bb          	divuw	a5,a5,a3
    80007824:	f8b40323          	sb	a1,-122(s0)
    80007828:	3eeaf863          	bgeu	s5,a4,80007c18 <__printf+0x5f0>
    8000782c:	02d7f5bb          	remuw	a1,a5,a3
    80007830:	02059593          	slli	a1,a1,0x20
    80007834:	0205d593          	srli	a1,a1,0x20
    80007838:	00bd85b3          	add	a1,s11,a1
    8000783c:	0005c583          	lbu	a1,0(a1)
    80007840:	02d7d7bb          	divuw	a5,a5,a3
    80007844:	f8b403a3          	sb	a1,-121(s0)
    80007848:	42eb7e63          	bgeu	s6,a4,80007c84 <__printf+0x65c>
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b40423          	sb	a1,-120(s0)
    80007868:	42ebfc63          	bgeu	s7,a4,80007ca0 <__printf+0x678>
    8000786c:	02079793          	slli	a5,a5,0x20
    80007870:	0207d793          	srli	a5,a5,0x20
    80007874:	00fd8db3          	add	s11,s11,a5
    80007878:	000dc703          	lbu	a4,0(s11)
    8000787c:	00a00793          	li	a5,10
    80007880:	00900c93          	li	s9,9
    80007884:	f8e404a3          	sb	a4,-119(s0)
    80007888:	00065c63          	bgez	a2,800078a0 <__printf+0x278>
    8000788c:	f9040713          	addi	a4,s0,-112
    80007890:	00f70733          	add	a4,a4,a5
    80007894:	02d00693          	li	a3,45
    80007898:	fed70823          	sb	a3,-16(a4)
    8000789c:	00078c93          	mv	s9,a5
    800078a0:	f8040793          	addi	a5,s0,-128
    800078a4:	01978cb3          	add	s9,a5,s9
    800078a8:	f7f40d13          	addi	s10,s0,-129
    800078ac:	000cc503          	lbu	a0,0(s9)
    800078b0:	fffc8c93          	addi	s9,s9,-1
    800078b4:	00000097          	auipc	ra,0x0
    800078b8:	b90080e7          	jalr	-1136(ra) # 80007444 <consputc>
    800078bc:	ffac98e3          	bne	s9,s10,800078ac <__printf+0x284>
    800078c0:	00094503          	lbu	a0,0(s2)
    800078c4:	e00514e3          	bnez	a0,800076cc <__printf+0xa4>
    800078c8:	1a0c1663          	bnez	s8,80007a74 <__printf+0x44c>
    800078cc:	08813083          	ld	ra,136(sp)
    800078d0:	08013403          	ld	s0,128(sp)
    800078d4:	07813483          	ld	s1,120(sp)
    800078d8:	07013903          	ld	s2,112(sp)
    800078dc:	06813983          	ld	s3,104(sp)
    800078e0:	06013a03          	ld	s4,96(sp)
    800078e4:	05813a83          	ld	s5,88(sp)
    800078e8:	05013b03          	ld	s6,80(sp)
    800078ec:	04813b83          	ld	s7,72(sp)
    800078f0:	04013c03          	ld	s8,64(sp)
    800078f4:	03813c83          	ld	s9,56(sp)
    800078f8:	03013d03          	ld	s10,48(sp)
    800078fc:	02813d83          	ld	s11,40(sp)
    80007900:	0d010113          	addi	sp,sp,208
    80007904:	00008067          	ret
    80007908:	07300713          	li	a4,115
    8000790c:	1ce78a63          	beq	a5,a4,80007ae0 <__printf+0x4b8>
    80007910:	07800713          	li	a4,120
    80007914:	1ee79e63          	bne	a5,a4,80007b10 <__printf+0x4e8>
    80007918:	f7843783          	ld	a5,-136(s0)
    8000791c:	0007a703          	lw	a4,0(a5)
    80007920:	00878793          	addi	a5,a5,8
    80007924:	f6f43c23          	sd	a5,-136(s0)
    80007928:	28074263          	bltz	a4,80007bac <__printf+0x584>
    8000792c:	00002d97          	auipc	s11,0x2
    80007930:	cecd8d93          	addi	s11,s11,-788 # 80009618 <digits>
    80007934:	00f77793          	andi	a5,a4,15
    80007938:	00fd87b3          	add	a5,s11,a5
    8000793c:	0007c683          	lbu	a3,0(a5)
    80007940:	00f00613          	li	a2,15
    80007944:	0007079b          	sext.w	a5,a4
    80007948:	f8d40023          	sb	a3,-128(s0)
    8000794c:	0047559b          	srliw	a1,a4,0x4
    80007950:	0047569b          	srliw	a3,a4,0x4
    80007954:	00000c93          	li	s9,0
    80007958:	0ee65063          	bge	a2,a4,80007a38 <__printf+0x410>
    8000795c:	00f6f693          	andi	a3,a3,15
    80007960:	00dd86b3          	add	a3,s11,a3
    80007964:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007968:	0087d79b          	srliw	a5,a5,0x8
    8000796c:	00100c93          	li	s9,1
    80007970:	f8d400a3          	sb	a3,-127(s0)
    80007974:	0cb67263          	bgeu	a2,a1,80007a38 <__printf+0x410>
    80007978:	00f7f693          	andi	a3,a5,15
    8000797c:	00dd86b3          	add	a3,s11,a3
    80007980:	0006c583          	lbu	a1,0(a3)
    80007984:	00f00613          	li	a2,15
    80007988:	0047d69b          	srliw	a3,a5,0x4
    8000798c:	f8b40123          	sb	a1,-126(s0)
    80007990:	0047d593          	srli	a1,a5,0x4
    80007994:	28f67e63          	bgeu	a2,a5,80007c30 <__printf+0x608>
    80007998:	00f6f693          	andi	a3,a3,15
    8000799c:	00dd86b3          	add	a3,s11,a3
    800079a0:	0006c503          	lbu	a0,0(a3)
    800079a4:	0087d813          	srli	a6,a5,0x8
    800079a8:	0087d69b          	srliw	a3,a5,0x8
    800079ac:	f8a401a3          	sb	a0,-125(s0)
    800079b0:	28b67663          	bgeu	a2,a1,80007c3c <__printf+0x614>
    800079b4:	00f6f693          	andi	a3,a3,15
    800079b8:	00dd86b3          	add	a3,s11,a3
    800079bc:	0006c583          	lbu	a1,0(a3)
    800079c0:	00c7d513          	srli	a0,a5,0xc
    800079c4:	00c7d69b          	srliw	a3,a5,0xc
    800079c8:	f8b40223          	sb	a1,-124(s0)
    800079cc:	29067a63          	bgeu	a2,a6,80007c60 <__printf+0x638>
    800079d0:	00f6f693          	andi	a3,a3,15
    800079d4:	00dd86b3          	add	a3,s11,a3
    800079d8:	0006c583          	lbu	a1,0(a3)
    800079dc:	0107d813          	srli	a6,a5,0x10
    800079e0:	0107d69b          	srliw	a3,a5,0x10
    800079e4:	f8b402a3          	sb	a1,-123(s0)
    800079e8:	28a67263          	bgeu	a2,a0,80007c6c <__printf+0x644>
    800079ec:	00f6f693          	andi	a3,a3,15
    800079f0:	00dd86b3          	add	a3,s11,a3
    800079f4:	0006c683          	lbu	a3,0(a3)
    800079f8:	0147d79b          	srliw	a5,a5,0x14
    800079fc:	f8d40323          	sb	a3,-122(s0)
    80007a00:	21067663          	bgeu	a2,a6,80007c0c <__printf+0x5e4>
    80007a04:	02079793          	slli	a5,a5,0x20
    80007a08:	0207d793          	srli	a5,a5,0x20
    80007a0c:	00fd8db3          	add	s11,s11,a5
    80007a10:	000dc683          	lbu	a3,0(s11)
    80007a14:	00800793          	li	a5,8
    80007a18:	00700c93          	li	s9,7
    80007a1c:	f8d403a3          	sb	a3,-121(s0)
    80007a20:	00075c63          	bgez	a4,80007a38 <__printf+0x410>
    80007a24:	f9040713          	addi	a4,s0,-112
    80007a28:	00f70733          	add	a4,a4,a5
    80007a2c:	02d00693          	li	a3,45
    80007a30:	fed70823          	sb	a3,-16(a4)
    80007a34:	00078c93          	mv	s9,a5
    80007a38:	f8040793          	addi	a5,s0,-128
    80007a3c:	01978cb3          	add	s9,a5,s9
    80007a40:	f7f40d13          	addi	s10,s0,-129
    80007a44:	000cc503          	lbu	a0,0(s9)
    80007a48:	fffc8c93          	addi	s9,s9,-1
    80007a4c:	00000097          	auipc	ra,0x0
    80007a50:	9f8080e7          	jalr	-1544(ra) # 80007444 <consputc>
    80007a54:	ff9d18e3          	bne	s10,s9,80007a44 <__printf+0x41c>
    80007a58:	0100006f          	j	80007a68 <__printf+0x440>
    80007a5c:	00000097          	auipc	ra,0x0
    80007a60:	9e8080e7          	jalr	-1560(ra) # 80007444 <consputc>
    80007a64:	000c8493          	mv	s1,s9
    80007a68:	00094503          	lbu	a0,0(s2)
    80007a6c:	c60510e3          	bnez	a0,800076cc <__printf+0xa4>
    80007a70:	e40c0ee3          	beqz	s8,800078cc <__printf+0x2a4>
    80007a74:	00005517          	auipc	a0,0x5
    80007a78:	24c50513          	addi	a0,a0,588 # 8000ccc0 <pr>
    80007a7c:	00001097          	auipc	ra,0x1
    80007a80:	94c080e7          	jalr	-1716(ra) # 800083c8 <release>
    80007a84:	e49ff06f          	j	800078cc <__printf+0x2a4>
    80007a88:	f7843783          	ld	a5,-136(s0)
    80007a8c:	03000513          	li	a0,48
    80007a90:	01000d13          	li	s10,16
    80007a94:	00878713          	addi	a4,a5,8
    80007a98:	0007bc83          	ld	s9,0(a5)
    80007a9c:	f6e43c23          	sd	a4,-136(s0)
    80007aa0:	00000097          	auipc	ra,0x0
    80007aa4:	9a4080e7          	jalr	-1628(ra) # 80007444 <consputc>
    80007aa8:	07800513          	li	a0,120
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	998080e7          	jalr	-1640(ra) # 80007444 <consputc>
    80007ab4:	00002d97          	auipc	s11,0x2
    80007ab8:	b64d8d93          	addi	s11,s11,-1180 # 80009618 <digits>
    80007abc:	03ccd793          	srli	a5,s9,0x3c
    80007ac0:	00fd87b3          	add	a5,s11,a5
    80007ac4:	0007c503          	lbu	a0,0(a5)
    80007ac8:	fffd0d1b          	addiw	s10,s10,-1
    80007acc:	004c9c93          	slli	s9,s9,0x4
    80007ad0:	00000097          	auipc	ra,0x0
    80007ad4:	974080e7          	jalr	-1676(ra) # 80007444 <consputc>
    80007ad8:	fe0d12e3          	bnez	s10,80007abc <__printf+0x494>
    80007adc:	f8dff06f          	j	80007a68 <__printf+0x440>
    80007ae0:	f7843783          	ld	a5,-136(s0)
    80007ae4:	0007bc83          	ld	s9,0(a5)
    80007ae8:	00878793          	addi	a5,a5,8
    80007aec:	f6f43c23          	sd	a5,-136(s0)
    80007af0:	000c9a63          	bnez	s9,80007b04 <__printf+0x4dc>
    80007af4:	1080006f          	j	80007bfc <__printf+0x5d4>
    80007af8:	001c8c93          	addi	s9,s9,1
    80007afc:	00000097          	auipc	ra,0x0
    80007b00:	948080e7          	jalr	-1720(ra) # 80007444 <consputc>
    80007b04:	000cc503          	lbu	a0,0(s9)
    80007b08:	fe0518e3          	bnez	a0,80007af8 <__printf+0x4d0>
    80007b0c:	f5dff06f          	j	80007a68 <__printf+0x440>
    80007b10:	02500513          	li	a0,37
    80007b14:	00000097          	auipc	ra,0x0
    80007b18:	930080e7          	jalr	-1744(ra) # 80007444 <consputc>
    80007b1c:	000c8513          	mv	a0,s9
    80007b20:	00000097          	auipc	ra,0x0
    80007b24:	924080e7          	jalr	-1756(ra) # 80007444 <consputc>
    80007b28:	f41ff06f          	j	80007a68 <__printf+0x440>
    80007b2c:	02500513          	li	a0,37
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	914080e7          	jalr	-1772(ra) # 80007444 <consputc>
    80007b38:	f31ff06f          	j	80007a68 <__printf+0x440>
    80007b3c:	00030513          	mv	a0,t1
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	7bc080e7          	jalr	1980(ra) # 800082fc <acquire>
    80007b48:	b4dff06f          	j	80007694 <__printf+0x6c>
    80007b4c:	40c0053b          	negw	a0,a2
    80007b50:	00a00713          	li	a4,10
    80007b54:	02e576bb          	remuw	a3,a0,a4
    80007b58:	00002d97          	auipc	s11,0x2
    80007b5c:	ac0d8d93          	addi	s11,s11,-1344 # 80009618 <digits>
    80007b60:	ff700593          	li	a1,-9
    80007b64:	02069693          	slli	a3,a3,0x20
    80007b68:	0206d693          	srli	a3,a3,0x20
    80007b6c:	00dd86b3          	add	a3,s11,a3
    80007b70:	0006c683          	lbu	a3,0(a3)
    80007b74:	02e557bb          	divuw	a5,a0,a4
    80007b78:	f8d40023          	sb	a3,-128(s0)
    80007b7c:	10b65e63          	bge	a2,a1,80007c98 <__printf+0x670>
    80007b80:	06300593          	li	a1,99
    80007b84:	02e7f6bb          	remuw	a3,a5,a4
    80007b88:	02069693          	slli	a3,a3,0x20
    80007b8c:	0206d693          	srli	a3,a3,0x20
    80007b90:	00dd86b3          	add	a3,s11,a3
    80007b94:	0006c683          	lbu	a3,0(a3)
    80007b98:	02e7d73b          	divuw	a4,a5,a4
    80007b9c:	00200793          	li	a5,2
    80007ba0:	f8d400a3          	sb	a3,-127(s0)
    80007ba4:	bca5ece3          	bltu	a1,a0,8000777c <__printf+0x154>
    80007ba8:	ce5ff06f          	j	8000788c <__printf+0x264>
    80007bac:	40e007bb          	negw	a5,a4
    80007bb0:	00002d97          	auipc	s11,0x2
    80007bb4:	a68d8d93          	addi	s11,s11,-1432 # 80009618 <digits>
    80007bb8:	00f7f693          	andi	a3,a5,15
    80007bbc:	00dd86b3          	add	a3,s11,a3
    80007bc0:	0006c583          	lbu	a1,0(a3)
    80007bc4:	ff100613          	li	a2,-15
    80007bc8:	0047d69b          	srliw	a3,a5,0x4
    80007bcc:	f8b40023          	sb	a1,-128(s0)
    80007bd0:	0047d59b          	srliw	a1,a5,0x4
    80007bd4:	0ac75e63          	bge	a4,a2,80007c90 <__printf+0x668>
    80007bd8:	00f6f693          	andi	a3,a3,15
    80007bdc:	00dd86b3          	add	a3,s11,a3
    80007be0:	0006c603          	lbu	a2,0(a3)
    80007be4:	00f00693          	li	a3,15
    80007be8:	0087d79b          	srliw	a5,a5,0x8
    80007bec:	f8c400a3          	sb	a2,-127(s0)
    80007bf0:	d8b6e4e3          	bltu	a3,a1,80007978 <__printf+0x350>
    80007bf4:	00200793          	li	a5,2
    80007bf8:	e2dff06f          	j	80007a24 <__printf+0x3fc>
    80007bfc:	00002c97          	auipc	s9,0x2
    80007c00:	9fcc8c93          	addi	s9,s9,-1540 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80007c04:	02800513          	li	a0,40
    80007c08:	ef1ff06f          	j	80007af8 <__printf+0x4d0>
    80007c0c:	00700793          	li	a5,7
    80007c10:	00600c93          	li	s9,6
    80007c14:	e0dff06f          	j	80007a20 <__printf+0x3f8>
    80007c18:	00700793          	li	a5,7
    80007c1c:	00600c93          	li	s9,6
    80007c20:	c69ff06f          	j	80007888 <__printf+0x260>
    80007c24:	00300793          	li	a5,3
    80007c28:	00200c93          	li	s9,2
    80007c2c:	c5dff06f          	j	80007888 <__printf+0x260>
    80007c30:	00300793          	li	a5,3
    80007c34:	00200c93          	li	s9,2
    80007c38:	de9ff06f          	j	80007a20 <__printf+0x3f8>
    80007c3c:	00400793          	li	a5,4
    80007c40:	00300c93          	li	s9,3
    80007c44:	dddff06f          	j	80007a20 <__printf+0x3f8>
    80007c48:	00400793          	li	a5,4
    80007c4c:	00300c93          	li	s9,3
    80007c50:	c39ff06f          	j	80007888 <__printf+0x260>
    80007c54:	00500793          	li	a5,5
    80007c58:	00400c93          	li	s9,4
    80007c5c:	c2dff06f          	j	80007888 <__printf+0x260>
    80007c60:	00500793          	li	a5,5
    80007c64:	00400c93          	li	s9,4
    80007c68:	db9ff06f          	j	80007a20 <__printf+0x3f8>
    80007c6c:	00600793          	li	a5,6
    80007c70:	00500c93          	li	s9,5
    80007c74:	dadff06f          	j	80007a20 <__printf+0x3f8>
    80007c78:	00600793          	li	a5,6
    80007c7c:	00500c93          	li	s9,5
    80007c80:	c09ff06f          	j	80007888 <__printf+0x260>
    80007c84:	00800793          	li	a5,8
    80007c88:	00700c93          	li	s9,7
    80007c8c:	bfdff06f          	j	80007888 <__printf+0x260>
    80007c90:	00100793          	li	a5,1
    80007c94:	d91ff06f          	j	80007a24 <__printf+0x3fc>
    80007c98:	00100793          	li	a5,1
    80007c9c:	bf1ff06f          	j	8000788c <__printf+0x264>
    80007ca0:	00900793          	li	a5,9
    80007ca4:	00800c93          	li	s9,8
    80007ca8:	be1ff06f          	j	80007888 <__printf+0x260>
    80007cac:	00002517          	auipc	a0,0x2
    80007cb0:	95450513          	addi	a0,a0,-1708 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	918080e7          	jalr	-1768(ra) # 800075cc <panic>

0000000080007cbc <printfinit>:
    80007cbc:	fe010113          	addi	sp,sp,-32
    80007cc0:	00813823          	sd	s0,16(sp)
    80007cc4:	00913423          	sd	s1,8(sp)
    80007cc8:	00113c23          	sd	ra,24(sp)
    80007ccc:	02010413          	addi	s0,sp,32
    80007cd0:	00005497          	auipc	s1,0x5
    80007cd4:	ff048493          	addi	s1,s1,-16 # 8000ccc0 <pr>
    80007cd8:	00048513          	mv	a0,s1
    80007cdc:	00002597          	auipc	a1,0x2
    80007ce0:	93458593          	addi	a1,a1,-1740 # 80009610 <CONSOLE_STATUS+0x600>
    80007ce4:	00000097          	auipc	ra,0x0
    80007ce8:	5f4080e7          	jalr	1524(ra) # 800082d8 <initlock>
    80007cec:	01813083          	ld	ra,24(sp)
    80007cf0:	01013403          	ld	s0,16(sp)
    80007cf4:	0004ac23          	sw	zero,24(s1)
    80007cf8:	00813483          	ld	s1,8(sp)
    80007cfc:	02010113          	addi	sp,sp,32
    80007d00:	00008067          	ret

0000000080007d04 <uartinit>:
    80007d04:	ff010113          	addi	sp,sp,-16
    80007d08:	00813423          	sd	s0,8(sp)
    80007d0c:	01010413          	addi	s0,sp,16
    80007d10:	100007b7          	lui	a5,0x10000
    80007d14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d18:	f8000713          	li	a4,-128
    80007d1c:	00e781a3          	sb	a4,3(a5)
    80007d20:	00300713          	li	a4,3
    80007d24:	00e78023          	sb	a4,0(a5)
    80007d28:	000780a3          	sb	zero,1(a5)
    80007d2c:	00e781a3          	sb	a4,3(a5)
    80007d30:	00700693          	li	a3,7
    80007d34:	00d78123          	sb	a3,2(a5)
    80007d38:	00e780a3          	sb	a4,1(a5)
    80007d3c:	00813403          	ld	s0,8(sp)
    80007d40:	01010113          	addi	sp,sp,16
    80007d44:	00008067          	ret

0000000080007d48 <uartputc>:
    80007d48:	00004797          	auipc	a5,0x4
    80007d4c:	c907a783          	lw	a5,-880(a5) # 8000b9d8 <panicked>
    80007d50:	00078463          	beqz	a5,80007d58 <uartputc+0x10>
    80007d54:	0000006f          	j	80007d54 <uartputc+0xc>
    80007d58:	fd010113          	addi	sp,sp,-48
    80007d5c:	02813023          	sd	s0,32(sp)
    80007d60:	00913c23          	sd	s1,24(sp)
    80007d64:	01213823          	sd	s2,16(sp)
    80007d68:	01313423          	sd	s3,8(sp)
    80007d6c:	02113423          	sd	ra,40(sp)
    80007d70:	03010413          	addi	s0,sp,48
    80007d74:	00004917          	auipc	s2,0x4
    80007d78:	c6c90913          	addi	s2,s2,-916 # 8000b9e0 <uart_tx_r>
    80007d7c:	00093783          	ld	a5,0(s2)
    80007d80:	00004497          	auipc	s1,0x4
    80007d84:	c6848493          	addi	s1,s1,-920 # 8000b9e8 <uart_tx_w>
    80007d88:	0004b703          	ld	a4,0(s1)
    80007d8c:	02078693          	addi	a3,a5,32
    80007d90:	00050993          	mv	s3,a0
    80007d94:	02e69c63          	bne	a3,a4,80007dcc <uartputc+0x84>
    80007d98:	00001097          	auipc	ra,0x1
    80007d9c:	834080e7          	jalr	-1996(ra) # 800085cc <push_on>
    80007da0:	00093783          	ld	a5,0(s2)
    80007da4:	0004b703          	ld	a4,0(s1)
    80007da8:	02078793          	addi	a5,a5,32
    80007dac:	00e79463          	bne	a5,a4,80007db4 <uartputc+0x6c>
    80007db0:	0000006f          	j	80007db0 <uartputc+0x68>
    80007db4:	00001097          	auipc	ra,0x1
    80007db8:	88c080e7          	jalr	-1908(ra) # 80008640 <pop_on>
    80007dbc:	00093783          	ld	a5,0(s2)
    80007dc0:	0004b703          	ld	a4,0(s1)
    80007dc4:	02078693          	addi	a3,a5,32
    80007dc8:	fce688e3          	beq	a3,a4,80007d98 <uartputc+0x50>
    80007dcc:	01f77693          	andi	a3,a4,31
    80007dd0:	00005597          	auipc	a1,0x5
    80007dd4:	f1058593          	addi	a1,a1,-240 # 8000cce0 <uart_tx_buf>
    80007dd8:	00d586b3          	add	a3,a1,a3
    80007ddc:	00170713          	addi	a4,a4,1
    80007de0:	01368023          	sb	s3,0(a3)
    80007de4:	00e4b023          	sd	a4,0(s1)
    80007de8:	10000637          	lui	a2,0x10000
    80007dec:	02f71063          	bne	a4,a5,80007e0c <uartputc+0xc4>
    80007df0:	0340006f          	j	80007e24 <uartputc+0xdc>
    80007df4:	00074703          	lbu	a4,0(a4)
    80007df8:	00f93023          	sd	a5,0(s2)
    80007dfc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e00:	00093783          	ld	a5,0(s2)
    80007e04:	0004b703          	ld	a4,0(s1)
    80007e08:	00f70e63          	beq	a4,a5,80007e24 <uartputc+0xdc>
    80007e0c:	00564683          	lbu	a3,5(a2)
    80007e10:	01f7f713          	andi	a4,a5,31
    80007e14:	00e58733          	add	a4,a1,a4
    80007e18:	0206f693          	andi	a3,a3,32
    80007e1c:	00178793          	addi	a5,a5,1
    80007e20:	fc069ae3          	bnez	a3,80007df4 <uartputc+0xac>
    80007e24:	02813083          	ld	ra,40(sp)
    80007e28:	02013403          	ld	s0,32(sp)
    80007e2c:	01813483          	ld	s1,24(sp)
    80007e30:	01013903          	ld	s2,16(sp)
    80007e34:	00813983          	ld	s3,8(sp)
    80007e38:	03010113          	addi	sp,sp,48
    80007e3c:	00008067          	ret

0000000080007e40 <uartputc_sync>:
    80007e40:	ff010113          	addi	sp,sp,-16
    80007e44:	00813423          	sd	s0,8(sp)
    80007e48:	01010413          	addi	s0,sp,16
    80007e4c:	00004717          	auipc	a4,0x4
    80007e50:	b8c72703          	lw	a4,-1140(a4) # 8000b9d8 <panicked>
    80007e54:	02071663          	bnez	a4,80007e80 <uartputc_sync+0x40>
    80007e58:	00050793          	mv	a5,a0
    80007e5c:	100006b7          	lui	a3,0x10000
    80007e60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007e64:	02077713          	andi	a4,a4,32
    80007e68:	fe070ce3          	beqz	a4,80007e60 <uartputc_sync+0x20>
    80007e6c:	0ff7f793          	andi	a5,a5,255
    80007e70:	00f68023          	sb	a5,0(a3)
    80007e74:	00813403          	ld	s0,8(sp)
    80007e78:	01010113          	addi	sp,sp,16
    80007e7c:	00008067          	ret
    80007e80:	0000006f          	j	80007e80 <uartputc_sync+0x40>

0000000080007e84 <uartstart>:
    80007e84:	ff010113          	addi	sp,sp,-16
    80007e88:	00813423          	sd	s0,8(sp)
    80007e8c:	01010413          	addi	s0,sp,16
    80007e90:	00004617          	auipc	a2,0x4
    80007e94:	b5060613          	addi	a2,a2,-1200 # 8000b9e0 <uart_tx_r>
    80007e98:	00004517          	auipc	a0,0x4
    80007e9c:	b5050513          	addi	a0,a0,-1200 # 8000b9e8 <uart_tx_w>
    80007ea0:	00063783          	ld	a5,0(a2)
    80007ea4:	00053703          	ld	a4,0(a0)
    80007ea8:	04f70263          	beq	a4,a5,80007eec <uartstart+0x68>
    80007eac:	100005b7          	lui	a1,0x10000
    80007eb0:	00005817          	auipc	a6,0x5
    80007eb4:	e3080813          	addi	a6,a6,-464 # 8000cce0 <uart_tx_buf>
    80007eb8:	01c0006f          	j	80007ed4 <uartstart+0x50>
    80007ebc:	0006c703          	lbu	a4,0(a3)
    80007ec0:	00f63023          	sd	a5,0(a2)
    80007ec4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ec8:	00063783          	ld	a5,0(a2)
    80007ecc:	00053703          	ld	a4,0(a0)
    80007ed0:	00f70e63          	beq	a4,a5,80007eec <uartstart+0x68>
    80007ed4:	01f7f713          	andi	a4,a5,31
    80007ed8:	00e806b3          	add	a3,a6,a4
    80007edc:	0055c703          	lbu	a4,5(a1)
    80007ee0:	00178793          	addi	a5,a5,1
    80007ee4:	02077713          	andi	a4,a4,32
    80007ee8:	fc071ae3          	bnez	a4,80007ebc <uartstart+0x38>
    80007eec:	00813403          	ld	s0,8(sp)
    80007ef0:	01010113          	addi	sp,sp,16
    80007ef4:	00008067          	ret

0000000080007ef8 <uartgetc>:
    80007ef8:	ff010113          	addi	sp,sp,-16
    80007efc:	00813423          	sd	s0,8(sp)
    80007f00:	01010413          	addi	s0,sp,16
    80007f04:	10000737          	lui	a4,0x10000
    80007f08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f0c:	0017f793          	andi	a5,a5,1
    80007f10:	00078c63          	beqz	a5,80007f28 <uartgetc+0x30>
    80007f14:	00074503          	lbu	a0,0(a4)
    80007f18:	0ff57513          	andi	a0,a0,255
    80007f1c:	00813403          	ld	s0,8(sp)
    80007f20:	01010113          	addi	sp,sp,16
    80007f24:	00008067          	ret
    80007f28:	fff00513          	li	a0,-1
    80007f2c:	ff1ff06f          	j	80007f1c <uartgetc+0x24>

0000000080007f30 <uartintr>:
    80007f30:	100007b7          	lui	a5,0x10000
    80007f34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007f38:	0017f793          	andi	a5,a5,1
    80007f3c:	0a078463          	beqz	a5,80007fe4 <uartintr+0xb4>
    80007f40:	fe010113          	addi	sp,sp,-32
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00913423          	sd	s1,8(sp)
    80007f4c:	00113c23          	sd	ra,24(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	100004b7          	lui	s1,0x10000
    80007f58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007f5c:	0ff57513          	andi	a0,a0,255
    80007f60:	fffff097          	auipc	ra,0xfffff
    80007f64:	534080e7          	jalr	1332(ra) # 80007494 <consoleintr>
    80007f68:	0054c783          	lbu	a5,5(s1)
    80007f6c:	0017f793          	andi	a5,a5,1
    80007f70:	fe0794e3          	bnez	a5,80007f58 <uartintr+0x28>
    80007f74:	00004617          	auipc	a2,0x4
    80007f78:	a6c60613          	addi	a2,a2,-1428 # 8000b9e0 <uart_tx_r>
    80007f7c:	00004517          	auipc	a0,0x4
    80007f80:	a6c50513          	addi	a0,a0,-1428 # 8000b9e8 <uart_tx_w>
    80007f84:	00063783          	ld	a5,0(a2)
    80007f88:	00053703          	ld	a4,0(a0)
    80007f8c:	04f70263          	beq	a4,a5,80007fd0 <uartintr+0xa0>
    80007f90:	100005b7          	lui	a1,0x10000
    80007f94:	00005817          	auipc	a6,0x5
    80007f98:	d4c80813          	addi	a6,a6,-692 # 8000cce0 <uart_tx_buf>
    80007f9c:	01c0006f          	j	80007fb8 <uartintr+0x88>
    80007fa0:	0006c703          	lbu	a4,0(a3)
    80007fa4:	00f63023          	sd	a5,0(a2)
    80007fa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fac:	00063783          	ld	a5,0(a2)
    80007fb0:	00053703          	ld	a4,0(a0)
    80007fb4:	00f70e63          	beq	a4,a5,80007fd0 <uartintr+0xa0>
    80007fb8:	01f7f713          	andi	a4,a5,31
    80007fbc:	00e806b3          	add	a3,a6,a4
    80007fc0:	0055c703          	lbu	a4,5(a1)
    80007fc4:	00178793          	addi	a5,a5,1
    80007fc8:	02077713          	andi	a4,a4,32
    80007fcc:	fc071ae3          	bnez	a4,80007fa0 <uartintr+0x70>
    80007fd0:	01813083          	ld	ra,24(sp)
    80007fd4:	01013403          	ld	s0,16(sp)
    80007fd8:	00813483          	ld	s1,8(sp)
    80007fdc:	02010113          	addi	sp,sp,32
    80007fe0:	00008067          	ret
    80007fe4:	00004617          	auipc	a2,0x4
    80007fe8:	9fc60613          	addi	a2,a2,-1540 # 8000b9e0 <uart_tx_r>
    80007fec:	00004517          	auipc	a0,0x4
    80007ff0:	9fc50513          	addi	a0,a0,-1540 # 8000b9e8 <uart_tx_w>
    80007ff4:	00063783          	ld	a5,0(a2)
    80007ff8:	00053703          	ld	a4,0(a0)
    80007ffc:	04f70263          	beq	a4,a5,80008040 <uartintr+0x110>
    80008000:	100005b7          	lui	a1,0x10000
    80008004:	00005817          	auipc	a6,0x5
    80008008:	cdc80813          	addi	a6,a6,-804 # 8000cce0 <uart_tx_buf>
    8000800c:	01c0006f          	j	80008028 <uartintr+0xf8>
    80008010:	0006c703          	lbu	a4,0(a3)
    80008014:	00f63023          	sd	a5,0(a2)
    80008018:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000801c:	00063783          	ld	a5,0(a2)
    80008020:	00053703          	ld	a4,0(a0)
    80008024:	02f70063          	beq	a4,a5,80008044 <uartintr+0x114>
    80008028:	01f7f713          	andi	a4,a5,31
    8000802c:	00e806b3          	add	a3,a6,a4
    80008030:	0055c703          	lbu	a4,5(a1)
    80008034:	00178793          	addi	a5,a5,1
    80008038:	02077713          	andi	a4,a4,32
    8000803c:	fc071ae3          	bnez	a4,80008010 <uartintr+0xe0>
    80008040:	00008067          	ret
    80008044:	00008067          	ret

0000000080008048 <kinit>:
    80008048:	fc010113          	addi	sp,sp,-64
    8000804c:	02913423          	sd	s1,40(sp)
    80008050:	fffff7b7          	lui	a5,0xfffff
    80008054:	00006497          	auipc	s1,0x6
    80008058:	cab48493          	addi	s1,s1,-853 # 8000dcff <end+0xfff>
    8000805c:	02813823          	sd	s0,48(sp)
    80008060:	01313c23          	sd	s3,24(sp)
    80008064:	00f4f4b3          	and	s1,s1,a5
    80008068:	02113c23          	sd	ra,56(sp)
    8000806c:	03213023          	sd	s2,32(sp)
    80008070:	01413823          	sd	s4,16(sp)
    80008074:	01513423          	sd	s5,8(sp)
    80008078:	04010413          	addi	s0,sp,64
    8000807c:	000017b7          	lui	a5,0x1
    80008080:	01100993          	li	s3,17
    80008084:	00f487b3          	add	a5,s1,a5
    80008088:	01b99993          	slli	s3,s3,0x1b
    8000808c:	06f9e063          	bltu	s3,a5,800080ec <kinit+0xa4>
    80008090:	00005a97          	auipc	s5,0x5
    80008094:	c70a8a93          	addi	s5,s5,-912 # 8000cd00 <end>
    80008098:	0754ec63          	bltu	s1,s5,80008110 <kinit+0xc8>
    8000809c:	0734fa63          	bgeu	s1,s3,80008110 <kinit+0xc8>
    800080a0:	00088a37          	lui	s4,0x88
    800080a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800080a8:	00004917          	auipc	s2,0x4
    800080ac:	94890913          	addi	s2,s2,-1720 # 8000b9f0 <kmem>
    800080b0:	00ca1a13          	slli	s4,s4,0xc
    800080b4:	0140006f          	j	800080c8 <kinit+0x80>
    800080b8:	000017b7          	lui	a5,0x1
    800080bc:	00f484b3          	add	s1,s1,a5
    800080c0:	0554e863          	bltu	s1,s5,80008110 <kinit+0xc8>
    800080c4:	0534f663          	bgeu	s1,s3,80008110 <kinit+0xc8>
    800080c8:	00001637          	lui	a2,0x1
    800080cc:	00100593          	li	a1,1
    800080d0:	00048513          	mv	a0,s1
    800080d4:	00000097          	auipc	ra,0x0
    800080d8:	5e4080e7          	jalr	1508(ra) # 800086b8 <__memset>
    800080dc:	00093783          	ld	a5,0(s2)
    800080e0:	00f4b023          	sd	a5,0(s1)
    800080e4:	00993023          	sd	s1,0(s2)
    800080e8:	fd4498e3          	bne	s1,s4,800080b8 <kinit+0x70>
    800080ec:	03813083          	ld	ra,56(sp)
    800080f0:	03013403          	ld	s0,48(sp)
    800080f4:	02813483          	ld	s1,40(sp)
    800080f8:	02013903          	ld	s2,32(sp)
    800080fc:	01813983          	ld	s3,24(sp)
    80008100:	01013a03          	ld	s4,16(sp)
    80008104:	00813a83          	ld	s5,8(sp)
    80008108:	04010113          	addi	sp,sp,64
    8000810c:	00008067          	ret
    80008110:	00001517          	auipc	a0,0x1
    80008114:	52050513          	addi	a0,a0,1312 # 80009630 <digits+0x18>
    80008118:	fffff097          	auipc	ra,0xfffff
    8000811c:	4b4080e7          	jalr	1204(ra) # 800075cc <panic>

0000000080008120 <freerange>:
    80008120:	fc010113          	addi	sp,sp,-64
    80008124:	000017b7          	lui	a5,0x1
    80008128:	02913423          	sd	s1,40(sp)
    8000812c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008130:	009504b3          	add	s1,a0,s1
    80008134:	fffff537          	lui	a0,0xfffff
    80008138:	02813823          	sd	s0,48(sp)
    8000813c:	02113c23          	sd	ra,56(sp)
    80008140:	03213023          	sd	s2,32(sp)
    80008144:	01313c23          	sd	s3,24(sp)
    80008148:	01413823          	sd	s4,16(sp)
    8000814c:	01513423          	sd	s5,8(sp)
    80008150:	01613023          	sd	s6,0(sp)
    80008154:	04010413          	addi	s0,sp,64
    80008158:	00a4f4b3          	and	s1,s1,a0
    8000815c:	00f487b3          	add	a5,s1,a5
    80008160:	06f5e463          	bltu	a1,a5,800081c8 <freerange+0xa8>
    80008164:	00005a97          	auipc	s5,0x5
    80008168:	b9ca8a93          	addi	s5,s5,-1124 # 8000cd00 <end>
    8000816c:	0954e263          	bltu	s1,s5,800081f0 <freerange+0xd0>
    80008170:	01100993          	li	s3,17
    80008174:	01b99993          	slli	s3,s3,0x1b
    80008178:	0734fc63          	bgeu	s1,s3,800081f0 <freerange+0xd0>
    8000817c:	00058a13          	mv	s4,a1
    80008180:	00004917          	auipc	s2,0x4
    80008184:	87090913          	addi	s2,s2,-1936 # 8000b9f0 <kmem>
    80008188:	00002b37          	lui	s6,0x2
    8000818c:	0140006f          	j	800081a0 <freerange+0x80>
    80008190:	000017b7          	lui	a5,0x1
    80008194:	00f484b3          	add	s1,s1,a5
    80008198:	0554ec63          	bltu	s1,s5,800081f0 <freerange+0xd0>
    8000819c:	0534fa63          	bgeu	s1,s3,800081f0 <freerange+0xd0>
    800081a0:	00001637          	lui	a2,0x1
    800081a4:	00100593          	li	a1,1
    800081a8:	00048513          	mv	a0,s1
    800081ac:	00000097          	auipc	ra,0x0
    800081b0:	50c080e7          	jalr	1292(ra) # 800086b8 <__memset>
    800081b4:	00093703          	ld	a4,0(s2)
    800081b8:	016487b3          	add	a5,s1,s6
    800081bc:	00e4b023          	sd	a4,0(s1)
    800081c0:	00993023          	sd	s1,0(s2)
    800081c4:	fcfa76e3          	bgeu	s4,a5,80008190 <freerange+0x70>
    800081c8:	03813083          	ld	ra,56(sp)
    800081cc:	03013403          	ld	s0,48(sp)
    800081d0:	02813483          	ld	s1,40(sp)
    800081d4:	02013903          	ld	s2,32(sp)
    800081d8:	01813983          	ld	s3,24(sp)
    800081dc:	01013a03          	ld	s4,16(sp)
    800081e0:	00813a83          	ld	s5,8(sp)
    800081e4:	00013b03          	ld	s6,0(sp)
    800081e8:	04010113          	addi	sp,sp,64
    800081ec:	00008067          	ret
    800081f0:	00001517          	auipc	a0,0x1
    800081f4:	44050513          	addi	a0,a0,1088 # 80009630 <digits+0x18>
    800081f8:	fffff097          	auipc	ra,0xfffff
    800081fc:	3d4080e7          	jalr	980(ra) # 800075cc <panic>

0000000080008200 <kfree>:
    80008200:	fe010113          	addi	sp,sp,-32
    80008204:	00813823          	sd	s0,16(sp)
    80008208:	00113c23          	sd	ra,24(sp)
    8000820c:	00913423          	sd	s1,8(sp)
    80008210:	02010413          	addi	s0,sp,32
    80008214:	03451793          	slli	a5,a0,0x34
    80008218:	04079c63          	bnez	a5,80008270 <kfree+0x70>
    8000821c:	00005797          	auipc	a5,0x5
    80008220:	ae478793          	addi	a5,a5,-1308 # 8000cd00 <end>
    80008224:	00050493          	mv	s1,a0
    80008228:	04f56463          	bltu	a0,a5,80008270 <kfree+0x70>
    8000822c:	01100793          	li	a5,17
    80008230:	01b79793          	slli	a5,a5,0x1b
    80008234:	02f57e63          	bgeu	a0,a5,80008270 <kfree+0x70>
    80008238:	00001637          	lui	a2,0x1
    8000823c:	00100593          	li	a1,1
    80008240:	00000097          	auipc	ra,0x0
    80008244:	478080e7          	jalr	1144(ra) # 800086b8 <__memset>
    80008248:	00003797          	auipc	a5,0x3
    8000824c:	7a878793          	addi	a5,a5,1960 # 8000b9f0 <kmem>
    80008250:	0007b703          	ld	a4,0(a5)
    80008254:	01813083          	ld	ra,24(sp)
    80008258:	01013403          	ld	s0,16(sp)
    8000825c:	00e4b023          	sd	a4,0(s1)
    80008260:	0097b023          	sd	s1,0(a5)
    80008264:	00813483          	ld	s1,8(sp)
    80008268:	02010113          	addi	sp,sp,32
    8000826c:	00008067          	ret
    80008270:	00001517          	auipc	a0,0x1
    80008274:	3c050513          	addi	a0,a0,960 # 80009630 <digits+0x18>
    80008278:	fffff097          	auipc	ra,0xfffff
    8000827c:	354080e7          	jalr	852(ra) # 800075cc <panic>

0000000080008280 <kalloc>:
    80008280:	fe010113          	addi	sp,sp,-32
    80008284:	00813823          	sd	s0,16(sp)
    80008288:	00913423          	sd	s1,8(sp)
    8000828c:	00113c23          	sd	ra,24(sp)
    80008290:	02010413          	addi	s0,sp,32
    80008294:	00003797          	auipc	a5,0x3
    80008298:	75c78793          	addi	a5,a5,1884 # 8000b9f0 <kmem>
    8000829c:	0007b483          	ld	s1,0(a5)
    800082a0:	02048063          	beqz	s1,800082c0 <kalloc+0x40>
    800082a4:	0004b703          	ld	a4,0(s1)
    800082a8:	00001637          	lui	a2,0x1
    800082ac:	00500593          	li	a1,5
    800082b0:	00048513          	mv	a0,s1
    800082b4:	00e7b023          	sd	a4,0(a5)
    800082b8:	00000097          	auipc	ra,0x0
    800082bc:	400080e7          	jalr	1024(ra) # 800086b8 <__memset>
    800082c0:	01813083          	ld	ra,24(sp)
    800082c4:	01013403          	ld	s0,16(sp)
    800082c8:	00048513          	mv	a0,s1
    800082cc:	00813483          	ld	s1,8(sp)
    800082d0:	02010113          	addi	sp,sp,32
    800082d4:	00008067          	ret

00000000800082d8 <initlock>:
    800082d8:	ff010113          	addi	sp,sp,-16
    800082dc:	00813423          	sd	s0,8(sp)
    800082e0:	01010413          	addi	s0,sp,16
    800082e4:	00813403          	ld	s0,8(sp)
    800082e8:	00b53423          	sd	a1,8(a0)
    800082ec:	00052023          	sw	zero,0(a0)
    800082f0:	00053823          	sd	zero,16(a0)
    800082f4:	01010113          	addi	sp,sp,16
    800082f8:	00008067          	ret

00000000800082fc <acquire>:
    800082fc:	fe010113          	addi	sp,sp,-32
    80008300:	00813823          	sd	s0,16(sp)
    80008304:	00913423          	sd	s1,8(sp)
    80008308:	00113c23          	sd	ra,24(sp)
    8000830c:	01213023          	sd	s2,0(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	00050493          	mv	s1,a0
    80008318:	10002973          	csrr	s2,sstatus
    8000831c:	100027f3          	csrr	a5,sstatus
    80008320:	ffd7f793          	andi	a5,a5,-3
    80008324:	10079073          	csrw	sstatus,a5
    80008328:	fffff097          	auipc	ra,0xfffff
    8000832c:	8e8080e7          	jalr	-1816(ra) # 80006c10 <mycpu>
    80008330:	07852783          	lw	a5,120(a0)
    80008334:	06078e63          	beqz	a5,800083b0 <acquire+0xb4>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	8d8080e7          	jalr	-1832(ra) # 80006c10 <mycpu>
    80008340:	07852783          	lw	a5,120(a0)
    80008344:	0004a703          	lw	a4,0(s1)
    80008348:	0017879b          	addiw	a5,a5,1
    8000834c:	06f52c23          	sw	a5,120(a0)
    80008350:	04071063          	bnez	a4,80008390 <acquire+0x94>
    80008354:	00100713          	li	a4,1
    80008358:	00070793          	mv	a5,a4
    8000835c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008360:	0007879b          	sext.w	a5,a5
    80008364:	fe079ae3          	bnez	a5,80008358 <acquire+0x5c>
    80008368:	0ff0000f          	fence
    8000836c:	fffff097          	auipc	ra,0xfffff
    80008370:	8a4080e7          	jalr	-1884(ra) # 80006c10 <mycpu>
    80008374:	01813083          	ld	ra,24(sp)
    80008378:	01013403          	ld	s0,16(sp)
    8000837c:	00a4b823          	sd	a0,16(s1)
    80008380:	00013903          	ld	s2,0(sp)
    80008384:	00813483          	ld	s1,8(sp)
    80008388:	02010113          	addi	sp,sp,32
    8000838c:	00008067          	ret
    80008390:	0104b903          	ld	s2,16(s1)
    80008394:	fffff097          	auipc	ra,0xfffff
    80008398:	87c080e7          	jalr	-1924(ra) # 80006c10 <mycpu>
    8000839c:	faa91ce3          	bne	s2,a0,80008354 <acquire+0x58>
    800083a0:	00001517          	auipc	a0,0x1
    800083a4:	29850513          	addi	a0,a0,664 # 80009638 <digits+0x20>
    800083a8:	fffff097          	auipc	ra,0xfffff
    800083ac:	224080e7          	jalr	548(ra) # 800075cc <panic>
    800083b0:	00195913          	srli	s2,s2,0x1
    800083b4:	fffff097          	auipc	ra,0xfffff
    800083b8:	85c080e7          	jalr	-1956(ra) # 80006c10 <mycpu>
    800083bc:	00197913          	andi	s2,s2,1
    800083c0:	07252e23          	sw	s2,124(a0)
    800083c4:	f75ff06f          	j	80008338 <acquire+0x3c>

00000000800083c8 <release>:
    800083c8:	fe010113          	addi	sp,sp,-32
    800083cc:	00813823          	sd	s0,16(sp)
    800083d0:	00113c23          	sd	ra,24(sp)
    800083d4:	00913423          	sd	s1,8(sp)
    800083d8:	01213023          	sd	s2,0(sp)
    800083dc:	02010413          	addi	s0,sp,32
    800083e0:	00052783          	lw	a5,0(a0)
    800083e4:	00079a63          	bnez	a5,800083f8 <release+0x30>
    800083e8:	00001517          	auipc	a0,0x1
    800083ec:	25850513          	addi	a0,a0,600 # 80009640 <digits+0x28>
    800083f0:	fffff097          	auipc	ra,0xfffff
    800083f4:	1dc080e7          	jalr	476(ra) # 800075cc <panic>
    800083f8:	01053903          	ld	s2,16(a0)
    800083fc:	00050493          	mv	s1,a0
    80008400:	fffff097          	auipc	ra,0xfffff
    80008404:	810080e7          	jalr	-2032(ra) # 80006c10 <mycpu>
    80008408:	fea910e3          	bne	s2,a0,800083e8 <release+0x20>
    8000840c:	0004b823          	sd	zero,16(s1)
    80008410:	0ff0000f          	fence
    80008414:	0f50000f          	fence	iorw,ow
    80008418:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000841c:	ffffe097          	auipc	ra,0xffffe
    80008420:	7f4080e7          	jalr	2036(ra) # 80006c10 <mycpu>
    80008424:	100027f3          	csrr	a5,sstatus
    80008428:	0027f793          	andi	a5,a5,2
    8000842c:	04079a63          	bnez	a5,80008480 <release+0xb8>
    80008430:	07852783          	lw	a5,120(a0)
    80008434:	02f05e63          	blez	a5,80008470 <release+0xa8>
    80008438:	fff7871b          	addiw	a4,a5,-1
    8000843c:	06e52c23          	sw	a4,120(a0)
    80008440:	00071c63          	bnez	a4,80008458 <release+0x90>
    80008444:	07c52783          	lw	a5,124(a0)
    80008448:	00078863          	beqz	a5,80008458 <release+0x90>
    8000844c:	100027f3          	csrr	a5,sstatus
    80008450:	0027e793          	ori	a5,a5,2
    80008454:	10079073          	csrw	sstatus,a5
    80008458:	01813083          	ld	ra,24(sp)
    8000845c:	01013403          	ld	s0,16(sp)
    80008460:	00813483          	ld	s1,8(sp)
    80008464:	00013903          	ld	s2,0(sp)
    80008468:	02010113          	addi	sp,sp,32
    8000846c:	00008067          	ret
    80008470:	00001517          	auipc	a0,0x1
    80008474:	1f050513          	addi	a0,a0,496 # 80009660 <digits+0x48>
    80008478:	fffff097          	auipc	ra,0xfffff
    8000847c:	154080e7          	jalr	340(ra) # 800075cc <panic>
    80008480:	00001517          	auipc	a0,0x1
    80008484:	1c850513          	addi	a0,a0,456 # 80009648 <digits+0x30>
    80008488:	fffff097          	auipc	ra,0xfffff
    8000848c:	144080e7          	jalr	324(ra) # 800075cc <panic>

0000000080008490 <holding>:
    80008490:	00052783          	lw	a5,0(a0)
    80008494:	00079663          	bnez	a5,800084a0 <holding+0x10>
    80008498:	00000513          	li	a0,0
    8000849c:	00008067          	ret
    800084a0:	fe010113          	addi	sp,sp,-32
    800084a4:	00813823          	sd	s0,16(sp)
    800084a8:	00913423          	sd	s1,8(sp)
    800084ac:	00113c23          	sd	ra,24(sp)
    800084b0:	02010413          	addi	s0,sp,32
    800084b4:	01053483          	ld	s1,16(a0)
    800084b8:	ffffe097          	auipc	ra,0xffffe
    800084bc:	758080e7          	jalr	1880(ra) # 80006c10 <mycpu>
    800084c0:	01813083          	ld	ra,24(sp)
    800084c4:	01013403          	ld	s0,16(sp)
    800084c8:	40a48533          	sub	a0,s1,a0
    800084cc:	00153513          	seqz	a0,a0
    800084d0:	00813483          	ld	s1,8(sp)
    800084d4:	02010113          	addi	sp,sp,32
    800084d8:	00008067          	ret

00000000800084dc <push_off>:
    800084dc:	fe010113          	addi	sp,sp,-32
    800084e0:	00813823          	sd	s0,16(sp)
    800084e4:	00113c23          	sd	ra,24(sp)
    800084e8:	00913423          	sd	s1,8(sp)
    800084ec:	02010413          	addi	s0,sp,32
    800084f0:	100024f3          	csrr	s1,sstatus
    800084f4:	100027f3          	csrr	a5,sstatus
    800084f8:	ffd7f793          	andi	a5,a5,-3
    800084fc:	10079073          	csrw	sstatus,a5
    80008500:	ffffe097          	auipc	ra,0xffffe
    80008504:	710080e7          	jalr	1808(ra) # 80006c10 <mycpu>
    80008508:	07852783          	lw	a5,120(a0)
    8000850c:	02078663          	beqz	a5,80008538 <push_off+0x5c>
    80008510:	ffffe097          	auipc	ra,0xffffe
    80008514:	700080e7          	jalr	1792(ra) # 80006c10 <mycpu>
    80008518:	07852783          	lw	a5,120(a0)
    8000851c:	01813083          	ld	ra,24(sp)
    80008520:	01013403          	ld	s0,16(sp)
    80008524:	0017879b          	addiw	a5,a5,1
    80008528:	06f52c23          	sw	a5,120(a0)
    8000852c:	00813483          	ld	s1,8(sp)
    80008530:	02010113          	addi	sp,sp,32
    80008534:	00008067          	ret
    80008538:	0014d493          	srli	s1,s1,0x1
    8000853c:	ffffe097          	auipc	ra,0xffffe
    80008540:	6d4080e7          	jalr	1748(ra) # 80006c10 <mycpu>
    80008544:	0014f493          	andi	s1,s1,1
    80008548:	06952e23          	sw	s1,124(a0)
    8000854c:	fc5ff06f          	j	80008510 <push_off+0x34>

0000000080008550 <pop_off>:
    80008550:	ff010113          	addi	sp,sp,-16
    80008554:	00813023          	sd	s0,0(sp)
    80008558:	00113423          	sd	ra,8(sp)
    8000855c:	01010413          	addi	s0,sp,16
    80008560:	ffffe097          	auipc	ra,0xffffe
    80008564:	6b0080e7          	jalr	1712(ra) # 80006c10 <mycpu>
    80008568:	100027f3          	csrr	a5,sstatus
    8000856c:	0027f793          	andi	a5,a5,2
    80008570:	04079663          	bnez	a5,800085bc <pop_off+0x6c>
    80008574:	07852783          	lw	a5,120(a0)
    80008578:	02f05a63          	blez	a5,800085ac <pop_off+0x5c>
    8000857c:	fff7871b          	addiw	a4,a5,-1
    80008580:	06e52c23          	sw	a4,120(a0)
    80008584:	00071c63          	bnez	a4,8000859c <pop_off+0x4c>
    80008588:	07c52783          	lw	a5,124(a0)
    8000858c:	00078863          	beqz	a5,8000859c <pop_off+0x4c>
    80008590:	100027f3          	csrr	a5,sstatus
    80008594:	0027e793          	ori	a5,a5,2
    80008598:	10079073          	csrw	sstatus,a5
    8000859c:	00813083          	ld	ra,8(sp)
    800085a0:	00013403          	ld	s0,0(sp)
    800085a4:	01010113          	addi	sp,sp,16
    800085a8:	00008067          	ret
    800085ac:	00001517          	auipc	a0,0x1
    800085b0:	0b450513          	addi	a0,a0,180 # 80009660 <digits+0x48>
    800085b4:	fffff097          	auipc	ra,0xfffff
    800085b8:	018080e7          	jalr	24(ra) # 800075cc <panic>
    800085bc:	00001517          	auipc	a0,0x1
    800085c0:	08c50513          	addi	a0,a0,140 # 80009648 <digits+0x30>
    800085c4:	fffff097          	auipc	ra,0xfffff
    800085c8:	008080e7          	jalr	8(ra) # 800075cc <panic>

00000000800085cc <push_on>:
    800085cc:	fe010113          	addi	sp,sp,-32
    800085d0:	00813823          	sd	s0,16(sp)
    800085d4:	00113c23          	sd	ra,24(sp)
    800085d8:	00913423          	sd	s1,8(sp)
    800085dc:	02010413          	addi	s0,sp,32
    800085e0:	100024f3          	csrr	s1,sstatus
    800085e4:	100027f3          	csrr	a5,sstatus
    800085e8:	0027e793          	ori	a5,a5,2
    800085ec:	10079073          	csrw	sstatus,a5
    800085f0:	ffffe097          	auipc	ra,0xffffe
    800085f4:	620080e7          	jalr	1568(ra) # 80006c10 <mycpu>
    800085f8:	07852783          	lw	a5,120(a0)
    800085fc:	02078663          	beqz	a5,80008628 <push_on+0x5c>
    80008600:	ffffe097          	auipc	ra,0xffffe
    80008604:	610080e7          	jalr	1552(ra) # 80006c10 <mycpu>
    80008608:	07852783          	lw	a5,120(a0)
    8000860c:	01813083          	ld	ra,24(sp)
    80008610:	01013403          	ld	s0,16(sp)
    80008614:	0017879b          	addiw	a5,a5,1
    80008618:	06f52c23          	sw	a5,120(a0)
    8000861c:	00813483          	ld	s1,8(sp)
    80008620:	02010113          	addi	sp,sp,32
    80008624:	00008067          	ret
    80008628:	0014d493          	srli	s1,s1,0x1
    8000862c:	ffffe097          	auipc	ra,0xffffe
    80008630:	5e4080e7          	jalr	1508(ra) # 80006c10 <mycpu>
    80008634:	0014f493          	andi	s1,s1,1
    80008638:	06952e23          	sw	s1,124(a0)
    8000863c:	fc5ff06f          	j	80008600 <push_on+0x34>

0000000080008640 <pop_on>:
    80008640:	ff010113          	addi	sp,sp,-16
    80008644:	00813023          	sd	s0,0(sp)
    80008648:	00113423          	sd	ra,8(sp)
    8000864c:	01010413          	addi	s0,sp,16
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	5c0080e7          	jalr	1472(ra) # 80006c10 <mycpu>
    80008658:	100027f3          	csrr	a5,sstatus
    8000865c:	0027f793          	andi	a5,a5,2
    80008660:	04078463          	beqz	a5,800086a8 <pop_on+0x68>
    80008664:	07852783          	lw	a5,120(a0)
    80008668:	02f05863          	blez	a5,80008698 <pop_on+0x58>
    8000866c:	fff7879b          	addiw	a5,a5,-1
    80008670:	06f52c23          	sw	a5,120(a0)
    80008674:	07853783          	ld	a5,120(a0)
    80008678:	00079863          	bnez	a5,80008688 <pop_on+0x48>
    8000867c:	100027f3          	csrr	a5,sstatus
    80008680:	ffd7f793          	andi	a5,a5,-3
    80008684:	10079073          	csrw	sstatus,a5
    80008688:	00813083          	ld	ra,8(sp)
    8000868c:	00013403          	ld	s0,0(sp)
    80008690:	01010113          	addi	sp,sp,16
    80008694:	00008067          	ret
    80008698:	00001517          	auipc	a0,0x1
    8000869c:	ff050513          	addi	a0,a0,-16 # 80009688 <digits+0x70>
    800086a0:	fffff097          	auipc	ra,0xfffff
    800086a4:	f2c080e7          	jalr	-212(ra) # 800075cc <panic>
    800086a8:	00001517          	auipc	a0,0x1
    800086ac:	fc050513          	addi	a0,a0,-64 # 80009668 <digits+0x50>
    800086b0:	fffff097          	auipc	ra,0xfffff
    800086b4:	f1c080e7          	jalr	-228(ra) # 800075cc <panic>

00000000800086b8 <__memset>:
    800086b8:	ff010113          	addi	sp,sp,-16
    800086bc:	00813423          	sd	s0,8(sp)
    800086c0:	01010413          	addi	s0,sp,16
    800086c4:	1a060e63          	beqz	a2,80008880 <__memset+0x1c8>
    800086c8:	40a007b3          	neg	a5,a0
    800086cc:	0077f793          	andi	a5,a5,7
    800086d0:	00778693          	addi	a3,a5,7
    800086d4:	00b00813          	li	a6,11
    800086d8:	0ff5f593          	andi	a1,a1,255
    800086dc:	fff6071b          	addiw	a4,a2,-1
    800086e0:	1b06e663          	bltu	a3,a6,8000888c <__memset+0x1d4>
    800086e4:	1cd76463          	bltu	a4,a3,800088ac <__memset+0x1f4>
    800086e8:	1a078e63          	beqz	a5,800088a4 <__memset+0x1ec>
    800086ec:	00b50023          	sb	a1,0(a0)
    800086f0:	00100713          	li	a4,1
    800086f4:	1ae78463          	beq	a5,a4,8000889c <__memset+0x1e4>
    800086f8:	00b500a3          	sb	a1,1(a0)
    800086fc:	00200713          	li	a4,2
    80008700:	1ae78a63          	beq	a5,a4,800088b4 <__memset+0x1fc>
    80008704:	00b50123          	sb	a1,2(a0)
    80008708:	00300713          	li	a4,3
    8000870c:	18e78463          	beq	a5,a4,80008894 <__memset+0x1dc>
    80008710:	00b501a3          	sb	a1,3(a0)
    80008714:	00400713          	li	a4,4
    80008718:	1ae78263          	beq	a5,a4,800088bc <__memset+0x204>
    8000871c:	00b50223          	sb	a1,4(a0)
    80008720:	00500713          	li	a4,5
    80008724:	1ae78063          	beq	a5,a4,800088c4 <__memset+0x20c>
    80008728:	00b502a3          	sb	a1,5(a0)
    8000872c:	00700713          	li	a4,7
    80008730:	18e79e63          	bne	a5,a4,800088cc <__memset+0x214>
    80008734:	00b50323          	sb	a1,6(a0)
    80008738:	00700e93          	li	t4,7
    8000873c:	00859713          	slli	a4,a1,0x8
    80008740:	00e5e733          	or	a4,a1,a4
    80008744:	01059e13          	slli	t3,a1,0x10
    80008748:	01c76e33          	or	t3,a4,t3
    8000874c:	01859313          	slli	t1,a1,0x18
    80008750:	006e6333          	or	t1,t3,t1
    80008754:	02059893          	slli	a7,a1,0x20
    80008758:	40f60e3b          	subw	t3,a2,a5
    8000875c:	011368b3          	or	a7,t1,a7
    80008760:	02859813          	slli	a6,a1,0x28
    80008764:	0108e833          	or	a6,a7,a6
    80008768:	03059693          	slli	a3,a1,0x30
    8000876c:	003e589b          	srliw	a7,t3,0x3
    80008770:	00d866b3          	or	a3,a6,a3
    80008774:	03859713          	slli	a4,a1,0x38
    80008778:	00389813          	slli	a6,a7,0x3
    8000877c:	00f507b3          	add	a5,a0,a5
    80008780:	00e6e733          	or	a4,a3,a4
    80008784:	000e089b          	sext.w	a7,t3
    80008788:	00f806b3          	add	a3,a6,a5
    8000878c:	00e7b023          	sd	a4,0(a5)
    80008790:	00878793          	addi	a5,a5,8
    80008794:	fed79ce3          	bne	a5,a3,8000878c <__memset+0xd4>
    80008798:	ff8e7793          	andi	a5,t3,-8
    8000879c:	0007871b          	sext.w	a4,a5
    800087a0:	01d787bb          	addw	a5,a5,t4
    800087a4:	0ce88e63          	beq	a7,a4,80008880 <__memset+0x1c8>
    800087a8:	00f50733          	add	a4,a0,a5
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	0017871b          	addiw	a4,a5,1
    800087b4:	0cc77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	0027871b          	addiw	a4,a5,2
    800087c4:	0ac77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	0037871b          	addiw	a4,a5,3
    800087d4:	0ac77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	0047871b          	addiw	a4,a5,4
    800087e4:	08c77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	0057871b          	addiw	a4,a5,5
    800087f4:	08c77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	0067871b          	addiw	a4,a5,6
    80008804:	06c77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008808:	00e50733          	add	a4,a0,a4
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	0077871b          	addiw	a4,a5,7
    80008814:	06c77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	0087871b          	addiw	a4,a5,8
    80008824:	04c77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0097871b          	addiw	a4,a5,9
    80008834:	04c77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	00a7871b          	addiw	a4,a5,10
    80008844:	02c77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	00b7871b          	addiw	a4,a5,11
    80008854:	02c77663          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	00c7871b          	addiw	a4,a5,12
    80008864:	00c77e63          	bgeu	a4,a2,80008880 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	00d7879b          	addiw	a5,a5,13
    80008874:	00c7f663          	bgeu	a5,a2,80008880 <__memset+0x1c8>
    80008878:	00f507b3          	add	a5,a0,a5
    8000887c:	00b78023          	sb	a1,0(a5)
    80008880:	00813403          	ld	s0,8(sp)
    80008884:	01010113          	addi	sp,sp,16
    80008888:	00008067          	ret
    8000888c:	00b00693          	li	a3,11
    80008890:	e55ff06f          	j	800086e4 <__memset+0x2c>
    80008894:	00300e93          	li	t4,3
    80008898:	ea5ff06f          	j	8000873c <__memset+0x84>
    8000889c:	00100e93          	li	t4,1
    800088a0:	e9dff06f          	j	8000873c <__memset+0x84>
    800088a4:	00000e93          	li	t4,0
    800088a8:	e95ff06f          	j	8000873c <__memset+0x84>
    800088ac:	00000793          	li	a5,0
    800088b0:	ef9ff06f          	j	800087a8 <__memset+0xf0>
    800088b4:	00200e93          	li	t4,2
    800088b8:	e85ff06f          	j	8000873c <__memset+0x84>
    800088bc:	00400e93          	li	t4,4
    800088c0:	e7dff06f          	j	8000873c <__memset+0x84>
    800088c4:	00500e93          	li	t4,5
    800088c8:	e75ff06f          	j	8000873c <__memset+0x84>
    800088cc:	00600e93          	li	t4,6
    800088d0:	e6dff06f          	j	8000873c <__memset+0x84>

00000000800088d4 <__memmove>:
    800088d4:	ff010113          	addi	sp,sp,-16
    800088d8:	00813423          	sd	s0,8(sp)
    800088dc:	01010413          	addi	s0,sp,16
    800088e0:	0e060863          	beqz	a2,800089d0 <__memmove+0xfc>
    800088e4:	fff6069b          	addiw	a3,a2,-1
    800088e8:	0006881b          	sext.w	a6,a3
    800088ec:	0ea5e863          	bltu	a1,a0,800089dc <__memmove+0x108>
    800088f0:	00758713          	addi	a4,a1,7
    800088f4:	00a5e7b3          	or	a5,a1,a0
    800088f8:	40a70733          	sub	a4,a4,a0
    800088fc:	0077f793          	andi	a5,a5,7
    80008900:	00f73713          	sltiu	a4,a4,15
    80008904:	00174713          	xori	a4,a4,1
    80008908:	0017b793          	seqz	a5,a5
    8000890c:	00e7f7b3          	and	a5,a5,a4
    80008910:	10078863          	beqz	a5,80008a20 <__memmove+0x14c>
    80008914:	00900793          	li	a5,9
    80008918:	1107f463          	bgeu	a5,a6,80008a20 <__memmove+0x14c>
    8000891c:	0036581b          	srliw	a6,a2,0x3
    80008920:	fff8081b          	addiw	a6,a6,-1
    80008924:	02081813          	slli	a6,a6,0x20
    80008928:	01d85893          	srli	a7,a6,0x1d
    8000892c:	00858813          	addi	a6,a1,8
    80008930:	00058793          	mv	a5,a1
    80008934:	00050713          	mv	a4,a0
    80008938:	01088833          	add	a6,a7,a6
    8000893c:	0007b883          	ld	a7,0(a5)
    80008940:	00878793          	addi	a5,a5,8
    80008944:	00870713          	addi	a4,a4,8
    80008948:	ff173c23          	sd	a7,-8(a4)
    8000894c:	ff0798e3          	bne	a5,a6,8000893c <__memmove+0x68>
    80008950:	ff867713          	andi	a4,a2,-8
    80008954:	02071793          	slli	a5,a4,0x20
    80008958:	0207d793          	srli	a5,a5,0x20
    8000895c:	00f585b3          	add	a1,a1,a5
    80008960:	40e686bb          	subw	a3,a3,a4
    80008964:	00f507b3          	add	a5,a0,a5
    80008968:	06e60463          	beq	a2,a4,800089d0 <__memmove+0xfc>
    8000896c:	0005c703          	lbu	a4,0(a1)
    80008970:	00e78023          	sb	a4,0(a5)
    80008974:	04068e63          	beqz	a3,800089d0 <__memmove+0xfc>
    80008978:	0015c603          	lbu	a2,1(a1)
    8000897c:	00100713          	li	a4,1
    80008980:	00c780a3          	sb	a2,1(a5)
    80008984:	04e68663          	beq	a3,a4,800089d0 <__memmove+0xfc>
    80008988:	0025c603          	lbu	a2,2(a1)
    8000898c:	00200713          	li	a4,2
    80008990:	00c78123          	sb	a2,2(a5)
    80008994:	02e68e63          	beq	a3,a4,800089d0 <__memmove+0xfc>
    80008998:	0035c603          	lbu	a2,3(a1)
    8000899c:	00300713          	li	a4,3
    800089a0:	00c781a3          	sb	a2,3(a5)
    800089a4:	02e68663          	beq	a3,a4,800089d0 <__memmove+0xfc>
    800089a8:	0045c603          	lbu	a2,4(a1)
    800089ac:	00400713          	li	a4,4
    800089b0:	00c78223          	sb	a2,4(a5)
    800089b4:	00e68e63          	beq	a3,a4,800089d0 <__memmove+0xfc>
    800089b8:	0055c603          	lbu	a2,5(a1)
    800089bc:	00500713          	li	a4,5
    800089c0:	00c782a3          	sb	a2,5(a5)
    800089c4:	00e68663          	beq	a3,a4,800089d0 <__memmove+0xfc>
    800089c8:	0065c703          	lbu	a4,6(a1)
    800089cc:	00e78323          	sb	a4,6(a5)
    800089d0:	00813403          	ld	s0,8(sp)
    800089d4:	01010113          	addi	sp,sp,16
    800089d8:	00008067          	ret
    800089dc:	02061713          	slli	a4,a2,0x20
    800089e0:	02075713          	srli	a4,a4,0x20
    800089e4:	00e587b3          	add	a5,a1,a4
    800089e8:	f0f574e3          	bgeu	a0,a5,800088f0 <__memmove+0x1c>
    800089ec:	02069613          	slli	a2,a3,0x20
    800089f0:	02065613          	srli	a2,a2,0x20
    800089f4:	fff64613          	not	a2,a2
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00c78633          	add	a2,a5,a2
    80008a00:	fff7c683          	lbu	a3,-1(a5)
    80008a04:	fff78793          	addi	a5,a5,-1
    80008a08:	fff70713          	addi	a4,a4,-1
    80008a0c:	00d70023          	sb	a3,0(a4)
    80008a10:	fec798e3          	bne	a5,a2,80008a00 <__memmove+0x12c>
    80008a14:	00813403          	ld	s0,8(sp)
    80008a18:	01010113          	addi	sp,sp,16
    80008a1c:	00008067          	ret
    80008a20:	02069713          	slli	a4,a3,0x20
    80008a24:	02075713          	srli	a4,a4,0x20
    80008a28:	00170713          	addi	a4,a4,1
    80008a2c:	00e50733          	add	a4,a0,a4
    80008a30:	00050793          	mv	a5,a0
    80008a34:	0005c683          	lbu	a3,0(a1)
    80008a38:	00178793          	addi	a5,a5,1
    80008a3c:	00158593          	addi	a1,a1,1
    80008a40:	fed78fa3          	sb	a3,-1(a5)
    80008a44:	fee798e3          	bne	a5,a4,80008a34 <__memmove+0x160>
    80008a48:	f89ff06f          	j	800089d0 <__memmove+0xfc>
	...
