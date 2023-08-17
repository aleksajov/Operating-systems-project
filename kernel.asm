
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	93013103          	ld	sp,-1744(sp) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	081060ef          	jal	ra,8000689c <start>

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
    800010a8:	0b0010ef          	jal	ra,80002158 <_ZN5Riscv20handleEcallExceptionEv>

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
    800011b0:	33c010ef          	jal	ra,800024ec <_ZN5Riscv14timerInterruptEv>

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
    800012b8:	4a5000ef          	jal	ra,80001f5c <_ZN5Riscv17hardwareInterruptEv>

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
    8000176c:	7a8080e7          	jalr	1960(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
    newElem->t=t;
    80001770:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    newElem->next= nullptr;
    80001774:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	2287b783          	ld	a5,552(a5) # 8000b9a0 <_ZN9Scheduler5firstE>
    80001780:	02078663          	beqz	a5,800017ac <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	21c78793          	addi	a5,a5,540 # 8000b9a0 <_ZN9Scheduler5firstE>
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
    800017b0:	1f478793          	addi	a5,a5,500 # 8000b9a0 <_ZN9Scheduler5firstE>
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
    800017d8:	1cc53503          	ld	a0,460(a0) # 8000b9a0 <_ZN9Scheduler5firstE>
    800017dc:	04050263          	beqz	a0,80001820 <_ZN9Scheduler3getEv+0x60>

    Elem* elem=first;
    TCB* t=elem->t;
    800017e0:	00053483          	ld	s1,0(a0)

    first=first->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	0000a717          	auipc	a4,0xa
    800017ec:	1af73c23          	sd	a5,440(a4) # 8000b9a0 <_ZN9Scheduler5firstE>
    if(first==nullptr)last=nullptr;
    800017f0:	02078263          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x54>


    MemoryAllocator::free(elem);
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	7f0080e7          	jalr	2032(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>

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
    80001818:	1807ba23          	sd	zero,404(a5) # 8000b9a8 <_ZN9Scheduler4lastE>
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
    80001858:	4c0080e7          	jalr	1216(ra) # 80005d14 <_Z8userMainv>
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
    80001888:	8cc080e7          	jalr	-1844(ra) # 80003150 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    8000188c:	0000a797          	auipc	a5,0xa
    80001890:	0847b783          	ld	a5,132(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800018a4:	190080e7          	jalr	400(ra) # 80001a30 <_Znwm>
    800018a8:	00050493          	mv	s1,a0
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	364080e7          	jalr	868(ra) # 80002c10 <_ZN13BoundedBufferC1Ev>
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	09c7b783          	ld	a5,156(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018bc:	0097b023          	sd	s1,0(a5)
    _console::outputBuff=new BoundedBuffer();
    800018c0:	02000513          	li	a0,32
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	16c080e7          	jalr	364(ra) # 80001a30 <_Znwm>
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	340080e7          	jalr	832(ra) # 80002c10 <_ZN13BoundedBufferC1Ev>
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	0307b783          	ld	a5,48(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018e0:	0097b023          	sd	s1,0(a5)


    TCB::newThrUserMode=false;
    800018e4:	0000a497          	auipc	s1,0xa
    800018e8:	0544b483          	ld	s1,84(s1) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001908:	03c7b783          	ld	a5,60(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80001934:	fe85b583          	ld	a1,-24(a1) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001938:	fc840513          	addi	a0,s0,-56
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	af8080e7          	jalr	-1288(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>

    //thread_dispatch();

    TCB::newThrUserMode=true;
    80001944:	00100793          	li	a5,1
    80001948:	00f48023          	sb	a5,0(s1)
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);
    8000194c:	00000613          	li	a2,0
    80001950:	00000597          	auipc	a1,0x0
    80001954:	ef458593          	addi	a1,a1,-268 # 80001844 <_Z15userMainWrapperPv>
    80001958:	fc040513          	addi	a0,s0,-64
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	ad8080e7          	jalr	-1320(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001964:	00200793          	li	a5,2
    80001968:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while (!handleUserMain->isFinished()){
    8000196c:	fc043783          	ld	a5,-64(s0)
    void setBlocked(bool blocked) {
        TCB::blocked = blocked;
    }

    bool isFinished() const{
        return finished;
    80001970:	0307c783          	lbu	a5,48(a5)
    80001974:	00079863          	bnez	a5,80001984 <main+0x118>
        thread_dispatch();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	be4080e7          	jalr	-1052(ra) # 8000155c <_Z15thread_dispatchv>
    80001980:	fedff06f          	j	8000196c <main+0x100>
    }


    thread_dispatch();//da nit za ispis na konzolu odradi pre returna
    80001984:	00000097          	auipc	ra,0x0
    80001988:	bd8080e7          	jalr	-1064(ra) # 8000155c <_Z15thread_dispatchv>

    delete handleUserMain;
    8000198c:	fc043503          	ld	a0,-64(s0)
    80001990:	00050863          	beqz	a0,800019a0 <main+0x134>
    80001994:	00053783          	ld	a5,0(a0)
    80001998:	0087b783          	ld	a5,8(a5)
    8000199c:	000780e7          	jalr	a5
    delete handleIdle;
    800019a0:	fd043503          	ld	a0,-48(s0)
    800019a4:	00050863          	beqz	a0,800019b4 <main+0x148>
    800019a8:	00053783          	ld	a5,0(a0)
    800019ac:	0087b783          	ld	a5,8(a5)
    800019b0:	000780e7          	jalr	a5
    delete handleMain;
    800019b4:	fd843503          	ld	a0,-40(s0)
    800019b8:	00050863          	beqz	a0,800019c8 <main+0x15c>
    800019bc:	00053783          	ld	a5,0(a0)
    800019c0:	0087b783          	ld	a5,8(a5)
    800019c4:	000780e7          	jalr	a5
    delete handleConsumerConsole;
    800019c8:	fc843503          	ld	a0,-56(s0)
    800019cc:	00050863          	beqz	a0,800019dc <main+0x170>
    800019d0:	00053783          	ld	a5,0(a0)
    800019d4:	0087b783          	ld	a5,8(a5)
    800019d8:	000780e7          	jalr	a5

    //Scheduler::get();
    //Scheduler::get();

    return 0;
    800019dc:	00000513          	li	a0,0
    800019e0:	03813083          	ld	ra,56(sp)
    800019e4:	03013403          	ld	s0,48(sp)
    800019e8:	02813483          	ld	s1,40(sp)
    800019ec:	02013903          	ld	s2,32(sp)
    800019f0:	04010113          	addi	sp,sp,64
    800019f4:	00008067          	ret
    800019f8:	00050913          	mv	s2,a0
    _console::inputBuff=new BoundedBuffer();
    800019fc:	00048513          	mv	a0,s1
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	080080e7          	jalr	128(ra) # 80001a80 <_ZdlPv>
    80001a08:	00090513          	mv	a0,s2
    80001a0c:	0000b097          	auipc	ra,0xb
    80001a10:	0fc080e7          	jalr	252(ra) # 8000cb08 <_Unwind_Resume>
    80001a14:	00050913          	mv	s2,a0
    _console::outputBuff=new BoundedBuffer();
    80001a18:	00048513          	mv	a0,s1
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	064080e7          	jalr	100(ra) # 80001a80 <_ZdlPv>
    80001a24:	00090513          	mv	a0,s2
    80001a28:	0000b097          	auipc	ra,0xb
    80001a2c:	0e0080e7          	jalr	224(ra) # 8000cb08 <_Unwind_Resume>

0000000080001a30 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	974080e7          	jalr	-1676(ra) # 800013b4 <_Z9mem_allocm>
}
    80001a48:	00813083          	ld	ra,8(sp)
    80001a4c:	00013403          	ld	s0,0(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_Znam>:

void *operator new[](uint64 n)
{
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	94c080e7          	jalr	-1716(ra) # 800013b4 <_Z9mem_allocm>
}
    80001a70:	00813083          	ld	ra,8(sp)
    80001a74:	00013403          	ld	s0,0(sp)
    80001a78:	01010113          	addi	sp,sp,16
    80001a7c:	00008067          	ret

0000000080001a80 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	00813023          	sd	s0,0(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	964080e7          	jalr	-1692(ra) # 800013f4 <_Z8mem_freePv>
}
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	93c080e7          	jalr	-1732(ra) # 800013f4 <_Z8mem_freePv>
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN6Thread22wrapperPolymorphThreadEPv>:

#include "../h/syscall_cpp.hpp"
#include "../h/_sem.hpp"


void Thread::wrapperPolymorphThread(void* t){
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001ae0:	00053783          	ld	a5,0(a0)
    80001ae4:	0107b783          	ld	a5,16(a5)
    80001ae8:	000780e7          	jalr	a5
}
    80001aec:	00813083          	ld	ra,8(sp)
    80001af0:	00013403          	ld	s0,0(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001afc:	0000a797          	auipc	a5,0xa
    80001b00:	bbc78793          	addi	a5,a5,-1092 # 8000b6b8 <_ZTV6Thread+0x10>
    80001b04:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001b08:	00853503          	ld	a0,8(a0)
    80001b0c:	02050863          	beqz	a0,80001b3c <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001b20:	00053783          	ld	a5,0(a0)
    80001b24:	0087b783          	ld	a5,8(a5)
    80001b28:	000780e7          	jalr	a5
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret
    80001b3c:	00008067          	ret

0000000080001b40 <_ZN14PeriodicThreadD1Ev>:

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}

PeriodicThread::~PeriodicThread() {
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00113423          	sd	ra,8(sp)
    80001b48:	00813023          	sd	s0,0(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    80001b50:	0000a717          	auipc	a4,0xa
    80001b54:	bb070713          	addi	a4,a4,-1104 # 8000b700 <_ZTV14PeriodicThread+0x10>
    80001b58:	00e53023          	sd	a4,0(a0)
    period=0;
    80001b5c:	02053023          	sd	zero,32(a0)
PeriodicThread::~PeriodicThread() {
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	f9c080e7          	jalr	-100(ra) # 80001afc <_ZN6ThreadD1Ev>
}
    80001b68:	00813083          	ld	ra,8(sp)
    80001b6c:	00013403          	ld	s0,0(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	00913423          	sd	s1,8(sp)
    80001b88:	02010413          	addi	s0,sp,32
    80001b8c:	00050493          	mv	s1,a0
}
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	f6c080e7          	jalr	-148(ra) # 80001afc <_ZN6ThreadD1Ev>
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	ee4080e7          	jalr	-284(ra) # 80001a80 <_ZdlPv>
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret

0000000080001bb8 <_ZN14PeriodicThreadD0Ev>:
PeriodicThread::~PeriodicThread() {
    80001bb8:	fe010113          	addi	sp,sp,-32
    80001bbc:	00113c23          	sd	ra,24(sp)
    80001bc0:	00813823          	sd	s0,16(sp)
    80001bc4:	00913423          	sd	s1,8(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    80001bcc:	00050493          	mv	s1,a0
}
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	f70080e7          	jalr	-144(ra) # 80001b40 <_ZN14PeriodicThreadD1Ev>
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	ea4080e7          	jalr	-348(ra) # 80001a80 <_ZdlPv>
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	00813483          	ld	s1,8(sp)
    80001bf0:	02010113          	addi	sp,sp,32
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::run() {
    80001bf8:	fe010113          	addi	sp,sp,-32
    80001bfc:	00113c23          	sd	ra,24(sp)
    80001c00:	00813823          	sd	s0,16(sp)
    80001c04:	00913423          	sd	s1,8(sp)
    80001c08:	02010413          	addi	s0,sp,32
    80001c0c:	00050493          	mv	s1,a0
    while(period!=0){
    80001c10:	0204b783          	ld	a5,32(s1)
    80001c14:	02078263          	beqz	a5,80001c38 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001c18:	0004b783          	ld	a5,0(s1)
    80001c1c:	0187b783          	ld	a5,24(a5)
    80001c20:	00048513          	mv	a0,s1
    80001c24:	000780e7          	jalr	a5
        time_sleep(period);
    80001c28:	0204b503          	ld	a0,32(s1)
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	8b4080e7          	jalr	-1868(ra) # 800014e0 <_Z10time_sleepm>
    while(period!=0){
    80001c34:	fddff06f          	j	80001c10 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001c38:	01813083          	ld	ra,24(sp)
    80001c3c:	01013403          	ld	s0,16(sp)
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	00813023          	sd	s0,0(sp)
    80001c58:	01010413          	addi	s0,sp,16
    80001c5c:	0000a797          	auipc	a5,0xa
    80001c60:	a8478793          	addi	a5,a5,-1404 # 8000b6e0 <_ZTV9Semaphore+0x10>
    80001c64:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001c68:	00853503          	ld	a0,8(a0)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	990080e7          	jalr	-1648(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80001c74:	00813083          	ld	ra,8(sp)
    80001c78:	00013403          	ld	s0,0(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001c84:	fe010113          	addi	sp,sp,-32
    80001c88:	00113c23          	sd	ra,24(sp)
    80001c8c:	00813823          	sd	s0,16(sp)
    80001c90:	00913423          	sd	s1,8(sp)
    80001c94:	02010413          	addi	s0,sp,32
    80001c98:	00050493          	mv	s1,a0
}
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	fb0080e7          	jalr	-80(ra) # 80001c4c <_ZN9SemaphoreD1Ev>
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	dd8080e7          	jalr	-552(ra) # 80001a80 <_ZdlPv>
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00813483          	ld	s1,8(sp)
    80001cbc:	02010113          	addi	sp,sp,32
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    80001cd0:	0000a797          	auipc	a5,0xa
    80001cd4:	9e878793          	addi	a5,a5,-1560 # 8000b6b8 <_ZTV6Thread+0x10>
    80001cd8:	00f53023          	sd	a5,0(a0)
    80001cdc:	00053423          	sd	zero,8(a0)
    80001ce0:	00b53823          	sd	a1,16(a0)
    80001ce4:	00c53c23          	sd	a2,24(a0)
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN6Thread5startEv>:
int Thread::start() {
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001d04:	01853603          	ld	a2,24(a0)
    80001d08:	01053583          	ld	a1,16(a0)
    80001d0c:	00850513          	addi	a0,a0,8
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	724080e7          	jalr	1828(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	824080e7          	jalr	-2012(ra) # 8000155c <_Z15thread_dispatchv>
}
    80001d40:	00813083          	ld	ra,8(sp)
    80001d44:	00013403          	ld	s0,0(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg(this) {}
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    80001d5c:	0000a797          	auipc	a5,0xa
    80001d60:	95c78793          	addi	a5,a5,-1700 # 8000b6b8 <_ZTV6Thread+0x10>
    80001d64:	00f53023          	sd	a5,0(a0)
    80001d68:	00053423          	sd	zero,8(a0)
    80001d6c:	00000797          	auipc	a5,0x0
    80001d70:	d6478793          	addi	a5,a5,-668 # 80001ad0 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80001d74:	00f53823          	sd	a5,16(a0)
    80001d78:	00a53c23          	sd	a0,24(a0)
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001d98:	00853503          	ld	a0,8(a0)
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	7ec080e7          	jalr	2028(ra) # 80001588 <_Z11thread_joinP3TCB>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	71c080e7          	jalr	1820(ra) # 800014e0 <_Z10time_sleepm>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00113423          	sd	ra,8(sp)
    80001de4:	00813023          	sd	s0,0(sp)
    80001de8:	01010413          	addi	s0,sp,16
    80001dec:	0000a797          	auipc	a5,0xa
    80001df0:	8f478793          	addi	a5,a5,-1804 # 8000b6e0 <_ZTV9Semaphore+0x10>
    80001df4:	00f53023          	sd	a5,0(a0)
    80001df8:	00053423          	sd	zero,8(a0)
    sem_open(&this->myHandle, init);
    80001dfc:	00850513          	addi	a0,a0,8
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	7b8080e7          	jalr	1976(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e28:	00853503          	ld	a0,8(a0)
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	81c080e7          	jalr	-2020(ra) # 80001648 <_Z8sem_waitP4_sem>
}
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e54:	00853503          	ld	a0,8(a0)
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	83c080e7          	jalr	-1988(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    period=0;
    80001e7c:	02053023          	sd	zero,32(a0)
}
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001e8c:	fe010113          	addi	sp,sp,-32
    80001e90:	00113c23          	sd	ra,24(sp)
    80001e94:	00813823          	sd	s0,16(sp)
    80001e98:	00913423          	sd	s1,8(sp)
    80001e9c:	01213023          	sd	s2,0(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00050493          	mv	s1,a0
    80001ea8:	00058913          	mv	s2,a1
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	ea4080e7          	jalr	-348(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80001eb4:	0000a797          	auipc	a5,0xa
    80001eb8:	84c78793          	addi	a5,a5,-1972 # 8000b700 <_ZTV14PeriodicThread+0x10>
    80001ebc:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80001ec0:	0324b023          	sd	s2,32(s1)
}
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	00013903          	ld	s2,0(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret

0000000080001edc <_ZN7Console4getcEv>:

char Console::getc() {
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    return ::getc();
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	7f4080e7          	jalr	2036(ra) # 800016e0 <_Z4getcv>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00113423          	sd	ra,8(sp)
    80001f0c:	00813023          	sd	s0,0(sp)
    80001f10:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	808080e7          	jalr	-2040(ra) # 8000171c <_Z4putcc>
}
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00813423          	sd	s0,8(sp)
    80001f34:	01010413          	addi	s0,sp,16
    80001f38:	00813403          	ld	s0,8(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00813423          	sd	s0,8(sp)
    80001f4c:	01010413          	addi	s0,sp,16
    80001f50:	00813403          	ld	s0,8(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN5Riscv17hardwareInterruptEv>:
        }
        mc_sip(SIP_SSIP);
    }
}

void Riscv::hardwareInterrupt() {
    80001f5c:	fd010113          	addi	sp,sp,-48
    80001f60:	02113423          	sd	ra,40(sp)
    80001f64:	02813023          	sd	s0,32(sp)
    80001f68:	00913c23          	sd	s1,24(sp)
    80001f6c:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001f70:	142027f3          	csrr	a5,scause
    80001f74:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001f78:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000009UL){
        //prekid konzola
        console_handler();
    }*/
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80001f7c:	fff00793          	li	a5,-1
    80001f80:	03f79793          	slli	a5,a5,0x3f
    80001f84:	00978793          	addi	a5,a5,9
    80001f88:	00f70c63          	beq	a4,a5,80001fa0 <_ZN5Riscv17hardwareInterruptEv+0x44>
            }
        }

        plic_complete(intNumber);
    }
}
    80001f8c:	02813083          	ld	ra,40(sp)
    80001f90:	02013403          	ld	s0,32(sp)
    80001f94:	01813483          	ld	s1,24(sp)
    80001f98:	03010113          	addi	sp,sp,48
    80001f9c:	00008067          	ret
        int intNumber=plic_claim();
    80001fa0:	00005097          	auipc	ra,0x5
    80001fa4:	154080e7          	jalr	340(ra) # 800070f4 <plic_claim>
    80001fa8:	00050493          	mv	s1,a0
        if(intNumber==CONSOLE_IRQ){
    80001fac:	00a00793          	li	a5,10
    80001fb0:	00f50a63          	beq	a0,a5,80001fc4 <_ZN5Riscv17hardwareInterruptEv+0x68>
        plic_complete(intNumber);
    80001fb4:	00048513          	mv	a0,s1
    80001fb8:	00005097          	auipc	ra,0x5
    80001fbc:	174080e7          	jalr	372(ra) # 8000712c <plic_complete>
}
    80001fc0:	fcdff06f          	j	80001f8c <_ZN5Riscv17hardwareInterruptEv+0x30>
            while((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80001fc4:	0000a797          	auipc	a5,0xa
    80001fc8:	9347b783          	ld	a5,-1740(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001fcc:	0007b783          	ld	a5,0(a5)
    80001fd0:	0007c783          	lbu	a5,0(a5)
    80001fd4:	0017f793          	andi	a5,a5,1
    80001fd8:	fc078ee3          	beqz	a5,80001fb4 <_ZN5Riscv17hardwareInterruptEv+0x58>
                char c= *(char*)CONSOLE_RX_DATA;
    80001fdc:	0000a797          	auipc	a5,0xa
    80001fe0:	9147b783          	ld	a5,-1772(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001fe4:	0007b783          	ld	a5,0(a5)
                _console::inputBuff_put(c);
    80001fe8:	0007c503          	lbu	a0,0(a5)
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	dbc080e7          	jalr	-580(ra) # 80002da8 <_ZN8_console13inputBuff_putEc>
            while((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80001ff4:	fd1ff06f          	j	80001fc4 <_ZN5Riscv17hardwareInterruptEv+0x68>

0000000080001ff8 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002004:	02000793          	li	a5,32
    80002008:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(SSTATUS_SPIE);
    if(TCB::running->userMode){
    8000200c:	0000a797          	auipc	a5,0xa
    80002010:	9347b783          	ld	a5,-1740(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	0427c783          	lbu	a5,66(a5)
    8000201c:	02078063          	beqz	a5,8000203c <_ZN5Riscv10popSppSpieEv+0x44>
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002020:	10000793          	li	a5,256
    80002024:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    80002028:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000202c:	10200073          	sret
}
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    8000203c:	10000793          	li	a5,256
    80002040:	1007a073          	csrs	sstatus,a5
}
    80002044:	fe5ff06f          	j	80002028 <_ZN5Riscv10popSppSpieEv+0x30>

0000000080002048 <_ZN5Riscv10putToSleepEm>:


int Riscv::putToSleep(time_t time) {
    if(time<=0)return -1;
    80002048:	10050463          	beqz	a0,80002150 <_ZN5Riscv10putToSleepEm+0x108>
int Riscv::putToSleep(time_t time) {
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	01213023          	sd	s2,0(sp)
    80002060:	02010413          	addi	s0,sp,32
    80002064:	00050493          	mv	s1,a0
    TCB::running->setSleeping(true);
    80002068:	0000a917          	auipc	s2,0xa
    8000206c:	8d893903          	ld	s2,-1832(s2) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002070:	00093783          	ld	a5,0(s2)
    bool isSleeping() const {
        return sleeping;
    }

    void setSleeping(bool sleeping) {
        TCB::sleeping = sleeping;
    80002074:	00100713          	li	a4,1
    80002078:	04e780a3          	sb	a4,65(a5)

    SleepingElem* newElem=(SleepingElem*)MemoryAllocator::alloc((sizeof(SleepingElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    8000207c:	00100513          	li	a0,1
    80002080:	00001097          	auipc	ra,0x1
    80002084:	e90080e7          	jalr	-368(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
    newElem->thr=TCB::running;
    80002088:	00093783          	ld	a5,0(s2)
    8000208c:	00f53023          	sd	a5,0(a0)

    if(!Riscv::headSleeping){
    80002090:	0000a617          	auipc	a2,0xa
    80002094:	92063603          	ld	a2,-1760(a2) # 8000b9b0 <_ZN5Riscv12headSleepingE>
    80002098:	04060c63          	beqz	a2,800020f0 <_ZN5Riscv10putToSleepEm+0xa8>
        newElem->toSleepRel=time;
        newElem->next=nullptr;
        headSleeping=newElem;
    }
    else{
        if(time<=Riscv::headSleeping->toSleepRel){
    8000209c:	00863703          	ld	a4,8(a2)
    800020a0:	06976263          	bltu	a4,s1,80002104 <_ZN5Riscv10putToSleepEm+0xbc>
            newElem->toSleepRel=time;
    800020a4:	00953423          	sd	s1,8(a0)
            newElem->next=Riscv::headSleeping;
    800020a8:	00c53823          	sd	a2,16(a0)
            headSleeping->toSleepRel-=time;
    800020ac:	00863703          	ld	a4,8(a2)
    800020b0:	40970733          	sub	a4,a4,s1
    800020b4:	00e63423          	sd	a4,8(a2)
            headSleeping=newElem;
    800020b8:	0000a797          	auipc	a5,0xa
    800020bc:	8ea7bc23          	sd	a0,-1800(a5) # 8000b9b0 <_ZN5Riscv12headSleepingE>
            newElem->toSleepRel=relTime;
            prev->next=newElem;
        }
    }

    TCB::timeSliceCounter=0;
    800020c0:	0000a797          	auipc	a5,0xa
    800020c4:	8607b783          	ld	a5,-1952(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x38>
    800020c8:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	5dc080e7          	jalr	1500(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    return 0;
    800020d4:	00000513          	li	a0,0
}
    800020d8:	01813083          	ld	ra,24(sp)
    800020dc:	01013403          	ld	s0,16(sp)
    800020e0:	00813483          	ld	s1,8(sp)
    800020e4:	00013903          	ld	s2,0(sp)
    800020e8:	02010113          	addi	sp,sp,32
    800020ec:	00008067          	ret
        newElem->toSleepRel=time;
    800020f0:	00953423          	sd	s1,8(a0)
        newElem->next=nullptr;
    800020f4:	00053823          	sd	zero,16(a0)
        headSleeping=newElem;
    800020f8:	0000a797          	auipc	a5,0xa
    800020fc:	8aa7bc23          	sd	a0,-1864(a5) # 8000b9b0 <_ZN5Riscv12headSleepingE>
    80002100:	fc1ff06f          	j	800020c0 <_ZN5Riscv10putToSleepEm+0x78>
            time_t relTime=time-Riscv::headSleeping->toSleepRel;
    80002104:	40e48733          	sub	a4,s1,a4
            SleepingElem* pom=headSleeping->next;
    80002108:	01063783          	ld	a5,16(a2)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    8000210c:	00078e63          	beqz	a5,80002128 <_ZN5Riscv10putToSleepEm+0xe0>
    80002110:	0087b683          	ld	a3,8(a5)
    80002114:	00e6fa63          	bgeu	a3,a4,80002128 <_ZN5Riscv10putToSleepEm+0xe0>
                relTime-=pom->toSleepRel;
    80002118:	40d70733          	sub	a4,a4,a3
                prev=pom;
    8000211c:	00078613          	mv	a2,a5
                pom=pom->next;
    80002120:	0107b783          	ld	a5,16(a5)
            while(pom!=nullptr && relTime>pom->toSleepRel){
    80002124:	fe9ff06f          	j	8000210c <_ZN5Riscv10putToSleepEm+0xc4>
            if(pom==nullptr){
    80002128:	02078063          	beqz	a5,80002148 <_ZN5Riscv10putToSleepEm+0x100>
                newElem->next=pom;
    8000212c:	00f53823          	sd	a5,16(a0)
                pom->toSleepRel-=relTime;
    80002130:	0087b683          	ld	a3,8(a5)
    80002134:	40e686b3          	sub	a3,a3,a4
    80002138:	00d7b423          	sd	a3,8(a5)
            newElem->toSleepRel=relTime;
    8000213c:	00e53423          	sd	a4,8(a0)
            prev->next=newElem;
    80002140:	00a63823          	sd	a0,16(a2)
    80002144:	f7dff06f          	j	800020c0 <_ZN5Riscv10putToSleepEm+0x78>
                newElem->next= nullptr;
    80002148:	00053823          	sd	zero,16(a0)
    8000214c:	ff1ff06f          	j	8000213c <_ZN5Riscv10putToSleepEm+0xf4>
    if(time<=0)return -1;
    80002150:	fff00513          	li	a0,-1
}
    80002154:	00008067          	ret

0000000080002158 <_ZN5Riscv20handleEcallExceptionEv>:
void Riscv::handleEcallException(){
    80002158:	f9010113          	addi	sp,sp,-112
    8000215c:	06113423          	sd	ra,104(sp)
    80002160:	06813023          	sd	s0,96(sp)
    80002164:	04913c23          	sd	s1,88(sp)
    80002168:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    8000216c:	142027f3          	csrr	a5,scause
    80002170:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002174:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    80002178:	05043783          	ld	a5,80(s0)
    8000217c:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    80002180:	05843783          	ld	a5,88(s0)
    80002184:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    80002188:	06043783          	ld	a5,96(s0)
    8000218c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    80002190:	06843783          	ld	a5,104(s0)
    80002194:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    80002198:	07043783          	ld	a5,112(s0)
    8000219c:	faf43c23          	sd	a5,-72(s0)
    if(scause==0x09UL || scause==0x08UL){
    800021a0:	ff848713          	addi	a4,s1,-8
    800021a4:	00100793          	li	a5,1
    800021a8:	22e7e263          	bltu	a5,a4,800023cc <_ZN5Riscv20handleEcallExceptionEv+0x274>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800021ac:	141027f3          	csrr	a5,sepc
    800021b0:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800021b4:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc=r_sepc()+4;
    800021b8:	00478793          	addi	a5,a5,4
    800021bc:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800021c0:	100027f3          	csrr	a5,sstatus
    800021c4:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800021c8:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus=r_sstatus();
    800021cc:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    800021d0:	fd843703          	ld	a4,-40(s0)
    800021d4:	00100793          	li	a5,1
    800021d8:	0af70463          	beq	a4,a5,80002280 <_ZN5Riscv20handleEcallExceptionEv+0x128>
        else if(a0==0x02){
    800021dc:	fd843703          	ld	a4,-40(s0)
    800021e0:	00200793          	li	a5,2
    800021e4:	0cf70863          	beq	a4,a5,800022b4 <_ZN5Riscv20handleEcallExceptionEv+0x15c>
        else if(a0==0x11){
    800021e8:	fd843703          	ld	a4,-40(s0)
    800021ec:	01100793          	li	a5,17
    800021f0:	0cf70c63          	beq	a4,a5,800022c8 <_ZN5Riscv20handleEcallExceptionEv+0x170>
        else if(a0==0x12){
    800021f4:	fd843703          	ld	a4,-40(s0)
    800021f8:	01200793          	li	a5,18
    800021fc:	10f70263          	beq	a4,a5,80002300 <_ZN5Riscv20handleEcallExceptionEv+0x1a8>
        else if(a0==0x13){
    80002200:	fd843703          	ld	a4,-40(s0)
    80002204:	01300793          	li	a5,19
    80002208:	10f70463          	beq	a4,a5,80002310 <_ZN5Riscv20handleEcallExceptionEv+0x1b8>
        else if(a0==0x41){
    8000220c:	fd843703          	ld	a4,-40(s0)
    80002210:	04100793          	li	a5,65
    80002214:	10f70a63          	beq	a4,a5,80002328 <_ZN5Riscv20handleEcallExceptionEv+0x1d0>
        else if(a0==0x42){
    80002218:	fd843703          	ld	a4,-40(s0)
    8000221c:	04200793          	li	a5,66
    80002220:	10f70c63          	beq	a4,a5,80002338 <_ZN5Riscv20handleEcallExceptionEv+0x1e0>
        else if(a0==0x21){
    80002224:	fd843703          	ld	a4,-40(s0)
    80002228:	02100793          	li	a5,33
    8000222c:	12f70063          	beq	a4,a5,8000234c <_ZN5Riscv20handleEcallExceptionEv+0x1f4>
        else if(a0==0x23){
    80002230:	fd843703          	ld	a4,-40(s0)
    80002234:	02300793          	li	a5,35
    80002238:	14f70463          	beq	a4,a5,80002380 <_ZN5Riscv20handleEcallExceptionEv+0x228>
        else if(a0==0x22){
    8000223c:	fd843703          	ld	a4,-40(s0)
    80002240:	02200793          	li	a5,34
    80002244:	14f70863          	beq	a4,a5,80002394 <_ZN5Riscv20handleEcallExceptionEv+0x23c>
        else if(a0==0x24){
    80002248:	fd843703          	ld	a4,-40(s0)
    8000224c:	02400793          	li	a5,36
    80002250:	14f70c63          	beq	a4,a5,800023a8 <_ZN5Riscv20handleEcallExceptionEv+0x250>
        else if(a0==0x14){
    80002254:	fd843703          	ld	a4,-40(s0)
    80002258:	01400793          	li	a5,20
    8000225c:	16f70063          	beq	a4,a5,800023bc <_ZN5Riscv20handleEcallExceptionEv+0x264>
        else if(a0==0x31){
    80002260:	fd843703          	ld	a4,-40(s0)
    80002264:	03100793          	li	a5,49
    80002268:	02f71463          	bne	a4,a5,80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            time_t time=(time_t)a1;
    8000226c:	fd043503          	ld	a0,-48(s0)
            int stat=Riscv::putToSleep(time);
    80002270:	00000097          	auipc	ra,0x0
    80002274:	dd8080e7          	jalr	-552(ra) # 80002048 <_ZN5Riscv10putToSleepEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002278:	04a43823          	sd	a0,80(s0)
    8000227c:	0140006f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            void *ptr=MemoryAllocator::alloc(a1);
    80002280:	fd043503          	ld	a0,-48(s0)
    80002284:	00001097          	auipc	ra,0x1
    80002288:	c8c080e7          	jalr	-884(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    8000228c:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002290:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002294:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002298:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    8000229c:	14179073          	csrw	sepc,a5
}
    800022a0:	06813083          	ld	ra,104(sp)
    800022a4:	06013403          	ld	s0,96(sp)
    800022a8:	05813483          	ld	s1,88(sp)
    800022ac:	07010113          	addi	sp,sp,112
    800022b0:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    800022b4:	fd043503          	ld	a0,-48(s0)
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	d2c080e7          	jalr	-724(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800022c0:	04a43823          	sd	a0,80(s0)
    800022c4:	fcdff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB* handle= TCB::createThread((TCB::Body)a2, (char*)a4, (void*)a3);
    800022c8:	fc843503          	ld	a0,-56(s0)
    800022cc:	fb843583          	ld	a1,-72(s0)
    800022d0:	fc043603          	ld	a2,-64(s0)
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	510080e7          	jalr	1296(ra) # 800027e4 <_ZN3TCB12createThreadEPFvPvEPcS0_>
            if(!handle){
    800022dc:	00050c63          	beqz	a0,800022f4 <_ZN5Riscv20handleEcallExceptionEv+0x19c>
                TCB** retHandle=(TCB**)a1;
    800022e0:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    800022e4:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    800022e8:	00000793          	li	a5,0
    800022ec:	04f43823          	sd	a5,80(s0)
    800022f0:	fa1ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    800022f4:	fff00793          	li	a5,-1
    800022f8:	04f43823          	sd	a5,80(s0)
    800022fc:	f95ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            int stat=TCB::exit();
    80002300:	00000097          	auipc	ra,0x0
    80002304:	5a4080e7          	jalr	1444(ra) # 800028a4 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002308:	04a43823          	sd	a0,80(s0)
    8000230c:	f85ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::timeSliceCounter=0;
    80002310:	00009797          	auipc	a5,0x9
    80002314:	6107b783          	ld	a5,1552(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002318:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	38c080e7          	jalr	908(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    80002324:	f6dff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=_console::inputBuff_get();
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	ab4080e7          	jalr	-1356(ra) # 80002ddc <_ZN8_console13inputBuff_getEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    80002330:	04a43823          	sd	a0,80(s0)
    80002334:	f5dff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            char c=(char)a1;
    80002338:	fd043503          	ld	a0,-48(s0)
            _console::outputBuff_put(c);
    8000233c:	0ff57513          	andi	a0,a0,255
    80002340:	00001097          	auipc	ra,0x1
    80002344:	acc080e7          	jalr	-1332(ra) # 80002e0c <_ZN8_console14outputBuff_putEc>
    80002348:	f49ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=_sem::open((int)a2);
    8000234c:	fc843503          	ld	a0,-56(s0)
    80002350:	0005051b          	sext.w	a0,a0
    80002354:	00000097          	auipc	ra,0x0
    80002358:	61c080e7          	jalr	1564(ra) # 80002970 <_ZN4_sem4openEi>
            if(!handle){
    8000235c:	00050c63          	beqz	a0,80002374 <_ZN5Riscv20handleEcallExceptionEv+0x21c>
                _sem** retHandle=(_sem**)a1;
    80002360:	fd043703          	ld	a4,-48(s0)
                *retHandle=handle;
    80002364:	00a73023          	sd	a0,0(a4)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002368:	00000793          	li	a5,0
    8000236c:	04f43823          	sd	a5,80(s0)
    80002370:	f21ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80002374:	fff00793          	li	a5,-1
    80002378:	04f43823          	sd	a5,80(s0)
    8000237c:	f15ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002380:	fd043503          	ld	a0,-48(s0)
            int stat=handle->wait();
    80002384:	00000097          	auipc	ra,0x0
    80002388:	6e8080e7          	jalr	1768(ra) # 80002a6c <_ZN4_sem4waitEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    8000238c:	04a43823          	sd	a0,80(s0)
    80002390:	f01ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    80002394:	fd043503          	ld	a0,-48(s0)
            int stat=handle->close();
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	808080e7          	jalr	-2040(ra) # 80002ba0 <_ZN4_sem5closeEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023a0:	04a43823          	sd	a0,80(s0)
    800023a4:	eedff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            _sem* handle=(_sem*) a1;
    800023a8:	fd043503          	ld	a0,-48(s0)
            int stat=handle->signal();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	79c080e7          	jalr	1948(ra) # 80002b48 <_ZN4_sem6signalEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800023b4:	04a43823          	sd	a0,80(s0)
    800023b8:	ed9ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
            TCB::join((TCB*)a1);
    800023bc:	fd043503          	ld	a0,-48(s0)
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	538080e7          	jalr	1336(ra) # 800028f8 <_ZN3TCB4joinEPS_>
    800023c8:	ec9ff06f          	j	80002290 <_ZN5Riscv20handleEcallExceptionEv+0x138>
        printString("GRESKA:");
    800023cc:	00007517          	auipc	a0,0x7
    800023d0:	c5450513          	addi	a0,a0,-940 # 80009020 <CONSOLE_STATUS+0x10>
    800023d4:	00003097          	auipc	ra,0x3
    800023d8:	278080e7          	jalr	632(ra) # 8000564c <_Z11printStringPKc>
        printInt(scause);
    800023dc:	00000613          	li	a2,0
    800023e0:	00a00593          	li	a1,10
    800023e4:	0004851b          	sext.w	a0,s1
    800023e8:	00003097          	auipc	ra,0x3
    800023ec:	414080e7          	jalr	1044(ra) # 800057fc <_Z8printIntiii>
        printString("\nsepc:");
    800023f0:	00007517          	auipc	a0,0x7
    800023f4:	c3850513          	addi	a0,a0,-968 # 80009028 <CONSOLE_STATUS+0x18>
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	254080e7          	jalr	596(ra) # 8000564c <_Z11printStringPKc>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002400:	141027f3          	csrr	a5,sepc
    80002404:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002408:	fb043503          	ld	a0,-80(s0)
        printInt(r_sepc());
    8000240c:	00000613          	li	a2,0
    80002410:	00a00593          	li	a1,10
    80002414:	0005051b          	sext.w	a0,a0
    80002418:	00003097          	auipc	ra,0x3
    8000241c:	3e4080e7          	jalr	996(ra) # 800057fc <_Z8printIntiii>
        printString("\n");
    80002420:	00007517          	auipc	a0,0x7
    80002424:	f5850513          	addi	a0,a0,-168 # 80009378 <CONSOLE_STATUS+0x368>
    80002428:	00003097          	auipc	ra,0x3
    8000242c:	224080e7          	jalr	548(ra) # 8000564c <_Z11printStringPKc>
        while(true){
    80002430:	0000006f          	j	80002430 <_ZN5Riscv20handleEcallExceptionEv+0x2d8>

0000000080002434 <_ZN5Riscv18updateSleepingListEv>:

void Riscv::updateSleepingList() {
    if(headSleeping!=nullptr){
    80002434:	00009797          	auipc	a5,0x9
    80002438:	57c7b783          	ld	a5,1404(a5) # 8000b9b0 <_ZN5Riscv12headSleepingE>
    8000243c:	00078a63          	beqz	a5,80002450 <_ZN5Riscv18updateSleepingListEv+0x1c>
        if(--headSleeping->toSleepRel==0){
    80002440:	0087b703          	ld	a4,8(a5)
    80002444:	fff70713          	addi	a4,a4,-1
    80002448:	00e7b423          	sd	a4,8(a5)
    8000244c:	00070463          	beqz	a4,80002454 <_ZN5Riscv18updateSleepingListEv+0x20>
    80002450:	00008067          	ret
void Riscv::updateSleepingList() {
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00113423          	sd	ra,8(sp)
    8000245c:	00813023          	sd	s0,0(sp)
    80002460:	01010413          	addi	s0,sp,16
            headSleeping->thr->setSleeping(false);
    80002464:	0007b703          	ld	a4,0(a5)
    80002468:	040700a3          	sb	zero,65(a4)
            Scheduler::put(headSleeping->thr);
    8000246c:	0007b503          	ld	a0,0(a5)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	2dc080e7          	jalr	732(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
            SleepingElem* old=headSleeping;
    80002478:	00009797          	auipc	a5,0x9
    8000247c:	53878793          	addi	a5,a5,1336 # 8000b9b0 <_ZN5Riscv12headSleepingE>
    80002480:	0007b503          	ld	a0,0(a5)
            headSleeping=headSleeping->next;
    80002484:	01053703          	ld	a4,16(a0)
    80002488:	00e7b023          	sd	a4,0(a5)
            MemoryAllocator::free(old);
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	b58080e7          	jalr	-1192(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    80002494:	00009797          	auipc	a5,0x9
    80002498:	51c7b783          	ld	a5,1308(a5) # 8000b9b0 <_ZN5Riscv12headSleepingE>
    8000249c:	04078063          	beqz	a5,800024dc <_ZN5Riscv18updateSleepingListEv+0xa8>
    800024a0:	0087b703          	ld	a4,8(a5)
    800024a4:	02071c63          	bnez	a4,800024dc <_ZN5Riscv18updateSleepingListEv+0xa8>
                headSleeping->thr->setSleeping(false);
    800024a8:	0007b703          	ld	a4,0(a5)
    800024ac:	040700a3          	sb	zero,65(a4)
                Scheduler::put(headSleeping->thr);
    800024b0:	0007b503          	ld	a0,0(a5)
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	298080e7          	jalr	664(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
                old=headSleeping;
    800024bc:	00009797          	auipc	a5,0x9
    800024c0:	4f478793          	addi	a5,a5,1268 # 8000b9b0 <_ZN5Riscv12headSleepingE>
    800024c4:	0007b503          	ld	a0,0(a5)
                headSleeping=headSleeping->next;
    800024c8:	01053703          	ld	a4,16(a0)
    800024cc:	00e7b023          	sd	a4,0(a5)
                MemoryAllocator::free(old);
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	b14080e7          	jalr	-1260(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
            while(headSleeping!=nullptr && headSleeping->toSleepRel==0){
    800024d8:	fbdff06f          	j	80002494 <_ZN5Riscv18updateSleepingListEv+0x60>
            }
        }
    }
}
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_ZN5Riscv14timerInterruptEv>:
void Riscv::timerInterrupt() {
    800024ec:	fc010113          	addi	sp,sp,-64
    800024f0:	02113c23          	sd	ra,56(sp)
    800024f4:	02813823          	sd	s0,48(sp)
    800024f8:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800024fc:	142027f3          	csrr	a5,scause
    80002500:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80002504:	fd843703          	ld	a4,-40(s0)
    if(scause==0x8000000000000001UL){
    80002508:	fff00793          	li	a5,-1
    8000250c:	03f79793          	slli	a5,a5,0x3f
    80002510:	00178793          	addi	a5,a5,1
    80002514:	00f70a63          	beq	a4,a5,80002528 <_ZN5Riscv14timerInterruptEv+0x3c>
}
    80002518:	03813083          	ld	ra,56(sp)
    8000251c:	03013403          	ld	s0,48(sp)
    80002520:	04010113          	addi	sp,sp,64
    80002524:	00008067          	ret
        updateSleepingList();
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	f0c080e7          	jalr	-244(ra) # 80002434 <_ZN5Riscv18updateSleepingListEv>
        TCB::timeSliceCounter++;
    80002530:	00009717          	auipc	a4,0x9
    80002534:	3f073703          	ld	a4,1008(a4) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002538:	00073783          	ld	a5,0(a4)
    8000253c:	00178793          	addi	a5,a5,1
    80002540:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    80002544:	00009717          	auipc	a4,0x9
    80002548:	3fc73703          	ld	a4,1020(a4) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000254c:	00073703          	ld	a4,0(a4)
        return timeSlice;
    80002550:	02873703          	ld	a4,40(a4)
    80002554:	00e7f863          	bgeu	a5,a4,80002564 <_ZN5Riscv14timerInterruptEv+0x78>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    80002558:	00200793          	li	a5,2
    8000255c:	1447b073          	csrc	sip,a5
}
    80002560:	fb9ff06f          	j	80002518 <_ZN5Riscv14timerInterruptEv+0x2c>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002564:	141027f3          	csrr	a5,sepc
    80002568:	fef43423          	sd	a5,-24(s0)
    return sepc;
    8000256c:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc=r_sepc();
    80002570:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002574:	100027f3          	csrr	a5,sstatus
    80002578:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    8000257c:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus=r_sstatus();
    80002580:	fcf43823          	sd	a5,-48(s0)
            TCB::timeSliceCounter=0;
    80002584:	00009797          	auipc	a5,0x9
    80002588:	39c7b783          	ld	a5,924(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000258c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002590:	00000097          	auipc	ra,0x0
    80002594:	118080e7          	jalr	280(ra) # 800026a8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002598:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    8000259c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800025a0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800025a4:	14179073          	csrw	sepc,a5
}
    800025a8:	fb1ff06f          	j	80002558 <_ZN5Riscv14timerInterruptEv+0x6c>

00000000800025ac <_ZN3TCBD1Ev>:
                                     userMode(TCB::newThrUserMode)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	18478793          	addi	a5,a5,388 # 8000b730 <_ZTV3TCB+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    800025b8:	01053503          	ld	a0,16(a0)
    800025bc:	02050663          	beqz	a0,800025e8 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	01010413          	addi	s0,sp,16
    delete[] stack;
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	4d8080e7          	jalr	1240(ra) # 80001aa8 <_ZdaPv>
}
    800025d8:	00813083          	ld	ra,8(sp)
    800025dc:	00013403          	ld	s0,0(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret
    800025e8:	00008067          	ret

00000000800025ec <_ZN3TCBD0Ev>:
TCB::~TCB() {
    800025ec:	fe010113          	addi	sp,sp,-32
    800025f0:	00113c23          	sd	ra,24(sp)
    800025f4:	00813823          	sd	s0,16(sp)
    800025f8:	00913423          	sd	s1,8(sp)
    800025fc:	02010413          	addi	s0,sp,32
    80002600:	00050493          	mv	s1,a0
}
    80002604:	00000097          	auipc	ra,0x0
    80002608:	fa8080e7          	jalr	-88(ra) # 800025ac <_ZN3TCBD1Ev>
    8000260c:	00048513          	mv	a0,s1
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	470080e7          	jalr	1136(ra) # 80001a80 <_ZdlPv>
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret

000000008000262c <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    8000262c:	fe010113          	addi	sp,sp,-32
    80002630:	00113c23          	sd	ra,24(sp)
    80002634:	00813823          	sd	s0,16(sp)
    80002638:	00913423          	sd	s1,8(sp)
    8000263c:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    80002640:	00000097          	auipc	ra,0x0
    80002644:	9b8080e7          	jalr	-1608(ra) # 80001ff8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002648:	00009497          	auipc	s1,0x9
    8000264c:	37048493          	addi	s1,s1,880 # 8000b9b8 <_ZN3TCB7runningE>
    80002650:	0004b783          	ld	a5,0(s1)
    80002654:	0087b703          	ld	a4,8(a5)
    80002658:	0387b503          	ld	a0,56(a5)
    8000265c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002660:	0004b783          	ld	a5,0(s1)
    bool isFinished() const{
        return finished;
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    80002664:	00100713          	li	a4,1
    80002668:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	ef0080e7          	jalr	-272(ra) # 8000155c <_Z15thread_dispatchv>
}
    80002674:	01813083          	ld	ra,24(sp)
    80002678:	01013403          	ld	s0,16(sp)
    8000267c:	00813483          	ld	s1,8(sp)
    80002680:	02010113          	addi	sp,sp,32
    80002684:	00008067          	ret

0000000080002688 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002694:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002698:	00000073          	ecall
}
    8000269c:	00813403          	ld	s0,8(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00113c23          	sd	ra,24(sp)
    800026b0:	00813823          	sd	s0,16(sp)
    800026b4:	00913423          	sd	s1,8(sp)
    800026b8:	02010413          	addi	s0,sp,32
    TCB* old=running;
    800026bc:	00009497          	auipc	s1,0x9
    800026c0:	2fc4b483          	ld	s1,764(s1) # 8000b9b8 <_ZN3TCB7runningE>
        return finished;
    800026c4:	0304c783          	lbu	a5,48(s1)
    if(!(old->isFinished() || old->isBlocked() || old->isSleeping())){
    800026c8:	00079a63          	bnez	a5,800026dc <_ZN3TCB8dispatchEv+0x34>
        return blocked;
    800026cc:	0404c783          	lbu	a5,64(s1)
    800026d0:	00079663          	bnez	a5,800026dc <_ZN3TCB8dispatchEv+0x34>
    uint64 getTimeSlice() const{
        return timeSlice;
    }

    bool isSleeping() const {
        return sleeping;
    800026d4:	0414c783          	lbu	a5,65(s1)
    800026d8:	02078c63          	beqz	a5,80002710 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	0e4080e7          	jalr	228(ra) # 800017c0 <_ZN9Scheduler3getEv>
    800026e4:	00009797          	auipc	a5,0x9
    800026e8:	2ca7ba23          	sd	a0,724(a5) # 8000b9b8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800026ec:	01850593          	addi	a1,a0,24
    800026f0:	01848513          	addi	a0,s1,24
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	c54080e7          	jalr	-940(ra) # 80001348 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800026fc:	01813083          	ld	ra,24(sp)
    80002700:	01013403          	ld	s0,16(sp)
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	02010113          	addi	sp,sp,32
    8000270c:	00008067          	ret
        Scheduler::put(old);
    80002710:	00048513          	mv	a0,s1
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	038080e7          	jalr	56(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    8000271c:	fc1ff06f          	j	800026dc <_ZN3TCB8dispatchEv+0x34>

0000000080002720 <_ZN3TCBC1EPFvPvEPcS0_m>:
                                     userMode(TCB::newThrUserMode)
    80002720:	00009797          	auipc	a5,0x9
    80002724:	01078793          	addi	a5,a5,16 # 8000b730 <_ZTV3TCB+0x10>
    80002728:	00f53023          	sd	a5,0(a0)
    8000272c:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    80002730:	06058863          	beqz	a1,800027a0 <_ZN3TCBC1EPFvPvEPcS0_m+0x80>
                                     userMode(TCB::newThrUserMode)
    80002734:	00c53823          	sd	a2,16(a0)
    80002738:	00000797          	auipc	a5,0x0
    8000273c:	ef478793          	addi	a5,a5,-268 # 8000262c <_ZN3TCB13threadWrapperEv>
    80002740:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002744:	06060263          	beqz	a2,800027a8 <_ZN3TCBC1EPFvPvEPcS0_m+0x88>
    80002748:	000017b7          	lui	a5,0x1
    8000274c:	00f60633          	add	a2,a2,a5
                                     userMode(TCB::newThrUserMode)
    80002750:	02c53023          	sd	a2,32(a0)
    80002754:	02e53423          	sd	a4,40(a0)
    80002758:	02050823          	sb	zero,48(a0)
    8000275c:	02d53c23          	sd	a3,56(a0)
    80002760:	04050023          	sb	zero,64(a0)
    80002764:	040500a3          	sb	zero,65(a0)
    80002768:	00009797          	auipc	a5,0x9
    8000276c:	2587c783          	lbu	a5,600(a5) # 8000b9c0 <_ZN3TCB14newThrUserModeE>
    80002770:	04f50123          	sb	a5,66(a0)
        if(body!=nullptr) Scheduler::put(this);
    80002774:	02058e63          	beqz	a1,800027b0 <_ZN3TCBC1EPFvPvEPcS0_m+0x90>
TCB::TCB(TCB::Body body, char* stack, void* arg, uint64 timeSlice): body(body),
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	00813023          	sd	s0,0(sp)
    80002784:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	fc4080e7          	jalr	-60(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
    }
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800027a0:	00000613          	li	a2,0
    800027a4:	f91ff06f          	j	80002734 <_ZN3TCBC1EPFvPvEPcS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800027a8:	00000613          	li	a2,0
    800027ac:	fa5ff06f          	j	80002750 <_ZN3TCBC1EPFvPvEPcS0_m+0x30>
    800027b0:	00008067          	ret

00000000800027b4 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00113423          	sd	ra,8(sp)
    800027bc:	00813023          	sd	s0,0(sp)
    800027c0:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800027c4:	03f50513          	addi	a0,a0,63
    800027c8:	00655513          	srli	a0,a0,0x6
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	744080e7          	jalr	1860(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN3TCB12createThreadEPFvPvEPcS0_>:
TCB *TCB::createThread(TCB::Body body, char* stack, void* arg) {
    800027e4:	fd010113          	addi	sp,sp,-48
    800027e8:	02113423          	sd	ra,40(sp)
    800027ec:	02813023          	sd	s0,32(sp)
    800027f0:	00913c23          	sd	s1,24(sp)
    800027f4:	01213823          	sd	s2,16(sp)
    800027f8:	01313423          	sd	s3,8(sp)
    800027fc:	01413023          	sd	s4,0(sp)
    80002800:	03010413          	addi	s0,sp,48
    80002804:	00050913          	mv	s2,a0
    80002808:	00058993          	mv	s3,a1
    8000280c:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, DEFAULT_TIME_SLICE);
    80002810:	04800513          	li	a0,72
    80002814:	00000097          	auipc	ra,0x0
    80002818:	fa0080e7          	jalr	-96(ra) # 800027b4 <_ZN3TCBnwEm>
    8000281c:	00050493          	mv	s1,a0
    80002820:	00200713          	li	a4,2
    80002824:	000a0693          	mv	a3,s4
    80002828:	00098613          	mv	a2,s3
    8000282c:	00090593          	mv	a1,s2
    80002830:	00000097          	auipc	ra,0x0
    80002834:	ef0080e7          	jalr	-272(ra) # 80002720 <_ZN3TCBC1EPFvPvEPcS0_m>
    80002838:	0200006f          	j	80002858 <_ZN3TCB12createThreadEPFvPvEPcS0_+0x74>
    8000283c:	00050913          	mv	s2,a0
    80002840:	00048513          	mv	a0,s1
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	23c080e7          	jalr	572(ra) # 80001a80 <_ZdlPv>
    8000284c:	00090513          	mv	a0,s2
    80002850:	0000a097          	auipc	ra,0xa
    80002854:	2b8080e7          	jalr	696(ra) # 8000cb08 <_Unwind_Resume>
}
    80002858:	00048513          	mv	a0,s1
    8000285c:	02813083          	ld	ra,40(sp)
    80002860:	02013403          	ld	s0,32(sp)
    80002864:	01813483          	ld	s1,24(sp)
    80002868:	01013903          	ld	s2,16(sp)
    8000286c:	00813983          	ld	s3,8(sp)
    80002870:	00013a03          	ld	s4,0(sp)
    80002874:	03010113          	addi	sp,sp,48
    80002878:	00008067          	ret

000000008000287c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	758080e7          	jalr	1880(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(TCB::running->isFinished()){
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	1147b783          	ld	a5,276(a5) # 8000b9b8 <_ZN3TCB7runningE>
        return finished;
    800028ac:	0307c703          	lbu	a4,48(a5)
    800028b0:	04071063          	bnez	a4,800028f0 <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
        TCB::finished = finished;
    800028c4:	00100713          	li	a4,1
    800028c8:	02e78823          	sb	a4,48(a5)
        return -1;
    }
    else{
        TCB::running->setFinished(true);
        TCB::timeSliceCounter=0;
    800028cc:	00009797          	auipc	a5,0x9
    800028d0:	0e07be23          	sd	zero,252(a5) # 8000b9c8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	dd4080e7          	jalr	-556(ra) # 800026a8 <_ZN3TCB8dispatchEv>
        return 0;
    800028dc:	00000513          	li	a0,0
    }
}
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret
        return -1;
    800028f0:	fff00513          	li	a0,-1
}
    800028f4:	00008067          	ret

00000000800028f8 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB *thr) {
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	02010413          	addi	s0,sp,32
    8000290c:	00050493          	mv	s1,a0
        return finished;
    80002910:	0304c783          	lbu	a5,48(s1)
    while(!thr->isFinished()){
    80002914:	00079c63          	bnez	a5,8000292c <_ZN3TCB4joinEPS_+0x34>
        TCB::timeSliceCounter=0;
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	0a07b823          	sd	zero,176(a5) # 8000b9c8 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002920:	00000097          	auipc	ra,0x0
    80002924:	d88080e7          	jalr	-632(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    while(!thr->isFinished()){
    80002928:	fe9ff06f          	j	80002910 <_ZN3TCB4joinEPS_+0x18>
    }
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret

0000000080002940 <_ZN4_semnwEm>:

_sem* _sem::open(int val) {
    return new _sem(val);
}

void *_sem::operator new(uint64 n) {
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00113423          	sd	ra,8(sp)
    80002948:	00813023          	sd	s0,0(sp)
    8000294c:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002950:	03f50513          	addi	a0,a0,63
    80002954:	00655513          	srli	a0,a0,0x6
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	5b8080e7          	jalr	1464(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret

0000000080002970 <_ZN4_sem4openEi>:
_sem* _sem::open(int val) {
    80002970:	fe010113          	addi	sp,sp,-32
    80002974:	00113c23          	sd	ra,24(sp)
    80002978:	00813823          	sd	s0,16(sp)
    8000297c:	00913423          	sd	s1,8(sp)
    80002980:	02010413          	addi	s0,sp,32
    80002984:	00050493          	mv	s1,a0
    return new _sem(val);
    80002988:	02000513          	li	a0,32
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	fb4080e7          	jalr	-76(ra) # 80002940 <_ZN4_semnwEm>
#include "../h/list.hpp"
class TCB;

class _sem{
public:
    _sem(unsigned init=1): val(init), closed(false){}
    80002994:	00952023          	sw	s1,0(a0)
        Elem* next;
    };
    Elem* head;
    Elem* tail;
public:
    List():head(nullptr),tail(nullptr){}
    80002998:	00053423          	sd	zero,8(a0)
    8000299c:	00053823          	sd	zero,16(a0)
    800029a0:	00050c23          	sb	zero,24(a0)
}
    800029a4:	01813083          	ld	ra,24(sp)
    800029a8:	01013403          	ld	s0,16(sp)
    800029ac:	00813483          	ld	s1,8(sp)
    800029b0:	02010113          	addi	sp,sp,32
    800029b4:	00008067          	ret

00000000800029b8 <_ZN4_semdlEPv>:

void _sem::operator delete(void *p) {
    800029b8:	ff010113          	addi	sp,sp,-16
    800029bc:	00113423          	sd	ra,8(sp)
    800029c0:	00813023          	sd	s0,0(sp)
    800029c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	61c080e7          	jalr	1564(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
}
    800029d0:	00813083          	ld	ra,8(sp)
    800029d4:	00013403          	ld	s0,0(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_ZN4_sem5blockEv>:
    }
    if(this->isClosed())return -2;
    return 0;
}

void _sem::block() {
    800029e0:	fe010113          	addi	sp,sp,-32
    800029e4:	00113c23          	sd	ra,24(sp)
    800029e8:	00813823          	sd	s0,16(sp)
    800029ec:	00913423          	sd	s1,8(sp)
    800029f0:	01213023          	sd	s2,0(sp)
    800029f4:	02010413          	addi	s0,sp,32
    800029f8:	00050493          	mv	s1,a0
    TCB::running->setBlocked(true);
    800029fc:	00009797          	auipc	a5,0x9
    80002a00:	f447b783          	ld	a5,-188(a5) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a04:	0007b903          	ld	s2,0(a5)
        TCB::blocked = blocked;
    80002a08:	00100793          	li	a5,1
    80002a0c:	04f90023          	sb	a5,64(s2)
        newElem->next=head;
        if(!tail){tail=head;}
    }

    void addLast(T* data){
        Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002a10:	00100513          	li	a0,1
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	4fc080e7          	jalr	1276(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
        newElem->data=data;
    80002a1c:	01253023          	sd	s2,0(a0)
        newElem->next=nullptr;
    80002a20:	00053423          	sd	zero,8(a0)
        if(tail){
    80002a24:	0104b783          	ld	a5,16(s1)
    80002a28:	02078c63          	beqz	a5,80002a60 <_ZN4_sem5blockEv+0x80>
            tail->next=newElem;
    80002a2c:	00a7b423          	sd	a0,8(a5)
            tail=newElem;
    80002a30:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(TCB::running);
    TCB::timeSliceCounter=0;
    80002a34:	00009797          	auipc	a5,0x9
    80002a38:	eec7b783          	ld	a5,-276(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a3c:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	c68080e7          	jalr	-920(ra) # 800026a8 <_ZN3TCB8dispatchEv>
}
    80002a48:	01813083          	ld	ra,24(sp)
    80002a4c:	01013403          	ld	s0,16(sp)
    80002a50:	00813483          	ld	s1,8(sp)
    80002a54:	00013903          	ld	s2,0(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret
        }
        else{
            head=tail=newElem;
    80002a60:	00a4b823          	sd	a0,16(s1)
    80002a64:	00a4b423          	sd	a0,8(s1)
    80002a68:	fcdff06f          	j	80002a34 <_ZN4_sem5blockEv+0x54>

0000000080002a6c <_ZN4_sem4waitEv>:

    void* operator new(uint64 n);
    void operator delete(void *p);

    bool isClosed() const {
        return closed;
    80002a6c:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002a70:	04079e63          	bnez	a5,80002acc <_ZN4_sem4waitEv+0x60>
int _sem::wait() {
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	02010413          	addi	s0,sp,32
    80002a88:	00050493          	mv	s1,a0
    if(--val<0){
    80002a8c:	00052783          	lw	a5,0(a0)
    80002a90:	fff7879b          	addiw	a5,a5,-1
    80002a94:	00f52023          	sw	a5,0(a0)
    80002a98:	02079713          	slli	a4,a5,0x20
    80002a9c:	02074263          	bltz	a4,80002ac0 <_ZN4_sem4waitEv+0x54>
    80002aa0:	0184c783          	lbu	a5,24(s1)
    if(this->isClosed())return -2;
    80002aa4:	02079863          	bnez	a5,80002ad4 <_ZN4_sem4waitEv+0x68>
    return 0;
    80002aa8:	00000513          	li	a0,0
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	02010113          	addi	sp,sp,32
    80002abc:	00008067          	ret
        block();
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	f20080e7          	jalr	-224(ra) # 800029e0 <_ZN4_sem5blockEv>
    80002ac8:	fd9ff06f          	j	80002aa0 <_ZN4_sem4waitEv+0x34>
    if(this->isClosed())return -1;
    80002acc:	fff00513          	li	a0,-1
}
    80002ad0:	00008067          	ret
    if(this->isClosed())return -2;
    80002ad4:	ffe00513          	li	a0,-2
    80002ad8:	fd5ff06f          	j	80002aac <_ZN4_sem4waitEv+0x40>

0000000080002adc <_ZN4_sem7unblockEv>:
        unblock();
    }
    return 0;
}

void _sem::unblock() {
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	02010413          	addi	s0,sp,32
    80002af0:	00050793          	mv	a5,a0
        }
    }

    T* removeFirst(){
        if(!head){
    80002af4:	00853503          	ld	a0,8(a0)
    80002af8:	04050463          	beqz	a0,80002b40 <_ZN4_sem7unblockEv+0x64>
            return 0;
        }

        Elem* elem=head;
        head=head->next;
    80002afc:	00853703          	ld	a4,8(a0)
    80002b00:	00e7b423          	sd	a4,8(a5)
        if(!head){tail=nullptr;}
    80002b04:	02070a63          	beqz	a4,80002b38 <_ZN4_sem7unblockEv+0x5c>

        T* ret=elem->data;
    80002b08:	00053483          	ld	s1,0(a0)
        MemoryAllocator::free(elem);
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	4d8080e7          	jalr	1240(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
    80002b14:	04048023          	sb	zero,64(s1)
    TCB* thr=blocked.removeFirst();
    thr->setBlocked(false);
    Scheduler::put(thr);
    80002b18:	00048513          	mv	a0,s1
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	c30080e7          	jalr	-976(ra) # 8000174c <_ZN9Scheduler3putEP3TCB>
}
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	00813483          	ld	s1,8(sp)
    80002b30:	02010113          	addi	sp,sp,32
    80002b34:	00008067          	ret
        if(!head){tail=nullptr;}
    80002b38:	0007b823          	sd	zero,16(a5)
    80002b3c:	fcdff06f          	j	80002b08 <_ZN4_sem7unblockEv+0x2c>
            return 0;
    80002b40:	00050493          	mv	s1,a0
    80002b44:	fd1ff06f          	j	80002b14 <_ZN4_sem7unblockEv+0x38>

0000000080002b48 <_ZN4_sem6signalEv>:
    80002b48:	01854783          	lbu	a5,24(a0)
    if(this->isClosed())return -1;
    80002b4c:	04079663          	bnez	a5,80002b98 <_ZN4_sem6signalEv+0x50>
    if(++val<=0){
    80002b50:	00052783          	lw	a5,0(a0)
    80002b54:	0017879b          	addiw	a5,a5,1
    80002b58:	0007871b          	sext.w	a4,a5
    80002b5c:	00f52023          	sw	a5,0(a0)
    80002b60:	00e05663          	blez	a4,80002b6c <_ZN4_sem6signalEv+0x24>
    return 0;
    80002b64:	00000513          	li	a0,0
}
    80002b68:	00008067          	ret
int _sem::signal() {
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00113423          	sd	ra,8(sp)
    80002b74:	00813023          	sd	s0,0(sp)
    80002b78:	01010413          	addi	s0,sp,16
        unblock();
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	f60080e7          	jalr	-160(ra) # 80002adc <_ZN4_sem7unblockEv>
    return 0;
    80002b84:	00000513          	li	a0,0
}
    80002b88:	00813083          	ld	ra,8(sp)
    80002b8c:	00013403          	ld	s0,0(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret
    if(this->isClosed())return -1;
    80002b98:	fff00513          	li	a0,-1
    80002b9c:	00008067          	ret

0000000080002ba0 <_ZN4_sem5closeEv>:
    80002ba0:	01854783          	lbu	a5,24(a0)

int _sem::close() {
    if(this->isClosed())return -1;
    80002ba4:	04079263          	bnez	a5,80002be8 <_ZN4_sem5closeEv+0x48>
int _sem::close() {
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    80002bbc:	00050493          	mv	s1,a0
    }

    void setClosed(bool closed) {
        _sem::closed = closed;
    80002bc0:	00100793          	li	a5,1
    80002bc4:	00f50c23          	sb	a5,24(a0)
        return ret;
    }

    T* peekFirst(){
        if(!head)return nullptr;
    80002bc8:	0084b783          	ld	a5,8(s1)
    80002bcc:	02078263          	beqz	a5,80002bf0 <_ZN4_sem5closeEv+0x50>
        return head->data;
    80002bd0:	0007b783          	ld	a5,0(a5)
    this->setClosed(true);
    while(blocked.peekFirst()){
    80002bd4:	02078a63          	beqz	a5,80002c08 <_ZN4_sem5closeEv+0x68>
        unblock();
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	f00080e7          	jalr	-256(ra) # 80002adc <_ZN4_sem7unblockEv>
    while(blocked.peekFirst()){
    80002be4:	fe5ff06f          	j	80002bc8 <_ZN4_sem5closeEv+0x28>
    if(this->isClosed())return -1;
    80002be8:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002bec:	00008067          	ret
    return 0;
    80002bf0:	00000513          	li	a0,0
}
    80002bf4:	01813083          	ld	ra,24(sp)
    80002bf8:	01013403          	ld	s0,16(sp)
    80002bfc:	00813483          	ld	s1,8(sp)
    80002c00:	02010113          	addi	sp,sp,32
    80002c04:	00008067          	ret
    return 0;
    80002c08:	00000513          	li	a0,0
    80002c0c:	fe9ff06f          	j	80002bf4 <_ZN4_sem5closeEv+0x54>

0000000080002c10 <_ZN13BoundedBufferC1Ev>:
        }
    }
}


BoundedBuffer::BoundedBuffer():head(0), tail(0){
    80002c10:	fe010113          	addi	sp,sp,-32
    80002c14:	00113c23          	sd	ra,24(sp)
    80002c18:	00813823          	sd	s0,16(sp)
    80002c1c:	00913423          	sd	s1,8(sp)
    80002c20:	02010413          	addi	s0,sp,32
    80002c24:	00050493          	mv	s1,a0
    80002c28:	00052423          	sw	zero,8(a0)
    80002c2c:	00052623          	sw	zero,12(a0)
    buffer=(char*)MemoryAllocator::alloc((BUFF_CAP+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002c30:	01000513          	li	a0,16
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	2dc080e7          	jalr	732(ra) # 80002f10 <_ZN15MemoryAllocator5allocEm>
    80002c3c:	00a4b023          	sd	a0,0(s1)
    spaceAvailable=_sem::open(BUFF_CAP);
    80002c40:	3e800513          	li	a0,1000
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	d2c080e7          	jalr	-724(ra) # 80002970 <_ZN4_sem4openEi>
    80002c4c:	00a4b823          	sd	a0,16(s1)
    itemAvailable=_sem::open(0);
    80002c50:	00000513          	li	a0,0
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	d1c080e7          	jalr	-740(ra) # 80002970 <_ZN4_sem4openEi>
    80002c5c:	00a4bc23          	sd	a0,24(s1)
}
    80002c60:	01813083          	ld	ra,24(sp)
    80002c64:	01013403          	ld	s0,16(sp)
    80002c68:	00813483          	ld	s1,8(sp)
    80002c6c:	02010113          	addi	sp,sp,32
    80002c70:	00008067          	ret

0000000080002c74 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002c74:	fe010113          	addi	sp,sp,-32
    80002c78:	00113c23          	sd	ra,24(sp)
    80002c7c:	00813823          	sd	s0,16(sp)
    80002c80:	00913423          	sd	s1,8(sp)
    80002c84:	01213023          	sd	s2,0(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00050493          	mv	s1,a0
    80002c90:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002c94:	01053503          	ld	a0,16(a0)
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	dd4080e7          	jalr	-556(ra) # 80002a6c <_ZN4_sem4waitEv>
    buffer[tail]=c;
    80002ca0:	0004b783          	ld	a5,0(s1)
    80002ca4:	00c4a703          	lw	a4,12(s1)
    80002ca8:	00e787b3          	add	a5,a5,a4
    80002cac:	01278023          	sb	s2,0(a5)
    tail=(tail+1)%BUFF_CAP;
    80002cb0:	00c4a783          	lw	a5,12(s1)
    80002cb4:	0017879b          	addiw	a5,a5,1
    80002cb8:	3e800713          	li	a4,1000
    80002cbc:	02e7e7bb          	remw	a5,a5,a4
    80002cc0:	00f4a623          	sw	a5,12(s1)
    itemAvailable->signal();
    80002cc4:	0184b503          	ld	a0,24(s1)
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	e80080e7          	jalr	-384(ra) # 80002b48 <_ZN4_sem6signalEv>
}
    80002cd0:	01813083          	ld	ra,24(sp)
    80002cd4:	01013403          	ld	s0,16(sp)
    80002cd8:	00813483          	ld	s1,8(sp)
    80002cdc:	00013903          	ld	s2,0(sp)
    80002ce0:	02010113          	addi	sp,sp,32
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN13BoundedBuffer4takeEv>:


char BoundedBuffer::take() {
    80002ce8:	fe010113          	addi	sp,sp,-32
    80002cec:	00113c23          	sd	ra,24(sp)
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00913423          	sd	s1,8(sp)
    80002cf8:	01213023          	sd	s2,0(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    80002d00:	00050493          	mv	s1,a0
    //poziva se ovaj wait dok nije usao u prekid sto nije dobro
    //itemAvailable->wait();
    sem_wait(itemAvailable);
    80002d04:	01853503          	ld	a0,24(a0)
    80002d08:	fffff097          	auipc	ra,0xfffff
    80002d0c:	940080e7          	jalr	-1728(ra) # 80001648 <_Z8sem_waitP4_sem>
    char c=buffer[head];
    80002d10:	0004b703          	ld	a4,0(s1)
    80002d14:	0084a783          	lw	a5,8(s1)
    80002d18:	00f70733          	add	a4,a4,a5
    80002d1c:	00074903          	lbu	s2,0(a4)
    head=(head+1)%BUFF_CAP;
    80002d20:	0017879b          	addiw	a5,a5,1
    80002d24:	3e800713          	li	a4,1000
    80002d28:	02e7e7bb          	remw	a5,a5,a4
    80002d2c:	00f4a423          	sw	a5,8(s1)
    spaceAvailable->signal();
    80002d30:	0104b503          	ld	a0,16(s1)
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	e14080e7          	jalr	-492(ra) # 80002b48 <_ZN4_sem6signalEv>
    return c;
}
    80002d3c:	00090513          	mv	a0,s2
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00813483          	ld	s1,8(sp)
    80002d4c:	00013903          	ld	s2,0(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	02010413          	addi	s0,sp,32
    80002d6c:	00050493          	mv	s1,a0
    MemoryAllocator::free(buffer);
    80002d70:	00053503          	ld	a0,0(a0)
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	270080e7          	jalr	624(ra) # 80002fe4 <_ZN15MemoryAllocator4freeEPv>
    /*itemAvailable->close();
    spaceAvailable->close();*/
    sem_close(itemAvailable);
    80002d7c:	0184b503          	ld	a0,24(s1)
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	87c080e7          	jalr	-1924(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002d88:	0104b503          	ld	a0,16(s1)
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	870080e7          	jalr	-1936(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	02010113          	addi	sp,sp,32
    80002da4:	00008067          	ret

0000000080002da8 <_ZN8_console13inputBuff_putEc>:

void _console::inputBuff_put(char c) {
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00113423          	sd	ra,8(sp)
    80002db0:	00813023          	sd	s0,0(sp)
    80002db4:	01010413          	addi	s0,sp,16
    80002db8:	00050593          	mv	a1,a0
    inputBuff->put(c);
    80002dbc:	00009517          	auipc	a0,0x9
    80002dc0:	c1453503          	ld	a0,-1004(a0) # 8000b9d0 <_ZN8_console9inputBuffE>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	eb0080e7          	jalr	-336(ra) # 80002c74 <_ZN13BoundedBuffer3putEc>
}
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN8_console13inputBuff_getEv>:

char _console::inputBuff_get() {
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00113423          	sd	ra,8(sp)
    80002de4:	00813023          	sd	s0,0(sp)
    80002de8:	01010413          	addi	s0,sp,16
    return inputBuff->take();
    80002dec:	00009517          	auipc	a0,0x9
    80002df0:	be453503          	ld	a0,-1052(a0) # 8000b9d0 <_ZN8_console9inputBuffE>
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	ef4080e7          	jalr	-268(ra) # 80002ce8 <_ZN13BoundedBuffer4takeEv>
}
    80002dfc:	00813083          	ld	ra,8(sp)
    80002e00:	00013403          	ld	s0,0(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <_ZN8_console14outputBuff_putEc>:

void _console::outputBuff_put(char c) {
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00113423          	sd	ra,8(sp)
    80002e14:	00813023          	sd	s0,0(sp)
    80002e18:	01010413          	addi	s0,sp,16
    80002e1c:	00050593          	mv	a1,a0
    outputBuff->put(c);
    80002e20:	00009517          	auipc	a0,0x9
    80002e24:	bb853503          	ld	a0,-1096(a0) # 8000b9d8 <_ZN8_console10outputBuffE>
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	e4c080e7          	jalr	-436(ra) # 80002c74 <_ZN13BoundedBuffer3putEc>
}
    80002e30:	00813083          	ld	ra,8(sp)
    80002e34:	00013403          	ld	s0,0(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret

0000000080002e40 <_ZN8_console14outputBuff_getEv>:

char _console::outputBuff_get() {
    80002e40:	ff010113          	addi	sp,sp,-16
    80002e44:	00113423          	sd	ra,8(sp)
    80002e48:	00813023          	sd	s0,0(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    return outputBuff->take();
    80002e50:	00009517          	auipc	a0,0x9
    80002e54:	b8853503          	ld	a0,-1144(a0) # 8000b9d8 <_ZN8_console10outputBuffE>
    80002e58:	00000097          	auipc	ra,0x0
    80002e5c:	e90080e7          	jalr	-368(ra) # 80002ce8 <_ZN13BoundedBuffer4takeEv>
}
    80002e60:	00813083          	ld	ra,8(sp)
    80002e64:	00013403          	ld	s0,0(sp)
    80002e68:	01010113          	addi	sp,sp,16
    80002e6c:	00008067          	ret

0000000080002e70 <_ZN8_console15consumerConsoleEPv>:
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002e70:	00009797          	auipc	a5,0x9
    80002e74:	a887b783          	ld	a5,-1400(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e78:	0007b783          	ld	a5,0(a5)
    80002e7c:	0007c783          	lbu	a5,0(a5)
    80002e80:	0207f793          	andi	a5,a5,32
    80002e84:	fe0786e3          	beqz	a5,80002e70 <_ZN8_console15consumerConsoleEPv>
void _console::consumerConsole(void*){
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00113423          	sd	ra,8(sp)
    80002e90:	00813023          	sd	s0,0(sp)
    80002e94:	01010413          	addi	s0,sp,16
            char c = _console::outputBuff_get();
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	fa8080e7          	jalr	-88(ra) # 80002e40 <_ZN8_console14outputBuff_getEv>
            *(char *) CONSOLE_TX_DATA = c;
    80002ea0:	00009797          	auipc	a5,0x9
    80002ea4:	a887b783          	ld	a5,-1400(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002ea8:	0007b783          	ld	a5,0(a5)
    80002eac:	00a78023          	sb	a0,0(a5)
        while ((*(char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80002eb0:	00009797          	auipc	a5,0x9
    80002eb4:	a487b783          	ld	a5,-1464(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002eb8:	0007b783          	ld	a5,0(a5)
    80002ebc:	0007c783          	lbu	a5,0(a5)
    80002ec0:	0207f793          	andi	a5,a5,32
    80002ec4:	fe0786e3          	beqz	a5,80002eb0 <_ZN8_console15consumerConsoleEPv+0x40>
    80002ec8:	fd1ff06f          	j	80002e98 <_ZN8_console15consumerConsoleEPv+0x28>

0000000080002ecc <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00813423          	sd	s0,8(sp)
    80002ed4:	01010413          	addi	s0,sp,16
    80002ed8:	00100793          	li	a5,1
    80002edc:	00f50863          	beq	a0,a5,80002eec <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret
    80002eec:	000107b7          	lui	a5,0x10
    80002ef0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ef4:	fef596e3          	bne	a1,a5,80002ee0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002ef8:	00009797          	auipc	a5,0x9
    80002efc:	a087b783          	ld	a5,-1528(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002f00:	0007b783          	ld	a5,0(a5)
    80002f04:	00009717          	auipc	a4,0x9
    80002f08:	acf73e23          	sd	a5,-1316(a4) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002f0c:	fd5ff06f          	j	80002ee0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002f10 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002f10:	ff010113          	addi	sp,sp,-16
    80002f14:	00813423          	sd	s0,8(sp)
    80002f18:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80002f1c:	0a050c63          	beqz	a0,80002fd4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002f20:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	abc7b783          	ld	a5,-1348(a5) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002f2c:	00000613          	li	a2,0
    while(free){
    80002f30:	00078e63          	beqz	a5,80002f4c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002f34:	0007b703          	ld	a4,0(a5)
    80002f38:	fff70713          	addi	a4,a4,-1
    80002f3c:	00d77863          	bgeu	a4,a3,80002f4c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002f40:	00078613          	mv	a2,a5
        free=free->next;
    80002f44:	0087b783          	ld	a5,8(a5)
    while(free){
    80002f48:	fe9ff06f          	j	80002f30 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    80002f4c:	08078863          	beqz	a5,80002fdc <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002f50:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002f54:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002f58:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    80002f5c:	fff70593          	addi	a1,a4,-1
    80002f60:	04d58063          	beq	a1,a3,80002fa0 <_ZN15MemoryAllocator5allocEm+0x90>
    80002f64:	ffe70593          	addi	a1,a4,-2
    80002f68:	02d58c63          	beq	a1,a3,80002fa0 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    80002f6c:	40d70733          	sub	a4,a4,a3
    80002f70:	fff70713          	addi	a4,a4,-1
    80002f74:	00100593          	li	a1,1
    80002f78:	02e5fa63          	bgeu	a1,a4,80002fac <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    80002f7c:	00168693          	addi	a3,a3,1
    80002f80:	00669593          	slli	a1,a3,0x6
    80002f84:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002f88:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80002f8c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002f90:	02060c63          	beqz	a2,80002fc8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80002f94:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002f98:	00d7b023          	sd	a3,0(a5)
    80002f9c:	0100006f          	j	80002fac <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002fa0:	00060e63          	beqz	a2,80002fbc <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80002fa4:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002fa8:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80002fac:	0007b423          	sd	zero,8(a5)
}
    80002fb0:	00813403          	ld	s0,8(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret
            firstFreeSeg=free->next;
    80002fbc:	00009697          	auipc	a3,0x9
    80002fc0:	a306b223          	sd	a6,-1500(a3) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002fc4:	fe5ff06f          	j	80002fa8 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80002fc8:	00009717          	auipc	a4,0x9
    80002fcc:	a0b73c23          	sd	a1,-1512(a4) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80002fd0:	fc9ff06f          	j	80002f98 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80002fd4:	00000513          	li	a0,0
    80002fd8:	fd9ff06f          	j	80002fb0 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80002fdc:	00078513          	mv	a0,a5
    80002fe0:	fd1ff06f          	j	80002fb0 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080002fe4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00813423          	sd	s0,8(sp)
    80002fec:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80002ff0:	14050c63          	beqz	a0,80003148 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80002ff4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80002ff8:	00009797          	auipc	a5,0x9
    80002ffc:	9e87b783          	ld	a5,-1560(a5) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80003000:	02078a63          	beqz	a5,80003034 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80003004:	06f77863          	bgeu	a4,a5,80003074 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80003008:	fc053603          	ld	a2,-64(a0)
    8000300c:	00661693          	slli	a3,a2,0x6
    80003010:	00d706b3          	add	a3,a4,a3
    80003014:	02d78a63          	beq	a5,a3,80003048 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80003018:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	9ce7b223          	sd	a4,-1596(a5) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80003024:	00000513          	li	a0,0
}
    80003028:	00813403          	ld	s0,8(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret
        freeFromAddr->next=nullptr;
    80003034:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80003038:	00009797          	auipc	a5,0x9
    8000303c:	9ae7b423          	sd	a4,-1624(a5) # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80003040:	00000513          	li	a0,0
    80003044:	fe5ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80003048:	0007b783          	ld	a5,0(a5)
    8000304c:	00f60633          	add	a2,a2,a5
    80003050:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80003054:	00009797          	auipc	a5,0x9
    80003058:	98c78793          	addi	a5,a5,-1652 # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    8000305c:	0007b683          	ld	a3,0(a5)
    80003060:	0086b683          	ld	a3,8(a3)
    80003064:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80003068:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000306c:	00000513          	li	a0,0
    80003070:	fb9ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80003074:	00000693          	li	a3,0
    while(nextFree){
    80003078:	00078a63          	beqz	a5,8000308c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000307c:	00f76863          	bltu	a4,a5,8000308c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80003080:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80003084:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80003088:	ff1ff06f          	j	80003078 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000308c:	02078a63          	beqz	a5,800030c0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80003090:	0006b583          	ld	a1,0(a3)
    80003094:	00659613          	slli	a2,a1,0x6
    80003098:	00c68633          	add	a2,a3,a2
    8000309c:	04e60c63          	beq	a2,a4,800030f4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    800030a0:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800030a4:	fc053683          	ld	a3,-64(a0)
    800030a8:	00669613          	slli	a2,a3,0x6
    800030ac:	00c70733          	add	a4,a4,a2
    800030b0:	06f70e63          	beq	a4,a5,8000312c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    800030b4:	fcf53423          	sd	a5,-56(a0)
    return 0;
    800030b8:	00000513          	li	a0,0
    800030bc:	f6dff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800030c0:	0006b603          	ld	a2,0(a3)
    800030c4:	00661793          	slli	a5,a2,0x6
    800030c8:	00f687b3          	add	a5,a3,a5
    800030cc:	00e78a63          	beq	a5,a4,800030e0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800030d0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800030d4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800030d8:	00000513          	li	a0,0
    800030dc:	f4dff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800030e0:	fc053783          	ld	a5,-64(a0)
    800030e4:	00f60633          	add	a2,a2,a5
    800030e8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800030ec:	00000513          	li	a0,0
    800030f0:	f39ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800030f4:	fc053703          	ld	a4,-64(a0)
    800030f8:	00e585b3          	add	a1,a1,a4
    800030fc:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80003100:	00659713          	slli	a4,a1,0x6
    80003104:	00e68733          	add	a4,a3,a4
    80003108:	00f70663          	beq	a4,a5,80003114 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    8000310c:	00000513          	li	a0,0
    80003110:	f19ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80003114:	0007b703          	ld	a4,0(a5)
    80003118:	00e585b3          	add	a1,a1,a4
    8000311c:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80003120:	0087b783          	ld	a5,8(a5)
    80003124:	00f6b423          	sd	a5,8(a3)
    80003128:	fe5ff06f          	j	8000310c <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    8000312c:	0007b703          	ld	a4,0(a5)
    80003130:	00e686b3          	add	a3,a3,a4
    80003134:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80003138:	0087b783          	ld	a5,8(a5)
    8000313c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80003140:	00000513          	li	a0,0
    80003144:	ee5ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80003148:	fff00513          	li	a0,-1
    8000314c:	eddff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080003150 <_ZN15MemoryAllocator10initializeEv>:
{
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00813423          	sd	s0,8(sp)
    80003158:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000315c:	00008797          	auipc	a5,0x8
    80003160:	7a47b783          	ld	a5,1956(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003164:	0007b703          	ld	a4,0(a5)
    80003168:	00009697          	auipc	a3,0x9
    8000316c:	87868693          	addi	a3,a3,-1928 # 8000b9e0 <_ZN15MemoryAllocator12firstFreeSegE>
    80003170:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80003174:	00008797          	auipc	a5,0x8
    80003178:	7d47b783          	ld	a5,2004(a5) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000317c:	0007b783          	ld	a5,0(a5)
    80003180:	40e787b3          	sub	a5,a5,a4
    80003184:	0067d793          	srli	a5,a5,0x6
    80003188:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    8000318c:	0006b783          	ld	a5,0(a3)
    80003190:	0007b423          	sd	zero,8(a5)
    80003194:	00813403          	ld	s0,8(sp)
    80003198:	01010113          	addi	sp,sp,16
    8000319c:	00008067          	ret

00000000800031a0 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00113423          	sd	ra,8(sp)
    800031a8:	00813023          	sd	s0,0(sp)
    800031ac:	01010413          	addi	s0,sp,16
    800031b0:	000105b7          	lui	a1,0x10
    800031b4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800031b8:	00100513          	li	a0,1
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	d10080e7          	jalr	-752(ra) # 80002ecc <_Z41__static_initialization_and_destruction_0ii>
    800031c4:	00813083          	ld	ra,8(sp)
    800031c8:	00013403          	ld	s0,0(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	01213023          	sd	s2,0(sp)
    800031e8:	02010413          	addi	s0,sp,32
    800031ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800031f0:	00000913          	li	s2,0
    800031f4:	00c0006f          	j	80003200 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	364080e7          	jalr	868(ra) # 8000155c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	4e0080e7          	jalr	1248(ra) # 800016e0 <_Z4getcv>
    80003208:	0005059b          	sext.w	a1,a0
    8000320c:	01b00793          	li	a5,27
    80003210:	02f58a63          	beq	a1,a5,80003244 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003214:	0084b503          	ld	a0,8(s1)
    80003218:	00003097          	auipc	ra,0x3
    8000321c:	400080e7          	jalr	1024(ra) # 80006618 <_ZN6Buffer3putEi>
        i++;
    80003220:	0019071b          	addiw	a4,s2,1
    80003224:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003228:	0004a683          	lw	a3,0(s1)
    8000322c:	0026979b          	slliw	a5,a3,0x2
    80003230:	00d787bb          	addw	a5,a5,a3
    80003234:	0017979b          	slliw	a5,a5,0x1
    80003238:	02f767bb          	remw	a5,a4,a5
    8000323c:	fc0792e3          	bnez	a5,80003200 <_ZL16producerKeyboardPv+0x2c>
    80003240:	fb9ff06f          	j	800031f8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003244:	00100793          	li	a5,1
    80003248:	00008717          	auipc	a4,0x8
    8000324c:	7af72023          	sw	a5,1952(a4) # 8000b9e8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003250:	02100593          	li	a1,33
    80003254:	0084b503          	ld	a0,8(s1)
    80003258:	00003097          	auipc	ra,0x3
    8000325c:	3c0080e7          	jalr	960(ra) # 80006618 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003260:	0104b503          	ld	a0,16(s1)
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	430080e7          	jalr	1072(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00013903          	ld	s2,0(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZL8producerPv>:

static void producer(void *arg) {
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800032a0:	00000913          	li	s2,0
    800032a4:	00c0006f          	j	800032b0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032a8:	ffffe097          	auipc	ra,0xffffe
    800032ac:	2b4080e7          	jalr	692(ra) # 8000155c <_Z15thread_dispatchv>
    while (!threadEnd) {
    800032b0:	00008797          	auipc	a5,0x8
    800032b4:	7387a783          	lw	a5,1848(a5) # 8000b9e8 <_ZL9threadEnd>
    800032b8:	02079e63          	bnez	a5,800032f4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800032bc:	0004a583          	lw	a1,0(s1)
    800032c0:	0305859b          	addiw	a1,a1,48
    800032c4:	0084b503          	ld	a0,8(s1)
    800032c8:	00003097          	auipc	ra,0x3
    800032cc:	350080e7          	jalr	848(ra) # 80006618 <_ZN6Buffer3putEi>
        i++;
    800032d0:	0019071b          	addiw	a4,s2,1
    800032d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800032d8:	0004a683          	lw	a3,0(s1)
    800032dc:	0026979b          	slliw	a5,a3,0x2
    800032e0:	00d787bb          	addw	a5,a5,a3
    800032e4:	0017979b          	slliw	a5,a5,0x1
    800032e8:	02f767bb          	remw	a5,a4,a5
    800032ec:	fc0792e3          	bnez	a5,800032b0 <_ZL8producerPv+0x2c>
    800032f0:	fb9ff06f          	j	800032a8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800032f4:	0104b503          	ld	a0,16(s1)
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	39c080e7          	jalr	924(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    80003300:	01813083          	ld	ra,24(sp)
    80003304:	01013403          	ld	s0,16(sp)
    80003308:	00813483          	ld	s1,8(sp)
    8000330c:	00013903          	ld	s2,0(sp)
    80003310:	02010113          	addi	sp,sp,32
    80003314:	00008067          	ret

0000000080003318 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003318:	fd010113          	addi	sp,sp,-48
    8000331c:	02113423          	sd	ra,40(sp)
    80003320:	02813023          	sd	s0,32(sp)
    80003324:	00913c23          	sd	s1,24(sp)
    80003328:	01213823          	sd	s2,16(sp)
    8000332c:	01313423          	sd	s3,8(sp)
    80003330:	03010413          	addi	s0,sp,48
    80003334:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003338:	00000993          	li	s3,0
    8000333c:	01c0006f          	j	80003358 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	21c080e7          	jalr	540(ra) # 8000155c <_Z15thread_dispatchv>
    80003348:	0500006f          	j	80003398 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000334c:	00a00513          	li	a0,10
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	3cc080e7          	jalr	972(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80003358:	00008797          	auipc	a5,0x8
    8000335c:	6907a783          	lw	a5,1680(a5) # 8000b9e8 <_ZL9threadEnd>
    80003360:	06079063          	bnez	a5,800033c0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003364:	00893503          	ld	a0,8(s2)
    80003368:	00003097          	auipc	ra,0x3
    8000336c:	340080e7          	jalr	832(ra) # 800066a8 <_ZN6Buffer3getEv>
        i++;
    80003370:	0019849b          	addiw	s1,s3,1
    80003374:	0004899b          	sext.w	s3,s1
        putc(key);
    80003378:	0ff57513          	andi	a0,a0,255
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	3a0080e7          	jalr	928(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003384:	00092703          	lw	a4,0(s2)
    80003388:	0027179b          	slliw	a5,a4,0x2
    8000338c:	00e787bb          	addw	a5,a5,a4
    80003390:	02f4e7bb          	remw	a5,s1,a5
    80003394:	fa0786e3          	beqz	a5,80003340 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003398:	05000793          	li	a5,80
    8000339c:	02f4e4bb          	remw	s1,s1,a5
    800033a0:	fa049ce3          	bnez	s1,80003358 <_ZL8consumerPv+0x40>
    800033a4:	fa9ff06f          	j	8000334c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800033a8:	00893503          	ld	a0,8(s2)
    800033ac:	00003097          	auipc	ra,0x3
    800033b0:	2fc080e7          	jalr	764(ra) # 800066a8 <_ZN6Buffer3getEv>
        putc(key);
    800033b4:	0ff57513          	andi	a0,a0,255
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	364080e7          	jalr	868(ra) # 8000171c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800033c0:	00893503          	ld	a0,8(s2)
    800033c4:	00003097          	auipc	ra,0x3
    800033c8:	370080e7          	jalr	880(ra) # 80006734 <_ZN6Buffer6getCntEv>
    800033cc:	fca04ee3          	bgtz	a0,800033a8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800033d0:	01093503          	ld	a0,16(s2)
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	2c0080e7          	jalr	704(ra) # 80001694 <_Z10sem_signalP4_sem>
}
    800033dc:	02813083          	ld	ra,40(sp)
    800033e0:	02013403          	ld	s0,32(sp)
    800033e4:	01813483          	ld	s1,24(sp)
    800033e8:	01013903          	ld	s2,16(sp)
    800033ec:	00813983          	ld	s3,8(sp)
    800033f0:	03010113          	addi	sp,sp,48
    800033f4:	00008067          	ret

00000000800033f8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800033f8:	f9010113          	addi	sp,sp,-112
    800033fc:	06113423          	sd	ra,104(sp)
    80003400:	06813023          	sd	s0,96(sp)
    80003404:	04913c23          	sd	s1,88(sp)
    80003408:	05213823          	sd	s2,80(sp)
    8000340c:	05313423          	sd	s3,72(sp)
    80003410:	05413023          	sd	s4,64(sp)
    80003414:	03513c23          	sd	s5,56(sp)
    80003418:	03613823          	sd	s6,48(sp)
    8000341c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003420:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003424:	00006517          	auipc	a0,0x6
    80003428:	c0c50513          	addi	a0,a0,-1012 # 80009030 <CONSOLE_STATUS+0x20>
    8000342c:	00002097          	auipc	ra,0x2
    80003430:	220080e7          	jalr	544(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    80003434:	01e00593          	li	a1,30
    80003438:	fa040493          	addi	s1,s0,-96
    8000343c:	00048513          	mv	a0,s1
    80003440:	00002097          	auipc	ra,0x2
    80003444:	294080e7          	jalr	660(ra) # 800056d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003448:	00048513          	mv	a0,s1
    8000344c:	00002097          	auipc	ra,0x2
    80003450:	360080e7          	jalr	864(ra) # 800057ac <_Z11stringToIntPKc>
    80003454:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003458:	00006517          	auipc	a0,0x6
    8000345c:	bf850513          	addi	a0,a0,-1032 # 80009050 <CONSOLE_STATUS+0x40>
    80003460:	00002097          	auipc	ra,0x2
    80003464:	1ec080e7          	jalr	492(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    80003468:	01e00593          	li	a1,30
    8000346c:	00048513          	mv	a0,s1
    80003470:	00002097          	auipc	ra,0x2
    80003474:	264080e7          	jalr	612(ra) # 800056d4 <_Z9getStringPci>
    n = stringToInt(input);
    80003478:	00048513          	mv	a0,s1
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	330080e7          	jalr	816(ra) # 800057ac <_Z11stringToIntPKc>
    80003484:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003488:	00006517          	auipc	a0,0x6
    8000348c:	be850513          	addi	a0,a0,-1048 # 80009070 <CONSOLE_STATUS+0x60>
    80003490:	00002097          	auipc	ra,0x2
    80003494:	1bc080e7          	jalr	444(ra) # 8000564c <_Z11printStringPKc>
    80003498:	00000613          	li	a2,0
    8000349c:	00a00593          	li	a1,10
    800034a0:	00090513          	mv	a0,s2
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	358080e7          	jalr	856(ra) # 800057fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800034ac:	00006517          	auipc	a0,0x6
    800034b0:	bdc50513          	addi	a0,a0,-1060 # 80009088 <CONSOLE_STATUS+0x78>
    800034b4:	00002097          	auipc	ra,0x2
    800034b8:	198080e7          	jalr	408(ra) # 8000564c <_Z11printStringPKc>
    800034bc:	00000613          	li	a2,0
    800034c0:	00a00593          	li	a1,10
    800034c4:	00048513          	mv	a0,s1
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	334080e7          	jalr	820(ra) # 800057fc <_Z8printIntiii>
    printString(".\n");
    800034d0:	00006517          	auipc	a0,0x6
    800034d4:	bd050513          	addi	a0,a0,-1072 # 800090a0 <CONSOLE_STATUS+0x90>
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	174080e7          	jalr	372(ra) # 8000564c <_Z11printStringPKc>
    if(threadNum > n) {
    800034e0:	0324c463          	blt	s1,s2,80003508 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800034e4:	03205c63          	blez	s2,8000351c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800034e8:	03800513          	li	a0,56
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	544080e7          	jalr	1348(ra) # 80001a30 <_Znwm>
    800034f4:	00050a13          	mv	s4,a0
    800034f8:	00048593          	mv	a1,s1
    800034fc:	00003097          	auipc	ra,0x3
    80003500:	080080e7          	jalr	128(ra) # 8000657c <_ZN6BufferC1Ei>
    80003504:	0300006f          	j	80003534 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	ba050513          	addi	a0,a0,-1120 # 800090a8 <CONSOLE_STATUS+0x98>
    80003510:	00002097          	auipc	ra,0x2
    80003514:	13c080e7          	jalr	316(ra) # 8000564c <_Z11printStringPKc>
        return;
    80003518:	0140006f          	j	8000352c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000351c:	00006517          	auipc	a0,0x6
    80003520:	bcc50513          	addi	a0,a0,-1076 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003524:	00002097          	auipc	ra,0x2
    80003528:	128080e7          	jalr	296(ra) # 8000564c <_Z11printStringPKc>
        return;
    8000352c:	000b0113          	mv	sp,s6
    80003530:	1500006f          	j	80003680 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003534:	00000593          	li	a1,0
    80003538:	00008517          	auipc	a0,0x8
    8000353c:	4b850513          	addi	a0,a0,1208 # 8000b9f0 <_ZL10waitForAll>
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	078080e7          	jalr	120(ra) # 800015b8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003548:	00391793          	slli	a5,s2,0x3
    8000354c:	00f78793          	addi	a5,a5,15
    80003550:	ff07f793          	andi	a5,a5,-16
    80003554:	40f10133          	sub	sp,sp,a5
    80003558:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000355c:	0019071b          	addiw	a4,s2,1
    80003560:	00171793          	slli	a5,a4,0x1
    80003564:	00e787b3          	add	a5,a5,a4
    80003568:	00379793          	slli	a5,a5,0x3
    8000356c:	00f78793          	addi	a5,a5,15
    80003570:	ff07f793          	andi	a5,a5,-16
    80003574:	40f10133          	sub	sp,sp,a5
    80003578:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000357c:	00191613          	slli	a2,s2,0x1
    80003580:	012607b3          	add	a5,a2,s2
    80003584:	00379793          	slli	a5,a5,0x3
    80003588:	00f987b3          	add	a5,s3,a5
    8000358c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003590:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003594:	00008717          	auipc	a4,0x8
    80003598:	45c73703          	ld	a4,1116(a4) # 8000b9f0 <_ZL10waitForAll>
    8000359c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800035a0:	00078613          	mv	a2,a5
    800035a4:	00000597          	auipc	a1,0x0
    800035a8:	d7458593          	addi	a1,a1,-652 # 80003318 <_ZL8consumerPv>
    800035ac:	f9840513          	addi	a0,s0,-104
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	e84080e7          	jalr	-380(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800035b8:	00000493          	li	s1,0
    800035bc:	0280006f          	j	800035e4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800035c0:	00000597          	auipc	a1,0x0
    800035c4:	c1458593          	addi	a1,a1,-1004 # 800031d4 <_ZL16producerKeyboardPv>
                      data + i);
    800035c8:	00179613          	slli	a2,a5,0x1
    800035cc:	00f60633          	add	a2,a2,a5
    800035d0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800035d4:	00c98633          	add	a2,s3,a2
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	e5c080e7          	jalr	-420(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800035e0:	0014849b          	addiw	s1,s1,1
    800035e4:	0524d263          	bge	s1,s2,80003628 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800035e8:	00149793          	slli	a5,s1,0x1
    800035ec:	009787b3          	add	a5,a5,s1
    800035f0:	00379793          	slli	a5,a5,0x3
    800035f4:	00f987b3          	add	a5,s3,a5
    800035f8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800035fc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003600:	00008717          	auipc	a4,0x8
    80003604:	3f073703          	ld	a4,1008(a4) # 8000b9f0 <_ZL10waitForAll>
    80003608:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000360c:	00048793          	mv	a5,s1
    80003610:	00349513          	slli	a0,s1,0x3
    80003614:	00aa8533          	add	a0,s5,a0
    80003618:	fa9054e3          	blez	s1,800035c0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000361c:	00000597          	auipc	a1,0x0
    80003620:	c6858593          	addi	a1,a1,-920 # 80003284 <_ZL8producerPv>
    80003624:	fa5ff06f          	j	800035c8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	f34080e7          	jalr	-204(ra) # 8000155c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003630:	00000493          	li	s1,0
    80003634:	00994e63          	blt	s2,s1,80003650 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003638:	00008517          	auipc	a0,0x8
    8000363c:	3b853503          	ld	a0,952(a0) # 8000b9f0 <_ZL10waitForAll>
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	008080e7          	jalr	8(ra) # 80001648 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003648:	0014849b          	addiw	s1,s1,1
    8000364c:	fe9ff06f          	j	80003634 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003650:	00008517          	auipc	a0,0x8
    80003654:	3a053503          	ld	a0,928(a0) # 8000b9f0 <_ZL10waitForAll>
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	fa4080e7          	jalr	-92(ra) # 800015fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003660:	000a0e63          	beqz	s4,8000367c <_Z22producerConsumer_C_APIv+0x284>
    80003664:	000a0513          	mv	a0,s4
    80003668:	00003097          	auipc	ra,0x3
    8000366c:	154080e7          	jalr	340(ra) # 800067bc <_ZN6BufferD1Ev>
    80003670:	000a0513          	mv	a0,s4
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	40c080e7          	jalr	1036(ra) # 80001a80 <_ZdlPv>
    8000367c:	000b0113          	mv	sp,s6

}
    80003680:	f9040113          	addi	sp,s0,-112
    80003684:	06813083          	ld	ra,104(sp)
    80003688:	06013403          	ld	s0,96(sp)
    8000368c:	05813483          	ld	s1,88(sp)
    80003690:	05013903          	ld	s2,80(sp)
    80003694:	04813983          	ld	s3,72(sp)
    80003698:	04013a03          	ld	s4,64(sp)
    8000369c:	03813a83          	ld	s5,56(sp)
    800036a0:	03013b03          	ld	s6,48(sp)
    800036a4:	07010113          	addi	sp,sp,112
    800036a8:	00008067          	ret
    800036ac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800036b0:	000a0513          	mv	a0,s4
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	3cc080e7          	jalr	972(ra) # 80001a80 <_ZdlPv>
    800036bc:	00048513          	mv	a0,s1
    800036c0:	00009097          	auipc	ra,0x9
    800036c4:	448080e7          	jalr	1096(ra) # 8000cb08 <_Unwind_Resume>

00000000800036c8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800036c8:	fe010113          	addi	sp,sp,-32
    800036cc:	00113c23          	sd	ra,24(sp)
    800036d0:	00813823          	sd	s0,16(sp)
    800036d4:	00913423          	sd	s1,8(sp)
    800036d8:	01213023          	sd	s2,0(sp)
    800036dc:	02010413          	addi	s0,sp,32
    800036e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800036e4:	00100793          	li	a5,1
    800036e8:	02a7f863          	bgeu	a5,a0,80003718 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800036ec:	00a00793          	li	a5,10
    800036f0:	02f577b3          	remu	a5,a0,a5
    800036f4:	02078e63          	beqz	a5,80003730 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800036f8:	fff48513          	addi	a0,s1,-1
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	fcc080e7          	jalr	-52(ra) # 800036c8 <_ZL9fibonaccim>
    80003704:	00050913          	mv	s2,a0
    80003708:	ffe48513          	addi	a0,s1,-2
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	fbc080e7          	jalr	-68(ra) # 800036c8 <_ZL9fibonaccim>
    80003714:	00a90533          	add	a0,s2,a0
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	e2c080e7          	jalr	-468(ra) # 8000155c <_Z15thread_dispatchv>
    80003738:	fc1ff06f          	j	800036f8 <_ZL9fibonaccim+0x30>

000000008000373c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000373c:	fe010113          	addi	sp,sp,-32
    80003740:	00113c23          	sd	ra,24(sp)
    80003744:	00813823          	sd	s0,16(sp)
    80003748:	00913423          	sd	s1,8(sp)
    8000374c:	01213023          	sd	s2,0(sp)
    80003750:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003754:	00000913          	li	s2,0
    80003758:	0380006f          	j	80003790 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	e00080e7          	jalr	-512(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003764:	00148493          	addi	s1,s1,1
    80003768:	000027b7          	lui	a5,0x2
    8000376c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003770:	0097ee63          	bltu	a5,s1,8000378c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003774:	00000713          	li	a4,0
    80003778:	000077b7          	lui	a5,0x7
    8000377c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003780:	fce7eee3          	bltu	a5,a4,8000375c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003784:	00170713          	addi	a4,a4,1
    80003788:	ff1ff06f          	j	80003778 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000378c:	00190913          	addi	s2,s2,1
    80003790:	00900793          	li	a5,9
    80003794:	0527e063          	bltu	a5,s2,800037d4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003798:	00006517          	auipc	a0,0x6
    8000379c:	98050513          	addi	a0,a0,-1664 # 80009118 <CONSOLE_STATUS+0x108>
    800037a0:	00002097          	auipc	ra,0x2
    800037a4:	eac080e7          	jalr	-340(ra) # 8000564c <_Z11printStringPKc>
    800037a8:	00000613          	li	a2,0
    800037ac:	00a00593          	li	a1,10
    800037b0:	0009051b          	sext.w	a0,s2
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	048080e7          	jalr	72(ra) # 800057fc <_Z8printIntiii>
    800037bc:	00006517          	auipc	a0,0x6
    800037c0:	bbc50513          	addi	a0,a0,-1092 # 80009378 <CONSOLE_STATUS+0x368>
    800037c4:	00002097          	auipc	ra,0x2
    800037c8:	e88080e7          	jalr	-376(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037cc:	00000493          	li	s1,0
    800037d0:	f99ff06f          	j	80003768 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800037d4:	00006517          	auipc	a0,0x6
    800037d8:	94c50513          	addi	a0,a0,-1716 # 80009120 <CONSOLE_STATUS+0x110>
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	e70080e7          	jalr	-400(ra) # 8000564c <_Z11printStringPKc>
    finishedA = true;
    800037e4:	00100793          	li	a5,1
    800037e8:	00008717          	auipc	a4,0x8
    800037ec:	20f70823          	sb	a5,528(a4) # 8000b9f8 <_ZL9finishedA>
}
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003820:	00000913          	li	s2,0
    80003824:	0380006f          	j	8000385c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	d34080e7          	jalr	-716(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003830:	00148493          	addi	s1,s1,1
    80003834:	000027b7          	lui	a5,0x2
    80003838:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000383c:	0097ee63          	bltu	a5,s1,80003858 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003840:	00000713          	li	a4,0
    80003844:	000077b7          	lui	a5,0x7
    80003848:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000384c:	fce7eee3          	bltu	a5,a4,80003828 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003850:	00170713          	addi	a4,a4,1
    80003854:	ff1ff06f          	j	80003844 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003858:	00190913          	addi	s2,s2,1
    8000385c:	00f00793          	li	a5,15
    80003860:	0527e063          	bltu	a5,s2,800038a0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003864:	00006517          	auipc	a0,0x6
    80003868:	8cc50513          	addi	a0,a0,-1844 # 80009130 <CONSOLE_STATUS+0x120>
    8000386c:	00002097          	auipc	ra,0x2
    80003870:	de0080e7          	jalr	-544(ra) # 8000564c <_Z11printStringPKc>
    80003874:	00000613          	li	a2,0
    80003878:	00a00593          	li	a1,10
    8000387c:	0009051b          	sext.w	a0,s2
    80003880:	00002097          	auipc	ra,0x2
    80003884:	f7c080e7          	jalr	-132(ra) # 800057fc <_Z8printIntiii>
    80003888:	00006517          	auipc	a0,0x6
    8000388c:	af050513          	addi	a0,a0,-1296 # 80009378 <CONSOLE_STATUS+0x368>
    80003890:	00002097          	auipc	ra,0x2
    80003894:	dbc080e7          	jalr	-580(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003898:	00000493          	li	s1,0
    8000389c:	f99ff06f          	j	80003834 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800038a0:	00006517          	auipc	a0,0x6
    800038a4:	89850513          	addi	a0,a0,-1896 # 80009138 <CONSOLE_STATUS+0x128>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	da4080e7          	jalr	-604(ra) # 8000564c <_Z11printStringPKc>
    finishedB = true;
    800038b0:	00100793          	li	a5,1
    800038b4:	00008717          	auipc	a4,0x8
    800038b8:	14f702a3          	sb	a5,325(a4) # 8000b9f9 <_ZL9finishedB>
    thread_dispatch();
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	ca0080e7          	jalr	-864(ra) # 8000155c <_Z15thread_dispatchv>
}
    800038c4:	01813083          	ld	ra,24(sp)
    800038c8:	01013403          	ld	s0,16(sp)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	00013903          	ld	s2,0(sp)
    800038d4:	02010113          	addi	sp,sp,32
    800038d8:	00008067          	ret

00000000800038dc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800038dc:	fe010113          	addi	sp,sp,-32
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	01213023          	sd	s2,0(sp)
    800038f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800038f4:	00000493          	li	s1,0
    800038f8:	0400006f          	j	80003938 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800038fc:	00006517          	auipc	a0,0x6
    80003900:	84c50513          	addi	a0,a0,-1972 # 80009148 <CONSOLE_STATUS+0x138>
    80003904:	00002097          	auipc	ra,0x2
    80003908:	d48080e7          	jalr	-696(ra) # 8000564c <_Z11printStringPKc>
    8000390c:	00000613          	li	a2,0
    80003910:	00a00593          	li	a1,10
    80003914:	00048513          	mv	a0,s1
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	ee4080e7          	jalr	-284(ra) # 800057fc <_Z8printIntiii>
    80003920:	00006517          	auipc	a0,0x6
    80003924:	a5850513          	addi	a0,a0,-1448 # 80009378 <CONSOLE_STATUS+0x368>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	d24080e7          	jalr	-732(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003930:	0014849b          	addiw	s1,s1,1
    80003934:	0ff4f493          	andi	s1,s1,255
    80003938:	00200793          	li	a5,2
    8000393c:	fc97f0e3          	bgeu	a5,s1,800038fc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003940:	00006517          	auipc	a0,0x6
    80003944:	81050513          	addi	a0,a0,-2032 # 80009150 <CONSOLE_STATUS+0x140>
    80003948:	00002097          	auipc	ra,0x2
    8000394c:	d04080e7          	jalr	-764(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003950:	00700313          	li	t1,7
    thread_dispatch();
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	c08080e7          	jalr	-1016(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000395c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003960:	00006517          	auipc	a0,0x6
    80003964:	80050513          	addi	a0,a0,-2048 # 80009160 <CONSOLE_STATUS+0x150>
    80003968:	00002097          	auipc	ra,0x2
    8000396c:	ce4080e7          	jalr	-796(ra) # 8000564c <_Z11printStringPKc>
    80003970:	00000613          	li	a2,0
    80003974:	00a00593          	li	a1,10
    80003978:	0009051b          	sext.w	a0,s2
    8000397c:	00002097          	auipc	ra,0x2
    80003980:	e80080e7          	jalr	-384(ra) # 800057fc <_Z8printIntiii>
    80003984:	00006517          	auipc	a0,0x6
    80003988:	9f450513          	addi	a0,a0,-1548 # 80009378 <CONSOLE_STATUS+0x368>
    8000398c:	00002097          	auipc	ra,0x2
    80003990:	cc0080e7          	jalr	-832(ra) # 8000564c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003994:	00c00513          	li	a0,12
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	d30080e7          	jalr	-720(ra) # 800036c8 <_ZL9fibonaccim>
    800039a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800039a4:	00005517          	auipc	a0,0x5
    800039a8:	7c450513          	addi	a0,a0,1988 # 80009168 <CONSOLE_STATUS+0x158>
    800039ac:	00002097          	auipc	ra,0x2
    800039b0:	ca0080e7          	jalr	-864(ra) # 8000564c <_Z11printStringPKc>
    800039b4:	00000613          	li	a2,0
    800039b8:	00a00593          	li	a1,10
    800039bc:	0009051b          	sext.w	a0,s2
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	e3c080e7          	jalr	-452(ra) # 800057fc <_Z8printIntiii>
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	9b050513          	addi	a0,a0,-1616 # 80009378 <CONSOLE_STATUS+0x368>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	c7c080e7          	jalr	-900(ra) # 8000564c <_Z11printStringPKc>
    800039d8:	0400006f          	j	80003a18 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039dc:	00005517          	auipc	a0,0x5
    800039e0:	76c50513          	addi	a0,a0,1900 # 80009148 <CONSOLE_STATUS+0x138>
    800039e4:	00002097          	auipc	ra,0x2
    800039e8:	c68080e7          	jalr	-920(ra) # 8000564c <_Z11printStringPKc>
    800039ec:	00000613          	li	a2,0
    800039f0:	00a00593          	li	a1,10
    800039f4:	00048513          	mv	a0,s1
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	e04080e7          	jalr	-508(ra) # 800057fc <_Z8printIntiii>
    80003a00:	00006517          	auipc	a0,0x6
    80003a04:	97850513          	addi	a0,a0,-1672 # 80009378 <CONSOLE_STATUS+0x368>
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	c44080e7          	jalr	-956(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003a10:	0014849b          	addiw	s1,s1,1
    80003a14:	0ff4f493          	andi	s1,s1,255
    80003a18:	00500793          	li	a5,5
    80003a1c:	fc97f0e3          	bgeu	a5,s1,800039dc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003a20:	00005517          	auipc	a0,0x5
    80003a24:	75850513          	addi	a0,a0,1880 # 80009178 <CONSOLE_STATUS+0x168>
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	c24080e7          	jalr	-988(ra) # 8000564c <_Z11printStringPKc>
    finishedC = true;
    80003a30:	00100793          	li	a5,1
    80003a34:	00008717          	auipc	a4,0x8
    80003a38:	fcf70323          	sb	a5,-58(a4) # 8000b9fa <_ZL9finishedC>
    thread_dispatch();
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	b20080e7          	jalr	-1248(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	00013903          	ld	s2,0(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret

0000000080003a5c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00113c23          	sd	ra,24(sp)
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	01213023          	sd	s2,0(sp)
    80003a70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a74:	00a00493          	li	s1,10
    80003a78:	0400006f          	j	80003ab8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a7c:	00005517          	auipc	a0,0x5
    80003a80:	70c50513          	addi	a0,a0,1804 # 80009188 <CONSOLE_STATUS+0x178>
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	bc8080e7          	jalr	-1080(ra) # 8000564c <_Z11printStringPKc>
    80003a8c:	00000613          	li	a2,0
    80003a90:	00a00593          	li	a1,10
    80003a94:	00048513          	mv	a0,s1
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	d64080e7          	jalr	-668(ra) # 800057fc <_Z8printIntiii>
    80003aa0:	00006517          	auipc	a0,0x6
    80003aa4:	8d850513          	addi	a0,a0,-1832 # 80009378 <CONSOLE_STATUS+0x368>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	ba4080e7          	jalr	-1116(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ab0:	0014849b          	addiw	s1,s1,1
    80003ab4:	0ff4f493          	andi	s1,s1,255
    80003ab8:	00c00793          	li	a5,12
    80003abc:	fc97f0e3          	bgeu	a5,s1,80003a7c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003ac0:	00005517          	auipc	a0,0x5
    80003ac4:	6d050513          	addi	a0,a0,1744 # 80009190 <CONSOLE_STATUS+0x180>
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	b84080e7          	jalr	-1148(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ad0:	00500313          	li	t1,5
    thread_dispatch();
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	a88080e7          	jalr	-1400(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003adc:	01000513          	li	a0,16
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	be8080e7          	jalr	-1048(ra) # 800036c8 <_ZL9fibonaccim>
    80003ae8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003aec:	00005517          	auipc	a0,0x5
    80003af0:	6b450513          	addi	a0,a0,1716 # 800091a0 <CONSOLE_STATUS+0x190>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	b58080e7          	jalr	-1192(ra) # 8000564c <_Z11printStringPKc>
    80003afc:	00000613          	li	a2,0
    80003b00:	00a00593          	li	a1,10
    80003b04:	0009051b          	sext.w	a0,s2
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	cf4080e7          	jalr	-780(ra) # 800057fc <_Z8printIntiii>
    80003b10:	00006517          	auipc	a0,0x6
    80003b14:	86850513          	addi	a0,a0,-1944 # 80009378 <CONSOLE_STATUS+0x368>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	b34080e7          	jalr	-1228(ra) # 8000564c <_Z11printStringPKc>
    80003b20:	0400006f          	j	80003b60 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b24:	00005517          	auipc	a0,0x5
    80003b28:	66450513          	addi	a0,a0,1636 # 80009188 <CONSOLE_STATUS+0x178>
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	b20080e7          	jalr	-1248(ra) # 8000564c <_Z11printStringPKc>
    80003b34:	00000613          	li	a2,0
    80003b38:	00a00593          	li	a1,10
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	00002097          	auipc	ra,0x2
    80003b44:	cbc080e7          	jalr	-836(ra) # 800057fc <_Z8printIntiii>
    80003b48:	00006517          	auipc	a0,0x6
    80003b4c:	83050513          	addi	a0,a0,-2000 # 80009378 <CONSOLE_STATUS+0x368>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	afc080e7          	jalr	-1284(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b58:	0014849b          	addiw	s1,s1,1
    80003b5c:	0ff4f493          	andi	s1,s1,255
    80003b60:	00f00793          	li	a5,15
    80003b64:	fc97f0e3          	bgeu	a5,s1,80003b24 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003b68:	00005517          	auipc	a0,0x5
    80003b6c:	64850513          	addi	a0,a0,1608 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	adc080e7          	jalr	-1316(ra) # 8000564c <_Z11printStringPKc>
    finishedD = true;
    80003b78:	00100793          	li	a5,1
    80003b7c:	00008717          	auipc	a4,0x8
    80003b80:	e6f70fa3          	sb	a5,-385(a4) # 8000b9fb <_ZL9finishedD>
    thread_dispatch();
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	9d8080e7          	jalr	-1576(ra) # 8000155c <_Z15thread_dispatchv>
}
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	00013903          	ld	s2,0(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret

0000000080003ba4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ba4:	fc010113          	addi	sp,sp,-64
    80003ba8:	02113c23          	sd	ra,56(sp)
    80003bac:	02813823          	sd	s0,48(sp)
    80003bb0:	02913423          	sd	s1,40(sp)
    80003bb4:	03213023          	sd	s2,32(sp)
    80003bb8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003bbc:	02000513          	li	a0,32
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	e70080e7          	jalr	-400(ra) # 80001a30 <_Znwm>
    80003bc8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	184080e7          	jalr	388(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80003bd4:	00008797          	auipc	a5,0x8
    80003bd8:	b7c78793          	addi	a5,a5,-1156 # 8000b750 <_ZTV7WorkerA+0x10>
    80003bdc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003be0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003be4:	00005517          	auipc	a0,0x5
    80003be8:	5dc50513          	addi	a0,a0,1500 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	a60080e7          	jalr	-1440(ra) # 8000564c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003bf4:	02000513          	li	a0,32
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	e38080e7          	jalr	-456(ra) # 80001a30 <_Znwm>
    80003c00:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003c04:	ffffe097          	auipc	ra,0xffffe
    80003c08:	14c080e7          	jalr	332(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80003c0c:	00008797          	auipc	a5,0x8
    80003c10:	b6c78793          	addi	a5,a5,-1172 # 8000b778 <_ZTV7WorkerB+0x10>
    80003c14:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003c18:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003c1c:	00005517          	auipc	a0,0x5
    80003c20:	5bc50513          	addi	a0,a0,1468 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003c24:	00002097          	auipc	ra,0x2
    80003c28:	a28080e7          	jalr	-1496(ra) # 8000564c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003c2c:	02000513          	li	a0,32
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	e00080e7          	jalr	-512(ra) # 80001a30 <_Znwm>
    80003c38:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	114080e7          	jalr	276(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80003c44:	00008797          	auipc	a5,0x8
    80003c48:	b5c78793          	addi	a5,a5,-1188 # 8000b7a0 <_ZTV7WorkerC+0x10>
    80003c4c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003c50:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003c54:	00005517          	auipc	a0,0x5
    80003c58:	59c50513          	addi	a0,a0,1436 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	9f0080e7          	jalr	-1552(ra) # 8000564c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003c64:	02000513          	li	a0,32
    80003c68:	ffffe097          	auipc	ra,0xffffe
    80003c6c:	dc8080e7          	jalr	-568(ra) # 80001a30 <_Znwm>
    80003c70:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003c74:	ffffe097          	auipc	ra,0xffffe
    80003c78:	0dc080e7          	jalr	220(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80003c7c:	00008797          	auipc	a5,0x8
    80003c80:	b4c78793          	addi	a5,a5,-1204 # 8000b7c8 <_ZTV7WorkerD+0x10>
    80003c84:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003c88:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003c8c:	00005517          	auipc	a0,0x5
    80003c90:	57c50513          	addi	a0,a0,1404 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003c94:	00002097          	auipc	ra,0x2
    80003c98:	9b8080e7          	jalr	-1608(ra) # 8000564c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003c9c:	00000493          	li	s1,0
    80003ca0:	00300793          	li	a5,3
    80003ca4:	0297c663          	blt	a5,s1,80003cd0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003ca8:	00349793          	slli	a5,s1,0x3
    80003cac:	fe040713          	addi	a4,s0,-32
    80003cb0:	00f707b3          	add	a5,a4,a5
    80003cb4:	fe07b503          	ld	a0,-32(a5)
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	03c080e7          	jalr	60(ra) # 80001cf4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003cc0:	0014849b          	addiw	s1,s1,1
    80003cc4:	fddff06f          	j	80003ca0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	060080e7          	jalr	96(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003cd0:	00008797          	auipc	a5,0x8
    80003cd4:	d287c783          	lbu	a5,-728(a5) # 8000b9f8 <_ZL9finishedA>
    80003cd8:	fe0788e3          	beqz	a5,80003cc8 <_Z20Threads_CPP_API_testv+0x124>
    80003cdc:	00008797          	auipc	a5,0x8
    80003ce0:	d1d7c783          	lbu	a5,-739(a5) # 8000b9f9 <_ZL9finishedB>
    80003ce4:	fe0782e3          	beqz	a5,80003cc8 <_Z20Threads_CPP_API_testv+0x124>
    80003ce8:	00008797          	auipc	a5,0x8
    80003cec:	d127c783          	lbu	a5,-750(a5) # 8000b9fa <_ZL9finishedC>
    80003cf0:	fc078ce3          	beqz	a5,80003cc8 <_Z20Threads_CPP_API_testv+0x124>
    80003cf4:	00008797          	auipc	a5,0x8
    80003cf8:	d077c783          	lbu	a5,-761(a5) # 8000b9fb <_ZL9finishedD>
    80003cfc:	fc0786e3          	beqz	a5,80003cc8 <_Z20Threads_CPP_API_testv+0x124>
    80003d00:	fc040493          	addi	s1,s0,-64
    80003d04:	0080006f          	j	80003d0c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003d08:	00848493          	addi	s1,s1,8
    80003d0c:	fe040793          	addi	a5,s0,-32
    80003d10:	08f48663          	beq	s1,a5,80003d9c <_Z20Threads_CPP_API_testv+0x1f8>
    80003d14:	0004b503          	ld	a0,0(s1)
    80003d18:	fe0508e3          	beqz	a0,80003d08 <_Z20Threads_CPP_API_testv+0x164>
    80003d1c:	00053783          	ld	a5,0(a0)
    80003d20:	0087b783          	ld	a5,8(a5)
    80003d24:	000780e7          	jalr	a5
    80003d28:	fe1ff06f          	j	80003d08 <_Z20Threads_CPP_API_testv+0x164>
    80003d2c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003d30:	00048513          	mv	a0,s1
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	d4c080e7          	jalr	-692(ra) # 80001a80 <_ZdlPv>
    80003d3c:	00090513          	mv	a0,s2
    80003d40:	00009097          	auipc	ra,0x9
    80003d44:	dc8080e7          	jalr	-568(ra) # 8000cb08 <_Unwind_Resume>
    80003d48:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	d30080e7          	jalr	-720(ra) # 80001a80 <_ZdlPv>
    80003d58:	00090513          	mv	a0,s2
    80003d5c:	00009097          	auipc	ra,0x9
    80003d60:	dac080e7          	jalr	-596(ra) # 8000cb08 <_Unwind_Resume>
    80003d64:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	d14080e7          	jalr	-748(ra) # 80001a80 <_ZdlPv>
    80003d74:	00090513          	mv	a0,s2
    80003d78:	00009097          	auipc	ra,0x9
    80003d7c:	d90080e7          	jalr	-624(ra) # 8000cb08 <_Unwind_Resume>
    80003d80:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003d84:	00048513          	mv	a0,s1
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	cf8080e7          	jalr	-776(ra) # 80001a80 <_ZdlPv>
    80003d90:	00090513          	mv	a0,s2
    80003d94:	00009097          	auipc	ra,0x9
    80003d98:	d74080e7          	jalr	-652(ra) # 8000cb08 <_Unwind_Resume>
}
    80003d9c:	03813083          	ld	ra,56(sp)
    80003da0:	03013403          	ld	s0,48(sp)
    80003da4:	02813483          	ld	s1,40(sp)
    80003da8:	02013903          	ld	s2,32(sp)
    80003dac:	04010113          	addi	sp,sp,64
    80003db0:	00008067          	ret

0000000080003db4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	00813023          	sd	s0,0(sp)
    80003dc0:	01010413          	addi	s0,sp,16
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	98c78793          	addi	a5,a5,-1652 # 8000b750 <_ZTV7WorkerA+0x10>
    80003dcc:	00f53023          	sd	a5,0(a0)
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	d2c080e7          	jalr	-724(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003dd8:	00813083          	ld	ra,8(sp)
    80003ddc:	00013403          	ld	s0,0(sp)
    80003de0:	01010113          	addi	sp,sp,16
    80003de4:	00008067          	ret

0000000080003de8 <_ZN7WorkerAD0Ev>:
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	02010413          	addi	s0,sp,32
    80003dfc:	00050493          	mv	s1,a0
    80003e00:	00008797          	auipc	a5,0x8
    80003e04:	95078793          	addi	a5,a5,-1712 # 8000b750 <_ZTV7WorkerA+0x10>
    80003e08:	00f53023          	sd	a5,0(a0)
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	cf0080e7          	jalr	-784(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003e14:	00048513          	mv	a0,s1
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	c68080e7          	jalr	-920(ra) # 80001a80 <_ZdlPv>
    80003e20:	01813083          	ld	ra,24(sp)
    80003e24:	01013403          	ld	s0,16(sp)
    80003e28:	00813483          	ld	s1,8(sp)
    80003e2c:	02010113          	addi	sp,sp,32
    80003e30:	00008067          	ret

0000000080003e34 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003e34:	ff010113          	addi	sp,sp,-16
    80003e38:	00113423          	sd	ra,8(sp)
    80003e3c:	00813023          	sd	s0,0(sp)
    80003e40:	01010413          	addi	s0,sp,16
    80003e44:	00008797          	auipc	a5,0x8
    80003e48:	93478793          	addi	a5,a5,-1740 # 8000b778 <_ZTV7WorkerB+0x10>
    80003e4c:	00f53023          	sd	a5,0(a0)
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	cac080e7          	jalr	-852(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003e58:	00813083          	ld	ra,8(sp)
    80003e5c:	00013403          	ld	s0,0(sp)
    80003e60:	01010113          	addi	sp,sp,16
    80003e64:	00008067          	ret

0000000080003e68 <_ZN7WorkerBD0Ev>:
    80003e68:	fe010113          	addi	sp,sp,-32
    80003e6c:	00113c23          	sd	ra,24(sp)
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00913423          	sd	s1,8(sp)
    80003e78:	02010413          	addi	s0,sp,32
    80003e7c:	00050493          	mv	s1,a0
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	8f878793          	addi	a5,a5,-1800 # 8000b778 <_ZTV7WorkerB+0x10>
    80003e88:	00f53023          	sd	a5,0(a0)
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	c70080e7          	jalr	-912(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003e94:	00048513          	mv	a0,s1
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	be8080e7          	jalr	-1048(ra) # 80001a80 <_ZdlPv>
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	02010113          	addi	sp,sp,32
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	00008797          	auipc	a5,0x8
    80003ec8:	8dc78793          	addi	a5,a5,-1828 # 8000b7a0 <_ZTV7WorkerC+0x10>
    80003ecc:	00f53023          	sd	a5,0(a0)
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	c2c080e7          	jalr	-980(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003ed8:	00813083          	ld	ra,8(sp)
    80003edc:	00013403          	ld	s0,0(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret

0000000080003ee8 <_ZN7WorkerCD0Ev>:
    80003ee8:	fe010113          	addi	sp,sp,-32
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	00813823          	sd	s0,16(sp)
    80003ef4:	00913423          	sd	s1,8(sp)
    80003ef8:	02010413          	addi	s0,sp,32
    80003efc:	00050493          	mv	s1,a0
    80003f00:	00008797          	auipc	a5,0x8
    80003f04:	8a078793          	addi	a5,a5,-1888 # 8000b7a0 <_ZTV7WorkerC+0x10>
    80003f08:	00f53023          	sd	a5,0(a0)
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	bf0080e7          	jalr	-1040(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003f14:	00048513          	mv	a0,s1
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	b68080e7          	jalr	-1176(ra) # 80001a80 <_ZdlPv>
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret

0000000080003f34 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	00008797          	auipc	a5,0x8
    80003f48:	88478793          	addi	a5,a5,-1916 # 8000b7c8 <_ZTV7WorkerD+0x10>
    80003f4c:	00f53023          	sd	a5,0(a0)
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	bac080e7          	jalr	-1108(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003f58:	00813083          	ld	ra,8(sp)
    80003f5c:	00013403          	ld	s0,0(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <_ZN7WorkerDD0Ev>:
    80003f68:	fe010113          	addi	sp,sp,-32
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00913423          	sd	s1,8(sp)
    80003f78:	02010413          	addi	s0,sp,32
    80003f7c:	00050493          	mv	s1,a0
    80003f80:	00008797          	auipc	a5,0x8
    80003f84:	84878793          	addi	a5,a5,-1976 # 8000b7c8 <_ZTV7WorkerD+0x10>
    80003f88:	00f53023          	sd	a5,0(a0)
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	b70080e7          	jalr	-1168(ra) # 80001afc <_ZN6ThreadD1Ev>
    80003f94:	00048513          	mv	a0,s1
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	ae8080e7          	jalr	-1304(ra) # 80001a80 <_ZdlPv>
    80003fa0:	01813083          	ld	ra,24(sp)
    80003fa4:	01013403          	ld	s0,16(sp)
    80003fa8:	00813483          	ld	s1,8(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret

0000000080003fb4 <_ZN7WorkerA3runEv>:
    void run() override {
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00113423          	sd	ra,8(sp)
    80003fbc:	00813023          	sd	s0,0(sp)
    80003fc0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003fc4:	00000593          	li	a1,0
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	774080e7          	jalr	1908(ra) # 8000373c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003fd0:	00813083          	ld	ra,8(sp)
    80003fd4:	00013403          	ld	s0,0(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003ff0:	00000593          	li	a1,0
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	814080e7          	jalr	-2028(ra) # 80003808 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ffc:	00813083          	ld	ra,8(sp)
    80004000:	00013403          	ld	s0,0(sp)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret

000000008000400c <_ZN7WorkerC3runEv>:
    void run() override {
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00113423          	sd	ra,8(sp)
    80004014:	00813023          	sd	s0,0(sp)
    80004018:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000401c:	00000593          	li	a1,0
    80004020:	00000097          	auipc	ra,0x0
    80004024:	8bc080e7          	jalr	-1860(ra) # 800038dc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004028:	00813083          	ld	ra,8(sp)
    8000402c:	00013403          	ld	s0,0(sp)
    80004030:	01010113          	addi	sp,sp,16
    80004034:	00008067          	ret

0000000080004038 <_ZN7WorkerD3runEv>:
    void run() override {
    80004038:	ff010113          	addi	sp,sp,-16
    8000403c:	00113423          	sd	ra,8(sp)
    80004040:	00813023          	sd	s0,0(sp)
    80004044:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004048:	00000593          	li	a1,0
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	a10080e7          	jalr	-1520(ra) # 80003a5c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004054:	00813083          	ld	ra,8(sp)
    80004058:	00013403          	ld	s0,0(sp)
    8000405c:	01010113          	addi	sp,sp,16
    80004060:	00008067          	ret

0000000080004064 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004064:	f8010113          	addi	sp,sp,-128
    80004068:	06113c23          	sd	ra,120(sp)
    8000406c:	06813823          	sd	s0,112(sp)
    80004070:	06913423          	sd	s1,104(sp)
    80004074:	07213023          	sd	s2,96(sp)
    80004078:	05313c23          	sd	s3,88(sp)
    8000407c:	05413823          	sd	s4,80(sp)
    80004080:	05513423          	sd	s5,72(sp)
    80004084:	05613023          	sd	s6,64(sp)
    80004088:	03713c23          	sd	s7,56(sp)
    8000408c:	03813823          	sd	s8,48(sp)
    80004090:	03913423          	sd	s9,40(sp)
    80004094:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004098:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000409c:	00005517          	auipc	a0,0x5
    800040a0:	f9450513          	addi	a0,a0,-108 # 80009030 <CONSOLE_STATUS+0x20>
    800040a4:	00001097          	auipc	ra,0x1
    800040a8:	5a8080e7          	jalr	1448(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    800040ac:	01e00593          	li	a1,30
    800040b0:	f8040493          	addi	s1,s0,-128
    800040b4:	00048513          	mv	a0,s1
    800040b8:	00001097          	auipc	ra,0x1
    800040bc:	61c080e7          	jalr	1564(ra) # 800056d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800040c0:	00048513          	mv	a0,s1
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	6e8080e7          	jalr	1768(ra) # 800057ac <_Z11stringToIntPKc>
    800040cc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800040d0:	00005517          	auipc	a0,0x5
    800040d4:	f8050513          	addi	a0,a0,-128 # 80009050 <CONSOLE_STATUS+0x40>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	574080e7          	jalr	1396(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    800040e0:	01e00593          	li	a1,30
    800040e4:	00048513          	mv	a0,s1
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	5ec080e7          	jalr	1516(ra) # 800056d4 <_Z9getStringPci>
    n = stringToInt(input);
    800040f0:	00048513          	mv	a0,s1
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	6b8080e7          	jalr	1720(ra) # 800057ac <_Z11stringToIntPKc>
    800040fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004100:	00005517          	auipc	a0,0x5
    80004104:	f7050513          	addi	a0,a0,-144 # 80009070 <CONSOLE_STATUS+0x60>
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	544080e7          	jalr	1348(ra) # 8000564c <_Z11printStringPKc>
    printInt(threadNum);
    80004110:	00000613          	li	a2,0
    80004114:	00a00593          	li	a1,10
    80004118:	00098513          	mv	a0,s3
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	6e0080e7          	jalr	1760(ra) # 800057fc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004124:	00005517          	auipc	a0,0x5
    80004128:	f6450513          	addi	a0,a0,-156 # 80009088 <CONSOLE_STATUS+0x78>
    8000412c:	00001097          	auipc	ra,0x1
    80004130:	520080e7          	jalr	1312(ra) # 8000564c <_Z11printStringPKc>
    printInt(n);
    80004134:	00000613          	li	a2,0
    80004138:	00a00593          	li	a1,10
    8000413c:	00048513          	mv	a0,s1
    80004140:	00001097          	auipc	ra,0x1
    80004144:	6bc080e7          	jalr	1724(ra) # 800057fc <_Z8printIntiii>
    printString(".\n");
    80004148:	00005517          	auipc	a0,0x5
    8000414c:	f5850513          	addi	a0,a0,-168 # 800090a0 <CONSOLE_STATUS+0x90>
    80004150:	00001097          	auipc	ra,0x1
    80004154:	4fc080e7          	jalr	1276(ra) # 8000564c <_Z11printStringPKc>
    if (threadNum > n) {
    80004158:	0334c463          	blt	s1,s3,80004180 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000415c:	03305c63          	blez	s3,80004194 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004160:	03800513          	li	a0,56
    80004164:	ffffe097          	auipc	ra,0xffffe
    80004168:	8cc080e7          	jalr	-1844(ra) # 80001a30 <_Znwm>
    8000416c:	00050a93          	mv	s5,a0
    80004170:	00048593          	mv	a1,s1
    80004174:	00001097          	auipc	ra,0x1
    80004178:	7a8080e7          	jalr	1960(ra) # 8000591c <_ZN9BufferCPPC1Ei>
    8000417c:	0300006f          	j	800041ac <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004180:	00005517          	auipc	a0,0x5
    80004184:	f2850513          	addi	a0,a0,-216 # 800090a8 <CONSOLE_STATUS+0x98>
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	4c4080e7          	jalr	1220(ra) # 8000564c <_Z11printStringPKc>
        return;
    80004190:	0140006f          	j	800041a4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004194:	00005517          	auipc	a0,0x5
    80004198:	f5450513          	addi	a0,a0,-172 # 800090e8 <CONSOLE_STATUS+0xd8>
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	4b0080e7          	jalr	1200(ra) # 8000564c <_Z11printStringPKc>
        return;
    800041a4:	000c0113          	mv	sp,s8
    800041a8:	2140006f          	j	800043bc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800041ac:	01000513          	li	a0,16
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	880080e7          	jalr	-1920(ra) # 80001a30 <_Znwm>
    800041b8:	00050913          	mv	s2,a0
    800041bc:	00000593          	li	a1,0
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	c1c080e7          	jalr	-996(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    800041c8:	00008797          	auipc	a5,0x8
    800041cc:	8527b023          	sd	s2,-1984(a5) # 8000ba08 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800041d0:	00399793          	slli	a5,s3,0x3
    800041d4:	00f78793          	addi	a5,a5,15
    800041d8:	ff07f793          	andi	a5,a5,-16
    800041dc:	40f10133          	sub	sp,sp,a5
    800041e0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800041e4:	0019871b          	addiw	a4,s3,1
    800041e8:	00171793          	slli	a5,a4,0x1
    800041ec:	00e787b3          	add	a5,a5,a4
    800041f0:	00379793          	slli	a5,a5,0x3
    800041f4:	00f78793          	addi	a5,a5,15
    800041f8:	ff07f793          	andi	a5,a5,-16
    800041fc:	40f10133          	sub	sp,sp,a5
    80004200:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004204:	00199493          	slli	s1,s3,0x1
    80004208:	013484b3          	add	s1,s1,s3
    8000420c:	00349493          	slli	s1,s1,0x3
    80004210:	009b04b3          	add	s1,s6,s1
    80004214:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004218:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000421c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004220:	02800513          	li	a0,40
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	80c080e7          	jalr	-2036(ra) # 80001a30 <_Znwm>
    8000422c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	b20080e7          	jalr	-1248(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80004238:	00007797          	auipc	a5,0x7
    8000423c:	60878793          	addi	a5,a5,1544 # 8000b840 <_ZTV8Consumer+0x10>
    80004240:	00fbb023          	sd	a5,0(s7)
    80004244:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004248:	000b8513          	mv	a0,s7
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	aa8080e7          	jalr	-1368(ra) # 80001cf4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004254:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004258:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000425c:	00007797          	auipc	a5,0x7
    80004260:	7ac7b783          	ld	a5,1964(a5) # 8000ba08 <_ZL10waitForAll>
    80004264:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004268:	02800513          	li	a0,40
    8000426c:	ffffd097          	auipc	ra,0xffffd
    80004270:	7c4080e7          	jalr	1988(ra) # 80001a30 <_Znwm>
    80004274:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	ad8080e7          	jalr	-1320(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80004280:	00007797          	auipc	a5,0x7
    80004284:	57078793          	addi	a5,a5,1392 # 8000b7f0 <_ZTV16ProducerKeyborad+0x10>
    80004288:	00f4b023          	sd	a5,0(s1)
    8000428c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004290:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004294:	00048513          	mv	a0,s1
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	a5c080e7          	jalr	-1444(ra) # 80001cf4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800042a0:	00100913          	li	s2,1
    800042a4:	0300006f          	j	800042d4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800042a8:	00007797          	auipc	a5,0x7
    800042ac:	57078793          	addi	a5,a5,1392 # 8000b818 <_ZTV8Producer+0x10>
    800042b0:	00fcb023          	sd	a5,0(s9)
    800042b4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800042b8:	00391793          	slli	a5,s2,0x3
    800042bc:	00fa07b3          	add	a5,s4,a5
    800042c0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800042c4:	000c8513          	mv	a0,s9
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	a2c080e7          	jalr	-1492(ra) # 80001cf4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800042d0:	0019091b          	addiw	s2,s2,1
    800042d4:	05395263          	bge	s2,s3,80004318 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800042d8:	00191493          	slli	s1,s2,0x1
    800042dc:	012484b3          	add	s1,s1,s2
    800042e0:	00349493          	slli	s1,s1,0x3
    800042e4:	009b04b3          	add	s1,s6,s1
    800042e8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800042ec:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800042f0:	00007797          	auipc	a5,0x7
    800042f4:	7187b783          	ld	a5,1816(a5) # 8000ba08 <_ZL10waitForAll>
    800042f8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800042fc:	02800513          	li	a0,40
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	730080e7          	jalr	1840(ra) # 80001a30 <_Znwm>
    80004308:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	a44080e7          	jalr	-1468(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80004314:	f95ff06f          	j	800042a8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	a10080e7          	jalr	-1520(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004320:	00000493          	li	s1,0
    80004324:	0099ce63          	blt	s3,s1,80004340 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004328:	00007517          	auipc	a0,0x7
    8000432c:	6e053503          	ld	a0,1760(a0) # 8000ba08 <_ZL10waitForAll>
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	ae8080e7          	jalr	-1304(ra) # 80001e18 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004338:	0014849b          	addiw	s1,s1,1
    8000433c:	fe9ff06f          	j	80004324 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004340:	00007517          	auipc	a0,0x7
    80004344:	6c853503          	ld	a0,1736(a0) # 8000ba08 <_ZL10waitForAll>
    80004348:	00050863          	beqz	a0,80004358 <_Z20testConsumerProducerv+0x2f4>
    8000434c:	00053783          	ld	a5,0(a0)
    80004350:	0087b783          	ld	a5,8(a5)
    80004354:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004358:	00000493          	li	s1,0
    8000435c:	0080006f          	j	80004364 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004360:	0014849b          	addiw	s1,s1,1
    80004364:	0334d263          	bge	s1,s3,80004388 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004368:	00349793          	slli	a5,s1,0x3
    8000436c:	00fa07b3          	add	a5,s4,a5
    80004370:	0007b503          	ld	a0,0(a5)
    80004374:	fe0506e3          	beqz	a0,80004360 <_Z20testConsumerProducerv+0x2fc>
    80004378:	00053783          	ld	a5,0(a0)
    8000437c:	0087b783          	ld	a5,8(a5)
    80004380:	000780e7          	jalr	a5
    80004384:	fddff06f          	j	80004360 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004388:	000b8a63          	beqz	s7,8000439c <_Z20testConsumerProducerv+0x338>
    8000438c:	000bb783          	ld	a5,0(s7)
    80004390:	0087b783          	ld	a5,8(a5)
    80004394:	000b8513          	mv	a0,s7
    80004398:	000780e7          	jalr	a5
    delete buffer;
    8000439c:	000a8e63          	beqz	s5,800043b8 <_Z20testConsumerProducerv+0x354>
    800043a0:	000a8513          	mv	a0,s5
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	870080e7          	jalr	-1936(ra) # 80005c14 <_ZN9BufferCPPD1Ev>
    800043ac:	000a8513          	mv	a0,s5
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	6d0080e7          	jalr	1744(ra) # 80001a80 <_ZdlPv>
    800043b8:	000c0113          	mv	sp,s8
}
    800043bc:	f8040113          	addi	sp,s0,-128
    800043c0:	07813083          	ld	ra,120(sp)
    800043c4:	07013403          	ld	s0,112(sp)
    800043c8:	06813483          	ld	s1,104(sp)
    800043cc:	06013903          	ld	s2,96(sp)
    800043d0:	05813983          	ld	s3,88(sp)
    800043d4:	05013a03          	ld	s4,80(sp)
    800043d8:	04813a83          	ld	s5,72(sp)
    800043dc:	04013b03          	ld	s6,64(sp)
    800043e0:	03813b83          	ld	s7,56(sp)
    800043e4:	03013c03          	ld	s8,48(sp)
    800043e8:	02813c83          	ld	s9,40(sp)
    800043ec:	08010113          	addi	sp,sp,128
    800043f0:	00008067          	ret
    800043f4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800043f8:	000a8513          	mv	a0,s5
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	684080e7          	jalr	1668(ra) # 80001a80 <_ZdlPv>
    80004404:	00048513          	mv	a0,s1
    80004408:	00008097          	auipc	ra,0x8
    8000440c:	700080e7          	jalr	1792(ra) # 8000cb08 <_Unwind_Resume>
    80004410:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004414:	00090513          	mv	a0,s2
    80004418:	ffffd097          	auipc	ra,0xffffd
    8000441c:	668080e7          	jalr	1640(ra) # 80001a80 <_ZdlPv>
    80004420:	00048513          	mv	a0,s1
    80004424:	00008097          	auipc	ra,0x8
    80004428:	6e4080e7          	jalr	1764(ra) # 8000cb08 <_Unwind_Resume>
    8000442c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004430:	000b8513          	mv	a0,s7
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	64c080e7          	jalr	1612(ra) # 80001a80 <_ZdlPv>
    8000443c:	00048513          	mv	a0,s1
    80004440:	00008097          	auipc	ra,0x8
    80004444:	6c8080e7          	jalr	1736(ra) # 8000cb08 <_Unwind_Resume>
    80004448:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000444c:	00048513          	mv	a0,s1
    80004450:	ffffd097          	auipc	ra,0xffffd
    80004454:	630080e7          	jalr	1584(ra) # 80001a80 <_ZdlPv>
    80004458:	00090513          	mv	a0,s2
    8000445c:	00008097          	auipc	ra,0x8
    80004460:	6ac080e7          	jalr	1708(ra) # 8000cb08 <_Unwind_Resume>
    80004464:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004468:	000c8513          	mv	a0,s9
    8000446c:	ffffd097          	auipc	ra,0xffffd
    80004470:	614080e7          	jalr	1556(ra) # 80001a80 <_ZdlPv>
    80004474:	00048513          	mv	a0,s1
    80004478:	00008097          	auipc	ra,0x8
    8000447c:	690080e7          	jalr	1680(ra) # 8000cb08 <_Unwind_Resume>

0000000080004480 <_ZN8Consumer3runEv>:
    void run() override {
    80004480:	fd010113          	addi	sp,sp,-48
    80004484:	02113423          	sd	ra,40(sp)
    80004488:	02813023          	sd	s0,32(sp)
    8000448c:	00913c23          	sd	s1,24(sp)
    80004490:	01213823          	sd	s2,16(sp)
    80004494:	01313423          	sd	s3,8(sp)
    80004498:	03010413          	addi	s0,sp,48
    8000449c:	00050913          	mv	s2,a0
        int i = 0;
    800044a0:	00000993          	li	s3,0
    800044a4:	0100006f          	j	800044b4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800044a8:	00a00513          	li	a0,10
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	a58080e7          	jalr	-1448(ra) # 80001f04 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800044b4:	00007797          	auipc	a5,0x7
    800044b8:	54c7a783          	lw	a5,1356(a5) # 8000ba00 <_ZL9threadEnd>
    800044bc:	04079a63          	bnez	a5,80004510 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800044c0:	02093783          	ld	a5,32(s2)
    800044c4:	0087b503          	ld	a0,8(a5)
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	638080e7          	jalr	1592(ra) # 80005b00 <_ZN9BufferCPP3getEv>
            i++;
    800044d0:	0019849b          	addiw	s1,s3,1
    800044d4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800044d8:	0ff57513          	andi	a0,a0,255
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	a28080e7          	jalr	-1496(ra) # 80001f04 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800044e4:	05000793          	li	a5,80
    800044e8:	02f4e4bb          	remw	s1,s1,a5
    800044ec:	fc0494e3          	bnez	s1,800044b4 <_ZN8Consumer3runEv+0x34>
    800044f0:	fb9ff06f          	j	800044a8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800044f4:	02093783          	ld	a5,32(s2)
    800044f8:	0087b503          	ld	a0,8(a5)
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	604080e7          	jalr	1540(ra) # 80005b00 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004504:	0ff57513          	andi	a0,a0,255
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	9fc080e7          	jalr	-1540(ra) # 80001f04 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004510:	02093783          	ld	a5,32(s2)
    80004514:	0087b503          	ld	a0,8(a5)
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	674080e7          	jalr	1652(ra) # 80005b8c <_ZN9BufferCPP6getCntEv>
    80004520:	fca04ae3          	bgtz	a0,800044f4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004524:	02093783          	ld	a5,32(s2)
    80004528:	0107b503          	ld	a0,16(a5)
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	918080e7          	jalr	-1768(ra) # 80001e44 <_ZN9Semaphore6signalEv>
    }
    80004534:	02813083          	ld	ra,40(sp)
    80004538:	02013403          	ld	s0,32(sp)
    8000453c:	01813483          	ld	s1,24(sp)
    80004540:	01013903          	ld	s2,16(sp)
    80004544:	00813983          	ld	s3,8(sp)
    80004548:	03010113          	addi	sp,sp,48
    8000454c:	00008067          	ret

0000000080004550 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004550:	ff010113          	addi	sp,sp,-16
    80004554:	00113423          	sd	ra,8(sp)
    80004558:	00813023          	sd	s0,0(sp)
    8000455c:	01010413          	addi	s0,sp,16
    80004560:	00007797          	auipc	a5,0x7
    80004564:	2e078793          	addi	a5,a5,736 # 8000b840 <_ZTV8Consumer+0x10>
    80004568:	00f53023          	sd	a5,0(a0)
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	590080e7          	jalr	1424(ra) # 80001afc <_ZN6ThreadD1Ev>
    80004574:	00813083          	ld	ra,8(sp)
    80004578:	00013403          	ld	s0,0(sp)
    8000457c:	01010113          	addi	sp,sp,16
    80004580:	00008067          	ret

0000000080004584 <_ZN8ConsumerD0Ev>:
    80004584:	fe010113          	addi	sp,sp,-32
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	00813823          	sd	s0,16(sp)
    80004590:	00913423          	sd	s1,8(sp)
    80004594:	02010413          	addi	s0,sp,32
    80004598:	00050493          	mv	s1,a0
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	2a478793          	addi	a5,a5,676 # 8000b840 <_ZTV8Consumer+0x10>
    800045a4:	00f53023          	sd	a5,0(a0)
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	554080e7          	jalr	1364(ra) # 80001afc <_ZN6ThreadD1Ev>
    800045b0:	00048513          	mv	a0,s1
    800045b4:	ffffd097          	auipc	ra,0xffffd
    800045b8:	4cc080e7          	jalr	1228(ra) # 80001a80 <_ZdlPv>
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	01013403          	ld	s0,16(sp)
    800045c4:	00813483          	ld	s1,8(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	00008067          	ret

00000000800045d0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800045d0:	ff010113          	addi	sp,sp,-16
    800045d4:	00113423          	sd	ra,8(sp)
    800045d8:	00813023          	sd	s0,0(sp)
    800045dc:	01010413          	addi	s0,sp,16
    800045e0:	00007797          	auipc	a5,0x7
    800045e4:	21078793          	addi	a5,a5,528 # 8000b7f0 <_ZTV16ProducerKeyborad+0x10>
    800045e8:	00f53023          	sd	a5,0(a0)
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	510080e7          	jalr	1296(ra) # 80001afc <_ZN6ThreadD1Ev>
    800045f4:	00813083          	ld	ra,8(sp)
    800045f8:	00013403          	ld	s0,0(sp)
    800045fc:	01010113          	addi	sp,sp,16
    80004600:	00008067          	ret

0000000080004604 <_ZN16ProducerKeyboradD0Ev>:
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00113c23          	sd	ra,24(sp)
    8000460c:	00813823          	sd	s0,16(sp)
    80004610:	00913423          	sd	s1,8(sp)
    80004614:	02010413          	addi	s0,sp,32
    80004618:	00050493          	mv	s1,a0
    8000461c:	00007797          	auipc	a5,0x7
    80004620:	1d478793          	addi	a5,a5,468 # 8000b7f0 <_ZTV16ProducerKeyborad+0x10>
    80004624:	00f53023          	sd	a5,0(a0)
    80004628:	ffffd097          	auipc	ra,0xffffd
    8000462c:	4d4080e7          	jalr	1236(ra) # 80001afc <_ZN6ThreadD1Ev>
    80004630:	00048513          	mv	a0,s1
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	44c080e7          	jalr	1100(ra) # 80001a80 <_ZdlPv>
    8000463c:	01813083          	ld	ra,24(sp)
    80004640:	01013403          	ld	s0,16(sp)
    80004644:	00813483          	ld	s1,8(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret

0000000080004650 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00113423          	sd	ra,8(sp)
    80004658:	00813023          	sd	s0,0(sp)
    8000465c:	01010413          	addi	s0,sp,16
    80004660:	00007797          	auipc	a5,0x7
    80004664:	1b878793          	addi	a5,a5,440 # 8000b818 <_ZTV8Producer+0x10>
    80004668:	00f53023          	sd	a5,0(a0)
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	490080e7          	jalr	1168(ra) # 80001afc <_ZN6ThreadD1Ev>
    80004674:	00813083          	ld	ra,8(sp)
    80004678:	00013403          	ld	s0,0(sp)
    8000467c:	01010113          	addi	sp,sp,16
    80004680:	00008067          	ret

0000000080004684 <_ZN8ProducerD0Ev>:
    80004684:	fe010113          	addi	sp,sp,-32
    80004688:	00113c23          	sd	ra,24(sp)
    8000468c:	00813823          	sd	s0,16(sp)
    80004690:	00913423          	sd	s1,8(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	00050493          	mv	s1,a0
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	17c78793          	addi	a5,a5,380 # 8000b818 <_ZTV8Producer+0x10>
    800046a4:	00f53023          	sd	a5,0(a0)
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	454080e7          	jalr	1108(ra) # 80001afc <_ZN6ThreadD1Ev>
    800046b0:	00048513          	mv	a0,s1
    800046b4:	ffffd097          	auipc	ra,0xffffd
    800046b8:	3cc080e7          	jalr	972(ra) # 80001a80 <_ZdlPv>
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret

00000000800046d0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800046d0:	fe010113          	addi	sp,sp,-32
    800046d4:	00113c23          	sd	ra,24(sp)
    800046d8:	00813823          	sd	s0,16(sp)
    800046dc:	00913423          	sd	s1,8(sp)
    800046e0:	02010413          	addi	s0,sp,32
    800046e4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	ff8080e7          	jalr	-8(ra) # 800016e0 <_Z4getcv>
    800046f0:	0005059b          	sext.w	a1,a0
    800046f4:	01b00793          	li	a5,27
    800046f8:	00f58c63          	beq	a1,a5,80004710 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800046fc:	0204b783          	ld	a5,32(s1)
    80004700:	0087b503          	ld	a0,8(a5)
    80004704:	00001097          	auipc	ra,0x1
    80004708:	36c080e7          	jalr	876(ra) # 80005a70 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000470c:	fddff06f          	j	800046e8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004710:	00100793          	li	a5,1
    80004714:	00007717          	auipc	a4,0x7
    80004718:	2ef72623          	sw	a5,748(a4) # 8000ba00 <_ZL9threadEnd>
        td->buffer->put('!');
    8000471c:	0204b783          	ld	a5,32(s1)
    80004720:	02100593          	li	a1,33
    80004724:	0087b503          	ld	a0,8(a5)
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	348080e7          	jalr	840(ra) # 80005a70 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004730:	0204b783          	ld	a5,32(s1)
    80004734:	0107b503          	ld	a0,16(a5)
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	70c080e7          	jalr	1804(ra) # 80001e44 <_ZN9Semaphore6signalEv>
    }
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	02010113          	addi	sp,sp,32
    80004750:	00008067          	ret

0000000080004754 <_ZN8Producer3runEv>:
    void run() override {
    80004754:	fe010113          	addi	sp,sp,-32
    80004758:	00113c23          	sd	ra,24(sp)
    8000475c:	00813823          	sd	s0,16(sp)
    80004760:	00913423          	sd	s1,8(sp)
    80004764:	01213023          	sd	s2,0(sp)
    80004768:	02010413          	addi	s0,sp,32
    8000476c:	00050493          	mv	s1,a0
        int i = 0;
    80004770:	00000913          	li	s2,0
        while (!threadEnd) {
    80004774:	00007797          	auipc	a5,0x7
    80004778:	28c7a783          	lw	a5,652(a5) # 8000ba00 <_ZL9threadEnd>
    8000477c:	04079263          	bnez	a5,800047c0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004780:	0204b783          	ld	a5,32(s1)
    80004784:	0007a583          	lw	a1,0(a5)
    80004788:	0305859b          	addiw	a1,a1,48
    8000478c:	0087b503          	ld	a0,8(a5)
    80004790:	00001097          	auipc	ra,0x1
    80004794:	2e0080e7          	jalr	736(ra) # 80005a70 <_ZN9BufferCPP3putEi>
            i++;
    80004798:	0019071b          	addiw	a4,s2,1
    8000479c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800047a0:	0204b783          	ld	a5,32(s1)
    800047a4:	0007a783          	lw	a5,0(a5)
    800047a8:	00e787bb          	addw	a5,a5,a4
    800047ac:	00500513          	li	a0,5
    800047b0:	02a7e53b          	remw	a0,a5,a0
    800047b4:	ffffd097          	auipc	ra,0xffffd
    800047b8:	600080e7          	jalr	1536(ra) # 80001db4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800047bc:	fb9ff06f          	j	80004774 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800047c0:	0204b783          	ld	a5,32(s1)
    800047c4:	0107b503          	ld	a0,16(a5)
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	67c080e7          	jalr	1660(ra) # 80001e44 <_ZN9Semaphore6signalEv>
    }
    800047d0:	01813083          	ld	ra,24(sp)
    800047d4:	01013403          	ld	s0,16(sp)
    800047d8:	00813483          	ld	s1,8(sp)
    800047dc:	00013903          	ld	s2,0(sp)
    800047e0:	02010113          	addi	sp,sp,32
    800047e4:	00008067          	ret

00000000800047e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800047e8:	fe010113          	addi	sp,sp,-32
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00913423          	sd	s1,8(sp)
    800047f8:	01213023          	sd	s2,0(sp)
    800047fc:	02010413          	addi	s0,sp,32
    80004800:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004804:	00100793          	li	a5,1
    80004808:	02a7f863          	bgeu	a5,a0,80004838 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000480c:	00a00793          	li	a5,10
    80004810:	02f577b3          	remu	a5,a0,a5
    80004814:	02078e63          	beqz	a5,80004850 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004818:	fff48513          	addi	a0,s1,-1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	fcc080e7          	jalr	-52(ra) # 800047e8 <_ZL9fibonaccim>
    80004824:	00050913          	mv	s2,a0
    80004828:	ffe48513          	addi	a0,s1,-2
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	fbc080e7          	jalr	-68(ra) # 800047e8 <_ZL9fibonaccim>
    80004834:	00a90533          	add	a0,s2,a0
}
    80004838:	01813083          	ld	ra,24(sp)
    8000483c:	01013403          	ld	s0,16(sp)
    80004840:	00813483          	ld	s1,8(sp)
    80004844:	00013903          	ld	s2,0(sp)
    80004848:	02010113          	addi	sp,sp,32
    8000484c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	d0c080e7          	jalr	-756(ra) # 8000155c <_Z15thread_dispatchv>
    80004858:	fc1ff06f          	j	80004818 <_ZL9fibonaccim+0x30>

000000008000485c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00113c23          	sd	ra,24(sp)
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	01213023          	sd	s2,0(sp)
    80004870:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004874:	00a00493          	li	s1,10
    80004878:	0400006f          	j	800048b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000487c:	00005517          	auipc	a0,0x5
    80004880:	90c50513          	addi	a0,a0,-1780 # 80009188 <CONSOLE_STATUS+0x178>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	dc8080e7          	jalr	-568(ra) # 8000564c <_Z11printStringPKc>
    8000488c:	00000613          	li	a2,0
    80004890:	00a00593          	li	a1,10
    80004894:	00048513          	mv	a0,s1
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	f64080e7          	jalr	-156(ra) # 800057fc <_Z8printIntiii>
    800048a0:	00005517          	auipc	a0,0x5
    800048a4:	ad850513          	addi	a0,a0,-1320 # 80009378 <CONSOLE_STATUS+0x368>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	da4080e7          	jalr	-604(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800048b0:	0014849b          	addiw	s1,s1,1
    800048b4:	0ff4f493          	andi	s1,s1,255
    800048b8:	00c00793          	li	a5,12
    800048bc:	fc97f0e3          	bgeu	a5,s1,8000487c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800048c0:	00005517          	auipc	a0,0x5
    800048c4:	8d050513          	addi	a0,a0,-1840 # 80009190 <CONSOLE_STATUS+0x180>
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	d84080e7          	jalr	-636(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800048d0:	00500313          	li	t1,5
    thread_dispatch();
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	c88080e7          	jalr	-888(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800048dc:	01000513          	li	a0,16
    800048e0:	00000097          	auipc	ra,0x0
    800048e4:	f08080e7          	jalr	-248(ra) # 800047e8 <_ZL9fibonaccim>
    800048e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800048ec:	00005517          	auipc	a0,0x5
    800048f0:	8b450513          	addi	a0,a0,-1868 # 800091a0 <CONSOLE_STATUS+0x190>
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	d58080e7          	jalr	-680(ra) # 8000564c <_Z11printStringPKc>
    800048fc:	00000613          	li	a2,0
    80004900:	00a00593          	li	a1,10
    80004904:	0009051b          	sext.w	a0,s2
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	ef4080e7          	jalr	-268(ra) # 800057fc <_Z8printIntiii>
    80004910:	00005517          	auipc	a0,0x5
    80004914:	a6850513          	addi	a0,a0,-1432 # 80009378 <CONSOLE_STATUS+0x368>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	d34080e7          	jalr	-716(ra) # 8000564c <_Z11printStringPKc>
    80004920:	0400006f          	j	80004960 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004924:	00005517          	auipc	a0,0x5
    80004928:	86450513          	addi	a0,a0,-1948 # 80009188 <CONSOLE_STATUS+0x178>
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	d20080e7          	jalr	-736(ra) # 8000564c <_Z11printStringPKc>
    80004934:	00000613          	li	a2,0
    80004938:	00a00593          	li	a1,10
    8000493c:	00048513          	mv	a0,s1
    80004940:	00001097          	auipc	ra,0x1
    80004944:	ebc080e7          	jalr	-324(ra) # 800057fc <_Z8printIntiii>
    80004948:	00005517          	auipc	a0,0x5
    8000494c:	a3050513          	addi	a0,a0,-1488 # 80009378 <CONSOLE_STATUS+0x368>
    80004950:	00001097          	auipc	ra,0x1
    80004954:	cfc080e7          	jalr	-772(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004958:	0014849b          	addiw	s1,s1,1
    8000495c:	0ff4f493          	andi	s1,s1,255
    80004960:	00f00793          	li	a5,15
    80004964:	fc97f0e3          	bgeu	a5,s1,80004924 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004968:	00005517          	auipc	a0,0x5
    8000496c:	84850513          	addi	a0,a0,-1976 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004970:	00001097          	auipc	ra,0x1
    80004974:	cdc080e7          	jalr	-804(ra) # 8000564c <_Z11printStringPKc>
    finishedD = true;
    80004978:	00100793          	li	a5,1
    8000497c:	00007717          	auipc	a4,0x7
    80004980:	08f70a23          	sb	a5,148(a4) # 8000ba10 <_ZL9finishedD>
    thread_dispatch();
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	bd8080e7          	jalr	-1064(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000498c:	01813083          	ld	ra,24(sp)
    80004990:	01013403          	ld	s0,16(sp)
    80004994:	00813483          	ld	s1,8(sp)
    80004998:	00013903          	ld	s2,0(sp)
    8000499c:	02010113          	addi	sp,sp,32
    800049a0:	00008067          	ret

00000000800049a4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800049a4:	fe010113          	addi	sp,sp,-32
    800049a8:	00113c23          	sd	ra,24(sp)
    800049ac:	00813823          	sd	s0,16(sp)
    800049b0:	00913423          	sd	s1,8(sp)
    800049b4:	01213023          	sd	s2,0(sp)
    800049b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800049bc:	00000493          	li	s1,0
    800049c0:	0400006f          	j	80004a00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800049c4:	00004517          	auipc	a0,0x4
    800049c8:	78450513          	addi	a0,a0,1924 # 80009148 <CONSOLE_STATUS+0x138>
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	c80080e7          	jalr	-896(ra) # 8000564c <_Z11printStringPKc>
    800049d4:	00000613          	li	a2,0
    800049d8:	00a00593          	li	a1,10
    800049dc:	00048513          	mv	a0,s1
    800049e0:	00001097          	auipc	ra,0x1
    800049e4:	e1c080e7          	jalr	-484(ra) # 800057fc <_Z8printIntiii>
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	99050513          	addi	a0,a0,-1648 # 80009378 <CONSOLE_STATUS+0x368>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	c5c080e7          	jalr	-932(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800049f8:	0014849b          	addiw	s1,s1,1
    800049fc:	0ff4f493          	andi	s1,s1,255
    80004a00:	00200793          	li	a5,2
    80004a04:	fc97f0e3          	bgeu	a5,s1,800049c4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004a08:	00004517          	auipc	a0,0x4
    80004a0c:	74850513          	addi	a0,a0,1864 # 80009150 <CONSOLE_STATUS+0x140>
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	c3c080e7          	jalr	-964(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004a18:	00700313          	li	t1,7
    thread_dispatch();
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	b40080e7          	jalr	-1216(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004a24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004a28:	00004517          	auipc	a0,0x4
    80004a2c:	73850513          	addi	a0,a0,1848 # 80009160 <CONSOLE_STATUS+0x150>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	c1c080e7          	jalr	-996(ra) # 8000564c <_Z11printStringPKc>
    80004a38:	00000613          	li	a2,0
    80004a3c:	00a00593          	li	a1,10
    80004a40:	0009051b          	sext.w	a0,s2
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	db8080e7          	jalr	-584(ra) # 800057fc <_Z8printIntiii>
    80004a4c:	00005517          	auipc	a0,0x5
    80004a50:	92c50513          	addi	a0,a0,-1748 # 80009378 <CONSOLE_STATUS+0x368>
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	bf8080e7          	jalr	-1032(ra) # 8000564c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004a5c:	00c00513          	li	a0,12
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	d88080e7          	jalr	-632(ra) # 800047e8 <_ZL9fibonaccim>
    80004a68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004a6c:	00004517          	auipc	a0,0x4
    80004a70:	6fc50513          	addi	a0,a0,1788 # 80009168 <CONSOLE_STATUS+0x158>
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	bd8080e7          	jalr	-1064(ra) # 8000564c <_Z11printStringPKc>
    80004a7c:	00000613          	li	a2,0
    80004a80:	00a00593          	li	a1,10
    80004a84:	0009051b          	sext.w	a0,s2
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	d74080e7          	jalr	-652(ra) # 800057fc <_Z8printIntiii>
    80004a90:	00005517          	auipc	a0,0x5
    80004a94:	8e850513          	addi	a0,a0,-1816 # 80009378 <CONSOLE_STATUS+0x368>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	bb4080e7          	jalr	-1100(ra) # 8000564c <_Z11printStringPKc>
    80004aa0:	0400006f          	j	80004ae0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004aa4:	00004517          	auipc	a0,0x4
    80004aa8:	6a450513          	addi	a0,a0,1700 # 80009148 <CONSOLE_STATUS+0x138>
    80004aac:	00001097          	auipc	ra,0x1
    80004ab0:	ba0080e7          	jalr	-1120(ra) # 8000564c <_Z11printStringPKc>
    80004ab4:	00000613          	li	a2,0
    80004ab8:	00a00593          	li	a1,10
    80004abc:	00048513          	mv	a0,s1
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	d3c080e7          	jalr	-708(ra) # 800057fc <_Z8printIntiii>
    80004ac8:	00005517          	auipc	a0,0x5
    80004acc:	8b050513          	addi	a0,a0,-1872 # 80009378 <CONSOLE_STATUS+0x368>
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	b7c080e7          	jalr	-1156(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ad8:	0014849b          	addiw	s1,s1,1
    80004adc:	0ff4f493          	andi	s1,s1,255
    80004ae0:	00500793          	li	a5,5
    80004ae4:	fc97f0e3          	bgeu	a5,s1,80004aa4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ae8:	00004517          	auipc	a0,0x4
    80004aec:	63850513          	addi	a0,a0,1592 # 80009120 <CONSOLE_STATUS+0x110>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	b5c080e7          	jalr	-1188(ra) # 8000564c <_Z11printStringPKc>
    finishedC = true;
    80004af8:	00100793          	li	a5,1
    80004afc:	00007717          	auipc	a4,0x7
    80004b00:	f0f70aa3          	sb	a5,-235(a4) # 8000ba11 <_ZL9finishedC>
    thread_dispatch();
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	a58080e7          	jalr	-1448(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00013903          	ld	s2,0(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004b24:	fe010113          	addi	sp,sp,-32
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	01213023          	sd	s2,0(sp)
    80004b38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b3c:	00000913          	li	s2,0
    80004b40:	0380006f          	j	80004b78 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	a18080e7          	jalr	-1512(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b4c:	00148493          	addi	s1,s1,1
    80004b50:	000027b7          	lui	a5,0x2
    80004b54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b58:	0097ee63          	bltu	a5,s1,80004b74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b5c:	00000713          	li	a4,0
    80004b60:	000077b7          	lui	a5,0x7
    80004b64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b68:	fce7eee3          	bltu	a5,a4,80004b44 <_ZL11workerBodyBPv+0x20>
    80004b6c:	00170713          	addi	a4,a4,1
    80004b70:	ff1ff06f          	j	80004b60 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004b74:	00190913          	addi	s2,s2,1
    80004b78:	00f00793          	li	a5,15
    80004b7c:	0527e063          	bltu	a5,s2,80004bbc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004b80:	00004517          	auipc	a0,0x4
    80004b84:	5b050513          	addi	a0,a0,1456 # 80009130 <CONSOLE_STATUS+0x120>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	ac4080e7          	jalr	-1340(ra) # 8000564c <_Z11printStringPKc>
    80004b90:	00000613          	li	a2,0
    80004b94:	00a00593          	li	a1,10
    80004b98:	0009051b          	sext.w	a0,s2
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	c60080e7          	jalr	-928(ra) # 800057fc <_Z8printIntiii>
    80004ba4:	00004517          	auipc	a0,0x4
    80004ba8:	7d450513          	addi	a0,a0,2004 # 80009378 <CONSOLE_STATUS+0x368>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	aa0080e7          	jalr	-1376(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004bb4:	00000493          	li	s1,0
    80004bb8:	f99ff06f          	j	80004b50 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004bbc:	00004517          	auipc	a0,0x4
    80004bc0:	57c50513          	addi	a0,a0,1404 # 80009138 <CONSOLE_STATUS+0x128>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	a88080e7          	jalr	-1400(ra) # 8000564c <_Z11printStringPKc>
    finishedB = true;
    80004bcc:	00100793          	li	a5,1
    80004bd0:	00007717          	auipc	a4,0x7
    80004bd4:	e4f70123          	sb	a5,-446(a4) # 8000ba12 <_ZL9finishedB>
    thread_dispatch();
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	984080e7          	jalr	-1660(ra) # 8000155c <_Z15thread_dispatchv>
}
    80004be0:	01813083          	ld	ra,24(sp)
    80004be4:	01013403          	ld	s0,16(sp)
    80004be8:	00813483          	ld	s1,8(sp)
    80004bec:	00013903          	ld	s2,0(sp)
    80004bf0:	02010113          	addi	sp,sp,32
    80004bf4:	00008067          	ret

0000000080004bf8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004bf8:	fe010113          	addi	sp,sp,-32
    80004bfc:	00113c23          	sd	ra,24(sp)
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00913423          	sd	s1,8(sp)
    80004c08:	01213023          	sd	s2,0(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c10:	00000913          	li	s2,0
    80004c14:	0380006f          	j	80004c4c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	944080e7          	jalr	-1724(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c20:	00148493          	addi	s1,s1,1
    80004c24:	000027b7          	lui	a5,0x2
    80004c28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c2c:	0097ee63          	bltu	a5,s1,80004c48 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c30:	00000713          	li	a4,0
    80004c34:	000077b7          	lui	a5,0x7
    80004c38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c3c:	fce7eee3          	bltu	a5,a4,80004c18 <_ZL11workerBodyAPv+0x20>
    80004c40:	00170713          	addi	a4,a4,1
    80004c44:	ff1ff06f          	j	80004c34 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c48:	00190913          	addi	s2,s2,1
    80004c4c:	00900793          	li	a5,9
    80004c50:	0527e063          	bltu	a5,s2,80004c90 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	4c450513          	addi	a0,a0,1220 # 80009118 <CONSOLE_STATUS+0x108>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	9f0080e7          	jalr	-1552(ra) # 8000564c <_Z11printStringPKc>
    80004c64:	00000613          	li	a2,0
    80004c68:	00a00593          	li	a1,10
    80004c6c:	0009051b          	sext.w	a0,s2
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	b8c080e7          	jalr	-1140(ra) # 800057fc <_Z8printIntiii>
    80004c78:	00004517          	auipc	a0,0x4
    80004c7c:	70050513          	addi	a0,a0,1792 # 80009378 <CONSOLE_STATUS+0x368>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	9cc080e7          	jalr	-1588(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c88:	00000493          	li	s1,0
    80004c8c:	f99ff06f          	j	80004c24 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004c90:	00004517          	auipc	a0,0x4
    80004c94:	49050513          	addi	a0,a0,1168 # 80009120 <CONSOLE_STATUS+0x110>
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	9b4080e7          	jalr	-1612(ra) # 8000564c <_Z11printStringPKc>
    finishedA = true;
    80004ca0:	00100793          	li	a5,1
    80004ca4:	00007717          	auipc	a4,0x7
    80004ca8:	d6f707a3          	sb	a5,-657(a4) # 8000ba13 <_ZL9finishedA>
}
    80004cac:	01813083          	ld	ra,24(sp)
    80004cb0:	01013403          	ld	s0,16(sp)
    80004cb4:	00813483          	ld	s1,8(sp)
    80004cb8:	00013903          	ld	s2,0(sp)
    80004cbc:	02010113          	addi	sp,sp,32
    80004cc0:	00008067          	ret

0000000080004cc4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004cc4:	fd010113          	addi	sp,sp,-48
    80004cc8:	02113423          	sd	ra,40(sp)
    80004ccc:	02813023          	sd	s0,32(sp)
    80004cd0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004cd4:	00000613          	li	a2,0
    80004cd8:	00000597          	auipc	a1,0x0
    80004cdc:	f2058593          	addi	a1,a1,-224 # 80004bf8 <_ZL11workerBodyAPv>
    80004ce0:	fd040513          	addi	a0,s0,-48
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	750080e7          	jalr	1872(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	4d450513          	addi	a0,a0,1236 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	958080e7          	jalr	-1704(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004cfc:	00000613          	li	a2,0
    80004d00:	00000597          	auipc	a1,0x0
    80004d04:	e2458593          	addi	a1,a1,-476 # 80004b24 <_ZL11workerBodyBPv>
    80004d08:	fd840513          	addi	a0,s0,-40
    80004d0c:	ffffc097          	auipc	ra,0xffffc
    80004d10:	728080e7          	jalr	1832(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	4c450513          	addi	a0,a0,1220 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	930080e7          	jalr	-1744(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004d24:	00000613          	li	a2,0
    80004d28:	00000597          	auipc	a1,0x0
    80004d2c:	c7c58593          	addi	a1,a1,-900 # 800049a4 <_ZL11workerBodyCPv>
    80004d30:	fe040513          	addi	a0,s0,-32
    80004d34:	ffffc097          	auipc	ra,0xffffc
    80004d38:	700080e7          	jalr	1792(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	4b450513          	addi	a0,a0,1204 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	908080e7          	jalr	-1784(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004d4c:	00000613          	li	a2,0
    80004d50:	00000597          	auipc	a1,0x0
    80004d54:	b0c58593          	addi	a1,a1,-1268 # 8000485c <_ZL11workerBodyDPv>
    80004d58:	fe840513          	addi	a0,s0,-24
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	6d8080e7          	jalr	1752(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004d64:	00004517          	auipc	a0,0x4
    80004d68:	4a450513          	addi	a0,a0,1188 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	8e0080e7          	jalr	-1824(ra) # 8000564c <_Z11printStringPKc>
    80004d74:	00c0006f          	j	80004d80 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004d78:	ffffc097          	auipc	ra,0xffffc
    80004d7c:	7e4080e7          	jalr	2020(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004d80:	00007797          	auipc	a5,0x7
    80004d84:	c937c783          	lbu	a5,-877(a5) # 8000ba13 <_ZL9finishedA>
    80004d88:	fe0788e3          	beqz	a5,80004d78 <_Z18Threads_C_API_testv+0xb4>
    80004d8c:	00007797          	auipc	a5,0x7
    80004d90:	c867c783          	lbu	a5,-890(a5) # 8000ba12 <_ZL9finishedB>
    80004d94:	fe0782e3          	beqz	a5,80004d78 <_Z18Threads_C_API_testv+0xb4>
    80004d98:	00007797          	auipc	a5,0x7
    80004d9c:	c797c783          	lbu	a5,-903(a5) # 8000ba11 <_ZL9finishedC>
    80004da0:	fc078ce3          	beqz	a5,80004d78 <_Z18Threads_C_API_testv+0xb4>
    80004da4:	00007797          	auipc	a5,0x7
    80004da8:	c6c7c783          	lbu	a5,-916(a5) # 8000ba10 <_ZL9finishedD>
    80004dac:	fc0786e3          	beqz	a5,80004d78 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004db0:	02813083          	ld	ra,40(sp)
    80004db4:	02013403          	ld	s0,32(sp)
    80004db8:	03010113          	addi	sp,sp,48
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004dc0:	fd010113          	addi	sp,sp,-48
    80004dc4:	02113423          	sd	ra,40(sp)
    80004dc8:	02813023          	sd	s0,32(sp)
    80004dcc:	00913c23          	sd	s1,24(sp)
    80004dd0:	01213823          	sd	s2,16(sp)
    80004dd4:	01313423          	sd	s3,8(sp)
    80004dd8:	03010413          	addi	s0,sp,48
    80004ddc:	00050993          	mv	s3,a0
    80004de0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004de4:	00000913          	li	s2,0
    80004de8:	00c0006f          	j	80004df4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	f3c080e7          	jalr	-196(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	8ec080e7          	jalr	-1812(ra) # 800016e0 <_Z4getcv>
    80004dfc:	0005059b          	sext.w	a1,a0
    80004e00:	01b00793          	li	a5,27
    80004e04:	02f58a63          	beq	a1,a5,80004e38 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004e08:	0084b503          	ld	a0,8(s1)
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	c64080e7          	jalr	-924(ra) # 80005a70 <_ZN9BufferCPP3putEi>
        i++;
    80004e14:	0019071b          	addiw	a4,s2,1
    80004e18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004e1c:	0004a683          	lw	a3,0(s1)
    80004e20:	0026979b          	slliw	a5,a3,0x2
    80004e24:	00d787bb          	addw	a5,a5,a3
    80004e28:	0017979b          	slliw	a5,a5,0x1
    80004e2c:	02f767bb          	remw	a5,a4,a5
    80004e30:	fc0792e3          	bnez	a5,80004df4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004e34:	fb9ff06f          	j	80004dec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004e38:	00100793          	li	a5,1
    80004e3c:	00007717          	auipc	a4,0x7
    80004e40:	bcf72e23          	sw	a5,-1060(a4) # 8000ba18 <_ZL9threadEnd>
    td->buffer->put('!');
    80004e44:	0209b783          	ld	a5,32(s3)
    80004e48:	02100593          	li	a1,33
    80004e4c:	0087b503          	ld	a0,8(a5)
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	c20080e7          	jalr	-992(ra) # 80005a70 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004e58:	0104b503          	ld	a0,16(s1)
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	fe8080e7          	jalr	-24(ra) # 80001e44 <_ZN9Semaphore6signalEv>
}
    80004e64:	02813083          	ld	ra,40(sp)
    80004e68:	02013403          	ld	s0,32(sp)
    80004e6c:	01813483          	ld	s1,24(sp)
    80004e70:	01013903          	ld	s2,16(sp)
    80004e74:	00813983          	ld	s3,8(sp)
    80004e78:	03010113          	addi	sp,sp,48
    80004e7c:	00008067          	ret

0000000080004e80 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004e80:	fe010113          	addi	sp,sp,-32
    80004e84:	00113c23          	sd	ra,24(sp)
    80004e88:	00813823          	sd	s0,16(sp)
    80004e8c:	00913423          	sd	s1,8(sp)
    80004e90:	01213023          	sd	s2,0(sp)
    80004e94:	02010413          	addi	s0,sp,32
    80004e98:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e9c:	00000913          	li	s2,0
    80004ea0:	00c0006f          	j	80004eac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	e84080e7          	jalr	-380(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004eac:	00007797          	auipc	a5,0x7
    80004eb0:	b6c7a783          	lw	a5,-1172(a5) # 8000ba18 <_ZL9threadEnd>
    80004eb4:	02079e63          	bnez	a5,80004ef0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004eb8:	0004a583          	lw	a1,0(s1)
    80004ebc:	0305859b          	addiw	a1,a1,48
    80004ec0:	0084b503          	ld	a0,8(s1)
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	bac080e7          	jalr	-1108(ra) # 80005a70 <_ZN9BufferCPP3putEi>
        i++;
    80004ecc:	0019071b          	addiw	a4,s2,1
    80004ed0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ed4:	0004a683          	lw	a3,0(s1)
    80004ed8:	0026979b          	slliw	a5,a3,0x2
    80004edc:	00d787bb          	addw	a5,a5,a3
    80004ee0:	0017979b          	slliw	a5,a5,0x1
    80004ee4:	02f767bb          	remw	a5,a4,a5
    80004ee8:	fc0792e3          	bnez	a5,80004eac <_ZN12ProducerSync8producerEPv+0x2c>
    80004eec:	fb9ff06f          	j	80004ea4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ef0:	0104b503          	ld	a0,16(s1)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	f50080e7          	jalr	-176(ra) # 80001e44 <_ZN9Semaphore6signalEv>
}
    80004efc:	01813083          	ld	ra,24(sp)
    80004f00:	01013403          	ld	s0,16(sp)
    80004f04:	00813483          	ld	s1,8(sp)
    80004f08:	00013903          	ld	s2,0(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004f14:	fd010113          	addi	sp,sp,-48
    80004f18:	02113423          	sd	ra,40(sp)
    80004f1c:	02813023          	sd	s0,32(sp)
    80004f20:	00913c23          	sd	s1,24(sp)
    80004f24:	01213823          	sd	s2,16(sp)
    80004f28:	01313423          	sd	s3,8(sp)
    80004f2c:	01413023          	sd	s4,0(sp)
    80004f30:	03010413          	addi	s0,sp,48
    80004f34:	00050993          	mv	s3,a0
    80004f38:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f3c:	00000a13          	li	s4,0
    80004f40:	01c0006f          	j	80004f5c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	de4080e7          	jalr	-540(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    80004f4c:	0500006f          	j	80004f9c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004f50:	00a00513          	li	a0,10
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	7c8080e7          	jalr	1992(ra) # 8000171c <_Z4putcc>
    while (!threadEnd) {
    80004f5c:	00007797          	auipc	a5,0x7
    80004f60:	abc7a783          	lw	a5,-1348(a5) # 8000ba18 <_ZL9threadEnd>
    80004f64:	06079263          	bnez	a5,80004fc8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004f68:	00893503          	ld	a0,8(s2)
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	b94080e7          	jalr	-1132(ra) # 80005b00 <_ZN9BufferCPP3getEv>
        i++;
    80004f74:	001a049b          	addiw	s1,s4,1
    80004f78:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004f7c:	0ff57513          	andi	a0,a0,255
    80004f80:	ffffc097          	auipc	ra,0xffffc
    80004f84:	79c080e7          	jalr	1948(ra) # 8000171c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004f88:	00092703          	lw	a4,0(s2)
    80004f8c:	0027179b          	slliw	a5,a4,0x2
    80004f90:	00e787bb          	addw	a5,a5,a4
    80004f94:	02f4e7bb          	remw	a5,s1,a5
    80004f98:	fa0786e3          	beqz	a5,80004f44 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004f9c:	05000793          	li	a5,80
    80004fa0:	02f4e4bb          	remw	s1,s1,a5
    80004fa4:	fa049ce3          	bnez	s1,80004f5c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004fa8:	fa9ff06f          	j	80004f50 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004fac:	0209b783          	ld	a5,32(s3)
    80004fb0:	0087b503          	ld	a0,8(a5)
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	b4c080e7          	jalr	-1204(ra) # 80005b00 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004fbc:	0ff57513          	andi	a0,a0,255
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	f44080e7          	jalr	-188(ra) # 80001f04 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004fc8:	0209b783          	ld	a5,32(s3)
    80004fcc:	0087b503          	ld	a0,8(a5)
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	bbc080e7          	jalr	-1092(ra) # 80005b8c <_ZN9BufferCPP6getCntEv>
    80004fd8:	fca04ae3          	bgtz	a0,80004fac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004fdc:	01093503          	ld	a0,16(s2)
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	e64080e7          	jalr	-412(ra) # 80001e44 <_ZN9Semaphore6signalEv>
}
    80004fe8:	02813083          	ld	ra,40(sp)
    80004fec:	02013403          	ld	s0,32(sp)
    80004ff0:	01813483          	ld	s1,24(sp)
    80004ff4:	01013903          	ld	s2,16(sp)
    80004ff8:	00813983          	ld	s3,8(sp)
    80004ffc:	00013a03          	ld	s4,0(sp)
    80005000:	03010113          	addi	sp,sp,48
    80005004:	00008067          	ret

0000000080005008 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005008:	f8010113          	addi	sp,sp,-128
    8000500c:	06113c23          	sd	ra,120(sp)
    80005010:	06813823          	sd	s0,112(sp)
    80005014:	06913423          	sd	s1,104(sp)
    80005018:	07213023          	sd	s2,96(sp)
    8000501c:	05313c23          	sd	s3,88(sp)
    80005020:	05413823          	sd	s4,80(sp)
    80005024:	05513423          	sd	s5,72(sp)
    80005028:	05613023          	sd	s6,64(sp)
    8000502c:	03713c23          	sd	s7,56(sp)
    80005030:	03813823          	sd	s8,48(sp)
    80005034:	03913423          	sd	s9,40(sp)
    80005038:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000503c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005040:	00004517          	auipc	a0,0x4
    80005044:	ff050513          	addi	a0,a0,-16 # 80009030 <CONSOLE_STATUS+0x20>
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	604080e7          	jalr	1540(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    80005050:	01e00593          	li	a1,30
    80005054:	f8040493          	addi	s1,s0,-128
    80005058:	00048513          	mv	a0,s1
    8000505c:	00000097          	auipc	ra,0x0
    80005060:	678080e7          	jalr	1656(ra) # 800056d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005064:	00048513          	mv	a0,s1
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	744080e7          	jalr	1860(ra) # 800057ac <_Z11stringToIntPKc>
    80005070:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005074:	00004517          	auipc	a0,0x4
    80005078:	fdc50513          	addi	a0,a0,-36 # 80009050 <CONSOLE_STATUS+0x40>
    8000507c:	00000097          	auipc	ra,0x0
    80005080:	5d0080e7          	jalr	1488(ra) # 8000564c <_Z11printStringPKc>
    getString(input, 30);
    80005084:	01e00593          	li	a1,30
    80005088:	00048513          	mv	a0,s1
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	648080e7          	jalr	1608(ra) # 800056d4 <_Z9getStringPci>
    n = stringToInt(input);
    80005094:	00048513          	mv	a0,s1
    80005098:	00000097          	auipc	ra,0x0
    8000509c:	714080e7          	jalr	1812(ra) # 800057ac <_Z11stringToIntPKc>
    800050a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	fcc50513          	addi	a0,a0,-52 # 80009070 <CONSOLE_STATUS+0x60>
    800050ac:	00000097          	auipc	ra,0x0
    800050b0:	5a0080e7          	jalr	1440(ra) # 8000564c <_Z11printStringPKc>
    800050b4:	00000613          	li	a2,0
    800050b8:	00a00593          	li	a1,10
    800050bc:	00090513          	mv	a0,s2
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	73c080e7          	jalr	1852(ra) # 800057fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	fc050513          	addi	a0,a0,-64 # 80009088 <CONSOLE_STATUS+0x78>
    800050d0:	00000097          	auipc	ra,0x0
    800050d4:	57c080e7          	jalr	1404(ra) # 8000564c <_Z11printStringPKc>
    800050d8:	00000613          	li	a2,0
    800050dc:	00a00593          	li	a1,10
    800050e0:	00048513          	mv	a0,s1
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	718080e7          	jalr	1816(ra) # 800057fc <_Z8printIntiii>
    printString(".\n");
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	fb450513          	addi	a0,a0,-76 # 800090a0 <CONSOLE_STATUS+0x90>
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	558080e7          	jalr	1368(ra) # 8000564c <_Z11printStringPKc>
    if(threadNum > n) {
    800050fc:	0324c463          	blt	s1,s2,80005124 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005100:	03205c63          	blez	s2,80005138 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005104:	03800513          	li	a0,56
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	928080e7          	jalr	-1752(ra) # 80001a30 <_Znwm>
    80005110:	00050a93          	mv	s5,a0
    80005114:	00048593          	mv	a1,s1
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	804080e7          	jalr	-2044(ra) # 8000591c <_ZN9BufferCPPC1Ei>
    80005120:	0300006f          	j	80005150 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005124:	00004517          	auipc	a0,0x4
    80005128:	f8450513          	addi	a0,a0,-124 # 800090a8 <CONSOLE_STATUS+0x98>
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	520080e7          	jalr	1312(ra) # 8000564c <_Z11printStringPKc>
        return;
    80005134:	0140006f          	j	80005148 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	fb050513          	addi	a0,a0,-80 # 800090e8 <CONSOLE_STATUS+0xd8>
    80005140:	00000097          	auipc	ra,0x0
    80005144:	50c080e7          	jalr	1292(ra) # 8000564c <_Z11printStringPKc>
        return;
    80005148:	000b8113          	mv	sp,s7
    8000514c:	2380006f          	j	80005384 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005150:	01000513          	li	a0,16
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	8dc080e7          	jalr	-1828(ra) # 80001a30 <_Znwm>
    8000515c:	00050493          	mv	s1,a0
    80005160:	00000593          	li	a1,0
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	c78080e7          	jalr	-904(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    8000516c:	00007797          	auipc	a5,0x7
    80005170:	8a97ba23          	sd	s1,-1868(a5) # 8000ba20 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005174:	00391793          	slli	a5,s2,0x3
    80005178:	00f78793          	addi	a5,a5,15
    8000517c:	ff07f793          	andi	a5,a5,-16
    80005180:	40f10133          	sub	sp,sp,a5
    80005184:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005188:	0019071b          	addiw	a4,s2,1
    8000518c:	00171793          	slli	a5,a4,0x1
    80005190:	00e787b3          	add	a5,a5,a4
    80005194:	00379793          	slli	a5,a5,0x3
    80005198:	00f78793          	addi	a5,a5,15
    8000519c:	ff07f793          	andi	a5,a5,-16
    800051a0:	40f10133          	sub	sp,sp,a5
    800051a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800051a8:	00191c13          	slli	s8,s2,0x1
    800051ac:	012c07b3          	add	a5,s8,s2
    800051b0:	00379793          	slli	a5,a5,0x3
    800051b4:	00fa07b3          	add	a5,s4,a5
    800051b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800051bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800051c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800051c4:	02800513          	li	a0,40
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	868080e7          	jalr	-1944(ra) # 80001a30 <_Znwm>
    800051d0:	00050b13          	mv	s6,a0
    800051d4:	012c0c33          	add	s8,s8,s2
    800051d8:	003c1c13          	slli	s8,s8,0x3
    800051dc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	b70080e7          	jalr	-1168(ra) # 80001d50 <_ZN6ThreadC1Ev>
    800051e8:	00006797          	auipc	a5,0x6
    800051ec:	6d078793          	addi	a5,a5,1744 # 8000b8b8 <_ZTV12ConsumerSync+0x10>
    800051f0:	00fb3023          	sd	a5,0(s6)
    800051f4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800051f8:	000b0513          	mv	a0,s6
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	af8080e7          	jalr	-1288(ra) # 80001cf4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005204:	00000493          	li	s1,0
    80005208:	0380006f          	j	80005240 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000520c:	00006797          	auipc	a5,0x6
    80005210:	68478793          	addi	a5,a5,1668 # 8000b890 <_ZTV12ProducerSync+0x10>
    80005214:	00fcb023          	sd	a5,0(s9)
    80005218:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000521c:	00349793          	slli	a5,s1,0x3
    80005220:	00f987b3          	add	a5,s3,a5
    80005224:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005228:	00349793          	slli	a5,s1,0x3
    8000522c:	00f987b3          	add	a5,s3,a5
    80005230:	0007b503          	ld	a0,0(a5)
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	ac0080e7          	jalr	-1344(ra) # 80001cf4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000523c:	0014849b          	addiw	s1,s1,1
    80005240:	0b24d063          	bge	s1,s2,800052e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005244:	00149793          	slli	a5,s1,0x1
    80005248:	009787b3          	add	a5,a5,s1
    8000524c:	00379793          	slli	a5,a5,0x3
    80005250:	00fa07b3          	add	a5,s4,a5
    80005254:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005258:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000525c:	00006717          	auipc	a4,0x6
    80005260:	7c473703          	ld	a4,1988(a4) # 8000ba20 <_ZL10waitForAll>
    80005264:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005268:	02905863          	blez	s1,80005298 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000526c:	02800513          	li	a0,40
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	7c0080e7          	jalr	1984(ra) # 80001a30 <_Znwm>
    80005278:	00050c93          	mv	s9,a0
    8000527c:	00149c13          	slli	s8,s1,0x1
    80005280:	009c0c33          	add	s8,s8,s1
    80005284:	003c1c13          	slli	s8,s8,0x3
    80005288:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	ac4080e7          	jalr	-1340(ra) # 80001d50 <_ZN6ThreadC1Ev>
    80005294:	f79ff06f          	j	8000520c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005298:	02800513          	li	a0,40
    8000529c:	ffffc097          	auipc	ra,0xffffc
    800052a0:	794080e7          	jalr	1940(ra) # 80001a30 <_Znwm>
    800052a4:	00050c93          	mv	s9,a0
    800052a8:	00149c13          	slli	s8,s1,0x1
    800052ac:	009c0c33          	add	s8,s8,s1
    800052b0:	003c1c13          	slli	s8,s8,0x3
    800052b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800052b8:	ffffd097          	auipc	ra,0xffffd
    800052bc:	a98080e7          	jalr	-1384(ra) # 80001d50 <_ZN6ThreadC1Ev>
    800052c0:	00006797          	auipc	a5,0x6
    800052c4:	5a878793          	addi	a5,a5,1448 # 8000b868 <_ZTV16ProducerKeyboard+0x10>
    800052c8:	00fcb023          	sd	a5,0(s9)
    800052cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800052d0:	00349793          	slli	a5,s1,0x3
    800052d4:	00f987b3          	add	a5,s3,a5
    800052d8:	0197b023          	sd	s9,0(a5)
    800052dc:	f4dff06f          	j	80005228 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800052e0:	ffffd097          	auipc	ra,0xffffd
    800052e4:	a48080e7          	jalr	-1464(ra) # 80001d28 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800052e8:	00000493          	li	s1,0
    800052ec:	00994e63          	blt	s2,s1,80005308 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800052f0:	00006517          	auipc	a0,0x6
    800052f4:	73053503          	ld	a0,1840(a0) # 8000ba20 <_ZL10waitForAll>
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	b20080e7          	jalr	-1248(ra) # 80001e18 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005300:	0014849b          	addiw	s1,s1,1
    80005304:	fe9ff06f          	j	800052ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005308:	00000493          	li	s1,0
    8000530c:	0080006f          	j	80005314 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005310:	0014849b          	addiw	s1,s1,1
    80005314:	0324d263          	bge	s1,s2,80005338 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005318:	00349793          	slli	a5,s1,0x3
    8000531c:	00f987b3          	add	a5,s3,a5
    80005320:	0007b503          	ld	a0,0(a5)
    80005324:	fe0506e3          	beqz	a0,80005310 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005328:	00053783          	ld	a5,0(a0)
    8000532c:	0087b783          	ld	a5,8(a5)
    80005330:	000780e7          	jalr	a5
    80005334:	fddff06f          	j	80005310 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005338:	000b0a63          	beqz	s6,8000534c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000533c:	000b3783          	ld	a5,0(s6)
    80005340:	0087b783          	ld	a5,8(a5)
    80005344:	000b0513          	mv	a0,s6
    80005348:	000780e7          	jalr	a5
    delete waitForAll;
    8000534c:	00006517          	auipc	a0,0x6
    80005350:	6d453503          	ld	a0,1748(a0) # 8000ba20 <_ZL10waitForAll>
    80005354:	00050863          	beqz	a0,80005364 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005358:	00053783          	ld	a5,0(a0)
    8000535c:	0087b783          	ld	a5,8(a5)
    80005360:	000780e7          	jalr	a5
    delete buffer;
    80005364:	000a8e63          	beqz	s5,80005380 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005368:	000a8513          	mv	a0,s5
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	8a8080e7          	jalr	-1880(ra) # 80005c14 <_ZN9BufferCPPD1Ev>
    80005374:	000a8513          	mv	a0,s5
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	708080e7          	jalr	1800(ra) # 80001a80 <_ZdlPv>
    80005380:	000b8113          	mv	sp,s7

}
    80005384:	f8040113          	addi	sp,s0,-128
    80005388:	07813083          	ld	ra,120(sp)
    8000538c:	07013403          	ld	s0,112(sp)
    80005390:	06813483          	ld	s1,104(sp)
    80005394:	06013903          	ld	s2,96(sp)
    80005398:	05813983          	ld	s3,88(sp)
    8000539c:	05013a03          	ld	s4,80(sp)
    800053a0:	04813a83          	ld	s5,72(sp)
    800053a4:	04013b03          	ld	s6,64(sp)
    800053a8:	03813b83          	ld	s7,56(sp)
    800053ac:	03013c03          	ld	s8,48(sp)
    800053b0:	02813c83          	ld	s9,40(sp)
    800053b4:	08010113          	addi	sp,sp,128
    800053b8:	00008067          	ret
    800053bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800053c0:	000a8513          	mv	a0,s5
    800053c4:	ffffc097          	auipc	ra,0xffffc
    800053c8:	6bc080e7          	jalr	1724(ra) # 80001a80 <_ZdlPv>
    800053cc:	00048513          	mv	a0,s1
    800053d0:	00007097          	auipc	ra,0x7
    800053d4:	738080e7          	jalr	1848(ra) # 8000cb08 <_Unwind_Resume>
    800053d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800053dc:	00048513          	mv	a0,s1
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	6a0080e7          	jalr	1696(ra) # 80001a80 <_ZdlPv>
    800053e8:	00090513          	mv	a0,s2
    800053ec:	00007097          	auipc	ra,0x7
    800053f0:	71c080e7          	jalr	1820(ra) # 8000cb08 <_Unwind_Resume>
    800053f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800053f8:	000b0513          	mv	a0,s6
    800053fc:	ffffc097          	auipc	ra,0xffffc
    80005400:	684080e7          	jalr	1668(ra) # 80001a80 <_ZdlPv>
    80005404:	00048513          	mv	a0,s1
    80005408:	00007097          	auipc	ra,0x7
    8000540c:	700080e7          	jalr	1792(ra) # 8000cb08 <_Unwind_Resume>
    80005410:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005414:	000c8513          	mv	a0,s9
    80005418:	ffffc097          	auipc	ra,0xffffc
    8000541c:	668080e7          	jalr	1640(ra) # 80001a80 <_ZdlPv>
    80005420:	00048513          	mv	a0,s1
    80005424:	00007097          	auipc	ra,0x7
    80005428:	6e4080e7          	jalr	1764(ra) # 8000cb08 <_Unwind_Resume>
    8000542c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005430:	000c8513          	mv	a0,s9
    80005434:	ffffc097          	auipc	ra,0xffffc
    80005438:	64c080e7          	jalr	1612(ra) # 80001a80 <_ZdlPv>
    8000543c:	00048513          	mv	a0,s1
    80005440:	00007097          	auipc	ra,0x7
    80005444:	6c8080e7          	jalr	1736(ra) # 8000cb08 <_Unwind_Resume>

0000000080005448 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00113423          	sd	ra,8(sp)
    80005450:	00813023          	sd	s0,0(sp)
    80005454:	01010413          	addi	s0,sp,16
    80005458:	00006797          	auipc	a5,0x6
    8000545c:	46078793          	addi	a5,a5,1120 # 8000b8b8 <_ZTV12ConsumerSync+0x10>
    80005460:	00f53023          	sd	a5,0(a0)
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	698080e7          	jalr	1688(ra) # 80001afc <_ZN6ThreadD1Ev>
    8000546c:	00813083          	ld	ra,8(sp)
    80005470:	00013403          	ld	s0,0(sp)
    80005474:	01010113          	addi	sp,sp,16
    80005478:	00008067          	ret

000000008000547c <_ZN12ConsumerSyncD0Ev>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00113c23          	sd	ra,24(sp)
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	00050493          	mv	s1,a0
    80005494:	00006797          	auipc	a5,0x6
    80005498:	42478793          	addi	a5,a5,1060 # 8000b8b8 <_ZTV12ConsumerSync+0x10>
    8000549c:	00f53023          	sd	a5,0(a0)
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	65c080e7          	jalr	1628(ra) # 80001afc <_ZN6ThreadD1Ev>
    800054a8:	00048513          	mv	a0,s1
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	5d4080e7          	jalr	1492(ra) # 80001a80 <_ZdlPv>
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	00813483          	ld	s1,8(sp)
    800054c0:	02010113          	addi	sp,sp,32
    800054c4:	00008067          	ret

00000000800054c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800054c8:	ff010113          	addi	sp,sp,-16
    800054cc:	00113423          	sd	ra,8(sp)
    800054d0:	00813023          	sd	s0,0(sp)
    800054d4:	01010413          	addi	s0,sp,16
    800054d8:	00006797          	auipc	a5,0x6
    800054dc:	3b878793          	addi	a5,a5,952 # 8000b890 <_ZTV12ProducerSync+0x10>
    800054e0:	00f53023          	sd	a5,0(a0)
    800054e4:	ffffc097          	auipc	ra,0xffffc
    800054e8:	618080e7          	jalr	1560(ra) # 80001afc <_ZN6ThreadD1Ev>
    800054ec:	00813083          	ld	ra,8(sp)
    800054f0:	00013403          	ld	s0,0(sp)
    800054f4:	01010113          	addi	sp,sp,16
    800054f8:	00008067          	ret

00000000800054fc <_ZN12ProducerSyncD0Ev>:
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	00050493          	mv	s1,a0
    80005514:	00006797          	auipc	a5,0x6
    80005518:	37c78793          	addi	a5,a5,892 # 8000b890 <_ZTV12ProducerSync+0x10>
    8000551c:	00f53023          	sd	a5,0(a0)
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	5dc080e7          	jalr	1500(ra) # 80001afc <_ZN6ThreadD1Ev>
    80005528:	00048513          	mv	a0,s1
    8000552c:	ffffc097          	auipc	ra,0xffffc
    80005530:	554080e7          	jalr	1364(ra) # 80001a80 <_ZdlPv>
    80005534:	01813083          	ld	ra,24(sp)
    80005538:	01013403          	ld	s0,16(sp)
    8000553c:	00813483          	ld	s1,8(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret

0000000080005548 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005548:	ff010113          	addi	sp,sp,-16
    8000554c:	00113423          	sd	ra,8(sp)
    80005550:	00813023          	sd	s0,0(sp)
    80005554:	01010413          	addi	s0,sp,16
    80005558:	00006797          	auipc	a5,0x6
    8000555c:	31078793          	addi	a5,a5,784 # 8000b868 <_ZTV16ProducerKeyboard+0x10>
    80005560:	00f53023          	sd	a5,0(a0)
    80005564:	ffffc097          	auipc	ra,0xffffc
    80005568:	598080e7          	jalr	1432(ra) # 80001afc <_ZN6ThreadD1Ev>
    8000556c:	00813083          	ld	ra,8(sp)
    80005570:	00013403          	ld	s0,0(sp)
    80005574:	01010113          	addi	sp,sp,16
    80005578:	00008067          	ret

000000008000557c <_ZN16ProducerKeyboardD0Ev>:
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00113c23          	sd	ra,24(sp)
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	00050493          	mv	s1,a0
    80005594:	00006797          	auipc	a5,0x6
    80005598:	2d478793          	addi	a5,a5,724 # 8000b868 <_ZTV16ProducerKeyboard+0x10>
    8000559c:	00f53023          	sd	a5,0(a0)
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	55c080e7          	jalr	1372(ra) # 80001afc <_ZN6ThreadD1Ev>
    800055a8:	00048513          	mv	a0,s1
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	4d4080e7          	jalr	1236(ra) # 80001a80 <_ZdlPv>
    800055b4:	01813083          	ld	ra,24(sp)
    800055b8:	01013403          	ld	s0,16(sp)
    800055bc:	00813483          	ld	s1,8(sp)
    800055c0:	02010113          	addi	sp,sp,32
    800055c4:	00008067          	ret

00000000800055c8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800055c8:	ff010113          	addi	sp,sp,-16
    800055cc:	00113423          	sd	ra,8(sp)
    800055d0:	00813023          	sd	s0,0(sp)
    800055d4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800055d8:	02053583          	ld	a1,32(a0)
    800055dc:	fffff097          	auipc	ra,0xfffff
    800055e0:	7e4080e7          	jalr	2020(ra) # 80004dc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800055e4:	00813083          	ld	ra,8(sp)
    800055e8:	00013403          	ld	s0,0(sp)
    800055ec:	01010113          	addi	sp,sp,16
    800055f0:	00008067          	ret

00000000800055f4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800055f4:	ff010113          	addi	sp,sp,-16
    800055f8:	00113423          	sd	ra,8(sp)
    800055fc:	00813023          	sd	s0,0(sp)
    80005600:	01010413          	addi	s0,sp,16
        producer(td);
    80005604:	02053583          	ld	a1,32(a0)
    80005608:	00000097          	auipc	ra,0x0
    8000560c:	878080e7          	jalr	-1928(ra) # 80004e80 <_ZN12ProducerSync8producerEPv>
    }
    80005610:	00813083          	ld	ra,8(sp)
    80005614:	00013403          	ld	s0,0(sp)
    80005618:	01010113          	addi	sp,sp,16
    8000561c:	00008067          	ret

0000000080005620 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005620:	ff010113          	addi	sp,sp,-16
    80005624:	00113423          	sd	ra,8(sp)
    80005628:	00813023          	sd	s0,0(sp)
    8000562c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005630:	02053583          	ld	a1,32(a0)
    80005634:	00000097          	auipc	ra,0x0
    80005638:	8e0080e7          	jalr	-1824(ra) # 80004f14 <_ZN12ConsumerSync8consumerEPv>
    }
    8000563c:	00813083          	ld	ra,8(sp)
    80005640:	00013403          	ld	s0,0(sp)
    80005644:	01010113          	addi	sp,sp,16
    80005648:	00008067          	ret

000000008000564c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000564c:	fe010113          	addi	sp,sp,-32
    80005650:	00113c23          	sd	ra,24(sp)
    80005654:	00813823          	sd	s0,16(sp)
    80005658:	00913423          	sd	s1,8(sp)
    8000565c:	02010413          	addi	s0,sp,32
    80005660:	00050493          	mv	s1,a0
    LOCK();
    80005664:	00100613          	li	a2,1
    80005668:	00000593          	li	a1,0
    8000566c:	00006517          	auipc	a0,0x6
    80005670:	3bc50513          	addi	a0,a0,956 # 8000ba28 <lockPrint>
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	ce8080e7          	jalr	-792(ra) # 8000135c <copy_and_swap>
    8000567c:	00050863          	beqz	a0,8000568c <_Z11printStringPKc+0x40>
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	edc080e7          	jalr	-292(ra) # 8000155c <_Z15thread_dispatchv>
    80005688:	fddff06f          	j	80005664 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000568c:	0004c503          	lbu	a0,0(s1)
    80005690:	00050a63          	beqz	a0,800056a4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005694:	ffffc097          	auipc	ra,0xffffc
    80005698:	088080e7          	jalr	136(ra) # 8000171c <_Z4putcc>
        string++;
    8000569c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800056a0:	fedff06f          	j	8000568c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800056a4:	00000613          	li	a2,0
    800056a8:	00100593          	li	a1,1
    800056ac:	00006517          	auipc	a0,0x6
    800056b0:	37c50513          	addi	a0,a0,892 # 8000ba28 <lockPrint>
    800056b4:	ffffc097          	auipc	ra,0xffffc
    800056b8:	ca8080e7          	jalr	-856(ra) # 8000135c <copy_and_swap>
    800056bc:	fe0514e3          	bnez	a0,800056a4 <_Z11printStringPKc+0x58>
}
    800056c0:	01813083          	ld	ra,24(sp)
    800056c4:	01013403          	ld	s0,16(sp)
    800056c8:	00813483          	ld	s1,8(sp)
    800056cc:	02010113          	addi	sp,sp,32
    800056d0:	00008067          	ret

00000000800056d4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800056d4:	fd010113          	addi	sp,sp,-48
    800056d8:	02113423          	sd	ra,40(sp)
    800056dc:	02813023          	sd	s0,32(sp)
    800056e0:	00913c23          	sd	s1,24(sp)
    800056e4:	01213823          	sd	s2,16(sp)
    800056e8:	01313423          	sd	s3,8(sp)
    800056ec:	01413023          	sd	s4,0(sp)
    800056f0:	03010413          	addi	s0,sp,48
    800056f4:	00050993          	mv	s3,a0
    800056f8:	00058a13          	mv	s4,a1
    LOCK();
    800056fc:	00100613          	li	a2,1
    80005700:	00000593          	li	a1,0
    80005704:	00006517          	auipc	a0,0x6
    80005708:	32450513          	addi	a0,a0,804 # 8000ba28 <lockPrint>
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	c50080e7          	jalr	-944(ra) # 8000135c <copy_and_swap>
    80005714:	00050863          	beqz	a0,80005724 <_Z9getStringPci+0x50>
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	e44080e7          	jalr	-444(ra) # 8000155c <_Z15thread_dispatchv>
    80005720:	fddff06f          	j	800056fc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005724:	00000913          	li	s2,0
    80005728:	00090493          	mv	s1,s2
    8000572c:	0019091b          	addiw	s2,s2,1
    80005730:	03495a63          	bge	s2,s4,80005764 <_Z9getStringPci+0x90>
        cc = getc();
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	fac080e7          	jalr	-84(ra) # 800016e0 <_Z4getcv>
        if(cc < 1)
    8000573c:	02050463          	beqz	a0,80005764 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005740:	009984b3          	add	s1,s3,s1
    80005744:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005748:	00a00793          	li	a5,10
    8000574c:	00f50a63          	beq	a0,a5,80005760 <_Z9getStringPci+0x8c>
    80005750:	00d00793          	li	a5,13
    80005754:	fcf51ae3          	bne	a0,a5,80005728 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005758:	00090493          	mv	s1,s2
    8000575c:	0080006f          	j	80005764 <_Z9getStringPci+0x90>
    80005760:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005764:	009984b3          	add	s1,s3,s1
    80005768:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000576c:	00000613          	li	a2,0
    80005770:	00100593          	li	a1,1
    80005774:	00006517          	auipc	a0,0x6
    80005778:	2b450513          	addi	a0,a0,692 # 8000ba28 <lockPrint>
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	be0080e7          	jalr	-1056(ra) # 8000135c <copy_and_swap>
    80005784:	fe0514e3          	bnez	a0,8000576c <_Z9getStringPci+0x98>
    return buf;
}
    80005788:	00098513          	mv	a0,s3
    8000578c:	02813083          	ld	ra,40(sp)
    80005790:	02013403          	ld	s0,32(sp)
    80005794:	01813483          	ld	s1,24(sp)
    80005798:	01013903          	ld	s2,16(sp)
    8000579c:	00813983          	ld	s3,8(sp)
    800057a0:	00013a03          	ld	s4,0(sp)
    800057a4:	03010113          	addi	sp,sp,48
    800057a8:	00008067          	ret

00000000800057ac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800057ac:	ff010113          	addi	sp,sp,-16
    800057b0:	00813423          	sd	s0,8(sp)
    800057b4:	01010413          	addi	s0,sp,16
    800057b8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800057bc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800057c0:	0006c603          	lbu	a2,0(a3)
    800057c4:	fd06071b          	addiw	a4,a2,-48
    800057c8:	0ff77713          	andi	a4,a4,255
    800057cc:	00900793          	li	a5,9
    800057d0:	02e7e063          	bltu	a5,a4,800057f0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800057d4:	0025179b          	slliw	a5,a0,0x2
    800057d8:	00a787bb          	addw	a5,a5,a0
    800057dc:	0017979b          	slliw	a5,a5,0x1
    800057e0:	00168693          	addi	a3,a3,1
    800057e4:	00c787bb          	addw	a5,a5,a2
    800057e8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800057ec:	fd5ff06f          	j	800057c0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800057f0:	00813403          	ld	s0,8(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret

00000000800057fc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800057fc:	fc010113          	addi	sp,sp,-64
    80005800:	02113c23          	sd	ra,56(sp)
    80005804:	02813823          	sd	s0,48(sp)
    80005808:	02913423          	sd	s1,40(sp)
    8000580c:	03213023          	sd	s2,32(sp)
    80005810:	01313c23          	sd	s3,24(sp)
    80005814:	04010413          	addi	s0,sp,64
    80005818:	00050493          	mv	s1,a0
    8000581c:	00058913          	mv	s2,a1
    80005820:	00060993          	mv	s3,a2
    LOCK();
    80005824:	00100613          	li	a2,1
    80005828:	00000593          	li	a1,0
    8000582c:	00006517          	auipc	a0,0x6
    80005830:	1fc50513          	addi	a0,a0,508 # 8000ba28 <lockPrint>
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	b28080e7          	jalr	-1240(ra) # 8000135c <copy_and_swap>
    8000583c:	00050863          	beqz	a0,8000584c <_Z8printIntiii+0x50>
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	d1c080e7          	jalr	-740(ra) # 8000155c <_Z15thread_dispatchv>
    80005848:	fddff06f          	j	80005824 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000584c:	00098463          	beqz	s3,80005854 <_Z8printIntiii+0x58>
    80005850:	0804c463          	bltz	s1,800058d8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005854:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005858:	00000593          	li	a1,0
    }

    i = 0;
    8000585c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005860:	0009079b          	sext.w	a5,s2
    80005864:	0325773b          	remuw	a4,a0,s2
    80005868:	00048613          	mv	a2,s1
    8000586c:	0014849b          	addiw	s1,s1,1
    80005870:	02071693          	slli	a3,a4,0x20
    80005874:	0206d693          	srli	a3,a3,0x20
    80005878:	00006717          	auipc	a4,0x6
    8000587c:	05870713          	addi	a4,a4,88 # 8000b8d0 <digits>
    80005880:	00d70733          	add	a4,a4,a3
    80005884:	00074683          	lbu	a3,0(a4)
    80005888:	fd040713          	addi	a4,s0,-48
    8000588c:	00c70733          	add	a4,a4,a2
    80005890:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005894:	0005071b          	sext.w	a4,a0
    80005898:	0325553b          	divuw	a0,a0,s2
    8000589c:	fcf772e3          	bgeu	a4,a5,80005860 <_Z8printIntiii+0x64>
    if(neg)
    800058a0:	00058c63          	beqz	a1,800058b8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800058a4:	fd040793          	addi	a5,s0,-48
    800058a8:	009784b3          	add	s1,a5,s1
    800058ac:	02d00793          	li	a5,45
    800058b0:	fef48823          	sb	a5,-16(s1)
    800058b4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800058b8:	fff4849b          	addiw	s1,s1,-1
    800058bc:	0204c463          	bltz	s1,800058e4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800058c0:	fd040793          	addi	a5,s0,-48
    800058c4:	009787b3          	add	a5,a5,s1
    800058c8:	ff07c503          	lbu	a0,-16(a5)
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	e50080e7          	jalr	-432(ra) # 8000171c <_Z4putcc>
    800058d4:	fe5ff06f          	j	800058b8 <_Z8printIntiii+0xbc>
        x = -xx;
    800058d8:	4090053b          	negw	a0,s1
        neg = 1;
    800058dc:	00100593          	li	a1,1
        x = -xx;
    800058e0:	f7dff06f          	j	8000585c <_Z8printIntiii+0x60>

    UNLOCK();
    800058e4:	00000613          	li	a2,0
    800058e8:	00100593          	li	a1,1
    800058ec:	00006517          	auipc	a0,0x6
    800058f0:	13c50513          	addi	a0,a0,316 # 8000ba28 <lockPrint>
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	a68080e7          	jalr	-1432(ra) # 8000135c <copy_and_swap>
    800058fc:	fe0514e3          	bnez	a0,800058e4 <_Z8printIntiii+0xe8>
    80005900:	03813083          	ld	ra,56(sp)
    80005904:	03013403          	ld	s0,48(sp)
    80005908:	02813483          	ld	s1,40(sp)
    8000590c:	02013903          	ld	s2,32(sp)
    80005910:	01813983          	ld	s3,24(sp)
    80005914:	04010113          	addi	sp,sp,64
    80005918:	00008067          	ret

000000008000591c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000591c:	fd010113          	addi	sp,sp,-48
    80005920:	02113423          	sd	ra,40(sp)
    80005924:	02813023          	sd	s0,32(sp)
    80005928:	00913c23          	sd	s1,24(sp)
    8000592c:	01213823          	sd	s2,16(sp)
    80005930:	01313423          	sd	s3,8(sp)
    80005934:	03010413          	addi	s0,sp,48
    80005938:	00050493          	mv	s1,a0
    8000593c:	00058913          	mv	s2,a1
    80005940:	0015879b          	addiw	a5,a1,1
    80005944:	0007851b          	sext.w	a0,a5
    80005948:	00f4a023          	sw	a5,0(s1)
    8000594c:	0004a823          	sw	zero,16(s1)
    80005950:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005954:	00251513          	slli	a0,a0,0x2
    80005958:	ffffc097          	auipc	ra,0xffffc
    8000595c:	a5c080e7          	jalr	-1444(ra) # 800013b4 <_Z9mem_allocm>
    80005960:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005964:	01000513          	li	a0,16
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	0c8080e7          	jalr	200(ra) # 80001a30 <_Znwm>
    80005970:	00050993          	mv	s3,a0
    80005974:	00000593          	li	a1,0
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	464080e7          	jalr	1124(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    80005980:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005984:	01000513          	li	a0,16
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	0a8080e7          	jalr	168(ra) # 80001a30 <_Znwm>
    80005990:	00050993          	mv	s3,a0
    80005994:	00090593          	mv	a1,s2
    80005998:	ffffc097          	auipc	ra,0xffffc
    8000599c:	444080e7          	jalr	1092(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    800059a0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800059a4:	01000513          	li	a0,16
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	088080e7          	jalr	136(ra) # 80001a30 <_Znwm>
    800059b0:	00050913          	mv	s2,a0
    800059b4:	00100593          	li	a1,1
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	424080e7          	jalr	1060(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    800059c0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800059c4:	01000513          	li	a0,16
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	068080e7          	jalr	104(ra) # 80001a30 <_Znwm>
    800059d0:	00050913          	mv	s2,a0
    800059d4:	00100593          	li	a1,1
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	404080e7          	jalr	1028(ra) # 80001ddc <_ZN9SemaphoreC1Ej>
    800059e0:	0324b823          	sd	s2,48(s1)
}
    800059e4:	02813083          	ld	ra,40(sp)
    800059e8:	02013403          	ld	s0,32(sp)
    800059ec:	01813483          	ld	s1,24(sp)
    800059f0:	01013903          	ld	s2,16(sp)
    800059f4:	00813983          	ld	s3,8(sp)
    800059f8:	03010113          	addi	sp,sp,48
    800059fc:	00008067          	ret
    80005a00:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005a04:	00098513          	mv	a0,s3
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	078080e7          	jalr	120(ra) # 80001a80 <_ZdlPv>
    80005a10:	00048513          	mv	a0,s1
    80005a14:	00007097          	auipc	ra,0x7
    80005a18:	0f4080e7          	jalr	244(ra) # 8000cb08 <_Unwind_Resume>
    80005a1c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005a20:	00098513          	mv	a0,s3
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	05c080e7          	jalr	92(ra) # 80001a80 <_ZdlPv>
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	00007097          	auipc	ra,0x7
    80005a34:	0d8080e7          	jalr	216(ra) # 8000cb08 <_Unwind_Resume>
    80005a38:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a3c:	00090513          	mv	a0,s2
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	040080e7          	jalr	64(ra) # 80001a80 <_ZdlPv>
    80005a48:	00048513          	mv	a0,s1
    80005a4c:	00007097          	auipc	ra,0x7
    80005a50:	0bc080e7          	jalr	188(ra) # 8000cb08 <_Unwind_Resume>
    80005a54:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a58:	00090513          	mv	a0,s2
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	024080e7          	jalr	36(ra) # 80001a80 <_ZdlPv>
    80005a64:	00048513          	mv	a0,s1
    80005a68:	00007097          	auipc	ra,0x7
    80005a6c:	0a0080e7          	jalr	160(ra) # 8000cb08 <_Unwind_Resume>

0000000080005a70 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	01213023          	sd	s2,0(sp)
    80005a84:	02010413          	addi	s0,sp,32
    80005a88:	00050493          	mv	s1,a0
    80005a8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005a90:	01853503          	ld	a0,24(a0)
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	384080e7          	jalr	900(ra) # 80001e18 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005a9c:	0304b503          	ld	a0,48(s1)
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	378080e7          	jalr	888(ra) # 80001e18 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005aa8:	0084b783          	ld	a5,8(s1)
    80005aac:	0144a703          	lw	a4,20(s1)
    80005ab0:	00271713          	slli	a4,a4,0x2
    80005ab4:	00e787b3          	add	a5,a5,a4
    80005ab8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005abc:	0144a783          	lw	a5,20(s1)
    80005ac0:	0017879b          	addiw	a5,a5,1
    80005ac4:	0004a703          	lw	a4,0(s1)
    80005ac8:	02e7e7bb          	remw	a5,a5,a4
    80005acc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ad0:	0304b503          	ld	a0,48(s1)
    80005ad4:	ffffc097          	auipc	ra,0xffffc
    80005ad8:	370080e7          	jalr	880(ra) # 80001e44 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005adc:	0204b503          	ld	a0,32(s1)
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	364080e7          	jalr	868(ra) # 80001e44 <_ZN9Semaphore6signalEv>

}
    80005ae8:	01813083          	ld	ra,24(sp)
    80005aec:	01013403          	ld	s0,16(sp)
    80005af0:	00813483          	ld	s1,8(sp)
    80005af4:	00013903          	ld	s2,0(sp)
    80005af8:	02010113          	addi	sp,sp,32
    80005afc:	00008067          	ret

0000000080005b00 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005b00:	fe010113          	addi	sp,sp,-32
    80005b04:	00113c23          	sd	ra,24(sp)
    80005b08:	00813823          	sd	s0,16(sp)
    80005b0c:	00913423          	sd	s1,8(sp)
    80005b10:	01213023          	sd	s2,0(sp)
    80005b14:	02010413          	addi	s0,sp,32
    80005b18:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005b1c:	02053503          	ld	a0,32(a0)
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	2f8080e7          	jalr	760(ra) # 80001e18 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005b28:	0284b503          	ld	a0,40(s1)
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	2ec080e7          	jalr	748(ra) # 80001e18 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005b34:	0084b703          	ld	a4,8(s1)
    80005b38:	0104a783          	lw	a5,16(s1)
    80005b3c:	00279693          	slli	a3,a5,0x2
    80005b40:	00d70733          	add	a4,a4,a3
    80005b44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b48:	0017879b          	addiw	a5,a5,1
    80005b4c:	0004a703          	lw	a4,0(s1)
    80005b50:	02e7e7bb          	remw	a5,a5,a4
    80005b54:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b58:	0284b503          	ld	a0,40(s1)
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	2e8080e7          	jalr	744(ra) # 80001e44 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b64:	0184b503          	ld	a0,24(s1)
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	2dc080e7          	jalr	732(ra) # 80001e44 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b70:	00090513          	mv	a0,s2
    80005b74:	01813083          	ld	ra,24(sp)
    80005b78:	01013403          	ld	s0,16(sp)
    80005b7c:	00813483          	ld	s1,8(sp)
    80005b80:	00013903          	ld	s2,0(sp)
    80005b84:	02010113          	addi	sp,sp,32
    80005b88:	00008067          	ret

0000000080005b8c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005b8c:	fe010113          	addi	sp,sp,-32
    80005b90:	00113c23          	sd	ra,24(sp)
    80005b94:	00813823          	sd	s0,16(sp)
    80005b98:	00913423          	sd	s1,8(sp)
    80005b9c:	01213023          	sd	s2,0(sp)
    80005ba0:	02010413          	addi	s0,sp,32
    80005ba4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ba8:	02853503          	ld	a0,40(a0)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	26c080e7          	jalr	620(ra) # 80001e18 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005bb4:	0304b503          	ld	a0,48(s1)
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	260080e7          	jalr	608(ra) # 80001e18 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005bc0:	0144a783          	lw	a5,20(s1)
    80005bc4:	0104a903          	lw	s2,16(s1)
    80005bc8:	0327ce63          	blt	a5,s2,80005c04 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005bcc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005bd0:	0304b503          	ld	a0,48(s1)
    80005bd4:	ffffc097          	auipc	ra,0xffffc
    80005bd8:	270080e7          	jalr	624(ra) # 80001e44 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005bdc:	0284b503          	ld	a0,40(s1)
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	264080e7          	jalr	612(ra) # 80001e44 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005be8:	00090513          	mv	a0,s2
    80005bec:	01813083          	ld	ra,24(sp)
    80005bf0:	01013403          	ld	s0,16(sp)
    80005bf4:	00813483          	ld	s1,8(sp)
    80005bf8:	00013903          	ld	s2,0(sp)
    80005bfc:	02010113          	addi	sp,sp,32
    80005c00:	00008067          	ret
        ret = cap - head + tail;
    80005c04:	0004a703          	lw	a4,0(s1)
    80005c08:	4127093b          	subw	s2,a4,s2
    80005c0c:	00f9093b          	addw	s2,s2,a5
    80005c10:	fc1ff06f          	j	80005bd0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005c14 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005c14:	fe010113          	addi	sp,sp,-32
    80005c18:	00113c23          	sd	ra,24(sp)
    80005c1c:	00813823          	sd	s0,16(sp)
    80005c20:	00913423          	sd	s1,8(sp)
    80005c24:	02010413          	addi	s0,sp,32
    80005c28:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005c2c:	00a00513          	li	a0,10
    80005c30:	ffffc097          	auipc	ra,0xffffc
    80005c34:	2d4080e7          	jalr	724(ra) # 80001f04 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005c38:	00003517          	auipc	a0,0x3
    80005c3c:	5e850513          	addi	a0,a0,1512 # 80009220 <CONSOLE_STATUS+0x210>
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	a0c080e7          	jalr	-1524(ra) # 8000564c <_Z11printStringPKc>
    while (getCnt()) {
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	00000097          	auipc	ra,0x0
    80005c50:	f40080e7          	jalr	-192(ra) # 80005b8c <_ZN9BufferCPP6getCntEv>
    80005c54:	02050c63          	beqz	a0,80005c8c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005c58:	0084b783          	ld	a5,8(s1)
    80005c5c:	0104a703          	lw	a4,16(s1)
    80005c60:	00271713          	slli	a4,a4,0x2
    80005c64:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005c68:	0007c503          	lbu	a0,0(a5)
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	298080e7          	jalr	664(ra) # 80001f04 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005c74:	0104a783          	lw	a5,16(s1)
    80005c78:	0017879b          	addiw	a5,a5,1
    80005c7c:	0004a703          	lw	a4,0(s1)
    80005c80:	02e7e7bb          	remw	a5,a5,a4
    80005c84:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005c88:	fc1ff06f          	j	80005c48 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005c8c:	02100513          	li	a0,33
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	274080e7          	jalr	628(ra) # 80001f04 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005c98:	00a00513          	li	a0,10
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	268080e7          	jalr	616(ra) # 80001f04 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005ca4:	0084b503          	ld	a0,8(s1)
    80005ca8:	ffffb097          	auipc	ra,0xffffb
    80005cac:	74c080e7          	jalr	1868(ra) # 800013f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005cb0:	0204b503          	ld	a0,32(s1)
    80005cb4:	00050863          	beqz	a0,80005cc4 <_ZN9BufferCPPD1Ev+0xb0>
    80005cb8:	00053783          	ld	a5,0(a0)
    80005cbc:	0087b783          	ld	a5,8(a5)
    80005cc0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005cc4:	0184b503          	ld	a0,24(s1)
    80005cc8:	00050863          	beqz	a0,80005cd8 <_ZN9BufferCPPD1Ev+0xc4>
    80005ccc:	00053783          	ld	a5,0(a0)
    80005cd0:	0087b783          	ld	a5,8(a5)
    80005cd4:	000780e7          	jalr	a5
    delete mutexTail;
    80005cd8:	0304b503          	ld	a0,48(s1)
    80005cdc:	00050863          	beqz	a0,80005cec <_ZN9BufferCPPD1Ev+0xd8>
    80005ce0:	00053783          	ld	a5,0(a0)
    80005ce4:	0087b783          	ld	a5,8(a5)
    80005ce8:	000780e7          	jalr	a5
    delete mutexHead;
    80005cec:	0284b503          	ld	a0,40(s1)
    80005cf0:	00050863          	beqz	a0,80005d00 <_ZN9BufferCPPD1Ev+0xec>
    80005cf4:	00053783          	ld	a5,0(a0)
    80005cf8:	0087b783          	ld	a5,8(a5)
    80005cfc:	000780e7          	jalr	a5
}
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	51050513          	addi	a0,a0,1296 # 80009238 <CONSOLE_STATUS+0x228>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	91c080e7          	jalr	-1764(ra) # 8000564c <_Z11printStringPKc>
    int test = getc() - '0';
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	9a8080e7          	jalr	-1624(ra) # 800016e0 <_Z4getcv>
    80005d40:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	99c080e7          	jalr	-1636(ra) # 800016e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005d4c:	00700793          	li	a5,7
    80005d50:	1097e263          	bltu	a5,s1,80005e54 <_Z8userMainv+0x140>
    80005d54:	00249493          	slli	s1,s1,0x2
    80005d58:	00003717          	auipc	a4,0x3
    80005d5c:	73870713          	addi	a4,a4,1848 # 80009490 <CONSOLE_STATUS+0x480>
    80005d60:	00e484b3          	add	s1,s1,a4
    80005d64:	0004a783          	lw	a5,0(s1)
    80005d68:	00e787b3          	add	a5,a5,a4
    80005d6c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	f54080e7          	jalr	-172(ra) # 80004cc4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005d78:	00003517          	auipc	a0,0x3
    80005d7c:	4e050513          	addi	a0,a0,1248 # 80009258 <CONSOLE_STATUS+0x248>
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	8cc080e7          	jalr	-1844(ra) # 8000564c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	01013403          	ld	s0,16(sp)
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	02010113          	addi	sp,sp,32
    80005d98:	00008067          	ret
            Threads_CPP_API_test();
    80005d9c:	ffffe097          	auipc	ra,0xffffe
    80005da0:	e08080e7          	jalr	-504(ra) # 80003ba4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	4f450513          	addi	a0,a0,1268 # 80009298 <CONSOLE_STATUS+0x288>
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	8a0080e7          	jalr	-1888(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005db4:	fd5ff06f          	j	80005d88 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005db8:	ffffd097          	auipc	ra,0xffffd
    80005dbc:	640080e7          	jalr	1600(ra) # 800033f8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	51850513          	addi	a0,a0,1304 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	884080e7          	jalr	-1916(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005dd0:	fb9ff06f          	j	80005d88 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	234080e7          	jalr	564(ra) # 80005008 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	54c50513          	addi	a0,a0,1356 # 80009328 <CONSOLE_STATUS+0x318>
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	868080e7          	jalr	-1944(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005dec:	f9dff06f          	j	80005d88 <_Z8userMainv+0x74>
            testSleeping();
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	11c080e7          	jalr	284(ra) # 80005f0c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	58850513          	addi	a0,a0,1416 # 80009380 <CONSOLE_STATUS+0x370>
    80005e00:	00000097          	auipc	ra,0x0
    80005e04:	84c080e7          	jalr	-1972(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005e08:	f81ff06f          	j	80005d88 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005e0c:	ffffe097          	auipc	ra,0xffffe
    80005e10:	258080e7          	jalr	600(ra) # 80004064 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	59c50513          	addi	a0,a0,1436 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005e1c:	00000097          	auipc	ra,0x0
    80005e20:	830080e7          	jalr	-2000(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005e24:	f65ff06f          	j	80005d88 <_Z8userMainv+0x74>
            System_Mode_test();
    80005e28:	00000097          	auipc	ra,0x0
    80005e2c:	658080e7          	jalr	1624(ra) # 80006480 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005e30:	00003517          	auipc	a0,0x3
    80005e34:	5c050513          	addi	a0,a0,1472 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005e38:	00000097          	auipc	ra,0x0
    80005e3c:	814080e7          	jalr	-2028(ra) # 8000564c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005e40:	00003517          	auipc	a0,0x3
    80005e44:	5d050513          	addi	a0,a0,1488 # 80009410 <CONSOLE_STATUS+0x400>
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	804080e7          	jalr	-2044(ra) # 8000564c <_Z11printStringPKc>
            break;
    80005e50:	f39ff06f          	j	80005d88 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	61450513          	addi	a0,a0,1556 # 80009468 <CONSOLE_STATUS+0x458>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	7f0080e7          	jalr	2032(ra) # 8000564c <_Z11printStringPKc>
    80005e64:	f25ff06f          	j	80005d88 <_Z8userMainv+0x74>

0000000080005e68 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005e68:	fe010113          	addi	sp,sp,-32
    80005e6c:	00113c23          	sd	ra,24(sp)
    80005e70:	00813823          	sd	s0,16(sp)
    80005e74:	00913423          	sd	s1,8(sp)
    80005e78:	01213023          	sd	s2,0(sp)
    80005e7c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e80:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e84:	00600493          	li	s1,6
    while (--i > 0) {
    80005e88:	fff4849b          	addiw	s1,s1,-1
    80005e8c:	04905463          	blez	s1,80005ed4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005e90:	00003517          	auipc	a0,0x3
    80005e94:	62050513          	addi	a0,a0,1568 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	7b4080e7          	jalr	1972(ra) # 8000564c <_Z11printStringPKc>
        printInt(sleep_time);
    80005ea0:	00000613          	li	a2,0
    80005ea4:	00a00593          	li	a1,10
    80005ea8:	0009051b          	sext.w	a0,s2
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	950080e7          	jalr	-1712(ra) # 800057fc <_Z8printIntiii>
        printString(" !\n");
    80005eb4:	00003517          	auipc	a0,0x3
    80005eb8:	60450513          	addi	a0,a0,1540 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005ebc:	fffff097          	auipc	ra,0xfffff
    80005ec0:	790080e7          	jalr	1936(ra) # 8000564c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ec4:	00090513          	mv	a0,s2
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	618080e7          	jalr	1560(ra) # 800014e0 <_Z10time_sleepm>
    while (--i > 0) {
    80005ed0:	fb9ff06f          	j	80005e88 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005ed4:	00a00793          	li	a5,10
    80005ed8:	02f95933          	divu	s2,s2,a5
    80005edc:	fff90913          	addi	s2,s2,-1
    80005ee0:	00006797          	auipc	a5,0x6
    80005ee4:	b5078793          	addi	a5,a5,-1200 # 8000ba30 <_ZL8finished>
    80005ee8:	01278933          	add	s2,a5,s2
    80005eec:	00100793          	li	a5,1
    80005ef0:	00f90023          	sb	a5,0(s2)
}
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	01013403          	ld	s0,16(sp)
    80005efc:	00813483          	ld	s1,8(sp)
    80005f00:	00013903          	ld	s2,0(sp)
    80005f04:	02010113          	addi	sp,sp,32
    80005f08:	00008067          	ret

0000000080005f0c <_Z12testSleepingv>:

void testSleeping() {
    80005f0c:	fc010113          	addi	sp,sp,-64
    80005f10:	02113c23          	sd	ra,56(sp)
    80005f14:	02813823          	sd	s0,48(sp)
    80005f18:	02913423          	sd	s1,40(sp)
    80005f1c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f20:	00a00793          	li	a5,10
    80005f24:	fcf43823          	sd	a5,-48(s0)
    80005f28:	01400793          	li	a5,20
    80005f2c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f30:	00000493          	li	s1,0
    80005f34:	02c0006f          	j	80005f60 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f38:	00349793          	slli	a5,s1,0x3
    80005f3c:	fd040613          	addi	a2,s0,-48
    80005f40:	00f60633          	add	a2,a2,a5
    80005f44:	00000597          	auipc	a1,0x0
    80005f48:	f2458593          	addi	a1,a1,-220 # 80005e68 <_ZL9sleepyRunPv>
    80005f4c:	fc040513          	addi	a0,s0,-64
    80005f50:	00f50533          	add	a0,a0,a5
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	4e0080e7          	jalr	1248(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f5c:	0014849b          	addiw	s1,s1,1
    80005f60:	00100793          	li	a5,1
    80005f64:	fc97dae3          	bge	a5,s1,80005f38 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f68:	00006797          	auipc	a5,0x6
    80005f6c:	ac87c783          	lbu	a5,-1336(a5) # 8000ba30 <_ZL8finished>
    80005f70:	fe078ce3          	beqz	a5,80005f68 <_Z12testSleepingv+0x5c>
    80005f74:	00006797          	auipc	a5,0x6
    80005f78:	abd7c783          	lbu	a5,-1347(a5) # 8000ba31 <_ZL8finished+0x1>
    80005f7c:	fe0786e3          	beqz	a5,80005f68 <_Z12testSleepingv+0x5c>
}
    80005f80:	03813083          	ld	ra,56(sp)
    80005f84:	03013403          	ld	s0,48(sp)
    80005f88:	02813483          	ld	s1,40(sp)
    80005f8c:	04010113          	addi	sp,sp,64
    80005f90:	00008067          	ret

0000000080005f94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005f94:	fe010113          	addi	sp,sp,-32
    80005f98:	00113c23          	sd	ra,24(sp)
    80005f9c:	00813823          	sd	s0,16(sp)
    80005fa0:	00913423          	sd	s1,8(sp)
    80005fa4:	01213023          	sd	s2,0(sp)
    80005fa8:	02010413          	addi	s0,sp,32
    80005fac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005fb0:	00100793          	li	a5,1
    80005fb4:	02a7f863          	bgeu	a5,a0,80005fe4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005fb8:	00a00793          	li	a5,10
    80005fbc:	02f577b3          	remu	a5,a0,a5
    80005fc0:	02078e63          	beqz	a5,80005ffc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005fc4:	fff48513          	addi	a0,s1,-1
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	fcc080e7          	jalr	-52(ra) # 80005f94 <_ZL9fibonaccim>
    80005fd0:	00050913          	mv	s2,a0
    80005fd4:	ffe48513          	addi	a0,s1,-2
    80005fd8:	00000097          	auipc	ra,0x0
    80005fdc:	fbc080e7          	jalr	-68(ra) # 80005f94 <_ZL9fibonaccim>
    80005fe0:	00a90533          	add	a0,s2,a0
}
    80005fe4:	01813083          	ld	ra,24(sp)
    80005fe8:	01013403          	ld	s0,16(sp)
    80005fec:	00813483          	ld	s1,8(sp)
    80005ff0:	00013903          	ld	s2,0(sp)
    80005ff4:	02010113          	addi	sp,sp,32
    80005ff8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005ffc:	ffffb097          	auipc	ra,0xffffb
    80006000:	560080e7          	jalr	1376(ra) # 8000155c <_Z15thread_dispatchv>
    80006004:	fc1ff06f          	j	80005fc4 <_ZL9fibonaccim+0x30>

0000000080006008 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006008:	fe010113          	addi	sp,sp,-32
    8000600c:	00113c23          	sd	ra,24(sp)
    80006010:	00813823          	sd	s0,16(sp)
    80006014:	00913423          	sd	s1,8(sp)
    80006018:	01213023          	sd	s2,0(sp)
    8000601c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006020:	00a00493          	li	s1,10
    80006024:	0400006f          	j	80006064 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006028:	00003517          	auipc	a0,0x3
    8000602c:	16050513          	addi	a0,a0,352 # 80009188 <CONSOLE_STATUS+0x178>
    80006030:	fffff097          	auipc	ra,0xfffff
    80006034:	61c080e7          	jalr	1564(ra) # 8000564c <_Z11printStringPKc>
    80006038:	00000613          	li	a2,0
    8000603c:	00a00593          	li	a1,10
    80006040:	00048513          	mv	a0,s1
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	7b8080e7          	jalr	1976(ra) # 800057fc <_Z8printIntiii>
    8000604c:	00003517          	auipc	a0,0x3
    80006050:	32c50513          	addi	a0,a0,812 # 80009378 <CONSOLE_STATUS+0x368>
    80006054:	fffff097          	auipc	ra,0xfffff
    80006058:	5f8080e7          	jalr	1528(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000605c:	0014849b          	addiw	s1,s1,1
    80006060:	0ff4f493          	andi	s1,s1,255
    80006064:	00c00793          	li	a5,12
    80006068:	fc97f0e3          	bgeu	a5,s1,80006028 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000606c:	00003517          	auipc	a0,0x3
    80006070:	12450513          	addi	a0,a0,292 # 80009190 <CONSOLE_STATUS+0x180>
    80006074:	fffff097          	auipc	ra,0xfffff
    80006078:	5d8080e7          	jalr	1496(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000607c:	00500313          	li	t1,5
    thread_dispatch();
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	4dc080e7          	jalr	1244(ra) # 8000155c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006088:	01000513          	li	a0,16
    8000608c:	00000097          	auipc	ra,0x0
    80006090:	f08080e7          	jalr	-248(ra) # 80005f94 <_ZL9fibonaccim>
    80006094:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006098:	00003517          	auipc	a0,0x3
    8000609c:	10850513          	addi	a0,a0,264 # 800091a0 <CONSOLE_STATUS+0x190>
    800060a0:	fffff097          	auipc	ra,0xfffff
    800060a4:	5ac080e7          	jalr	1452(ra) # 8000564c <_Z11printStringPKc>
    800060a8:	00000613          	li	a2,0
    800060ac:	00a00593          	li	a1,10
    800060b0:	0009051b          	sext.w	a0,s2
    800060b4:	fffff097          	auipc	ra,0xfffff
    800060b8:	748080e7          	jalr	1864(ra) # 800057fc <_Z8printIntiii>
    800060bc:	00003517          	auipc	a0,0x3
    800060c0:	2bc50513          	addi	a0,a0,700 # 80009378 <CONSOLE_STATUS+0x368>
    800060c4:	fffff097          	auipc	ra,0xfffff
    800060c8:	588080e7          	jalr	1416(ra) # 8000564c <_Z11printStringPKc>
    800060cc:	0400006f          	j	8000610c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800060d0:	00003517          	auipc	a0,0x3
    800060d4:	0b850513          	addi	a0,a0,184 # 80009188 <CONSOLE_STATUS+0x178>
    800060d8:	fffff097          	auipc	ra,0xfffff
    800060dc:	574080e7          	jalr	1396(ra) # 8000564c <_Z11printStringPKc>
    800060e0:	00000613          	li	a2,0
    800060e4:	00a00593          	li	a1,10
    800060e8:	00048513          	mv	a0,s1
    800060ec:	fffff097          	auipc	ra,0xfffff
    800060f0:	710080e7          	jalr	1808(ra) # 800057fc <_Z8printIntiii>
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	28450513          	addi	a0,a0,644 # 80009378 <CONSOLE_STATUS+0x368>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	550080e7          	jalr	1360(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006104:	0014849b          	addiw	s1,s1,1
    80006108:	0ff4f493          	andi	s1,s1,255
    8000610c:	00f00793          	li	a5,15
    80006110:	fc97f0e3          	bgeu	a5,s1,800060d0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006114:	00003517          	auipc	a0,0x3
    80006118:	09c50513          	addi	a0,a0,156 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000611c:	fffff097          	auipc	ra,0xfffff
    80006120:	530080e7          	jalr	1328(ra) # 8000564c <_Z11printStringPKc>
    finishedD = true;
    80006124:	00100793          	li	a5,1
    80006128:	00006717          	auipc	a4,0x6
    8000612c:	90f70523          	sb	a5,-1782(a4) # 8000ba32 <_ZL9finishedD>
    thread_dispatch();
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	42c080e7          	jalr	1068(ra) # 8000155c <_Z15thread_dispatchv>
}
    80006138:	01813083          	ld	ra,24(sp)
    8000613c:	01013403          	ld	s0,16(sp)
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	00013903          	ld	s2,0(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret

0000000080006150 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00813823          	sd	s0,16(sp)
    8000615c:	00913423          	sd	s1,8(sp)
    80006160:	01213023          	sd	s2,0(sp)
    80006164:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006168:	00000493          	li	s1,0
    8000616c:	0400006f          	j	800061ac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006170:	00003517          	auipc	a0,0x3
    80006174:	fd850513          	addi	a0,a0,-40 # 80009148 <CONSOLE_STATUS+0x138>
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	4d4080e7          	jalr	1236(ra) # 8000564c <_Z11printStringPKc>
    80006180:	00000613          	li	a2,0
    80006184:	00a00593          	li	a1,10
    80006188:	00048513          	mv	a0,s1
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	670080e7          	jalr	1648(ra) # 800057fc <_Z8printIntiii>
    80006194:	00003517          	auipc	a0,0x3
    80006198:	1e450513          	addi	a0,a0,484 # 80009378 <CONSOLE_STATUS+0x368>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	4b0080e7          	jalr	1200(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800061a4:	0014849b          	addiw	s1,s1,1
    800061a8:	0ff4f493          	andi	s1,s1,255
    800061ac:	00200793          	li	a5,2
    800061b0:	fc97f0e3          	bgeu	a5,s1,80006170 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800061b4:	00003517          	auipc	a0,0x3
    800061b8:	f9c50513          	addi	a0,a0,-100 # 80009150 <CONSOLE_STATUS+0x140>
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	490080e7          	jalr	1168(ra) # 8000564c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800061c4:	00700313          	li	t1,7
    thread_dispatch();
    800061c8:	ffffb097          	auipc	ra,0xffffb
    800061cc:	394080e7          	jalr	916(ra) # 8000155c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800061d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	f8c50513          	addi	a0,a0,-116 # 80009160 <CONSOLE_STATUS+0x150>
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	470080e7          	jalr	1136(ra) # 8000564c <_Z11printStringPKc>
    800061e4:	00000613          	li	a2,0
    800061e8:	00a00593          	li	a1,10
    800061ec:	0009051b          	sext.w	a0,s2
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	60c080e7          	jalr	1548(ra) # 800057fc <_Z8printIntiii>
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	18050513          	addi	a0,a0,384 # 80009378 <CONSOLE_STATUS+0x368>
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	44c080e7          	jalr	1100(ra) # 8000564c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006208:	00c00513          	li	a0,12
    8000620c:	00000097          	auipc	ra,0x0
    80006210:	d88080e7          	jalr	-632(ra) # 80005f94 <_ZL9fibonaccim>
    80006214:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	f5050513          	addi	a0,a0,-176 # 80009168 <CONSOLE_STATUS+0x158>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	42c080e7          	jalr	1068(ra) # 8000564c <_Z11printStringPKc>
    80006228:	00000613          	li	a2,0
    8000622c:	00a00593          	li	a1,10
    80006230:	0009051b          	sext.w	a0,s2
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	5c8080e7          	jalr	1480(ra) # 800057fc <_Z8printIntiii>
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	13c50513          	addi	a0,a0,316 # 80009378 <CONSOLE_STATUS+0x368>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	408080e7          	jalr	1032(ra) # 8000564c <_Z11printStringPKc>
    8000624c:	0400006f          	j	8000628c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006250:	00003517          	auipc	a0,0x3
    80006254:	ef850513          	addi	a0,a0,-264 # 80009148 <CONSOLE_STATUS+0x138>
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	3f4080e7          	jalr	1012(ra) # 8000564c <_Z11printStringPKc>
    80006260:	00000613          	li	a2,0
    80006264:	00a00593          	li	a1,10
    80006268:	00048513          	mv	a0,s1
    8000626c:	fffff097          	auipc	ra,0xfffff
    80006270:	590080e7          	jalr	1424(ra) # 800057fc <_Z8printIntiii>
    80006274:	00003517          	auipc	a0,0x3
    80006278:	10450513          	addi	a0,a0,260 # 80009378 <CONSOLE_STATUS+0x368>
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	3d0080e7          	jalr	976(ra) # 8000564c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006284:	0014849b          	addiw	s1,s1,1
    80006288:	0ff4f493          	andi	s1,s1,255
    8000628c:	00500793          	li	a5,5
    80006290:	fc97f0e3          	bgeu	a5,s1,80006250 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006294:	00003517          	auipc	a0,0x3
    80006298:	e8c50513          	addi	a0,a0,-372 # 80009120 <CONSOLE_STATUS+0x110>
    8000629c:	fffff097          	auipc	ra,0xfffff
    800062a0:	3b0080e7          	jalr	944(ra) # 8000564c <_Z11printStringPKc>
    finishedC = true;
    800062a4:	00100793          	li	a5,1
    800062a8:	00005717          	auipc	a4,0x5
    800062ac:	78f705a3          	sb	a5,1931(a4) # 8000ba33 <_ZL9finishedC>
    thread_dispatch();
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	2ac080e7          	jalr	684(ra) # 8000155c <_Z15thread_dispatchv>
}
    800062b8:	01813083          	ld	ra,24(sp)
    800062bc:	01013403          	ld	s0,16(sp)
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	00013903          	ld	s2,0(sp)
    800062c8:	02010113          	addi	sp,sp,32
    800062cc:	00008067          	ret

00000000800062d0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800062d0:	fe010113          	addi	sp,sp,-32
    800062d4:	00113c23          	sd	ra,24(sp)
    800062d8:	00813823          	sd	s0,16(sp)
    800062dc:	00913423          	sd	s1,8(sp)
    800062e0:	01213023          	sd	s2,0(sp)
    800062e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800062e8:	00000913          	li	s2,0
    800062ec:	0400006f          	j	8000632c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	26c080e7          	jalr	620(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800062f8:	00148493          	addi	s1,s1,1
    800062fc:	000027b7          	lui	a5,0x2
    80006300:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006304:	0097ee63          	bltu	a5,s1,80006320 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006308:	00000713          	li	a4,0
    8000630c:	000077b7          	lui	a5,0x7
    80006310:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006314:	fce7eee3          	bltu	a5,a4,800062f0 <_ZL11workerBodyBPv+0x20>
    80006318:	00170713          	addi	a4,a4,1
    8000631c:	ff1ff06f          	j	8000630c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006320:	00a00793          	li	a5,10
    80006324:	04f90663          	beq	s2,a5,80006370 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006328:	00190913          	addi	s2,s2,1
    8000632c:	00f00793          	li	a5,15
    80006330:	0527e463          	bltu	a5,s2,80006378 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006334:	00003517          	auipc	a0,0x3
    80006338:	dfc50513          	addi	a0,a0,-516 # 80009130 <CONSOLE_STATUS+0x120>
    8000633c:	fffff097          	auipc	ra,0xfffff
    80006340:	310080e7          	jalr	784(ra) # 8000564c <_Z11printStringPKc>
    80006344:	00000613          	li	a2,0
    80006348:	00a00593          	li	a1,10
    8000634c:	0009051b          	sext.w	a0,s2
    80006350:	fffff097          	auipc	ra,0xfffff
    80006354:	4ac080e7          	jalr	1196(ra) # 800057fc <_Z8printIntiii>
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	02050513          	addi	a0,a0,32 # 80009378 <CONSOLE_STATUS+0x368>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	2ec080e7          	jalr	748(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006368:	00000493          	li	s1,0
    8000636c:	f91ff06f          	j	800062fc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006370:	14102ff3          	csrr	t6,sepc
    80006374:	fb5ff06f          	j	80006328 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	dc050513          	addi	a0,a0,-576 # 80009138 <CONSOLE_STATUS+0x128>
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	2cc080e7          	jalr	716(ra) # 8000564c <_Z11printStringPKc>
    finishedB = true;
    80006388:	00100793          	li	a5,1
    8000638c:	00005717          	auipc	a4,0x5
    80006390:	6af70423          	sb	a5,1704(a4) # 8000ba34 <_ZL9finishedB>
    thread_dispatch();
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	1c8080e7          	jalr	456(ra) # 8000155c <_Z15thread_dispatchv>
}
    8000639c:	01813083          	ld	ra,24(sp)
    800063a0:	01013403          	ld	s0,16(sp)
    800063a4:	00813483          	ld	s1,8(sp)
    800063a8:	00013903          	ld	s2,0(sp)
    800063ac:	02010113          	addi	sp,sp,32
    800063b0:	00008067          	ret

00000000800063b4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00913423          	sd	s1,8(sp)
    800063c4:	01213023          	sd	s2,0(sp)
    800063c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800063cc:	00000913          	li	s2,0
    800063d0:	0380006f          	j	80006408 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	188080e7          	jalr	392(ra) # 8000155c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800063dc:	00148493          	addi	s1,s1,1
    800063e0:	000027b7          	lui	a5,0x2
    800063e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800063e8:	0097ee63          	bltu	a5,s1,80006404 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800063ec:	00000713          	li	a4,0
    800063f0:	000077b7          	lui	a5,0x7
    800063f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063f8:	fce7eee3          	bltu	a5,a4,800063d4 <_ZL11workerBodyAPv+0x20>
    800063fc:	00170713          	addi	a4,a4,1
    80006400:	ff1ff06f          	j	800063f0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006404:	00190913          	addi	s2,s2,1
    80006408:	00900793          	li	a5,9
    8000640c:	0527e063          	bltu	a5,s2,8000644c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006410:	00003517          	auipc	a0,0x3
    80006414:	d0850513          	addi	a0,a0,-760 # 80009118 <CONSOLE_STATUS+0x108>
    80006418:	fffff097          	auipc	ra,0xfffff
    8000641c:	234080e7          	jalr	564(ra) # 8000564c <_Z11printStringPKc>
    80006420:	00000613          	li	a2,0
    80006424:	00a00593          	li	a1,10
    80006428:	0009051b          	sext.w	a0,s2
    8000642c:	fffff097          	auipc	ra,0xfffff
    80006430:	3d0080e7          	jalr	976(ra) # 800057fc <_Z8printIntiii>
    80006434:	00003517          	auipc	a0,0x3
    80006438:	f4450513          	addi	a0,a0,-188 # 80009378 <CONSOLE_STATUS+0x368>
    8000643c:	fffff097          	auipc	ra,0xfffff
    80006440:	210080e7          	jalr	528(ra) # 8000564c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006444:	00000493          	li	s1,0
    80006448:	f99ff06f          	j	800063e0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	cd450513          	addi	a0,a0,-812 # 80009120 <CONSOLE_STATUS+0x110>
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	1f8080e7          	jalr	504(ra) # 8000564c <_Z11printStringPKc>
    finishedA = true;
    8000645c:	00100793          	li	a5,1
    80006460:	00005717          	auipc	a4,0x5
    80006464:	5cf70aa3          	sb	a5,1493(a4) # 8000ba35 <_ZL9finishedA>
}
    80006468:	01813083          	ld	ra,24(sp)
    8000646c:	01013403          	ld	s0,16(sp)
    80006470:	00813483          	ld	s1,8(sp)
    80006474:	00013903          	ld	s2,0(sp)
    80006478:	02010113          	addi	sp,sp,32
    8000647c:	00008067          	ret

0000000080006480 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006480:	fd010113          	addi	sp,sp,-48
    80006484:	02113423          	sd	ra,40(sp)
    80006488:	02813023          	sd	s0,32(sp)
    8000648c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006490:	00000613          	li	a2,0
    80006494:	00000597          	auipc	a1,0x0
    80006498:	f2058593          	addi	a1,a1,-224 # 800063b4 <_ZL11workerBodyAPv>
    8000649c:	fd040513          	addi	a0,s0,-48
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f94080e7          	jalr	-108(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	d1850513          	addi	a0,a0,-744 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	19c080e7          	jalr	412(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800064b8:	00000613          	li	a2,0
    800064bc:	00000597          	auipc	a1,0x0
    800064c0:	e1458593          	addi	a1,a1,-492 # 800062d0 <_ZL11workerBodyBPv>
    800064c4:	fd840513          	addi	a0,s0,-40
    800064c8:	ffffb097          	auipc	ra,0xffffb
    800064cc:	f6c080e7          	jalr	-148(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	d0850513          	addi	a0,a0,-760 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	174080e7          	jalr	372(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800064e0:	00000613          	li	a2,0
    800064e4:	00000597          	auipc	a1,0x0
    800064e8:	c6c58593          	addi	a1,a1,-916 # 80006150 <_ZL11workerBodyCPv>
    800064ec:	fe040513          	addi	a0,s0,-32
    800064f0:	ffffb097          	auipc	ra,0xffffb
    800064f4:	f44080e7          	jalr	-188(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800064f8:	00003517          	auipc	a0,0x3
    800064fc:	cf850513          	addi	a0,a0,-776 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80006500:	fffff097          	auipc	ra,0xfffff
    80006504:	14c080e7          	jalr	332(ra) # 8000564c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006508:	00000613          	li	a2,0
    8000650c:	00000597          	auipc	a1,0x0
    80006510:	afc58593          	addi	a1,a1,-1284 # 80006008 <_ZL11workerBodyDPv>
    80006514:	fe840513          	addi	a0,s0,-24
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	f1c080e7          	jalr	-228(ra) # 80001434 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006520:	00003517          	auipc	a0,0x3
    80006524:	ce850513          	addi	a0,a0,-792 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	124080e7          	jalr	292(ra) # 8000564c <_Z11printStringPKc>
    80006530:	00c0006f          	j	8000653c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	028080e7          	jalr	40(ra) # 8000155c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000653c:	00005797          	auipc	a5,0x5
    80006540:	4f97c783          	lbu	a5,1273(a5) # 8000ba35 <_ZL9finishedA>
    80006544:	fe0788e3          	beqz	a5,80006534 <_Z16System_Mode_testv+0xb4>
    80006548:	00005797          	auipc	a5,0x5
    8000654c:	4ec7c783          	lbu	a5,1260(a5) # 8000ba34 <_ZL9finishedB>
    80006550:	fe0782e3          	beqz	a5,80006534 <_Z16System_Mode_testv+0xb4>
    80006554:	00005797          	auipc	a5,0x5
    80006558:	4df7c783          	lbu	a5,1247(a5) # 8000ba33 <_ZL9finishedC>
    8000655c:	fc078ce3          	beqz	a5,80006534 <_Z16System_Mode_testv+0xb4>
    80006560:	00005797          	auipc	a5,0x5
    80006564:	4d27c783          	lbu	a5,1234(a5) # 8000ba32 <_ZL9finishedD>
    80006568:	fc0786e3          	beqz	a5,80006534 <_Z16System_Mode_testv+0xb4>
    }

}
    8000656c:	02813083          	ld	ra,40(sp)
    80006570:	02013403          	ld	s0,32(sp)
    80006574:	03010113          	addi	sp,sp,48
    80006578:	00008067          	ret

000000008000657c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000657c:	fe010113          	addi	sp,sp,-32
    80006580:	00113c23          	sd	ra,24(sp)
    80006584:	00813823          	sd	s0,16(sp)
    80006588:	00913423          	sd	s1,8(sp)
    8000658c:	01213023          	sd	s2,0(sp)
    80006590:	02010413          	addi	s0,sp,32
    80006594:	00050493          	mv	s1,a0
    80006598:	00058913          	mv	s2,a1
    8000659c:	0015879b          	addiw	a5,a1,1
    800065a0:	0007851b          	sext.w	a0,a5
    800065a4:	00f4a023          	sw	a5,0(s1)
    800065a8:	0004a823          	sw	zero,16(s1)
    800065ac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800065b0:	00251513          	slli	a0,a0,0x2
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	e00080e7          	jalr	-512(ra) # 800013b4 <_Z9mem_allocm>
    800065bc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800065c0:	00000593          	li	a1,0
    800065c4:	02048513          	addi	a0,s1,32
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	ff0080e7          	jalr	-16(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800065d0:	00090593          	mv	a1,s2
    800065d4:	01848513          	addi	a0,s1,24
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	fe0080e7          	jalr	-32(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800065e0:	00100593          	li	a1,1
    800065e4:	02848513          	addi	a0,s1,40
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	fd0080e7          	jalr	-48(ra) # 800015b8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800065f0:	00100593          	li	a1,1
    800065f4:	03048513          	addi	a0,s1,48
    800065f8:	ffffb097          	auipc	ra,0xffffb
    800065fc:	fc0080e7          	jalr	-64(ra) # 800015b8 <_Z8sem_openPP4_semj>
}
    80006600:	01813083          	ld	ra,24(sp)
    80006604:	01013403          	ld	s0,16(sp)
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	00013903          	ld	s2,0(sp)
    80006610:	02010113          	addi	sp,sp,32
    80006614:	00008067          	ret

0000000080006618 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006618:	fe010113          	addi	sp,sp,-32
    8000661c:	00113c23          	sd	ra,24(sp)
    80006620:	00813823          	sd	s0,16(sp)
    80006624:	00913423          	sd	s1,8(sp)
    80006628:	01213023          	sd	s2,0(sp)
    8000662c:	02010413          	addi	s0,sp,32
    80006630:	00050493          	mv	s1,a0
    80006634:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006638:	01853503          	ld	a0,24(a0)
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	00c080e7          	jalr	12(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006644:	0304b503          	ld	a0,48(s1)
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	000080e7          	jalr	ra # 80001648 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006650:	0084b783          	ld	a5,8(s1)
    80006654:	0144a703          	lw	a4,20(s1)
    80006658:	00271713          	slli	a4,a4,0x2
    8000665c:	00e787b3          	add	a5,a5,a4
    80006660:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006664:	0144a783          	lw	a5,20(s1)
    80006668:	0017879b          	addiw	a5,a5,1
    8000666c:	0004a703          	lw	a4,0(s1)
    80006670:	02e7e7bb          	remw	a5,a5,a4
    80006674:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006678:	0304b503          	ld	a0,48(s1)
    8000667c:	ffffb097          	auipc	ra,0xffffb
    80006680:	018080e7          	jalr	24(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006684:	0204b503          	ld	a0,32(s1)
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	00c080e7          	jalr	12(ra) # 80001694 <_Z10sem_signalP4_sem>

}
    80006690:	01813083          	ld	ra,24(sp)
    80006694:	01013403          	ld	s0,16(sp)
    80006698:	00813483          	ld	s1,8(sp)
    8000669c:	00013903          	ld	s2,0(sp)
    800066a0:	02010113          	addi	sp,sp,32
    800066a4:	00008067          	ret

00000000800066a8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800066a8:	fe010113          	addi	sp,sp,-32
    800066ac:	00113c23          	sd	ra,24(sp)
    800066b0:	00813823          	sd	s0,16(sp)
    800066b4:	00913423          	sd	s1,8(sp)
    800066b8:	01213023          	sd	s2,0(sp)
    800066bc:	02010413          	addi	s0,sp,32
    800066c0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800066c4:	02053503          	ld	a0,32(a0)
    800066c8:	ffffb097          	auipc	ra,0xffffb
    800066cc:	f80080e7          	jalr	-128(ra) # 80001648 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800066d0:	0284b503          	ld	a0,40(s1)
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	f74080e7          	jalr	-140(ra) # 80001648 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800066dc:	0084b703          	ld	a4,8(s1)
    800066e0:	0104a783          	lw	a5,16(s1)
    800066e4:	00279693          	slli	a3,a5,0x2
    800066e8:	00d70733          	add	a4,a4,a3
    800066ec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800066f0:	0017879b          	addiw	a5,a5,1
    800066f4:	0004a703          	lw	a4,0(s1)
    800066f8:	02e7e7bb          	remw	a5,a5,a4
    800066fc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006700:	0284b503          	ld	a0,40(s1)
    80006704:	ffffb097          	auipc	ra,0xffffb
    80006708:	f90080e7          	jalr	-112(ra) # 80001694 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000670c:	0184b503          	ld	a0,24(s1)
    80006710:	ffffb097          	auipc	ra,0xffffb
    80006714:	f84080e7          	jalr	-124(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006718:	00090513          	mv	a0,s2
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	00013903          	ld	s2,0(sp)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00008067          	ret

0000000080006734 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006734:	fe010113          	addi	sp,sp,-32
    80006738:	00113c23          	sd	ra,24(sp)
    8000673c:	00813823          	sd	s0,16(sp)
    80006740:	00913423          	sd	s1,8(sp)
    80006744:	01213023          	sd	s2,0(sp)
    80006748:	02010413          	addi	s0,sp,32
    8000674c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006750:	02853503          	ld	a0,40(a0)
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	ef4080e7          	jalr	-268(ra) # 80001648 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000675c:	0304b503          	ld	a0,48(s1)
    80006760:	ffffb097          	auipc	ra,0xffffb
    80006764:	ee8080e7          	jalr	-280(ra) # 80001648 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006768:	0144a783          	lw	a5,20(s1)
    8000676c:	0104a903          	lw	s2,16(s1)
    80006770:	0327ce63          	blt	a5,s2,800067ac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006774:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006778:	0304b503          	ld	a0,48(s1)
    8000677c:	ffffb097          	auipc	ra,0xffffb
    80006780:	f18080e7          	jalr	-232(ra) # 80001694 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006784:	0284b503          	ld	a0,40(s1)
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	f0c080e7          	jalr	-244(ra) # 80001694 <_Z10sem_signalP4_sem>

    return ret;
}
    80006790:	00090513          	mv	a0,s2
    80006794:	01813083          	ld	ra,24(sp)
    80006798:	01013403          	ld	s0,16(sp)
    8000679c:	00813483          	ld	s1,8(sp)
    800067a0:	00013903          	ld	s2,0(sp)
    800067a4:	02010113          	addi	sp,sp,32
    800067a8:	00008067          	ret
        ret = cap - head + tail;
    800067ac:	0004a703          	lw	a4,0(s1)
    800067b0:	4127093b          	subw	s2,a4,s2
    800067b4:	00f9093b          	addw	s2,s2,a5
    800067b8:	fc1ff06f          	j	80006778 <_ZN6Buffer6getCntEv+0x44>

00000000800067bc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800067bc:	fe010113          	addi	sp,sp,-32
    800067c0:	00113c23          	sd	ra,24(sp)
    800067c4:	00813823          	sd	s0,16(sp)
    800067c8:	00913423          	sd	s1,8(sp)
    800067cc:	02010413          	addi	s0,sp,32
    800067d0:	00050493          	mv	s1,a0
    putc('\n');
    800067d4:	00a00513          	li	a0,10
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	f44080e7          	jalr	-188(ra) # 8000171c <_Z4putcc>
    printString("Buffer deleted!\n");
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	a4050513          	addi	a0,a0,-1472 # 80009220 <CONSOLE_STATUS+0x210>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	e64080e7          	jalr	-412(ra) # 8000564c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800067f0:	00048513          	mv	a0,s1
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	f40080e7          	jalr	-192(ra) # 80006734 <_ZN6Buffer6getCntEv>
    800067fc:	02a05c63          	blez	a0,80006834 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006800:	0084b783          	ld	a5,8(s1)
    80006804:	0104a703          	lw	a4,16(s1)
    80006808:	00271713          	slli	a4,a4,0x2
    8000680c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006810:	0007c503          	lbu	a0,0(a5)
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	f08080e7          	jalr	-248(ra) # 8000171c <_Z4putcc>
        head = (head + 1) % cap;
    8000681c:	0104a783          	lw	a5,16(s1)
    80006820:	0017879b          	addiw	a5,a5,1
    80006824:	0004a703          	lw	a4,0(s1)
    80006828:	02e7e7bb          	remw	a5,a5,a4
    8000682c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006830:	fc1ff06f          	j	800067f0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006834:	02100513          	li	a0,33
    80006838:	ffffb097          	auipc	ra,0xffffb
    8000683c:	ee4080e7          	jalr	-284(ra) # 8000171c <_Z4putcc>
    putc('\n');
    80006840:	00a00513          	li	a0,10
    80006844:	ffffb097          	auipc	ra,0xffffb
    80006848:	ed8080e7          	jalr	-296(ra) # 8000171c <_Z4putcc>
    mem_free(buffer);
    8000684c:	0084b503          	ld	a0,8(s1)
    80006850:	ffffb097          	auipc	ra,0xffffb
    80006854:	ba4080e7          	jalr	-1116(ra) # 800013f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006858:	0204b503          	ld	a0,32(s1)
    8000685c:	ffffb097          	auipc	ra,0xffffb
    80006860:	da0080e7          	jalr	-608(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006864:	0184b503          	ld	a0,24(s1)
    80006868:	ffffb097          	auipc	ra,0xffffb
    8000686c:	d94080e7          	jalr	-620(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006870:	0304b503          	ld	a0,48(s1)
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	d88080e7          	jalr	-632(ra) # 800015fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000687c:	0284b503          	ld	a0,40(s1)
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	d7c080e7          	jalr	-644(ra) # 800015fc <_Z9sem_closeP4_sem>
}
    80006888:	01813083          	ld	ra,24(sp)
    8000688c:	01013403          	ld	s0,16(sp)
    80006890:	00813483          	ld	s1,8(sp)
    80006894:	02010113          	addi	sp,sp,32
    80006898:	00008067          	ret

000000008000689c <start>:
    8000689c:	ff010113          	addi	sp,sp,-16
    800068a0:	00813423          	sd	s0,8(sp)
    800068a4:	01010413          	addi	s0,sp,16
    800068a8:	300027f3          	csrr	a5,mstatus
    800068ac:	ffffe737          	lui	a4,0xffffe
    800068b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b5f>
    800068b4:	00e7f7b3          	and	a5,a5,a4
    800068b8:	00001737          	lui	a4,0x1
    800068bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800068c0:	00e7e7b3          	or	a5,a5,a4
    800068c4:	30079073          	csrw	mstatus,a5
    800068c8:	00000797          	auipc	a5,0x0
    800068cc:	16078793          	addi	a5,a5,352 # 80006a28 <system_main>
    800068d0:	34179073          	csrw	mepc,a5
    800068d4:	00000793          	li	a5,0
    800068d8:	18079073          	csrw	satp,a5
    800068dc:	000107b7          	lui	a5,0x10
    800068e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800068e4:	30279073          	csrw	medeleg,a5
    800068e8:	30379073          	csrw	mideleg,a5
    800068ec:	104027f3          	csrr	a5,sie
    800068f0:	2227e793          	ori	a5,a5,546
    800068f4:	10479073          	csrw	sie,a5
    800068f8:	fff00793          	li	a5,-1
    800068fc:	00a7d793          	srli	a5,a5,0xa
    80006900:	3b079073          	csrw	pmpaddr0,a5
    80006904:	00f00793          	li	a5,15
    80006908:	3a079073          	csrw	pmpcfg0,a5
    8000690c:	f14027f3          	csrr	a5,mhartid
    80006910:	0200c737          	lui	a4,0x200c
    80006914:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006918:	0007869b          	sext.w	a3,a5
    8000691c:	00269713          	slli	a4,a3,0x2
    80006920:	000f4637          	lui	a2,0xf4
    80006924:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006928:	00d70733          	add	a4,a4,a3
    8000692c:	0037979b          	slliw	a5,a5,0x3
    80006930:	020046b7          	lui	a3,0x2004
    80006934:	00d787b3          	add	a5,a5,a3
    80006938:	00c585b3          	add	a1,a1,a2
    8000693c:	00371693          	slli	a3,a4,0x3
    80006940:	00005717          	auipc	a4,0x5
    80006944:	10070713          	addi	a4,a4,256 # 8000ba40 <timer_scratch>
    80006948:	00b7b023          	sd	a1,0(a5)
    8000694c:	00d70733          	add	a4,a4,a3
    80006950:	00f73c23          	sd	a5,24(a4)
    80006954:	02c73023          	sd	a2,32(a4)
    80006958:	34071073          	csrw	mscratch,a4
    8000695c:	00000797          	auipc	a5,0x0
    80006960:	6e478793          	addi	a5,a5,1764 # 80007040 <timervec>
    80006964:	30579073          	csrw	mtvec,a5
    80006968:	300027f3          	csrr	a5,mstatus
    8000696c:	0087e793          	ori	a5,a5,8
    80006970:	30079073          	csrw	mstatus,a5
    80006974:	304027f3          	csrr	a5,mie
    80006978:	0807e793          	ori	a5,a5,128
    8000697c:	30479073          	csrw	mie,a5
    80006980:	f14027f3          	csrr	a5,mhartid
    80006984:	0007879b          	sext.w	a5,a5
    80006988:	00078213          	mv	tp,a5
    8000698c:	30200073          	mret
    80006990:	00813403          	ld	s0,8(sp)
    80006994:	01010113          	addi	sp,sp,16
    80006998:	00008067          	ret

000000008000699c <timerinit>:
    8000699c:	ff010113          	addi	sp,sp,-16
    800069a0:	00813423          	sd	s0,8(sp)
    800069a4:	01010413          	addi	s0,sp,16
    800069a8:	f14027f3          	csrr	a5,mhartid
    800069ac:	0200c737          	lui	a4,0x200c
    800069b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800069b4:	0007869b          	sext.w	a3,a5
    800069b8:	00269713          	slli	a4,a3,0x2
    800069bc:	000f4637          	lui	a2,0xf4
    800069c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069c4:	00d70733          	add	a4,a4,a3
    800069c8:	0037979b          	slliw	a5,a5,0x3
    800069cc:	020046b7          	lui	a3,0x2004
    800069d0:	00d787b3          	add	a5,a5,a3
    800069d4:	00c585b3          	add	a1,a1,a2
    800069d8:	00371693          	slli	a3,a4,0x3
    800069dc:	00005717          	auipc	a4,0x5
    800069e0:	06470713          	addi	a4,a4,100 # 8000ba40 <timer_scratch>
    800069e4:	00b7b023          	sd	a1,0(a5)
    800069e8:	00d70733          	add	a4,a4,a3
    800069ec:	00f73c23          	sd	a5,24(a4)
    800069f0:	02c73023          	sd	a2,32(a4)
    800069f4:	34071073          	csrw	mscratch,a4
    800069f8:	00000797          	auipc	a5,0x0
    800069fc:	64878793          	addi	a5,a5,1608 # 80007040 <timervec>
    80006a00:	30579073          	csrw	mtvec,a5
    80006a04:	300027f3          	csrr	a5,mstatus
    80006a08:	0087e793          	ori	a5,a5,8
    80006a0c:	30079073          	csrw	mstatus,a5
    80006a10:	304027f3          	csrr	a5,mie
    80006a14:	0807e793          	ori	a5,a5,128
    80006a18:	30479073          	csrw	mie,a5
    80006a1c:	00813403          	ld	s0,8(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <system_main>:
    80006a28:	fe010113          	addi	sp,sp,-32
    80006a2c:	00813823          	sd	s0,16(sp)
    80006a30:	00913423          	sd	s1,8(sp)
    80006a34:	00113c23          	sd	ra,24(sp)
    80006a38:	02010413          	addi	s0,sp,32
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	0c4080e7          	jalr	196(ra) # 80006b00 <cpuid>
    80006a44:	00005497          	auipc	s1,0x5
    80006a48:	f2c48493          	addi	s1,s1,-212 # 8000b970 <started>
    80006a4c:	02050263          	beqz	a0,80006a70 <system_main+0x48>
    80006a50:	0004a783          	lw	a5,0(s1)
    80006a54:	0007879b          	sext.w	a5,a5
    80006a58:	fe078ce3          	beqz	a5,80006a50 <system_main+0x28>
    80006a5c:	0ff0000f          	fence
    80006a60:	00003517          	auipc	a0,0x3
    80006a64:	a9050513          	addi	a0,a0,-1392 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006a68:	00001097          	auipc	ra,0x1
    80006a6c:	a74080e7          	jalr	-1420(ra) # 800074dc <panic>
    80006a70:	00001097          	auipc	ra,0x1
    80006a74:	9c8080e7          	jalr	-1592(ra) # 80007438 <consoleinit>
    80006a78:	00001097          	auipc	ra,0x1
    80006a7c:	154080e7          	jalr	340(ra) # 80007bcc <printfinit>
    80006a80:	00003517          	auipc	a0,0x3
    80006a84:	8f850513          	addi	a0,a0,-1800 # 80009378 <CONSOLE_STATUS+0x368>
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	ab0080e7          	jalr	-1360(ra) # 80007538 <__printf>
    80006a90:	00003517          	auipc	a0,0x3
    80006a94:	a3050513          	addi	a0,a0,-1488 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006a98:	00001097          	auipc	ra,0x1
    80006a9c:	aa0080e7          	jalr	-1376(ra) # 80007538 <__printf>
    80006aa0:	00003517          	auipc	a0,0x3
    80006aa4:	8d850513          	addi	a0,a0,-1832 # 80009378 <CONSOLE_STATUS+0x368>
    80006aa8:	00001097          	auipc	ra,0x1
    80006aac:	a90080e7          	jalr	-1392(ra) # 80007538 <__printf>
    80006ab0:	00001097          	auipc	ra,0x1
    80006ab4:	4a8080e7          	jalr	1192(ra) # 80007f58 <kinit>
    80006ab8:	00000097          	auipc	ra,0x0
    80006abc:	148080e7          	jalr	328(ra) # 80006c00 <trapinit>
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	16c080e7          	jalr	364(ra) # 80006c2c <trapinithart>
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	5b8080e7          	jalr	1464(ra) # 80007080 <plicinit>
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	5d8080e7          	jalr	1496(ra) # 800070a8 <plicinithart>
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	078080e7          	jalr	120(ra) # 80006b50 <userinit>
    80006ae0:	0ff0000f          	fence
    80006ae4:	00100793          	li	a5,1
    80006ae8:	00003517          	auipc	a0,0x3
    80006aec:	9f050513          	addi	a0,a0,-1552 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006af0:	00f4a023          	sw	a5,0(s1)
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	a44080e7          	jalr	-1468(ra) # 80007538 <__printf>
    80006afc:	0000006f          	j	80006afc <system_main+0xd4>

0000000080006b00 <cpuid>:
    80006b00:	ff010113          	addi	sp,sp,-16
    80006b04:	00813423          	sd	s0,8(sp)
    80006b08:	01010413          	addi	s0,sp,16
    80006b0c:	00020513          	mv	a0,tp
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	0005051b          	sext.w	a0,a0
    80006b18:	01010113          	addi	sp,sp,16
    80006b1c:	00008067          	ret

0000000080006b20 <mycpu>:
    80006b20:	ff010113          	addi	sp,sp,-16
    80006b24:	00813423          	sd	s0,8(sp)
    80006b28:	01010413          	addi	s0,sp,16
    80006b2c:	00020793          	mv	a5,tp
    80006b30:	00813403          	ld	s0,8(sp)
    80006b34:	0007879b          	sext.w	a5,a5
    80006b38:	00779793          	slli	a5,a5,0x7
    80006b3c:	00006517          	auipc	a0,0x6
    80006b40:	f3450513          	addi	a0,a0,-204 # 8000ca70 <cpus>
    80006b44:	00f50533          	add	a0,a0,a5
    80006b48:	01010113          	addi	sp,sp,16
    80006b4c:	00008067          	ret

0000000080006b50 <userinit>:
    80006b50:	ff010113          	addi	sp,sp,-16
    80006b54:	00813423          	sd	s0,8(sp)
    80006b58:	01010413          	addi	s0,sp,16
    80006b5c:	00813403          	ld	s0,8(sp)
    80006b60:	01010113          	addi	sp,sp,16
    80006b64:	ffffb317          	auipc	t1,0xffffb
    80006b68:	d0830067          	jr	-760(t1) # 8000186c <main>

0000000080006b6c <either_copyout>:
    80006b6c:	ff010113          	addi	sp,sp,-16
    80006b70:	00813023          	sd	s0,0(sp)
    80006b74:	00113423          	sd	ra,8(sp)
    80006b78:	01010413          	addi	s0,sp,16
    80006b7c:	02051663          	bnez	a0,80006ba8 <either_copyout+0x3c>
    80006b80:	00058513          	mv	a0,a1
    80006b84:	00060593          	mv	a1,a2
    80006b88:	0006861b          	sext.w	a2,a3
    80006b8c:	00002097          	auipc	ra,0x2
    80006b90:	c58080e7          	jalr	-936(ra) # 800087e4 <__memmove>
    80006b94:	00813083          	ld	ra,8(sp)
    80006b98:	00013403          	ld	s0,0(sp)
    80006b9c:	00000513          	li	a0,0
    80006ba0:	01010113          	addi	sp,sp,16
    80006ba4:	00008067          	ret
    80006ba8:	00003517          	auipc	a0,0x3
    80006bac:	97050513          	addi	a0,a0,-1680 # 80009518 <CONSOLE_STATUS+0x508>
    80006bb0:	00001097          	auipc	ra,0x1
    80006bb4:	92c080e7          	jalr	-1748(ra) # 800074dc <panic>

0000000080006bb8 <either_copyin>:
    80006bb8:	ff010113          	addi	sp,sp,-16
    80006bbc:	00813023          	sd	s0,0(sp)
    80006bc0:	00113423          	sd	ra,8(sp)
    80006bc4:	01010413          	addi	s0,sp,16
    80006bc8:	02059463          	bnez	a1,80006bf0 <either_copyin+0x38>
    80006bcc:	00060593          	mv	a1,a2
    80006bd0:	0006861b          	sext.w	a2,a3
    80006bd4:	00002097          	auipc	ra,0x2
    80006bd8:	c10080e7          	jalr	-1008(ra) # 800087e4 <__memmove>
    80006bdc:	00813083          	ld	ra,8(sp)
    80006be0:	00013403          	ld	s0,0(sp)
    80006be4:	00000513          	li	a0,0
    80006be8:	01010113          	addi	sp,sp,16
    80006bec:	00008067          	ret
    80006bf0:	00003517          	auipc	a0,0x3
    80006bf4:	95050513          	addi	a0,a0,-1712 # 80009540 <CONSOLE_STATUS+0x530>
    80006bf8:	00001097          	auipc	ra,0x1
    80006bfc:	8e4080e7          	jalr	-1820(ra) # 800074dc <panic>

0000000080006c00 <trapinit>:
    80006c00:	ff010113          	addi	sp,sp,-16
    80006c04:	00813423          	sd	s0,8(sp)
    80006c08:	01010413          	addi	s0,sp,16
    80006c0c:	00813403          	ld	s0,8(sp)
    80006c10:	00003597          	auipc	a1,0x3
    80006c14:	95858593          	addi	a1,a1,-1704 # 80009568 <CONSOLE_STATUS+0x558>
    80006c18:	00006517          	auipc	a0,0x6
    80006c1c:	ed850513          	addi	a0,a0,-296 # 8000caf0 <tickslock>
    80006c20:	01010113          	addi	sp,sp,16
    80006c24:	00001317          	auipc	t1,0x1
    80006c28:	5c430067          	jr	1476(t1) # 800081e8 <initlock>

0000000080006c2c <trapinithart>:
    80006c2c:	ff010113          	addi	sp,sp,-16
    80006c30:	00813423          	sd	s0,8(sp)
    80006c34:	01010413          	addi	s0,sp,16
    80006c38:	00000797          	auipc	a5,0x0
    80006c3c:	2f878793          	addi	a5,a5,760 # 80006f30 <kernelvec>
    80006c40:	10579073          	csrw	stvec,a5
    80006c44:	00813403          	ld	s0,8(sp)
    80006c48:	01010113          	addi	sp,sp,16
    80006c4c:	00008067          	ret

0000000080006c50 <usertrap>:
    80006c50:	ff010113          	addi	sp,sp,-16
    80006c54:	00813423          	sd	s0,8(sp)
    80006c58:	01010413          	addi	s0,sp,16
    80006c5c:	00813403          	ld	s0,8(sp)
    80006c60:	01010113          	addi	sp,sp,16
    80006c64:	00008067          	ret

0000000080006c68 <usertrapret>:
    80006c68:	ff010113          	addi	sp,sp,-16
    80006c6c:	00813423          	sd	s0,8(sp)
    80006c70:	01010413          	addi	s0,sp,16
    80006c74:	00813403          	ld	s0,8(sp)
    80006c78:	01010113          	addi	sp,sp,16
    80006c7c:	00008067          	ret

0000000080006c80 <kerneltrap>:
    80006c80:	fe010113          	addi	sp,sp,-32
    80006c84:	00813823          	sd	s0,16(sp)
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	00913423          	sd	s1,8(sp)
    80006c90:	02010413          	addi	s0,sp,32
    80006c94:	142025f3          	csrr	a1,scause
    80006c98:	100027f3          	csrr	a5,sstatus
    80006c9c:	0027f793          	andi	a5,a5,2
    80006ca0:	10079c63          	bnez	a5,80006db8 <kerneltrap+0x138>
    80006ca4:	142027f3          	csrr	a5,scause
    80006ca8:	0207ce63          	bltz	a5,80006ce4 <kerneltrap+0x64>
    80006cac:	00003517          	auipc	a0,0x3
    80006cb0:	90450513          	addi	a0,a0,-1788 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006cb4:	00001097          	auipc	ra,0x1
    80006cb8:	884080e7          	jalr	-1916(ra) # 80007538 <__printf>
    80006cbc:	141025f3          	csrr	a1,sepc
    80006cc0:	14302673          	csrr	a2,stval
    80006cc4:	00003517          	auipc	a0,0x3
    80006cc8:	8fc50513          	addi	a0,a0,-1796 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	86c080e7          	jalr	-1940(ra) # 80007538 <__printf>
    80006cd4:	00003517          	auipc	a0,0x3
    80006cd8:	90450513          	addi	a0,a0,-1788 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	800080e7          	jalr	-2048(ra) # 800074dc <panic>
    80006ce4:	0ff7f713          	andi	a4,a5,255
    80006ce8:	00900693          	li	a3,9
    80006cec:	04d70063          	beq	a4,a3,80006d2c <kerneltrap+0xac>
    80006cf0:	fff00713          	li	a4,-1
    80006cf4:	03f71713          	slli	a4,a4,0x3f
    80006cf8:	00170713          	addi	a4,a4,1
    80006cfc:	fae798e3          	bne	a5,a4,80006cac <kerneltrap+0x2c>
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	e00080e7          	jalr	-512(ra) # 80006b00 <cpuid>
    80006d08:	06050663          	beqz	a0,80006d74 <kerneltrap+0xf4>
    80006d0c:	144027f3          	csrr	a5,sip
    80006d10:	ffd7f793          	andi	a5,a5,-3
    80006d14:	14479073          	csrw	sip,a5
    80006d18:	01813083          	ld	ra,24(sp)
    80006d1c:	01013403          	ld	s0,16(sp)
    80006d20:	00813483          	ld	s1,8(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	00008067          	ret
    80006d2c:	00000097          	auipc	ra,0x0
    80006d30:	3c8080e7          	jalr	968(ra) # 800070f4 <plic_claim>
    80006d34:	00a00793          	li	a5,10
    80006d38:	00050493          	mv	s1,a0
    80006d3c:	06f50863          	beq	a0,a5,80006dac <kerneltrap+0x12c>
    80006d40:	fc050ce3          	beqz	a0,80006d18 <kerneltrap+0x98>
    80006d44:	00050593          	mv	a1,a0
    80006d48:	00003517          	auipc	a0,0x3
    80006d4c:	84850513          	addi	a0,a0,-1976 # 80009590 <CONSOLE_STATUS+0x580>
    80006d50:	00000097          	auipc	ra,0x0
    80006d54:	7e8080e7          	jalr	2024(ra) # 80007538 <__printf>
    80006d58:	01013403          	ld	s0,16(sp)
    80006d5c:	01813083          	ld	ra,24(sp)
    80006d60:	00048513          	mv	a0,s1
    80006d64:	00813483          	ld	s1,8(sp)
    80006d68:	02010113          	addi	sp,sp,32
    80006d6c:	00000317          	auipc	t1,0x0
    80006d70:	3c030067          	jr	960(t1) # 8000712c <plic_complete>
    80006d74:	00006517          	auipc	a0,0x6
    80006d78:	d7c50513          	addi	a0,a0,-644 # 8000caf0 <tickslock>
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	490080e7          	jalr	1168(ra) # 8000820c <acquire>
    80006d84:	00005717          	auipc	a4,0x5
    80006d88:	bf070713          	addi	a4,a4,-1040 # 8000b974 <ticks>
    80006d8c:	00072783          	lw	a5,0(a4)
    80006d90:	00006517          	auipc	a0,0x6
    80006d94:	d6050513          	addi	a0,a0,-672 # 8000caf0 <tickslock>
    80006d98:	0017879b          	addiw	a5,a5,1
    80006d9c:	00f72023          	sw	a5,0(a4)
    80006da0:	00001097          	auipc	ra,0x1
    80006da4:	538080e7          	jalr	1336(ra) # 800082d8 <release>
    80006da8:	f65ff06f          	j	80006d0c <kerneltrap+0x8c>
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	094080e7          	jalr	148(ra) # 80007e40 <uartintr>
    80006db4:	fa5ff06f          	j	80006d58 <kerneltrap+0xd8>
    80006db8:	00002517          	auipc	a0,0x2
    80006dbc:	7b850513          	addi	a0,a0,1976 # 80009570 <CONSOLE_STATUS+0x560>
    80006dc0:	00000097          	auipc	ra,0x0
    80006dc4:	71c080e7          	jalr	1820(ra) # 800074dc <panic>

0000000080006dc8 <clockintr>:
    80006dc8:	fe010113          	addi	sp,sp,-32
    80006dcc:	00813823          	sd	s0,16(sp)
    80006dd0:	00913423          	sd	s1,8(sp)
    80006dd4:	00113c23          	sd	ra,24(sp)
    80006dd8:	02010413          	addi	s0,sp,32
    80006ddc:	00006497          	auipc	s1,0x6
    80006de0:	d1448493          	addi	s1,s1,-748 # 8000caf0 <tickslock>
    80006de4:	00048513          	mv	a0,s1
    80006de8:	00001097          	auipc	ra,0x1
    80006dec:	424080e7          	jalr	1060(ra) # 8000820c <acquire>
    80006df0:	00005717          	auipc	a4,0x5
    80006df4:	b8470713          	addi	a4,a4,-1148 # 8000b974 <ticks>
    80006df8:	00072783          	lw	a5,0(a4)
    80006dfc:	01013403          	ld	s0,16(sp)
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	00048513          	mv	a0,s1
    80006e08:	0017879b          	addiw	a5,a5,1
    80006e0c:	00813483          	ld	s1,8(sp)
    80006e10:	00f72023          	sw	a5,0(a4)
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00001317          	auipc	t1,0x1
    80006e1c:	4c030067          	jr	1216(t1) # 800082d8 <release>

0000000080006e20 <devintr>:
    80006e20:	142027f3          	csrr	a5,scause
    80006e24:	00000513          	li	a0,0
    80006e28:	0007c463          	bltz	a5,80006e30 <devintr+0x10>
    80006e2c:	00008067          	ret
    80006e30:	fe010113          	addi	sp,sp,-32
    80006e34:	00813823          	sd	s0,16(sp)
    80006e38:	00113c23          	sd	ra,24(sp)
    80006e3c:	00913423          	sd	s1,8(sp)
    80006e40:	02010413          	addi	s0,sp,32
    80006e44:	0ff7f713          	andi	a4,a5,255
    80006e48:	00900693          	li	a3,9
    80006e4c:	04d70c63          	beq	a4,a3,80006ea4 <devintr+0x84>
    80006e50:	fff00713          	li	a4,-1
    80006e54:	03f71713          	slli	a4,a4,0x3f
    80006e58:	00170713          	addi	a4,a4,1
    80006e5c:	00e78c63          	beq	a5,a4,80006e74 <devintr+0x54>
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00813483          	ld	s1,8(sp)
    80006e6c:	02010113          	addi	sp,sp,32
    80006e70:	00008067          	ret
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	c8c080e7          	jalr	-884(ra) # 80006b00 <cpuid>
    80006e7c:	06050663          	beqz	a0,80006ee8 <devintr+0xc8>
    80006e80:	144027f3          	csrr	a5,sip
    80006e84:	ffd7f793          	andi	a5,a5,-3
    80006e88:	14479073          	csrw	sip,a5
    80006e8c:	01813083          	ld	ra,24(sp)
    80006e90:	01013403          	ld	s0,16(sp)
    80006e94:	00813483          	ld	s1,8(sp)
    80006e98:	00200513          	li	a0,2
    80006e9c:	02010113          	addi	sp,sp,32
    80006ea0:	00008067          	ret
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	250080e7          	jalr	592(ra) # 800070f4 <plic_claim>
    80006eac:	00a00793          	li	a5,10
    80006eb0:	00050493          	mv	s1,a0
    80006eb4:	06f50663          	beq	a0,a5,80006f20 <devintr+0x100>
    80006eb8:	00100513          	li	a0,1
    80006ebc:	fa0482e3          	beqz	s1,80006e60 <devintr+0x40>
    80006ec0:	00048593          	mv	a1,s1
    80006ec4:	00002517          	auipc	a0,0x2
    80006ec8:	6cc50513          	addi	a0,a0,1740 # 80009590 <CONSOLE_STATUS+0x580>
    80006ecc:	00000097          	auipc	ra,0x0
    80006ed0:	66c080e7          	jalr	1644(ra) # 80007538 <__printf>
    80006ed4:	00048513          	mv	a0,s1
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	254080e7          	jalr	596(ra) # 8000712c <plic_complete>
    80006ee0:	00100513          	li	a0,1
    80006ee4:	f7dff06f          	j	80006e60 <devintr+0x40>
    80006ee8:	00006517          	auipc	a0,0x6
    80006eec:	c0850513          	addi	a0,a0,-1016 # 8000caf0 <tickslock>
    80006ef0:	00001097          	auipc	ra,0x1
    80006ef4:	31c080e7          	jalr	796(ra) # 8000820c <acquire>
    80006ef8:	00005717          	auipc	a4,0x5
    80006efc:	a7c70713          	addi	a4,a4,-1412 # 8000b974 <ticks>
    80006f00:	00072783          	lw	a5,0(a4)
    80006f04:	00006517          	auipc	a0,0x6
    80006f08:	bec50513          	addi	a0,a0,-1044 # 8000caf0 <tickslock>
    80006f0c:	0017879b          	addiw	a5,a5,1
    80006f10:	00f72023          	sw	a5,0(a4)
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	3c4080e7          	jalr	964(ra) # 800082d8 <release>
    80006f1c:	f65ff06f          	j	80006e80 <devintr+0x60>
    80006f20:	00001097          	auipc	ra,0x1
    80006f24:	f20080e7          	jalr	-224(ra) # 80007e40 <uartintr>
    80006f28:	fadff06f          	j	80006ed4 <devintr+0xb4>
    80006f2c:	0000                	unimp
	...

0000000080006f30 <kernelvec>:
    80006f30:	f0010113          	addi	sp,sp,-256
    80006f34:	00113023          	sd	ra,0(sp)
    80006f38:	00213423          	sd	sp,8(sp)
    80006f3c:	00313823          	sd	gp,16(sp)
    80006f40:	00413c23          	sd	tp,24(sp)
    80006f44:	02513023          	sd	t0,32(sp)
    80006f48:	02613423          	sd	t1,40(sp)
    80006f4c:	02713823          	sd	t2,48(sp)
    80006f50:	02813c23          	sd	s0,56(sp)
    80006f54:	04913023          	sd	s1,64(sp)
    80006f58:	04a13423          	sd	a0,72(sp)
    80006f5c:	04b13823          	sd	a1,80(sp)
    80006f60:	04c13c23          	sd	a2,88(sp)
    80006f64:	06d13023          	sd	a3,96(sp)
    80006f68:	06e13423          	sd	a4,104(sp)
    80006f6c:	06f13823          	sd	a5,112(sp)
    80006f70:	07013c23          	sd	a6,120(sp)
    80006f74:	09113023          	sd	a7,128(sp)
    80006f78:	09213423          	sd	s2,136(sp)
    80006f7c:	09313823          	sd	s3,144(sp)
    80006f80:	09413c23          	sd	s4,152(sp)
    80006f84:	0b513023          	sd	s5,160(sp)
    80006f88:	0b613423          	sd	s6,168(sp)
    80006f8c:	0b713823          	sd	s7,176(sp)
    80006f90:	0b813c23          	sd	s8,184(sp)
    80006f94:	0d913023          	sd	s9,192(sp)
    80006f98:	0da13423          	sd	s10,200(sp)
    80006f9c:	0db13823          	sd	s11,208(sp)
    80006fa0:	0dc13c23          	sd	t3,216(sp)
    80006fa4:	0fd13023          	sd	t4,224(sp)
    80006fa8:	0fe13423          	sd	t5,232(sp)
    80006fac:	0ff13823          	sd	t6,240(sp)
    80006fb0:	cd1ff0ef          	jal	ra,80006c80 <kerneltrap>
    80006fb4:	00013083          	ld	ra,0(sp)
    80006fb8:	00813103          	ld	sp,8(sp)
    80006fbc:	01013183          	ld	gp,16(sp)
    80006fc0:	02013283          	ld	t0,32(sp)
    80006fc4:	02813303          	ld	t1,40(sp)
    80006fc8:	03013383          	ld	t2,48(sp)
    80006fcc:	03813403          	ld	s0,56(sp)
    80006fd0:	04013483          	ld	s1,64(sp)
    80006fd4:	04813503          	ld	a0,72(sp)
    80006fd8:	05013583          	ld	a1,80(sp)
    80006fdc:	05813603          	ld	a2,88(sp)
    80006fe0:	06013683          	ld	a3,96(sp)
    80006fe4:	06813703          	ld	a4,104(sp)
    80006fe8:	07013783          	ld	a5,112(sp)
    80006fec:	07813803          	ld	a6,120(sp)
    80006ff0:	08013883          	ld	a7,128(sp)
    80006ff4:	08813903          	ld	s2,136(sp)
    80006ff8:	09013983          	ld	s3,144(sp)
    80006ffc:	09813a03          	ld	s4,152(sp)
    80007000:	0a013a83          	ld	s5,160(sp)
    80007004:	0a813b03          	ld	s6,168(sp)
    80007008:	0b013b83          	ld	s7,176(sp)
    8000700c:	0b813c03          	ld	s8,184(sp)
    80007010:	0c013c83          	ld	s9,192(sp)
    80007014:	0c813d03          	ld	s10,200(sp)
    80007018:	0d013d83          	ld	s11,208(sp)
    8000701c:	0d813e03          	ld	t3,216(sp)
    80007020:	0e013e83          	ld	t4,224(sp)
    80007024:	0e813f03          	ld	t5,232(sp)
    80007028:	0f013f83          	ld	t6,240(sp)
    8000702c:	10010113          	addi	sp,sp,256
    80007030:	10200073          	sret
    80007034:	00000013          	nop
    80007038:	00000013          	nop
    8000703c:	00000013          	nop

0000000080007040 <timervec>:
    80007040:	34051573          	csrrw	a0,mscratch,a0
    80007044:	00b53023          	sd	a1,0(a0)
    80007048:	00c53423          	sd	a2,8(a0)
    8000704c:	00d53823          	sd	a3,16(a0)
    80007050:	01853583          	ld	a1,24(a0)
    80007054:	02053603          	ld	a2,32(a0)
    80007058:	0005b683          	ld	a3,0(a1)
    8000705c:	00c686b3          	add	a3,a3,a2
    80007060:	00d5b023          	sd	a3,0(a1)
    80007064:	00200593          	li	a1,2
    80007068:	14459073          	csrw	sip,a1
    8000706c:	01053683          	ld	a3,16(a0)
    80007070:	00853603          	ld	a2,8(a0)
    80007074:	00053583          	ld	a1,0(a0)
    80007078:	34051573          	csrrw	a0,mscratch,a0
    8000707c:	30200073          	mret

0000000080007080 <plicinit>:
    80007080:	ff010113          	addi	sp,sp,-16
    80007084:	00813423          	sd	s0,8(sp)
    80007088:	01010413          	addi	s0,sp,16
    8000708c:	00813403          	ld	s0,8(sp)
    80007090:	0c0007b7          	lui	a5,0xc000
    80007094:	00100713          	li	a4,1
    80007098:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000709c:	00e7a223          	sw	a4,4(a5)
    800070a0:	01010113          	addi	sp,sp,16
    800070a4:	00008067          	ret

00000000800070a8 <plicinithart>:
    800070a8:	ff010113          	addi	sp,sp,-16
    800070ac:	00813023          	sd	s0,0(sp)
    800070b0:	00113423          	sd	ra,8(sp)
    800070b4:	01010413          	addi	s0,sp,16
    800070b8:	00000097          	auipc	ra,0x0
    800070bc:	a48080e7          	jalr	-1464(ra) # 80006b00 <cpuid>
    800070c0:	0085171b          	slliw	a4,a0,0x8
    800070c4:	0c0027b7          	lui	a5,0xc002
    800070c8:	00e787b3          	add	a5,a5,a4
    800070cc:	40200713          	li	a4,1026
    800070d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800070d4:	00813083          	ld	ra,8(sp)
    800070d8:	00013403          	ld	s0,0(sp)
    800070dc:	00d5151b          	slliw	a0,a0,0xd
    800070e0:	0c2017b7          	lui	a5,0xc201
    800070e4:	00a78533          	add	a0,a5,a0
    800070e8:	00052023          	sw	zero,0(a0)
    800070ec:	01010113          	addi	sp,sp,16
    800070f0:	00008067          	ret

00000000800070f4 <plic_claim>:
    800070f4:	ff010113          	addi	sp,sp,-16
    800070f8:	00813023          	sd	s0,0(sp)
    800070fc:	00113423          	sd	ra,8(sp)
    80007100:	01010413          	addi	s0,sp,16
    80007104:	00000097          	auipc	ra,0x0
    80007108:	9fc080e7          	jalr	-1540(ra) # 80006b00 <cpuid>
    8000710c:	00813083          	ld	ra,8(sp)
    80007110:	00013403          	ld	s0,0(sp)
    80007114:	00d5151b          	slliw	a0,a0,0xd
    80007118:	0c2017b7          	lui	a5,0xc201
    8000711c:	00a78533          	add	a0,a5,a0
    80007120:	00452503          	lw	a0,4(a0)
    80007124:	01010113          	addi	sp,sp,16
    80007128:	00008067          	ret

000000008000712c <plic_complete>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00813823          	sd	s0,16(sp)
    80007134:	00913423          	sd	s1,8(sp)
    80007138:	00113c23          	sd	ra,24(sp)
    8000713c:	02010413          	addi	s0,sp,32
    80007140:	00050493          	mv	s1,a0
    80007144:	00000097          	auipc	ra,0x0
    80007148:	9bc080e7          	jalr	-1604(ra) # 80006b00 <cpuid>
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	01013403          	ld	s0,16(sp)
    80007154:	00d5179b          	slliw	a5,a0,0xd
    80007158:	0c201737          	lui	a4,0xc201
    8000715c:	00f707b3          	add	a5,a4,a5
    80007160:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007164:	00813483          	ld	s1,8(sp)
    80007168:	02010113          	addi	sp,sp,32
    8000716c:	00008067          	ret

0000000080007170 <consolewrite>:
    80007170:	fb010113          	addi	sp,sp,-80
    80007174:	04813023          	sd	s0,64(sp)
    80007178:	04113423          	sd	ra,72(sp)
    8000717c:	02913c23          	sd	s1,56(sp)
    80007180:	03213823          	sd	s2,48(sp)
    80007184:	03313423          	sd	s3,40(sp)
    80007188:	03413023          	sd	s4,32(sp)
    8000718c:	01513c23          	sd	s5,24(sp)
    80007190:	05010413          	addi	s0,sp,80
    80007194:	06c05c63          	blez	a2,8000720c <consolewrite+0x9c>
    80007198:	00060993          	mv	s3,a2
    8000719c:	00050a13          	mv	s4,a0
    800071a0:	00058493          	mv	s1,a1
    800071a4:	00000913          	li	s2,0
    800071a8:	fff00a93          	li	s5,-1
    800071ac:	01c0006f          	j	800071c8 <consolewrite+0x58>
    800071b0:	fbf44503          	lbu	a0,-65(s0)
    800071b4:	0019091b          	addiw	s2,s2,1
    800071b8:	00148493          	addi	s1,s1,1
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	a9c080e7          	jalr	-1380(ra) # 80007c58 <uartputc>
    800071c4:	03298063          	beq	s3,s2,800071e4 <consolewrite+0x74>
    800071c8:	00048613          	mv	a2,s1
    800071cc:	00100693          	li	a3,1
    800071d0:	000a0593          	mv	a1,s4
    800071d4:	fbf40513          	addi	a0,s0,-65
    800071d8:	00000097          	auipc	ra,0x0
    800071dc:	9e0080e7          	jalr	-1568(ra) # 80006bb8 <either_copyin>
    800071e0:	fd5518e3          	bne	a0,s5,800071b0 <consolewrite+0x40>
    800071e4:	04813083          	ld	ra,72(sp)
    800071e8:	04013403          	ld	s0,64(sp)
    800071ec:	03813483          	ld	s1,56(sp)
    800071f0:	02813983          	ld	s3,40(sp)
    800071f4:	02013a03          	ld	s4,32(sp)
    800071f8:	01813a83          	ld	s5,24(sp)
    800071fc:	00090513          	mv	a0,s2
    80007200:	03013903          	ld	s2,48(sp)
    80007204:	05010113          	addi	sp,sp,80
    80007208:	00008067          	ret
    8000720c:	00000913          	li	s2,0
    80007210:	fd5ff06f          	j	800071e4 <consolewrite+0x74>

0000000080007214 <consoleread>:
    80007214:	f9010113          	addi	sp,sp,-112
    80007218:	06813023          	sd	s0,96(sp)
    8000721c:	04913c23          	sd	s1,88(sp)
    80007220:	05213823          	sd	s2,80(sp)
    80007224:	05313423          	sd	s3,72(sp)
    80007228:	05413023          	sd	s4,64(sp)
    8000722c:	03513c23          	sd	s5,56(sp)
    80007230:	03613823          	sd	s6,48(sp)
    80007234:	03713423          	sd	s7,40(sp)
    80007238:	03813023          	sd	s8,32(sp)
    8000723c:	06113423          	sd	ra,104(sp)
    80007240:	01913c23          	sd	s9,24(sp)
    80007244:	07010413          	addi	s0,sp,112
    80007248:	00060b93          	mv	s7,a2
    8000724c:	00050913          	mv	s2,a0
    80007250:	00058c13          	mv	s8,a1
    80007254:	00060b1b          	sext.w	s6,a2
    80007258:	00006497          	auipc	s1,0x6
    8000725c:	8c048493          	addi	s1,s1,-1856 # 8000cb18 <cons>
    80007260:	00400993          	li	s3,4
    80007264:	fff00a13          	li	s4,-1
    80007268:	00a00a93          	li	s5,10
    8000726c:	05705e63          	blez	s7,800072c8 <consoleread+0xb4>
    80007270:	09c4a703          	lw	a4,156(s1)
    80007274:	0984a783          	lw	a5,152(s1)
    80007278:	0007071b          	sext.w	a4,a4
    8000727c:	08e78463          	beq	a5,a4,80007304 <consoleread+0xf0>
    80007280:	07f7f713          	andi	a4,a5,127
    80007284:	00e48733          	add	a4,s1,a4
    80007288:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000728c:	0017869b          	addiw	a3,a5,1
    80007290:	08d4ac23          	sw	a3,152(s1)
    80007294:	00070c9b          	sext.w	s9,a4
    80007298:	0b370663          	beq	a4,s3,80007344 <consoleread+0x130>
    8000729c:	00100693          	li	a3,1
    800072a0:	f9f40613          	addi	a2,s0,-97
    800072a4:	000c0593          	mv	a1,s8
    800072a8:	00090513          	mv	a0,s2
    800072ac:	f8e40fa3          	sb	a4,-97(s0)
    800072b0:	00000097          	auipc	ra,0x0
    800072b4:	8bc080e7          	jalr	-1860(ra) # 80006b6c <either_copyout>
    800072b8:	01450863          	beq	a0,s4,800072c8 <consoleread+0xb4>
    800072bc:	001c0c13          	addi	s8,s8,1
    800072c0:	fffb8b9b          	addiw	s7,s7,-1
    800072c4:	fb5c94e3          	bne	s9,s5,8000726c <consoleread+0x58>
    800072c8:	000b851b          	sext.w	a0,s7
    800072cc:	06813083          	ld	ra,104(sp)
    800072d0:	06013403          	ld	s0,96(sp)
    800072d4:	05813483          	ld	s1,88(sp)
    800072d8:	05013903          	ld	s2,80(sp)
    800072dc:	04813983          	ld	s3,72(sp)
    800072e0:	04013a03          	ld	s4,64(sp)
    800072e4:	03813a83          	ld	s5,56(sp)
    800072e8:	02813b83          	ld	s7,40(sp)
    800072ec:	02013c03          	ld	s8,32(sp)
    800072f0:	01813c83          	ld	s9,24(sp)
    800072f4:	40ab053b          	subw	a0,s6,a0
    800072f8:	03013b03          	ld	s6,48(sp)
    800072fc:	07010113          	addi	sp,sp,112
    80007300:	00008067          	ret
    80007304:	00001097          	auipc	ra,0x1
    80007308:	1d8080e7          	jalr	472(ra) # 800084dc <push_on>
    8000730c:	0984a703          	lw	a4,152(s1)
    80007310:	09c4a783          	lw	a5,156(s1)
    80007314:	0007879b          	sext.w	a5,a5
    80007318:	fef70ce3          	beq	a4,a5,80007310 <consoleread+0xfc>
    8000731c:	00001097          	auipc	ra,0x1
    80007320:	234080e7          	jalr	564(ra) # 80008550 <pop_on>
    80007324:	0984a783          	lw	a5,152(s1)
    80007328:	07f7f713          	andi	a4,a5,127
    8000732c:	00e48733          	add	a4,s1,a4
    80007330:	01874703          	lbu	a4,24(a4)
    80007334:	0017869b          	addiw	a3,a5,1
    80007338:	08d4ac23          	sw	a3,152(s1)
    8000733c:	00070c9b          	sext.w	s9,a4
    80007340:	f5371ee3          	bne	a4,s3,8000729c <consoleread+0x88>
    80007344:	000b851b          	sext.w	a0,s7
    80007348:	f96bf2e3          	bgeu	s7,s6,800072cc <consoleread+0xb8>
    8000734c:	08f4ac23          	sw	a5,152(s1)
    80007350:	f7dff06f          	j	800072cc <consoleread+0xb8>

0000000080007354 <consputc>:
    80007354:	10000793          	li	a5,256
    80007358:	00f50663          	beq	a0,a5,80007364 <consputc+0x10>
    8000735c:	00001317          	auipc	t1,0x1
    80007360:	9f430067          	jr	-1548(t1) # 80007d50 <uartputc_sync>
    80007364:	ff010113          	addi	sp,sp,-16
    80007368:	00113423          	sd	ra,8(sp)
    8000736c:	00813023          	sd	s0,0(sp)
    80007370:	01010413          	addi	s0,sp,16
    80007374:	00800513          	li	a0,8
    80007378:	00001097          	auipc	ra,0x1
    8000737c:	9d8080e7          	jalr	-1576(ra) # 80007d50 <uartputc_sync>
    80007380:	02000513          	li	a0,32
    80007384:	00001097          	auipc	ra,0x1
    80007388:	9cc080e7          	jalr	-1588(ra) # 80007d50 <uartputc_sync>
    8000738c:	00013403          	ld	s0,0(sp)
    80007390:	00813083          	ld	ra,8(sp)
    80007394:	00800513          	li	a0,8
    80007398:	01010113          	addi	sp,sp,16
    8000739c:	00001317          	auipc	t1,0x1
    800073a0:	9b430067          	jr	-1612(t1) # 80007d50 <uartputc_sync>

00000000800073a4 <consoleintr>:
    800073a4:	fe010113          	addi	sp,sp,-32
    800073a8:	00813823          	sd	s0,16(sp)
    800073ac:	00913423          	sd	s1,8(sp)
    800073b0:	01213023          	sd	s2,0(sp)
    800073b4:	00113c23          	sd	ra,24(sp)
    800073b8:	02010413          	addi	s0,sp,32
    800073bc:	00005917          	auipc	s2,0x5
    800073c0:	75c90913          	addi	s2,s2,1884 # 8000cb18 <cons>
    800073c4:	00050493          	mv	s1,a0
    800073c8:	00090513          	mv	a0,s2
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	e40080e7          	jalr	-448(ra) # 8000820c <acquire>
    800073d4:	02048c63          	beqz	s1,8000740c <consoleintr+0x68>
    800073d8:	0a092783          	lw	a5,160(s2)
    800073dc:	09892703          	lw	a4,152(s2)
    800073e0:	07f00693          	li	a3,127
    800073e4:	40e7873b          	subw	a4,a5,a4
    800073e8:	02e6e263          	bltu	a3,a4,8000740c <consoleintr+0x68>
    800073ec:	00d00713          	li	a4,13
    800073f0:	04e48063          	beq	s1,a4,80007430 <consoleintr+0x8c>
    800073f4:	07f7f713          	andi	a4,a5,127
    800073f8:	00e90733          	add	a4,s2,a4
    800073fc:	0017879b          	addiw	a5,a5,1
    80007400:	0af92023          	sw	a5,160(s2)
    80007404:	00970c23          	sb	s1,24(a4)
    80007408:	08f92e23          	sw	a5,156(s2)
    8000740c:	01013403          	ld	s0,16(sp)
    80007410:	01813083          	ld	ra,24(sp)
    80007414:	00813483          	ld	s1,8(sp)
    80007418:	00013903          	ld	s2,0(sp)
    8000741c:	00005517          	auipc	a0,0x5
    80007420:	6fc50513          	addi	a0,a0,1788 # 8000cb18 <cons>
    80007424:	02010113          	addi	sp,sp,32
    80007428:	00001317          	auipc	t1,0x1
    8000742c:	eb030067          	jr	-336(t1) # 800082d8 <release>
    80007430:	00a00493          	li	s1,10
    80007434:	fc1ff06f          	j	800073f4 <consoleintr+0x50>

0000000080007438 <consoleinit>:
    80007438:	fe010113          	addi	sp,sp,-32
    8000743c:	00113c23          	sd	ra,24(sp)
    80007440:	00813823          	sd	s0,16(sp)
    80007444:	00913423          	sd	s1,8(sp)
    80007448:	02010413          	addi	s0,sp,32
    8000744c:	00005497          	auipc	s1,0x5
    80007450:	6cc48493          	addi	s1,s1,1740 # 8000cb18 <cons>
    80007454:	00048513          	mv	a0,s1
    80007458:	00002597          	auipc	a1,0x2
    8000745c:	19058593          	addi	a1,a1,400 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007460:	00001097          	auipc	ra,0x1
    80007464:	d88080e7          	jalr	-632(ra) # 800081e8 <initlock>
    80007468:	00000097          	auipc	ra,0x0
    8000746c:	7ac080e7          	jalr	1964(ra) # 80007c14 <uartinit>
    80007470:	01813083          	ld	ra,24(sp)
    80007474:	01013403          	ld	s0,16(sp)
    80007478:	00000797          	auipc	a5,0x0
    8000747c:	d9c78793          	addi	a5,a5,-612 # 80007214 <consoleread>
    80007480:	0af4bc23          	sd	a5,184(s1)
    80007484:	00000797          	auipc	a5,0x0
    80007488:	cec78793          	addi	a5,a5,-788 # 80007170 <consolewrite>
    8000748c:	0cf4b023          	sd	a5,192(s1)
    80007490:	00813483          	ld	s1,8(sp)
    80007494:	02010113          	addi	sp,sp,32
    80007498:	00008067          	ret

000000008000749c <console_read>:
    8000749c:	ff010113          	addi	sp,sp,-16
    800074a0:	00813423          	sd	s0,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	00813403          	ld	s0,8(sp)
    800074ac:	00005317          	auipc	t1,0x5
    800074b0:	72433303          	ld	t1,1828(t1) # 8000cbd0 <devsw+0x10>
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00030067          	jr	t1

00000000800074bc <console_write>:
    800074bc:	ff010113          	addi	sp,sp,-16
    800074c0:	00813423          	sd	s0,8(sp)
    800074c4:	01010413          	addi	s0,sp,16
    800074c8:	00813403          	ld	s0,8(sp)
    800074cc:	00005317          	auipc	t1,0x5
    800074d0:	70c33303          	ld	t1,1804(t1) # 8000cbd8 <devsw+0x18>
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00030067          	jr	t1

00000000800074dc <panic>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00113c23          	sd	ra,24(sp)
    800074e4:	00813823          	sd	s0,16(sp)
    800074e8:	00913423          	sd	s1,8(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00050493          	mv	s1,a0
    800074f4:	00002517          	auipc	a0,0x2
    800074f8:	0fc50513          	addi	a0,a0,252 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800074fc:	00005797          	auipc	a5,0x5
    80007500:	7607ae23          	sw	zero,1916(a5) # 8000cc78 <pr+0x18>
    80007504:	00000097          	auipc	ra,0x0
    80007508:	034080e7          	jalr	52(ra) # 80007538 <__printf>
    8000750c:	00048513          	mv	a0,s1
    80007510:	00000097          	auipc	ra,0x0
    80007514:	028080e7          	jalr	40(ra) # 80007538 <__printf>
    80007518:	00002517          	auipc	a0,0x2
    8000751c:	e6050513          	addi	a0,a0,-416 # 80009378 <CONSOLE_STATUS+0x368>
    80007520:	00000097          	auipc	ra,0x0
    80007524:	018080e7          	jalr	24(ra) # 80007538 <__printf>
    80007528:	00100793          	li	a5,1
    8000752c:	00004717          	auipc	a4,0x4
    80007530:	44f72623          	sw	a5,1100(a4) # 8000b978 <panicked>
    80007534:	0000006f          	j	80007534 <panic+0x58>

0000000080007538 <__printf>:
    80007538:	f3010113          	addi	sp,sp,-208
    8000753c:	08813023          	sd	s0,128(sp)
    80007540:	07313423          	sd	s3,104(sp)
    80007544:	09010413          	addi	s0,sp,144
    80007548:	05813023          	sd	s8,64(sp)
    8000754c:	08113423          	sd	ra,136(sp)
    80007550:	06913c23          	sd	s1,120(sp)
    80007554:	07213823          	sd	s2,112(sp)
    80007558:	07413023          	sd	s4,96(sp)
    8000755c:	05513c23          	sd	s5,88(sp)
    80007560:	05613823          	sd	s6,80(sp)
    80007564:	05713423          	sd	s7,72(sp)
    80007568:	03913c23          	sd	s9,56(sp)
    8000756c:	03a13823          	sd	s10,48(sp)
    80007570:	03b13423          	sd	s11,40(sp)
    80007574:	00005317          	auipc	t1,0x5
    80007578:	6ec30313          	addi	t1,t1,1772 # 8000cc60 <pr>
    8000757c:	01832c03          	lw	s8,24(t1)
    80007580:	00b43423          	sd	a1,8(s0)
    80007584:	00c43823          	sd	a2,16(s0)
    80007588:	00d43c23          	sd	a3,24(s0)
    8000758c:	02e43023          	sd	a4,32(s0)
    80007590:	02f43423          	sd	a5,40(s0)
    80007594:	03043823          	sd	a6,48(s0)
    80007598:	03143c23          	sd	a7,56(s0)
    8000759c:	00050993          	mv	s3,a0
    800075a0:	4a0c1663          	bnez	s8,80007a4c <__printf+0x514>
    800075a4:	60098c63          	beqz	s3,80007bbc <__printf+0x684>
    800075a8:	0009c503          	lbu	a0,0(s3)
    800075ac:	00840793          	addi	a5,s0,8
    800075b0:	f6f43c23          	sd	a5,-136(s0)
    800075b4:	00000493          	li	s1,0
    800075b8:	22050063          	beqz	a0,800077d8 <__printf+0x2a0>
    800075bc:	00002a37          	lui	s4,0x2
    800075c0:	00018ab7          	lui	s5,0x18
    800075c4:	000f4b37          	lui	s6,0xf4
    800075c8:	00989bb7          	lui	s7,0x989
    800075cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800075d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800075d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800075d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800075dc:	00148c9b          	addiw	s9,s1,1
    800075e0:	02500793          	li	a5,37
    800075e4:	01998933          	add	s2,s3,s9
    800075e8:	38f51263          	bne	a0,a5,8000796c <__printf+0x434>
    800075ec:	00094783          	lbu	a5,0(s2)
    800075f0:	00078c9b          	sext.w	s9,a5
    800075f4:	1e078263          	beqz	a5,800077d8 <__printf+0x2a0>
    800075f8:	0024849b          	addiw	s1,s1,2
    800075fc:	07000713          	li	a4,112
    80007600:	00998933          	add	s2,s3,s1
    80007604:	38e78a63          	beq	a5,a4,80007998 <__printf+0x460>
    80007608:	20f76863          	bltu	a4,a5,80007818 <__printf+0x2e0>
    8000760c:	42a78863          	beq	a5,a0,80007a3c <__printf+0x504>
    80007610:	06400713          	li	a4,100
    80007614:	40e79663          	bne	a5,a4,80007a20 <__printf+0x4e8>
    80007618:	f7843783          	ld	a5,-136(s0)
    8000761c:	0007a603          	lw	a2,0(a5)
    80007620:	00878793          	addi	a5,a5,8
    80007624:	f6f43c23          	sd	a5,-136(s0)
    80007628:	42064a63          	bltz	a2,80007a5c <__printf+0x524>
    8000762c:	00a00713          	li	a4,10
    80007630:	02e677bb          	remuw	a5,a2,a4
    80007634:	00002d97          	auipc	s11,0x2
    80007638:	fe4d8d93          	addi	s11,s11,-28 # 80009618 <digits>
    8000763c:	00900593          	li	a1,9
    80007640:	0006051b          	sext.w	a0,a2
    80007644:	00000c93          	li	s9,0
    80007648:	02079793          	slli	a5,a5,0x20
    8000764c:	0207d793          	srli	a5,a5,0x20
    80007650:	00fd87b3          	add	a5,s11,a5
    80007654:	0007c783          	lbu	a5,0(a5)
    80007658:	02e656bb          	divuw	a3,a2,a4
    8000765c:	f8f40023          	sb	a5,-128(s0)
    80007660:	14c5d863          	bge	a1,a2,800077b0 <__printf+0x278>
    80007664:	06300593          	li	a1,99
    80007668:	00100c93          	li	s9,1
    8000766c:	02e6f7bb          	remuw	a5,a3,a4
    80007670:	02079793          	slli	a5,a5,0x20
    80007674:	0207d793          	srli	a5,a5,0x20
    80007678:	00fd87b3          	add	a5,s11,a5
    8000767c:	0007c783          	lbu	a5,0(a5)
    80007680:	02e6d73b          	divuw	a4,a3,a4
    80007684:	f8f400a3          	sb	a5,-127(s0)
    80007688:	12a5f463          	bgeu	a1,a0,800077b0 <__printf+0x278>
    8000768c:	00a00693          	li	a3,10
    80007690:	00900593          	li	a1,9
    80007694:	02d777bb          	remuw	a5,a4,a3
    80007698:	02079793          	slli	a5,a5,0x20
    8000769c:	0207d793          	srli	a5,a5,0x20
    800076a0:	00fd87b3          	add	a5,s11,a5
    800076a4:	0007c503          	lbu	a0,0(a5)
    800076a8:	02d757bb          	divuw	a5,a4,a3
    800076ac:	f8a40123          	sb	a0,-126(s0)
    800076b0:	48e5f263          	bgeu	a1,a4,80007b34 <__printf+0x5fc>
    800076b4:	06300513          	li	a0,99
    800076b8:	02d7f5bb          	remuw	a1,a5,a3
    800076bc:	02059593          	slli	a1,a1,0x20
    800076c0:	0205d593          	srli	a1,a1,0x20
    800076c4:	00bd85b3          	add	a1,s11,a1
    800076c8:	0005c583          	lbu	a1,0(a1)
    800076cc:	02d7d7bb          	divuw	a5,a5,a3
    800076d0:	f8b401a3          	sb	a1,-125(s0)
    800076d4:	48e57263          	bgeu	a0,a4,80007b58 <__printf+0x620>
    800076d8:	3e700513          	li	a0,999
    800076dc:	02d7f5bb          	remuw	a1,a5,a3
    800076e0:	02059593          	slli	a1,a1,0x20
    800076e4:	0205d593          	srli	a1,a1,0x20
    800076e8:	00bd85b3          	add	a1,s11,a1
    800076ec:	0005c583          	lbu	a1,0(a1)
    800076f0:	02d7d7bb          	divuw	a5,a5,a3
    800076f4:	f8b40223          	sb	a1,-124(s0)
    800076f8:	46e57663          	bgeu	a0,a4,80007b64 <__printf+0x62c>
    800076fc:	02d7f5bb          	remuw	a1,a5,a3
    80007700:	02059593          	slli	a1,a1,0x20
    80007704:	0205d593          	srli	a1,a1,0x20
    80007708:	00bd85b3          	add	a1,s11,a1
    8000770c:	0005c583          	lbu	a1,0(a1)
    80007710:	02d7d7bb          	divuw	a5,a5,a3
    80007714:	f8b402a3          	sb	a1,-123(s0)
    80007718:	46ea7863          	bgeu	s4,a4,80007b88 <__printf+0x650>
    8000771c:	02d7f5bb          	remuw	a1,a5,a3
    80007720:	02059593          	slli	a1,a1,0x20
    80007724:	0205d593          	srli	a1,a1,0x20
    80007728:	00bd85b3          	add	a1,s11,a1
    8000772c:	0005c583          	lbu	a1,0(a1)
    80007730:	02d7d7bb          	divuw	a5,a5,a3
    80007734:	f8b40323          	sb	a1,-122(s0)
    80007738:	3eeaf863          	bgeu	s5,a4,80007b28 <__printf+0x5f0>
    8000773c:	02d7f5bb          	remuw	a1,a5,a3
    80007740:	02059593          	slli	a1,a1,0x20
    80007744:	0205d593          	srli	a1,a1,0x20
    80007748:	00bd85b3          	add	a1,s11,a1
    8000774c:	0005c583          	lbu	a1,0(a1)
    80007750:	02d7d7bb          	divuw	a5,a5,a3
    80007754:	f8b403a3          	sb	a1,-121(s0)
    80007758:	42eb7e63          	bgeu	s6,a4,80007b94 <__printf+0x65c>
    8000775c:	02d7f5bb          	remuw	a1,a5,a3
    80007760:	02059593          	slli	a1,a1,0x20
    80007764:	0205d593          	srli	a1,a1,0x20
    80007768:	00bd85b3          	add	a1,s11,a1
    8000776c:	0005c583          	lbu	a1,0(a1)
    80007770:	02d7d7bb          	divuw	a5,a5,a3
    80007774:	f8b40423          	sb	a1,-120(s0)
    80007778:	42ebfc63          	bgeu	s7,a4,80007bb0 <__printf+0x678>
    8000777c:	02079793          	slli	a5,a5,0x20
    80007780:	0207d793          	srli	a5,a5,0x20
    80007784:	00fd8db3          	add	s11,s11,a5
    80007788:	000dc703          	lbu	a4,0(s11)
    8000778c:	00a00793          	li	a5,10
    80007790:	00900c93          	li	s9,9
    80007794:	f8e404a3          	sb	a4,-119(s0)
    80007798:	00065c63          	bgez	a2,800077b0 <__printf+0x278>
    8000779c:	f9040713          	addi	a4,s0,-112
    800077a0:	00f70733          	add	a4,a4,a5
    800077a4:	02d00693          	li	a3,45
    800077a8:	fed70823          	sb	a3,-16(a4)
    800077ac:	00078c93          	mv	s9,a5
    800077b0:	f8040793          	addi	a5,s0,-128
    800077b4:	01978cb3          	add	s9,a5,s9
    800077b8:	f7f40d13          	addi	s10,s0,-129
    800077bc:	000cc503          	lbu	a0,0(s9)
    800077c0:	fffc8c93          	addi	s9,s9,-1
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	b90080e7          	jalr	-1136(ra) # 80007354 <consputc>
    800077cc:	ffac98e3          	bne	s9,s10,800077bc <__printf+0x284>
    800077d0:	00094503          	lbu	a0,0(s2)
    800077d4:	e00514e3          	bnez	a0,800075dc <__printf+0xa4>
    800077d8:	1a0c1663          	bnez	s8,80007984 <__printf+0x44c>
    800077dc:	08813083          	ld	ra,136(sp)
    800077e0:	08013403          	ld	s0,128(sp)
    800077e4:	07813483          	ld	s1,120(sp)
    800077e8:	07013903          	ld	s2,112(sp)
    800077ec:	06813983          	ld	s3,104(sp)
    800077f0:	06013a03          	ld	s4,96(sp)
    800077f4:	05813a83          	ld	s5,88(sp)
    800077f8:	05013b03          	ld	s6,80(sp)
    800077fc:	04813b83          	ld	s7,72(sp)
    80007800:	04013c03          	ld	s8,64(sp)
    80007804:	03813c83          	ld	s9,56(sp)
    80007808:	03013d03          	ld	s10,48(sp)
    8000780c:	02813d83          	ld	s11,40(sp)
    80007810:	0d010113          	addi	sp,sp,208
    80007814:	00008067          	ret
    80007818:	07300713          	li	a4,115
    8000781c:	1ce78a63          	beq	a5,a4,800079f0 <__printf+0x4b8>
    80007820:	07800713          	li	a4,120
    80007824:	1ee79e63          	bne	a5,a4,80007a20 <__printf+0x4e8>
    80007828:	f7843783          	ld	a5,-136(s0)
    8000782c:	0007a703          	lw	a4,0(a5)
    80007830:	00878793          	addi	a5,a5,8
    80007834:	f6f43c23          	sd	a5,-136(s0)
    80007838:	28074263          	bltz	a4,80007abc <__printf+0x584>
    8000783c:	00002d97          	auipc	s11,0x2
    80007840:	ddcd8d93          	addi	s11,s11,-548 # 80009618 <digits>
    80007844:	00f77793          	andi	a5,a4,15
    80007848:	00fd87b3          	add	a5,s11,a5
    8000784c:	0007c683          	lbu	a3,0(a5)
    80007850:	00f00613          	li	a2,15
    80007854:	0007079b          	sext.w	a5,a4
    80007858:	f8d40023          	sb	a3,-128(s0)
    8000785c:	0047559b          	srliw	a1,a4,0x4
    80007860:	0047569b          	srliw	a3,a4,0x4
    80007864:	00000c93          	li	s9,0
    80007868:	0ee65063          	bge	a2,a4,80007948 <__printf+0x410>
    8000786c:	00f6f693          	andi	a3,a3,15
    80007870:	00dd86b3          	add	a3,s11,a3
    80007874:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007878:	0087d79b          	srliw	a5,a5,0x8
    8000787c:	00100c93          	li	s9,1
    80007880:	f8d400a3          	sb	a3,-127(s0)
    80007884:	0cb67263          	bgeu	a2,a1,80007948 <__printf+0x410>
    80007888:	00f7f693          	andi	a3,a5,15
    8000788c:	00dd86b3          	add	a3,s11,a3
    80007890:	0006c583          	lbu	a1,0(a3)
    80007894:	00f00613          	li	a2,15
    80007898:	0047d69b          	srliw	a3,a5,0x4
    8000789c:	f8b40123          	sb	a1,-126(s0)
    800078a0:	0047d593          	srli	a1,a5,0x4
    800078a4:	28f67e63          	bgeu	a2,a5,80007b40 <__printf+0x608>
    800078a8:	00f6f693          	andi	a3,a3,15
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c503          	lbu	a0,0(a3)
    800078b4:	0087d813          	srli	a6,a5,0x8
    800078b8:	0087d69b          	srliw	a3,a5,0x8
    800078bc:	f8a401a3          	sb	a0,-125(s0)
    800078c0:	28b67663          	bgeu	a2,a1,80007b4c <__printf+0x614>
    800078c4:	00f6f693          	andi	a3,a3,15
    800078c8:	00dd86b3          	add	a3,s11,a3
    800078cc:	0006c583          	lbu	a1,0(a3)
    800078d0:	00c7d513          	srli	a0,a5,0xc
    800078d4:	00c7d69b          	srliw	a3,a5,0xc
    800078d8:	f8b40223          	sb	a1,-124(s0)
    800078dc:	29067a63          	bgeu	a2,a6,80007b70 <__printf+0x638>
    800078e0:	00f6f693          	andi	a3,a3,15
    800078e4:	00dd86b3          	add	a3,s11,a3
    800078e8:	0006c583          	lbu	a1,0(a3)
    800078ec:	0107d813          	srli	a6,a5,0x10
    800078f0:	0107d69b          	srliw	a3,a5,0x10
    800078f4:	f8b402a3          	sb	a1,-123(s0)
    800078f8:	28a67263          	bgeu	a2,a0,80007b7c <__printf+0x644>
    800078fc:	00f6f693          	andi	a3,a3,15
    80007900:	00dd86b3          	add	a3,s11,a3
    80007904:	0006c683          	lbu	a3,0(a3)
    80007908:	0147d79b          	srliw	a5,a5,0x14
    8000790c:	f8d40323          	sb	a3,-122(s0)
    80007910:	21067663          	bgeu	a2,a6,80007b1c <__printf+0x5e4>
    80007914:	02079793          	slli	a5,a5,0x20
    80007918:	0207d793          	srli	a5,a5,0x20
    8000791c:	00fd8db3          	add	s11,s11,a5
    80007920:	000dc683          	lbu	a3,0(s11)
    80007924:	00800793          	li	a5,8
    80007928:	00700c93          	li	s9,7
    8000792c:	f8d403a3          	sb	a3,-121(s0)
    80007930:	00075c63          	bgez	a4,80007948 <__printf+0x410>
    80007934:	f9040713          	addi	a4,s0,-112
    80007938:	00f70733          	add	a4,a4,a5
    8000793c:	02d00693          	li	a3,45
    80007940:	fed70823          	sb	a3,-16(a4)
    80007944:	00078c93          	mv	s9,a5
    80007948:	f8040793          	addi	a5,s0,-128
    8000794c:	01978cb3          	add	s9,a5,s9
    80007950:	f7f40d13          	addi	s10,s0,-129
    80007954:	000cc503          	lbu	a0,0(s9)
    80007958:	fffc8c93          	addi	s9,s9,-1
    8000795c:	00000097          	auipc	ra,0x0
    80007960:	9f8080e7          	jalr	-1544(ra) # 80007354 <consputc>
    80007964:	ff9d18e3          	bne	s10,s9,80007954 <__printf+0x41c>
    80007968:	0100006f          	j	80007978 <__printf+0x440>
    8000796c:	00000097          	auipc	ra,0x0
    80007970:	9e8080e7          	jalr	-1560(ra) # 80007354 <consputc>
    80007974:	000c8493          	mv	s1,s9
    80007978:	00094503          	lbu	a0,0(s2)
    8000797c:	c60510e3          	bnez	a0,800075dc <__printf+0xa4>
    80007980:	e40c0ee3          	beqz	s8,800077dc <__printf+0x2a4>
    80007984:	00005517          	auipc	a0,0x5
    80007988:	2dc50513          	addi	a0,a0,732 # 8000cc60 <pr>
    8000798c:	00001097          	auipc	ra,0x1
    80007990:	94c080e7          	jalr	-1716(ra) # 800082d8 <release>
    80007994:	e49ff06f          	j	800077dc <__printf+0x2a4>
    80007998:	f7843783          	ld	a5,-136(s0)
    8000799c:	03000513          	li	a0,48
    800079a0:	01000d13          	li	s10,16
    800079a4:	00878713          	addi	a4,a5,8
    800079a8:	0007bc83          	ld	s9,0(a5)
    800079ac:	f6e43c23          	sd	a4,-136(s0)
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	9a4080e7          	jalr	-1628(ra) # 80007354 <consputc>
    800079b8:	07800513          	li	a0,120
    800079bc:	00000097          	auipc	ra,0x0
    800079c0:	998080e7          	jalr	-1640(ra) # 80007354 <consputc>
    800079c4:	00002d97          	auipc	s11,0x2
    800079c8:	c54d8d93          	addi	s11,s11,-940 # 80009618 <digits>
    800079cc:	03ccd793          	srli	a5,s9,0x3c
    800079d0:	00fd87b3          	add	a5,s11,a5
    800079d4:	0007c503          	lbu	a0,0(a5)
    800079d8:	fffd0d1b          	addiw	s10,s10,-1
    800079dc:	004c9c93          	slli	s9,s9,0x4
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	974080e7          	jalr	-1676(ra) # 80007354 <consputc>
    800079e8:	fe0d12e3          	bnez	s10,800079cc <__printf+0x494>
    800079ec:	f8dff06f          	j	80007978 <__printf+0x440>
    800079f0:	f7843783          	ld	a5,-136(s0)
    800079f4:	0007bc83          	ld	s9,0(a5)
    800079f8:	00878793          	addi	a5,a5,8
    800079fc:	f6f43c23          	sd	a5,-136(s0)
    80007a00:	000c9a63          	bnez	s9,80007a14 <__printf+0x4dc>
    80007a04:	1080006f          	j	80007b0c <__printf+0x5d4>
    80007a08:	001c8c93          	addi	s9,s9,1
    80007a0c:	00000097          	auipc	ra,0x0
    80007a10:	948080e7          	jalr	-1720(ra) # 80007354 <consputc>
    80007a14:	000cc503          	lbu	a0,0(s9)
    80007a18:	fe0518e3          	bnez	a0,80007a08 <__printf+0x4d0>
    80007a1c:	f5dff06f          	j	80007978 <__printf+0x440>
    80007a20:	02500513          	li	a0,37
    80007a24:	00000097          	auipc	ra,0x0
    80007a28:	930080e7          	jalr	-1744(ra) # 80007354 <consputc>
    80007a2c:	000c8513          	mv	a0,s9
    80007a30:	00000097          	auipc	ra,0x0
    80007a34:	924080e7          	jalr	-1756(ra) # 80007354 <consputc>
    80007a38:	f41ff06f          	j	80007978 <__printf+0x440>
    80007a3c:	02500513          	li	a0,37
    80007a40:	00000097          	auipc	ra,0x0
    80007a44:	914080e7          	jalr	-1772(ra) # 80007354 <consputc>
    80007a48:	f31ff06f          	j	80007978 <__printf+0x440>
    80007a4c:	00030513          	mv	a0,t1
    80007a50:	00000097          	auipc	ra,0x0
    80007a54:	7bc080e7          	jalr	1980(ra) # 8000820c <acquire>
    80007a58:	b4dff06f          	j	800075a4 <__printf+0x6c>
    80007a5c:	40c0053b          	negw	a0,a2
    80007a60:	00a00713          	li	a4,10
    80007a64:	02e576bb          	remuw	a3,a0,a4
    80007a68:	00002d97          	auipc	s11,0x2
    80007a6c:	bb0d8d93          	addi	s11,s11,-1104 # 80009618 <digits>
    80007a70:	ff700593          	li	a1,-9
    80007a74:	02069693          	slli	a3,a3,0x20
    80007a78:	0206d693          	srli	a3,a3,0x20
    80007a7c:	00dd86b3          	add	a3,s11,a3
    80007a80:	0006c683          	lbu	a3,0(a3)
    80007a84:	02e557bb          	divuw	a5,a0,a4
    80007a88:	f8d40023          	sb	a3,-128(s0)
    80007a8c:	10b65e63          	bge	a2,a1,80007ba8 <__printf+0x670>
    80007a90:	06300593          	li	a1,99
    80007a94:	02e7f6bb          	remuw	a3,a5,a4
    80007a98:	02069693          	slli	a3,a3,0x20
    80007a9c:	0206d693          	srli	a3,a3,0x20
    80007aa0:	00dd86b3          	add	a3,s11,a3
    80007aa4:	0006c683          	lbu	a3,0(a3)
    80007aa8:	02e7d73b          	divuw	a4,a5,a4
    80007aac:	00200793          	li	a5,2
    80007ab0:	f8d400a3          	sb	a3,-127(s0)
    80007ab4:	bca5ece3          	bltu	a1,a0,8000768c <__printf+0x154>
    80007ab8:	ce5ff06f          	j	8000779c <__printf+0x264>
    80007abc:	40e007bb          	negw	a5,a4
    80007ac0:	00002d97          	auipc	s11,0x2
    80007ac4:	b58d8d93          	addi	s11,s11,-1192 # 80009618 <digits>
    80007ac8:	00f7f693          	andi	a3,a5,15
    80007acc:	00dd86b3          	add	a3,s11,a3
    80007ad0:	0006c583          	lbu	a1,0(a3)
    80007ad4:	ff100613          	li	a2,-15
    80007ad8:	0047d69b          	srliw	a3,a5,0x4
    80007adc:	f8b40023          	sb	a1,-128(s0)
    80007ae0:	0047d59b          	srliw	a1,a5,0x4
    80007ae4:	0ac75e63          	bge	a4,a2,80007ba0 <__printf+0x668>
    80007ae8:	00f6f693          	andi	a3,a3,15
    80007aec:	00dd86b3          	add	a3,s11,a3
    80007af0:	0006c603          	lbu	a2,0(a3)
    80007af4:	00f00693          	li	a3,15
    80007af8:	0087d79b          	srliw	a5,a5,0x8
    80007afc:	f8c400a3          	sb	a2,-127(s0)
    80007b00:	d8b6e4e3          	bltu	a3,a1,80007888 <__printf+0x350>
    80007b04:	00200793          	li	a5,2
    80007b08:	e2dff06f          	j	80007934 <__printf+0x3fc>
    80007b0c:	00002c97          	auipc	s9,0x2
    80007b10:	aecc8c93          	addi	s9,s9,-1300 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80007b14:	02800513          	li	a0,40
    80007b18:	ef1ff06f          	j	80007a08 <__printf+0x4d0>
    80007b1c:	00700793          	li	a5,7
    80007b20:	00600c93          	li	s9,6
    80007b24:	e0dff06f          	j	80007930 <__printf+0x3f8>
    80007b28:	00700793          	li	a5,7
    80007b2c:	00600c93          	li	s9,6
    80007b30:	c69ff06f          	j	80007798 <__printf+0x260>
    80007b34:	00300793          	li	a5,3
    80007b38:	00200c93          	li	s9,2
    80007b3c:	c5dff06f          	j	80007798 <__printf+0x260>
    80007b40:	00300793          	li	a5,3
    80007b44:	00200c93          	li	s9,2
    80007b48:	de9ff06f          	j	80007930 <__printf+0x3f8>
    80007b4c:	00400793          	li	a5,4
    80007b50:	00300c93          	li	s9,3
    80007b54:	dddff06f          	j	80007930 <__printf+0x3f8>
    80007b58:	00400793          	li	a5,4
    80007b5c:	00300c93          	li	s9,3
    80007b60:	c39ff06f          	j	80007798 <__printf+0x260>
    80007b64:	00500793          	li	a5,5
    80007b68:	00400c93          	li	s9,4
    80007b6c:	c2dff06f          	j	80007798 <__printf+0x260>
    80007b70:	00500793          	li	a5,5
    80007b74:	00400c93          	li	s9,4
    80007b78:	db9ff06f          	j	80007930 <__printf+0x3f8>
    80007b7c:	00600793          	li	a5,6
    80007b80:	00500c93          	li	s9,5
    80007b84:	dadff06f          	j	80007930 <__printf+0x3f8>
    80007b88:	00600793          	li	a5,6
    80007b8c:	00500c93          	li	s9,5
    80007b90:	c09ff06f          	j	80007798 <__printf+0x260>
    80007b94:	00800793          	li	a5,8
    80007b98:	00700c93          	li	s9,7
    80007b9c:	bfdff06f          	j	80007798 <__printf+0x260>
    80007ba0:	00100793          	li	a5,1
    80007ba4:	d91ff06f          	j	80007934 <__printf+0x3fc>
    80007ba8:	00100793          	li	a5,1
    80007bac:	bf1ff06f          	j	8000779c <__printf+0x264>
    80007bb0:	00900793          	li	a5,9
    80007bb4:	00800c93          	li	s9,8
    80007bb8:	be1ff06f          	j	80007798 <__printf+0x260>
    80007bbc:	00002517          	auipc	a0,0x2
    80007bc0:	a4450513          	addi	a0,a0,-1468 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007bc4:	00000097          	auipc	ra,0x0
    80007bc8:	918080e7          	jalr	-1768(ra) # 800074dc <panic>

0000000080007bcc <printfinit>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00813823          	sd	s0,16(sp)
    80007bd4:	00913423          	sd	s1,8(sp)
    80007bd8:	00113c23          	sd	ra,24(sp)
    80007bdc:	02010413          	addi	s0,sp,32
    80007be0:	00005497          	auipc	s1,0x5
    80007be4:	08048493          	addi	s1,s1,128 # 8000cc60 <pr>
    80007be8:	00048513          	mv	a0,s1
    80007bec:	00002597          	auipc	a1,0x2
    80007bf0:	a2458593          	addi	a1,a1,-1500 # 80009610 <CONSOLE_STATUS+0x600>
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	5f4080e7          	jalr	1524(ra) # 800081e8 <initlock>
    80007bfc:	01813083          	ld	ra,24(sp)
    80007c00:	01013403          	ld	s0,16(sp)
    80007c04:	0004ac23          	sw	zero,24(s1)
    80007c08:	00813483          	ld	s1,8(sp)
    80007c0c:	02010113          	addi	sp,sp,32
    80007c10:	00008067          	ret

0000000080007c14 <uartinit>:
    80007c14:	ff010113          	addi	sp,sp,-16
    80007c18:	00813423          	sd	s0,8(sp)
    80007c1c:	01010413          	addi	s0,sp,16
    80007c20:	100007b7          	lui	a5,0x10000
    80007c24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007c28:	f8000713          	li	a4,-128
    80007c2c:	00e781a3          	sb	a4,3(a5)
    80007c30:	00300713          	li	a4,3
    80007c34:	00e78023          	sb	a4,0(a5)
    80007c38:	000780a3          	sb	zero,1(a5)
    80007c3c:	00e781a3          	sb	a4,3(a5)
    80007c40:	00700693          	li	a3,7
    80007c44:	00d78123          	sb	a3,2(a5)
    80007c48:	00e780a3          	sb	a4,1(a5)
    80007c4c:	00813403          	ld	s0,8(sp)
    80007c50:	01010113          	addi	sp,sp,16
    80007c54:	00008067          	ret

0000000080007c58 <uartputc>:
    80007c58:	00004797          	auipc	a5,0x4
    80007c5c:	d207a783          	lw	a5,-736(a5) # 8000b978 <panicked>
    80007c60:	00078463          	beqz	a5,80007c68 <uartputc+0x10>
    80007c64:	0000006f          	j	80007c64 <uartputc+0xc>
    80007c68:	fd010113          	addi	sp,sp,-48
    80007c6c:	02813023          	sd	s0,32(sp)
    80007c70:	00913c23          	sd	s1,24(sp)
    80007c74:	01213823          	sd	s2,16(sp)
    80007c78:	01313423          	sd	s3,8(sp)
    80007c7c:	02113423          	sd	ra,40(sp)
    80007c80:	03010413          	addi	s0,sp,48
    80007c84:	00004917          	auipc	s2,0x4
    80007c88:	cfc90913          	addi	s2,s2,-772 # 8000b980 <uart_tx_r>
    80007c8c:	00093783          	ld	a5,0(s2)
    80007c90:	00004497          	auipc	s1,0x4
    80007c94:	cf848493          	addi	s1,s1,-776 # 8000b988 <uart_tx_w>
    80007c98:	0004b703          	ld	a4,0(s1)
    80007c9c:	02078693          	addi	a3,a5,32
    80007ca0:	00050993          	mv	s3,a0
    80007ca4:	02e69c63          	bne	a3,a4,80007cdc <uartputc+0x84>
    80007ca8:	00001097          	auipc	ra,0x1
    80007cac:	834080e7          	jalr	-1996(ra) # 800084dc <push_on>
    80007cb0:	00093783          	ld	a5,0(s2)
    80007cb4:	0004b703          	ld	a4,0(s1)
    80007cb8:	02078793          	addi	a5,a5,32
    80007cbc:	00e79463          	bne	a5,a4,80007cc4 <uartputc+0x6c>
    80007cc0:	0000006f          	j	80007cc0 <uartputc+0x68>
    80007cc4:	00001097          	auipc	ra,0x1
    80007cc8:	88c080e7          	jalr	-1908(ra) # 80008550 <pop_on>
    80007ccc:	00093783          	ld	a5,0(s2)
    80007cd0:	0004b703          	ld	a4,0(s1)
    80007cd4:	02078693          	addi	a3,a5,32
    80007cd8:	fce688e3          	beq	a3,a4,80007ca8 <uartputc+0x50>
    80007cdc:	01f77693          	andi	a3,a4,31
    80007ce0:	00005597          	auipc	a1,0x5
    80007ce4:	fa058593          	addi	a1,a1,-96 # 8000cc80 <uart_tx_buf>
    80007ce8:	00d586b3          	add	a3,a1,a3
    80007cec:	00170713          	addi	a4,a4,1
    80007cf0:	01368023          	sb	s3,0(a3)
    80007cf4:	00e4b023          	sd	a4,0(s1)
    80007cf8:	10000637          	lui	a2,0x10000
    80007cfc:	02f71063          	bne	a4,a5,80007d1c <uartputc+0xc4>
    80007d00:	0340006f          	j	80007d34 <uartputc+0xdc>
    80007d04:	00074703          	lbu	a4,0(a4)
    80007d08:	00f93023          	sd	a5,0(s2)
    80007d0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007d10:	00093783          	ld	a5,0(s2)
    80007d14:	0004b703          	ld	a4,0(s1)
    80007d18:	00f70e63          	beq	a4,a5,80007d34 <uartputc+0xdc>
    80007d1c:	00564683          	lbu	a3,5(a2)
    80007d20:	01f7f713          	andi	a4,a5,31
    80007d24:	00e58733          	add	a4,a1,a4
    80007d28:	0206f693          	andi	a3,a3,32
    80007d2c:	00178793          	addi	a5,a5,1
    80007d30:	fc069ae3          	bnez	a3,80007d04 <uartputc+0xac>
    80007d34:	02813083          	ld	ra,40(sp)
    80007d38:	02013403          	ld	s0,32(sp)
    80007d3c:	01813483          	ld	s1,24(sp)
    80007d40:	01013903          	ld	s2,16(sp)
    80007d44:	00813983          	ld	s3,8(sp)
    80007d48:	03010113          	addi	sp,sp,48
    80007d4c:	00008067          	ret

0000000080007d50 <uartputc_sync>:
    80007d50:	ff010113          	addi	sp,sp,-16
    80007d54:	00813423          	sd	s0,8(sp)
    80007d58:	01010413          	addi	s0,sp,16
    80007d5c:	00004717          	auipc	a4,0x4
    80007d60:	c1c72703          	lw	a4,-996(a4) # 8000b978 <panicked>
    80007d64:	02071663          	bnez	a4,80007d90 <uartputc_sync+0x40>
    80007d68:	00050793          	mv	a5,a0
    80007d6c:	100006b7          	lui	a3,0x10000
    80007d70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d74:	02077713          	andi	a4,a4,32
    80007d78:	fe070ce3          	beqz	a4,80007d70 <uartputc_sync+0x20>
    80007d7c:	0ff7f793          	andi	a5,a5,255
    80007d80:	00f68023          	sb	a5,0(a3)
    80007d84:	00813403          	ld	s0,8(sp)
    80007d88:	01010113          	addi	sp,sp,16
    80007d8c:	00008067          	ret
    80007d90:	0000006f          	j	80007d90 <uartputc_sync+0x40>

0000000080007d94 <uartstart>:
    80007d94:	ff010113          	addi	sp,sp,-16
    80007d98:	00813423          	sd	s0,8(sp)
    80007d9c:	01010413          	addi	s0,sp,16
    80007da0:	00004617          	auipc	a2,0x4
    80007da4:	be060613          	addi	a2,a2,-1056 # 8000b980 <uart_tx_r>
    80007da8:	00004517          	auipc	a0,0x4
    80007dac:	be050513          	addi	a0,a0,-1056 # 8000b988 <uart_tx_w>
    80007db0:	00063783          	ld	a5,0(a2)
    80007db4:	00053703          	ld	a4,0(a0)
    80007db8:	04f70263          	beq	a4,a5,80007dfc <uartstart+0x68>
    80007dbc:	100005b7          	lui	a1,0x10000
    80007dc0:	00005817          	auipc	a6,0x5
    80007dc4:	ec080813          	addi	a6,a6,-320 # 8000cc80 <uart_tx_buf>
    80007dc8:	01c0006f          	j	80007de4 <uartstart+0x50>
    80007dcc:	0006c703          	lbu	a4,0(a3)
    80007dd0:	00f63023          	sd	a5,0(a2)
    80007dd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007dd8:	00063783          	ld	a5,0(a2)
    80007ddc:	00053703          	ld	a4,0(a0)
    80007de0:	00f70e63          	beq	a4,a5,80007dfc <uartstart+0x68>
    80007de4:	01f7f713          	andi	a4,a5,31
    80007de8:	00e806b3          	add	a3,a6,a4
    80007dec:	0055c703          	lbu	a4,5(a1)
    80007df0:	00178793          	addi	a5,a5,1
    80007df4:	02077713          	andi	a4,a4,32
    80007df8:	fc071ae3          	bnez	a4,80007dcc <uartstart+0x38>
    80007dfc:	00813403          	ld	s0,8(sp)
    80007e00:	01010113          	addi	sp,sp,16
    80007e04:	00008067          	ret

0000000080007e08 <uartgetc>:
    80007e08:	ff010113          	addi	sp,sp,-16
    80007e0c:	00813423          	sd	s0,8(sp)
    80007e10:	01010413          	addi	s0,sp,16
    80007e14:	10000737          	lui	a4,0x10000
    80007e18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007e1c:	0017f793          	andi	a5,a5,1
    80007e20:	00078c63          	beqz	a5,80007e38 <uartgetc+0x30>
    80007e24:	00074503          	lbu	a0,0(a4)
    80007e28:	0ff57513          	andi	a0,a0,255
    80007e2c:	00813403          	ld	s0,8(sp)
    80007e30:	01010113          	addi	sp,sp,16
    80007e34:	00008067          	ret
    80007e38:	fff00513          	li	a0,-1
    80007e3c:	ff1ff06f          	j	80007e2c <uartgetc+0x24>

0000000080007e40 <uartintr>:
    80007e40:	100007b7          	lui	a5,0x10000
    80007e44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007e48:	0017f793          	andi	a5,a5,1
    80007e4c:	0a078463          	beqz	a5,80007ef4 <uartintr+0xb4>
    80007e50:	fe010113          	addi	sp,sp,-32
    80007e54:	00813823          	sd	s0,16(sp)
    80007e58:	00913423          	sd	s1,8(sp)
    80007e5c:	00113c23          	sd	ra,24(sp)
    80007e60:	02010413          	addi	s0,sp,32
    80007e64:	100004b7          	lui	s1,0x10000
    80007e68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e6c:	0ff57513          	andi	a0,a0,255
    80007e70:	fffff097          	auipc	ra,0xfffff
    80007e74:	534080e7          	jalr	1332(ra) # 800073a4 <consoleintr>
    80007e78:	0054c783          	lbu	a5,5(s1)
    80007e7c:	0017f793          	andi	a5,a5,1
    80007e80:	fe0794e3          	bnez	a5,80007e68 <uartintr+0x28>
    80007e84:	00004617          	auipc	a2,0x4
    80007e88:	afc60613          	addi	a2,a2,-1284 # 8000b980 <uart_tx_r>
    80007e8c:	00004517          	auipc	a0,0x4
    80007e90:	afc50513          	addi	a0,a0,-1284 # 8000b988 <uart_tx_w>
    80007e94:	00063783          	ld	a5,0(a2)
    80007e98:	00053703          	ld	a4,0(a0)
    80007e9c:	04f70263          	beq	a4,a5,80007ee0 <uartintr+0xa0>
    80007ea0:	100005b7          	lui	a1,0x10000
    80007ea4:	00005817          	auipc	a6,0x5
    80007ea8:	ddc80813          	addi	a6,a6,-548 # 8000cc80 <uart_tx_buf>
    80007eac:	01c0006f          	j	80007ec8 <uartintr+0x88>
    80007eb0:	0006c703          	lbu	a4,0(a3)
    80007eb4:	00f63023          	sd	a5,0(a2)
    80007eb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ebc:	00063783          	ld	a5,0(a2)
    80007ec0:	00053703          	ld	a4,0(a0)
    80007ec4:	00f70e63          	beq	a4,a5,80007ee0 <uartintr+0xa0>
    80007ec8:	01f7f713          	andi	a4,a5,31
    80007ecc:	00e806b3          	add	a3,a6,a4
    80007ed0:	0055c703          	lbu	a4,5(a1)
    80007ed4:	00178793          	addi	a5,a5,1
    80007ed8:	02077713          	andi	a4,a4,32
    80007edc:	fc071ae3          	bnez	a4,80007eb0 <uartintr+0x70>
    80007ee0:	01813083          	ld	ra,24(sp)
    80007ee4:	01013403          	ld	s0,16(sp)
    80007ee8:	00813483          	ld	s1,8(sp)
    80007eec:	02010113          	addi	sp,sp,32
    80007ef0:	00008067          	ret
    80007ef4:	00004617          	auipc	a2,0x4
    80007ef8:	a8c60613          	addi	a2,a2,-1396 # 8000b980 <uart_tx_r>
    80007efc:	00004517          	auipc	a0,0x4
    80007f00:	a8c50513          	addi	a0,a0,-1396 # 8000b988 <uart_tx_w>
    80007f04:	00063783          	ld	a5,0(a2)
    80007f08:	00053703          	ld	a4,0(a0)
    80007f0c:	04f70263          	beq	a4,a5,80007f50 <uartintr+0x110>
    80007f10:	100005b7          	lui	a1,0x10000
    80007f14:	00005817          	auipc	a6,0x5
    80007f18:	d6c80813          	addi	a6,a6,-660 # 8000cc80 <uart_tx_buf>
    80007f1c:	01c0006f          	j	80007f38 <uartintr+0xf8>
    80007f20:	0006c703          	lbu	a4,0(a3)
    80007f24:	00f63023          	sd	a5,0(a2)
    80007f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f2c:	00063783          	ld	a5,0(a2)
    80007f30:	00053703          	ld	a4,0(a0)
    80007f34:	02f70063          	beq	a4,a5,80007f54 <uartintr+0x114>
    80007f38:	01f7f713          	andi	a4,a5,31
    80007f3c:	00e806b3          	add	a3,a6,a4
    80007f40:	0055c703          	lbu	a4,5(a1)
    80007f44:	00178793          	addi	a5,a5,1
    80007f48:	02077713          	andi	a4,a4,32
    80007f4c:	fc071ae3          	bnez	a4,80007f20 <uartintr+0xe0>
    80007f50:	00008067          	ret
    80007f54:	00008067          	ret

0000000080007f58 <kinit>:
    80007f58:	fc010113          	addi	sp,sp,-64
    80007f5c:	02913423          	sd	s1,40(sp)
    80007f60:	fffff7b7          	lui	a5,0xfffff
    80007f64:	00006497          	auipc	s1,0x6
    80007f68:	d3b48493          	addi	s1,s1,-709 # 8000dc9f <end+0xfff>
    80007f6c:	02813823          	sd	s0,48(sp)
    80007f70:	01313c23          	sd	s3,24(sp)
    80007f74:	00f4f4b3          	and	s1,s1,a5
    80007f78:	02113c23          	sd	ra,56(sp)
    80007f7c:	03213023          	sd	s2,32(sp)
    80007f80:	01413823          	sd	s4,16(sp)
    80007f84:	01513423          	sd	s5,8(sp)
    80007f88:	04010413          	addi	s0,sp,64
    80007f8c:	000017b7          	lui	a5,0x1
    80007f90:	01100993          	li	s3,17
    80007f94:	00f487b3          	add	a5,s1,a5
    80007f98:	01b99993          	slli	s3,s3,0x1b
    80007f9c:	06f9e063          	bltu	s3,a5,80007ffc <kinit+0xa4>
    80007fa0:	00005a97          	auipc	s5,0x5
    80007fa4:	d00a8a93          	addi	s5,s5,-768 # 8000cca0 <end>
    80007fa8:	0754ec63          	bltu	s1,s5,80008020 <kinit+0xc8>
    80007fac:	0734fa63          	bgeu	s1,s3,80008020 <kinit+0xc8>
    80007fb0:	00088a37          	lui	s4,0x88
    80007fb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007fb8:	00004917          	auipc	s2,0x4
    80007fbc:	9d890913          	addi	s2,s2,-1576 # 8000b990 <kmem>
    80007fc0:	00ca1a13          	slli	s4,s4,0xc
    80007fc4:	0140006f          	j	80007fd8 <kinit+0x80>
    80007fc8:	000017b7          	lui	a5,0x1
    80007fcc:	00f484b3          	add	s1,s1,a5
    80007fd0:	0554e863          	bltu	s1,s5,80008020 <kinit+0xc8>
    80007fd4:	0534f663          	bgeu	s1,s3,80008020 <kinit+0xc8>
    80007fd8:	00001637          	lui	a2,0x1
    80007fdc:	00100593          	li	a1,1
    80007fe0:	00048513          	mv	a0,s1
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	5e4080e7          	jalr	1508(ra) # 800085c8 <__memset>
    80007fec:	00093783          	ld	a5,0(s2)
    80007ff0:	00f4b023          	sd	a5,0(s1)
    80007ff4:	00993023          	sd	s1,0(s2)
    80007ff8:	fd4498e3          	bne	s1,s4,80007fc8 <kinit+0x70>
    80007ffc:	03813083          	ld	ra,56(sp)
    80008000:	03013403          	ld	s0,48(sp)
    80008004:	02813483          	ld	s1,40(sp)
    80008008:	02013903          	ld	s2,32(sp)
    8000800c:	01813983          	ld	s3,24(sp)
    80008010:	01013a03          	ld	s4,16(sp)
    80008014:	00813a83          	ld	s5,8(sp)
    80008018:	04010113          	addi	sp,sp,64
    8000801c:	00008067          	ret
    80008020:	00001517          	auipc	a0,0x1
    80008024:	61050513          	addi	a0,a0,1552 # 80009630 <digits+0x18>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	4b4080e7          	jalr	1204(ra) # 800074dc <panic>

0000000080008030 <freerange>:
    80008030:	fc010113          	addi	sp,sp,-64
    80008034:	000017b7          	lui	a5,0x1
    80008038:	02913423          	sd	s1,40(sp)
    8000803c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008040:	009504b3          	add	s1,a0,s1
    80008044:	fffff537          	lui	a0,0xfffff
    80008048:	02813823          	sd	s0,48(sp)
    8000804c:	02113c23          	sd	ra,56(sp)
    80008050:	03213023          	sd	s2,32(sp)
    80008054:	01313c23          	sd	s3,24(sp)
    80008058:	01413823          	sd	s4,16(sp)
    8000805c:	01513423          	sd	s5,8(sp)
    80008060:	01613023          	sd	s6,0(sp)
    80008064:	04010413          	addi	s0,sp,64
    80008068:	00a4f4b3          	and	s1,s1,a0
    8000806c:	00f487b3          	add	a5,s1,a5
    80008070:	06f5e463          	bltu	a1,a5,800080d8 <freerange+0xa8>
    80008074:	00005a97          	auipc	s5,0x5
    80008078:	c2ca8a93          	addi	s5,s5,-980 # 8000cca0 <end>
    8000807c:	0954e263          	bltu	s1,s5,80008100 <freerange+0xd0>
    80008080:	01100993          	li	s3,17
    80008084:	01b99993          	slli	s3,s3,0x1b
    80008088:	0734fc63          	bgeu	s1,s3,80008100 <freerange+0xd0>
    8000808c:	00058a13          	mv	s4,a1
    80008090:	00004917          	auipc	s2,0x4
    80008094:	90090913          	addi	s2,s2,-1792 # 8000b990 <kmem>
    80008098:	00002b37          	lui	s6,0x2
    8000809c:	0140006f          	j	800080b0 <freerange+0x80>
    800080a0:	000017b7          	lui	a5,0x1
    800080a4:	00f484b3          	add	s1,s1,a5
    800080a8:	0554ec63          	bltu	s1,s5,80008100 <freerange+0xd0>
    800080ac:	0534fa63          	bgeu	s1,s3,80008100 <freerange+0xd0>
    800080b0:	00001637          	lui	a2,0x1
    800080b4:	00100593          	li	a1,1
    800080b8:	00048513          	mv	a0,s1
    800080bc:	00000097          	auipc	ra,0x0
    800080c0:	50c080e7          	jalr	1292(ra) # 800085c8 <__memset>
    800080c4:	00093703          	ld	a4,0(s2)
    800080c8:	016487b3          	add	a5,s1,s6
    800080cc:	00e4b023          	sd	a4,0(s1)
    800080d0:	00993023          	sd	s1,0(s2)
    800080d4:	fcfa76e3          	bgeu	s4,a5,800080a0 <freerange+0x70>
    800080d8:	03813083          	ld	ra,56(sp)
    800080dc:	03013403          	ld	s0,48(sp)
    800080e0:	02813483          	ld	s1,40(sp)
    800080e4:	02013903          	ld	s2,32(sp)
    800080e8:	01813983          	ld	s3,24(sp)
    800080ec:	01013a03          	ld	s4,16(sp)
    800080f0:	00813a83          	ld	s5,8(sp)
    800080f4:	00013b03          	ld	s6,0(sp)
    800080f8:	04010113          	addi	sp,sp,64
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	53050513          	addi	a0,a0,1328 # 80009630 <digits+0x18>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	3d4080e7          	jalr	980(ra) # 800074dc <panic>

0000000080008110 <kfree>:
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00113c23          	sd	ra,24(sp)
    8000811c:	00913423          	sd	s1,8(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	03451793          	slli	a5,a0,0x34
    80008128:	04079c63          	bnez	a5,80008180 <kfree+0x70>
    8000812c:	00005797          	auipc	a5,0x5
    80008130:	b7478793          	addi	a5,a5,-1164 # 8000cca0 <end>
    80008134:	00050493          	mv	s1,a0
    80008138:	04f56463          	bltu	a0,a5,80008180 <kfree+0x70>
    8000813c:	01100793          	li	a5,17
    80008140:	01b79793          	slli	a5,a5,0x1b
    80008144:	02f57e63          	bgeu	a0,a5,80008180 <kfree+0x70>
    80008148:	00001637          	lui	a2,0x1
    8000814c:	00100593          	li	a1,1
    80008150:	00000097          	auipc	ra,0x0
    80008154:	478080e7          	jalr	1144(ra) # 800085c8 <__memset>
    80008158:	00004797          	auipc	a5,0x4
    8000815c:	83878793          	addi	a5,a5,-1992 # 8000b990 <kmem>
    80008160:	0007b703          	ld	a4,0(a5)
    80008164:	01813083          	ld	ra,24(sp)
    80008168:	01013403          	ld	s0,16(sp)
    8000816c:	00e4b023          	sd	a4,0(s1)
    80008170:	0097b023          	sd	s1,0(a5)
    80008174:	00813483          	ld	s1,8(sp)
    80008178:	02010113          	addi	sp,sp,32
    8000817c:	00008067          	ret
    80008180:	00001517          	auipc	a0,0x1
    80008184:	4b050513          	addi	a0,a0,1200 # 80009630 <digits+0x18>
    80008188:	fffff097          	auipc	ra,0xfffff
    8000818c:	354080e7          	jalr	852(ra) # 800074dc <panic>

0000000080008190 <kalloc>:
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	00003797          	auipc	a5,0x3
    800081a8:	7ec78793          	addi	a5,a5,2028 # 8000b990 <kmem>
    800081ac:	0007b483          	ld	s1,0(a5)
    800081b0:	02048063          	beqz	s1,800081d0 <kalloc+0x40>
    800081b4:	0004b703          	ld	a4,0(s1)
    800081b8:	00001637          	lui	a2,0x1
    800081bc:	00500593          	li	a1,5
    800081c0:	00048513          	mv	a0,s1
    800081c4:	00e7b023          	sd	a4,0(a5)
    800081c8:	00000097          	auipc	ra,0x0
    800081cc:	400080e7          	jalr	1024(ra) # 800085c8 <__memset>
    800081d0:	01813083          	ld	ra,24(sp)
    800081d4:	01013403          	ld	s0,16(sp)
    800081d8:	00048513          	mv	a0,s1
    800081dc:	00813483          	ld	s1,8(sp)
    800081e0:	02010113          	addi	sp,sp,32
    800081e4:	00008067          	ret

00000000800081e8 <initlock>:
    800081e8:	ff010113          	addi	sp,sp,-16
    800081ec:	00813423          	sd	s0,8(sp)
    800081f0:	01010413          	addi	s0,sp,16
    800081f4:	00813403          	ld	s0,8(sp)
    800081f8:	00b53423          	sd	a1,8(a0)
    800081fc:	00052023          	sw	zero,0(a0)
    80008200:	00053823          	sd	zero,16(a0)
    80008204:	01010113          	addi	sp,sp,16
    80008208:	00008067          	ret

000000008000820c <acquire>:
    8000820c:	fe010113          	addi	sp,sp,-32
    80008210:	00813823          	sd	s0,16(sp)
    80008214:	00913423          	sd	s1,8(sp)
    80008218:	00113c23          	sd	ra,24(sp)
    8000821c:	01213023          	sd	s2,0(sp)
    80008220:	02010413          	addi	s0,sp,32
    80008224:	00050493          	mv	s1,a0
    80008228:	10002973          	csrr	s2,sstatus
    8000822c:	100027f3          	csrr	a5,sstatus
    80008230:	ffd7f793          	andi	a5,a5,-3
    80008234:	10079073          	csrw	sstatus,a5
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	8e8080e7          	jalr	-1816(ra) # 80006b20 <mycpu>
    80008240:	07852783          	lw	a5,120(a0)
    80008244:	06078e63          	beqz	a5,800082c0 <acquire+0xb4>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	8d8080e7          	jalr	-1832(ra) # 80006b20 <mycpu>
    80008250:	07852783          	lw	a5,120(a0)
    80008254:	0004a703          	lw	a4,0(s1)
    80008258:	0017879b          	addiw	a5,a5,1
    8000825c:	06f52c23          	sw	a5,120(a0)
    80008260:	04071063          	bnez	a4,800082a0 <acquire+0x94>
    80008264:	00100713          	li	a4,1
    80008268:	00070793          	mv	a5,a4
    8000826c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008270:	0007879b          	sext.w	a5,a5
    80008274:	fe079ae3          	bnez	a5,80008268 <acquire+0x5c>
    80008278:	0ff0000f          	fence
    8000827c:	fffff097          	auipc	ra,0xfffff
    80008280:	8a4080e7          	jalr	-1884(ra) # 80006b20 <mycpu>
    80008284:	01813083          	ld	ra,24(sp)
    80008288:	01013403          	ld	s0,16(sp)
    8000828c:	00a4b823          	sd	a0,16(s1)
    80008290:	00013903          	ld	s2,0(sp)
    80008294:	00813483          	ld	s1,8(sp)
    80008298:	02010113          	addi	sp,sp,32
    8000829c:	00008067          	ret
    800082a0:	0104b903          	ld	s2,16(s1)
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	87c080e7          	jalr	-1924(ra) # 80006b20 <mycpu>
    800082ac:	faa91ce3          	bne	s2,a0,80008264 <acquire+0x58>
    800082b0:	00001517          	auipc	a0,0x1
    800082b4:	38850513          	addi	a0,a0,904 # 80009638 <digits+0x20>
    800082b8:	fffff097          	auipc	ra,0xfffff
    800082bc:	224080e7          	jalr	548(ra) # 800074dc <panic>
    800082c0:	00195913          	srli	s2,s2,0x1
    800082c4:	fffff097          	auipc	ra,0xfffff
    800082c8:	85c080e7          	jalr	-1956(ra) # 80006b20 <mycpu>
    800082cc:	00197913          	andi	s2,s2,1
    800082d0:	07252e23          	sw	s2,124(a0)
    800082d4:	f75ff06f          	j	80008248 <acquire+0x3c>

00000000800082d8 <release>:
    800082d8:	fe010113          	addi	sp,sp,-32
    800082dc:	00813823          	sd	s0,16(sp)
    800082e0:	00113c23          	sd	ra,24(sp)
    800082e4:	00913423          	sd	s1,8(sp)
    800082e8:	01213023          	sd	s2,0(sp)
    800082ec:	02010413          	addi	s0,sp,32
    800082f0:	00052783          	lw	a5,0(a0)
    800082f4:	00079a63          	bnez	a5,80008308 <release+0x30>
    800082f8:	00001517          	auipc	a0,0x1
    800082fc:	34850513          	addi	a0,a0,840 # 80009640 <digits+0x28>
    80008300:	fffff097          	auipc	ra,0xfffff
    80008304:	1dc080e7          	jalr	476(ra) # 800074dc <panic>
    80008308:	01053903          	ld	s2,16(a0)
    8000830c:	00050493          	mv	s1,a0
    80008310:	fffff097          	auipc	ra,0xfffff
    80008314:	810080e7          	jalr	-2032(ra) # 80006b20 <mycpu>
    80008318:	fea910e3          	bne	s2,a0,800082f8 <release+0x20>
    8000831c:	0004b823          	sd	zero,16(s1)
    80008320:	0ff0000f          	fence
    80008324:	0f50000f          	fence	iorw,ow
    80008328:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000832c:	ffffe097          	auipc	ra,0xffffe
    80008330:	7f4080e7          	jalr	2036(ra) # 80006b20 <mycpu>
    80008334:	100027f3          	csrr	a5,sstatus
    80008338:	0027f793          	andi	a5,a5,2
    8000833c:	04079a63          	bnez	a5,80008390 <release+0xb8>
    80008340:	07852783          	lw	a5,120(a0)
    80008344:	02f05e63          	blez	a5,80008380 <release+0xa8>
    80008348:	fff7871b          	addiw	a4,a5,-1
    8000834c:	06e52c23          	sw	a4,120(a0)
    80008350:	00071c63          	bnez	a4,80008368 <release+0x90>
    80008354:	07c52783          	lw	a5,124(a0)
    80008358:	00078863          	beqz	a5,80008368 <release+0x90>
    8000835c:	100027f3          	csrr	a5,sstatus
    80008360:	0027e793          	ori	a5,a5,2
    80008364:	10079073          	csrw	sstatus,a5
    80008368:	01813083          	ld	ra,24(sp)
    8000836c:	01013403          	ld	s0,16(sp)
    80008370:	00813483          	ld	s1,8(sp)
    80008374:	00013903          	ld	s2,0(sp)
    80008378:	02010113          	addi	sp,sp,32
    8000837c:	00008067          	ret
    80008380:	00001517          	auipc	a0,0x1
    80008384:	2e050513          	addi	a0,a0,736 # 80009660 <digits+0x48>
    80008388:	fffff097          	auipc	ra,0xfffff
    8000838c:	154080e7          	jalr	340(ra) # 800074dc <panic>
    80008390:	00001517          	auipc	a0,0x1
    80008394:	2b850513          	addi	a0,a0,696 # 80009648 <digits+0x30>
    80008398:	fffff097          	auipc	ra,0xfffff
    8000839c:	144080e7          	jalr	324(ra) # 800074dc <panic>

00000000800083a0 <holding>:
    800083a0:	00052783          	lw	a5,0(a0)
    800083a4:	00079663          	bnez	a5,800083b0 <holding+0x10>
    800083a8:	00000513          	li	a0,0
    800083ac:	00008067          	ret
    800083b0:	fe010113          	addi	sp,sp,-32
    800083b4:	00813823          	sd	s0,16(sp)
    800083b8:	00913423          	sd	s1,8(sp)
    800083bc:	00113c23          	sd	ra,24(sp)
    800083c0:	02010413          	addi	s0,sp,32
    800083c4:	01053483          	ld	s1,16(a0)
    800083c8:	ffffe097          	auipc	ra,0xffffe
    800083cc:	758080e7          	jalr	1880(ra) # 80006b20 <mycpu>
    800083d0:	01813083          	ld	ra,24(sp)
    800083d4:	01013403          	ld	s0,16(sp)
    800083d8:	40a48533          	sub	a0,s1,a0
    800083dc:	00153513          	seqz	a0,a0
    800083e0:	00813483          	ld	s1,8(sp)
    800083e4:	02010113          	addi	sp,sp,32
    800083e8:	00008067          	ret

00000000800083ec <push_off>:
    800083ec:	fe010113          	addi	sp,sp,-32
    800083f0:	00813823          	sd	s0,16(sp)
    800083f4:	00113c23          	sd	ra,24(sp)
    800083f8:	00913423          	sd	s1,8(sp)
    800083fc:	02010413          	addi	s0,sp,32
    80008400:	100024f3          	csrr	s1,sstatus
    80008404:	100027f3          	csrr	a5,sstatus
    80008408:	ffd7f793          	andi	a5,a5,-3
    8000840c:	10079073          	csrw	sstatus,a5
    80008410:	ffffe097          	auipc	ra,0xffffe
    80008414:	710080e7          	jalr	1808(ra) # 80006b20 <mycpu>
    80008418:	07852783          	lw	a5,120(a0)
    8000841c:	02078663          	beqz	a5,80008448 <push_off+0x5c>
    80008420:	ffffe097          	auipc	ra,0xffffe
    80008424:	700080e7          	jalr	1792(ra) # 80006b20 <mycpu>
    80008428:	07852783          	lw	a5,120(a0)
    8000842c:	01813083          	ld	ra,24(sp)
    80008430:	01013403          	ld	s0,16(sp)
    80008434:	0017879b          	addiw	a5,a5,1
    80008438:	06f52c23          	sw	a5,120(a0)
    8000843c:	00813483          	ld	s1,8(sp)
    80008440:	02010113          	addi	sp,sp,32
    80008444:	00008067          	ret
    80008448:	0014d493          	srli	s1,s1,0x1
    8000844c:	ffffe097          	auipc	ra,0xffffe
    80008450:	6d4080e7          	jalr	1748(ra) # 80006b20 <mycpu>
    80008454:	0014f493          	andi	s1,s1,1
    80008458:	06952e23          	sw	s1,124(a0)
    8000845c:	fc5ff06f          	j	80008420 <push_off+0x34>

0000000080008460 <pop_off>:
    80008460:	ff010113          	addi	sp,sp,-16
    80008464:	00813023          	sd	s0,0(sp)
    80008468:	00113423          	sd	ra,8(sp)
    8000846c:	01010413          	addi	s0,sp,16
    80008470:	ffffe097          	auipc	ra,0xffffe
    80008474:	6b0080e7          	jalr	1712(ra) # 80006b20 <mycpu>
    80008478:	100027f3          	csrr	a5,sstatus
    8000847c:	0027f793          	andi	a5,a5,2
    80008480:	04079663          	bnez	a5,800084cc <pop_off+0x6c>
    80008484:	07852783          	lw	a5,120(a0)
    80008488:	02f05a63          	blez	a5,800084bc <pop_off+0x5c>
    8000848c:	fff7871b          	addiw	a4,a5,-1
    80008490:	06e52c23          	sw	a4,120(a0)
    80008494:	00071c63          	bnez	a4,800084ac <pop_off+0x4c>
    80008498:	07c52783          	lw	a5,124(a0)
    8000849c:	00078863          	beqz	a5,800084ac <pop_off+0x4c>
    800084a0:	100027f3          	csrr	a5,sstatus
    800084a4:	0027e793          	ori	a5,a5,2
    800084a8:	10079073          	csrw	sstatus,a5
    800084ac:	00813083          	ld	ra,8(sp)
    800084b0:	00013403          	ld	s0,0(sp)
    800084b4:	01010113          	addi	sp,sp,16
    800084b8:	00008067          	ret
    800084bc:	00001517          	auipc	a0,0x1
    800084c0:	1a450513          	addi	a0,a0,420 # 80009660 <digits+0x48>
    800084c4:	fffff097          	auipc	ra,0xfffff
    800084c8:	018080e7          	jalr	24(ra) # 800074dc <panic>
    800084cc:	00001517          	auipc	a0,0x1
    800084d0:	17c50513          	addi	a0,a0,380 # 80009648 <digits+0x30>
    800084d4:	fffff097          	auipc	ra,0xfffff
    800084d8:	008080e7          	jalr	8(ra) # 800074dc <panic>

00000000800084dc <push_on>:
    800084dc:	fe010113          	addi	sp,sp,-32
    800084e0:	00813823          	sd	s0,16(sp)
    800084e4:	00113c23          	sd	ra,24(sp)
    800084e8:	00913423          	sd	s1,8(sp)
    800084ec:	02010413          	addi	s0,sp,32
    800084f0:	100024f3          	csrr	s1,sstatus
    800084f4:	100027f3          	csrr	a5,sstatus
    800084f8:	0027e793          	ori	a5,a5,2
    800084fc:	10079073          	csrw	sstatus,a5
    80008500:	ffffe097          	auipc	ra,0xffffe
    80008504:	620080e7          	jalr	1568(ra) # 80006b20 <mycpu>
    80008508:	07852783          	lw	a5,120(a0)
    8000850c:	02078663          	beqz	a5,80008538 <push_on+0x5c>
    80008510:	ffffe097          	auipc	ra,0xffffe
    80008514:	610080e7          	jalr	1552(ra) # 80006b20 <mycpu>
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
    80008540:	5e4080e7          	jalr	1508(ra) # 80006b20 <mycpu>
    80008544:	0014f493          	andi	s1,s1,1
    80008548:	06952e23          	sw	s1,124(a0)
    8000854c:	fc5ff06f          	j	80008510 <push_on+0x34>

0000000080008550 <pop_on>:
    80008550:	ff010113          	addi	sp,sp,-16
    80008554:	00813023          	sd	s0,0(sp)
    80008558:	00113423          	sd	ra,8(sp)
    8000855c:	01010413          	addi	s0,sp,16
    80008560:	ffffe097          	auipc	ra,0xffffe
    80008564:	5c0080e7          	jalr	1472(ra) # 80006b20 <mycpu>
    80008568:	100027f3          	csrr	a5,sstatus
    8000856c:	0027f793          	andi	a5,a5,2
    80008570:	04078463          	beqz	a5,800085b8 <pop_on+0x68>
    80008574:	07852783          	lw	a5,120(a0)
    80008578:	02f05863          	blez	a5,800085a8 <pop_on+0x58>
    8000857c:	fff7879b          	addiw	a5,a5,-1
    80008580:	06f52c23          	sw	a5,120(a0)
    80008584:	07853783          	ld	a5,120(a0)
    80008588:	00079863          	bnez	a5,80008598 <pop_on+0x48>
    8000858c:	100027f3          	csrr	a5,sstatus
    80008590:	ffd7f793          	andi	a5,a5,-3
    80008594:	10079073          	csrw	sstatus,a5
    80008598:	00813083          	ld	ra,8(sp)
    8000859c:	00013403          	ld	s0,0(sp)
    800085a0:	01010113          	addi	sp,sp,16
    800085a4:	00008067          	ret
    800085a8:	00001517          	auipc	a0,0x1
    800085ac:	0e050513          	addi	a0,a0,224 # 80009688 <digits+0x70>
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	f2c080e7          	jalr	-212(ra) # 800074dc <panic>
    800085b8:	00001517          	auipc	a0,0x1
    800085bc:	0b050513          	addi	a0,a0,176 # 80009668 <digits+0x50>
    800085c0:	fffff097          	auipc	ra,0xfffff
    800085c4:	f1c080e7          	jalr	-228(ra) # 800074dc <panic>

00000000800085c8 <__memset>:
    800085c8:	ff010113          	addi	sp,sp,-16
    800085cc:	00813423          	sd	s0,8(sp)
    800085d0:	01010413          	addi	s0,sp,16
    800085d4:	1a060e63          	beqz	a2,80008790 <__memset+0x1c8>
    800085d8:	40a007b3          	neg	a5,a0
    800085dc:	0077f793          	andi	a5,a5,7
    800085e0:	00778693          	addi	a3,a5,7
    800085e4:	00b00813          	li	a6,11
    800085e8:	0ff5f593          	andi	a1,a1,255
    800085ec:	fff6071b          	addiw	a4,a2,-1
    800085f0:	1b06e663          	bltu	a3,a6,8000879c <__memset+0x1d4>
    800085f4:	1cd76463          	bltu	a4,a3,800087bc <__memset+0x1f4>
    800085f8:	1a078e63          	beqz	a5,800087b4 <__memset+0x1ec>
    800085fc:	00b50023          	sb	a1,0(a0)
    80008600:	00100713          	li	a4,1
    80008604:	1ae78463          	beq	a5,a4,800087ac <__memset+0x1e4>
    80008608:	00b500a3          	sb	a1,1(a0)
    8000860c:	00200713          	li	a4,2
    80008610:	1ae78a63          	beq	a5,a4,800087c4 <__memset+0x1fc>
    80008614:	00b50123          	sb	a1,2(a0)
    80008618:	00300713          	li	a4,3
    8000861c:	18e78463          	beq	a5,a4,800087a4 <__memset+0x1dc>
    80008620:	00b501a3          	sb	a1,3(a0)
    80008624:	00400713          	li	a4,4
    80008628:	1ae78263          	beq	a5,a4,800087cc <__memset+0x204>
    8000862c:	00b50223          	sb	a1,4(a0)
    80008630:	00500713          	li	a4,5
    80008634:	1ae78063          	beq	a5,a4,800087d4 <__memset+0x20c>
    80008638:	00b502a3          	sb	a1,5(a0)
    8000863c:	00700713          	li	a4,7
    80008640:	18e79e63          	bne	a5,a4,800087dc <__memset+0x214>
    80008644:	00b50323          	sb	a1,6(a0)
    80008648:	00700e93          	li	t4,7
    8000864c:	00859713          	slli	a4,a1,0x8
    80008650:	00e5e733          	or	a4,a1,a4
    80008654:	01059e13          	slli	t3,a1,0x10
    80008658:	01c76e33          	or	t3,a4,t3
    8000865c:	01859313          	slli	t1,a1,0x18
    80008660:	006e6333          	or	t1,t3,t1
    80008664:	02059893          	slli	a7,a1,0x20
    80008668:	40f60e3b          	subw	t3,a2,a5
    8000866c:	011368b3          	or	a7,t1,a7
    80008670:	02859813          	slli	a6,a1,0x28
    80008674:	0108e833          	or	a6,a7,a6
    80008678:	03059693          	slli	a3,a1,0x30
    8000867c:	003e589b          	srliw	a7,t3,0x3
    80008680:	00d866b3          	or	a3,a6,a3
    80008684:	03859713          	slli	a4,a1,0x38
    80008688:	00389813          	slli	a6,a7,0x3
    8000868c:	00f507b3          	add	a5,a0,a5
    80008690:	00e6e733          	or	a4,a3,a4
    80008694:	000e089b          	sext.w	a7,t3
    80008698:	00f806b3          	add	a3,a6,a5
    8000869c:	00e7b023          	sd	a4,0(a5)
    800086a0:	00878793          	addi	a5,a5,8
    800086a4:	fed79ce3          	bne	a5,a3,8000869c <__memset+0xd4>
    800086a8:	ff8e7793          	andi	a5,t3,-8
    800086ac:	0007871b          	sext.w	a4,a5
    800086b0:	01d787bb          	addw	a5,a5,t4
    800086b4:	0ce88e63          	beq	a7,a4,80008790 <__memset+0x1c8>
    800086b8:	00f50733          	add	a4,a0,a5
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0017871b          	addiw	a4,a5,1
    800086c4:	0cc77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0027871b          	addiw	a4,a5,2
    800086d4:	0ac77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	0037871b          	addiw	a4,a5,3
    800086e4:	0ac77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0047871b          	addiw	a4,a5,4
    800086f4:	08c77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	0057871b          	addiw	a4,a5,5
    80008704:	08c77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	0067871b          	addiw	a4,a5,6
    80008714:	06c77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	0077871b          	addiw	a4,a5,7
    80008724:	06c77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	0087871b          	addiw	a4,a5,8
    80008734:	04c77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	0097871b          	addiw	a4,a5,9
    80008744:	04c77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	00a7871b          	addiw	a4,a5,10
    80008754:	02c77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	00b7871b          	addiw	a4,a5,11
    80008764:	02c77663          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008768:	00e50733          	add	a4,a0,a4
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	00c7871b          	addiw	a4,a5,12
    80008774:	00c77e63          	bgeu	a4,a2,80008790 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	00d7879b          	addiw	a5,a5,13
    80008784:	00c7f663          	bgeu	a5,a2,80008790 <__memset+0x1c8>
    80008788:	00f507b3          	add	a5,a0,a5
    8000878c:	00b78023          	sb	a1,0(a5)
    80008790:	00813403          	ld	s0,8(sp)
    80008794:	01010113          	addi	sp,sp,16
    80008798:	00008067          	ret
    8000879c:	00b00693          	li	a3,11
    800087a0:	e55ff06f          	j	800085f4 <__memset+0x2c>
    800087a4:	00300e93          	li	t4,3
    800087a8:	ea5ff06f          	j	8000864c <__memset+0x84>
    800087ac:	00100e93          	li	t4,1
    800087b0:	e9dff06f          	j	8000864c <__memset+0x84>
    800087b4:	00000e93          	li	t4,0
    800087b8:	e95ff06f          	j	8000864c <__memset+0x84>
    800087bc:	00000793          	li	a5,0
    800087c0:	ef9ff06f          	j	800086b8 <__memset+0xf0>
    800087c4:	00200e93          	li	t4,2
    800087c8:	e85ff06f          	j	8000864c <__memset+0x84>
    800087cc:	00400e93          	li	t4,4
    800087d0:	e7dff06f          	j	8000864c <__memset+0x84>
    800087d4:	00500e93          	li	t4,5
    800087d8:	e75ff06f          	j	8000864c <__memset+0x84>
    800087dc:	00600e93          	li	t4,6
    800087e0:	e6dff06f          	j	8000864c <__memset+0x84>

00000000800087e4 <__memmove>:
    800087e4:	ff010113          	addi	sp,sp,-16
    800087e8:	00813423          	sd	s0,8(sp)
    800087ec:	01010413          	addi	s0,sp,16
    800087f0:	0e060863          	beqz	a2,800088e0 <__memmove+0xfc>
    800087f4:	fff6069b          	addiw	a3,a2,-1
    800087f8:	0006881b          	sext.w	a6,a3
    800087fc:	0ea5e863          	bltu	a1,a0,800088ec <__memmove+0x108>
    80008800:	00758713          	addi	a4,a1,7
    80008804:	00a5e7b3          	or	a5,a1,a0
    80008808:	40a70733          	sub	a4,a4,a0
    8000880c:	0077f793          	andi	a5,a5,7
    80008810:	00f73713          	sltiu	a4,a4,15
    80008814:	00174713          	xori	a4,a4,1
    80008818:	0017b793          	seqz	a5,a5
    8000881c:	00e7f7b3          	and	a5,a5,a4
    80008820:	10078863          	beqz	a5,80008930 <__memmove+0x14c>
    80008824:	00900793          	li	a5,9
    80008828:	1107f463          	bgeu	a5,a6,80008930 <__memmove+0x14c>
    8000882c:	0036581b          	srliw	a6,a2,0x3
    80008830:	fff8081b          	addiw	a6,a6,-1
    80008834:	02081813          	slli	a6,a6,0x20
    80008838:	01d85893          	srli	a7,a6,0x1d
    8000883c:	00858813          	addi	a6,a1,8
    80008840:	00058793          	mv	a5,a1
    80008844:	00050713          	mv	a4,a0
    80008848:	01088833          	add	a6,a7,a6
    8000884c:	0007b883          	ld	a7,0(a5)
    80008850:	00878793          	addi	a5,a5,8
    80008854:	00870713          	addi	a4,a4,8
    80008858:	ff173c23          	sd	a7,-8(a4)
    8000885c:	ff0798e3          	bne	a5,a6,8000884c <__memmove+0x68>
    80008860:	ff867713          	andi	a4,a2,-8
    80008864:	02071793          	slli	a5,a4,0x20
    80008868:	0207d793          	srli	a5,a5,0x20
    8000886c:	00f585b3          	add	a1,a1,a5
    80008870:	40e686bb          	subw	a3,a3,a4
    80008874:	00f507b3          	add	a5,a0,a5
    80008878:	06e60463          	beq	a2,a4,800088e0 <__memmove+0xfc>
    8000887c:	0005c703          	lbu	a4,0(a1)
    80008880:	00e78023          	sb	a4,0(a5)
    80008884:	04068e63          	beqz	a3,800088e0 <__memmove+0xfc>
    80008888:	0015c603          	lbu	a2,1(a1)
    8000888c:	00100713          	li	a4,1
    80008890:	00c780a3          	sb	a2,1(a5)
    80008894:	04e68663          	beq	a3,a4,800088e0 <__memmove+0xfc>
    80008898:	0025c603          	lbu	a2,2(a1)
    8000889c:	00200713          	li	a4,2
    800088a0:	00c78123          	sb	a2,2(a5)
    800088a4:	02e68e63          	beq	a3,a4,800088e0 <__memmove+0xfc>
    800088a8:	0035c603          	lbu	a2,3(a1)
    800088ac:	00300713          	li	a4,3
    800088b0:	00c781a3          	sb	a2,3(a5)
    800088b4:	02e68663          	beq	a3,a4,800088e0 <__memmove+0xfc>
    800088b8:	0045c603          	lbu	a2,4(a1)
    800088bc:	00400713          	li	a4,4
    800088c0:	00c78223          	sb	a2,4(a5)
    800088c4:	00e68e63          	beq	a3,a4,800088e0 <__memmove+0xfc>
    800088c8:	0055c603          	lbu	a2,5(a1)
    800088cc:	00500713          	li	a4,5
    800088d0:	00c782a3          	sb	a2,5(a5)
    800088d4:	00e68663          	beq	a3,a4,800088e0 <__memmove+0xfc>
    800088d8:	0065c703          	lbu	a4,6(a1)
    800088dc:	00e78323          	sb	a4,6(a5)
    800088e0:	00813403          	ld	s0,8(sp)
    800088e4:	01010113          	addi	sp,sp,16
    800088e8:	00008067          	ret
    800088ec:	02061713          	slli	a4,a2,0x20
    800088f0:	02075713          	srli	a4,a4,0x20
    800088f4:	00e587b3          	add	a5,a1,a4
    800088f8:	f0f574e3          	bgeu	a0,a5,80008800 <__memmove+0x1c>
    800088fc:	02069613          	slli	a2,a3,0x20
    80008900:	02065613          	srli	a2,a2,0x20
    80008904:	fff64613          	not	a2,a2
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00c78633          	add	a2,a5,a2
    80008910:	fff7c683          	lbu	a3,-1(a5)
    80008914:	fff78793          	addi	a5,a5,-1
    80008918:	fff70713          	addi	a4,a4,-1
    8000891c:	00d70023          	sb	a3,0(a4)
    80008920:	fec798e3          	bne	a5,a2,80008910 <__memmove+0x12c>
    80008924:	00813403          	ld	s0,8(sp)
    80008928:	01010113          	addi	sp,sp,16
    8000892c:	00008067          	ret
    80008930:	02069713          	slli	a4,a3,0x20
    80008934:	02075713          	srli	a4,a4,0x20
    80008938:	00170713          	addi	a4,a4,1
    8000893c:	00e50733          	add	a4,a0,a4
    80008940:	00050793          	mv	a5,a0
    80008944:	0005c683          	lbu	a3,0(a1)
    80008948:	00178793          	addi	a5,a5,1
    8000894c:	00158593          	addi	a1,a1,1
    80008950:	fed78fa3          	sb	a3,-1(a5)
    80008954:	fee798e3          	bne	a5,a4,80008944 <__memmove+0x160>
    80008958:	f89ff06f          	j	800088e0 <__memmove+0xfc>
	...
