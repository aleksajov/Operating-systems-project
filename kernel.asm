
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	49013103          	ld	sp,1168(sp) # 8000b490 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	244060ef          	jal	ra,80006260 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv8pushRegsEv>:
#sa vezbi 7. sinhrona promena konteksta
.global  _ZN5Riscv8pushRegsEv
.type _ZN5Riscv8pushRegsEv, @function
_ZN5Riscv8pushRegsEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp ind, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)

    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv7popRegsEv>:
.type _ZN5Riscv7popRegsEv, @function
_ZN5Riscv7popRegsEv:

    .irp ind, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256

    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.extern _ZN5Riscv17hardwareInterruptEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    j ecall_exc
    80001100:	0280006f          	j	80001128 <ecall_exc>
    j timer
    80001104:	12c0006f          	j	80001230 <timer>
	...
    .skip 28
    j hardwareInt
    80001124:	2140006f          	j	80001338 <hardwareInt>

0000000080001128 <ecall_exc>:


ecall_exc:
    addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04a13823          	sd	a0,80(sp)
    80001154:	04b13c23          	sd	a1,88(sp)
    80001158:	06c13023          	sd	a2,96(sp)
    8000115c:	06d13423          	sd	a3,104(sp)
    80001160:	06e13823          	sd	a4,112(sp)
    80001164:	06f13c23          	sd	a5,120(sp)
    80001168:	09013023          	sd	a6,128(sp)
    8000116c:	09113423          	sd	a7,136(sp)
    80001170:	09213823          	sd	s2,144(sp)
    80001174:	09313c23          	sd	s3,152(sp)
    80001178:	0b413023          	sd	s4,160(sp)
    8000117c:	0b513423          	sd	s5,168(sp)
    80001180:	0b613823          	sd	s6,176(sp)
    80001184:	0b713c23          	sd	s7,184(sp)
    80001188:	0d813023          	sd	s8,192(sp)
    8000118c:	0d913423          	sd	s9,200(sp)
    80001190:	0da13823          	sd	s10,208(sp)
    80001194:	0db13c23          	sd	s11,216(sp)
    80001198:	0fc13023          	sd	t3,224(sp)
    8000119c:	0fd13423          	sd	t4,232(sp)
    800011a0:	0fe13823          	sd	t5,240(sp)
    800011a4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800011a8:	7d1000ef          	jal	ra,80002178 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

    sret
    8000122c:	10200073          	sret

0000000080001230 <timer>:

timer:
    addi sp, sp, -256
    80001230:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    80001234:	00113423          	sd	ra,8(sp)
    80001238:	00213823          	sd	sp,16(sp)
    8000123c:	00313c23          	sd	gp,24(sp)
    80001240:	02413023          	sd	tp,32(sp)
    80001244:	02513423          	sd	t0,40(sp)
    80001248:	02613823          	sd	t1,48(sp)
    8000124c:	02713c23          	sd	t2,56(sp)
    80001250:	04813023          	sd	s0,64(sp)
    80001254:	04913423          	sd	s1,72(sp)
    80001258:	04a13823          	sd	a0,80(sp)
    8000125c:	04b13c23          	sd	a1,88(sp)
    80001260:	06c13023          	sd	a2,96(sp)
    80001264:	06d13423          	sd	a3,104(sp)
    80001268:	06e13823          	sd	a4,112(sp)
    8000126c:	06f13c23          	sd	a5,120(sp)
    80001270:	09013023          	sd	a6,128(sp)
    80001274:	09113423          	sd	a7,136(sp)
    80001278:	09213823          	sd	s2,144(sp)
    8000127c:	09313c23          	sd	s3,152(sp)
    80001280:	0b413023          	sd	s4,160(sp)
    80001284:	0b513423          	sd	s5,168(sp)
    80001288:	0b613823          	sd	s6,176(sp)
    8000128c:	0b713c23          	sd	s7,184(sp)
    80001290:	0d813023          	sd	s8,192(sp)
    80001294:	0d913423          	sd	s9,200(sp)
    80001298:	0da13823          	sd	s10,208(sp)
    8000129c:	0db13c23          	sd	s11,216(sp)
    800012a0:	0fc13023          	sd	t3,224(sp)
    800012a4:	0fd13423          	sd	t4,232(sp)
    800012a8:	0fe13823          	sd	t5,240(sp)
    800012ac:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv14timerInterruptEv
    800012b0:	094010ef          	jal	ra,80002344 <_ZN5Riscv14timerInterruptEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	01013103          	ld	sp,16(sp)
    800012bc:	01813183          	ld	gp,24(sp)
    800012c0:	02013203          	ld	tp,32(sp)
    800012c4:	02813283          	ld	t0,40(sp)
    800012c8:	03013303          	ld	t1,48(sp)
    800012cc:	03813383          	ld	t2,56(sp)
    800012d0:	04013403          	ld	s0,64(sp)
    800012d4:	04813483          	ld	s1,72(sp)
    800012d8:	05013503          	ld	a0,80(sp)
    800012dc:	05813583          	ld	a1,88(sp)
    800012e0:	06013603          	ld	a2,96(sp)
    800012e4:	06813683          	ld	a3,104(sp)
    800012e8:	07013703          	ld	a4,112(sp)
    800012ec:	07813783          	ld	a5,120(sp)
    800012f0:	08013803          	ld	a6,128(sp)
    800012f4:	08813883          	ld	a7,136(sp)
    800012f8:	09013903          	ld	s2,144(sp)
    800012fc:	09813983          	ld	s3,152(sp)
    80001300:	0a013a03          	ld	s4,160(sp)
    80001304:	0a813a83          	ld	s5,168(sp)
    80001308:	0b013b03          	ld	s6,176(sp)
    8000130c:	0b813b83          	ld	s7,184(sp)
    80001310:	0c013c03          	ld	s8,192(sp)
    80001314:	0c813c83          	ld	s9,200(sp)
    80001318:	0d013d03          	ld	s10,208(sp)
    8000131c:	0d813d83          	ld	s11,216(sp)
    80001320:	0e013e03          	ld	t3,224(sp)
    80001324:	0e813e83          	ld	t4,232(sp)
    80001328:	0f013f03          	ld	t5,240(sp)
    8000132c:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001330:	10010113          	addi	sp,sp,256

    sret
    80001334:	10200073          	sret

0000000080001338 <hardwareInt>:

hardwareInt:
    addi sp, sp, -256
    80001338:	f0010113          	addi	sp,sp,-256

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    8000133c:	00113423          	sd	ra,8(sp)
    80001340:	00213823          	sd	sp,16(sp)
    80001344:	00313c23          	sd	gp,24(sp)
    80001348:	02413023          	sd	tp,32(sp)
    8000134c:	02513423          	sd	t0,40(sp)
    80001350:	02613823          	sd	t1,48(sp)
    80001354:	02713c23          	sd	t2,56(sp)
    80001358:	04813023          	sd	s0,64(sp)
    8000135c:	04913423          	sd	s1,72(sp)
    80001360:	04a13823          	sd	a0,80(sp)
    80001364:	04b13c23          	sd	a1,88(sp)
    80001368:	06c13023          	sd	a2,96(sp)
    8000136c:	06d13423          	sd	a3,104(sp)
    80001370:	06e13823          	sd	a4,112(sp)
    80001374:	06f13c23          	sd	a5,120(sp)
    80001378:	09013023          	sd	a6,128(sp)
    8000137c:	09113423          	sd	a7,136(sp)
    80001380:	09213823          	sd	s2,144(sp)
    80001384:	09313c23          	sd	s3,152(sp)
    80001388:	0b413023          	sd	s4,160(sp)
    8000138c:	0b513423          	sd	s5,168(sp)
    80001390:	0b613823          	sd	s6,176(sp)
    80001394:	0b713c23          	sd	s7,184(sp)
    80001398:	0d813023          	sd	s8,192(sp)
    8000139c:	0d913423          	sd	s9,200(sp)
    800013a0:	0da13823          	sd	s10,208(sp)
    800013a4:	0db13c23          	sd	s11,216(sp)
    800013a8:	0fc13023          	sd	t3,224(sp)
    800013ac:	0fd13423          	sd	t4,232(sp)
    800013b0:	0fe13823          	sd	t5,240(sp)
    800013b4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv17hardwareInterruptEv
    800013b8:	044010ef          	jal	ra,800023fc <_ZN5Riscv17hardwareInterruptEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800013bc:	00813083          	ld	ra,8(sp)
    800013c0:	01013103          	ld	sp,16(sp)
    800013c4:	01813183          	ld	gp,24(sp)
    800013c8:	02013203          	ld	tp,32(sp)
    800013cc:	02813283          	ld	t0,40(sp)
    800013d0:	03013303          	ld	t1,48(sp)
    800013d4:	03813383          	ld	t2,56(sp)
    800013d8:	04013403          	ld	s0,64(sp)
    800013dc:	04813483          	ld	s1,72(sp)
    800013e0:	05013503          	ld	a0,80(sp)
    800013e4:	05813583          	ld	a1,88(sp)
    800013e8:	06013603          	ld	a2,96(sp)
    800013ec:	06813683          	ld	a3,104(sp)
    800013f0:	07013703          	ld	a4,112(sp)
    800013f4:	07813783          	ld	a5,120(sp)
    800013f8:	08013803          	ld	a6,128(sp)
    800013fc:	08813883          	ld	a7,136(sp)
    80001400:	09013903          	ld	s2,144(sp)
    80001404:	09813983          	ld	s3,152(sp)
    80001408:	0a013a03          	ld	s4,160(sp)
    8000140c:	0a813a83          	ld	s5,168(sp)
    80001410:	0b013b03          	ld	s6,176(sp)
    80001414:	0b813b83          	ld	s7,184(sp)
    80001418:	0c013c03          	ld	s8,192(sp)
    8000141c:	0c813c83          	ld	s9,200(sp)
    80001420:	0d013d03          	ld	s10,208(sp)
    80001424:	0d813d83          	ld	s11,216(sp)
    80001428:	0e013e03          	ld	t3,224(sp)
    8000142c:	0e813e83          	ld	t4,232(sp)
    80001430:	0f013f03          	ld	t5,240(sp)
    80001434:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001438:	10010113          	addi	sp,sp,256

    8000143c:	10200073          	sret
	...

0000000080001448 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
#sa vezbi 7.
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #u a0 &old->context, u a1 &running->context
    sd ra, 0*8(a0)
    80001448:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    8000144c:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001450:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    80001454:	0085b103          	ld	sp,8(a1)

    80001458:	00008067          	ret

000000008000145c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000145c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001460:	00b29a63          	bne	t0,a1,80001474 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001464:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001468:	fe029ae3          	bnez	t0,8000145c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000146c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001470:	00008067          	ret

0000000080001474 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001474:	00100513          	li	a0,1
    80001478:	00008067          	ret

000000008000147c <_Z18commonPartSysCallsiz>:


#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void commonPartSysCalls(int code, ...){
    8000147c:	fb010113          	addi	sp,sp,-80
    80001480:	00813423          	sd	s0,8(sp)
    80001484:	01010413          	addi	s0,sp,16
    80001488:	00b43423          	sd	a1,8(s0)
    8000148c:	00c43823          	sd	a2,16(s0)
    80001490:	00d43c23          	sd	a3,24(s0)
    80001494:	02e43023          	sd	a4,32(s0)
    80001498:	02f43423          	sd	a5,40(s0)
    8000149c:	03043823          	sd	a6,48(s0)
    800014a0:	03143c23          	sd	a7,56(s0)
    __asm__ volatile("ecall");
    800014a4:	00000073          	ecall
}
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	05010113          	addi	sp,sp,80
    800014b0:	00008067          	ret

00000000800014b4 <_Z9mem_allocm>:




void *mem_alloc(size_t size) {
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */

    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800014c4:	03f50593          	addi	a1,a0,63
    800014c8:	0065d593          	srli	a1,a1,0x6
    800014cc:	00100513          	li	a0,1
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	fac080e7          	jalr	-84(ra) # 8000147c <_Z18commonPartSysCallsiz>

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800014d8:	00050793          	mv	a5,a0
    800014dc:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    800014e0:	fe843503          	ld	a0,-24(s0)
}
    800014e4:	01813083          	ld	ra,24(sp)
    800014e8:	01013403          	ld	s0,16(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00113c23          	sd	ra,24(sp)
    800014fc:	00813823          	sd	s0,16(sp)
    80001500:	02010413          	addi	s0,sp,32
    80001504:	00050593          	mv	a1,a0
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));

    __asm__ volatile("ecall");
     */
    commonPartSysCalls(0x02, (uint64)ptr);
    80001508:	00200513          	li	a0,2
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	f70080e7          	jalr	-144(ra) # 8000147c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001514:	00050793          	mv	a5,a0
    80001518:	fef42623          	sw	a5,-20(s0)
    return ret;
    8000151c:	fec42503          	lw	a0,-20(s0)
}
    80001520:	0005051b          	sext.w	a0,a0
    80001524:	01813083          	ld	ra,24(sp)
    80001528:	01013403          	ld	s0,16(sp)
    8000152c:	02010113          	addi	sp,sp,32
    80001530:	00008067          	ret

0000000080001534 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001534:	fc010113          	addi	sp,sp,-64
    80001538:	02113c23          	sd	ra,56(sp)
    8000153c:	02813823          	sd	s0,48(sp)
    80001540:	02913423          	sd	s1,40(sp)
    80001544:	03213023          	sd	s2,32(sp)
    80001548:	01313c23          	sd	s3,24(sp)
    8000154c:	04010413          	addi	s0,sp,64
    80001550:	00050493          	mv	s1,a0
    80001554:	00058913          	mv	s2,a1
    80001558:	00060993          	mv	s3,a2
    uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    8000155c:	00001537          	lui	a0,0x1
    80001560:	00000097          	auipc	ra,0x0
    80001564:	f54080e7          	jalr	-172(ra) # 800014b4 <_Z9mem_allocm>
    if(stack==nullptr)return -1;
    80001568:	04050663          	beqz	a0,800015b4 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    8000156c:	00050713          	mv	a4,a0
    commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    80001570:	00098693          	mv	a3,s3
    80001574:	00090613          	mv	a2,s2
    80001578:	00048593          	mv	a1,s1
    8000157c:	01100513          	li	a0,17
    80001580:	00000097          	auipc	ra,0x0
    80001584:	efc080e7          	jalr	-260(ra) # 8000147c <_Z18commonPartSysCallsiz>


    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001588:	00050793          	mv	a5,a0
    8000158c:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001590:	fcc42503          	lw	a0,-52(s0)
    80001594:	0005051b          	sext.w	a0,a0
}
    80001598:	03813083          	ld	ra,56(sp)
    8000159c:	03013403          	ld	s0,48(sp)
    800015a0:	02813483          	ld	s1,40(sp)
    800015a4:	02013903          	ld	s2,32(sp)
    800015a8:	01813983          	ld	s3,24(sp)
    800015ac:	04010113          	addi	sp,sp,64
    800015b0:	00008067          	ret
    if(stack==nullptr)return -1;
    800015b4:	fff00513          	li	a0,-1
    800015b8:	fe1ff06f          	j	80001598 <_Z13thread_createPP3TCBPFvPvES2_+0x64>

00000000800015bc <_Z10time_sleepm>:

int time_sleep(time_t) {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
    return 0;
}
    800015c8:	00000513          	li	a0,0
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_Z11thread_exitv>:

int thread_exit() {
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x12);
    800015e8:	01200513          	li	a0,18
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	e90080e7          	jalr	-368(ra) # 8000147c <_Z18commonPartSysCallsiz>

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800015f4:	00050793          	mv	a5,a0
    800015f8:	fef42623          	sw	a5,-20(s0)
    return ret;
    800015fc:	fec42503          	lw	a0,-20(s0)
}
    80001600:	0005051b          	sext.w	a0,a0
    80001604:	01813083          	ld	ra,24(sp)
    80001608:	01013403          	ld	s0,16(sp)
    8000160c:	02010113          	addi	sp,sp,32
    80001610:	00008067          	ret

0000000080001614 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00113423          	sd	ra,8(sp)
    8000161c:	00813023          	sd	s0,0(sp)
    80001620:	01010413          	addi	s0,sp,16
    commonPartSysCalls(0x13);
    80001624:	01300513          	li	a0,19
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	e54080e7          	jalr	-428(ra) # 8000147c <_Z18commonPartSysCallsiz>
}
    80001630:	00813083          	ld	ra,8(sp)
    80001634:	00013403          	ld	s0,0(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret

0000000080001640 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001640:	ff010113          	addi	sp,sp,-16
    80001644:	00813423          	sd	s0,8(sp)
    80001648:	01010413          	addi	s0,sp,16

}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret

0000000080001658 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00813423          	sd	s0,8(sp)
    80001660:	01010413          	addi	s0,sp,16
    return 0;
}
    80001664:	00000513          	li	a0,0
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001680:	00000513          	li	a0,0
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    return 0;
}
    8000169c:	00000513          	li	a0,0
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16
    return 0;
}
    800016b8:	00000513          	li	a0,0
    800016bc:	00813403          	ld	s0,8(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret

00000000800016c8 <_Z4getcv>:

char getc() {
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x41);
    800016d8:	04100513          	li	a0,65
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	da0080e7          	jalr	-608(ra) # 8000147c <_Z18commonPartSysCallsiz>

    volatile char ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800016e4:	00050793          	mv	a5,a0
    800016e8:	fef407a3          	sb	a5,-17(s0)
    return ret;
    800016ec:	fef44503          	lbu	a0,-17(s0)
}
    800016f0:	0ff57513          	andi	a0,a0,255
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <_Z4putcc>:

void putc(char c) {
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00113423          	sd	ra,8(sp)
    8000170c:	00813023          	sd	s0,0(sp)
    80001710:	01010413          	addi	s0,sp,16
    80001714:	00050593          	mv	a1,a0
    commonPartSysCalls(0x42, c);
    80001718:	04200513          	li	a0,66
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	d60080e7          	jalr	-672(ra) # 8000147c <_Z18commonPartSysCallsiz>
}
    80001724:	00813083          	ld	ra,8(sp)
    80001728:	00013403          	ld	s0,0(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret

0000000080001734 <_Z9fibonaccim>:
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

uint64 fibonacci(uint64 n)
{
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	01213023          	sd	s2,0(sp)
    80001748:	02010413          	addi	s0,sp,32
    8000174c:	00050493          	mv	s1,a0
    if(n==0 || n==1)return n;
    80001750:	00100793          	li	a5,1
    80001754:	02a7f263          	bgeu	a5,a0,80001778 <_Z9fibonaccim+0x44>
    //if(n%4==0)TCB::yield();
    return fibonacci(n-1)+ fibonacci(n-2);
    80001758:	fff50513          	addi	a0,a0,-1 # fff <_entry-0x7ffff001>
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	fd8080e7          	jalr	-40(ra) # 80001734 <_Z9fibonaccim>
    80001764:	00050913          	mv	s2,a0
    80001768:	ffe48513          	addi	a0,s1,-2
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	fc8080e7          	jalr	-56(ra) # 80001734 <_Z9fibonaccim>
    80001774:	00a90533          	add	a0,s2,a0
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	00013903          	ld	s2,0(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret

0000000080001790 <_Z11workerBodyCPv>:

void workerBodyC(void*) {
    80001790:	fe010113          	addi	sp,sp,-32
    80001794:	00113c23          	sd	ra,24(sp)
    80001798:	00813823          	sd	s0,16(sp)
    8000179c:	00913423          	sd	s1,8(sp)
    800017a0:	01213023          	sd	s2,0(sp)
    800017a4:	02010413          	addi	s0,sp,32
    uint8 i=0;
    800017a8:	00000493          	li	s1,0
    800017ac:	0380006f          	j	800017e4 <_Z11workerBodyCPv+0x54>
    for(;i<3;i++){
        prtString("C: i=");
    800017b0:	00008517          	auipc	a0,0x8
    800017b4:	87050513          	addi	a0,a0,-1936 # 80009020 <CONSOLE_STATUS+0x10>
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	2d4080e7          	jalr	724(ra) # 80002a8c <_Z9prtStringPKc>
        prtInt(i);
    800017c0:	00048513          	mv	a0,s1
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	338080e7          	jalr	824(ra) # 80002afc <_Z6prtIntm>
        prtString("\n");
    800017cc:	00008517          	auipc	a0,0x8
    800017d0:	97450513          	addi	a0,a0,-1676 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	2b8080e7          	jalr	696(ra) # 80002a8c <_Z9prtStringPKc>
    for(;i<3;i++){
    800017dc:	0014849b          	addiw	s1,s1,1
    800017e0:	0ff4f493          	andi	s1,s1,255
    800017e4:	00200793          	li	a5,2
    800017e8:	fc97f4e3          	bgeu	a5,s1,800017b0 <_Z11workerBodyCPv+0x20>
    }
    prtString("C: yield\n");
    800017ec:	00008517          	auipc	a0,0x8
    800017f0:	83c50513          	addi	a0,a0,-1988 # 80009028 <CONSOLE_STATUS+0x18>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	298080e7          	jalr	664(ra) # 80002a8c <_Z9prtStringPKc>
    __asm__("li t1, 7");
    800017fc:	00700313          	li	t1,7
    TCB::yield();
    80001800:	00001097          	auipc	ra,0x1
    80001804:	d78080e7          	jalr	-648(ra) # 80002578 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    80001808:	00030913          	mv	s2,t1

    prtString("C: t1=");
    8000180c:	00008517          	auipc	a0,0x8
    80001810:	82c50513          	addi	a0,a0,-2004 # 80009038 <CONSOLE_STATUS+0x28>
    80001814:	00001097          	auipc	ra,0x1
    80001818:	278080e7          	jalr	632(ra) # 80002a8c <_Z9prtStringPKc>
    prtInt(t1);
    8000181c:	00090513          	mv	a0,s2
    80001820:	00001097          	auipc	ra,0x1
    80001824:	2dc080e7          	jalr	732(ra) # 80002afc <_Z6prtIntm>
    prtString("\n");
    80001828:	00008517          	auipc	a0,0x8
    8000182c:	91850513          	addi	a0,a0,-1768 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80001830:	00001097          	auipc	ra,0x1
    80001834:	25c080e7          	jalr	604(ra) # 80002a8c <_Z9prtStringPKc>

    uint64 result= fibonacci(20);
    80001838:	01400513          	li	a0,20
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	ef8080e7          	jalr	-264(ra) # 80001734 <_Z9fibonaccim>
    80001844:	00050913          	mv	s2,a0
    prtString("C: fibonaci=");
    80001848:	00007517          	auipc	a0,0x7
    8000184c:	7f850513          	addi	a0,a0,2040 # 80009040 <CONSOLE_STATUS+0x30>
    80001850:	00001097          	auipc	ra,0x1
    80001854:	23c080e7          	jalr	572(ra) # 80002a8c <_Z9prtStringPKc>
    prtInt(result);
    80001858:	00090513          	mv	a0,s2
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	2a0080e7          	jalr	672(ra) # 80002afc <_Z6prtIntm>
    prtString("\n");
    80001864:	00008517          	auipc	a0,0x8
    80001868:	8dc50513          	addi	a0,a0,-1828 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	220080e7          	jalr	544(ra) # 80002a8c <_Z9prtStringPKc>
    80001874:	0380006f          	j	800018ac <_Z11workerBodyCPv+0x11c>

    for(;i<6;i++){
        prtString("C: i=");
    80001878:	00007517          	auipc	a0,0x7
    8000187c:	7a850513          	addi	a0,a0,1960 # 80009020 <CONSOLE_STATUS+0x10>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	20c080e7          	jalr	524(ra) # 80002a8c <_Z9prtStringPKc>
        prtInt(i);
    80001888:	00048513          	mv	a0,s1
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	270080e7          	jalr	624(ra) # 80002afc <_Z6prtIntm>
        prtString("\n");
    80001894:	00008517          	auipc	a0,0x8
    80001898:	8ac50513          	addi	a0,a0,-1876 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	1f0080e7          	jalr	496(ra) # 80002a8c <_Z9prtStringPKc>
    for(;i<6;i++){
    800018a4:	0014849b          	addiw	s1,s1,1
    800018a8:	0ff4f493          	andi	s1,s1,255
    800018ac:	00500793          	li	a5,5
    800018b0:	fc97f4e3          	bgeu	a5,s1,80001878 <_Z11workerBodyCPv+0xe8>
    }


    /*TCB::running->setFinished(true);
    TCB::yield();*/
    prtString("WorkerBodyC finished\n");
    800018b4:	00007517          	auipc	a0,0x7
    800018b8:	79c50513          	addi	a0,a0,1948 # 80009050 <CONSOLE_STATUS+0x40>
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	1d0080e7          	jalr	464(ra) # 80002a8c <_Z9prtStringPKc>
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	00813483          	ld	s1,8(sp)
    800018d0:	00013903          	ld	s2,0(sp)
    800018d4:	02010113          	addi	sp,sp,32
    800018d8:	00008067          	ret

00000000800018dc <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    800018dc:	fe010113          	addi	sp,sp,-32
    800018e0:	00113c23          	sd	ra,24(sp)
    800018e4:	00813823          	sd	s0,16(sp)
    800018e8:	00913423          	sd	s1,8(sp)
    800018ec:	01213023          	sd	s2,0(sp)
    800018f0:	02010413          	addi	s0,sp,32
    uint8 i=10;
    800018f4:	00a00493          	li	s1,10
    800018f8:	0380006f          	j	80001930 <_Z11workerBodyDPv+0x54>
    for(;i<13;i++){
        prtString("D: i=");
    800018fc:	00007517          	auipc	a0,0x7
    80001900:	76c50513          	addi	a0,a0,1900 # 80009068 <CONSOLE_STATUS+0x58>
    80001904:	00001097          	auipc	ra,0x1
    80001908:	188080e7          	jalr	392(ra) # 80002a8c <_Z9prtStringPKc>
        prtInt(i);
    8000190c:	00048513          	mv	a0,s1
    80001910:	00001097          	auipc	ra,0x1
    80001914:	1ec080e7          	jalr	492(ra) # 80002afc <_Z6prtIntm>
        prtString("\n");
    80001918:	00008517          	auipc	a0,0x8
    8000191c:	82850513          	addi	a0,a0,-2008 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80001920:	00001097          	auipc	ra,0x1
    80001924:	16c080e7          	jalr	364(ra) # 80002a8c <_Z9prtStringPKc>
    for(;i<13;i++){
    80001928:	0014849b          	addiw	s1,s1,1
    8000192c:	0ff4f493          	andi	s1,s1,255
    80001930:	00c00793          	li	a5,12
    80001934:	fc97f4e3          	bgeu	a5,s1,800018fc <_Z11workerBodyDPv+0x20>
    }

    prtString("D: yield\n");
    80001938:	00007517          	auipc	a0,0x7
    8000193c:	73850513          	addi	a0,a0,1848 # 80009070 <CONSOLE_STATUS+0x60>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	14c080e7          	jalr	332(ra) # 80002a8c <_Z9prtStringPKc>
    __asm__("li t1, 5");
    80001948:	00500313          	li	t1,5
    TCB::yield();
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	c2c080e7          	jalr	-980(ra) # 80002578 <_ZN3TCB5yieldEv>
    printString("B: t1=");
    printInteger(t1);
    printString("\n");
     */

    uint64 result= fibonacci(23);
    80001954:	01700513          	li	a0,23
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ddc080e7          	jalr	-548(ra) # 80001734 <_Z9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    prtString("D: fibonaci=");
    80001964:	00007517          	auipc	a0,0x7
    80001968:	71c50513          	addi	a0,a0,1820 # 80009080 <CONSOLE_STATUS+0x70>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	120080e7          	jalr	288(ra) # 80002a8c <_Z9prtStringPKc>
    prtInt(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	184080e7          	jalr	388(ra) # 80002afc <_Z6prtIntm>
    prtString("\n");
    80001980:	00007517          	auipc	a0,0x7
    80001984:	7c050513          	addi	a0,a0,1984 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	104080e7          	jalr	260(ra) # 80002a8c <_Z9prtStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyDPv+0xec>

    for(;i<16;i++){
        prtString("D: i=");
    80001994:	00007517          	auipc	a0,0x7
    80001998:	6d450513          	addi	a0,a0,1748 # 80009068 <CONSOLE_STATUS+0x58>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	0f0080e7          	jalr	240(ra) # 80002a8c <_Z9prtStringPKc>
        prtInt(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	154080e7          	jalr	340(ra) # 80002afc <_Z6prtIntm>
        prtString("\n");
    800019b0:	00007517          	auipc	a0,0x7
    800019b4:	79050513          	addi	a0,a0,1936 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	0d4080e7          	jalr	212(ra) # 80002a8c <_Z9prtStringPKc>
    for(;i<16;i++){
    800019c0:	0014849b          	addiw	s1,s1,1
    800019c4:	0ff4f493          	andi	s1,s1,255
    800019c8:	00f00793          	li	a5,15
    800019cc:	fc97f4e3          	bgeu	a5,s1,80001994 <_Z11workerBodyDPv+0xb8>


    /*TCB::running->setFinished(true);
    TCB::yield();*/

    prtString("WorkerBodyD finished\n");
    800019d0:	00007517          	auipc	a0,0x7
    800019d4:	6c050513          	addi	a0,a0,1728 # 80009090 <CONSOLE_STATUS+0x80>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	0b4080e7          	jalr	180(ra) # 80002a8c <_Z9prtStringPKc>
}
    800019e0:	01813083          	ld	ra,24(sp)
    800019e4:	01013403          	ld	s0,16(sp)
    800019e8:	00813483          	ld	s1,8(sp)
    800019ec:	00013903          	ld	s2,0(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret

00000000800019f8 <_Z11workerBodyAPv>:


void workerBodyA(void*){
    800019f8:	fe010113          	addi	sp,sp,-32
    800019fc:	00113c23          	sd	ra,24(sp)
    80001a00:	00813823          	sd	s0,16(sp)
    80001a04:	00913423          	sd	s1,8(sp)
    80001a08:	02010413          	addi	s0,sp,32
    for (uint64 i=0;i<10;i++){
    80001a0c:	00000493          	li	s1,0
    80001a10:	0300006f          	j	80001a40 <_Z11workerBodyAPv+0x48>
        prtString("A: i=");
        prtInt(i);
        prtString("\n");
        for(uint64 j=0;j<10000;j++){
    80001a14:	00168693          	addi	a3,a3,1
    80001a18:	000027b7          	lui	a5,0x2
    80001a1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a20:	00d7ee63          	bltu	a5,a3,80001a3c <_Z11workerBodyAPv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001a24:	00000713          	li	a4,0
    80001a28:	000077b7          	lui	a5,0x7
    80001a2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a30:	fee7e2e3          	bltu	a5,a4,80001a14 <_Z11workerBodyAPv+0x1c>
    80001a34:	00170713          	addi	a4,a4,1
    80001a38:	ff1ff06f          	j	80001a28 <_Z11workerBodyAPv+0x30>
    for (uint64 i=0;i<10;i++){
    80001a3c:	00148493          	addi	s1,s1,1
    80001a40:	00900793          	li	a5,9
    80001a44:	0297ec63          	bltu	a5,s1,80001a7c <_Z11workerBodyAPv+0x84>
        prtString("A: i=");
    80001a48:	00007517          	auipc	a0,0x7
    80001a4c:	66050513          	addi	a0,a0,1632 # 800090a8 <CONSOLE_STATUS+0x98>
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	03c080e7          	jalr	60(ra) # 80002a8c <_Z9prtStringPKc>
        prtInt(i);
    80001a58:	00048513          	mv	a0,s1
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	0a0080e7          	jalr	160(ra) # 80002afc <_Z6prtIntm>
        prtString("\n");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	6dc50513          	addi	a0,a0,1756 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	020080e7          	jalr	32(ra) # 80002a8c <_Z9prtStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001a74:	00000693          	li	a3,0
    80001a78:	fa1ff06f          	j	80001a18 <_Z11workerBodyAPv+0x20>
                //busy
            }
            //TCB::yield();
        }
    }
    prtString("WorkerBodyA finished\n");
    80001a7c:	00007517          	auipc	a0,0x7
    80001a80:	63450513          	addi	a0,a0,1588 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	008080e7          	jalr	8(ra) # 80002a8c <_Z9prtStringPKc>
}
    80001a8c:	01813083          	ld	ra,24(sp)
    80001a90:	01013403          	ld	s0,16(sp)
    80001a94:	00813483          	ld	s1,8(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret

0000000080001aa0 <_Z11workerBodyBPv>:

void workerBodyB(void*){
    80001aa0:	fe010113          	addi	sp,sp,-32
    80001aa4:	00113c23          	sd	ra,24(sp)
    80001aa8:	00813823          	sd	s0,16(sp)
    80001aac:	00913423          	sd	s1,8(sp)
    80001ab0:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<16;i++){
    80001ab4:	00000493          	li	s1,0
    80001ab8:	0300006f          	j	80001ae8 <_Z11workerBodyBPv+0x48>
        printString("B: i=");
        printInt(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
    80001abc:	00168693          	addi	a3,a3,1
    80001ac0:	000027b7          	lui	a5,0x2
    80001ac4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001ac8:	00d7ee63          	bltu	a5,a3,80001ae4 <_Z11workerBodyBPv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001acc:	00000713          	li	a4,0
    80001ad0:	000077b7          	lui	a5,0x7
    80001ad4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ad8:	fee7e2e3          	bltu	a5,a4,80001abc <_Z11workerBodyBPv+0x1c>
    80001adc:	00170713          	addi	a4,a4,1
    80001ae0:	ff1ff06f          	j	80001ad0 <_Z11workerBodyBPv+0x30>
    for(uint64 i=0;i<16;i++){
    80001ae4:	00148493          	addi	s1,s1,1
    80001ae8:	00f00793          	li	a5,15
    80001aec:	0497e063          	bltu	a5,s1,80001b2c <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    80001af0:	00007517          	auipc	a0,0x7
    80001af4:	5d850513          	addi	a0,a0,1496 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001af8:	00003097          	auipc	ra,0x3
    80001afc:	538080e7          	jalr	1336(ra) # 80005030 <_Z11printStringPKc>
        printInt(i);
    80001b00:	00000613          	li	a2,0
    80001b04:	00a00593          	li	a1,10
    80001b08:	0004851b          	sext.w	a0,s1
    80001b0c:	00003097          	auipc	ra,0x3
    80001b10:	6d4080e7          	jalr	1748(ra) # 800051e0 <_Z8printIntiii>
        printString("\n");
    80001b14:	00007517          	auipc	a0,0x7
    80001b18:	62c50513          	addi	a0,a0,1580 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80001b1c:	00003097          	auipc	ra,0x3
    80001b20:	514080e7          	jalr	1300(ra) # 80005030 <_Z11printStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001b24:	00000693          	li	a3,0
    80001b28:	f99ff06f          	j	80001ac0 <_Z11workerBodyBPv+0x20>
            }
        }
    }
    prtString("WorkerBodyB finished\n");
    80001b2c:	00007517          	auipc	a0,0x7
    80001b30:	5a450513          	addi	a0,a0,1444 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	f58080e7          	jalr	-168(ra) # 80002a8c <_Z9prtStringPKc>
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN9Scheduler3putEP3TCB>:
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(TCB *t) {
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    80001b64:	00050493          	mv	s1,a0
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80001b68:	00100513          	li	a0,1
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	c5c080e7          	jalr	-932(ra) # 800027c8 <_ZN15MemoryAllocator5allocEm>
    //Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    newElem->t=t;
    80001b74:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    80001b78:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001b7c:	0000a797          	auipc	a5,0xa
    80001b80:	9947b783          	ld	a5,-1644(a5) # 8000b510 <_ZN9Scheduler5firstE>
    80001b84:	02078663          	beqz	a5,80001bb0 <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001b88:	0000a797          	auipc	a5,0xa
    80001b8c:	98878793          	addi	a5,a5,-1656 # 8000b510 <_ZN9Scheduler5firstE>
    80001b90:	0087b703          	ld	a4,8(a5)
    80001b94:	00a73423          	sd	a0,8(a4)
    80001b98:	00a7b423          	sd	a0,8(a5)
    }
}
    80001b9c:	01813083          	ld	ra,24(sp)
    80001ba0:	01013403          	ld	s0,16(sp)
    80001ba4:	00813483          	ld	s1,8(sp)
    80001ba8:	02010113          	addi	sp,sp,32
    80001bac:	00008067          	ret
        first=last=newElem;
    80001bb0:	0000a797          	auipc	a5,0xa
    80001bb4:	96078793          	addi	a5,a5,-1696 # 8000b510 <_ZN9Scheduler5firstE>
    80001bb8:	00a7b423          	sd	a0,8(a5)
    80001bbc:	00a7b023          	sd	a0,0(a5)
    80001bc0:	fddff06f          	j	80001b9c <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001bc4 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    80001bd8:	0000a517          	auipc	a0,0xa
    80001bdc:	93853503          	ld	a0,-1736(a0) # 8000b510 <_ZN9Scheduler5firstE>
    80001be0:	04050663          	beqz	a0,80001c2c <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    TCB* t=elem->t;
    80001be4:	00053483          	ld	s1,0(a0)

    MemoryAllocator::free(elem);
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	cb4080e7          	jalr	-844(ra) # 8000289c <_ZN15MemoryAllocator4freeEPv>
    //mem_free(elem);

    first=first->next;
    80001bf0:	0000a717          	auipc	a4,0xa
    80001bf4:	92070713          	addi	a4,a4,-1760 # 8000b510 <_ZN9Scheduler5firstE>
    80001bf8:	00073783          	ld	a5,0(a4)
    80001bfc:	0087b783          	ld	a5,8(a5)
    80001c00:	00f73023          	sd	a5,0(a4)
    if(first==nullptr)last=nullptr;
    80001c04:	00078e63          	beqz	a5,80001c20 <_ZN9Scheduler3getEv+0x5c>

    return t;
}
    80001c08:	00048513          	mv	a0,s1
    80001c0c:	01813083          	ld	ra,24(sp)
    80001c10:	01013403          	ld	s0,16(sp)
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	02010113          	addi	sp,sp,32
    80001c1c:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001c20:	0000a797          	auipc	a5,0xa
    80001c24:	8e07bc23          	sd	zero,-1800(a5) # 8000b518 <_ZN9Scheduler4lastE>
    80001c28:	fe1ff06f          	j	80001c08 <_ZN9Scheduler3getEv+0x44>
    if(first==nullptr)return nullptr;
    80001c2c:	00050493          	mv	s1,a0
    80001c30:	fd9ff06f          	j	80001c08 <_ZN9Scheduler3getEv+0x44>

0000000080001c34 <_Z10idleThreadPv>:
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

extern void userMain();

void idleThread(void *p) {
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00113423          	sd	ra,8(sp)
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	01010413          	addi	s0,sp,16
    while(true){ thread_dispatch(); }
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	9d0080e7          	jalr	-1584(ra) # 80001614 <_Z15thread_dispatchv>
    80001c4c:	ff9ff06f          	j	80001c44 <_Z10idleThreadPv+0x10>

0000000080001c50 <main>:
}

int main(){
    80001c50:	fb010113          	addi	sp,sp,-80
    80001c54:	04113423          	sd	ra,72(sp)
    80001c58:	04813023          	sd	s0,64(sp)
    80001c5c:	02913c23          	sd	s1,56(sp)
    80001c60:	05010413          	addi	s0,sp,80

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	da4080e7          	jalr	-604(ra) # 80002a08 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    80001c6c:	0000a797          	auipc	a5,0xa
    80001c70:	8147b783          	ld	a5,-2028(a5) # 8000b480 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c74:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001c78:	10579073          	csrw	stvec,a5
    /*thread_t* handle1=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle2=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle3=(thread_t*) mem_alloc(sizeof (thread_t));
    thread_t* handle4=(thread_t*) mem_alloc(sizeof (thread_t));*/

    thread_create(&threads[0], nullptr, nullptr);
    80001c7c:	00000613          	li	a2,0
    80001c80:	00000593          	li	a1,0
    80001c84:	fb840513          	addi	a0,s0,-72
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	8ac080e7          	jalr	-1876(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=threads[0];
    80001c90:	fb843703          	ld	a4,-72(s0)
    80001c94:	0000a797          	auipc	a5,0xa
    80001c98:	8147b783          	ld	a5,-2028(a5) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c9c:	00e7b023          	sd	a4,0(a5)
    /*thread_create( handle1, workerBodyA,nullptr);
    thread_create(handle2, workerBodyB,nullptr);
    thread_create(handle3, workerBodyC,nullptr);
    thread_create(handle4, workerBodyD,nullptr);*/

    thread_create( &threads[1], workerBodyA,nullptr);
    80001ca0:	00000613          	li	a2,0
    80001ca4:	00009597          	auipc	a1,0x9
    80001ca8:	7fc5b583          	ld	a1,2044(a1) # 8000b4a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001cac:	fc040513          	addi	a0,s0,-64
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	884080e7          	jalr	-1916(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerBodyB,nullptr);
    80001cb8:	00000613          	li	a2,0
    80001cbc:	00009597          	auipc	a1,0x9
    80001cc0:	7fc5b583          	ld	a1,2044(a1) # 8000b4b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001cc4:	fc840513          	addi	a0,s0,-56
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	86c080e7          	jalr	-1940(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyC,nullptr);
    80001cd0:	00000613          	li	a2,0
    80001cd4:	00009597          	auipc	a1,0x9
    80001cd8:	7a45b583          	ld	a1,1956(a1) # 8000b478 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cdc:	fd040513          	addi	a0,s0,-48
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	854080e7          	jalr	-1964(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[4], workerBodyD,nullptr);
    80001ce8:	00000613          	li	a2,0
    80001cec:	00009597          	auipc	a1,0x9
    80001cf0:	7d45b583          	ld	a1,2004(a1) # 8000b4c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001cf4:	fd840513          	addi	a0,s0,-40
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	83c080e7          	jalr	-1988(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001d00:	00200793          	li	a5,2
    80001d04:	1007a073          	csrs	sstatus,a5
}
    80001d08:	00c0006f          	j	80001d14 <main+0xc4>

    //while(!((*(TCB**)handle1)->isFinished() && (*(TCB**)handle2)->isFinished()&& (*(TCB**)handle3)->isFinished())&& (*(TCB**)handle4)->isFinished())
        //thread_dispatch();

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        thread_dispatch();
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	908080e7          	jalr	-1784(ra) # 80001614 <_Z15thread_dispatchv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
    80001d14:	fc043783          	ld	a5,-64(s0)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    80001d18:	0307c783          	lbu	a5,48(a5)
    80001d1c:	fe0788e3          	beqz	a5,80001d0c <main+0xbc>
    80001d20:	fc843783          	ld	a5,-56(s0)
    80001d24:	0307c783          	lbu	a5,48(a5)
    80001d28:	fe0782e3          	beqz	a5,80001d0c <main+0xbc>
    80001d2c:	fd043783          	ld	a5,-48(s0)
    80001d30:	0307c783          	lbu	a5,48(a5)
    80001d34:	fc078ce3          	beqz	a5,80001d0c <main+0xbc>
    80001d38:	fd843783          	ld	a5,-40(s0)
    80001d3c:	0307c783          	lbu	a5,48(a5)
    80001d40:	fc0786e3          	beqz	a5,80001d0c <main+0xbc>
    80001d44:	fb840493          	addi	s1,s0,-72
    80001d48:	0080006f          	j	80001d50 <main+0x100>

    for(auto &thread :threads)
    80001d4c:	00848493          	addi	s1,s1,8
    80001d50:	fe040793          	addi	a5,s0,-32
    80001d54:	00f48e63          	beq	s1,a5,80001d70 <main+0x120>
        delete thread;
    80001d58:	0004b503          	ld	a0,0(s1)
    80001d5c:	fe0508e3          	beqz	a0,80001d4c <main+0xfc>
    80001d60:	00053783          	ld	a5,0(a0)
    80001d64:	0087b783          	ld	a5,8(a5)
    80001d68:	000780e7          	jalr	a5
    80001d6c:	fe1ff06f          	j	80001d4c <main+0xfc>

    printString("Finished\n");
    80001d70:	00007517          	auipc	a0,0x7
    80001d74:	37850513          	addi	a0,a0,888 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001d78:	00003097          	auipc	ra,0x3
    80001d7c:	2b8080e7          	jalr	696(ra) # 80005030 <_Z11printStringPKc>
    TCB::newThrUserMode=true;
    Riscv::popSppSpie();
    userMain();*/

    return 0;
    80001d80:	00000513          	li	a0,0
    80001d84:	04813083          	ld	ra,72(sp)
    80001d88:	04013403          	ld	s0,64(sp)
    80001d8c:	03813483          	ld	s1,56(sp)
    80001d90:	05010113          	addi	sp,sp,80
    80001d94:	00008067          	ret

0000000080001d98 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00113423          	sd	ra,8(sp)
    80001da0:	00813023          	sd	s0,0(sp)
    80001da4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	70c080e7          	jalr	1804(ra) # 800014b4 <_Z9mem_allocm>
}
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_Znam>:

void *operator new[](uint64 n)
{
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001dd0:	fffff097          	auipc	ra,0xfffff
    80001dd4:	6e4080e7          	jalr	1764(ra) # 800014b4 <_Z9mem_allocm>
}
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	6fc080e7          	jalr	1788(ra) # 800014f4 <_Z8mem_freePv>
}
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	6d4080e7          	jalr	1748(ra) # 800014f4 <_Z8mem_freePv>
    80001e28:	00813083          	ld	ra,8(sp)
    80001e2c:	00013403          	ld	s0,0(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_ZN6ThreadD1Ev>:

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001e38:	00009797          	auipc	a5,0x9
    80001e3c:	43078793          	addi	a5,a5,1072 # 8000b268 <_ZTV6Thread+0x10>
    80001e40:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001e44:	00853503          	ld	a0,8(a0)
    80001e48:	02050863          	beqz	a0,80001e78 <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00113423          	sd	ra,8(sp)
    80001e54:	00813023          	sd	s0,0(sp)
    80001e58:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001e5c:	00053783          	ld	a5,0(a0)
    80001e60:	0087b783          	ld	a5,8(a5)
    80001e64:	000780e7          	jalr	a5
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret
    80001e78:	00008067          	ret

0000000080001e7c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00813423          	sd	s0,8(sp)
    80001e84:	01010413          	addi	s0,sp,16

}
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00113c23          	sd	ra,24(sp)
    80001e9c:	00813823          	sd	s0,16(sp)
    80001ea0:	00913423          	sd	s1,8(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0
}
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	f8c080e7          	jalr	-116(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001eb4:	00048513          	mv	a0,s1
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	f30080e7          	jalr	-208(ra) # 80001de8 <_ZdlPv>
    80001ec0:	01813083          	ld	ra,24(sp)
    80001ec4:	01013403          	ld	s0,16(sp)
    80001ec8:	00813483          	ld	s1,8(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
}
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	f04080e7          	jalr	-252(ra) # 80001de8 <_ZdlPv>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00813423          	sd	s0,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    80001f08:	00009797          	auipc	a5,0x9
    80001f0c:	36078793          	addi	a5,a5,864 # 8000b268 <_ZTV6Thread+0x10>
    80001f10:	00f53023          	sd	a5,0(a0)
    80001f14:	00053423          	sd	zero,8(a0)
    80001f18:	00b53823          	sd	a1,16(a0)
    80001f1c:	00c53c23          	sd	a2,24(a0)
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_ZN6Thread5startEv>:
int Thread::start() {
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001f3c:	01853603          	ld	a2,24(a0)
    80001f40:	01053583          	ld	a1,16(a0)
    80001f44:	00850513          	addi	a0,a0,8
    80001f48:	fffff097          	auipc	ra,0xfffff
    80001f4c:	5ec080e7          	jalr	1516(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f50:	00813083          	ld	ra,8(sp)
    80001f54:	00013403          	ld	s0,0(sp)
    80001f58:	01010113          	addi	sp,sp,16
    80001f5c:	00008067          	ret

0000000080001f60 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f60:	ff010113          	addi	sp,sp,-16
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	00813023          	sd	s0,0(sp)
    80001f6c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	6a4080e7          	jalr	1700(ra) # 80001614 <_Z15thread_dispatchv>
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	00009797          	auipc	a5,0x9
    80001f98:	2d478793          	addi	a5,a5,724 # 8000b268 <_ZTV6Thread+0x10>
    80001f9c:	00f53023          	sd	a5,0(a0)
}
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN6Thread4joinEv>:
void Thread::join() {
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00813423          	sd	s0,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
}
    80001fb8:	00813403          	ld	s0,8(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00813423          	sd	s0,8(sp)
    80001fcc:	01010413          	addi	s0,sp,16
}
    80001fd0:	00000513          	li	a0,0
    80001fd4:	00813403          	ld	s0,8(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00813423          	sd	s0,8(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    80001fec:	00009797          	auipc	a5,0x9
    80001ff0:	2a478793          	addi	a5,a5,676 # 8000b290 <_ZTV9Semaphore+0x10>
    80001ff4:	00f53023          	sd	a5,0(a0)
}
    80001ff8:	00813403          	ld	s0,8(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002010:	00000513          	li	a0,0
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813423          	sd	s0,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    return 0;
}
    8000202c:	00000513          	li	a0,0
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16

}
    80002048:	00813403          	ld	s0,8(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002054:	fe010113          	addi	sp,sp,-32
    80002058:	00113c23          	sd	ra,24(sp)
    8000205c:	00813823          	sd	s0,16(sp)
    80002060:	00913423          	sd	s1,8(sp)
    80002064:	02010413          	addi	s0,sp,32
    80002068:	00050493          	mv	s1,a0
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	f1c080e7          	jalr	-228(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80002074:	00009797          	auipc	a5,0x9
    80002078:	1c478793          	addi	a5,a5,452 # 8000b238 <_ZTV14PeriodicThread+0x10>
    8000207c:	00f4b023          	sd	a5,0(s1)

}
    80002080:	01813083          	ld	ra,24(sp)
    80002084:	01013403          	ld	s0,16(sp)
    80002088:	00813483          	ld	s1,8(sp)
    8000208c:	02010113          	addi	sp,sp,32
    80002090:	00008067          	ret

0000000080002094 <_ZN7Console4getcEv>:

char Console::getc() {
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813423          	sd	s0,8(sp)
    8000209c:	01010413          	addi	s0,sp,16
    return 0;
}
    800020a0:	00000513          	li	a0,0
    800020a4:	00813403          	ld	s0,8(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN7Console4putcEc>:

void Console::putc(char) {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16

}
    800020bc:	00813403          	ld	s0,8(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00813423          	sd	s0,8(sp)
    800020d0:	01010413          	addi	s0,sp,16
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00009797          	auipc	a5,0x9
    8000210c:	13078793          	addi	a5,a5,304 # 8000b238 <_ZTV14PeriodicThread+0x10>
    80002110:	00f53023          	sd	a5,0(a0)
    80002114:	00000097          	auipc	ra,0x0
    80002118:	d24080e7          	jalr	-732(ra) # 80001e38 <_ZN6ThreadD1Ev>
    8000211c:	00813083          	ld	ra,8(sp)
    80002120:	00013403          	ld	s0,0(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_ZN14PeriodicThreadD0Ev>:
    8000212c:	fe010113          	addi	sp,sp,-32
    80002130:	00113c23          	sd	ra,24(sp)
    80002134:	00813823          	sd	s0,16(sp)
    80002138:	00913423          	sd	s1,8(sp)
    8000213c:	02010413          	addi	s0,sp,32
    80002140:	00050493          	mv	s1,a0
    80002144:	00009797          	auipc	a5,0x9
    80002148:	0f478793          	addi	a5,a5,244 # 8000b238 <_ZTV14PeriodicThread+0x10>
    8000214c:	00f53023          	sd	a5,0(a0)
    80002150:	00000097          	auipc	ra,0x0
    80002154:	ce8080e7          	jalr	-792(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80002158:	00048513          	mv	a0,s1
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	c8c080e7          	jalr	-884(ra) # 80001de8 <_ZdlPv>
    80002164:	01813083          	ld	ra,24(sp)
    80002168:	01013403          	ld	s0,16(sp)
    8000216c:	00813483          	ld	s1,8(sp)
    80002170:	02010113          	addi	sp,sp,32
    80002174:	00008067          	ret

0000000080002178 <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"



void Riscv::handleSupervisorTrap(){
    80002178:	fa010113          	addi	sp,sp,-96
    8000217c:	04113c23          	sd	ra,88(sp)
    80002180:	04813823          	sd	s0,80(sp)
    80002184:	04913423          	sd	s1,72(sp)
    80002188:	05213023          	sd	s2,64(sp)
    8000218c:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002190:	142027f3          	csrr	a5,scause
    80002194:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002198:	fa043503          	ld	a0,-96(s0)
    uint64 scause=r_scause();

    volatile uint64 a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    8000219c:	05043783          	ld	a5,80(s0)
    800021a0:	fcf43c23          	sd	a5,-40(s0)
    volatile uint64 a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800021a4:	05843783          	ld	a5,88(s0)
    800021a8:	fcf43823          	sd	a5,-48(s0)
    volatile uint64 a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    800021ac:	06043783          	ld	a5,96(s0)
    800021b0:	fcf43423          	sd	a5,-56(s0)
    volatile uint64 a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    800021b4:	06843783          	ld	a5,104(s0)
    800021b8:	fcf43023          	sd	a5,-64(s0)
    volatile uint64 a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    800021bc:	07043783          	ld	a5,112(s0)
    800021c0:	faf43c23          	sd	a5,-72(s0)

    if(scause==0x09UL || scause==0x08UL){
    800021c4:	ff850713          	addi	a4,a0,-8
    800021c8:	00100793          	li	a5,1
    800021cc:	16e7e063          	bltu	a5,a4,8000232c <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800021d0:	141027f3          	csrr	a5,sepc
    800021d4:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800021d8:	fb043483          	ld	s1,-80(s0)
        //09 iz sist rezima, 08 iz korisnickog
        uint64 sepc=r_sepc()+4;
    800021dc:	00448493          	addi	s1,s1,4

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800021e0:	100027f3          	csrr	a5,sstatus
    800021e4:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800021e8:	fa843903          	ld	s2,-88(s0)
        uint64 sstatus=r_sstatus();

        if(a0==0x01){
    800021ec:	fd843703          	ld	a4,-40(s0)
    800021f0:	00100793          	li	a5,1
    800021f4:	06f70063          	beq	a4,a5,80002254 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
            //mem_alloc
            void *ptr=MemoryAllocator::alloc(a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
        }
        else if(a0==0x02){
    800021f8:	fd843703          	ld	a4,-40(s0)
    800021fc:	00200793          	li	a5,2
    80002200:	08f70263          	beq	a4,a5,80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
            //mem_free
            int stat=MemoryAllocator::free((void*)a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }

        else if(a0==0x11){
    80002204:	fd843703          	ld	a4,-40(s0)
    80002208:	01100793          	li	a5,17
    8000220c:	08f70663          	beq	a4,a5,80002298 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                *retHandle=handle;
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
            }

        }
        else if(a0==0x12){
    80002210:	fd843703          	ld	a4,-40(s0)
    80002214:	01200793          	li	a5,18
    80002218:	0af70c63          	beq	a4,a5,800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                TCB::running->setFinished(true);
                TCB::dispatch();
                //delete exited; ovde se nikad ne vraca
            }
        }
        else if(a0==0x13){
    8000221c:	fd843703          	ld	a4,-40(s0)
    80002220:	01300793          	li	a5,19
    80002224:	0ef70063          	beq	a4,a5,80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            //thread_dispatch()
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        else if(a0==0x41){
    80002228:	fd843703          	ld	a4,-40(s0)
    8000222c:	04100793          	li	a5,65
    80002230:	0ef70663          	beq	a4,a5,8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            //char getc();
            char c=__getc();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
        }
        else if(a0==0x42){
    80002234:	fd843703          	ld	a4,-40(s0)
    80002238:	04200793          	li	a5,66
    8000223c:	02f71463          	bne	a4,a5,80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            //void putc()

            __putc((char)a1);
    80002240:	fd043503          	ld	a0,-48(s0)
    80002244:	0ff57513          	andi	a0,a0,255
    80002248:	00006097          	auipc	ra,0x6
    8000224c:	0d4080e7          	jalr	212(ra) # 8000831c <__putc>
    80002250:	0140006f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            void *ptr=MemoryAllocator::alloc(a1);
    80002254:	fd043503          	ld	a0,-48(s0)
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	570080e7          	jalr	1392(ra) # 800027c8 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80002260:	04a43823          	sd	a0,80(s0)
}
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002264:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002268:	14149073          	csrw	sepc,s1
        //print stval
        printInt(scause);
        //while(true);
    }

}
    8000226c:	05813083          	ld	ra,88(sp)
    80002270:	05013403          	ld	s0,80(sp)
    80002274:	04813483          	ld	s1,72(sp)
    80002278:	04013903          	ld	s2,64(sp)
    8000227c:	06010113          	addi	sp,sp,96
    80002280:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    80002284:	fd043503          	ld	a0,-48(s0)
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	614080e7          	jalr	1556(ra) # 8000289c <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002290:	04a43823          	sd	a0,80(s0)
    80002294:	fd1ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);
    80002298:	fc843503          	ld	a0,-56(s0)
    8000229c:	fb843583          	ld	a1,-72(s0)
    800022a0:	fc043603          	ld	a2,-64(s0)
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	420080e7          	jalr	1056(ra) # 800026c4 <_ZN3TCB12createThreadEPFvPvEPmS0_>
            if(!handle){
    800022ac:	00050c63          	beqz	a0,800022c4 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
                TCB** retHandle=(TCB**)a1;
    800022b0:	fd043783          	ld	a5,-48(s0)
                *retHandle=handle;
    800022b4:	00a7b023          	sd	a0,0(a5)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    800022b8:	00000793          	li	a5,0
    800022bc:	04f43823          	sd	a5,80(s0)
    800022c0:	fa5ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    800022c4:	fff00793          	li	a5,-1
    800022c8:	04f43823          	sd	a5,80(s0)
    800022cc:	f99ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            if(TCB::running->isFinished()){
    800022d0:	00009797          	auipc	a5,0x9
    800022d4:	1d87b783          	ld	a5,472(a5) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800022d8:	0007b783          	ld	a5,0(a5)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    800022dc:	0307c703          	lbu	a4,48(a5)
    800022e0:	00070863          	beqz	a4,800022f0 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    800022e4:	fff00793          	li	a5,-1
    800022e8:	04f43823          	sd	a5,80(s0)
    800022ec:	f79ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    800022f0:	00100713          	li	a4,1
    800022f4:	02e78823          	sb	a4,48(a5)
                TCB::dispatch();
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	218080e7          	jalr	536(ra) # 80002510 <_ZN3TCB8dispatchEv>
    80002300:	f65ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB::timeSliceCounter=0;
    80002304:	00009797          	auipc	a5,0x9
    80002308:	1847b783          	ld	a5,388(a5) # 8000b488 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000230c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002310:	00000097          	auipc	ra,0x0
    80002314:	200080e7          	jalr	512(ra) # 80002510 <_ZN3TCB8dispatchEv>
    80002318:	f4dff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            char c=__getc();
    8000231c:	00006097          	auipc	ra,0x6
    80002320:	03c080e7          	jalr	60(ra) # 80008358 <__getc>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    80002324:	04a43823          	sd	a0,80(s0)
    80002328:	f3dff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        printInt(scause);
    8000232c:	00000613          	li	a2,0
    80002330:	00a00593          	li	a1,10
    80002334:	0005051b          	sext.w	a0,a0
    80002338:	00003097          	auipc	ra,0x3
    8000233c:	ea8080e7          	jalr	-344(ra) # 800051e0 <_Z8printIntiii>
}
    80002340:	f2dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

0000000080002344 <_ZN5Riscv14timerInterruptEv>:

void Riscv::timerInterrupt() {
    80002344:	fc010113          	addi	sp,sp,-64
    80002348:	02113c23          	sd	ra,56(sp)
    8000234c:	02813823          	sd	s0,48(sp)
    80002350:	02913423          	sd	s1,40(sp)
    80002354:	03213023          	sd	s2,32(sp)
    80002358:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    8000235c:	142027f3          	csrr	a5,scause
    80002360:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002364:	fc843703          	ld	a4,-56(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
    80002368:	fff00793          	li	a5,-1
    8000236c:	03f79793          	slli	a5,a5,0x3f
    80002370:	00178793          	addi	a5,a5,1
    80002374:	00f70e63          	beq	a4,a5,80002390 <_ZN5Riscv14timerInterruptEv+0x4c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
}
    80002378:	03813083          	ld	ra,56(sp)
    8000237c:	03013403          	ld	s0,48(sp)
    80002380:	02813483          	ld	s1,40(sp)
    80002384:	02013903          	ld	s2,32(sp)
    80002388:	04010113          	addi	sp,sp,64
    8000238c:	00008067          	ret
        TCB::timeSliceCounter++;
    80002390:	00009717          	auipc	a4,0x9
    80002394:	0f873703          	ld	a4,248(a4) # 8000b488 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002398:	00073783          	ld	a5,0(a4)
    8000239c:	00178793          	addi	a5,a5,1
    800023a0:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800023a4:	00009717          	auipc	a4,0x9
    800023a8:	10473703          	ld	a4,260(a4) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800023ac:	00073703          	ld	a4,0(a4)
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    800023b0:	02873703          	ld	a4,40(a4)
    800023b4:	00e7f863          	bgeu	a5,a4,800023c4 <_ZN5Riscv14timerInterruptEv+0x80>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    800023b8:	00200793          	li	a5,2
    800023bc:	1447b073          	csrc	sip,a5
}
    800023c0:	fb9ff06f          	j	80002378 <_ZN5Riscv14timerInterruptEv+0x34>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    800023c4:	141027f3          	csrr	a5,sepc
    800023c8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800023cc:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800023d0:	100027f3          	csrr	a5,sstatus
    800023d4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800023d8:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter=0;
    800023dc:	00009797          	auipc	a5,0x9
    800023e0:	0ac7b783          	ld	a5,172(a5) # 8000b488 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023e4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	128080e7          	jalr	296(ra) # 80002510 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800023f0:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800023f4:	14149073          	csrw	sepc,s1
}
    800023f8:	fc1ff06f          	j	800023b8 <_ZN5Riscv14timerInterruptEv+0x74>

00000000800023fc <_ZN5Riscv17hardwareInterruptEv>:

void Riscv::hardwareInterrupt() {
    800023fc:	fe010113          	addi	sp,sp,-32
    80002400:	00113c23          	sd	ra,24(sp)
    80002404:	00813823          	sd	s0,16(sp)
    80002408:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    8000240c:	142027f3          	csrr	a5,scause
    80002410:	fef43423          	sd	a5,-24(s0)
    return scause;
    80002414:	fe843703          	ld	a4,-24(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80002418:	fff00793          	li	a5,-1
    8000241c:	03f79793          	slli	a5,a5,0x3f
    80002420:	00978793          	addi	a5,a5,9
    80002424:	00f70a63          	beq	a4,a5,80002438 <_ZN5Riscv17hardwareInterruptEv+0x3c>
        //prekid konzola
        console_handler();
    }
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	02010113          	addi	sp,sp,32
    80002434:	00008067          	ret
        console_handler();
    80002438:	00006097          	auipc	ra,0x6
    8000243c:	f58080e7          	jalr	-168(ra) # 80008390 <console_handler>
}
    80002440:	fe9ff06f          	j	80002428 <_ZN5Riscv17hardwareInterruptEv+0x2c>

0000000080002444 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002450:	02000793          	li	a5,32
    80002454:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(SSTATUS_SPIE);
    //Riscv::mc_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode==true){
    80002458:	00009797          	auipc	a5,0x9
    8000245c:	0407b783          	ld	a5,64(a5) # 8000b498 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002460:	0007c783          	lbu	a5,0(a5)
    80002464:	02078063          	beqz	a5,80002484 <_ZN5Riscv10popSppSpieEv+0x40>
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002468:	10000793          	li	a5,256
    8000246c:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    80002470:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002474:	10200073          	sret
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002484:	10000793          	li	a5,256
    80002488:	1007a073          	csrs	sstatus,a5
}
    8000248c:	fe5ff06f          	j	80002470 <_ZN5Riscv10popSppSpieEv+0x2c>

0000000080002490 <_ZN3TCBD1Ev>:
                                     arg(arg)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002490:	00009797          	auipc	a5,0x9
    80002494:	e2078793          	addi	a5,a5,-480 # 8000b2b0 <_ZTV3TCB+0x10>
    80002498:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    8000249c:	01053503          	ld	a0,16(a0)
    800024a0:	02050663          	beqz	a0,800024cc <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    delete[] stack;
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	95c080e7          	jalr	-1700(ra) # 80001e10 <_ZdaPv>
}
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret
    800024cc:	00008067          	ret

00000000800024d0 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    800024d0:	fe010113          	addi	sp,sp,-32
    800024d4:	00113c23          	sd	ra,24(sp)
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00913423          	sd	s1,8(sp)
    800024e0:	02010413          	addi	s0,sp,32
    800024e4:	00050493          	mv	s1,a0
}
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	fa8080e7          	jalr	-88(ra) # 80002490 <_ZN3TCBD1Ev>
    800024f0:	00048513          	mv	a0,s1
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	8f4080e7          	jalr	-1804(ra) # 80001de8 <_ZdlPv>
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002524:	00009497          	auipc	s1,0x9
    80002528:	ffc4b483          	ld	s1,-4(s1) # 8000b520 <_ZN3TCB7runningE>
        return finished;
    8000252c:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80002530:	02078c63          	beqz	a5,80002568 <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	690080e7          	jalr	1680(ra) # 80001bc4 <_ZN9Scheduler3getEv>
    8000253c:	00009797          	auipc	a5,0x9
    80002540:	fea7b223          	sd	a0,-28(a5) # 8000b520 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002544:	01850593          	addi	a1,a0,24
    80002548:	01848513          	addi	a0,s1,24
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	efc080e7          	jalr	-260(ra) # 80001448 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	02010113          	addi	sp,sp,32
    80002564:	00008067          	ret
        Scheduler::put(old);
    80002568:	00048513          	mv	a0,s1
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	5e4080e7          	jalr	1508(ra) # 80001b50 <_ZN9Scheduler3putEP3TCB>
    80002574:	fc1ff06f          	j	80002534 <_ZN3TCB8dispatchEv+0x24>

0000000080002578 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00113423          	sd	ra,8(sp)
    80002580:	00813023          	sd	s0,0(sp)
    80002584:	01010413          	addi	s0,sp,16
    Riscv::pushRegs();
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	a78080e7          	jalr	-1416(ra) # 80001000 <_ZN5Riscv8pushRegsEv>
    TCB::timeSliceCounter=0;
    80002590:	00009797          	auipc	a5,0x9
    80002594:	f807bc23          	sd	zero,-104(a5) # 8000b528 <_ZN3TCB16timeSliceCounterE>
    TCB::dispatch();
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	f78080e7          	jalr	-136(ra) # 80002510 <_ZN3TCB8dispatchEv>
    Riscv::popRegs();
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	adc080e7          	jalr	-1316(ra) # 8000107c <_ZN5Riscv7popRegsEv>
}
    800025a8:	00813083          	ld	ra,8(sp)
    800025ac:	00013403          	ld	s0,0(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_ZN3TCB13threadWrapperEv>:
    //delete running niti mozda ovde
    return 0;
}*/


void TCB::threadWrapper() {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    /*Riscv::ms_sstatus(Riscv::BitMaskSStatus::SSTATUS_SPP);
    Riscv::mc_sstatus(Riscv::BitMaskSStatus::SSTATUS_SPIE);*/
    Riscv::popSppSpie();
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	e78080e7          	jalr	-392(ra) # 80002444 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800025d4:	00009497          	auipc	s1,0x9
    800025d8:	f4c48493          	addi	s1,s1,-180 # 8000b520 <_ZN3TCB7runningE>
    800025dc:	0004b783          	ld	a5,0(s1)
    800025e0:	0087b703          	ld	a4,8(a5)
    800025e4:	0387b503          	ld	a0,56(a5)
    800025e8:	000700e7          	jalr	a4
    running->setFinished(true);
    800025ec:	0004b783          	ld	a5,0(s1)
        TCB::finished = finished;
    800025f0:	00100713          	li	a4,1
    800025f4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	f80080e7          	jalr	-128(ra) # 80002578 <_ZN3TCB5yieldEv>

}
    80002600:	01813083          	ld	ra,24(sp)
    80002604:	01013403          	ld	s0,16(sp)
    80002608:	00813483          	ld	s1,8(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret

0000000080002614 <_ZN3TCBC1EPFvPvEPmS0_m>:
                                     arg(arg)
    80002614:	00009797          	auipc	a5,0x9
    80002618:	c9c78793          	addi	a5,a5,-868 # 8000b2b0 <_ZTV3TCB+0x10>
    8000261c:	00f53023          	sd	a5,0(a0)
    80002620:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    80002624:	04058e63          	beqz	a1,80002680 <_ZN3TCBC1EPFvPvEPmS0_m+0x6c>
                                     arg(arg)
    80002628:	00c53823          	sd	a2,16(a0)
    8000262c:	00000797          	auipc	a5,0x0
    80002630:	f8c78793          	addi	a5,a5,-116 # 800025b8 <_ZN3TCB13threadWrapperEv>
    80002634:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002638:	04060863          	beqz	a2,80002688 <_ZN3TCBC1EPFvPvEPmS0_m+0x74>
    8000263c:	000087b7          	lui	a5,0x8
    80002640:	00f60633          	add	a2,a2,a5
                                     arg(arg)
    80002644:	02c53023          	sd	a2,32(a0)
    80002648:	02e53423          	sd	a4,40(a0)
    8000264c:	02050823          	sb	zero,48(a0)
    80002650:	02d53c23          	sd	a3,56(a0)
        if(body!=nullptr) Scheduler::put(this);
    80002654:	02058e63          	beqz	a1,80002690 <_ZN3TCBC1EPFvPvEPmS0_m+0x7c>
TCB::TCB(TCB::Body body, uint64* stack, void* arg, uint64 timeSlice): body(body),
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	00813023          	sd	s0,0(sp)
    80002664:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	4e8080e7          	jalr	1256(ra) # 80001b50 <_ZN9Scheduler3putEP3TCB>
    }
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    80002680:	00000613          	li	a2,0
    80002684:	fa5ff06f          	j	80002628 <_ZN3TCBC1EPFvPvEPmS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002688:	00000613          	li	a2,0
    8000268c:	fb9ff06f          	j	80002644 <_ZN3TCBC1EPFvPvEPmS0_m+0x30>
    80002690:	00008067          	ret

0000000080002694 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800026a4:	03f50513          	addi	a0,a0,63
    800026a8:	00655513          	srli	a0,a0,0x6
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	11c080e7          	jalr	284(ra) # 800027c8 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::createThread(TCB::Body body, uint64* stack, void* arg) {
    800026c4:	fd010113          	addi	sp,sp,-48
    800026c8:	02113423          	sd	ra,40(sp)
    800026cc:	02813023          	sd	s0,32(sp)
    800026d0:	00913c23          	sd	s1,24(sp)
    800026d4:	01213823          	sd	s2,16(sp)
    800026d8:	01313423          	sd	s3,8(sp)
    800026dc:	01413023          	sd	s4,0(sp)
    800026e0:	03010413          	addi	s0,sp,48
    800026e4:	00050913          	mv	s2,a0
    800026e8:	00058993          	mv	s3,a1
    800026ec:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    800026f0:	04000513          	li	a0,64
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	fa0080e7          	jalr	-96(ra) # 80002694 <_ZN3TCBnwEm>
    800026fc:	00050493          	mv	s1,a0
    80002700:	00200713          	li	a4,2
    80002704:	000a0693          	mv	a3,s4
    80002708:	00098613          	mv	a2,s3
    8000270c:	00090593          	mv	a1,s2
    80002710:	00000097          	auipc	ra,0x0
    80002714:	f04080e7          	jalr	-252(ra) # 80002614 <_ZN3TCBC1EPFvPvEPmS0_m>
    80002718:	0200006f          	j	80002738 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x74>
    8000271c:	00050913          	mv	s2,a0
    80002720:	00048513          	mv	a0,s1
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	6c4080e7          	jalr	1732(ra) # 80001de8 <_ZdlPv>
    8000272c:	00090513          	mv	a0,s2
    80002730:	0000a097          	auipc	ra,0xa
    80002734:	f28080e7          	jalr	-216(ra) # 8000c658 <_Unwind_Resume>
}
    80002738:	00048513          	mv	a0,s1
    8000273c:	02813083          	ld	ra,40(sp)
    80002740:	02013403          	ld	s0,32(sp)
    80002744:	01813483          	ld	s1,24(sp)
    80002748:	01013903          	ld	s2,16(sp)
    8000274c:	00813983          	ld	s3,8(sp)
    80002750:	00013a03          	ld	s4,0(sp)
    80002754:	03010113          	addi	sp,sp,48
    80002758:	00008067          	ret

000000008000275c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	130080e7          	jalr	304(ra) # 8000289c <_ZN15MemoryAllocator4freeEPv>
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00100793          	li	a5,1
    80002794:	00f50863          	beq	a0,a5,800027a4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret
    800027a4:	000107b7          	lui	a5,0x10
    800027a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800027ac:	fef596e3          	bne	a1,a5,80002798 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	cc07b783          	ld	a5,-832(a5) # 8000b470 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027b8:	0007b783          	ld	a5,0(a5)
    800027bc:	00009717          	auipc	a4,0x9
    800027c0:	d6f73e23          	sd	a5,-644(a4) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    800027c4:	fd5ff06f          	j	80002798 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800027c8 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00813423          	sd	s0,8(sp)
    800027d0:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    800027d4:	0a050c63          	beqz	a0,8000288c <_ZN15MemoryAllocator5allocEm+0xc4>
    800027d8:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	d5c7b783          	ld	a5,-676(a5) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    800027e4:	00000613          	li	a2,0
    while(free){
    800027e8:	00078e63          	beqz	a5,80002804 <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    800027ec:	0007b703          	ld	a4,0(a5)
    800027f0:	fff70713          	addi	a4,a4,-1
    800027f4:	00d77863          	bgeu	a4,a3,80002804 <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    800027f8:	00078613          	mv	a2,a5
        free=free->next;
    800027fc:	0087b783          	ld	a5,8(a5)
    while(free){
    80002800:	fe9ff06f          	j	800027e8 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    80002804:	08078863          	beqz	a5,80002894 <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002808:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    8000280c:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002810:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    80002814:	fff70593          	addi	a1,a4,-1
    80002818:	04d58063          	beq	a1,a3,80002858 <_ZN15MemoryAllocator5allocEm+0x90>
    8000281c:	ffe70593          	addi	a1,a4,-2
    80002820:	02d58c63          	beq	a1,a3,80002858 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    80002824:	40d70733          	sub	a4,a4,a3
    80002828:	fff70713          	addi	a4,a4,-1
    8000282c:	00100593          	li	a1,1
    80002830:	02e5fa63          	bgeu	a1,a4,80002864 <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    80002834:	00168693          	addi	a3,a3,1
    80002838:	00669593          	slli	a1,a3,0x6
    8000283c:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002840:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80002844:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002848:	02060c63          	beqz	a2,80002880 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    8000284c:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002850:	00d7b023          	sd	a3,0(a5)
    80002854:	0100006f          	j	80002864 <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002858:	00060e63          	beqz	a2,80002874 <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    8000285c:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002860:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80002864:	0007b423          	sd	zero,8(a5)
}
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret
            firstFreeSeg=free->next;
    80002874:	00009697          	auipc	a3,0x9
    80002878:	cd06b223          	sd	a6,-828(a3) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    8000287c:	fe5ff06f          	j	80002860 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80002880:	00009717          	auipc	a4,0x9
    80002884:	cab73c23          	sd	a1,-840(a4) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    80002888:	fc9ff06f          	j	80002850 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    8000288c:	00000513          	li	a0,0
    80002890:	fd9ff06f          	j	80002868 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80002894:	00078513          	mv	a0,a5
    80002898:	fd1ff06f          	j	80002868 <_ZN15MemoryAllocator5allocEm+0xa0>

000000008000289c <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    800028a8:	14050c63          	beqz	a0,80002a00 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    800028ac:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    800028b0:	00009797          	auipc	a5,0x9
    800028b4:	c887b783          	ld	a5,-888(a5) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    800028b8:	02078a63          	beqz	a5,800028ec <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    800028bc:	06f77863          	bgeu	a4,a5,8000292c <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    800028c0:	fc053603          	ld	a2,-64(a0)
    800028c4:	00661693          	slli	a3,a2,0x6
    800028c8:	00d706b3          	add	a3,a4,a3
    800028cc:	02d78a63          	beq	a5,a3,80002900 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    800028d0:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    800028d4:	00009797          	auipc	a5,0x9
    800028d8:	c6e7b223          	sd	a4,-924(a5) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    800028dc:	00000513          	li	a0,0
}
    800028e0:	00813403          	ld	s0,8(sp)
    800028e4:	01010113          	addi	sp,sp,16
    800028e8:	00008067          	ret
        freeFromAddr->next=nullptr;
    800028ec:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    800028f0:	00009797          	auipc	a5,0x9
    800028f4:	c4e7b423          	sd	a4,-952(a5) # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    800028f8:	00000513          	li	a0,0
    800028fc:	fe5ff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002900:	0007b783          	ld	a5,0(a5)
    80002904:	00f60633          	add	a2,a2,a5
    80002908:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    8000290c:	00009797          	auipc	a5,0x9
    80002910:	c2c78793          	addi	a5,a5,-980 # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    80002914:	0007b683          	ld	a3,0(a5)
    80002918:	0086b683          	ld	a3,8(a3)
    8000291c:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002920:	00e7b023          	sd	a4,0(a5)
            return 0;
    80002924:	00000513          	li	a0,0
    80002928:	fb9ff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    8000292c:	00000693          	li	a3,0
    while(nextFree){
    80002930:	00078a63          	beqz	a5,80002944 <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    80002934:	00f76863          	bltu	a4,a5,80002944 <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80002938:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    8000293c:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80002940:	ff1ff06f          	j	80002930 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    80002944:	02078a63          	beqz	a5,80002978 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002948:	0006b583          	ld	a1,0(a3)
    8000294c:	00659613          	slli	a2,a1,0x6
    80002950:	00c68633          	add	a2,a3,a2
    80002954:	04e60c63          	beq	a2,a4,800029ac <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80002958:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    8000295c:	fc053683          	ld	a3,-64(a0)
    80002960:	00669613          	slli	a2,a3,0x6
    80002964:	00c70733          	add	a4,a4,a2
    80002968:	06f70e63          	beq	a4,a5,800029e4 <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    8000296c:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80002970:	00000513          	li	a0,0
    80002974:	f6dff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002978:	0006b603          	ld	a2,0(a3)
    8000297c:	00661793          	slli	a5,a2,0x6
    80002980:	00f687b3          	add	a5,a3,a5
    80002984:	00e78a63          	beq	a5,a4,80002998 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80002988:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    8000298c:	00e6b423          	sd	a4,8(a3)
            return 0;
    80002990:	00000513          	li	a0,0
    80002994:	f4dff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80002998:	fc053783          	ld	a5,-64(a0)
    8000299c:	00f60633          	add	a2,a2,a5
    800029a0:	00c6b023          	sd	a2,0(a3)
            return 0;
    800029a4:	00000513          	li	a0,0
    800029a8:	f39ff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800029ac:	fc053703          	ld	a4,-64(a0)
    800029b0:	00e585b3          	add	a1,a1,a4
    800029b4:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800029b8:	00659713          	slli	a4,a1,0x6
    800029bc:	00e68733          	add	a4,a3,a4
    800029c0:	00f70663          	beq	a4,a5,800029cc <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    800029c4:	00000513          	li	a0,0
    800029c8:	f19ff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    800029cc:	0007b703          	ld	a4,0(a5)
    800029d0:	00e585b3          	add	a1,a1,a4
    800029d4:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    800029d8:	0087b783          	ld	a5,8(a5)
    800029dc:	00f6b423          	sd	a5,8(a3)
    800029e0:	fe5ff06f          	j	800029c4 <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    800029e4:	0007b703          	ld	a4,0(a5)
    800029e8:	00e686b3          	add	a3,a3,a4
    800029ec:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    800029f0:	0087b783          	ld	a5,8(a5)
    800029f4:	fcf53423          	sd	a5,-56(a0)
        return 0;
    800029f8:	00000513          	li	a0,0
    800029fc:	ee5ff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002a00:	fff00513          	li	a0,-1
    80002a04:	eddff06f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002a08 <_ZN15MemoryAllocator10initializeEv>:
{
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00813423          	sd	s0,8(sp)
    80002a10:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002a14:	00009797          	auipc	a5,0x9
    80002a18:	a5c7b783          	ld	a5,-1444(a5) # 8000b470 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a1c:	0007b703          	ld	a4,0(a5)
    80002a20:	00009697          	auipc	a3,0x9
    80002a24:	b1868693          	addi	a3,a3,-1256 # 8000b538 <_ZN15MemoryAllocator12firstFreeSegE>
    80002a28:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002a2c:	00009797          	auipc	a5,0x9
    80002a30:	a847b783          	ld	a5,-1404(a5) # 8000b4b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a34:	0007b783          	ld	a5,0(a5)
    80002a38:	40e787b3          	sub	a5,a5,a4
    80002a3c:	0067d793          	srli	a5,a5,0x6
    80002a40:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80002a44:	0006b783          	ld	a5,0(a3)
    80002a48:	0007b423          	sd	zero,8(a5)
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	000105b7          	lui	a1,0x10
    80002a6c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a70:	00100513          	li	a0,1
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	d10080e7          	jalr	-752(ra) # 80002784 <_Z41__static_initialization_and_destruction_0ii>
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret

0000000080002a8c <_Z9prtStringPKc>:
#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/riscv.hpp"


void prtString(char const *string){
    80002a8c:	fd010113          	addi	sp,sp,-48
    80002a90:	02113423          	sd	ra,40(sp)
    80002a94:	02813023          	sd	s0,32(sp)
    80002a98:	00913c23          	sd	s1,24(sp)
    80002a9c:	01213823          	sd	s2,16(sp)
    80002aa0:	03010413          	addi	s0,sp,48
    80002aa4:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002aa8:	100027f3          	csrr	a5,sstatus
    80002aac:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002ab0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002ab4:	00200793          	li	a5,2
    80002ab8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus=Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string!='\0'){
    80002abc:	0004c503          	lbu	a0,0(s1)
    80002ac0:	00050a63          	beqz	a0,80002ad4 <_Z9prtStringPKc+0x48>
        __putc(*string);
    80002ac4:	00006097          	auipc	ra,0x6
    80002ac8:	858080e7          	jalr	-1960(ra) # 8000831c <__putc>
        string++;
    80002acc:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002ad0:	fedff06f          	j	80002abc <_Z9prtStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002ad4:	0009091b          	sext.w	s2,s2
    80002ad8:	00297913          	andi	s2,s2,2
    80002adc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002ae0:	10092073          	csrs	sstatus,s2
}
    80002ae4:	02813083          	ld	ra,40(sp)
    80002ae8:	02013403          	ld	s0,32(sp)
    80002aec:	01813483          	ld	s1,24(sp)
    80002af0:	01013903          	ld	s2,16(sp)
    80002af4:	03010113          	addi	sp,sp,48
    80002af8:	00008067          	ret

0000000080002afc <_Z6prtIntm>:
void prtInt(uint64 integer){
    80002afc:	fc010113          	addi	sp,sp,-64
    80002b00:	02113c23          	sd	ra,56(sp)
    80002b04:	02813823          	sd	s0,48(sp)
    80002b08:	02913423          	sd	s1,40(sp)
    80002b0c:	03213023          	sd	s2,32(sp)
    80002b10:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002b14:	100027f3          	csrr	a5,sstatus
    80002b18:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b1c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002b20:	00200793          	li	a5,2
    80002b24:	1007b073          	csrc	sstatus,a5
    if(integer<0){
        neg=1;
        x=-integer;
    }else
    {
        x=integer;
    80002b28:	0005051b          	sext.w	a0,a0
    }
    i=0;
    80002b2c:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    80002b30:	00a00613          	li	a2,10
    80002b34:	02c5773b          	remuw	a4,a0,a2
    80002b38:	02071693          	slli	a3,a4,0x20
    80002b3c:	0206d693          	srli	a3,a3,0x20
    80002b40:	00006717          	auipc	a4,0x6
    80002b44:	5b870713          	addi	a4,a4,1464 # 800090f8 <_ZZ6prtIntmE6digits>
    80002b48:	00d70733          	add	a4,a4,a3
    80002b4c:	00074703          	lbu	a4,0(a4)
    80002b50:	fe040693          	addi	a3,s0,-32
    80002b54:	009687b3          	add	a5,a3,s1
    80002b58:	0014849b          	addiw	s1,s1,1
    80002b5c:	fee78823          	sb	a4,-16(a5)

    }while((x/=10)!=0);
    80002b60:	0005071b          	sext.w	a4,a0
    80002b64:	02c5553b          	divuw	a0,a0,a2
    80002b68:	00900793          	li	a5,9
    80002b6c:	fce7e2e3          	bltu	a5,a4,80002b30 <_Z6prtIntm+0x34>
    if(neg){
        buf[i++]='-';
    }
    while(--i>=0)
    80002b70:	fff4849b          	addiw	s1,s1,-1
    80002b74:	0004ce63          	bltz	s1,80002b90 <_Z6prtIntm+0x94>
        __putc(buf[i]);
    80002b78:	fe040793          	addi	a5,s0,-32
    80002b7c:	009787b3          	add	a5,a5,s1
    80002b80:	ff07c503          	lbu	a0,-16(a5)
    80002b84:	00005097          	auipc	ra,0x5
    80002b88:	798080e7          	jalr	1944(ra) # 8000831c <__putc>
    80002b8c:	fe5ff06f          	j	80002b70 <_Z6prtIntm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002b90:	0009091b          	sext.w	s2,s2
    80002b94:	00297913          	andi	s2,s2,2
    80002b98:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002b9c:	10092073          	csrs	sstatus,s2
}
    80002ba0:	03813083          	ld	ra,56(sp)
    80002ba4:	03013403          	ld	s0,48(sp)
    80002ba8:	02813483          	ld	s1,40(sp)
    80002bac:	02013903          	ld	s2,32(sp)
    80002bb0:	04010113          	addi	sp,sp,64
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002bb8:	fe010113          	addi	sp,sp,-32
    80002bbc:	00113c23          	sd	ra,24(sp)
    80002bc0:	00813823          	sd	s0,16(sp)
    80002bc4:	00913423          	sd	s1,8(sp)
    80002bc8:	01213023          	sd	s2,0(sp)
    80002bcc:	02010413          	addi	s0,sp,32
    80002bd0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002bd4:	00000913          	li	s2,0
    80002bd8:	00c0006f          	j	80002be4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	a38080e7          	jalr	-1480(ra) # 80001614 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	ae4080e7          	jalr	-1308(ra) # 800016c8 <_Z4getcv>
    80002bec:	0005059b          	sext.w	a1,a0
    80002bf0:	01b00793          	li	a5,27
    80002bf4:	02f58a63          	beq	a1,a5,80002c28 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002bf8:	0084b503          	ld	a0,8(s1)
    80002bfc:	00003097          	auipc	ra,0x3
    80002c00:	3e0080e7          	jalr	992(ra) # 80005fdc <_ZN6Buffer3putEi>
        i++;
    80002c04:	0019071b          	addiw	a4,s2,1
    80002c08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c0c:	0004a683          	lw	a3,0(s1)
    80002c10:	0026979b          	slliw	a5,a3,0x2
    80002c14:	00d787bb          	addw	a5,a5,a3
    80002c18:	0017979b          	slliw	a5,a5,0x1
    80002c1c:	02f767bb          	remw	a5,a4,a5
    80002c20:	fc0792e3          	bnez	a5,80002be4 <_ZL16producerKeyboardPv+0x2c>
    80002c24:	fb9ff06f          	j	80002bdc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002c28:	00100793          	li	a5,1
    80002c2c:	00009717          	auipc	a4,0x9
    80002c30:	90f72a23          	sw	a5,-1772(a4) # 8000b540 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c34:	02100593          	li	a1,33
    80002c38:	0084b503          	ld	a0,8(s1)
    80002c3c:	00003097          	auipc	ra,0x3
    80002c40:	3a0080e7          	jalr	928(ra) # 80005fdc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002c44:	0104b503          	ld	a0,16(s1)
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	a64080e7          	jalr	-1436(ra) # 800016ac <_Z10sem_signalP4_sem>
}
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	00013903          	ld	s2,0(sp)
    80002c60:	02010113          	addi	sp,sp,32
    80002c64:	00008067          	ret

0000000080002c68 <_ZL8producerPv>:

static void producer(void *arg) {
    80002c68:	fe010113          	addi	sp,sp,-32
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	00813823          	sd	s0,16(sp)
    80002c74:	00913423          	sd	s1,8(sp)
    80002c78:	01213023          	sd	s2,0(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    80002c80:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c84:	00000913          	li	s2,0
    80002c88:	00c0006f          	j	80002c94 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	988080e7          	jalr	-1656(ra) # 80001614 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	8ac7a783          	lw	a5,-1876(a5) # 8000b540 <_ZL9threadEnd>
    80002c9c:	02079e63          	bnez	a5,80002cd8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002ca0:	0004a583          	lw	a1,0(s1)
    80002ca4:	0305859b          	addiw	a1,a1,48
    80002ca8:	0084b503          	ld	a0,8(s1)
    80002cac:	00003097          	auipc	ra,0x3
    80002cb0:	330080e7          	jalr	816(ra) # 80005fdc <_ZN6Buffer3putEi>
        i++;
    80002cb4:	0019071b          	addiw	a4,s2,1
    80002cb8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002cbc:	0004a683          	lw	a3,0(s1)
    80002cc0:	0026979b          	slliw	a5,a3,0x2
    80002cc4:	00d787bb          	addw	a5,a5,a3
    80002cc8:	0017979b          	slliw	a5,a5,0x1
    80002ccc:	02f767bb          	remw	a5,a4,a5
    80002cd0:	fc0792e3          	bnez	a5,80002c94 <_ZL8producerPv+0x2c>
    80002cd4:	fb9ff06f          	j	80002c8c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002cd8:	0104b503          	ld	a0,16(s1)
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	9d0080e7          	jalr	-1584(ra) # 800016ac <_Z10sem_signalP4_sem>
}
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	00013903          	ld	s2,0(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002cfc:	fd010113          	addi	sp,sp,-48
    80002d00:	02113423          	sd	ra,40(sp)
    80002d04:	02813023          	sd	s0,32(sp)
    80002d08:	00913c23          	sd	s1,24(sp)
    80002d0c:	01213823          	sd	s2,16(sp)
    80002d10:	01313423          	sd	s3,8(sp)
    80002d14:	03010413          	addi	s0,sp,48
    80002d18:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d1c:	00000993          	li	s3,0
    80002d20:	01c0006f          	j	80002d3c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	8f0080e7          	jalr	-1808(ra) # 80001614 <_Z15thread_dispatchv>
    80002d2c:	0500006f          	j	80002d7c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002d30:	00a00513          	li	a0,10
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	9d0080e7          	jalr	-1584(ra) # 80001704 <_Z4putcc>
    while (!threadEnd) {
    80002d3c:	00009797          	auipc	a5,0x9
    80002d40:	8047a783          	lw	a5,-2044(a5) # 8000b540 <_ZL9threadEnd>
    80002d44:	06079063          	bnez	a5,80002da4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002d48:	00893503          	ld	a0,8(s2)
    80002d4c:	00003097          	auipc	ra,0x3
    80002d50:	320080e7          	jalr	800(ra) # 8000606c <_ZN6Buffer3getEv>
        i++;
    80002d54:	0019849b          	addiw	s1,s3,1
    80002d58:	0004899b          	sext.w	s3,s1
        putc(key);
    80002d5c:	0ff57513          	andi	a0,a0,255
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	9a4080e7          	jalr	-1628(ra) # 80001704 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002d68:	00092703          	lw	a4,0(s2)
    80002d6c:	0027179b          	slliw	a5,a4,0x2
    80002d70:	00e787bb          	addw	a5,a5,a4
    80002d74:	02f4e7bb          	remw	a5,s1,a5
    80002d78:	fa0786e3          	beqz	a5,80002d24 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002d7c:	05000793          	li	a5,80
    80002d80:	02f4e4bb          	remw	s1,s1,a5
    80002d84:	fa049ce3          	bnez	s1,80002d3c <_ZL8consumerPv+0x40>
    80002d88:	fa9ff06f          	j	80002d30 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002d8c:	00893503          	ld	a0,8(s2)
    80002d90:	00003097          	auipc	ra,0x3
    80002d94:	2dc080e7          	jalr	732(ra) # 8000606c <_ZN6Buffer3getEv>
        putc(key);
    80002d98:	0ff57513          	andi	a0,a0,255
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	968080e7          	jalr	-1688(ra) # 80001704 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002da4:	00893503          	ld	a0,8(s2)
    80002da8:	00003097          	auipc	ra,0x3
    80002dac:	350080e7          	jalr	848(ra) # 800060f8 <_ZN6Buffer6getCntEv>
    80002db0:	fca04ee3          	bgtz	a0,80002d8c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002db4:	01093503          	ld	a0,16(s2)
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	8f4080e7          	jalr	-1804(ra) # 800016ac <_Z10sem_signalP4_sem>
}
    80002dc0:	02813083          	ld	ra,40(sp)
    80002dc4:	02013403          	ld	s0,32(sp)
    80002dc8:	01813483          	ld	s1,24(sp)
    80002dcc:	01013903          	ld	s2,16(sp)
    80002dd0:	00813983          	ld	s3,8(sp)
    80002dd4:	03010113          	addi	sp,sp,48
    80002dd8:	00008067          	ret

0000000080002ddc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002ddc:	f9010113          	addi	sp,sp,-112
    80002de0:	06113423          	sd	ra,104(sp)
    80002de4:	06813023          	sd	s0,96(sp)
    80002de8:	04913c23          	sd	s1,88(sp)
    80002dec:	05213823          	sd	s2,80(sp)
    80002df0:	05313423          	sd	s3,72(sp)
    80002df4:	05413023          	sd	s4,64(sp)
    80002df8:	03513c23          	sd	s5,56(sp)
    80002dfc:	03613823          	sd	s6,48(sp)
    80002e00:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002e04:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002e08:	00006517          	auipc	a0,0x6
    80002e0c:	30050513          	addi	a0,a0,768 # 80009108 <_ZZ6prtIntmE6digits+0x10>
    80002e10:	00002097          	auipc	ra,0x2
    80002e14:	220080e7          	jalr	544(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80002e18:	01e00593          	li	a1,30
    80002e1c:	fa040493          	addi	s1,s0,-96
    80002e20:	00048513          	mv	a0,s1
    80002e24:	00002097          	auipc	ra,0x2
    80002e28:	294080e7          	jalr	660(ra) # 800050b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002e2c:	00048513          	mv	a0,s1
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	360080e7          	jalr	864(ra) # 80005190 <_Z11stringToIntPKc>
    80002e38:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002e3c:	00006517          	auipc	a0,0x6
    80002e40:	2ec50513          	addi	a0,a0,748 # 80009128 <_ZZ6prtIntmE6digits+0x30>
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	1ec080e7          	jalr	492(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80002e4c:	01e00593          	li	a1,30
    80002e50:	00048513          	mv	a0,s1
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	264080e7          	jalr	612(ra) # 800050b8 <_Z9getStringPci>
    n = stringToInt(input);
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00002097          	auipc	ra,0x2
    80002e64:	330080e7          	jalr	816(ra) # 80005190 <_Z11stringToIntPKc>
    80002e68:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002e6c:	00006517          	auipc	a0,0x6
    80002e70:	2dc50513          	addi	a0,a0,732 # 80009148 <_ZZ6prtIntmE6digits+0x50>
    80002e74:	00002097          	auipc	ra,0x2
    80002e78:	1bc080e7          	jalr	444(ra) # 80005030 <_Z11printStringPKc>
    80002e7c:	00000613          	li	a2,0
    80002e80:	00a00593          	li	a1,10
    80002e84:	00090513          	mv	a0,s2
    80002e88:	00002097          	auipc	ra,0x2
    80002e8c:	358080e7          	jalr	856(ra) # 800051e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002e90:	00006517          	auipc	a0,0x6
    80002e94:	2d050513          	addi	a0,a0,720 # 80009160 <_ZZ6prtIntmE6digits+0x68>
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	198080e7          	jalr	408(ra) # 80005030 <_Z11printStringPKc>
    80002ea0:	00000613          	li	a2,0
    80002ea4:	00a00593          	li	a1,10
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	334080e7          	jalr	820(ra) # 800051e0 <_Z8printIntiii>
    printString(".\n");
    80002eb4:	00006517          	auipc	a0,0x6
    80002eb8:	2c450513          	addi	a0,a0,708 # 80009178 <_ZZ6prtIntmE6digits+0x80>
    80002ebc:	00002097          	auipc	ra,0x2
    80002ec0:	174080e7          	jalr	372(ra) # 80005030 <_Z11printStringPKc>
    if(threadNum > n) {
    80002ec4:	0324c463          	blt	s1,s2,80002eec <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002ec8:	03205c63          	blez	s2,80002f00 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002ecc:	03800513          	li	a0,56
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	ec8080e7          	jalr	-312(ra) # 80001d98 <_Znwm>
    80002ed8:	00050a13          	mv	s4,a0
    80002edc:	00048593          	mv	a1,s1
    80002ee0:	00003097          	auipc	ra,0x3
    80002ee4:	060080e7          	jalr	96(ra) # 80005f40 <_ZN6BufferC1Ei>
    80002ee8:	0300006f          	j	80002f18 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002eec:	00006517          	auipc	a0,0x6
    80002ef0:	29450513          	addi	a0,a0,660 # 80009180 <_ZZ6prtIntmE6digits+0x88>
    80002ef4:	00002097          	auipc	ra,0x2
    80002ef8:	13c080e7          	jalr	316(ra) # 80005030 <_Z11printStringPKc>
        return;
    80002efc:	0140006f          	j	80002f10 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002f00:	00006517          	auipc	a0,0x6
    80002f04:	2c050513          	addi	a0,a0,704 # 800091c0 <_ZZ6prtIntmE6digits+0xc8>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	128080e7          	jalr	296(ra) # 80005030 <_Z11printStringPKc>
        return;
    80002f10:	000b0113          	mv	sp,s6
    80002f14:	1500006f          	j	80003064 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002f18:	00000593          	li	a1,0
    80002f1c:	00008517          	auipc	a0,0x8
    80002f20:	62c50513          	addi	a0,a0,1580 # 8000b548 <_ZL10waitForAll>
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	734080e7          	jalr	1844(ra) # 80001658 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002f2c:	00391793          	slli	a5,s2,0x3
    80002f30:	00f78793          	addi	a5,a5,15
    80002f34:	ff07f793          	andi	a5,a5,-16
    80002f38:	40f10133          	sub	sp,sp,a5
    80002f3c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002f40:	0019071b          	addiw	a4,s2,1
    80002f44:	00171793          	slli	a5,a4,0x1
    80002f48:	00e787b3          	add	a5,a5,a4
    80002f4c:	00379793          	slli	a5,a5,0x3
    80002f50:	00f78793          	addi	a5,a5,15
    80002f54:	ff07f793          	andi	a5,a5,-16
    80002f58:	40f10133          	sub	sp,sp,a5
    80002f5c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002f60:	00191613          	slli	a2,s2,0x1
    80002f64:	012607b3          	add	a5,a2,s2
    80002f68:	00379793          	slli	a5,a5,0x3
    80002f6c:	00f987b3          	add	a5,s3,a5
    80002f70:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002f74:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002f78:	00008717          	auipc	a4,0x8
    80002f7c:	5d073703          	ld	a4,1488(a4) # 8000b548 <_ZL10waitForAll>
    80002f80:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002f84:	00078613          	mv	a2,a5
    80002f88:	00000597          	auipc	a1,0x0
    80002f8c:	d7458593          	addi	a1,a1,-652 # 80002cfc <_ZL8consumerPv>
    80002f90:	f9840513          	addi	a0,s0,-104
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	5a0080e7          	jalr	1440(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f9c:	00000493          	li	s1,0
    80002fa0:	0280006f          	j	80002fc8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002fa4:	00000597          	auipc	a1,0x0
    80002fa8:	c1458593          	addi	a1,a1,-1004 # 80002bb8 <_ZL16producerKeyboardPv>
                      data + i);
    80002fac:	00179613          	slli	a2,a5,0x1
    80002fb0:	00f60633          	add	a2,a2,a5
    80002fb4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002fb8:	00c98633          	add	a2,s3,a2
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	578080e7          	jalr	1400(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002fc4:	0014849b          	addiw	s1,s1,1
    80002fc8:	0524d263          	bge	s1,s2,8000300c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002fcc:	00149793          	slli	a5,s1,0x1
    80002fd0:	009787b3          	add	a5,a5,s1
    80002fd4:	00379793          	slli	a5,a5,0x3
    80002fd8:	00f987b3          	add	a5,s3,a5
    80002fdc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002fe0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002fe4:	00008717          	auipc	a4,0x8
    80002fe8:	56473703          	ld	a4,1380(a4) # 8000b548 <_ZL10waitForAll>
    80002fec:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002ff0:	00048793          	mv	a5,s1
    80002ff4:	00349513          	slli	a0,s1,0x3
    80002ff8:	00aa8533          	add	a0,s5,a0
    80002ffc:	fa9054e3          	blez	s1,80002fa4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003000:	00000597          	auipc	a1,0x0
    80003004:	c6858593          	addi	a1,a1,-920 # 80002c68 <_ZL8producerPv>
    80003008:	fa5ff06f          	j	80002fac <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	608080e7          	jalr	1544(ra) # 80001614 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003014:	00000493          	li	s1,0
    80003018:	00994e63          	blt	s2,s1,80003034 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000301c:	00008517          	auipc	a0,0x8
    80003020:	52c53503          	ld	a0,1324(a0) # 8000b548 <_ZL10waitForAll>
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	66c080e7          	jalr	1644(ra) # 80001690 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000302c:	0014849b          	addiw	s1,s1,1
    80003030:	fe9ff06f          	j	80003018 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003034:	00008517          	auipc	a0,0x8
    80003038:	51453503          	ld	a0,1300(a0) # 8000b548 <_ZL10waitForAll>
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	638080e7          	jalr	1592(ra) # 80001674 <_Z9sem_closeP4_sem>
    delete buffer;
    80003044:	000a0e63          	beqz	s4,80003060 <_Z22producerConsumer_C_APIv+0x284>
    80003048:	000a0513          	mv	a0,s4
    8000304c:	00003097          	auipc	ra,0x3
    80003050:	134080e7          	jalr	308(ra) # 80006180 <_ZN6BufferD1Ev>
    80003054:	000a0513          	mv	a0,s4
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	d90080e7          	jalr	-624(ra) # 80001de8 <_ZdlPv>
    80003060:	000b0113          	mv	sp,s6

}
    80003064:	f9040113          	addi	sp,s0,-112
    80003068:	06813083          	ld	ra,104(sp)
    8000306c:	06013403          	ld	s0,96(sp)
    80003070:	05813483          	ld	s1,88(sp)
    80003074:	05013903          	ld	s2,80(sp)
    80003078:	04813983          	ld	s3,72(sp)
    8000307c:	04013a03          	ld	s4,64(sp)
    80003080:	03813a83          	ld	s5,56(sp)
    80003084:	03013b03          	ld	s6,48(sp)
    80003088:	07010113          	addi	sp,sp,112
    8000308c:	00008067          	ret
    80003090:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003094:	000a0513          	mv	a0,s4
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	d50080e7          	jalr	-688(ra) # 80001de8 <_ZdlPv>
    800030a0:	00048513          	mv	a0,s1
    800030a4:	00009097          	auipc	ra,0x9
    800030a8:	5b4080e7          	jalr	1460(ra) # 8000c658 <_Unwind_Resume>

00000000800030ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00113c23          	sd	ra,24(sp)
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00913423          	sd	s1,8(sp)
    800030bc:	01213023          	sd	s2,0(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800030c8:	00100793          	li	a5,1
    800030cc:	02a7f863          	bgeu	a5,a0,800030fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800030d0:	00a00793          	li	a5,10
    800030d4:	02f577b3          	remu	a5,a0,a5
    800030d8:	02078e63          	beqz	a5,80003114 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800030dc:	fff48513          	addi	a0,s1,-1
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	fcc080e7          	jalr	-52(ra) # 800030ac <_ZL9fibonaccim>
    800030e8:	00050913          	mv	s2,a0
    800030ec:	ffe48513          	addi	a0,s1,-2
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	fbc080e7          	jalr	-68(ra) # 800030ac <_ZL9fibonaccim>
    800030f8:	00a90533          	add	a0,s2,a0
}
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	00013903          	ld	s2,0(sp)
    8000310c:	02010113          	addi	sp,sp,32
    80003110:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	500080e7          	jalr	1280(ra) # 80001614 <_Z15thread_dispatchv>
    8000311c:	fc1ff06f          	j	800030dc <_ZL9fibonaccim+0x30>

0000000080003120 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003120:	fe010113          	addi	sp,sp,-32
    80003124:	00113c23          	sd	ra,24(sp)
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00913423          	sd	s1,8(sp)
    80003130:	01213023          	sd	s2,0(sp)
    80003134:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003138:	00000913          	li	s2,0
    8000313c:	0380006f          	j	80003174 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	4d4080e7          	jalr	1236(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003148:	00148493          	addi	s1,s1,1
    8000314c:	000027b7          	lui	a5,0x2
    80003150:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003154:	0097ee63          	bltu	a5,s1,80003170 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003158:	00000713          	li	a4,0
    8000315c:	000077b7          	lui	a5,0x7
    80003160:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003164:	fce7eee3          	bltu	a5,a4,80003140 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003168:	00170713          	addi	a4,a4,1
    8000316c:	ff1ff06f          	j	8000315c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003170:	00190913          	addi	s2,s2,1
    80003174:	00900793          	li	a5,9
    80003178:	0527e063          	bltu	a5,s2,800031b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000317c:	00006517          	auipc	a0,0x6
    80003180:	f2c50513          	addi	a0,a0,-212 # 800090a8 <CONSOLE_STATUS+0x98>
    80003184:	00002097          	auipc	ra,0x2
    80003188:	eac080e7          	jalr	-340(ra) # 80005030 <_Z11printStringPKc>
    8000318c:	00000613          	li	a2,0
    80003190:	00a00593          	li	a1,10
    80003194:	0009051b          	sext.w	a0,s2
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	048080e7          	jalr	72(ra) # 800051e0 <_Z8printIntiii>
    800031a0:	00006517          	auipc	a0,0x6
    800031a4:	fa050513          	addi	a0,a0,-96 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800031a8:	00002097          	auipc	ra,0x2
    800031ac:	e88080e7          	jalr	-376(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800031b0:	00000493          	li	s1,0
    800031b4:	f99ff06f          	j	8000314c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800031b8:	00006517          	auipc	a0,0x6
    800031bc:	03850513          	addi	a0,a0,56 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    800031c0:	00002097          	auipc	ra,0x2
    800031c4:	e70080e7          	jalr	-400(ra) # 80005030 <_Z11printStringPKc>
    finishedA = true;
    800031c8:	00100793          	li	a5,1
    800031cc:	00008717          	auipc	a4,0x8
    800031d0:	38f70223          	sb	a5,900(a4) # 8000b550 <_ZL9finishedA>
}
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	00013903          	ld	s2,0(sp)
    800031e4:	02010113          	addi	sp,sp,32
    800031e8:	00008067          	ret

00000000800031ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800031ec:	fe010113          	addi	sp,sp,-32
    800031f0:	00113c23          	sd	ra,24(sp)
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	01213023          	sd	s2,0(sp)
    80003200:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003204:	00000913          	li	s2,0
    80003208:	0380006f          	j	80003240 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	408080e7          	jalr	1032(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003214:	00148493          	addi	s1,s1,1
    80003218:	000027b7          	lui	a5,0x2
    8000321c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003220:	0097ee63          	bltu	a5,s1,8000323c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003224:	00000713          	li	a4,0
    80003228:	000077b7          	lui	a5,0x7
    8000322c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003230:	fce7eee3          	bltu	a5,a4,8000320c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003234:	00170713          	addi	a4,a4,1
    80003238:	ff1ff06f          	j	80003228 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000323c:	00190913          	addi	s2,s2,1
    80003240:	00f00793          	li	a5,15
    80003244:	0527e063          	bltu	a5,s2,80003284 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	e8050513          	addi	a0,a0,-384 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003250:	00002097          	auipc	ra,0x2
    80003254:	de0080e7          	jalr	-544(ra) # 80005030 <_Z11printStringPKc>
    80003258:	00000613          	li	a2,0
    8000325c:	00a00593          	li	a1,10
    80003260:	0009051b          	sext.w	a0,s2
    80003264:	00002097          	auipc	ra,0x2
    80003268:	f7c080e7          	jalr	-132(ra) # 800051e0 <_Z8printIntiii>
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	ed450513          	addi	a0,a0,-300 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80003274:	00002097          	auipc	ra,0x2
    80003278:	dbc080e7          	jalr	-580(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000327c:	00000493          	li	s1,0
    80003280:	f99ff06f          	j	80003218 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003284:	00006517          	auipc	a0,0x6
    80003288:	f7c50513          	addi	a0,a0,-132 # 80009200 <_ZZ6prtIntmE6digits+0x108>
    8000328c:	00002097          	auipc	ra,0x2
    80003290:	da4080e7          	jalr	-604(ra) # 80005030 <_Z11printStringPKc>
    finishedB = true;
    80003294:	00100793          	li	a5,1
    80003298:	00008717          	auipc	a4,0x8
    8000329c:	2af70ca3          	sb	a5,697(a4) # 8000b551 <_ZL9finishedB>
    thread_dispatch();
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	374080e7          	jalr	884(ra) # 80001614 <_Z15thread_dispatchv>
}
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	00013903          	ld	s2,0(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret

00000000800032c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00113c23          	sd	ra,24(sp)
    800032c8:	00813823          	sd	s0,16(sp)
    800032cc:	00913423          	sd	s1,8(sp)
    800032d0:	01213023          	sd	s2,0(sp)
    800032d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800032d8:	00000493          	li	s1,0
    800032dc:	0400006f          	j	8000331c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800032e0:	00006517          	auipc	a0,0x6
    800032e4:	d4050513          	addi	a0,a0,-704 # 80009020 <CONSOLE_STATUS+0x10>
    800032e8:	00002097          	auipc	ra,0x2
    800032ec:	d48080e7          	jalr	-696(ra) # 80005030 <_Z11printStringPKc>
    800032f0:	00000613          	li	a2,0
    800032f4:	00a00593          	li	a1,10
    800032f8:	00048513          	mv	a0,s1
    800032fc:	00002097          	auipc	ra,0x2
    80003300:	ee4080e7          	jalr	-284(ra) # 800051e0 <_Z8printIntiii>
    80003304:	00006517          	auipc	a0,0x6
    80003308:	e3c50513          	addi	a0,a0,-452 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	d24080e7          	jalr	-732(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003314:	0014849b          	addiw	s1,s1,1
    80003318:	0ff4f493          	andi	s1,s1,255
    8000331c:	00200793          	li	a5,2
    80003320:	fc97f0e3          	bgeu	a5,s1,800032e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003324:	00006517          	auipc	a0,0x6
    80003328:	eec50513          	addi	a0,a0,-276 # 80009210 <_ZZ6prtIntmE6digits+0x118>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	d04080e7          	jalr	-764(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003334:	00700313          	li	t1,7
    thread_dispatch();
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	2dc080e7          	jalr	732(ra) # 80001614 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003340:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003344:	00006517          	auipc	a0,0x6
    80003348:	cf450513          	addi	a0,a0,-780 # 80009038 <CONSOLE_STATUS+0x28>
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	ce4080e7          	jalr	-796(ra) # 80005030 <_Z11printStringPKc>
    80003354:	00000613          	li	a2,0
    80003358:	00a00593          	li	a1,10
    8000335c:	0009051b          	sext.w	a0,s2
    80003360:	00002097          	auipc	ra,0x2
    80003364:	e80080e7          	jalr	-384(ra) # 800051e0 <_Z8printIntiii>
    80003368:	00006517          	auipc	a0,0x6
    8000336c:	dd850513          	addi	a0,a0,-552 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80003370:	00002097          	auipc	ra,0x2
    80003374:	cc0080e7          	jalr	-832(ra) # 80005030 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003378:	00c00513          	li	a0,12
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	d30080e7          	jalr	-720(ra) # 800030ac <_ZL9fibonaccim>
    80003384:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003388:	00006517          	auipc	a0,0x6
    8000338c:	cb850513          	addi	a0,a0,-840 # 80009040 <CONSOLE_STATUS+0x30>
    80003390:	00002097          	auipc	ra,0x2
    80003394:	ca0080e7          	jalr	-864(ra) # 80005030 <_Z11printStringPKc>
    80003398:	00000613          	li	a2,0
    8000339c:	00a00593          	li	a1,10
    800033a0:	0009051b          	sext.w	a0,s2
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	e3c080e7          	jalr	-452(ra) # 800051e0 <_Z8printIntiii>
    800033ac:	00006517          	auipc	a0,0x6
    800033b0:	d9450513          	addi	a0,a0,-620 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800033b4:	00002097          	auipc	ra,0x2
    800033b8:	c7c080e7          	jalr	-900(ra) # 80005030 <_Z11printStringPKc>
    800033bc:	0400006f          	j	800033fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800033c0:	00006517          	auipc	a0,0x6
    800033c4:	c6050513          	addi	a0,a0,-928 # 80009020 <CONSOLE_STATUS+0x10>
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	c68080e7          	jalr	-920(ra) # 80005030 <_Z11printStringPKc>
    800033d0:	00000613          	li	a2,0
    800033d4:	00a00593          	li	a1,10
    800033d8:	00048513          	mv	a0,s1
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	e04080e7          	jalr	-508(ra) # 800051e0 <_Z8printIntiii>
    800033e4:	00006517          	auipc	a0,0x6
    800033e8:	d5c50513          	addi	a0,a0,-676 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	c44080e7          	jalr	-956(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800033f4:	0014849b          	addiw	s1,s1,1
    800033f8:	0ff4f493          	andi	s1,s1,255
    800033fc:	00500793          	li	a5,5
    80003400:	fc97f0e3          	bgeu	a5,s1,800033c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003404:	00006517          	auipc	a0,0x6
    80003408:	dec50513          	addi	a0,a0,-532 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	c24080e7          	jalr	-988(ra) # 80005030 <_Z11printStringPKc>
    finishedC = true;
    80003414:	00100793          	li	a5,1
    80003418:	00008717          	auipc	a4,0x8
    8000341c:	12f70d23          	sb	a5,314(a4) # 8000b552 <_ZL9finishedC>
    thread_dispatch();
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	1f4080e7          	jalr	500(ra) # 80001614 <_Z15thread_dispatchv>
}
    80003428:	01813083          	ld	ra,24(sp)
    8000342c:	01013403          	ld	s0,16(sp)
    80003430:	00813483          	ld	s1,8(sp)
    80003434:	00013903          	ld	s2,0(sp)
    80003438:	02010113          	addi	sp,sp,32
    8000343c:	00008067          	ret

0000000080003440 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00113c23          	sd	ra,24(sp)
    80003448:	00813823          	sd	s0,16(sp)
    8000344c:	00913423          	sd	s1,8(sp)
    80003450:	01213023          	sd	s2,0(sp)
    80003454:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003458:	00a00493          	li	s1,10
    8000345c:	0400006f          	j	8000349c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003460:	00006517          	auipc	a0,0x6
    80003464:	c0850513          	addi	a0,a0,-1016 # 80009068 <CONSOLE_STATUS+0x58>
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	bc8080e7          	jalr	-1080(ra) # 80005030 <_Z11printStringPKc>
    80003470:	00000613          	li	a2,0
    80003474:	00a00593          	li	a1,10
    80003478:	00048513          	mv	a0,s1
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	d64080e7          	jalr	-668(ra) # 800051e0 <_Z8printIntiii>
    80003484:	00006517          	auipc	a0,0x6
    80003488:	cbc50513          	addi	a0,a0,-836 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	ba4080e7          	jalr	-1116(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003494:	0014849b          	addiw	s1,s1,1
    80003498:	0ff4f493          	andi	s1,s1,255
    8000349c:	00c00793          	li	a5,12
    800034a0:	fc97f0e3          	bgeu	a5,s1,80003460 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800034a4:	00006517          	auipc	a0,0x6
    800034a8:	d7c50513          	addi	a0,a0,-644 # 80009220 <_ZZ6prtIntmE6digits+0x128>
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	b84080e7          	jalr	-1148(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800034b4:	00500313          	li	t1,5
    thread_dispatch();
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	15c080e7          	jalr	348(ra) # 80001614 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800034c0:	01000513          	li	a0,16
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	be8080e7          	jalr	-1048(ra) # 800030ac <_ZL9fibonaccim>
    800034cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800034d0:	00006517          	auipc	a0,0x6
    800034d4:	bb050513          	addi	a0,a0,-1104 # 80009080 <CONSOLE_STATUS+0x70>
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	b58080e7          	jalr	-1192(ra) # 80005030 <_Z11printStringPKc>
    800034e0:	00000613          	li	a2,0
    800034e4:	00a00593          	li	a1,10
    800034e8:	0009051b          	sext.w	a0,s2
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	cf4080e7          	jalr	-780(ra) # 800051e0 <_Z8printIntiii>
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	c4c50513          	addi	a0,a0,-948 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	b34080e7          	jalr	-1228(ra) # 80005030 <_Z11printStringPKc>
    80003504:	0400006f          	j	80003544 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	b6050513          	addi	a0,a0,-1184 # 80009068 <CONSOLE_STATUS+0x58>
    80003510:	00002097          	auipc	ra,0x2
    80003514:	b20080e7          	jalr	-1248(ra) # 80005030 <_Z11printStringPKc>
    80003518:	00000613          	li	a2,0
    8000351c:	00a00593          	li	a1,10
    80003520:	00048513          	mv	a0,s1
    80003524:	00002097          	auipc	ra,0x2
    80003528:	cbc080e7          	jalr	-836(ra) # 800051e0 <_Z8printIntiii>
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	c1450513          	addi	a0,a0,-1004 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80003534:	00002097          	auipc	ra,0x2
    80003538:	afc080e7          	jalr	-1284(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000353c:	0014849b          	addiw	s1,s1,1
    80003540:	0ff4f493          	andi	s1,s1,255
    80003544:	00f00793          	li	a5,15
    80003548:	fc97f0e3          	bgeu	a5,s1,80003508 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000354c:	00006517          	auipc	a0,0x6
    80003550:	ce450513          	addi	a0,a0,-796 # 80009230 <_ZZ6prtIntmE6digits+0x138>
    80003554:	00002097          	auipc	ra,0x2
    80003558:	adc080e7          	jalr	-1316(ra) # 80005030 <_Z11printStringPKc>
    finishedD = true;
    8000355c:	00100793          	li	a5,1
    80003560:	00008717          	auipc	a4,0x8
    80003564:	fef709a3          	sb	a5,-13(a4) # 8000b553 <_ZL9finishedD>
    thread_dispatch();
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	0ac080e7          	jalr	172(ra) # 80001614 <_Z15thread_dispatchv>
}
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00813483          	ld	s1,8(sp)
    8000357c:	00013903          	ld	s2,0(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003588:	fc010113          	addi	sp,sp,-64
    8000358c:	02113c23          	sd	ra,56(sp)
    80003590:	02813823          	sd	s0,48(sp)
    80003594:	02913423          	sd	s1,40(sp)
    80003598:	03213023          	sd	s2,32(sp)
    8000359c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800035a0:	02000513          	li	a0,32
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	7f4080e7          	jalr	2036(ra) # 80001d98 <_Znwm>
    800035ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	9d8080e7          	jalr	-1576(ra) # 80001f88 <_ZN6ThreadC1Ev>
    800035b8:	00008797          	auipc	a5,0x8
    800035bc:	d1878793          	addi	a5,a5,-744 # 8000b2d0 <_ZTV7WorkerA+0x10>
    800035c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800035c4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	c7850513          	addi	a0,a0,-904 # 80009240 <_ZZ6prtIntmE6digits+0x148>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	a60080e7          	jalr	-1440(ra) # 80005030 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800035d8:	02000513          	li	a0,32
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	7bc080e7          	jalr	1980(ra) # 80001d98 <_Znwm>
    800035e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	9a0080e7          	jalr	-1632(ra) # 80001f88 <_ZN6ThreadC1Ev>
    800035f0:	00008797          	auipc	a5,0x8
    800035f4:	d0878793          	addi	a5,a5,-760 # 8000b2f8 <_ZTV7WorkerB+0x10>
    800035f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800035fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003600:	00006517          	auipc	a0,0x6
    80003604:	c5850513          	addi	a0,a0,-936 # 80009258 <_ZZ6prtIntmE6digits+0x160>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	a28080e7          	jalr	-1496(ra) # 80005030 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003610:	02000513          	li	a0,32
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	784080e7          	jalr	1924(ra) # 80001d98 <_Znwm>
    8000361c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	968080e7          	jalr	-1688(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003628:	00008797          	auipc	a5,0x8
    8000362c:	cf878793          	addi	a5,a5,-776 # 8000b320 <_ZTV7WorkerC+0x10>
    80003630:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003634:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003638:	00006517          	auipc	a0,0x6
    8000363c:	c3850513          	addi	a0,a0,-968 # 80009270 <_ZZ6prtIntmE6digits+0x178>
    80003640:	00002097          	auipc	ra,0x2
    80003644:	9f0080e7          	jalr	-1552(ra) # 80005030 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003648:	02000513          	li	a0,32
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	74c080e7          	jalr	1868(ra) # 80001d98 <_Znwm>
    80003654:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	930080e7          	jalr	-1744(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003660:	00008797          	auipc	a5,0x8
    80003664:	ce878793          	addi	a5,a5,-792 # 8000b348 <_ZTV7WorkerD+0x10>
    80003668:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000366c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003670:	00006517          	auipc	a0,0x6
    80003674:	c1850513          	addi	a0,a0,-1000 # 80009288 <_ZZ6prtIntmE6digits+0x190>
    80003678:	00002097          	auipc	ra,0x2
    8000367c:	9b8080e7          	jalr	-1608(ra) # 80005030 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003680:	00000493          	li	s1,0
    80003684:	00300793          	li	a5,3
    80003688:	0297c663          	blt	a5,s1,800036b4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000368c:	00349793          	slli	a5,s1,0x3
    80003690:	fe040713          	addi	a4,s0,-32
    80003694:	00f707b3          	add	a5,a4,a5
    80003698:	fe07b503          	ld	a0,-32(a5)
    8000369c:	fffff097          	auipc	ra,0xfffff
    800036a0:	890080e7          	jalr	-1904(ra) # 80001f2c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800036a4:	0014849b          	addiw	s1,s1,1
    800036a8:	fddff06f          	j	80003684 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800036ac:	fffff097          	auipc	ra,0xfffff
    800036b0:	8b4080e7          	jalr	-1868(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800036b4:	00008797          	auipc	a5,0x8
    800036b8:	e9c7c783          	lbu	a5,-356(a5) # 8000b550 <_ZL9finishedA>
    800036bc:	fe0788e3          	beqz	a5,800036ac <_Z20Threads_CPP_API_testv+0x124>
    800036c0:	00008797          	auipc	a5,0x8
    800036c4:	e917c783          	lbu	a5,-367(a5) # 8000b551 <_ZL9finishedB>
    800036c8:	fe0782e3          	beqz	a5,800036ac <_Z20Threads_CPP_API_testv+0x124>
    800036cc:	00008797          	auipc	a5,0x8
    800036d0:	e867c783          	lbu	a5,-378(a5) # 8000b552 <_ZL9finishedC>
    800036d4:	fc078ce3          	beqz	a5,800036ac <_Z20Threads_CPP_API_testv+0x124>
    800036d8:	00008797          	auipc	a5,0x8
    800036dc:	e7b7c783          	lbu	a5,-389(a5) # 8000b553 <_ZL9finishedD>
    800036e0:	fc0786e3          	beqz	a5,800036ac <_Z20Threads_CPP_API_testv+0x124>
    800036e4:	fc040493          	addi	s1,s0,-64
    800036e8:	0080006f          	j	800036f0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800036ec:	00848493          	addi	s1,s1,8
    800036f0:	fe040793          	addi	a5,s0,-32
    800036f4:	08f48663          	beq	s1,a5,80003780 <_Z20Threads_CPP_API_testv+0x1f8>
    800036f8:	0004b503          	ld	a0,0(s1)
    800036fc:	fe0508e3          	beqz	a0,800036ec <_Z20Threads_CPP_API_testv+0x164>
    80003700:	00053783          	ld	a5,0(a0)
    80003704:	0087b783          	ld	a5,8(a5)
    80003708:	000780e7          	jalr	a5
    8000370c:	fe1ff06f          	j	800036ec <_Z20Threads_CPP_API_testv+0x164>
    80003710:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003714:	00048513          	mv	a0,s1
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	6d0080e7          	jalr	1744(ra) # 80001de8 <_ZdlPv>
    80003720:	00090513          	mv	a0,s2
    80003724:	00009097          	auipc	ra,0x9
    80003728:	f34080e7          	jalr	-204(ra) # 8000c658 <_Unwind_Resume>
    8000372c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003730:	00048513          	mv	a0,s1
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	6b4080e7          	jalr	1716(ra) # 80001de8 <_ZdlPv>
    8000373c:	00090513          	mv	a0,s2
    80003740:	00009097          	auipc	ra,0x9
    80003744:	f18080e7          	jalr	-232(ra) # 8000c658 <_Unwind_Resume>
    80003748:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000374c:	00048513          	mv	a0,s1
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	698080e7          	jalr	1688(ra) # 80001de8 <_ZdlPv>
    80003758:	00090513          	mv	a0,s2
    8000375c:	00009097          	auipc	ra,0x9
    80003760:	efc080e7          	jalr	-260(ra) # 8000c658 <_Unwind_Resume>
    80003764:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003768:	00048513          	mv	a0,s1
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	67c080e7          	jalr	1660(ra) # 80001de8 <_ZdlPv>
    80003774:	00090513          	mv	a0,s2
    80003778:	00009097          	auipc	ra,0x9
    8000377c:	ee0080e7          	jalr	-288(ra) # 8000c658 <_Unwind_Resume>
}
    80003780:	03813083          	ld	ra,56(sp)
    80003784:	03013403          	ld	s0,48(sp)
    80003788:	02813483          	ld	s1,40(sp)
    8000378c:	02013903          	ld	s2,32(sp)
    80003790:	04010113          	addi	sp,sp,64
    80003794:	00008067          	ret

0000000080003798 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	00813023          	sd	s0,0(sp)
    800037a4:	01010413          	addi	s0,sp,16
    800037a8:	00008797          	auipc	a5,0x8
    800037ac:	b2878793          	addi	a5,a5,-1240 # 8000b2d0 <_ZTV7WorkerA+0x10>
    800037b0:	00f53023          	sd	a5,0(a0)
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	684080e7          	jalr	1668(ra) # 80001e38 <_ZN6ThreadD1Ev>
    800037bc:	00813083          	ld	ra,8(sp)
    800037c0:	00013403          	ld	s0,0(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <_ZN7WorkerAD0Ev>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	00050493          	mv	s1,a0
    800037e4:	00008797          	auipc	a5,0x8
    800037e8:	aec78793          	addi	a5,a5,-1300 # 8000b2d0 <_ZTV7WorkerA+0x10>
    800037ec:	00f53023          	sd	a5,0(a0)
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	648080e7          	jalr	1608(ra) # 80001e38 <_ZN6ThreadD1Ev>
    800037f8:	00048513          	mv	a0,s1
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	5ec080e7          	jalr	1516(ra) # 80001de8 <_ZdlPv>
    80003804:	01813083          	ld	ra,24(sp)
    80003808:	01013403          	ld	s0,16(sp)
    8000380c:	00813483          	ld	s1,8(sp)
    80003810:	02010113          	addi	sp,sp,32
    80003814:	00008067          	ret

0000000080003818 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    80003828:	00008797          	auipc	a5,0x8
    8000382c:	ad078793          	addi	a5,a5,-1328 # 8000b2f8 <_ZTV7WorkerB+0x10>
    80003830:	00f53023          	sd	a5,0(a0)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	604080e7          	jalr	1540(ra) # 80001e38 <_ZN6ThreadD1Ev>
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN7WorkerBD0Ev>:
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00050493          	mv	s1,a0
    80003864:	00008797          	auipc	a5,0x8
    80003868:	a9478793          	addi	a5,a5,-1388 # 8000b2f8 <_ZTV7WorkerB+0x10>
    8000386c:	00f53023          	sd	a5,0(a0)
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	5c8080e7          	jalr	1480(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80003878:	00048513          	mv	a0,s1
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	56c080e7          	jalr	1388(ra) # 80001de8 <_ZdlPv>
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00813483          	ld	s1,8(sp)
    80003890:	02010113          	addi	sp,sp,32
    80003894:	00008067          	ret

0000000080003898 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00113423          	sd	ra,8(sp)
    800038a0:	00813023          	sd	s0,0(sp)
    800038a4:	01010413          	addi	s0,sp,16
    800038a8:	00008797          	auipc	a5,0x8
    800038ac:	a7878793          	addi	a5,a5,-1416 # 8000b320 <_ZTV7WorkerC+0x10>
    800038b0:	00f53023          	sd	a5,0(a0)
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	584080e7          	jalr	1412(ra) # 80001e38 <_ZN6ThreadD1Ev>
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret

00000000800038cc <_ZN7WorkerCD0Ev>:
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	00050493          	mv	s1,a0
    800038e4:	00008797          	auipc	a5,0x8
    800038e8:	a3c78793          	addi	a5,a5,-1476 # 8000b320 <_ZTV7WorkerC+0x10>
    800038ec:	00f53023          	sd	a5,0(a0)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	548080e7          	jalr	1352(ra) # 80001e38 <_ZN6ThreadD1Ev>
    800038f8:	00048513          	mv	a0,s1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	4ec080e7          	jalr	1260(ra) # 80001de8 <_ZdlPv>
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	02010113          	addi	sp,sp,32
    80003914:	00008067          	ret

0000000080003918 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003918:	ff010113          	addi	sp,sp,-16
    8000391c:	00113423          	sd	ra,8(sp)
    80003920:	00813023          	sd	s0,0(sp)
    80003924:	01010413          	addi	s0,sp,16
    80003928:	00008797          	auipc	a5,0x8
    8000392c:	a2078793          	addi	a5,a5,-1504 # 8000b348 <_ZTV7WorkerD+0x10>
    80003930:	00f53023          	sd	a5,0(a0)
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	504080e7          	jalr	1284(ra) # 80001e38 <_ZN6ThreadD1Ev>
    8000393c:	00813083          	ld	ra,8(sp)
    80003940:	00013403          	ld	s0,0(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_ZN7WorkerDD0Ev>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00050493          	mv	s1,a0
    80003964:	00008797          	auipc	a5,0x8
    80003968:	9e478793          	addi	a5,a5,-1564 # 8000b348 <_ZTV7WorkerD+0x10>
    8000396c:	00f53023          	sd	a5,0(a0)
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	4c8080e7          	jalr	1224(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80003978:	00048513          	mv	a0,s1
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	46c080e7          	jalr	1132(ra) # 80001de8 <_ZdlPv>
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <_ZN7WorkerA3runEv>:
    void run() override {
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00113423          	sd	ra,8(sp)
    800039a0:	00813023          	sd	s0,0(sp)
    800039a4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800039a8:	00000593          	li	a1,0
    800039ac:	fffff097          	auipc	ra,0xfffff
    800039b0:	774080e7          	jalr	1908(ra) # 80003120 <_ZN7WorkerA11workerBodyAEPv>
    }
    800039b4:	00813083          	ld	ra,8(sp)
    800039b8:	00013403          	ld	s0,0(sp)
    800039bc:	01010113          	addi	sp,sp,16
    800039c0:	00008067          	ret

00000000800039c4 <_ZN7WorkerB3runEv>:
    void run() override {
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	00813023          	sd	s0,0(sp)
    800039d0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800039d4:	00000593          	li	a1,0
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	814080e7          	jalr	-2028(ra) # 800031ec <_ZN7WorkerB11workerBodyBEPv>
    }
    800039e0:	00813083          	ld	ra,8(sp)
    800039e4:	00013403          	ld	s0,0(sp)
    800039e8:	01010113          	addi	sp,sp,16
    800039ec:	00008067          	ret

00000000800039f0 <_ZN7WorkerC3runEv>:
    void run() override {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003a00:	00000593          	li	a1,0
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	8bc080e7          	jalr	-1860(ra) # 800032c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerD3runEv>:
    void run() override {
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003a2c:	00000593          	li	a1,0
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	a10080e7          	jalr	-1520(ra) # 80003440 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003a48:	f8010113          	addi	sp,sp,-128
    80003a4c:	06113c23          	sd	ra,120(sp)
    80003a50:	06813823          	sd	s0,112(sp)
    80003a54:	06913423          	sd	s1,104(sp)
    80003a58:	07213023          	sd	s2,96(sp)
    80003a5c:	05313c23          	sd	s3,88(sp)
    80003a60:	05413823          	sd	s4,80(sp)
    80003a64:	05513423          	sd	s5,72(sp)
    80003a68:	05613023          	sd	s6,64(sp)
    80003a6c:	03713c23          	sd	s7,56(sp)
    80003a70:	03813823          	sd	s8,48(sp)
    80003a74:	03913423          	sd	s9,40(sp)
    80003a78:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003a7c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a80:	00005517          	auipc	a0,0x5
    80003a84:	68850513          	addi	a0,a0,1672 # 80009108 <_ZZ6prtIntmE6digits+0x10>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	5a8080e7          	jalr	1448(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80003a90:	01e00593          	li	a1,30
    80003a94:	f8040493          	addi	s1,s0,-128
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	00001097          	auipc	ra,0x1
    80003aa0:	61c080e7          	jalr	1564(ra) # 800050b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	00001097          	auipc	ra,0x1
    80003aac:	6e8080e7          	jalr	1768(ra) # 80005190 <_Z11stringToIntPKc>
    80003ab0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ab4:	00005517          	auipc	a0,0x5
    80003ab8:	67450513          	addi	a0,a0,1652 # 80009128 <_ZZ6prtIntmE6digits+0x30>
    80003abc:	00001097          	auipc	ra,0x1
    80003ac0:	574080e7          	jalr	1396(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80003ac4:	01e00593          	li	a1,30
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	5ec080e7          	jalr	1516(ra) # 800050b8 <_Z9getStringPci>
    n = stringToInt(input);
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	6b8080e7          	jalr	1720(ra) # 80005190 <_Z11stringToIntPKc>
    80003ae0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	66450513          	addi	a0,a0,1636 # 80009148 <_ZZ6prtIntmE6digits+0x50>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	544080e7          	jalr	1348(ra) # 80005030 <_Z11printStringPKc>
    printInt(threadNum);
    80003af4:	00000613          	li	a2,0
    80003af8:	00a00593          	li	a1,10
    80003afc:	00098513          	mv	a0,s3
    80003b00:	00001097          	auipc	ra,0x1
    80003b04:	6e0080e7          	jalr	1760(ra) # 800051e0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003b08:	00005517          	auipc	a0,0x5
    80003b0c:	65850513          	addi	a0,a0,1624 # 80009160 <_ZZ6prtIntmE6digits+0x68>
    80003b10:	00001097          	auipc	ra,0x1
    80003b14:	520080e7          	jalr	1312(ra) # 80005030 <_Z11printStringPKc>
    printInt(n);
    80003b18:	00000613          	li	a2,0
    80003b1c:	00a00593          	li	a1,10
    80003b20:	00048513          	mv	a0,s1
    80003b24:	00001097          	auipc	ra,0x1
    80003b28:	6bc080e7          	jalr	1724(ra) # 800051e0 <_Z8printIntiii>
    printString(".\n");
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	64c50513          	addi	a0,a0,1612 # 80009178 <_ZZ6prtIntmE6digits+0x80>
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	4fc080e7          	jalr	1276(ra) # 80005030 <_Z11printStringPKc>
    if (threadNum > n) {
    80003b3c:	0334c463          	blt	s1,s3,80003b64 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003b40:	03305c63          	blez	s3,80003b78 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003b44:	03800513          	li	a0,56
    80003b48:	ffffe097          	auipc	ra,0xffffe
    80003b4c:	250080e7          	jalr	592(ra) # 80001d98 <_Znwm>
    80003b50:	00050a93          	mv	s5,a0
    80003b54:	00048593          	mv	a1,s1
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	7a8080e7          	jalr	1960(ra) # 80005300 <_ZN9BufferCPPC1Ei>
    80003b60:	0300006f          	j	80003b90 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b64:	00005517          	auipc	a0,0x5
    80003b68:	61c50513          	addi	a0,a0,1564 # 80009180 <_ZZ6prtIntmE6digits+0x88>
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	4c4080e7          	jalr	1220(ra) # 80005030 <_Z11printStringPKc>
        return;
    80003b74:	0140006f          	j	80003b88 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b78:	00005517          	auipc	a0,0x5
    80003b7c:	64850513          	addi	a0,a0,1608 # 800091c0 <_ZZ6prtIntmE6digits+0xc8>
    80003b80:	00001097          	auipc	ra,0x1
    80003b84:	4b0080e7          	jalr	1200(ra) # 80005030 <_Z11printStringPKc>
        return;
    80003b88:	000c0113          	mv	sp,s8
    80003b8c:	2140006f          	j	80003da0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003b90:	01000513          	li	a0,16
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	204080e7          	jalr	516(ra) # 80001d98 <_Znwm>
    80003b9c:	00050913          	mv	s2,a0
    80003ba0:	00000593          	li	a1,0
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	43c080e7          	jalr	1084(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    80003bac:	00008797          	auipc	a5,0x8
    80003bb0:	9b27ba23          	sd	s2,-1612(a5) # 8000b560 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003bb4:	00399793          	slli	a5,s3,0x3
    80003bb8:	00f78793          	addi	a5,a5,15
    80003bbc:	ff07f793          	andi	a5,a5,-16
    80003bc0:	40f10133          	sub	sp,sp,a5
    80003bc4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003bc8:	0019871b          	addiw	a4,s3,1
    80003bcc:	00171793          	slli	a5,a4,0x1
    80003bd0:	00e787b3          	add	a5,a5,a4
    80003bd4:	00379793          	slli	a5,a5,0x3
    80003bd8:	00f78793          	addi	a5,a5,15
    80003bdc:	ff07f793          	andi	a5,a5,-16
    80003be0:	40f10133          	sub	sp,sp,a5
    80003be4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003be8:	00199493          	slli	s1,s3,0x1
    80003bec:	013484b3          	add	s1,s1,s3
    80003bf0:	00349493          	slli	s1,s1,0x3
    80003bf4:	009b04b3          	add	s1,s6,s1
    80003bf8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003bfc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003c00:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c04:	02800513          	li	a0,40
    80003c08:	ffffe097          	auipc	ra,0xffffe
    80003c0c:	190080e7          	jalr	400(ra) # 80001d98 <_Znwm>
    80003c10:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	374080e7          	jalr	884(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003c1c:	00007797          	auipc	a5,0x7
    80003c20:	7a478793          	addi	a5,a5,1956 # 8000b3c0 <_ZTV8Consumer+0x10>
    80003c24:	00fbb023          	sd	a5,0(s7)
    80003c28:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003c2c:	000b8513          	mv	a0,s7
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	2fc080e7          	jalr	764(ra) # 80001f2c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003c38:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003c3c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003c40:	00008797          	auipc	a5,0x8
    80003c44:	9207b783          	ld	a5,-1760(a5) # 8000b560 <_ZL10waitForAll>
    80003c48:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c4c:	02800513          	li	a0,40
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	148080e7          	jalr	328(ra) # 80001d98 <_Znwm>
    80003c58:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	32c080e7          	jalr	812(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003c64:	00007797          	auipc	a5,0x7
    80003c68:	70c78793          	addi	a5,a5,1804 # 8000b370 <_ZTV16ProducerKeyborad+0x10>
    80003c6c:	00f4b023          	sd	a5,0(s1)
    80003c70:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c74:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	2b0080e7          	jalr	688(ra) # 80001f2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003c84:	00100913          	li	s2,1
    80003c88:	0300006f          	j	80003cb8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003c8c:	00007797          	auipc	a5,0x7
    80003c90:	70c78793          	addi	a5,a5,1804 # 8000b398 <_ZTV8Producer+0x10>
    80003c94:	00fcb023          	sd	a5,0(s9)
    80003c98:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003c9c:	00391793          	slli	a5,s2,0x3
    80003ca0:	00fa07b3          	add	a5,s4,a5
    80003ca4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ca8:	000c8513          	mv	a0,s9
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	280080e7          	jalr	640(ra) # 80001f2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003cb4:	0019091b          	addiw	s2,s2,1
    80003cb8:	05395263          	bge	s2,s3,80003cfc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003cbc:	00191493          	slli	s1,s2,0x1
    80003cc0:	012484b3          	add	s1,s1,s2
    80003cc4:	00349493          	slli	s1,s1,0x3
    80003cc8:	009b04b3          	add	s1,s6,s1
    80003ccc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003cd0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003cd4:	00008797          	auipc	a5,0x8
    80003cd8:	88c7b783          	ld	a5,-1908(a5) # 8000b560 <_ZL10waitForAll>
    80003cdc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ce0:	02800513          	li	a0,40
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	0b4080e7          	jalr	180(ra) # 80001d98 <_Znwm>
    80003cec:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	298080e7          	jalr	664(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80003cf8:	f95ff06f          	j	80003c8c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	264080e7          	jalr	612(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d04:	00000493          	li	s1,0
    80003d08:	0099ce63          	blt	s3,s1,80003d24 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003d0c:	00008517          	auipc	a0,0x8
    80003d10:	85453503          	ld	a0,-1964(a0) # 8000b560 <_ZL10waitForAll>
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	2f0080e7          	jalr	752(ra) # 80002004 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d1c:	0014849b          	addiw	s1,s1,1
    80003d20:	fe9ff06f          	j	80003d08 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003d24:	00008517          	auipc	a0,0x8
    80003d28:	83c53503          	ld	a0,-1988(a0) # 8000b560 <_ZL10waitForAll>
    80003d2c:	00050863          	beqz	a0,80003d3c <_Z20testConsumerProducerv+0x2f4>
    80003d30:	00053783          	ld	a5,0(a0)
    80003d34:	0087b783          	ld	a5,8(a5)
    80003d38:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003d3c:	00000493          	li	s1,0
    80003d40:	0080006f          	j	80003d48 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003d44:	0014849b          	addiw	s1,s1,1
    80003d48:	0334d263          	bge	s1,s3,80003d6c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003d4c:	00349793          	slli	a5,s1,0x3
    80003d50:	00fa07b3          	add	a5,s4,a5
    80003d54:	0007b503          	ld	a0,0(a5)
    80003d58:	fe0506e3          	beqz	a0,80003d44 <_Z20testConsumerProducerv+0x2fc>
    80003d5c:	00053783          	ld	a5,0(a0)
    80003d60:	0087b783          	ld	a5,8(a5)
    80003d64:	000780e7          	jalr	a5
    80003d68:	fddff06f          	j	80003d44 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003d6c:	000b8a63          	beqz	s7,80003d80 <_Z20testConsumerProducerv+0x338>
    80003d70:	000bb783          	ld	a5,0(s7)
    80003d74:	0087b783          	ld	a5,8(a5)
    80003d78:	000b8513          	mv	a0,s7
    80003d7c:	000780e7          	jalr	a5
    delete buffer;
    80003d80:	000a8e63          	beqz	s5,80003d9c <_Z20testConsumerProducerv+0x354>
    80003d84:	000a8513          	mv	a0,s5
    80003d88:	00002097          	auipc	ra,0x2
    80003d8c:	870080e7          	jalr	-1936(ra) # 800055f8 <_ZN9BufferCPPD1Ev>
    80003d90:	000a8513          	mv	a0,s5
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	054080e7          	jalr	84(ra) # 80001de8 <_ZdlPv>
    80003d9c:	000c0113          	mv	sp,s8
}
    80003da0:	f8040113          	addi	sp,s0,-128
    80003da4:	07813083          	ld	ra,120(sp)
    80003da8:	07013403          	ld	s0,112(sp)
    80003dac:	06813483          	ld	s1,104(sp)
    80003db0:	06013903          	ld	s2,96(sp)
    80003db4:	05813983          	ld	s3,88(sp)
    80003db8:	05013a03          	ld	s4,80(sp)
    80003dbc:	04813a83          	ld	s5,72(sp)
    80003dc0:	04013b03          	ld	s6,64(sp)
    80003dc4:	03813b83          	ld	s7,56(sp)
    80003dc8:	03013c03          	ld	s8,48(sp)
    80003dcc:	02813c83          	ld	s9,40(sp)
    80003dd0:	08010113          	addi	sp,sp,128
    80003dd4:	00008067          	ret
    80003dd8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003ddc:	000a8513          	mv	a0,s5
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	008080e7          	jalr	8(ra) # 80001de8 <_ZdlPv>
    80003de8:	00048513          	mv	a0,s1
    80003dec:	00009097          	auipc	ra,0x9
    80003df0:	86c080e7          	jalr	-1940(ra) # 8000c658 <_Unwind_Resume>
    80003df4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003df8:	00090513          	mv	a0,s2
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	fec080e7          	jalr	-20(ra) # 80001de8 <_ZdlPv>
    80003e04:	00048513          	mv	a0,s1
    80003e08:	00009097          	auipc	ra,0x9
    80003e0c:	850080e7          	jalr	-1968(ra) # 8000c658 <_Unwind_Resume>
    80003e10:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e14:	000b8513          	mv	a0,s7
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	fd0080e7          	jalr	-48(ra) # 80001de8 <_ZdlPv>
    80003e20:	00048513          	mv	a0,s1
    80003e24:	00009097          	auipc	ra,0x9
    80003e28:	834080e7          	jalr	-1996(ra) # 8000c658 <_Unwind_Resume>
    80003e2c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e30:	00048513          	mv	a0,s1
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	fb4080e7          	jalr	-76(ra) # 80001de8 <_ZdlPv>
    80003e3c:	00090513          	mv	a0,s2
    80003e40:	00009097          	auipc	ra,0x9
    80003e44:	818080e7          	jalr	-2024(ra) # 8000c658 <_Unwind_Resume>
    80003e48:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003e4c:	000c8513          	mv	a0,s9
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	f98080e7          	jalr	-104(ra) # 80001de8 <_ZdlPv>
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	00008097          	auipc	ra,0x8
    80003e60:	7fc080e7          	jalr	2044(ra) # 8000c658 <_Unwind_Resume>

0000000080003e64 <_ZN8Consumer3runEv>:
    void run() override {
    80003e64:	fd010113          	addi	sp,sp,-48
    80003e68:	02113423          	sd	ra,40(sp)
    80003e6c:	02813023          	sd	s0,32(sp)
    80003e70:	00913c23          	sd	s1,24(sp)
    80003e74:	01213823          	sd	s2,16(sp)
    80003e78:	01313423          	sd	s3,8(sp)
    80003e7c:	03010413          	addi	s0,sp,48
    80003e80:	00050913          	mv	s2,a0
        int i = 0;
    80003e84:	00000993          	li	s3,0
    80003e88:	0100006f          	j	80003e98 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003e8c:	00a00513          	li	a0,10
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	220080e7          	jalr	544(ra) # 800020b0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003e98:	00007797          	auipc	a5,0x7
    80003e9c:	6c07a783          	lw	a5,1728(a5) # 8000b558 <_ZL9threadEnd>
    80003ea0:	04079a63          	bnez	a5,80003ef4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003ea4:	02093783          	ld	a5,32(s2)
    80003ea8:	0087b503          	ld	a0,8(a5)
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	638080e7          	jalr	1592(ra) # 800054e4 <_ZN9BufferCPP3getEv>
            i++;
    80003eb4:	0019849b          	addiw	s1,s3,1
    80003eb8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003ebc:	0ff57513          	andi	a0,a0,255
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	1f0080e7          	jalr	496(ra) # 800020b0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003ec8:	05000793          	li	a5,80
    80003ecc:	02f4e4bb          	remw	s1,s1,a5
    80003ed0:	fc0494e3          	bnez	s1,80003e98 <_ZN8Consumer3runEv+0x34>
    80003ed4:	fb9ff06f          	j	80003e8c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003ed8:	02093783          	ld	a5,32(s2)
    80003edc:	0087b503          	ld	a0,8(a5)
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	604080e7          	jalr	1540(ra) # 800054e4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003ee8:	0ff57513          	andi	a0,a0,255
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	1c4080e7          	jalr	452(ra) # 800020b0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003ef4:	02093783          	ld	a5,32(s2)
    80003ef8:	0087b503          	ld	a0,8(a5)
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	674080e7          	jalr	1652(ra) # 80005570 <_ZN9BufferCPP6getCntEv>
    80003f04:	fca04ae3          	bgtz	a0,80003ed8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003f08:	02093783          	ld	a5,32(s2)
    80003f0c:	0107b503          	ld	a0,16(a5)
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	110080e7          	jalr	272(ra) # 80002020 <_ZN9Semaphore6signalEv>
    }
    80003f18:	02813083          	ld	ra,40(sp)
    80003f1c:	02013403          	ld	s0,32(sp)
    80003f20:	01813483          	ld	s1,24(sp)
    80003f24:	01013903          	ld	s2,16(sp)
    80003f28:	00813983          	ld	s3,8(sp)
    80003f2c:	03010113          	addi	sp,sp,48
    80003f30:	00008067          	ret

0000000080003f34 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	00007797          	auipc	a5,0x7
    80003f48:	47c78793          	addi	a5,a5,1148 # 8000b3c0 <_ZTV8Consumer+0x10>
    80003f4c:	00f53023          	sd	a5,0(a0)
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	ee8080e7          	jalr	-280(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80003f58:	00813083          	ld	ra,8(sp)
    80003f5c:	00013403          	ld	s0,0(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <_ZN8ConsumerD0Ev>:
    80003f68:	fe010113          	addi	sp,sp,-32
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00913423          	sd	s1,8(sp)
    80003f78:	02010413          	addi	s0,sp,32
    80003f7c:	00050493          	mv	s1,a0
    80003f80:	00007797          	auipc	a5,0x7
    80003f84:	44078793          	addi	a5,a5,1088 # 8000b3c0 <_ZTV8Consumer+0x10>
    80003f88:	00f53023          	sd	a5,0(a0)
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	eac080e7          	jalr	-340(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80003f94:	00048513          	mv	a0,s1
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	e50080e7          	jalr	-432(ra) # 80001de8 <_ZdlPv>
    80003fa0:	01813083          	ld	ra,24(sp)
    80003fa4:	01013403          	ld	s0,16(sp)
    80003fa8:	00813483          	ld	s1,8(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret

0000000080003fb4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00113423          	sd	ra,8(sp)
    80003fbc:	00813023          	sd	s0,0(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    80003fc4:	00007797          	auipc	a5,0x7
    80003fc8:	3ac78793          	addi	a5,a5,940 # 8000b370 <_ZTV16ProducerKeyborad+0x10>
    80003fcc:	00f53023          	sd	a5,0(a0)
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	e68080e7          	jalr	-408(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80003fd8:	00813083          	ld	ra,8(sp)
    80003fdc:	00013403          	ld	s0,0(sp)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret

0000000080003fe8 <_ZN16ProducerKeyboradD0Ev>:
    80003fe8:	fe010113          	addi	sp,sp,-32
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	02010413          	addi	s0,sp,32
    80003ffc:	00050493          	mv	s1,a0
    80004000:	00007797          	auipc	a5,0x7
    80004004:	37078793          	addi	a5,a5,880 # 8000b370 <_ZTV16ProducerKeyborad+0x10>
    80004008:	00f53023          	sd	a5,0(a0)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	e2c080e7          	jalr	-468(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004014:	00048513          	mv	a0,s1
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	dd0080e7          	jalr	-560(ra) # 80001de8 <_ZdlPv>
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	00813483          	ld	s1,8(sp)
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret

0000000080004034 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	00813023          	sd	s0,0(sp)
    80004040:	01010413          	addi	s0,sp,16
    80004044:	00007797          	auipc	a5,0x7
    80004048:	35478793          	addi	a5,a5,852 # 8000b398 <_ZTV8Producer+0x10>
    8000404c:	00f53023          	sd	a5,0(a0)
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	de8080e7          	jalr	-536(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004058:	00813083          	ld	ra,8(sp)
    8000405c:	00013403          	ld	s0,0(sp)
    80004060:	01010113          	addi	sp,sp,16
    80004064:	00008067          	ret

0000000080004068 <_ZN8ProducerD0Ev>:
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	02010413          	addi	s0,sp,32
    8000407c:	00050493          	mv	s1,a0
    80004080:	00007797          	auipc	a5,0x7
    80004084:	31878793          	addi	a5,a5,792 # 8000b398 <_ZTV8Producer+0x10>
    80004088:	00f53023          	sd	a5,0(a0)
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	dac080e7          	jalr	-596(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004094:	00048513          	mv	a0,s1
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	d50080e7          	jalr	-688(ra) # 80001de8 <_ZdlPv>
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	01013403          	ld	s0,16(sp)
    800040a8:	00813483          	ld	s1,8(sp)
    800040ac:	02010113          	addi	sp,sp,32
    800040b0:	00008067          	ret

00000000800040b4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800040b4:	fe010113          	addi	sp,sp,-32
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	00813823          	sd	s0,16(sp)
    800040c0:	00913423          	sd	s1,8(sp)
    800040c4:	02010413          	addi	s0,sp,32
    800040c8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800040cc:	ffffd097          	auipc	ra,0xffffd
    800040d0:	5fc080e7          	jalr	1532(ra) # 800016c8 <_Z4getcv>
    800040d4:	0005059b          	sext.w	a1,a0
    800040d8:	01b00793          	li	a5,27
    800040dc:	00f58c63          	beq	a1,a5,800040f4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800040e0:	0204b783          	ld	a5,32(s1)
    800040e4:	0087b503          	ld	a0,8(a5)
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	36c080e7          	jalr	876(ra) # 80005454 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800040f0:	fddff06f          	j	800040cc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800040f4:	00100793          	li	a5,1
    800040f8:	00007717          	auipc	a4,0x7
    800040fc:	46f72023          	sw	a5,1120(a4) # 8000b558 <_ZL9threadEnd>
        td->buffer->put('!');
    80004100:	0204b783          	ld	a5,32(s1)
    80004104:	02100593          	li	a1,33
    80004108:	0087b503          	ld	a0,8(a5)
    8000410c:	00001097          	auipc	ra,0x1
    80004110:	348080e7          	jalr	840(ra) # 80005454 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004114:	0204b783          	ld	a5,32(s1)
    80004118:	0107b503          	ld	a0,16(a5)
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	f04080e7          	jalr	-252(ra) # 80002020 <_ZN9Semaphore6signalEv>
    }
    80004124:	01813083          	ld	ra,24(sp)
    80004128:	01013403          	ld	s0,16(sp)
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret

0000000080004138 <_ZN8Producer3runEv>:
    void run() override {
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	01213023          	sd	s2,0(sp)
    8000414c:	02010413          	addi	s0,sp,32
    80004150:	00050493          	mv	s1,a0
        int i = 0;
    80004154:	00000913          	li	s2,0
        while (!threadEnd) {
    80004158:	00007797          	auipc	a5,0x7
    8000415c:	4007a783          	lw	a5,1024(a5) # 8000b558 <_ZL9threadEnd>
    80004160:	04079263          	bnez	a5,800041a4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004164:	0204b783          	ld	a5,32(s1)
    80004168:	0007a583          	lw	a1,0(a5)
    8000416c:	0305859b          	addiw	a1,a1,48
    80004170:	0087b503          	ld	a0,8(a5)
    80004174:	00001097          	auipc	ra,0x1
    80004178:	2e0080e7          	jalr	736(ra) # 80005454 <_ZN9BufferCPP3putEi>
            i++;
    8000417c:	0019071b          	addiw	a4,s2,1
    80004180:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004184:	0204b783          	ld	a5,32(s1)
    80004188:	0007a783          	lw	a5,0(a5)
    8000418c:	00e787bb          	addw	a5,a5,a4
    80004190:	00500513          	li	a0,5
    80004194:	02a7e53b          	remw	a0,a5,a0
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	e2c080e7          	jalr	-468(ra) # 80001fc4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800041a0:	fb9ff06f          	j	80004158 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800041a4:	0204b783          	ld	a5,32(s1)
    800041a8:	0107b503          	ld	a0,16(a5)
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	e74080e7          	jalr	-396(ra) # 80002020 <_ZN9Semaphore6signalEv>
    }
    800041b4:	01813083          	ld	ra,24(sp)
    800041b8:	01013403          	ld	s0,16(sp)
    800041bc:	00813483          	ld	s1,8(sp)
    800041c0:	00013903          	ld	s2,0(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00113c23          	sd	ra,24(sp)
    800041d4:	00813823          	sd	s0,16(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	01213023          	sd	s2,0(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800041e8:	00100793          	li	a5,1
    800041ec:	02a7f863          	bgeu	a5,a0,8000421c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800041f0:	00a00793          	li	a5,10
    800041f4:	02f577b3          	remu	a5,a0,a5
    800041f8:	02078e63          	beqz	a5,80004234 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800041fc:	fff48513          	addi	a0,s1,-1
    80004200:	00000097          	auipc	ra,0x0
    80004204:	fcc080e7          	jalr	-52(ra) # 800041cc <_ZL9fibonaccim>
    80004208:	00050913          	mv	s2,a0
    8000420c:	ffe48513          	addi	a0,s1,-2
    80004210:	00000097          	auipc	ra,0x0
    80004214:	fbc080e7          	jalr	-68(ra) # 800041cc <_ZL9fibonaccim>
    80004218:	00a90533          	add	a0,s2,a0
}
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004234:	ffffd097          	auipc	ra,0xffffd
    80004238:	3e0080e7          	jalr	992(ra) # 80001614 <_Z15thread_dispatchv>
    8000423c:	fc1ff06f          	j	800041fc <_ZL9fibonaccim+0x30>

0000000080004240 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004240:	fe010113          	addi	sp,sp,-32
    80004244:	00113c23          	sd	ra,24(sp)
    80004248:	00813823          	sd	s0,16(sp)
    8000424c:	00913423          	sd	s1,8(sp)
    80004250:	01213023          	sd	s2,0(sp)
    80004254:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004258:	00a00493          	li	s1,10
    8000425c:	0400006f          	j	8000429c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004260:	00005517          	auipc	a0,0x5
    80004264:	e0850513          	addi	a0,a0,-504 # 80009068 <CONSOLE_STATUS+0x58>
    80004268:	00001097          	auipc	ra,0x1
    8000426c:	dc8080e7          	jalr	-568(ra) # 80005030 <_Z11printStringPKc>
    80004270:	00000613          	li	a2,0
    80004274:	00a00593          	li	a1,10
    80004278:	00048513          	mv	a0,s1
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	f64080e7          	jalr	-156(ra) # 800051e0 <_Z8printIntiii>
    80004284:	00005517          	auipc	a0,0x5
    80004288:	ebc50513          	addi	a0,a0,-324 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	da4080e7          	jalr	-604(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004294:	0014849b          	addiw	s1,s1,1
    80004298:	0ff4f493          	andi	s1,s1,255
    8000429c:	00c00793          	li	a5,12
    800042a0:	fc97f0e3          	bgeu	a5,s1,80004260 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	f7c50513          	addi	a0,a0,-132 # 80009220 <_ZZ6prtIntmE6digits+0x128>
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	d84080e7          	jalr	-636(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042b4:	00500313          	li	t1,5
    thread_dispatch();
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	35c080e7          	jalr	860(ra) # 80001614 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042c0:	01000513          	li	a0,16
    800042c4:	00000097          	auipc	ra,0x0
    800042c8:	f08080e7          	jalr	-248(ra) # 800041cc <_ZL9fibonaccim>
    800042cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042d0:	00005517          	auipc	a0,0x5
    800042d4:	db050513          	addi	a0,a0,-592 # 80009080 <CONSOLE_STATUS+0x70>
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	d58080e7          	jalr	-680(ra) # 80005030 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	0009051b          	sext.w	a0,s2
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	ef4080e7          	jalr	-268(ra) # 800051e0 <_Z8printIntiii>
    800042f4:	00005517          	auipc	a0,0x5
    800042f8:	e4c50513          	addi	a0,a0,-436 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	d34080e7          	jalr	-716(ra) # 80005030 <_Z11printStringPKc>
    80004304:	0400006f          	j	80004344 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004308:	00005517          	auipc	a0,0x5
    8000430c:	d6050513          	addi	a0,a0,-672 # 80009068 <CONSOLE_STATUS+0x58>
    80004310:	00001097          	auipc	ra,0x1
    80004314:	d20080e7          	jalr	-736(ra) # 80005030 <_Z11printStringPKc>
    80004318:	00000613          	li	a2,0
    8000431c:	00a00593          	li	a1,10
    80004320:	00048513          	mv	a0,s1
    80004324:	00001097          	auipc	ra,0x1
    80004328:	ebc080e7          	jalr	-324(ra) # 800051e0 <_Z8printIntiii>
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	e1450513          	addi	a0,a0,-492 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	cfc080e7          	jalr	-772(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000433c:	0014849b          	addiw	s1,s1,1
    80004340:	0ff4f493          	andi	s1,s1,255
    80004344:	00f00793          	li	a5,15
    80004348:	fc97f0e3          	bgeu	a5,s1,80004308 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000434c:	00005517          	auipc	a0,0x5
    80004350:	ee450513          	addi	a0,a0,-284 # 80009230 <_ZZ6prtIntmE6digits+0x138>
    80004354:	00001097          	auipc	ra,0x1
    80004358:	cdc080e7          	jalr	-804(ra) # 80005030 <_Z11printStringPKc>
    finishedD = true;
    8000435c:	00100793          	li	a5,1
    80004360:	00007717          	auipc	a4,0x7
    80004364:	20f70423          	sb	a5,520(a4) # 8000b568 <_ZL9finishedD>
    thread_dispatch();
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	2ac080e7          	jalr	684(ra) # 80001614 <_Z15thread_dispatchv>
}
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	00013903          	ld	s2,0(sp)
    80004380:	02010113          	addi	sp,sp,32
    80004384:	00008067          	ret

0000000080004388 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004388:	fe010113          	addi	sp,sp,-32
    8000438c:	00113c23          	sd	ra,24(sp)
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	01213023          	sd	s2,0(sp)
    8000439c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800043a0:	00000493          	li	s1,0
    800043a4:	0400006f          	j	800043e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800043a8:	00005517          	auipc	a0,0x5
    800043ac:	c7850513          	addi	a0,a0,-904 # 80009020 <CONSOLE_STATUS+0x10>
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	c80080e7          	jalr	-896(ra) # 80005030 <_Z11printStringPKc>
    800043b8:	00000613          	li	a2,0
    800043bc:	00a00593          	li	a1,10
    800043c0:	00048513          	mv	a0,s1
    800043c4:	00001097          	auipc	ra,0x1
    800043c8:	e1c080e7          	jalr	-484(ra) # 800051e0 <_Z8printIntiii>
    800043cc:	00005517          	auipc	a0,0x5
    800043d0:	d7450513          	addi	a0,a0,-652 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	c5c080e7          	jalr	-932(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800043dc:	0014849b          	addiw	s1,s1,1
    800043e0:	0ff4f493          	andi	s1,s1,255
    800043e4:	00200793          	li	a5,2
    800043e8:	fc97f0e3          	bgeu	a5,s1,800043a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800043ec:	00005517          	auipc	a0,0x5
    800043f0:	e2450513          	addi	a0,a0,-476 # 80009210 <_ZZ6prtIntmE6digits+0x118>
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	c3c080e7          	jalr	-964(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800043fc:	00700313          	li	t1,7
    thread_dispatch();
    80004400:	ffffd097          	auipc	ra,0xffffd
    80004404:	214080e7          	jalr	532(ra) # 80001614 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004408:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	c2c50513          	addi	a0,a0,-980 # 80009038 <CONSOLE_STATUS+0x28>
    80004414:	00001097          	auipc	ra,0x1
    80004418:	c1c080e7          	jalr	-996(ra) # 80005030 <_Z11printStringPKc>
    8000441c:	00000613          	li	a2,0
    80004420:	00a00593          	li	a1,10
    80004424:	0009051b          	sext.w	a0,s2
    80004428:	00001097          	auipc	ra,0x1
    8000442c:	db8080e7          	jalr	-584(ra) # 800051e0 <_Z8printIntiii>
    80004430:	00005517          	auipc	a0,0x5
    80004434:	d1050513          	addi	a0,a0,-752 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	bf8080e7          	jalr	-1032(ra) # 80005030 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004440:	00c00513          	li	a0,12
    80004444:	00000097          	auipc	ra,0x0
    80004448:	d88080e7          	jalr	-632(ra) # 800041cc <_ZL9fibonaccim>
    8000444c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004450:	00005517          	auipc	a0,0x5
    80004454:	bf050513          	addi	a0,a0,-1040 # 80009040 <CONSOLE_STATUS+0x30>
    80004458:	00001097          	auipc	ra,0x1
    8000445c:	bd8080e7          	jalr	-1064(ra) # 80005030 <_Z11printStringPKc>
    80004460:	00000613          	li	a2,0
    80004464:	00a00593          	li	a1,10
    80004468:	0009051b          	sext.w	a0,s2
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	d74080e7          	jalr	-652(ra) # 800051e0 <_Z8printIntiii>
    80004474:	00005517          	auipc	a0,0x5
    80004478:	ccc50513          	addi	a0,a0,-820 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	bb4080e7          	jalr	-1100(ra) # 80005030 <_Z11printStringPKc>
    80004484:	0400006f          	j	800044c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	b9850513          	addi	a0,a0,-1128 # 80009020 <CONSOLE_STATUS+0x10>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	ba0080e7          	jalr	-1120(ra) # 80005030 <_Z11printStringPKc>
    80004498:	00000613          	li	a2,0
    8000449c:	00a00593          	li	a1,10
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	d3c080e7          	jalr	-708(ra) # 800051e0 <_Z8printIntiii>
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	c9450513          	addi	a0,a0,-876 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	b7c080e7          	jalr	-1156(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800044bc:	0014849b          	addiw	s1,s1,1
    800044c0:	0ff4f493          	andi	s1,s1,255
    800044c4:	00500793          	li	a5,5
    800044c8:	fc97f0e3          	bgeu	a5,s1,80004488 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800044cc:	00005517          	auipc	a0,0x5
    800044d0:	d2450513          	addi	a0,a0,-732 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	b5c080e7          	jalr	-1188(ra) # 80005030 <_Z11printStringPKc>
    finishedC = true;
    800044dc:	00100793          	li	a5,1
    800044e0:	00007717          	auipc	a4,0x7
    800044e4:	08f704a3          	sb	a5,137(a4) # 8000b569 <_ZL9finishedC>
    thread_dispatch();
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	12c080e7          	jalr	300(ra) # 80001614 <_Z15thread_dispatchv>
}
    800044f0:	01813083          	ld	ra,24(sp)
    800044f4:	01013403          	ld	s0,16(sp)
    800044f8:	00813483          	ld	s1,8(sp)
    800044fc:	00013903          	ld	s2,0(sp)
    80004500:	02010113          	addi	sp,sp,32
    80004504:	00008067          	ret

0000000080004508 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	01213023          	sd	s2,0(sp)
    8000451c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004520:	00000913          	li	s2,0
    80004524:	0380006f          	j	8000455c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004528:	ffffd097          	auipc	ra,0xffffd
    8000452c:	0ec080e7          	jalr	236(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004530:	00148493          	addi	s1,s1,1
    80004534:	000027b7          	lui	a5,0x2
    80004538:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000453c:	0097ee63          	bltu	a5,s1,80004558 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004540:	00000713          	li	a4,0
    80004544:	000077b7          	lui	a5,0x7
    80004548:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000454c:	fce7eee3          	bltu	a5,a4,80004528 <_ZL11workerBodyBPv+0x20>
    80004550:	00170713          	addi	a4,a4,1
    80004554:	ff1ff06f          	j	80004544 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004558:	00190913          	addi	s2,s2,1
    8000455c:	00f00793          	li	a5,15
    80004560:	0527e063          	bltu	a5,s2,800045a0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	b6450513          	addi	a0,a0,-1180 # 800090c8 <CONSOLE_STATUS+0xb8>
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	ac4080e7          	jalr	-1340(ra) # 80005030 <_Z11printStringPKc>
    80004574:	00000613          	li	a2,0
    80004578:	00a00593          	li	a1,10
    8000457c:	0009051b          	sext.w	a0,s2
    80004580:	00001097          	auipc	ra,0x1
    80004584:	c60080e7          	jalr	-928(ra) # 800051e0 <_Z8printIntiii>
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	bb850513          	addi	a0,a0,-1096 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	aa0080e7          	jalr	-1376(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004598:	00000493          	li	s1,0
    8000459c:	f99ff06f          	j	80004534 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800045a0:	00005517          	auipc	a0,0x5
    800045a4:	c6050513          	addi	a0,a0,-928 # 80009200 <_ZZ6prtIntmE6digits+0x108>
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	a88080e7          	jalr	-1400(ra) # 80005030 <_Z11printStringPKc>
    finishedB = true;
    800045b0:	00100793          	li	a5,1
    800045b4:	00007717          	auipc	a4,0x7
    800045b8:	faf70b23          	sb	a5,-74(a4) # 8000b56a <_ZL9finishedB>
    thread_dispatch();
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	058080e7          	jalr	88(ra) # 80001614 <_Z15thread_dispatchv>
}
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	00013903          	ld	s2,0(sp)
    800045d4:	02010113          	addi	sp,sp,32
    800045d8:	00008067          	ret

00000000800045dc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	01213023          	sd	s2,0(sp)
    800045f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800045f4:	00000913          	li	s2,0
    800045f8:	0380006f          	j	80004630 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	018080e7          	jalr	24(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004604:	00148493          	addi	s1,s1,1
    80004608:	000027b7          	lui	a5,0x2
    8000460c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004610:	0097ee63          	bltu	a5,s1,8000462c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004614:	00000713          	li	a4,0
    80004618:	000077b7          	lui	a5,0x7
    8000461c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004620:	fce7eee3          	bltu	a5,a4,800045fc <_ZL11workerBodyAPv+0x20>
    80004624:	00170713          	addi	a4,a4,1
    80004628:	ff1ff06f          	j	80004618 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000462c:	00190913          	addi	s2,s2,1
    80004630:	00900793          	li	a5,9
    80004634:	0527e063          	bltu	a5,s2,80004674 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	a7050513          	addi	a0,a0,-1424 # 800090a8 <CONSOLE_STATUS+0x98>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	9f0080e7          	jalr	-1552(ra) # 80005030 <_Z11printStringPKc>
    80004648:	00000613          	li	a2,0
    8000464c:	00a00593          	li	a1,10
    80004650:	0009051b          	sext.w	a0,s2
    80004654:	00001097          	auipc	ra,0x1
    80004658:	b8c080e7          	jalr	-1140(ra) # 800051e0 <_Z8printIntiii>
    8000465c:	00005517          	auipc	a0,0x5
    80004660:	ae450513          	addi	a0,a0,-1308 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80004664:	00001097          	auipc	ra,0x1
    80004668:	9cc080e7          	jalr	-1588(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000466c:	00000493          	li	s1,0
    80004670:	f99ff06f          	j	80004608 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004674:	00005517          	auipc	a0,0x5
    80004678:	b7c50513          	addi	a0,a0,-1156 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	9b4080e7          	jalr	-1612(ra) # 80005030 <_Z11printStringPKc>
    finishedA = true;
    80004684:	00100793          	li	a5,1
    80004688:	00007717          	auipc	a4,0x7
    8000468c:	eef701a3          	sb	a5,-285(a4) # 8000b56b <_ZL9finishedA>
}
    80004690:	01813083          	ld	ra,24(sp)
    80004694:	01013403          	ld	s0,16(sp)
    80004698:	00813483          	ld	s1,8(sp)
    8000469c:	00013903          	ld	s2,0(sp)
    800046a0:	02010113          	addi	sp,sp,32
    800046a4:	00008067          	ret

00000000800046a8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800046a8:	fd010113          	addi	sp,sp,-48
    800046ac:	02113423          	sd	ra,40(sp)
    800046b0:	02813023          	sd	s0,32(sp)
    800046b4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800046b8:	00000613          	li	a2,0
    800046bc:	00000597          	auipc	a1,0x0
    800046c0:	f2058593          	addi	a1,a1,-224 # 800045dc <_ZL11workerBodyAPv>
    800046c4:	fd040513          	addi	a0,s0,-48
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	e6c080e7          	jalr	-404(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800046d0:	00005517          	auipc	a0,0x5
    800046d4:	b7050513          	addi	a0,a0,-1168 # 80009240 <_ZZ6prtIntmE6digits+0x148>
    800046d8:	00001097          	auipc	ra,0x1
    800046dc:	958080e7          	jalr	-1704(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800046e0:	00000613          	li	a2,0
    800046e4:	00000597          	auipc	a1,0x0
    800046e8:	e2458593          	addi	a1,a1,-476 # 80004508 <_ZL11workerBodyBPv>
    800046ec:	fd840513          	addi	a0,s0,-40
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	e44080e7          	jalr	-444(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800046f8:	00005517          	auipc	a0,0x5
    800046fc:	b6050513          	addi	a0,a0,-1184 # 80009258 <_ZZ6prtIntmE6digits+0x160>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	930080e7          	jalr	-1744(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004708:	00000613          	li	a2,0
    8000470c:	00000597          	auipc	a1,0x0
    80004710:	c7c58593          	addi	a1,a1,-900 # 80004388 <_ZL11workerBodyCPv>
    80004714:	fe040513          	addi	a0,s0,-32
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	e1c080e7          	jalr	-484(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004720:	00005517          	auipc	a0,0x5
    80004724:	b5050513          	addi	a0,a0,-1200 # 80009270 <_ZZ6prtIntmE6digits+0x178>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	908080e7          	jalr	-1784(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004730:	00000613          	li	a2,0
    80004734:	00000597          	auipc	a1,0x0
    80004738:	b0c58593          	addi	a1,a1,-1268 # 80004240 <_ZL11workerBodyDPv>
    8000473c:	fe840513          	addi	a0,s0,-24
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	df4080e7          	jalr	-524(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004748:	00005517          	auipc	a0,0x5
    8000474c:	b4050513          	addi	a0,a0,-1216 # 80009288 <_ZZ6prtIntmE6digits+0x190>
    80004750:	00001097          	auipc	ra,0x1
    80004754:	8e0080e7          	jalr	-1824(ra) # 80005030 <_Z11printStringPKc>
    80004758:	00c0006f          	j	80004764 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	eb8080e7          	jalr	-328(ra) # 80001614 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004764:	00007797          	auipc	a5,0x7
    80004768:	e077c783          	lbu	a5,-505(a5) # 8000b56b <_ZL9finishedA>
    8000476c:	fe0788e3          	beqz	a5,8000475c <_Z18Threads_C_API_testv+0xb4>
    80004770:	00007797          	auipc	a5,0x7
    80004774:	dfa7c783          	lbu	a5,-518(a5) # 8000b56a <_ZL9finishedB>
    80004778:	fe0782e3          	beqz	a5,8000475c <_Z18Threads_C_API_testv+0xb4>
    8000477c:	00007797          	auipc	a5,0x7
    80004780:	ded7c783          	lbu	a5,-531(a5) # 8000b569 <_ZL9finishedC>
    80004784:	fc078ce3          	beqz	a5,8000475c <_Z18Threads_C_API_testv+0xb4>
    80004788:	00007797          	auipc	a5,0x7
    8000478c:	de07c783          	lbu	a5,-544(a5) # 8000b568 <_ZL9finishedD>
    80004790:	fc0786e3          	beqz	a5,8000475c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004794:	02813083          	ld	ra,40(sp)
    80004798:	02013403          	ld	s0,32(sp)
    8000479c:	03010113          	addi	sp,sp,48
    800047a0:	00008067          	ret

00000000800047a4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800047a4:	fd010113          	addi	sp,sp,-48
    800047a8:	02113423          	sd	ra,40(sp)
    800047ac:	02813023          	sd	s0,32(sp)
    800047b0:	00913c23          	sd	s1,24(sp)
    800047b4:	01213823          	sd	s2,16(sp)
    800047b8:	01313423          	sd	s3,8(sp)
    800047bc:	03010413          	addi	s0,sp,48
    800047c0:	00050993          	mv	s3,a0
    800047c4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800047c8:	00000913          	li	s2,0
    800047cc:	00c0006f          	j	800047d8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	790080e7          	jalr	1936(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	ef0080e7          	jalr	-272(ra) # 800016c8 <_Z4getcv>
    800047e0:	0005059b          	sext.w	a1,a0
    800047e4:	01b00793          	li	a5,27
    800047e8:	02f58a63          	beq	a1,a5,8000481c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800047ec:	0084b503          	ld	a0,8(s1)
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	c64080e7          	jalr	-924(ra) # 80005454 <_ZN9BufferCPP3putEi>
        i++;
    800047f8:	0019071b          	addiw	a4,s2,1
    800047fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004800:	0004a683          	lw	a3,0(s1)
    80004804:	0026979b          	slliw	a5,a3,0x2
    80004808:	00d787bb          	addw	a5,a5,a3
    8000480c:	0017979b          	slliw	a5,a5,0x1
    80004810:	02f767bb          	remw	a5,a4,a5
    80004814:	fc0792e3          	bnez	a5,800047d8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004818:	fb9ff06f          	j	800047d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000481c:	00100793          	li	a5,1
    80004820:	00007717          	auipc	a4,0x7
    80004824:	d4f72823          	sw	a5,-688(a4) # 8000b570 <_ZL9threadEnd>
    td->buffer->put('!');
    80004828:	0209b783          	ld	a5,32(s3)
    8000482c:	02100593          	li	a1,33
    80004830:	0087b503          	ld	a0,8(a5)
    80004834:	00001097          	auipc	ra,0x1
    80004838:	c20080e7          	jalr	-992(ra) # 80005454 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000483c:	0104b503          	ld	a0,16(s1)
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	7e0080e7          	jalr	2016(ra) # 80002020 <_ZN9Semaphore6signalEv>
}
    80004848:	02813083          	ld	ra,40(sp)
    8000484c:	02013403          	ld	s0,32(sp)
    80004850:	01813483          	ld	s1,24(sp)
    80004854:	01013903          	ld	s2,16(sp)
    80004858:	00813983          	ld	s3,8(sp)
    8000485c:	03010113          	addi	sp,sp,48
    80004860:	00008067          	ret

0000000080004864 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004864:	fe010113          	addi	sp,sp,-32
    80004868:	00113c23          	sd	ra,24(sp)
    8000486c:	00813823          	sd	s0,16(sp)
    80004870:	00913423          	sd	s1,8(sp)
    80004874:	01213023          	sd	s2,0(sp)
    80004878:	02010413          	addi	s0,sp,32
    8000487c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004880:	00000913          	li	s2,0
    80004884:	00c0006f          	j	80004890 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	6d8080e7          	jalr	1752(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004890:	00007797          	auipc	a5,0x7
    80004894:	ce07a783          	lw	a5,-800(a5) # 8000b570 <_ZL9threadEnd>
    80004898:	02079e63          	bnez	a5,800048d4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000489c:	0004a583          	lw	a1,0(s1)
    800048a0:	0305859b          	addiw	a1,a1,48
    800048a4:	0084b503          	ld	a0,8(s1)
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	bac080e7          	jalr	-1108(ra) # 80005454 <_ZN9BufferCPP3putEi>
        i++;
    800048b0:	0019071b          	addiw	a4,s2,1
    800048b4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048b8:	0004a683          	lw	a3,0(s1)
    800048bc:	0026979b          	slliw	a5,a3,0x2
    800048c0:	00d787bb          	addw	a5,a5,a3
    800048c4:	0017979b          	slliw	a5,a5,0x1
    800048c8:	02f767bb          	remw	a5,a4,a5
    800048cc:	fc0792e3          	bnez	a5,80004890 <_ZN12ProducerSync8producerEPv+0x2c>
    800048d0:	fb9ff06f          	j	80004888 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800048d4:	0104b503          	ld	a0,16(s1)
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	748080e7          	jalr	1864(ra) # 80002020 <_ZN9Semaphore6signalEv>
}
    800048e0:	01813083          	ld	ra,24(sp)
    800048e4:	01013403          	ld	s0,16(sp)
    800048e8:	00813483          	ld	s1,8(sp)
    800048ec:	00013903          	ld	s2,0(sp)
    800048f0:	02010113          	addi	sp,sp,32
    800048f4:	00008067          	ret

00000000800048f8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800048f8:	fd010113          	addi	sp,sp,-48
    800048fc:	02113423          	sd	ra,40(sp)
    80004900:	02813023          	sd	s0,32(sp)
    80004904:	00913c23          	sd	s1,24(sp)
    80004908:	01213823          	sd	s2,16(sp)
    8000490c:	01313423          	sd	s3,8(sp)
    80004910:	01413023          	sd	s4,0(sp)
    80004914:	03010413          	addi	s0,sp,48
    80004918:	00050993          	mv	s3,a0
    8000491c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004920:	00000a13          	li	s4,0
    80004924:	01c0006f          	j	80004940 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	638080e7          	jalr	1592(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    80004930:	0500006f          	j	80004980 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004934:	00a00513          	li	a0,10
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	dcc080e7          	jalr	-564(ra) # 80001704 <_Z4putcc>
    while (!threadEnd) {
    80004940:	00007797          	auipc	a5,0x7
    80004944:	c307a783          	lw	a5,-976(a5) # 8000b570 <_ZL9threadEnd>
    80004948:	06079263          	bnez	a5,800049ac <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000494c:	00893503          	ld	a0,8(s2)
    80004950:	00001097          	auipc	ra,0x1
    80004954:	b94080e7          	jalr	-1132(ra) # 800054e4 <_ZN9BufferCPP3getEv>
        i++;
    80004958:	001a049b          	addiw	s1,s4,1
    8000495c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004960:	0ff57513          	andi	a0,a0,255
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	da0080e7          	jalr	-608(ra) # 80001704 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000496c:	00092703          	lw	a4,0(s2)
    80004970:	0027179b          	slliw	a5,a4,0x2
    80004974:	00e787bb          	addw	a5,a5,a4
    80004978:	02f4e7bb          	remw	a5,s1,a5
    8000497c:	fa0786e3          	beqz	a5,80004928 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004980:	05000793          	li	a5,80
    80004984:	02f4e4bb          	remw	s1,s1,a5
    80004988:	fa049ce3          	bnez	s1,80004940 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000498c:	fa9ff06f          	j	80004934 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004990:	0209b783          	ld	a5,32(s3)
    80004994:	0087b503          	ld	a0,8(a5)
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	b4c080e7          	jalr	-1204(ra) # 800054e4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800049a0:	0ff57513          	andi	a0,a0,255
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	70c080e7          	jalr	1804(ra) # 800020b0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800049ac:	0209b783          	ld	a5,32(s3)
    800049b0:	0087b503          	ld	a0,8(a5)
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	bbc080e7          	jalr	-1092(ra) # 80005570 <_ZN9BufferCPP6getCntEv>
    800049bc:	fca04ae3          	bgtz	a0,80004990 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800049c0:	01093503          	ld	a0,16(s2)
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	65c080e7          	jalr	1628(ra) # 80002020 <_ZN9Semaphore6signalEv>
}
    800049cc:	02813083          	ld	ra,40(sp)
    800049d0:	02013403          	ld	s0,32(sp)
    800049d4:	01813483          	ld	s1,24(sp)
    800049d8:	01013903          	ld	s2,16(sp)
    800049dc:	00813983          	ld	s3,8(sp)
    800049e0:	00013a03          	ld	s4,0(sp)
    800049e4:	03010113          	addi	sp,sp,48
    800049e8:	00008067          	ret

00000000800049ec <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800049ec:	f8010113          	addi	sp,sp,-128
    800049f0:	06113c23          	sd	ra,120(sp)
    800049f4:	06813823          	sd	s0,112(sp)
    800049f8:	06913423          	sd	s1,104(sp)
    800049fc:	07213023          	sd	s2,96(sp)
    80004a00:	05313c23          	sd	s3,88(sp)
    80004a04:	05413823          	sd	s4,80(sp)
    80004a08:	05513423          	sd	s5,72(sp)
    80004a0c:	05613023          	sd	s6,64(sp)
    80004a10:	03713c23          	sd	s7,56(sp)
    80004a14:	03813823          	sd	s8,48(sp)
    80004a18:	03913423          	sd	s9,40(sp)
    80004a1c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004a20:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a24:	00004517          	auipc	a0,0x4
    80004a28:	6e450513          	addi	a0,a0,1764 # 80009108 <_ZZ6prtIntmE6digits+0x10>
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	604080e7          	jalr	1540(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80004a34:	01e00593          	li	a1,30
    80004a38:	f8040493          	addi	s1,s0,-128
    80004a3c:	00048513          	mv	a0,s1
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	678080e7          	jalr	1656(ra) # 800050b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a48:	00048513          	mv	a0,s1
    80004a4c:	00000097          	auipc	ra,0x0
    80004a50:	744080e7          	jalr	1860(ra) # 80005190 <_Z11stringToIntPKc>
    80004a54:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004a58:	00004517          	auipc	a0,0x4
    80004a5c:	6d050513          	addi	a0,a0,1744 # 80009128 <_ZZ6prtIntmE6digits+0x30>
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	5d0080e7          	jalr	1488(ra) # 80005030 <_Z11printStringPKc>
    getString(input, 30);
    80004a68:	01e00593          	li	a1,30
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00000097          	auipc	ra,0x0
    80004a74:	648080e7          	jalr	1608(ra) # 800050b8 <_Z9getStringPci>
    n = stringToInt(input);
    80004a78:	00048513          	mv	a0,s1
    80004a7c:	00000097          	auipc	ra,0x0
    80004a80:	714080e7          	jalr	1812(ra) # 80005190 <_Z11stringToIntPKc>
    80004a84:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a88:	00004517          	auipc	a0,0x4
    80004a8c:	6c050513          	addi	a0,a0,1728 # 80009148 <_ZZ6prtIntmE6digits+0x50>
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	5a0080e7          	jalr	1440(ra) # 80005030 <_Z11printStringPKc>
    80004a98:	00000613          	li	a2,0
    80004a9c:	00a00593          	li	a1,10
    80004aa0:	00090513          	mv	a0,s2
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	73c080e7          	jalr	1852(ra) # 800051e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004aac:	00004517          	auipc	a0,0x4
    80004ab0:	6b450513          	addi	a0,a0,1716 # 80009160 <_ZZ6prtIntmE6digits+0x68>
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	57c080e7          	jalr	1404(ra) # 80005030 <_Z11printStringPKc>
    80004abc:	00000613          	li	a2,0
    80004ac0:	00a00593          	li	a1,10
    80004ac4:	00048513          	mv	a0,s1
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	718080e7          	jalr	1816(ra) # 800051e0 <_Z8printIntiii>
    printString(".\n");
    80004ad0:	00004517          	auipc	a0,0x4
    80004ad4:	6a850513          	addi	a0,a0,1704 # 80009178 <_ZZ6prtIntmE6digits+0x80>
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	558080e7          	jalr	1368(ra) # 80005030 <_Z11printStringPKc>
    if(threadNum > n) {
    80004ae0:	0324c463          	blt	s1,s2,80004b08 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ae4:	03205c63          	blez	s2,80004b1c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ae8:	03800513          	li	a0,56
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	2ac080e7          	jalr	684(ra) # 80001d98 <_Znwm>
    80004af4:	00050a93          	mv	s5,a0
    80004af8:	00048593          	mv	a1,s1
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	804080e7          	jalr	-2044(ra) # 80005300 <_ZN9BufferCPPC1Ei>
    80004b04:	0300006f          	j	80004b34 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004b08:	00004517          	auipc	a0,0x4
    80004b0c:	67850513          	addi	a0,a0,1656 # 80009180 <_ZZ6prtIntmE6digits+0x88>
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	520080e7          	jalr	1312(ra) # 80005030 <_Z11printStringPKc>
        return;
    80004b18:	0140006f          	j	80004b2c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b1c:	00004517          	auipc	a0,0x4
    80004b20:	6a450513          	addi	a0,a0,1700 # 800091c0 <_ZZ6prtIntmE6digits+0xc8>
    80004b24:	00000097          	auipc	ra,0x0
    80004b28:	50c080e7          	jalr	1292(ra) # 80005030 <_Z11printStringPKc>
        return;
    80004b2c:	000b8113          	mv	sp,s7
    80004b30:	2380006f          	j	80004d68 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004b34:	01000513          	li	a0,16
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	260080e7          	jalr	608(ra) # 80001d98 <_Znwm>
    80004b40:	00050493          	mv	s1,a0
    80004b44:	00000593          	li	a1,0
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	498080e7          	jalr	1176(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    80004b50:	00007797          	auipc	a5,0x7
    80004b54:	a297b423          	sd	s1,-1496(a5) # 8000b578 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004b58:	00391793          	slli	a5,s2,0x3
    80004b5c:	00f78793          	addi	a5,a5,15
    80004b60:	ff07f793          	andi	a5,a5,-16
    80004b64:	40f10133          	sub	sp,sp,a5
    80004b68:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004b6c:	0019071b          	addiw	a4,s2,1
    80004b70:	00171793          	slli	a5,a4,0x1
    80004b74:	00e787b3          	add	a5,a5,a4
    80004b78:	00379793          	slli	a5,a5,0x3
    80004b7c:	00f78793          	addi	a5,a5,15
    80004b80:	ff07f793          	andi	a5,a5,-16
    80004b84:	40f10133          	sub	sp,sp,a5
    80004b88:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004b8c:	00191c13          	slli	s8,s2,0x1
    80004b90:	012c07b3          	add	a5,s8,s2
    80004b94:	00379793          	slli	a5,a5,0x3
    80004b98:	00fa07b3          	add	a5,s4,a5
    80004b9c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004ba0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004ba4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004ba8:	02800513          	li	a0,40
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	1ec080e7          	jalr	492(ra) # 80001d98 <_Znwm>
    80004bb4:	00050b13          	mv	s6,a0
    80004bb8:	012c0c33          	add	s8,s8,s2
    80004bbc:	003c1c13          	slli	s8,s8,0x3
    80004bc0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	3c4080e7          	jalr	964(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80004bcc:	00007797          	auipc	a5,0x7
    80004bd0:	86c78793          	addi	a5,a5,-1940 # 8000b438 <_ZTV12ConsumerSync+0x10>
    80004bd4:	00fb3023          	sd	a5,0(s6)
    80004bd8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004bdc:	000b0513          	mv	a0,s6
    80004be0:	ffffd097          	auipc	ra,0xffffd
    80004be4:	34c080e7          	jalr	844(ra) # 80001f2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004be8:	00000493          	li	s1,0
    80004bec:	0380006f          	j	80004c24 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004bf0:	00007797          	auipc	a5,0x7
    80004bf4:	82078793          	addi	a5,a5,-2016 # 8000b410 <_ZTV12ProducerSync+0x10>
    80004bf8:	00fcb023          	sd	a5,0(s9)
    80004bfc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004c00:	00349793          	slli	a5,s1,0x3
    80004c04:	00f987b3          	add	a5,s3,a5
    80004c08:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004c0c:	00349793          	slli	a5,s1,0x3
    80004c10:	00f987b3          	add	a5,s3,a5
    80004c14:	0007b503          	ld	a0,0(a5)
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	314080e7          	jalr	788(ra) # 80001f2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c20:	0014849b          	addiw	s1,s1,1
    80004c24:	0b24d063          	bge	s1,s2,80004cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004c28:	00149793          	slli	a5,s1,0x1
    80004c2c:	009787b3          	add	a5,a5,s1
    80004c30:	00379793          	slli	a5,a5,0x3
    80004c34:	00fa07b3          	add	a5,s4,a5
    80004c38:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c3c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004c40:	00007717          	auipc	a4,0x7
    80004c44:	93873703          	ld	a4,-1736(a4) # 8000b578 <_ZL10waitForAll>
    80004c48:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004c4c:	02905863          	blez	s1,80004c7c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004c50:	02800513          	li	a0,40
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	144080e7          	jalr	324(ra) # 80001d98 <_Znwm>
    80004c5c:	00050c93          	mv	s9,a0
    80004c60:	00149c13          	slli	s8,s1,0x1
    80004c64:	009c0c33          	add	s8,s8,s1
    80004c68:	003c1c13          	slli	s8,s8,0x3
    80004c6c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	318080e7          	jalr	792(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80004c78:	f79ff06f          	j	80004bf0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004c7c:	02800513          	li	a0,40
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	118080e7          	jalr	280(ra) # 80001d98 <_Znwm>
    80004c88:	00050c93          	mv	s9,a0
    80004c8c:	00149c13          	slli	s8,s1,0x1
    80004c90:	009c0c33          	add	s8,s8,s1
    80004c94:	003c1c13          	slli	s8,s8,0x3
    80004c98:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	2ec080e7          	jalr	748(ra) # 80001f88 <_ZN6ThreadC1Ev>
    80004ca4:	00006797          	auipc	a5,0x6
    80004ca8:	74478793          	addi	a5,a5,1860 # 8000b3e8 <_ZTV16ProducerKeyboard+0x10>
    80004cac:	00fcb023          	sd	a5,0(s9)
    80004cb0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004cb4:	00349793          	slli	a5,s1,0x3
    80004cb8:	00f987b3          	add	a5,s3,a5
    80004cbc:	0197b023          	sd	s9,0(a5)
    80004cc0:	f4dff06f          	j	80004c0c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004cc4:	ffffd097          	auipc	ra,0xffffd
    80004cc8:	29c080e7          	jalr	668(ra) # 80001f60 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ccc:	00000493          	li	s1,0
    80004cd0:	00994e63          	blt	s2,s1,80004cec <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004cd4:	00007517          	auipc	a0,0x7
    80004cd8:	8a453503          	ld	a0,-1884(a0) # 8000b578 <_ZL10waitForAll>
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	328080e7          	jalr	808(ra) # 80002004 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ce4:	0014849b          	addiw	s1,s1,1
    80004ce8:	fe9ff06f          	j	80004cd0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004cec:	00000493          	li	s1,0
    80004cf0:	0080006f          	j	80004cf8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004cf4:	0014849b          	addiw	s1,s1,1
    80004cf8:	0324d263          	bge	s1,s2,80004d1c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004cfc:	00349793          	slli	a5,s1,0x3
    80004d00:	00f987b3          	add	a5,s3,a5
    80004d04:	0007b503          	ld	a0,0(a5)
    80004d08:	fe0506e3          	beqz	a0,80004cf4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004d0c:	00053783          	ld	a5,0(a0)
    80004d10:	0087b783          	ld	a5,8(a5)
    80004d14:	000780e7          	jalr	a5
    80004d18:	fddff06f          	j	80004cf4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004d1c:	000b0a63          	beqz	s6,80004d30 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004d20:	000b3783          	ld	a5,0(s6)
    80004d24:	0087b783          	ld	a5,8(a5)
    80004d28:	000b0513          	mv	a0,s6
    80004d2c:	000780e7          	jalr	a5
    delete waitForAll;
    80004d30:	00007517          	auipc	a0,0x7
    80004d34:	84853503          	ld	a0,-1976(a0) # 8000b578 <_ZL10waitForAll>
    80004d38:	00050863          	beqz	a0,80004d48 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004d3c:	00053783          	ld	a5,0(a0)
    80004d40:	0087b783          	ld	a5,8(a5)
    80004d44:	000780e7          	jalr	a5
    delete buffer;
    80004d48:	000a8e63          	beqz	s5,80004d64 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004d4c:	000a8513          	mv	a0,s5
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	8a8080e7          	jalr	-1880(ra) # 800055f8 <_ZN9BufferCPPD1Ev>
    80004d58:	000a8513          	mv	a0,s5
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	08c080e7          	jalr	140(ra) # 80001de8 <_ZdlPv>
    80004d64:	000b8113          	mv	sp,s7

}
    80004d68:	f8040113          	addi	sp,s0,-128
    80004d6c:	07813083          	ld	ra,120(sp)
    80004d70:	07013403          	ld	s0,112(sp)
    80004d74:	06813483          	ld	s1,104(sp)
    80004d78:	06013903          	ld	s2,96(sp)
    80004d7c:	05813983          	ld	s3,88(sp)
    80004d80:	05013a03          	ld	s4,80(sp)
    80004d84:	04813a83          	ld	s5,72(sp)
    80004d88:	04013b03          	ld	s6,64(sp)
    80004d8c:	03813b83          	ld	s7,56(sp)
    80004d90:	03013c03          	ld	s8,48(sp)
    80004d94:	02813c83          	ld	s9,40(sp)
    80004d98:	08010113          	addi	sp,sp,128
    80004d9c:	00008067          	ret
    80004da0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004da4:	000a8513          	mv	a0,s5
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	040080e7          	jalr	64(ra) # 80001de8 <_ZdlPv>
    80004db0:	00048513          	mv	a0,s1
    80004db4:	00008097          	auipc	ra,0x8
    80004db8:	8a4080e7          	jalr	-1884(ra) # 8000c658 <_Unwind_Resume>
    80004dbc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004dc0:	00048513          	mv	a0,s1
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	024080e7          	jalr	36(ra) # 80001de8 <_ZdlPv>
    80004dcc:	00090513          	mv	a0,s2
    80004dd0:	00008097          	auipc	ra,0x8
    80004dd4:	888080e7          	jalr	-1912(ra) # 8000c658 <_Unwind_Resume>
    80004dd8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004ddc:	000b0513          	mv	a0,s6
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	008080e7          	jalr	8(ra) # 80001de8 <_ZdlPv>
    80004de8:	00048513          	mv	a0,s1
    80004dec:	00008097          	auipc	ra,0x8
    80004df0:	86c080e7          	jalr	-1940(ra) # 8000c658 <_Unwind_Resume>
    80004df4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004df8:	000c8513          	mv	a0,s9
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	fec080e7          	jalr	-20(ra) # 80001de8 <_ZdlPv>
    80004e04:	00048513          	mv	a0,s1
    80004e08:	00008097          	auipc	ra,0x8
    80004e0c:	850080e7          	jalr	-1968(ra) # 8000c658 <_Unwind_Resume>
    80004e10:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004e14:	000c8513          	mv	a0,s9
    80004e18:	ffffd097          	auipc	ra,0xffffd
    80004e1c:	fd0080e7          	jalr	-48(ra) # 80001de8 <_ZdlPv>
    80004e20:	00048513          	mv	a0,s1
    80004e24:	00008097          	auipc	ra,0x8
    80004e28:	834080e7          	jalr	-1996(ra) # 8000c658 <_Unwind_Resume>

0000000080004e2c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004e2c:	ff010113          	addi	sp,sp,-16
    80004e30:	00113423          	sd	ra,8(sp)
    80004e34:	00813023          	sd	s0,0(sp)
    80004e38:	01010413          	addi	s0,sp,16
    80004e3c:	00006797          	auipc	a5,0x6
    80004e40:	5fc78793          	addi	a5,a5,1532 # 8000b438 <_ZTV12ConsumerSync+0x10>
    80004e44:	00f53023          	sd	a5,0(a0)
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	ff0080e7          	jalr	-16(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004e50:	00813083          	ld	ra,8(sp)
    80004e54:	00013403          	ld	s0,0(sp)
    80004e58:	01010113          	addi	sp,sp,16
    80004e5c:	00008067          	ret

0000000080004e60 <_ZN12ConsumerSyncD0Ev>:
    80004e60:	fe010113          	addi	sp,sp,-32
    80004e64:	00113c23          	sd	ra,24(sp)
    80004e68:	00813823          	sd	s0,16(sp)
    80004e6c:	00913423          	sd	s1,8(sp)
    80004e70:	02010413          	addi	s0,sp,32
    80004e74:	00050493          	mv	s1,a0
    80004e78:	00006797          	auipc	a5,0x6
    80004e7c:	5c078793          	addi	a5,a5,1472 # 8000b438 <_ZTV12ConsumerSync+0x10>
    80004e80:	00f53023          	sd	a5,0(a0)
    80004e84:	ffffd097          	auipc	ra,0xffffd
    80004e88:	fb4080e7          	jalr	-76(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004e8c:	00048513          	mv	a0,s1
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	f58080e7          	jalr	-168(ra) # 80001de8 <_ZdlPv>
    80004e98:	01813083          	ld	ra,24(sp)
    80004e9c:	01013403          	ld	s0,16(sp)
    80004ea0:	00813483          	ld	s1,8(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004eac:	ff010113          	addi	sp,sp,-16
    80004eb0:	00113423          	sd	ra,8(sp)
    80004eb4:	00813023          	sd	s0,0(sp)
    80004eb8:	01010413          	addi	s0,sp,16
    80004ebc:	00006797          	auipc	a5,0x6
    80004ec0:	55478793          	addi	a5,a5,1364 # 8000b410 <_ZTV12ProducerSync+0x10>
    80004ec4:	00f53023          	sd	a5,0(a0)
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	f70080e7          	jalr	-144(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004ed0:	00813083          	ld	ra,8(sp)
    80004ed4:	00013403          	ld	s0,0(sp)
    80004ed8:	01010113          	addi	sp,sp,16
    80004edc:	00008067          	ret

0000000080004ee0 <_ZN12ProducerSyncD0Ev>:
    80004ee0:	fe010113          	addi	sp,sp,-32
    80004ee4:	00113c23          	sd	ra,24(sp)
    80004ee8:	00813823          	sd	s0,16(sp)
    80004eec:	00913423          	sd	s1,8(sp)
    80004ef0:	02010413          	addi	s0,sp,32
    80004ef4:	00050493          	mv	s1,a0
    80004ef8:	00006797          	auipc	a5,0x6
    80004efc:	51878793          	addi	a5,a5,1304 # 8000b410 <_ZTV12ProducerSync+0x10>
    80004f00:	00f53023          	sd	a5,0(a0)
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	f34080e7          	jalr	-204(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004f0c:	00048513          	mv	a0,s1
    80004f10:	ffffd097          	auipc	ra,0xffffd
    80004f14:	ed8080e7          	jalr	-296(ra) # 80001de8 <_ZdlPv>
    80004f18:	01813083          	ld	ra,24(sp)
    80004f1c:	01013403          	ld	s0,16(sp)
    80004f20:	00813483          	ld	s1,8(sp)
    80004f24:	02010113          	addi	sp,sp,32
    80004f28:	00008067          	ret

0000000080004f2c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004f2c:	ff010113          	addi	sp,sp,-16
    80004f30:	00113423          	sd	ra,8(sp)
    80004f34:	00813023          	sd	s0,0(sp)
    80004f38:	01010413          	addi	s0,sp,16
    80004f3c:	00006797          	auipc	a5,0x6
    80004f40:	4ac78793          	addi	a5,a5,1196 # 8000b3e8 <_ZTV16ProducerKeyboard+0x10>
    80004f44:	00f53023          	sd	a5,0(a0)
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	ef0080e7          	jalr	-272(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004f50:	00813083          	ld	ra,8(sp)
    80004f54:	00013403          	ld	s0,0(sp)
    80004f58:	01010113          	addi	sp,sp,16
    80004f5c:	00008067          	ret

0000000080004f60 <_ZN16ProducerKeyboardD0Ev>:
    80004f60:	fe010113          	addi	sp,sp,-32
    80004f64:	00113c23          	sd	ra,24(sp)
    80004f68:	00813823          	sd	s0,16(sp)
    80004f6c:	00913423          	sd	s1,8(sp)
    80004f70:	02010413          	addi	s0,sp,32
    80004f74:	00050493          	mv	s1,a0
    80004f78:	00006797          	auipc	a5,0x6
    80004f7c:	47078793          	addi	a5,a5,1136 # 8000b3e8 <_ZTV16ProducerKeyboard+0x10>
    80004f80:	00f53023          	sd	a5,0(a0)
    80004f84:	ffffd097          	auipc	ra,0xffffd
    80004f88:	eb4080e7          	jalr	-332(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	e58080e7          	jalr	-424(ra) # 80001de8 <_ZdlPv>
    80004f98:	01813083          	ld	ra,24(sp)
    80004f9c:	01013403          	ld	s0,16(sp)
    80004fa0:	00813483          	ld	s1,8(sp)
    80004fa4:	02010113          	addi	sp,sp,32
    80004fa8:	00008067          	ret

0000000080004fac <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004fac:	ff010113          	addi	sp,sp,-16
    80004fb0:	00113423          	sd	ra,8(sp)
    80004fb4:	00813023          	sd	s0,0(sp)
    80004fb8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004fbc:	02053583          	ld	a1,32(a0)
    80004fc0:	fffff097          	auipc	ra,0xfffff
    80004fc4:	7e4080e7          	jalr	2020(ra) # 800047a4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004fc8:	00813083          	ld	ra,8(sp)
    80004fcc:	00013403          	ld	s0,0(sp)
    80004fd0:	01010113          	addi	sp,sp,16
    80004fd4:	00008067          	ret

0000000080004fd8 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004fd8:	ff010113          	addi	sp,sp,-16
    80004fdc:	00113423          	sd	ra,8(sp)
    80004fe0:	00813023          	sd	s0,0(sp)
    80004fe4:	01010413          	addi	s0,sp,16
        producer(td);
    80004fe8:	02053583          	ld	a1,32(a0)
    80004fec:	00000097          	auipc	ra,0x0
    80004ff0:	878080e7          	jalr	-1928(ra) # 80004864 <_ZN12ProducerSync8producerEPv>
    }
    80004ff4:	00813083          	ld	ra,8(sp)
    80004ff8:	00013403          	ld	s0,0(sp)
    80004ffc:	01010113          	addi	sp,sp,16
    80005000:	00008067          	ret

0000000080005004 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005004:	ff010113          	addi	sp,sp,-16
    80005008:	00113423          	sd	ra,8(sp)
    8000500c:	00813023          	sd	s0,0(sp)
    80005010:	01010413          	addi	s0,sp,16
        consumer(td);
    80005014:	02053583          	ld	a1,32(a0)
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	8e0080e7          	jalr	-1824(ra) # 800048f8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005020:	00813083          	ld	ra,8(sp)
    80005024:	00013403          	ld	s0,0(sp)
    80005028:	01010113          	addi	sp,sp,16
    8000502c:	00008067          	ret

0000000080005030 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005030:	fe010113          	addi	sp,sp,-32
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00813823          	sd	s0,16(sp)
    8000503c:	00913423          	sd	s1,8(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    LOCK();
    80005048:	00100613          	li	a2,1
    8000504c:	00000593          	li	a1,0
    80005050:	00006517          	auipc	a0,0x6
    80005054:	53050513          	addi	a0,a0,1328 # 8000b580 <lockPrint>
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	404080e7          	jalr	1028(ra) # 8000145c <copy_and_swap>
    80005060:	00050863          	beqz	a0,80005070 <_Z11printStringPKc+0x40>
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	5b0080e7          	jalr	1456(ra) # 80001614 <_Z15thread_dispatchv>
    8000506c:	fddff06f          	j	80005048 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005070:	0004c503          	lbu	a0,0(s1)
    80005074:	00050a63          	beqz	a0,80005088 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	68c080e7          	jalr	1676(ra) # 80001704 <_Z4putcc>
        string++;
    80005080:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005084:	fedff06f          	j	80005070 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005088:	00000613          	li	a2,0
    8000508c:	00100593          	li	a1,1
    80005090:	00006517          	auipc	a0,0x6
    80005094:	4f050513          	addi	a0,a0,1264 # 8000b580 <lockPrint>
    80005098:	ffffc097          	auipc	ra,0xffffc
    8000509c:	3c4080e7          	jalr	964(ra) # 8000145c <copy_and_swap>
    800050a0:	fe0514e3          	bnez	a0,80005088 <_Z11printStringPKc+0x58>
}
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00813483          	ld	s1,8(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret

00000000800050b8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800050b8:	fd010113          	addi	sp,sp,-48
    800050bc:	02113423          	sd	ra,40(sp)
    800050c0:	02813023          	sd	s0,32(sp)
    800050c4:	00913c23          	sd	s1,24(sp)
    800050c8:	01213823          	sd	s2,16(sp)
    800050cc:	01313423          	sd	s3,8(sp)
    800050d0:	01413023          	sd	s4,0(sp)
    800050d4:	03010413          	addi	s0,sp,48
    800050d8:	00050993          	mv	s3,a0
    800050dc:	00058a13          	mv	s4,a1
    LOCK();
    800050e0:	00100613          	li	a2,1
    800050e4:	00000593          	li	a1,0
    800050e8:	00006517          	auipc	a0,0x6
    800050ec:	49850513          	addi	a0,a0,1176 # 8000b580 <lockPrint>
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	36c080e7          	jalr	876(ra) # 8000145c <copy_and_swap>
    800050f8:	00050863          	beqz	a0,80005108 <_Z9getStringPci+0x50>
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	518080e7          	jalr	1304(ra) # 80001614 <_Z15thread_dispatchv>
    80005104:	fddff06f          	j	800050e0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005108:	00000913          	li	s2,0
    8000510c:	00090493          	mv	s1,s2
    80005110:	0019091b          	addiw	s2,s2,1
    80005114:	03495a63          	bge	s2,s4,80005148 <_Z9getStringPci+0x90>
        cc = getc();
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	5b0080e7          	jalr	1456(ra) # 800016c8 <_Z4getcv>
        if(cc < 1)
    80005120:	02050463          	beqz	a0,80005148 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005124:	009984b3          	add	s1,s3,s1
    80005128:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000512c:	00a00793          	li	a5,10
    80005130:	00f50a63          	beq	a0,a5,80005144 <_Z9getStringPci+0x8c>
    80005134:	00d00793          	li	a5,13
    80005138:	fcf51ae3          	bne	a0,a5,8000510c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000513c:	00090493          	mv	s1,s2
    80005140:	0080006f          	j	80005148 <_Z9getStringPci+0x90>
    80005144:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005148:	009984b3          	add	s1,s3,s1
    8000514c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005150:	00000613          	li	a2,0
    80005154:	00100593          	li	a1,1
    80005158:	00006517          	auipc	a0,0x6
    8000515c:	42850513          	addi	a0,a0,1064 # 8000b580 <lockPrint>
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	2fc080e7          	jalr	764(ra) # 8000145c <copy_and_swap>
    80005168:	fe0514e3          	bnez	a0,80005150 <_Z9getStringPci+0x98>
    return buf;
}
    8000516c:	00098513          	mv	a0,s3
    80005170:	02813083          	ld	ra,40(sp)
    80005174:	02013403          	ld	s0,32(sp)
    80005178:	01813483          	ld	s1,24(sp)
    8000517c:	01013903          	ld	s2,16(sp)
    80005180:	00813983          	ld	s3,8(sp)
    80005184:	00013a03          	ld	s4,0(sp)
    80005188:	03010113          	addi	sp,sp,48
    8000518c:	00008067          	ret

0000000080005190 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005190:	ff010113          	addi	sp,sp,-16
    80005194:	00813423          	sd	s0,8(sp)
    80005198:	01010413          	addi	s0,sp,16
    8000519c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800051a0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800051a4:	0006c603          	lbu	a2,0(a3)
    800051a8:	fd06071b          	addiw	a4,a2,-48
    800051ac:	0ff77713          	andi	a4,a4,255
    800051b0:	00900793          	li	a5,9
    800051b4:	02e7e063          	bltu	a5,a4,800051d4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800051b8:	0025179b          	slliw	a5,a0,0x2
    800051bc:	00a787bb          	addw	a5,a5,a0
    800051c0:	0017979b          	slliw	a5,a5,0x1
    800051c4:	00168693          	addi	a3,a3,1
    800051c8:	00c787bb          	addw	a5,a5,a2
    800051cc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800051d0:	fd5ff06f          	j	800051a4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800051d4:	00813403          	ld	s0,8(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800051e0:	fc010113          	addi	sp,sp,-64
    800051e4:	02113c23          	sd	ra,56(sp)
    800051e8:	02813823          	sd	s0,48(sp)
    800051ec:	02913423          	sd	s1,40(sp)
    800051f0:	03213023          	sd	s2,32(sp)
    800051f4:	01313c23          	sd	s3,24(sp)
    800051f8:	04010413          	addi	s0,sp,64
    800051fc:	00050493          	mv	s1,a0
    80005200:	00058913          	mv	s2,a1
    80005204:	00060993          	mv	s3,a2
    LOCK();
    80005208:	00100613          	li	a2,1
    8000520c:	00000593          	li	a1,0
    80005210:	00006517          	auipc	a0,0x6
    80005214:	37050513          	addi	a0,a0,880 # 8000b580 <lockPrint>
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	244080e7          	jalr	580(ra) # 8000145c <copy_and_swap>
    80005220:	00050863          	beqz	a0,80005230 <_Z8printIntiii+0x50>
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	3f0080e7          	jalr	1008(ra) # 80001614 <_Z15thread_dispatchv>
    8000522c:	fddff06f          	j	80005208 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005230:	00098463          	beqz	s3,80005238 <_Z8printIntiii+0x58>
    80005234:	0804c463          	bltz	s1,800052bc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005238:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000523c:	00000593          	li	a1,0
    }

    i = 0;
    80005240:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005244:	0009079b          	sext.w	a5,s2
    80005248:	0325773b          	remuw	a4,a0,s2
    8000524c:	00048613          	mv	a2,s1
    80005250:	0014849b          	addiw	s1,s1,1
    80005254:	02071693          	slli	a3,a4,0x20
    80005258:	0206d693          	srli	a3,a3,0x20
    8000525c:	00006717          	auipc	a4,0x6
    80005260:	1f470713          	addi	a4,a4,500 # 8000b450 <digits>
    80005264:	00d70733          	add	a4,a4,a3
    80005268:	00074683          	lbu	a3,0(a4)
    8000526c:	fd040713          	addi	a4,s0,-48
    80005270:	00c70733          	add	a4,a4,a2
    80005274:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005278:	0005071b          	sext.w	a4,a0
    8000527c:	0325553b          	divuw	a0,a0,s2
    80005280:	fcf772e3          	bgeu	a4,a5,80005244 <_Z8printIntiii+0x64>
    if(neg)
    80005284:	00058c63          	beqz	a1,8000529c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005288:	fd040793          	addi	a5,s0,-48
    8000528c:	009784b3          	add	s1,a5,s1
    80005290:	02d00793          	li	a5,45
    80005294:	fef48823          	sb	a5,-16(s1)
    80005298:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000529c:	fff4849b          	addiw	s1,s1,-1
    800052a0:	0204c463          	bltz	s1,800052c8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800052a4:	fd040793          	addi	a5,s0,-48
    800052a8:	009787b3          	add	a5,a5,s1
    800052ac:	ff07c503          	lbu	a0,-16(a5)
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	454080e7          	jalr	1108(ra) # 80001704 <_Z4putcc>
    800052b8:	fe5ff06f          	j	8000529c <_Z8printIntiii+0xbc>
        x = -xx;
    800052bc:	4090053b          	negw	a0,s1
        neg = 1;
    800052c0:	00100593          	li	a1,1
        x = -xx;
    800052c4:	f7dff06f          	j	80005240 <_Z8printIntiii+0x60>

    UNLOCK();
    800052c8:	00000613          	li	a2,0
    800052cc:	00100593          	li	a1,1
    800052d0:	00006517          	auipc	a0,0x6
    800052d4:	2b050513          	addi	a0,a0,688 # 8000b580 <lockPrint>
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	184080e7          	jalr	388(ra) # 8000145c <copy_and_swap>
    800052e0:	fe0514e3          	bnez	a0,800052c8 <_Z8printIntiii+0xe8>
    800052e4:	03813083          	ld	ra,56(sp)
    800052e8:	03013403          	ld	s0,48(sp)
    800052ec:	02813483          	ld	s1,40(sp)
    800052f0:	02013903          	ld	s2,32(sp)
    800052f4:	01813983          	ld	s3,24(sp)
    800052f8:	04010113          	addi	sp,sp,64
    800052fc:	00008067          	ret

0000000080005300 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005300:	fd010113          	addi	sp,sp,-48
    80005304:	02113423          	sd	ra,40(sp)
    80005308:	02813023          	sd	s0,32(sp)
    8000530c:	00913c23          	sd	s1,24(sp)
    80005310:	01213823          	sd	s2,16(sp)
    80005314:	01313423          	sd	s3,8(sp)
    80005318:	03010413          	addi	s0,sp,48
    8000531c:	00050493          	mv	s1,a0
    80005320:	00058913          	mv	s2,a1
    80005324:	0015879b          	addiw	a5,a1,1
    80005328:	0007851b          	sext.w	a0,a5
    8000532c:	00f4a023          	sw	a5,0(s1)
    80005330:	0004a823          	sw	zero,16(s1)
    80005334:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005338:	00251513          	slli	a0,a0,0x2
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	178080e7          	jalr	376(ra) # 800014b4 <_Z9mem_allocm>
    80005344:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005348:	01000513          	li	a0,16
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	a4c080e7          	jalr	-1460(ra) # 80001d98 <_Znwm>
    80005354:	00050993          	mv	s3,a0
    80005358:	00000593          	li	a1,0
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	c84080e7          	jalr	-892(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    80005364:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005368:	01000513          	li	a0,16
    8000536c:	ffffd097          	auipc	ra,0xffffd
    80005370:	a2c080e7          	jalr	-1492(ra) # 80001d98 <_Znwm>
    80005374:	00050993          	mv	s3,a0
    80005378:	00090593          	mv	a1,s2
    8000537c:	ffffd097          	auipc	ra,0xffffd
    80005380:	c64080e7          	jalr	-924(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    80005384:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005388:	01000513          	li	a0,16
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	a0c080e7          	jalr	-1524(ra) # 80001d98 <_Znwm>
    80005394:	00050913          	mv	s2,a0
    80005398:	00100593          	li	a1,1
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	c44080e7          	jalr	-956(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    800053a4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800053a8:	01000513          	li	a0,16
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	9ec080e7          	jalr	-1556(ra) # 80001d98 <_Znwm>
    800053b4:	00050913          	mv	s2,a0
    800053b8:	00100593          	li	a1,1
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	c24080e7          	jalr	-988(ra) # 80001fe0 <_ZN9SemaphoreC1Ej>
    800053c4:	0324b823          	sd	s2,48(s1)
}
    800053c8:	02813083          	ld	ra,40(sp)
    800053cc:	02013403          	ld	s0,32(sp)
    800053d0:	01813483          	ld	s1,24(sp)
    800053d4:	01013903          	ld	s2,16(sp)
    800053d8:	00813983          	ld	s3,8(sp)
    800053dc:	03010113          	addi	sp,sp,48
    800053e0:	00008067          	ret
    800053e4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800053e8:	00098513          	mv	a0,s3
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	9fc080e7          	jalr	-1540(ra) # 80001de8 <_ZdlPv>
    800053f4:	00048513          	mv	a0,s1
    800053f8:	00007097          	auipc	ra,0x7
    800053fc:	260080e7          	jalr	608(ra) # 8000c658 <_Unwind_Resume>
    80005400:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005404:	00098513          	mv	a0,s3
    80005408:	ffffd097          	auipc	ra,0xffffd
    8000540c:	9e0080e7          	jalr	-1568(ra) # 80001de8 <_ZdlPv>
    80005410:	00048513          	mv	a0,s1
    80005414:	00007097          	auipc	ra,0x7
    80005418:	244080e7          	jalr	580(ra) # 8000c658 <_Unwind_Resume>
    8000541c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005420:	00090513          	mv	a0,s2
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	9c4080e7          	jalr	-1596(ra) # 80001de8 <_ZdlPv>
    8000542c:	00048513          	mv	a0,s1
    80005430:	00007097          	auipc	ra,0x7
    80005434:	228080e7          	jalr	552(ra) # 8000c658 <_Unwind_Resume>
    80005438:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000543c:	00090513          	mv	a0,s2
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	9a8080e7          	jalr	-1624(ra) # 80001de8 <_ZdlPv>
    80005448:	00048513          	mv	a0,s1
    8000544c:	00007097          	auipc	ra,0x7
    80005450:	20c080e7          	jalr	524(ra) # 8000c658 <_Unwind_Resume>

0000000080005454 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005454:	fe010113          	addi	sp,sp,-32
    80005458:	00113c23          	sd	ra,24(sp)
    8000545c:	00813823          	sd	s0,16(sp)
    80005460:	00913423          	sd	s1,8(sp)
    80005464:	01213023          	sd	s2,0(sp)
    80005468:	02010413          	addi	s0,sp,32
    8000546c:	00050493          	mv	s1,a0
    80005470:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005474:	01853503          	ld	a0,24(a0)
    80005478:	ffffd097          	auipc	ra,0xffffd
    8000547c:	b8c080e7          	jalr	-1140(ra) # 80002004 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005480:	0304b503          	ld	a0,48(s1)
    80005484:	ffffd097          	auipc	ra,0xffffd
    80005488:	b80080e7          	jalr	-1152(ra) # 80002004 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000548c:	0084b783          	ld	a5,8(s1)
    80005490:	0144a703          	lw	a4,20(s1)
    80005494:	00271713          	slli	a4,a4,0x2
    80005498:	00e787b3          	add	a5,a5,a4
    8000549c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800054a0:	0144a783          	lw	a5,20(s1)
    800054a4:	0017879b          	addiw	a5,a5,1
    800054a8:	0004a703          	lw	a4,0(s1)
    800054ac:	02e7e7bb          	remw	a5,a5,a4
    800054b0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800054b4:	0304b503          	ld	a0,48(s1)
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	b68080e7          	jalr	-1176(ra) # 80002020 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800054c0:	0204b503          	ld	a0,32(s1)
    800054c4:	ffffd097          	auipc	ra,0xffffd
    800054c8:	b5c080e7          	jalr	-1188(ra) # 80002020 <_ZN9Semaphore6signalEv>

}
    800054cc:	01813083          	ld	ra,24(sp)
    800054d0:	01013403          	ld	s0,16(sp)
    800054d4:	00813483          	ld	s1,8(sp)
    800054d8:	00013903          	ld	s2,0(sp)
    800054dc:	02010113          	addi	sp,sp,32
    800054e0:	00008067          	ret

00000000800054e4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800054e4:	fe010113          	addi	sp,sp,-32
    800054e8:	00113c23          	sd	ra,24(sp)
    800054ec:	00813823          	sd	s0,16(sp)
    800054f0:	00913423          	sd	s1,8(sp)
    800054f4:	01213023          	sd	s2,0(sp)
    800054f8:	02010413          	addi	s0,sp,32
    800054fc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005500:	02053503          	ld	a0,32(a0)
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	b00080e7          	jalr	-1280(ra) # 80002004 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000550c:	0284b503          	ld	a0,40(s1)
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	af4080e7          	jalr	-1292(ra) # 80002004 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005518:	0084b703          	ld	a4,8(s1)
    8000551c:	0104a783          	lw	a5,16(s1)
    80005520:	00279693          	slli	a3,a5,0x2
    80005524:	00d70733          	add	a4,a4,a3
    80005528:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000552c:	0017879b          	addiw	a5,a5,1
    80005530:	0004a703          	lw	a4,0(s1)
    80005534:	02e7e7bb          	remw	a5,a5,a4
    80005538:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000553c:	0284b503          	ld	a0,40(s1)
    80005540:	ffffd097          	auipc	ra,0xffffd
    80005544:	ae0080e7          	jalr	-1312(ra) # 80002020 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005548:	0184b503          	ld	a0,24(s1)
    8000554c:	ffffd097          	auipc	ra,0xffffd
    80005550:	ad4080e7          	jalr	-1324(ra) # 80002020 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005554:	00090513          	mv	a0,s2
    80005558:	01813083          	ld	ra,24(sp)
    8000555c:	01013403          	ld	s0,16(sp)
    80005560:	00813483          	ld	s1,8(sp)
    80005564:	00013903          	ld	s2,0(sp)
    80005568:	02010113          	addi	sp,sp,32
    8000556c:	00008067          	ret

0000000080005570 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005570:	fe010113          	addi	sp,sp,-32
    80005574:	00113c23          	sd	ra,24(sp)
    80005578:	00813823          	sd	s0,16(sp)
    8000557c:	00913423          	sd	s1,8(sp)
    80005580:	01213023          	sd	s2,0(sp)
    80005584:	02010413          	addi	s0,sp,32
    80005588:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000558c:	02853503          	ld	a0,40(a0)
    80005590:	ffffd097          	auipc	ra,0xffffd
    80005594:	a74080e7          	jalr	-1420(ra) # 80002004 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005598:	0304b503          	ld	a0,48(s1)
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	a68080e7          	jalr	-1432(ra) # 80002004 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800055a4:	0144a783          	lw	a5,20(s1)
    800055a8:	0104a903          	lw	s2,16(s1)
    800055ac:	0327ce63          	blt	a5,s2,800055e8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800055b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800055b4:	0304b503          	ld	a0,48(s1)
    800055b8:	ffffd097          	auipc	ra,0xffffd
    800055bc:	a68080e7          	jalr	-1432(ra) # 80002020 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800055c0:	0284b503          	ld	a0,40(s1)
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	a5c080e7          	jalr	-1444(ra) # 80002020 <_ZN9Semaphore6signalEv>

    return ret;
}
    800055cc:	00090513          	mv	a0,s2
    800055d0:	01813083          	ld	ra,24(sp)
    800055d4:	01013403          	ld	s0,16(sp)
    800055d8:	00813483          	ld	s1,8(sp)
    800055dc:	00013903          	ld	s2,0(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret
        ret = cap - head + tail;
    800055e8:	0004a703          	lw	a4,0(s1)
    800055ec:	4127093b          	subw	s2,a4,s2
    800055f0:	00f9093b          	addw	s2,s2,a5
    800055f4:	fc1ff06f          	j	800055b4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800055f8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800055f8:	fe010113          	addi	sp,sp,-32
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	00813823          	sd	s0,16(sp)
    80005604:	00913423          	sd	s1,8(sp)
    80005608:	02010413          	addi	s0,sp,32
    8000560c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005610:	00a00513          	li	a0,10
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	a9c080e7          	jalr	-1380(ra) # 800020b0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000561c:	00004517          	auipc	a0,0x4
    80005620:	c8450513          	addi	a0,a0,-892 # 800092a0 <_ZZ6prtIntmE6digits+0x1a8>
    80005624:	00000097          	auipc	ra,0x0
    80005628:	a0c080e7          	jalr	-1524(ra) # 80005030 <_Z11printStringPKc>
    while (getCnt()) {
    8000562c:	00048513          	mv	a0,s1
    80005630:	00000097          	auipc	ra,0x0
    80005634:	f40080e7          	jalr	-192(ra) # 80005570 <_ZN9BufferCPP6getCntEv>
    80005638:	02050c63          	beqz	a0,80005670 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000563c:	0084b783          	ld	a5,8(s1)
    80005640:	0104a703          	lw	a4,16(s1)
    80005644:	00271713          	slli	a4,a4,0x2
    80005648:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000564c:	0007c503          	lbu	a0,0(a5)
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	a60080e7          	jalr	-1440(ra) # 800020b0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005658:	0104a783          	lw	a5,16(s1)
    8000565c:	0017879b          	addiw	a5,a5,1
    80005660:	0004a703          	lw	a4,0(s1)
    80005664:	02e7e7bb          	remw	a5,a5,a4
    80005668:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000566c:	fc1ff06f          	j	8000562c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005670:	02100513          	li	a0,33
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	a3c080e7          	jalr	-1476(ra) # 800020b0 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000567c:	00a00513          	li	a0,10
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	a30080e7          	jalr	-1488(ra) # 800020b0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005688:	0084b503          	ld	a0,8(s1)
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	e68080e7          	jalr	-408(ra) # 800014f4 <_Z8mem_freePv>
    delete itemAvailable;
    80005694:	0204b503          	ld	a0,32(s1)
    80005698:	00050863          	beqz	a0,800056a8 <_ZN9BufferCPPD1Ev+0xb0>
    8000569c:	00053783          	ld	a5,0(a0)
    800056a0:	0087b783          	ld	a5,8(a5)
    800056a4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800056a8:	0184b503          	ld	a0,24(s1)
    800056ac:	00050863          	beqz	a0,800056bc <_ZN9BufferCPPD1Ev+0xc4>
    800056b0:	00053783          	ld	a5,0(a0)
    800056b4:	0087b783          	ld	a5,8(a5)
    800056b8:	000780e7          	jalr	a5
    delete mutexTail;
    800056bc:	0304b503          	ld	a0,48(s1)
    800056c0:	00050863          	beqz	a0,800056d0 <_ZN9BufferCPPD1Ev+0xd8>
    800056c4:	00053783          	ld	a5,0(a0)
    800056c8:	0087b783          	ld	a5,8(a5)
    800056cc:	000780e7          	jalr	a5
    delete mutexHead;
    800056d0:	0284b503          	ld	a0,40(s1)
    800056d4:	00050863          	beqz	a0,800056e4 <_ZN9BufferCPPD1Ev+0xec>
    800056d8:	00053783          	ld	a5,0(a0)
    800056dc:	0087b783          	ld	a5,8(a5)
    800056e0:	000780e7          	jalr	a5
}
    800056e4:	01813083          	ld	ra,24(sp)
    800056e8:	01013403          	ld	s0,16(sp)
    800056ec:	00813483          	ld	s1,8(sp)
    800056f0:	02010113          	addi	sp,sp,32
    800056f4:	00008067          	ret

00000000800056f8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800056f8:	fe010113          	addi	sp,sp,-32
    800056fc:	00113c23          	sd	ra,24(sp)
    80005700:	00813823          	sd	s0,16(sp)
    80005704:	00913423          	sd	s1,8(sp)
    80005708:	01213023          	sd	s2,0(sp)
    8000570c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005710:	00004517          	auipc	a0,0x4
    80005714:	ba850513          	addi	a0,a0,-1112 # 800092b8 <_ZZ6prtIntmE6digits+0x1c0>
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	918080e7          	jalr	-1768(ra) # 80005030 <_Z11printStringPKc>
    int test = getc() - '0';
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	fa8080e7          	jalr	-88(ra) # 800016c8 <_Z4getcv>
    80005728:	0005091b          	sext.w	s2,a0
    8000572c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	f98080e7          	jalr	-104(ra) # 800016c8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005738:	fcd9071b          	addiw	a4,s2,-51
    8000573c:	00100793          	li	a5,1
    80005740:	04e7f663          	bgeu	a5,a4,8000578c <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005744:	fcb9091b          	addiw	s2,s2,-53
    80005748:	00100793          	li	a5,1
    8000574c:	0727f463          	bgeu	a5,s2,800057b4 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005750:	00600793          	li	a5,6
    80005754:	0697ca63          	blt	a5,s1,800057c8 <_Z8userMainv+0xd0>
    80005758:	00300793          	li	a5,3
    8000575c:	04f4d063          	bge	s1,a5,8000579c <_Z8userMainv+0xa4>
    80005760:	00100793          	li	a5,1
    80005764:	08f48c63          	beq	s1,a5,800057fc <_Z8userMainv+0x104>
    80005768:	00200793          	li	a5,2
    8000576c:	0af49663          	bne	s1,a5,80005818 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80005770:	ffffe097          	auipc	ra,0xffffe
    80005774:	e18080e7          	jalr	-488(ra) # 80003588 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	c0050513          	addi	a0,a0,-1024 # 80009378 <_ZZ6prtIntmE6digits+0x280>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	8b0080e7          	jalr	-1872(ra) # 80005030 <_Z11printStringPKc>
#endif
            break;
    80005788:	0140006f          	j	8000579c <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	b4c50513          	addi	a0,a0,-1204 # 800092d8 <_ZZ6prtIntmE6digits+0x1e0>
    80005794:	00000097          	auipc	ra,0x0
    80005798:	89c080e7          	jalr	-1892(ra) # 80005030 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	00013903          	ld	s2,0(sp)
    800057ac:	02010113          	addi	sp,sp,32
    800057b0:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800057b4:	00004517          	auipc	a0,0x4
    800057b8:	b5450513          	addi	a0,a0,-1196 # 80009308 <_ZZ6prtIntmE6digits+0x210>
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	874080e7          	jalr	-1932(ra) # 80005030 <_Z11printStringPKc>
            return;
    800057c4:	fd9ff06f          	j	8000579c <_Z8userMainv+0xa4>
    switch (test) {
    800057c8:	00700793          	li	a5,7
    800057cc:	04f49663          	bne	s1,a5,80005818 <_Z8userMainv+0x120>
            System_Mode_test();
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	674080e7          	jalr	1652(ra) # 80005e44 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	be050513          	addi	a0,a0,-1056 # 800093b8 <_ZZ6prtIntmE6digits+0x2c0>
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	850080e7          	jalr	-1968(ra) # 80005030 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800057e8:	00004517          	auipc	a0,0x4
    800057ec:	bf050513          	addi	a0,a0,-1040 # 800093d8 <_ZZ6prtIntmE6digits+0x2e0>
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	840080e7          	jalr	-1984(ra) # 80005030 <_Z11printStringPKc>
            break;
    800057f8:	fa5ff06f          	j	8000579c <_Z8userMainv+0xa4>
            Threads_C_API_test();
    800057fc:	fffff097          	auipc	ra,0xfffff
    80005800:	eac080e7          	jalr	-340(ra) # 800046a8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005804:	00004517          	auipc	a0,0x4
    80005808:	b3450513          	addi	a0,a0,-1228 # 80009338 <_ZZ6prtIntmE6digits+0x240>
    8000580c:	00000097          	auipc	ra,0x0
    80005810:	824080e7          	jalr	-2012(ra) # 80005030 <_Z11printStringPKc>
            break;
    80005814:	f89ff06f          	j	8000579c <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005818:	00004517          	auipc	a0,0x4
    8000581c:	c1850513          	addi	a0,a0,-1000 # 80009430 <_ZZ6prtIntmE6digits+0x338>
    80005820:	00000097          	auipc	ra,0x0
    80005824:	810080e7          	jalr	-2032(ra) # 80005030 <_Z11printStringPKc>
    80005828:	f75ff06f          	j	8000579c <_Z8userMainv+0xa4>

000000008000582c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000582c:	fe010113          	addi	sp,sp,-32
    80005830:	00113c23          	sd	ra,24(sp)
    80005834:	00813823          	sd	s0,16(sp)
    80005838:	00913423          	sd	s1,8(sp)
    8000583c:	01213023          	sd	s2,0(sp)
    80005840:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005844:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005848:	00600493          	li	s1,6
    while (--i > 0) {
    8000584c:	fff4849b          	addiw	s1,s1,-1
    80005850:	04905463          	blez	s1,80005898 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005854:	00004517          	auipc	a0,0x4
    80005858:	c0450513          	addi	a0,a0,-1020 # 80009458 <_ZZ6prtIntmE6digits+0x360>
    8000585c:	fffff097          	auipc	ra,0xfffff
    80005860:	7d4080e7          	jalr	2004(ra) # 80005030 <_Z11printStringPKc>
        printInt(sleep_time);
    80005864:	00000613          	li	a2,0
    80005868:	00a00593          	li	a1,10
    8000586c:	0009051b          	sext.w	a0,s2
    80005870:	00000097          	auipc	ra,0x0
    80005874:	970080e7          	jalr	-1680(ra) # 800051e0 <_Z8printIntiii>
        printString(" !\n");
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	be850513          	addi	a0,a0,-1048 # 80009460 <_ZZ6prtIntmE6digits+0x368>
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	7b0080e7          	jalr	1968(ra) # 80005030 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005888:	00090513          	mv	a0,s2
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	d30080e7          	jalr	-720(ra) # 800015bc <_Z10time_sleepm>
    while (--i > 0) {
    80005894:	fb9ff06f          	j	8000584c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005898:	00a00793          	li	a5,10
    8000589c:	02f95933          	divu	s2,s2,a5
    800058a0:	fff90913          	addi	s2,s2,-1
    800058a4:	00006797          	auipc	a5,0x6
    800058a8:	ce478793          	addi	a5,a5,-796 # 8000b588 <_ZL8finished>
    800058ac:	01278933          	add	s2,a5,s2
    800058b0:	00100793          	li	a5,1
    800058b4:	00f90023          	sb	a5,0(s2)
}
    800058b8:	01813083          	ld	ra,24(sp)
    800058bc:	01013403          	ld	s0,16(sp)
    800058c0:	00813483          	ld	s1,8(sp)
    800058c4:	00013903          	ld	s2,0(sp)
    800058c8:	02010113          	addi	sp,sp,32
    800058cc:	00008067          	ret

00000000800058d0 <_Z12testSleepingv>:

void testSleeping() {
    800058d0:	fc010113          	addi	sp,sp,-64
    800058d4:	02113c23          	sd	ra,56(sp)
    800058d8:	02813823          	sd	s0,48(sp)
    800058dc:	02913423          	sd	s1,40(sp)
    800058e0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800058e4:	00a00793          	li	a5,10
    800058e8:	fcf43823          	sd	a5,-48(s0)
    800058ec:	01400793          	li	a5,20
    800058f0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800058f4:	00000493          	li	s1,0
    800058f8:	02c0006f          	j	80005924 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800058fc:	00349793          	slli	a5,s1,0x3
    80005900:	fd040613          	addi	a2,s0,-48
    80005904:	00f60633          	add	a2,a2,a5
    80005908:	00000597          	auipc	a1,0x0
    8000590c:	f2458593          	addi	a1,a1,-220 # 8000582c <_ZL9sleepyRunPv>
    80005910:	fc040513          	addi	a0,s0,-64
    80005914:	00f50533          	add	a0,a0,a5
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	c1c080e7          	jalr	-996(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005920:	0014849b          	addiw	s1,s1,1
    80005924:	00100793          	li	a5,1
    80005928:	fc97dae3          	bge	a5,s1,800058fc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000592c:	00006797          	auipc	a5,0x6
    80005930:	c5c7c783          	lbu	a5,-932(a5) # 8000b588 <_ZL8finished>
    80005934:	fe078ce3          	beqz	a5,8000592c <_Z12testSleepingv+0x5c>
    80005938:	00006797          	auipc	a5,0x6
    8000593c:	c517c783          	lbu	a5,-943(a5) # 8000b589 <_ZL8finished+0x1>
    80005940:	fe0786e3          	beqz	a5,8000592c <_Z12testSleepingv+0x5c>
}
    80005944:	03813083          	ld	ra,56(sp)
    80005948:	03013403          	ld	s0,48(sp)
    8000594c:	02813483          	ld	s1,40(sp)
    80005950:	04010113          	addi	sp,sp,64
    80005954:	00008067          	ret

0000000080005958 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005958:	fe010113          	addi	sp,sp,-32
    8000595c:	00113c23          	sd	ra,24(sp)
    80005960:	00813823          	sd	s0,16(sp)
    80005964:	00913423          	sd	s1,8(sp)
    80005968:	01213023          	sd	s2,0(sp)
    8000596c:	02010413          	addi	s0,sp,32
    80005970:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005974:	00100793          	li	a5,1
    80005978:	02a7f863          	bgeu	a5,a0,800059a8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000597c:	00a00793          	li	a5,10
    80005980:	02f577b3          	remu	a5,a0,a5
    80005984:	02078e63          	beqz	a5,800059c0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005988:	fff48513          	addi	a0,s1,-1
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	fcc080e7          	jalr	-52(ra) # 80005958 <_ZL9fibonaccim>
    80005994:	00050913          	mv	s2,a0
    80005998:	ffe48513          	addi	a0,s1,-2
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	fbc080e7          	jalr	-68(ra) # 80005958 <_ZL9fibonaccim>
    800059a4:	00a90533          	add	a0,s2,a0
}
    800059a8:	01813083          	ld	ra,24(sp)
    800059ac:	01013403          	ld	s0,16(sp)
    800059b0:	00813483          	ld	s1,8(sp)
    800059b4:	00013903          	ld	s2,0(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	c54080e7          	jalr	-940(ra) # 80001614 <_Z15thread_dispatchv>
    800059c8:	fc1ff06f          	j	80005988 <_ZL9fibonaccim+0x30>

00000000800059cc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	01213023          	sd	s2,0(sp)
    800059e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059e4:	00a00493          	li	s1,10
    800059e8:	0400006f          	j	80005a28 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059ec:	00003517          	auipc	a0,0x3
    800059f0:	67c50513          	addi	a0,a0,1660 # 80009068 <CONSOLE_STATUS+0x58>
    800059f4:	fffff097          	auipc	ra,0xfffff
    800059f8:	63c080e7          	jalr	1596(ra) # 80005030 <_Z11printStringPKc>
    800059fc:	00000613          	li	a2,0
    80005a00:	00a00593          	li	a1,10
    80005a04:	00048513          	mv	a0,s1
    80005a08:	fffff097          	auipc	ra,0xfffff
    80005a0c:	7d8080e7          	jalr	2008(ra) # 800051e0 <_Z8printIntiii>
    80005a10:	00003517          	auipc	a0,0x3
    80005a14:	73050513          	addi	a0,a0,1840 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005a18:	fffff097          	auipc	ra,0xfffff
    80005a1c:	618080e7          	jalr	1560(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a20:	0014849b          	addiw	s1,s1,1
    80005a24:	0ff4f493          	andi	s1,s1,255
    80005a28:	00c00793          	li	a5,12
    80005a2c:	fc97f0e3          	bgeu	a5,s1,800059ec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a30:	00003517          	auipc	a0,0x3
    80005a34:	7f050513          	addi	a0,a0,2032 # 80009220 <_ZZ6prtIntmE6digits+0x128>
    80005a38:	fffff097          	auipc	ra,0xfffff
    80005a3c:	5f8080e7          	jalr	1528(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a40:	00500313          	li	t1,5
    thread_dispatch();
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	bd0080e7          	jalr	-1072(ra) # 80001614 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a4c:	01000513          	li	a0,16
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	f08080e7          	jalr	-248(ra) # 80005958 <_ZL9fibonaccim>
    80005a58:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a5c:	00003517          	auipc	a0,0x3
    80005a60:	62450513          	addi	a0,a0,1572 # 80009080 <CONSOLE_STATUS+0x70>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	5cc080e7          	jalr	1484(ra) # 80005030 <_Z11printStringPKc>
    80005a6c:	00000613          	li	a2,0
    80005a70:	00a00593          	li	a1,10
    80005a74:	0009051b          	sext.w	a0,s2
    80005a78:	fffff097          	auipc	ra,0xfffff
    80005a7c:	768080e7          	jalr	1896(ra) # 800051e0 <_Z8printIntiii>
    80005a80:	00003517          	auipc	a0,0x3
    80005a84:	6c050513          	addi	a0,a0,1728 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005a88:	fffff097          	auipc	ra,0xfffff
    80005a8c:	5a8080e7          	jalr	1448(ra) # 80005030 <_Z11printStringPKc>
    80005a90:	0400006f          	j	80005ad0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a94:	00003517          	auipc	a0,0x3
    80005a98:	5d450513          	addi	a0,a0,1492 # 80009068 <CONSOLE_STATUS+0x58>
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	594080e7          	jalr	1428(ra) # 80005030 <_Z11printStringPKc>
    80005aa4:	00000613          	li	a2,0
    80005aa8:	00a00593          	li	a1,10
    80005aac:	00048513          	mv	a0,s1
    80005ab0:	fffff097          	auipc	ra,0xfffff
    80005ab4:	730080e7          	jalr	1840(ra) # 800051e0 <_Z8printIntiii>
    80005ab8:	00003517          	auipc	a0,0x3
    80005abc:	68850513          	addi	a0,a0,1672 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005ac0:	fffff097          	auipc	ra,0xfffff
    80005ac4:	570080e7          	jalr	1392(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ac8:	0014849b          	addiw	s1,s1,1
    80005acc:	0ff4f493          	andi	s1,s1,255
    80005ad0:	00f00793          	li	a5,15
    80005ad4:	fc97f0e3          	bgeu	a5,s1,80005a94 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ad8:	00003517          	auipc	a0,0x3
    80005adc:	75850513          	addi	a0,a0,1880 # 80009230 <_ZZ6prtIntmE6digits+0x138>
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	550080e7          	jalr	1360(ra) # 80005030 <_Z11printStringPKc>
    finishedD = true;
    80005ae8:	00100793          	li	a5,1
    80005aec:	00006717          	auipc	a4,0x6
    80005af0:	a8f70f23          	sb	a5,-1378(a4) # 8000b58a <_ZL9finishedD>
    thread_dispatch();
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	b20080e7          	jalr	-1248(ra) # 80001614 <_Z15thread_dispatchv>
}
    80005afc:	01813083          	ld	ra,24(sp)
    80005b00:	01013403          	ld	s0,16(sp)
    80005b04:	00813483          	ld	s1,8(sp)
    80005b08:	00013903          	ld	s2,0(sp)
    80005b0c:	02010113          	addi	sp,sp,32
    80005b10:	00008067          	ret

0000000080005b14 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b14:	fe010113          	addi	sp,sp,-32
    80005b18:	00113c23          	sd	ra,24(sp)
    80005b1c:	00813823          	sd	s0,16(sp)
    80005b20:	00913423          	sd	s1,8(sp)
    80005b24:	01213023          	sd	s2,0(sp)
    80005b28:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b2c:	00000493          	li	s1,0
    80005b30:	0400006f          	j	80005b70 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b34:	00003517          	auipc	a0,0x3
    80005b38:	4ec50513          	addi	a0,a0,1260 # 80009020 <CONSOLE_STATUS+0x10>
    80005b3c:	fffff097          	auipc	ra,0xfffff
    80005b40:	4f4080e7          	jalr	1268(ra) # 80005030 <_Z11printStringPKc>
    80005b44:	00000613          	li	a2,0
    80005b48:	00a00593          	li	a1,10
    80005b4c:	00048513          	mv	a0,s1
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	690080e7          	jalr	1680(ra) # 800051e0 <_Z8printIntiii>
    80005b58:	00003517          	auipc	a0,0x3
    80005b5c:	5e850513          	addi	a0,a0,1512 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005b60:	fffff097          	auipc	ra,0xfffff
    80005b64:	4d0080e7          	jalr	1232(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b68:	0014849b          	addiw	s1,s1,1
    80005b6c:	0ff4f493          	andi	s1,s1,255
    80005b70:	00200793          	li	a5,2
    80005b74:	fc97f0e3          	bgeu	a5,s1,80005b34 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005b78:	00003517          	auipc	a0,0x3
    80005b7c:	69850513          	addi	a0,a0,1688 # 80009210 <_ZZ6prtIntmE6digits+0x118>
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	4b0080e7          	jalr	1200(ra) # 80005030 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005b88:	00700313          	li	t1,7
    thread_dispatch();
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	a88080e7          	jalr	-1400(ra) # 80001614 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005b94:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005b98:	00003517          	auipc	a0,0x3
    80005b9c:	4a050513          	addi	a0,a0,1184 # 80009038 <CONSOLE_STATUS+0x28>
    80005ba0:	fffff097          	auipc	ra,0xfffff
    80005ba4:	490080e7          	jalr	1168(ra) # 80005030 <_Z11printStringPKc>
    80005ba8:	00000613          	li	a2,0
    80005bac:	00a00593          	li	a1,10
    80005bb0:	0009051b          	sext.w	a0,s2
    80005bb4:	fffff097          	auipc	ra,0xfffff
    80005bb8:	62c080e7          	jalr	1580(ra) # 800051e0 <_Z8printIntiii>
    80005bbc:	00003517          	auipc	a0,0x3
    80005bc0:	58450513          	addi	a0,a0,1412 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005bc4:	fffff097          	auipc	ra,0xfffff
    80005bc8:	46c080e7          	jalr	1132(ra) # 80005030 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005bcc:	00c00513          	li	a0,12
    80005bd0:	00000097          	auipc	ra,0x0
    80005bd4:	d88080e7          	jalr	-632(ra) # 80005958 <_ZL9fibonaccim>
    80005bd8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005bdc:	00003517          	auipc	a0,0x3
    80005be0:	46450513          	addi	a0,a0,1124 # 80009040 <CONSOLE_STATUS+0x30>
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	44c080e7          	jalr	1100(ra) # 80005030 <_Z11printStringPKc>
    80005bec:	00000613          	li	a2,0
    80005bf0:	00a00593          	li	a1,10
    80005bf4:	0009051b          	sext.w	a0,s2
    80005bf8:	fffff097          	auipc	ra,0xfffff
    80005bfc:	5e8080e7          	jalr	1512(ra) # 800051e0 <_Z8printIntiii>
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	54050513          	addi	a0,a0,1344 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	428080e7          	jalr	1064(ra) # 80005030 <_Z11printStringPKc>
    80005c10:	0400006f          	j	80005c50 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	40c50513          	addi	a0,a0,1036 # 80009020 <CONSOLE_STATUS+0x10>
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	414080e7          	jalr	1044(ra) # 80005030 <_Z11printStringPKc>
    80005c24:	00000613          	li	a2,0
    80005c28:	00a00593          	li	a1,10
    80005c2c:	00048513          	mv	a0,s1
    80005c30:	fffff097          	auipc	ra,0xfffff
    80005c34:	5b0080e7          	jalr	1456(ra) # 800051e0 <_Z8printIntiii>
    80005c38:	00003517          	auipc	a0,0x3
    80005c3c:	50850513          	addi	a0,a0,1288 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	3f0080e7          	jalr	1008(ra) # 80005030 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c48:	0014849b          	addiw	s1,s1,1
    80005c4c:	0ff4f493          	andi	s1,s1,255
    80005c50:	00500793          	li	a5,5
    80005c54:	fc97f0e3          	bgeu	a5,s1,80005c14 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005c58:	00003517          	auipc	a0,0x3
    80005c5c:	59850513          	addi	a0,a0,1432 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    80005c60:	fffff097          	auipc	ra,0xfffff
    80005c64:	3d0080e7          	jalr	976(ra) # 80005030 <_Z11printStringPKc>
    finishedC = true;
    80005c68:	00100793          	li	a5,1
    80005c6c:	00006717          	auipc	a4,0x6
    80005c70:	90f70fa3          	sb	a5,-1761(a4) # 8000b58b <_ZL9finishedC>
    thread_dispatch();
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	9a0080e7          	jalr	-1632(ra) # 80001614 <_Z15thread_dispatchv>
}
    80005c7c:	01813083          	ld	ra,24(sp)
    80005c80:	01013403          	ld	s0,16(sp)
    80005c84:	00813483          	ld	s1,8(sp)
    80005c88:	00013903          	ld	s2,0(sp)
    80005c8c:	02010113          	addi	sp,sp,32
    80005c90:	00008067          	ret

0000000080005c94 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005c94:	fe010113          	addi	sp,sp,-32
    80005c98:	00113c23          	sd	ra,24(sp)
    80005c9c:	00813823          	sd	s0,16(sp)
    80005ca0:	00913423          	sd	s1,8(sp)
    80005ca4:	01213023          	sd	s2,0(sp)
    80005ca8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005cac:	00000913          	li	s2,0
    80005cb0:	0400006f          	j	80005cf0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005cb4:	ffffc097          	auipc	ra,0xffffc
    80005cb8:	960080e7          	jalr	-1696(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005cbc:	00148493          	addi	s1,s1,1
    80005cc0:	000027b7          	lui	a5,0x2
    80005cc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005cc8:	0097ee63          	bltu	a5,s1,80005ce4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ccc:	00000713          	li	a4,0
    80005cd0:	000077b7          	lui	a5,0x7
    80005cd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005cd8:	fce7eee3          	bltu	a5,a4,80005cb4 <_ZL11workerBodyBPv+0x20>
    80005cdc:	00170713          	addi	a4,a4,1
    80005ce0:	ff1ff06f          	j	80005cd0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ce4:	00a00793          	li	a5,10
    80005ce8:	04f90663          	beq	s2,a5,80005d34 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005cec:	00190913          	addi	s2,s2,1
    80005cf0:	00f00793          	li	a5,15
    80005cf4:	0527e463          	bltu	a5,s2,80005d3c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	3d050513          	addi	a0,a0,976 # 800090c8 <CONSOLE_STATUS+0xb8>
    80005d00:	fffff097          	auipc	ra,0xfffff
    80005d04:	330080e7          	jalr	816(ra) # 80005030 <_Z11printStringPKc>
    80005d08:	00000613          	li	a2,0
    80005d0c:	00a00593          	li	a1,10
    80005d10:	0009051b          	sext.w	a0,s2
    80005d14:	fffff097          	auipc	ra,0xfffff
    80005d18:	4cc080e7          	jalr	1228(ra) # 800051e0 <_Z8printIntiii>
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	42450513          	addi	a0,a0,1060 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005d24:	fffff097          	auipc	ra,0xfffff
    80005d28:	30c080e7          	jalr	780(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d2c:	00000493          	li	s1,0
    80005d30:	f91ff06f          	j	80005cc0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d34:	14102ff3          	csrr	t6,sepc
    80005d38:	fb5ff06f          	j	80005cec <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	4c450513          	addi	a0,a0,1220 # 80009200 <_ZZ6prtIntmE6digits+0x108>
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	2ec080e7          	jalr	748(ra) # 80005030 <_Z11printStringPKc>
    finishedB = true;
    80005d4c:	00100793          	li	a5,1
    80005d50:	00006717          	auipc	a4,0x6
    80005d54:	82f70e23          	sb	a5,-1988(a4) # 8000b58c <_ZL9finishedB>
    thread_dispatch();
    80005d58:	ffffc097          	auipc	ra,0xffffc
    80005d5c:	8bc080e7          	jalr	-1860(ra) # 80001614 <_Z15thread_dispatchv>
}
    80005d60:	01813083          	ld	ra,24(sp)
    80005d64:	01013403          	ld	s0,16(sp)
    80005d68:	00813483          	ld	s1,8(sp)
    80005d6c:	00013903          	ld	s2,0(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00008067          	ret

0000000080005d78 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005d90:	00000913          	li	s2,0
    80005d94:	0380006f          	j	80005dcc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005d98:	ffffc097          	auipc	ra,0xffffc
    80005d9c:	87c080e7          	jalr	-1924(ra) # 80001614 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005da0:	00148493          	addi	s1,s1,1
    80005da4:	000027b7          	lui	a5,0x2
    80005da8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005dac:	0097ee63          	bltu	a5,s1,80005dc8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005db0:	00000713          	li	a4,0
    80005db4:	000077b7          	lui	a5,0x7
    80005db8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005dbc:	fce7eee3          	bltu	a5,a4,80005d98 <_ZL11workerBodyAPv+0x20>
    80005dc0:	00170713          	addi	a4,a4,1
    80005dc4:	ff1ff06f          	j	80005db4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005dc8:	00190913          	addi	s2,s2,1
    80005dcc:	00900793          	li	a5,9
    80005dd0:	0527e063          	bltu	a5,s2,80005e10 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005dd4:	00003517          	auipc	a0,0x3
    80005dd8:	2d450513          	addi	a0,a0,724 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	254080e7          	jalr	596(ra) # 80005030 <_Z11printStringPKc>
    80005de4:	00000613          	li	a2,0
    80005de8:	00a00593          	li	a1,10
    80005dec:	0009051b          	sext.w	a0,s2
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	3f0080e7          	jalr	1008(ra) # 800051e0 <_Z8printIntiii>
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	34850513          	addi	a0,a0,840 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	230080e7          	jalr	560(ra) # 80005030 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e08:	00000493          	li	s1,0
    80005e0c:	f99ff06f          	j	80005da4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e10:	00003517          	auipc	a0,0x3
    80005e14:	3e050513          	addi	a0,a0,992 # 800091f0 <_ZZ6prtIntmE6digits+0xf8>
    80005e18:	fffff097          	auipc	ra,0xfffff
    80005e1c:	218080e7          	jalr	536(ra) # 80005030 <_Z11printStringPKc>
    finishedA = true;
    80005e20:	00100793          	li	a5,1
    80005e24:	00005717          	auipc	a4,0x5
    80005e28:	76f704a3          	sb	a5,1897(a4) # 8000b58d <_ZL9finishedA>
}
    80005e2c:	01813083          	ld	ra,24(sp)
    80005e30:	01013403          	ld	s0,16(sp)
    80005e34:	00813483          	ld	s1,8(sp)
    80005e38:	00013903          	ld	s2,0(sp)
    80005e3c:	02010113          	addi	sp,sp,32
    80005e40:	00008067          	ret

0000000080005e44 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005e44:	fd010113          	addi	sp,sp,-48
    80005e48:	02113423          	sd	ra,40(sp)
    80005e4c:	02813023          	sd	s0,32(sp)
    80005e50:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e54:	00000613          	li	a2,0
    80005e58:	00000597          	auipc	a1,0x0
    80005e5c:	f2058593          	addi	a1,a1,-224 # 80005d78 <_ZL11workerBodyAPv>
    80005e60:	fd040513          	addi	a0,s0,-48
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	6d0080e7          	jalr	1744(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005e6c:	00003517          	auipc	a0,0x3
    80005e70:	3d450513          	addi	a0,a0,980 # 80009240 <_ZZ6prtIntmE6digits+0x148>
    80005e74:	fffff097          	auipc	ra,0xfffff
    80005e78:	1bc080e7          	jalr	444(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e7c:	00000613          	li	a2,0
    80005e80:	00000597          	auipc	a1,0x0
    80005e84:	e1458593          	addi	a1,a1,-492 # 80005c94 <_ZL11workerBodyBPv>
    80005e88:	fd840513          	addi	a0,s0,-40
    80005e8c:	ffffb097          	auipc	ra,0xffffb
    80005e90:	6a8080e7          	jalr	1704(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005e94:	00003517          	auipc	a0,0x3
    80005e98:	3c450513          	addi	a0,a0,964 # 80009258 <_ZZ6prtIntmE6digits+0x160>
    80005e9c:	fffff097          	auipc	ra,0xfffff
    80005ea0:	194080e7          	jalr	404(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ea4:	00000613          	li	a2,0
    80005ea8:	00000597          	auipc	a1,0x0
    80005eac:	c6c58593          	addi	a1,a1,-916 # 80005b14 <_ZL11workerBodyCPv>
    80005eb0:	fe040513          	addi	a0,s0,-32
    80005eb4:	ffffb097          	auipc	ra,0xffffb
    80005eb8:	680080e7          	jalr	1664(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005ebc:	00003517          	auipc	a0,0x3
    80005ec0:	3b450513          	addi	a0,a0,948 # 80009270 <_ZZ6prtIntmE6digits+0x178>
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	16c080e7          	jalr	364(ra) # 80005030 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ecc:	00000613          	li	a2,0
    80005ed0:	00000597          	auipc	a1,0x0
    80005ed4:	afc58593          	addi	a1,a1,-1284 # 800059cc <_ZL11workerBodyDPv>
    80005ed8:	fe840513          	addi	a0,s0,-24
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	658080e7          	jalr	1624(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	3a450513          	addi	a0,a0,932 # 80009288 <_ZZ6prtIntmE6digits+0x190>
    80005eec:	fffff097          	auipc	ra,0xfffff
    80005ef0:	144080e7          	jalr	324(ra) # 80005030 <_Z11printStringPKc>
    80005ef4:	00c0006f          	j	80005f00 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	71c080e7          	jalr	1820(ra) # 80001614 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f00:	00005797          	auipc	a5,0x5
    80005f04:	68d7c783          	lbu	a5,1677(a5) # 8000b58d <_ZL9finishedA>
    80005f08:	fe0788e3          	beqz	a5,80005ef8 <_Z16System_Mode_testv+0xb4>
    80005f0c:	00005797          	auipc	a5,0x5
    80005f10:	6807c783          	lbu	a5,1664(a5) # 8000b58c <_ZL9finishedB>
    80005f14:	fe0782e3          	beqz	a5,80005ef8 <_Z16System_Mode_testv+0xb4>
    80005f18:	00005797          	auipc	a5,0x5
    80005f1c:	6737c783          	lbu	a5,1651(a5) # 8000b58b <_ZL9finishedC>
    80005f20:	fc078ce3          	beqz	a5,80005ef8 <_Z16System_Mode_testv+0xb4>
    80005f24:	00005797          	auipc	a5,0x5
    80005f28:	6667c783          	lbu	a5,1638(a5) # 8000b58a <_ZL9finishedD>
    80005f2c:	fc0786e3          	beqz	a5,80005ef8 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f30:	02813083          	ld	ra,40(sp)
    80005f34:	02013403          	ld	s0,32(sp)
    80005f38:	03010113          	addi	sp,sp,48
    80005f3c:	00008067          	ret

0000000080005f40 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f40:	fe010113          	addi	sp,sp,-32
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	00813823          	sd	s0,16(sp)
    80005f4c:	00913423          	sd	s1,8(sp)
    80005f50:	01213023          	sd	s2,0(sp)
    80005f54:	02010413          	addi	s0,sp,32
    80005f58:	00050493          	mv	s1,a0
    80005f5c:	00058913          	mv	s2,a1
    80005f60:	0015879b          	addiw	a5,a1,1
    80005f64:	0007851b          	sext.w	a0,a5
    80005f68:	00f4a023          	sw	a5,0(s1)
    80005f6c:	0004a823          	sw	zero,16(s1)
    80005f70:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f74:	00251513          	slli	a0,a0,0x2
    80005f78:	ffffb097          	auipc	ra,0xffffb
    80005f7c:	53c080e7          	jalr	1340(ra) # 800014b4 <_Z9mem_allocm>
    80005f80:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005f84:	00000593          	li	a1,0
    80005f88:	02048513          	addi	a0,s1,32
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	6cc080e7          	jalr	1740(ra) # 80001658 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005f94:	00090593          	mv	a1,s2
    80005f98:	01848513          	addi	a0,s1,24
    80005f9c:	ffffb097          	auipc	ra,0xffffb
    80005fa0:	6bc080e7          	jalr	1724(ra) # 80001658 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005fa4:	00100593          	li	a1,1
    80005fa8:	02848513          	addi	a0,s1,40
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	6ac080e7          	jalr	1708(ra) # 80001658 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005fb4:	00100593          	li	a1,1
    80005fb8:	03048513          	addi	a0,s1,48
    80005fbc:	ffffb097          	auipc	ra,0xffffb
    80005fc0:	69c080e7          	jalr	1692(ra) # 80001658 <_Z8sem_openPP4_semj>
}
    80005fc4:	01813083          	ld	ra,24(sp)
    80005fc8:	01013403          	ld	s0,16(sp)
    80005fcc:	00813483          	ld	s1,8(sp)
    80005fd0:	00013903          	ld	s2,0(sp)
    80005fd4:	02010113          	addi	sp,sp,32
    80005fd8:	00008067          	ret

0000000080005fdc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005fdc:	fe010113          	addi	sp,sp,-32
    80005fe0:	00113c23          	sd	ra,24(sp)
    80005fe4:	00813823          	sd	s0,16(sp)
    80005fe8:	00913423          	sd	s1,8(sp)
    80005fec:	01213023          	sd	s2,0(sp)
    80005ff0:	02010413          	addi	s0,sp,32
    80005ff4:	00050493          	mv	s1,a0
    80005ff8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005ffc:	01853503          	ld	a0,24(a0)
    80006000:	ffffb097          	auipc	ra,0xffffb
    80006004:	690080e7          	jalr	1680(ra) # 80001690 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006008:	0304b503          	ld	a0,48(s1)
    8000600c:	ffffb097          	auipc	ra,0xffffb
    80006010:	684080e7          	jalr	1668(ra) # 80001690 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006014:	0084b783          	ld	a5,8(s1)
    80006018:	0144a703          	lw	a4,20(s1)
    8000601c:	00271713          	slli	a4,a4,0x2
    80006020:	00e787b3          	add	a5,a5,a4
    80006024:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006028:	0144a783          	lw	a5,20(s1)
    8000602c:	0017879b          	addiw	a5,a5,1
    80006030:	0004a703          	lw	a4,0(s1)
    80006034:	02e7e7bb          	remw	a5,a5,a4
    80006038:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000603c:	0304b503          	ld	a0,48(s1)
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	66c080e7          	jalr	1644(ra) # 800016ac <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006048:	0204b503          	ld	a0,32(s1)
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	660080e7          	jalr	1632(ra) # 800016ac <_Z10sem_signalP4_sem>

}
    80006054:	01813083          	ld	ra,24(sp)
    80006058:	01013403          	ld	s0,16(sp)
    8000605c:	00813483          	ld	s1,8(sp)
    80006060:	00013903          	ld	s2,0(sp)
    80006064:	02010113          	addi	sp,sp,32
    80006068:	00008067          	ret

000000008000606c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00113c23          	sd	ra,24(sp)
    80006074:	00813823          	sd	s0,16(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	01213023          	sd	s2,0(sp)
    80006080:	02010413          	addi	s0,sp,32
    80006084:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006088:	02053503          	ld	a0,32(a0)
    8000608c:	ffffb097          	auipc	ra,0xffffb
    80006090:	604080e7          	jalr	1540(ra) # 80001690 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006094:	0284b503          	ld	a0,40(s1)
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	5f8080e7          	jalr	1528(ra) # 80001690 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800060a0:	0084b703          	ld	a4,8(s1)
    800060a4:	0104a783          	lw	a5,16(s1)
    800060a8:	00279693          	slli	a3,a5,0x2
    800060ac:	00d70733          	add	a4,a4,a3
    800060b0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060b4:	0017879b          	addiw	a5,a5,1
    800060b8:	0004a703          	lw	a4,0(s1)
    800060bc:	02e7e7bb          	remw	a5,a5,a4
    800060c0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060c4:	0284b503          	ld	a0,40(s1)
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	5e4080e7          	jalr	1508(ra) # 800016ac <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800060d0:	0184b503          	ld	a0,24(s1)
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	5d8080e7          	jalr	1496(ra) # 800016ac <_Z10sem_signalP4_sem>

    return ret;
}
    800060dc:	00090513          	mv	a0,s2
    800060e0:	01813083          	ld	ra,24(sp)
    800060e4:	01013403          	ld	s0,16(sp)
    800060e8:	00813483          	ld	s1,8(sp)
    800060ec:	00013903          	ld	s2,0(sp)
    800060f0:	02010113          	addi	sp,sp,32
    800060f4:	00008067          	ret

00000000800060f8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800060f8:	fe010113          	addi	sp,sp,-32
    800060fc:	00113c23          	sd	ra,24(sp)
    80006100:	00813823          	sd	s0,16(sp)
    80006104:	00913423          	sd	s1,8(sp)
    80006108:	01213023          	sd	s2,0(sp)
    8000610c:	02010413          	addi	s0,sp,32
    80006110:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006114:	02853503          	ld	a0,40(a0)
    80006118:	ffffb097          	auipc	ra,0xffffb
    8000611c:	578080e7          	jalr	1400(ra) # 80001690 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006120:	0304b503          	ld	a0,48(s1)
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	56c080e7          	jalr	1388(ra) # 80001690 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000612c:	0144a783          	lw	a5,20(s1)
    80006130:	0104a903          	lw	s2,16(s1)
    80006134:	0327ce63          	blt	a5,s2,80006170 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006138:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000613c:	0304b503          	ld	a0,48(s1)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	56c080e7          	jalr	1388(ra) # 800016ac <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006148:	0284b503          	ld	a0,40(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	560080e7          	jalr	1376(ra) # 800016ac <_Z10sem_signalP4_sem>

    return ret;
}
    80006154:	00090513          	mv	a0,s2
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	00013903          	ld	s2,0(sp)
    80006168:	02010113          	addi	sp,sp,32
    8000616c:	00008067          	ret
        ret = cap - head + tail;
    80006170:	0004a703          	lw	a4,0(s1)
    80006174:	4127093b          	subw	s2,a4,s2
    80006178:	00f9093b          	addw	s2,s2,a5
    8000617c:	fc1ff06f          	j	8000613c <_ZN6Buffer6getCntEv+0x44>

0000000080006180 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006180:	fe010113          	addi	sp,sp,-32
    80006184:	00113c23          	sd	ra,24(sp)
    80006188:	00813823          	sd	s0,16(sp)
    8000618c:	00913423          	sd	s1,8(sp)
    80006190:	02010413          	addi	s0,sp,32
    80006194:	00050493          	mv	s1,a0
    putc('\n');
    80006198:	00a00513          	li	a0,10
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	568080e7          	jalr	1384(ra) # 80001704 <_Z4putcc>
    printString("Buffer deleted!\n");
    800061a4:	00003517          	auipc	a0,0x3
    800061a8:	0fc50513          	addi	a0,a0,252 # 800092a0 <_ZZ6prtIntmE6digits+0x1a8>
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	e84080e7          	jalr	-380(ra) # 80005030 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061b4:	00048513          	mv	a0,s1
    800061b8:	00000097          	auipc	ra,0x0
    800061bc:	f40080e7          	jalr	-192(ra) # 800060f8 <_ZN6Buffer6getCntEv>
    800061c0:	02a05c63          	blez	a0,800061f8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061c4:	0084b783          	ld	a5,8(s1)
    800061c8:	0104a703          	lw	a4,16(s1)
    800061cc:	00271713          	slli	a4,a4,0x2
    800061d0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061d4:	0007c503          	lbu	a0,0(a5)
    800061d8:	ffffb097          	auipc	ra,0xffffb
    800061dc:	52c080e7          	jalr	1324(ra) # 80001704 <_Z4putcc>
        head = (head + 1) % cap;
    800061e0:	0104a783          	lw	a5,16(s1)
    800061e4:	0017879b          	addiw	a5,a5,1
    800061e8:	0004a703          	lw	a4,0(s1)
    800061ec:	02e7e7bb          	remw	a5,a5,a4
    800061f0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800061f4:	fc1ff06f          	j	800061b4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800061f8:	02100513          	li	a0,33
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	508080e7          	jalr	1288(ra) # 80001704 <_Z4putcc>
    putc('\n');
    80006204:	00a00513          	li	a0,10
    80006208:	ffffb097          	auipc	ra,0xffffb
    8000620c:	4fc080e7          	jalr	1276(ra) # 80001704 <_Z4putcc>
    mem_free(buffer);
    80006210:	0084b503          	ld	a0,8(s1)
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	2e0080e7          	jalr	736(ra) # 800014f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000621c:	0204b503          	ld	a0,32(s1)
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	454080e7          	jalr	1108(ra) # 80001674 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006228:	0184b503          	ld	a0,24(s1)
    8000622c:	ffffb097          	auipc	ra,0xffffb
    80006230:	448080e7          	jalr	1096(ra) # 80001674 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006234:	0304b503          	ld	a0,48(s1)
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	43c080e7          	jalr	1084(ra) # 80001674 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006240:	0284b503          	ld	a0,40(s1)
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	430080e7          	jalr	1072(ra) # 80001674 <_Z9sem_closeP4_sem>
}
    8000624c:	01813083          	ld	ra,24(sp)
    80006250:	01013403          	ld	s0,16(sp)
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <start>:
    80006260:	ff010113          	addi	sp,sp,-16
    80006264:	00813423          	sd	s0,8(sp)
    80006268:	01010413          	addi	s0,sp,16
    8000626c:	300027f3          	csrr	a5,mstatus
    80006270:	ffffe737          	lui	a4,0xffffe
    80006274:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff200f>
    80006278:	00e7f7b3          	and	a5,a5,a4
    8000627c:	00001737          	lui	a4,0x1
    80006280:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006284:	00e7e7b3          	or	a5,a5,a4
    80006288:	30079073          	csrw	mstatus,a5
    8000628c:	00000797          	auipc	a5,0x0
    80006290:	16078793          	addi	a5,a5,352 # 800063ec <system_main>
    80006294:	34179073          	csrw	mepc,a5
    80006298:	00000793          	li	a5,0
    8000629c:	18079073          	csrw	satp,a5
    800062a0:	000107b7          	lui	a5,0x10
    800062a4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062a8:	30279073          	csrw	medeleg,a5
    800062ac:	30379073          	csrw	mideleg,a5
    800062b0:	104027f3          	csrr	a5,sie
    800062b4:	2227e793          	ori	a5,a5,546
    800062b8:	10479073          	csrw	sie,a5
    800062bc:	fff00793          	li	a5,-1
    800062c0:	00a7d793          	srli	a5,a5,0xa
    800062c4:	3b079073          	csrw	pmpaddr0,a5
    800062c8:	00f00793          	li	a5,15
    800062cc:	3a079073          	csrw	pmpcfg0,a5
    800062d0:	f14027f3          	csrr	a5,mhartid
    800062d4:	0200c737          	lui	a4,0x200c
    800062d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062dc:	0007869b          	sext.w	a3,a5
    800062e0:	00269713          	slli	a4,a3,0x2
    800062e4:	000f4637          	lui	a2,0xf4
    800062e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062ec:	00d70733          	add	a4,a4,a3
    800062f0:	0037979b          	slliw	a5,a5,0x3
    800062f4:	020046b7          	lui	a3,0x2004
    800062f8:	00d787b3          	add	a5,a5,a3
    800062fc:	00c585b3          	add	a1,a1,a2
    80006300:	00371693          	slli	a3,a4,0x3
    80006304:	00005717          	auipc	a4,0x5
    80006308:	28c70713          	addi	a4,a4,652 # 8000b590 <timer_scratch>
    8000630c:	00b7b023          	sd	a1,0(a5)
    80006310:	00d70733          	add	a4,a4,a3
    80006314:	00f73c23          	sd	a5,24(a4)
    80006318:	02c73023          	sd	a2,32(a4)
    8000631c:	34071073          	csrw	mscratch,a4
    80006320:	00000797          	auipc	a5,0x0
    80006324:	6e078793          	addi	a5,a5,1760 # 80006a00 <timervec>
    80006328:	30579073          	csrw	mtvec,a5
    8000632c:	300027f3          	csrr	a5,mstatus
    80006330:	0087e793          	ori	a5,a5,8
    80006334:	30079073          	csrw	mstatus,a5
    80006338:	304027f3          	csrr	a5,mie
    8000633c:	0807e793          	ori	a5,a5,128
    80006340:	30479073          	csrw	mie,a5
    80006344:	f14027f3          	csrr	a5,mhartid
    80006348:	0007879b          	sext.w	a5,a5
    8000634c:	00078213          	mv	tp,a5
    80006350:	30200073          	mret
    80006354:	00813403          	ld	s0,8(sp)
    80006358:	01010113          	addi	sp,sp,16
    8000635c:	00008067          	ret

0000000080006360 <timerinit>:
    80006360:	ff010113          	addi	sp,sp,-16
    80006364:	00813423          	sd	s0,8(sp)
    80006368:	01010413          	addi	s0,sp,16
    8000636c:	f14027f3          	csrr	a5,mhartid
    80006370:	0200c737          	lui	a4,0x200c
    80006374:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006378:	0007869b          	sext.w	a3,a5
    8000637c:	00269713          	slli	a4,a3,0x2
    80006380:	000f4637          	lui	a2,0xf4
    80006384:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006388:	00d70733          	add	a4,a4,a3
    8000638c:	0037979b          	slliw	a5,a5,0x3
    80006390:	020046b7          	lui	a3,0x2004
    80006394:	00d787b3          	add	a5,a5,a3
    80006398:	00c585b3          	add	a1,a1,a2
    8000639c:	00371693          	slli	a3,a4,0x3
    800063a0:	00005717          	auipc	a4,0x5
    800063a4:	1f070713          	addi	a4,a4,496 # 8000b590 <timer_scratch>
    800063a8:	00b7b023          	sd	a1,0(a5)
    800063ac:	00d70733          	add	a4,a4,a3
    800063b0:	00f73c23          	sd	a5,24(a4)
    800063b4:	02c73023          	sd	a2,32(a4)
    800063b8:	34071073          	csrw	mscratch,a4
    800063bc:	00000797          	auipc	a5,0x0
    800063c0:	64478793          	addi	a5,a5,1604 # 80006a00 <timervec>
    800063c4:	30579073          	csrw	mtvec,a5
    800063c8:	300027f3          	csrr	a5,mstatus
    800063cc:	0087e793          	ori	a5,a5,8
    800063d0:	30079073          	csrw	mstatus,a5
    800063d4:	304027f3          	csrr	a5,mie
    800063d8:	0807e793          	ori	a5,a5,128
    800063dc:	30479073          	csrw	mie,a5
    800063e0:	00813403          	ld	s0,8(sp)
    800063e4:	01010113          	addi	sp,sp,16
    800063e8:	00008067          	ret

00000000800063ec <system_main>:
    800063ec:	fe010113          	addi	sp,sp,-32
    800063f0:	00813823          	sd	s0,16(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	00113c23          	sd	ra,24(sp)
    800063fc:	02010413          	addi	s0,sp,32
    80006400:	00000097          	auipc	ra,0x0
    80006404:	0c4080e7          	jalr	196(ra) # 800064c4 <cpuid>
    80006408:	00005497          	auipc	s1,0x5
    8000640c:	0d848493          	addi	s1,s1,216 # 8000b4e0 <started>
    80006410:	02050263          	beqz	a0,80006434 <system_main+0x48>
    80006414:	0004a783          	lw	a5,0(s1)
    80006418:	0007879b          	sext.w	a5,a5
    8000641c:	fe078ce3          	beqz	a5,80006414 <system_main+0x28>
    80006420:	0ff0000f          	fence
    80006424:	00003517          	auipc	a0,0x3
    80006428:	07450513          	addi	a0,a0,116 # 80009498 <_ZZ6prtIntmE6digits+0x3a0>
    8000642c:	00001097          	auipc	ra,0x1
    80006430:	a70080e7          	jalr	-1424(ra) # 80006e9c <panic>
    80006434:	00001097          	auipc	ra,0x1
    80006438:	9c4080e7          	jalr	-1596(ra) # 80006df8 <consoleinit>
    8000643c:	00001097          	auipc	ra,0x1
    80006440:	150080e7          	jalr	336(ra) # 8000758c <printfinit>
    80006444:	00003517          	auipc	a0,0x3
    80006448:	cfc50513          	addi	a0,a0,-772 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000644c:	00001097          	auipc	ra,0x1
    80006450:	aac080e7          	jalr	-1364(ra) # 80006ef8 <__printf>
    80006454:	00003517          	auipc	a0,0x3
    80006458:	01450513          	addi	a0,a0,20 # 80009468 <_ZZ6prtIntmE6digits+0x370>
    8000645c:	00001097          	auipc	ra,0x1
    80006460:	a9c080e7          	jalr	-1380(ra) # 80006ef8 <__printf>
    80006464:	00003517          	auipc	a0,0x3
    80006468:	cdc50513          	addi	a0,a0,-804 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	a8c080e7          	jalr	-1396(ra) # 80006ef8 <__printf>
    80006474:	00001097          	auipc	ra,0x1
    80006478:	4a4080e7          	jalr	1188(ra) # 80007918 <kinit>
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	148080e7          	jalr	328(ra) # 800065c4 <trapinit>
    80006484:	00000097          	auipc	ra,0x0
    80006488:	16c080e7          	jalr	364(ra) # 800065f0 <trapinithart>
    8000648c:	00000097          	auipc	ra,0x0
    80006490:	5b4080e7          	jalr	1460(ra) # 80006a40 <plicinit>
    80006494:	00000097          	auipc	ra,0x0
    80006498:	5d4080e7          	jalr	1492(ra) # 80006a68 <plicinithart>
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	078080e7          	jalr	120(ra) # 80006514 <userinit>
    800064a4:	0ff0000f          	fence
    800064a8:	00100793          	li	a5,1
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	fd450513          	addi	a0,a0,-44 # 80009480 <_ZZ6prtIntmE6digits+0x388>
    800064b4:	00f4a023          	sw	a5,0(s1)
    800064b8:	00001097          	auipc	ra,0x1
    800064bc:	a40080e7          	jalr	-1472(ra) # 80006ef8 <__printf>
    800064c0:	0000006f          	j	800064c0 <system_main+0xd4>

00000000800064c4 <cpuid>:
    800064c4:	ff010113          	addi	sp,sp,-16
    800064c8:	00813423          	sd	s0,8(sp)
    800064cc:	01010413          	addi	s0,sp,16
    800064d0:	00020513          	mv	a0,tp
    800064d4:	00813403          	ld	s0,8(sp)
    800064d8:	0005051b          	sext.w	a0,a0
    800064dc:	01010113          	addi	sp,sp,16
    800064e0:	00008067          	ret

00000000800064e4 <mycpu>:
    800064e4:	ff010113          	addi	sp,sp,-16
    800064e8:	00813423          	sd	s0,8(sp)
    800064ec:	01010413          	addi	s0,sp,16
    800064f0:	00020793          	mv	a5,tp
    800064f4:	00813403          	ld	s0,8(sp)
    800064f8:	0007879b          	sext.w	a5,a5
    800064fc:	00779793          	slli	a5,a5,0x7
    80006500:	00006517          	auipc	a0,0x6
    80006504:	0c050513          	addi	a0,a0,192 # 8000c5c0 <cpus>
    80006508:	00f50533          	add	a0,a0,a5
    8000650c:	01010113          	addi	sp,sp,16
    80006510:	00008067          	ret

0000000080006514 <userinit>:
    80006514:	ff010113          	addi	sp,sp,-16
    80006518:	00813423          	sd	s0,8(sp)
    8000651c:	01010413          	addi	s0,sp,16
    80006520:	00813403          	ld	s0,8(sp)
    80006524:	01010113          	addi	sp,sp,16
    80006528:	ffffb317          	auipc	t1,0xffffb
    8000652c:	72830067          	jr	1832(t1) # 80001c50 <main>

0000000080006530 <either_copyout>:
    80006530:	ff010113          	addi	sp,sp,-16
    80006534:	00813023          	sd	s0,0(sp)
    80006538:	00113423          	sd	ra,8(sp)
    8000653c:	01010413          	addi	s0,sp,16
    80006540:	02051663          	bnez	a0,8000656c <either_copyout+0x3c>
    80006544:	00058513          	mv	a0,a1
    80006548:	00060593          	mv	a1,a2
    8000654c:	0006861b          	sext.w	a2,a3
    80006550:	00002097          	auipc	ra,0x2
    80006554:	c54080e7          	jalr	-940(ra) # 800081a4 <__memmove>
    80006558:	00813083          	ld	ra,8(sp)
    8000655c:	00013403          	ld	s0,0(sp)
    80006560:	00000513          	li	a0,0
    80006564:	01010113          	addi	sp,sp,16
    80006568:	00008067          	ret
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	f5450513          	addi	a0,a0,-172 # 800094c0 <_ZZ6prtIntmE6digits+0x3c8>
    80006574:	00001097          	auipc	ra,0x1
    80006578:	928080e7          	jalr	-1752(ra) # 80006e9c <panic>

000000008000657c <either_copyin>:
    8000657c:	ff010113          	addi	sp,sp,-16
    80006580:	00813023          	sd	s0,0(sp)
    80006584:	00113423          	sd	ra,8(sp)
    80006588:	01010413          	addi	s0,sp,16
    8000658c:	02059463          	bnez	a1,800065b4 <either_copyin+0x38>
    80006590:	00060593          	mv	a1,a2
    80006594:	0006861b          	sext.w	a2,a3
    80006598:	00002097          	auipc	ra,0x2
    8000659c:	c0c080e7          	jalr	-1012(ra) # 800081a4 <__memmove>
    800065a0:	00813083          	ld	ra,8(sp)
    800065a4:	00013403          	ld	s0,0(sp)
    800065a8:	00000513          	li	a0,0
    800065ac:	01010113          	addi	sp,sp,16
    800065b0:	00008067          	ret
    800065b4:	00003517          	auipc	a0,0x3
    800065b8:	f3450513          	addi	a0,a0,-204 # 800094e8 <_ZZ6prtIntmE6digits+0x3f0>
    800065bc:	00001097          	auipc	ra,0x1
    800065c0:	8e0080e7          	jalr	-1824(ra) # 80006e9c <panic>

00000000800065c4 <trapinit>:
    800065c4:	ff010113          	addi	sp,sp,-16
    800065c8:	00813423          	sd	s0,8(sp)
    800065cc:	01010413          	addi	s0,sp,16
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	00003597          	auipc	a1,0x3
    800065d8:	f3c58593          	addi	a1,a1,-196 # 80009510 <_ZZ6prtIntmE6digits+0x418>
    800065dc:	00006517          	auipc	a0,0x6
    800065e0:	06450513          	addi	a0,a0,100 # 8000c640 <tickslock>
    800065e4:	01010113          	addi	sp,sp,16
    800065e8:	00001317          	auipc	t1,0x1
    800065ec:	5c030067          	jr	1472(t1) # 80007ba8 <initlock>

00000000800065f0 <trapinithart>:
    800065f0:	ff010113          	addi	sp,sp,-16
    800065f4:	00813423          	sd	s0,8(sp)
    800065f8:	01010413          	addi	s0,sp,16
    800065fc:	00000797          	auipc	a5,0x0
    80006600:	2f478793          	addi	a5,a5,756 # 800068f0 <kernelvec>
    80006604:	10579073          	csrw	stvec,a5
    80006608:	00813403          	ld	s0,8(sp)
    8000660c:	01010113          	addi	sp,sp,16
    80006610:	00008067          	ret

0000000080006614 <usertrap>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813423          	sd	s0,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	00813403          	ld	s0,8(sp)
    80006624:	01010113          	addi	sp,sp,16
    80006628:	00008067          	ret

000000008000662c <usertrapret>:
    8000662c:	ff010113          	addi	sp,sp,-16
    80006630:	00813423          	sd	s0,8(sp)
    80006634:	01010413          	addi	s0,sp,16
    80006638:	00813403          	ld	s0,8(sp)
    8000663c:	01010113          	addi	sp,sp,16
    80006640:	00008067          	ret

0000000080006644 <kerneltrap>:
    80006644:	fe010113          	addi	sp,sp,-32
    80006648:	00813823          	sd	s0,16(sp)
    8000664c:	00113c23          	sd	ra,24(sp)
    80006650:	00913423          	sd	s1,8(sp)
    80006654:	02010413          	addi	s0,sp,32
    80006658:	142025f3          	csrr	a1,scause
    8000665c:	100027f3          	csrr	a5,sstatus
    80006660:	0027f793          	andi	a5,a5,2
    80006664:	10079c63          	bnez	a5,8000677c <kerneltrap+0x138>
    80006668:	142027f3          	csrr	a5,scause
    8000666c:	0207ce63          	bltz	a5,800066a8 <kerneltrap+0x64>
    80006670:	00003517          	auipc	a0,0x3
    80006674:	ee850513          	addi	a0,a0,-280 # 80009558 <_ZZ6prtIntmE6digits+0x460>
    80006678:	00001097          	auipc	ra,0x1
    8000667c:	880080e7          	jalr	-1920(ra) # 80006ef8 <__printf>
    80006680:	141025f3          	csrr	a1,sepc
    80006684:	14302673          	csrr	a2,stval
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	ee050513          	addi	a0,a0,-288 # 80009568 <_ZZ6prtIntmE6digits+0x470>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	868080e7          	jalr	-1944(ra) # 80006ef8 <__printf>
    80006698:	00003517          	auipc	a0,0x3
    8000669c:	ee850513          	addi	a0,a0,-280 # 80009580 <_ZZ6prtIntmE6digits+0x488>
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	7fc080e7          	jalr	2044(ra) # 80006e9c <panic>
    800066a8:	0ff7f713          	andi	a4,a5,255
    800066ac:	00900693          	li	a3,9
    800066b0:	04d70063          	beq	a4,a3,800066f0 <kerneltrap+0xac>
    800066b4:	fff00713          	li	a4,-1
    800066b8:	03f71713          	slli	a4,a4,0x3f
    800066bc:	00170713          	addi	a4,a4,1
    800066c0:	fae798e3          	bne	a5,a4,80006670 <kerneltrap+0x2c>
    800066c4:	00000097          	auipc	ra,0x0
    800066c8:	e00080e7          	jalr	-512(ra) # 800064c4 <cpuid>
    800066cc:	06050663          	beqz	a0,80006738 <kerneltrap+0xf4>
    800066d0:	144027f3          	csrr	a5,sip
    800066d4:	ffd7f793          	andi	a5,a5,-3
    800066d8:	14479073          	csrw	sip,a5
    800066dc:	01813083          	ld	ra,24(sp)
    800066e0:	01013403          	ld	s0,16(sp)
    800066e4:	00813483          	ld	s1,8(sp)
    800066e8:	02010113          	addi	sp,sp,32
    800066ec:	00008067          	ret
    800066f0:	00000097          	auipc	ra,0x0
    800066f4:	3c4080e7          	jalr	964(ra) # 80006ab4 <plic_claim>
    800066f8:	00a00793          	li	a5,10
    800066fc:	00050493          	mv	s1,a0
    80006700:	06f50863          	beq	a0,a5,80006770 <kerneltrap+0x12c>
    80006704:	fc050ce3          	beqz	a0,800066dc <kerneltrap+0x98>
    80006708:	00050593          	mv	a1,a0
    8000670c:	00003517          	auipc	a0,0x3
    80006710:	e2c50513          	addi	a0,a0,-468 # 80009538 <_ZZ6prtIntmE6digits+0x440>
    80006714:	00000097          	auipc	ra,0x0
    80006718:	7e4080e7          	jalr	2020(ra) # 80006ef8 <__printf>
    8000671c:	01013403          	ld	s0,16(sp)
    80006720:	01813083          	ld	ra,24(sp)
    80006724:	00048513          	mv	a0,s1
    80006728:	00813483          	ld	s1,8(sp)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00000317          	auipc	t1,0x0
    80006734:	3bc30067          	jr	956(t1) # 80006aec <plic_complete>
    80006738:	00006517          	auipc	a0,0x6
    8000673c:	f0850513          	addi	a0,a0,-248 # 8000c640 <tickslock>
    80006740:	00001097          	auipc	ra,0x1
    80006744:	48c080e7          	jalr	1164(ra) # 80007bcc <acquire>
    80006748:	00005717          	auipc	a4,0x5
    8000674c:	d9c70713          	addi	a4,a4,-612 # 8000b4e4 <ticks>
    80006750:	00072783          	lw	a5,0(a4)
    80006754:	00006517          	auipc	a0,0x6
    80006758:	eec50513          	addi	a0,a0,-276 # 8000c640 <tickslock>
    8000675c:	0017879b          	addiw	a5,a5,1
    80006760:	00f72023          	sw	a5,0(a4)
    80006764:	00001097          	auipc	ra,0x1
    80006768:	534080e7          	jalr	1332(ra) # 80007c98 <release>
    8000676c:	f65ff06f          	j	800066d0 <kerneltrap+0x8c>
    80006770:	00001097          	auipc	ra,0x1
    80006774:	090080e7          	jalr	144(ra) # 80007800 <uartintr>
    80006778:	fa5ff06f          	j	8000671c <kerneltrap+0xd8>
    8000677c:	00003517          	auipc	a0,0x3
    80006780:	d9c50513          	addi	a0,a0,-612 # 80009518 <_ZZ6prtIntmE6digits+0x420>
    80006784:	00000097          	auipc	ra,0x0
    80006788:	718080e7          	jalr	1816(ra) # 80006e9c <panic>

000000008000678c <clockintr>:
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00913423          	sd	s1,8(sp)
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	02010413          	addi	s0,sp,32
    800067a0:	00006497          	auipc	s1,0x6
    800067a4:	ea048493          	addi	s1,s1,-352 # 8000c640 <tickslock>
    800067a8:	00048513          	mv	a0,s1
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	420080e7          	jalr	1056(ra) # 80007bcc <acquire>
    800067b4:	00005717          	auipc	a4,0x5
    800067b8:	d3070713          	addi	a4,a4,-720 # 8000b4e4 <ticks>
    800067bc:	00072783          	lw	a5,0(a4)
    800067c0:	01013403          	ld	s0,16(sp)
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	00048513          	mv	a0,s1
    800067cc:	0017879b          	addiw	a5,a5,1
    800067d0:	00813483          	ld	s1,8(sp)
    800067d4:	00f72023          	sw	a5,0(a4)
    800067d8:	02010113          	addi	sp,sp,32
    800067dc:	00001317          	auipc	t1,0x1
    800067e0:	4bc30067          	jr	1212(t1) # 80007c98 <release>

00000000800067e4 <devintr>:
    800067e4:	142027f3          	csrr	a5,scause
    800067e8:	00000513          	li	a0,0
    800067ec:	0007c463          	bltz	a5,800067f4 <devintr+0x10>
    800067f0:	00008067          	ret
    800067f4:	fe010113          	addi	sp,sp,-32
    800067f8:	00813823          	sd	s0,16(sp)
    800067fc:	00113c23          	sd	ra,24(sp)
    80006800:	00913423          	sd	s1,8(sp)
    80006804:	02010413          	addi	s0,sp,32
    80006808:	0ff7f713          	andi	a4,a5,255
    8000680c:	00900693          	li	a3,9
    80006810:	04d70c63          	beq	a4,a3,80006868 <devintr+0x84>
    80006814:	fff00713          	li	a4,-1
    80006818:	03f71713          	slli	a4,a4,0x3f
    8000681c:	00170713          	addi	a4,a4,1
    80006820:	00e78c63          	beq	a5,a4,80006838 <devintr+0x54>
    80006824:	01813083          	ld	ra,24(sp)
    80006828:	01013403          	ld	s0,16(sp)
    8000682c:	00813483          	ld	s1,8(sp)
    80006830:	02010113          	addi	sp,sp,32
    80006834:	00008067          	ret
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	c8c080e7          	jalr	-884(ra) # 800064c4 <cpuid>
    80006840:	06050663          	beqz	a0,800068ac <devintr+0xc8>
    80006844:	144027f3          	csrr	a5,sip
    80006848:	ffd7f793          	andi	a5,a5,-3
    8000684c:	14479073          	csrw	sip,a5
    80006850:	01813083          	ld	ra,24(sp)
    80006854:	01013403          	ld	s0,16(sp)
    80006858:	00813483          	ld	s1,8(sp)
    8000685c:	00200513          	li	a0,2
    80006860:	02010113          	addi	sp,sp,32
    80006864:	00008067          	ret
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	24c080e7          	jalr	588(ra) # 80006ab4 <plic_claim>
    80006870:	00a00793          	li	a5,10
    80006874:	00050493          	mv	s1,a0
    80006878:	06f50663          	beq	a0,a5,800068e4 <devintr+0x100>
    8000687c:	00100513          	li	a0,1
    80006880:	fa0482e3          	beqz	s1,80006824 <devintr+0x40>
    80006884:	00048593          	mv	a1,s1
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	cb050513          	addi	a0,a0,-848 # 80009538 <_ZZ6prtIntmE6digits+0x440>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	668080e7          	jalr	1640(ra) # 80006ef8 <__printf>
    80006898:	00048513          	mv	a0,s1
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	250080e7          	jalr	592(ra) # 80006aec <plic_complete>
    800068a4:	00100513          	li	a0,1
    800068a8:	f7dff06f          	j	80006824 <devintr+0x40>
    800068ac:	00006517          	auipc	a0,0x6
    800068b0:	d9450513          	addi	a0,a0,-620 # 8000c640 <tickslock>
    800068b4:	00001097          	auipc	ra,0x1
    800068b8:	318080e7          	jalr	792(ra) # 80007bcc <acquire>
    800068bc:	00005717          	auipc	a4,0x5
    800068c0:	c2870713          	addi	a4,a4,-984 # 8000b4e4 <ticks>
    800068c4:	00072783          	lw	a5,0(a4)
    800068c8:	00006517          	auipc	a0,0x6
    800068cc:	d7850513          	addi	a0,a0,-648 # 8000c640 <tickslock>
    800068d0:	0017879b          	addiw	a5,a5,1
    800068d4:	00f72023          	sw	a5,0(a4)
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	3c0080e7          	jalr	960(ra) # 80007c98 <release>
    800068e0:	f65ff06f          	j	80006844 <devintr+0x60>
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	f1c080e7          	jalr	-228(ra) # 80007800 <uartintr>
    800068ec:	fadff06f          	j	80006898 <devintr+0xb4>

00000000800068f0 <kernelvec>:
    800068f0:	f0010113          	addi	sp,sp,-256
    800068f4:	00113023          	sd	ra,0(sp)
    800068f8:	00213423          	sd	sp,8(sp)
    800068fc:	00313823          	sd	gp,16(sp)
    80006900:	00413c23          	sd	tp,24(sp)
    80006904:	02513023          	sd	t0,32(sp)
    80006908:	02613423          	sd	t1,40(sp)
    8000690c:	02713823          	sd	t2,48(sp)
    80006910:	02813c23          	sd	s0,56(sp)
    80006914:	04913023          	sd	s1,64(sp)
    80006918:	04a13423          	sd	a0,72(sp)
    8000691c:	04b13823          	sd	a1,80(sp)
    80006920:	04c13c23          	sd	a2,88(sp)
    80006924:	06d13023          	sd	a3,96(sp)
    80006928:	06e13423          	sd	a4,104(sp)
    8000692c:	06f13823          	sd	a5,112(sp)
    80006930:	07013c23          	sd	a6,120(sp)
    80006934:	09113023          	sd	a7,128(sp)
    80006938:	09213423          	sd	s2,136(sp)
    8000693c:	09313823          	sd	s3,144(sp)
    80006940:	09413c23          	sd	s4,152(sp)
    80006944:	0b513023          	sd	s5,160(sp)
    80006948:	0b613423          	sd	s6,168(sp)
    8000694c:	0b713823          	sd	s7,176(sp)
    80006950:	0b813c23          	sd	s8,184(sp)
    80006954:	0d913023          	sd	s9,192(sp)
    80006958:	0da13423          	sd	s10,200(sp)
    8000695c:	0db13823          	sd	s11,208(sp)
    80006960:	0dc13c23          	sd	t3,216(sp)
    80006964:	0fd13023          	sd	t4,224(sp)
    80006968:	0fe13423          	sd	t5,232(sp)
    8000696c:	0ff13823          	sd	t6,240(sp)
    80006970:	cd5ff0ef          	jal	ra,80006644 <kerneltrap>
    80006974:	00013083          	ld	ra,0(sp)
    80006978:	00813103          	ld	sp,8(sp)
    8000697c:	01013183          	ld	gp,16(sp)
    80006980:	02013283          	ld	t0,32(sp)
    80006984:	02813303          	ld	t1,40(sp)
    80006988:	03013383          	ld	t2,48(sp)
    8000698c:	03813403          	ld	s0,56(sp)
    80006990:	04013483          	ld	s1,64(sp)
    80006994:	04813503          	ld	a0,72(sp)
    80006998:	05013583          	ld	a1,80(sp)
    8000699c:	05813603          	ld	a2,88(sp)
    800069a0:	06013683          	ld	a3,96(sp)
    800069a4:	06813703          	ld	a4,104(sp)
    800069a8:	07013783          	ld	a5,112(sp)
    800069ac:	07813803          	ld	a6,120(sp)
    800069b0:	08013883          	ld	a7,128(sp)
    800069b4:	08813903          	ld	s2,136(sp)
    800069b8:	09013983          	ld	s3,144(sp)
    800069bc:	09813a03          	ld	s4,152(sp)
    800069c0:	0a013a83          	ld	s5,160(sp)
    800069c4:	0a813b03          	ld	s6,168(sp)
    800069c8:	0b013b83          	ld	s7,176(sp)
    800069cc:	0b813c03          	ld	s8,184(sp)
    800069d0:	0c013c83          	ld	s9,192(sp)
    800069d4:	0c813d03          	ld	s10,200(sp)
    800069d8:	0d013d83          	ld	s11,208(sp)
    800069dc:	0d813e03          	ld	t3,216(sp)
    800069e0:	0e013e83          	ld	t4,224(sp)
    800069e4:	0e813f03          	ld	t5,232(sp)
    800069e8:	0f013f83          	ld	t6,240(sp)
    800069ec:	10010113          	addi	sp,sp,256
    800069f0:	10200073          	sret
    800069f4:	00000013          	nop
    800069f8:	00000013          	nop
    800069fc:	00000013          	nop

0000000080006a00 <timervec>:
    80006a00:	34051573          	csrrw	a0,mscratch,a0
    80006a04:	00b53023          	sd	a1,0(a0)
    80006a08:	00c53423          	sd	a2,8(a0)
    80006a0c:	00d53823          	sd	a3,16(a0)
    80006a10:	01853583          	ld	a1,24(a0)
    80006a14:	02053603          	ld	a2,32(a0)
    80006a18:	0005b683          	ld	a3,0(a1)
    80006a1c:	00c686b3          	add	a3,a3,a2
    80006a20:	00d5b023          	sd	a3,0(a1)
    80006a24:	00200593          	li	a1,2
    80006a28:	14459073          	csrw	sip,a1
    80006a2c:	01053683          	ld	a3,16(a0)
    80006a30:	00853603          	ld	a2,8(a0)
    80006a34:	00053583          	ld	a1,0(a0)
    80006a38:	34051573          	csrrw	a0,mscratch,a0
    80006a3c:	30200073          	mret

0000000080006a40 <plicinit>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	00813403          	ld	s0,8(sp)
    80006a50:	0c0007b7          	lui	a5,0xc000
    80006a54:	00100713          	li	a4,1
    80006a58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a5c:	00e7a223          	sw	a4,4(a5)
    80006a60:	01010113          	addi	sp,sp,16
    80006a64:	00008067          	ret

0000000080006a68 <plicinithart>:
    80006a68:	ff010113          	addi	sp,sp,-16
    80006a6c:	00813023          	sd	s0,0(sp)
    80006a70:	00113423          	sd	ra,8(sp)
    80006a74:	01010413          	addi	s0,sp,16
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	a4c080e7          	jalr	-1460(ra) # 800064c4 <cpuid>
    80006a80:	0085171b          	slliw	a4,a0,0x8
    80006a84:	0c0027b7          	lui	a5,0xc002
    80006a88:	00e787b3          	add	a5,a5,a4
    80006a8c:	40200713          	li	a4,1026
    80006a90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006a94:	00813083          	ld	ra,8(sp)
    80006a98:	00013403          	ld	s0,0(sp)
    80006a9c:	00d5151b          	slliw	a0,a0,0xd
    80006aa0:	0c2017b7          	lui	a5,0xc201
    80006aa4:	00a78533          	add	a0,a5,a0
    80006aa8:	00052023          	sw	zero,0(a0)
    80006aac:	01010113          	addi	sp,sp,16
    80006ab0:	00008067          	ret

0000000080006ab4 <plic_claim>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813023          	sd	s0,0(sp)
    80006abc:	00113423          	sd	ra,8(sp)
    80006ac0:	01010413          	addi	s0,sp,16
    80006ac4:	00000097          	auipc	ra,0x0
    80006ac8:	a00080e7          	jalr	-1536(ra) # 800064c4 <cpuid>
    80006acc:	00813083          	ld	ra,8(sp)
    80006ad0:	00013403          	ld	s0,0(sp)
    80006ad4:	00d5151b          	slliw	a0,a0,0xd
    80006ad8:	0c2017b7          	lui	a5,0xc201
    80006adc:	00a78533          	add	a0,a5,a0
    80006ae0:	00452503          	lw	a0,4(a0)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <plic_complete>:
    80006aec:	fe010113          	addi	sp,sp,-32
    80006af0:	00813823          	sd	s0,16(sp)
    80006af4:	00913423          	sd	s1,8(sp)
    80006af8:	00113c23          	sd	ra,24(sp)
    80006afc:	02010413          	addi	s0,sp,32
    80006b00:	00050493          	mv	s1,a0
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	9c0080e7          	jalr	-1600(ra) # 800064c4 <cpuid>
    80006b0c:	01813083          	ld	ra,24(sp)
    80006b10:	01013403          	ld	s0,16(sp)
    80006b14:	00d5179b          	slliw	a5,a0,0xd
    80006b18:	0c201737          	lui	a4,0xc201
    80006b1c:	00f707b3          	add	a5,a4,a5
    80006b20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	02010113          	addi	sp,sp,32
    80006b2c:	00008067          	ret

0000000080006b30 <consolewrite>:
    80006b30:	fb010113          	addi	sp,sp,-80
    80006b34:	04813023          	sd	s0,64(sp)
    80006b38:	04113423          	sd	ra,72(sp)
    80006b3c:	02913c23          	sd	s1,56(sp)
    80006b40:	03213823          	sd	s2,48(sp)
    80006b44:	03313423          	sd	s3,40(sp)
    80006b48:	03413023          	sd	s4,32(sp)
    80006b4c:	01513c23          	sd	s5,24(sp)
    80006b50:	05010413          	addi	s0,sp,80
    80006b54:	06c05c63          	blez	a2,80006bcc <consolewrite+0x9c>
    80006b58:	00060993          	mv	s3,a2
    80006b5c:	00050a13          	mv	s4,a0
    80006b60:	00058493          	mv	s1,a1
    80006b64:	00000913          	li	s2,0
    80006b68:	fff00a93          	li	s5,-1
    80006b6c:	01c0006f          	j	80006b88 <consolewrite+0x58>
    80006b70:	fbf44503          	lbu	a0,-65(s0)
    80006b74:	0019091b          	addiw	s2,s2,1
    80006b78:	00148493          	addi	s1,s1,1
    80006b7c:	00001097          	auipc	ra,0x1
    80006b80:	a9c080e7          	jalr	-1380(ra) # 80007618 <uartputc>
    80006b84:	03298063          	beq	s3,s2,80006ba4 <consolewrite+0x74>
    80006b88:	00048613          	mv	a2,s1
    80006b8c:	00100693          	li	a3,1
    80006b90:	000a0593          	mv	a1,s4
    80006b94:	fbf40513          	addi	a0,s0,-65
    80006b98:	00000097          	auipc	ra,0x0
    80006b9c:	9e4080e7          	jalr	-1564(ra) # 8000657c <either_copyin>
    80006ba0:	fd5518e3          	bne	a0,s5,80006b70 <consolewrite+0x40>
    80006ba4:	04813083          	ld	ra,72(sp)
    80006ba8:	04013403          	ld	s0,64(sp)
    80006bac:	03813483          	ld	s1,56(sp)
    80006bb0:	02813983          	ld	s3,40(sp)
    80006bb4:	02013a03          	ld	s4,32(sp)
    80006bb8:	01813a83          	ld	s5,24(sp)
    80006bbc:	00090513          	mv	a0,s2
    80006bc0:	03013903          	ld	s2,48(sp)
    80006bc4:	05010113          	addi	sp,sp,80
    80006bc8:	00008067          	ret
    80006bcc:	00000913          	li	s2,0
    80006bd0:	fd5ff06f          	j	80006ba4 <consolewrite+0x74>

0000000080006bd4 <consoleread>:
    80006bd4:	f9010113          	addi	sp,sp,-112
    80006bd8:	06813023          	sd	s0,96(sp)
    80006bdc:	04913c23          	sd	s1,88(sp)
    80006be0:	05213823          	sd	s2,80(sp)
    80006be4:	05313423          	sd	s3,72(sp)
    80006be8:	05413023          	sd	s4,64(sp)
    80006bec:	03513c23          	sd	s5,56(sp)
    80006bf0:	03613823          	sd	s6,48(sp)
    80006bf4:	03713423          	sd	s7,40(sp)
    80006bf8:	03813023          	sd	s8,32(sp)
    80006bfc:	06113423          	sd	ra,104(sp)
    80006c00:	01913c23          	sd	s9,24(sp)
    80006c04:	07010413          	addi	s0,sp,112
    80006c08:	00060b93          	mv	s7,a2
    80006c0c:	00050913          	mv	s2,a0
    80006c10:	00058c13          	mv	s8,a1
    80006c14:	00060b1b          	sext.w	s6,a2
    80006c18:	00006497          	auipc	s1,0x6
    80006c1c:	a5048493          	addi	s1,s1,-1456 # 8000c668 <cons>
    80006c20:	00400993          	li	s3,4
    80006c24:	fff00a13          	li	s4,-1
    80006c28:	00a00a93          	li	s5,10
    80006c2c:	05705e63          	blez	s7,80006c88 <consoleread+0xb4>
    80006c30:	09c4a703          	lw	a4,156(s1)
    80006c34:	0984a783          	lw	a5,152(s1)
    80006c38:	0007071b          	sext.w	a4,a4
    80006c3c:	08e78463          	beq	a5,a4,80006cc4 <consoleread+0xf0>
    80006c40:	07f7f713          	andi	a4,a5,127
    80006c44:	00e48733          	add	a4,s1,a4
    80006c48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c4c:	0017869b          	addiw	a3,a5,1
    80006c50:	08d4ac23          	sw	a3,152(s1)
    80006c54:	00070c9b          	sext.w	s9,a4
    80006c58:	0b370663          	beq	a4,s3,80006d04 <consoleread+0x130>
    80006c5c:	00100693          	li	a3,1
    80006c60:	f9f40613          	addi	a2,s0,-97
    80006c64:	000c0593          	mv	a1,s8
    80006c68:	00090513          	mv	a0,s2
    80006c6c:	f8e40fa3          	sb	a4,-97(s0)
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	8c0080e7          	jalr	-1856(ra) # 80006530 <either_copyout>
    80006c78:	01450863          	beq	a0,s4,80006c88 <consoleread+0xb4>
    80006c7c:	001c0c13          	addi	s8,s8,1
    80006c80:	fffb8b9b          	addiw	s7,s7,-1
    80006c84:	fb5c94e3          	bne	s9,s5,80006c2c <consoleread+0x58>
    80006c88:	000b851b          	sext.w	a0,s7
    80006c8c:	06813083          	ld	ra,104(sp)
    80006c90:	06013403          	ld	s0,96(sp)
    80006c94:	05813483          	ld	s1,88(sp)
    80006c98:	05013903          	ld	s2,80(sp)
    80006c9c:	04813983          	ld	s3,72(sp)
    80006ca0:	04013a03          	ld	s4,64(sp)
    80006ca4:	03813a83          	ld	s5,56(sp)
    80006ca8:	02813b83          	ld	s7,40(sp)
    80006cac:	02013c03          	ld	s8,32(sp)
    80006cb0:	01813c83          	ld	s9,24(sp)
    80006cb4:	40ab053b          	subw	a0,s6,a0
    80006cb8:	03013b03          	ld	s6,48(sp)
    80006cbc:	07010113          	addi	sp,sp,112
    80006cc0:	00008067          	ret
    80006cc4:	00001097          	auipc	ra,0x1
    80006cc8:	1d8080e7          	jalr	472(ra) # 80007e9c <push_on>
    80006ccc:	0984a703          	lw	a4,152(s1)
    80006cd0:	09c4a783          	lw	a5,156(s1)
    80006cd4:	0007879b          	sext.w	a5,a5
    80006cd8:	fef70ce3          	beq	a4,a5,80006cd0 <consoleread+0xfc>
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	234080e7          	jalr	564(ra) # 80007f10 <pop_on>
    80006ce4:	0984a783          	lw	a5,152(s1)
    80006ce8:	07f7f713          	andi	a4,a5,127
    80006cec:	00e48733          	add	a4,s1,a4
    80006cf0:	01874703          	lbu	a4,24(a4)
    80006cf4:	0017869b          	addiw	a3,a5,1
    80006cf8:	08d4ac23          	sw	a3,152(s1)
    80006cfc:	00070c9b          	sext.w	s9,a4
    80006d00:	f5371ee3          	bne	a4,s3,80006c5c <consoleread+0x88>
    80006d04:	000b851b          	sext.w	a0,s7
    80006d08:	f96bf2e3          	bgeu	s7,s6,80006c8c <consoleread+0xb8>
    80006d0c:	08f4ac23          	sw	a5,152(s1)
    80006d10:	f7dff06f          	j	80006c8c <consoleread+0xb8>

0000000080006d14 <consputc>:
    80006d14:	10000793          	li	a5,256
    80006d18:	00f50663          	beq	a0,a5,80006d24 <consputc+0x10>
    80006d1c:	00001317          	auipc	t1,0x1
    80006d20:	9f430067          	jr	-1548(t1) # 80007710 <uartputc_sync>
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00113423          	sd	ra,8(sp)
    80006d2c:	00813023          	sd	s0,0(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00800513          	li	a0,8
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	9d8080e7          	jalr	-1576(ra) # 80007710 <uartputc_sync>
    80006d40:	02000513          	li	a0,32
    80006d44:	00001097          	auipc	ra,0x1
    80006d48:	9cc080e7          	jalr	-1588(ra) # 80007710 <uartputc_sync>
    80006d4c:	00013403          	ld	s0,0(sp)
    80006d50:	00813083          	ld	ra,8(sp)
    80006d54:	00800513          	li	a0,8
    80006d58:	01010113          	addi	sp,sp,16
    80006d5c:	00001317          	auipc	t1,0x1
    80006d60:	9b430067          	jr	-1612(t1) # 80007710 <uartputc_sync>

0000000080006d64 <consoleintr>:
    80006d64:	fe010113          	addi	sp,sp,-32
    80006d68:	00813823          	sd	s0,16(sp)
    80006d6c:	00913423          	sd	s1,8(sp)
    80006d70:	01213023          	sd	s2,0(sp)
    80006d74:	00113c23          	sd	ra,24(sp)
    80006d78:	02010413          	addi	s0,sp,32
    80006d7c:	00006917          	auipc	s2,0x6
    80006d80:	8ec90913          	addi	s2,s2,-1812 # 8000c668 <cons>
    80006d84:	00050493          	mv	s1,a0
    80006d88:	00090513          	mv	a0,s2
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	e40080e7          	jalr	-448(ra) # 80007bcc <acquire>
    80006d94:	02048c63          	beqz	s1,80006dcc <consoleintr+0x68>
    80006d98:	0a092783          	lw	a5,160(s2)
    80006d9c:	09892703          	lw	a4,152(s2)
    80006da0:	07f00693          	li	a3,127
    80006da4:	40e7873b          	subw	a4,a5,a4
    80006da8:	02e6e263          	bltu	a3,a4,80006dcc <consoleintr+0x68>
    80006dac:	00d00713          	li	a4,13
    80006db0:	04e48063          	beq	s1,a4,80006df0 <consoleintr+0x8c>
    80006db4:	07f7f713          	andi	a4,a5,127
    80006db8:	00e90733          	add	a4,s2,a4
    80006dbc:	0017879b          	addiw	a5,a5,1
    80006dc0:	0af92023          	sw	a5,160(s2)
    80006dc4:	00970c23          	sb	s1,24(a4)
    80006dc8:	08f92e23          	sw	a5,156(s2)
    80006dcc:	01013403          	ld	s0,16(sp)
    80006dd0:	01813083          	ld	ra,24(sp)
    80006dd4:	00813483          	ld	s1,8(sp)
    80006dd8:	00013903          	ld	s2,0(sp)
    80006ddc:	00006517          	auipc	a0,0x6
    80006de0:	88c50513          	addi	a0,a0,-1908 # 8000c668 <cons>
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	00001317          	auipc	t1,0x1
    80006dec:	eb030067          	jr	-336(t1) # 80007c98 <release>
    80006df0:	00a00493          	li	s1,10
    80006df4:	fc1ff06f          	j	80006db4 <consoleintr+0x50>

0000000080006df8 <consoleinit>:
    80006df8:	fe010113          	addi	sp,sp,-32
    80006dfc:	00113c23          	sd	ra,24(sp)
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00913423          	sd	s1,8(sp)
    80006e08:	02010413          	addi	s0,sp,32
    80006e0c:	00006497          	auipc	s1,0x6
    80006e10:	85c48493          	addi	s1,s1,-1956 # 8000c668 <cons>
    80006e14:	00048513          	mv	a0,s1
    80006e18:	00002597          	auipc	a1,0x2
    80006e1c:	77858593          	addi	a1,a1,1912 # 80009590 <_ZZ6prtIntmE6digits+0x498>
    80006e20:	00001097          	auipc	ra,0x1
    80006e24:	d88080e7          	jalr	-632(ra) # 80007ba8 <initlock>
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	7ac080e7          	jalr	1964(ra) # 800075d4 <uartinit>
    80006e30:	01813083          	ld	ra,24(sp)
    80006e34:	01013403          	ld	s0,16(sp)
    80006e38:	00000797          	auipc	a5,0x0
    80006e3c:	d9c78793          	addi	a5,a5,-612 # 80006bd4 <consoleread>
    80006e40:	0af4bc23          	sd	a5,184(s1)
    80006e44:	00000797          	auipc	a5,0x0
    80006e48:	cec78793          	addi	a5,a5,-788 # 80006b30 <consolewrite>
    80006e4c:	0cf4b023          	sd	a5,192(s1)
    80006e50:	00813483          	ld	s1,8(sp)
    80006e54:	02010113          	addi	sp,sp,32
    80006e58:	00008067          	ret

0000000080006e5c <console_read>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813423          	sd	s0,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00813403          	ld	s0,8(sp)
    80006e6c:	00006317          	auipc	t1,0x6
    80006e70:	8b433303          	ld	t1,-1868(t1) # 8000c720 <devsw+0x10>
    80006e74:	01010113          	addi	sp,sp,16
    80006e78:	00030067          	jr	t1

0000000080006e7c <console_write>:
    80006e7c:	ff010113          	addi	sp,sp,-16
    80006e80:	00813423          	sd	s0,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	00813403          	ld	s0,8(sp)
    80006e8c:	00006317          	auipc	t1,0x6
    80006e90:	89c33303          	ld	t1,-1892(t1) # 8000c728 <devsw+0x18>
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00030067          	jr	t1

0000000080006e9c <panic>:
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	00813823          	sd	s0,16(sp)
    80006ea8:	00913423          	sd	s1,8(sp)
    80006eac:	02010413          	addi	s0,sp,32
    80006eb0:	00050493          	mv	s1,a0
    80006eb4:	00002517          	auipc	a0,0x2
    80006eb8:	6e450513          	addi	a0,a0,1764 # 80009598 <_ZZ6prtIntmE6digits+0x4a0>
    80006ebc:	00006797          	auipc	a5,0x6
    80006ec0:	9007a623          	sw	zero,-1780(a5) # 8000c7c8 <pr+0x18>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	034080e7          	jalr	52(ra) # 80006ef8 <__printf>
    80006ecc:	00048513          	mv	a0,s1
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	028080e7          	jalr	40(ra) # 80006ef8 <__printf>
    80006ed8:	00002517          	auipc	a0,0x2
    80006edc:	26850513          	addi	a0,a0,616 # 80009140 <_ZZ6prtIntmE6digits+0x48>
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	018080e7          	jalr	24(ra) # 80006ef8 <__printf>
    80006ee8:	00100793          	li	a5,1
    80006eec:	00004717          	auipc	a4,0x4
    80006ef0:	5ef72e23          	sw	a5,1532(a4) # 8000b4e8 <panicked>
    80006ef4:	0000006f          	j	80006ef4 <panic+0x58>

0000000080006ef8 <__printf>:
    80006ef8:	f3010113          	addi	sp,sp,-208
    80006efc:	08813023          	sd	s0,128(sp)
    80006f00:	07313423          	sd	s3,104(sp)
    80006f04:	09010413          	addi	s0,sp,144
    80006f08:	05813023          	sd	s8,64(sp)
    80006f0c:	08113423          	sd	ra,136(sp)
    80006f10:	06913c23          	sd	s1,120(sp)
    80006f14:	07213823          	sd	s2,112(sp)
    80006f18:	07413023          	sd	s4,96(sp)
    80006f1c:	05513c23          	sd	s5,88(sp)
    80006f20:	05613823          	sd	s6,80(sp)
    80006f24:	05713423          	sd	s7,72(sp)
    80006f28:	03913c23          	sd	s9,56(sp)
    80006f2c:	03a13823          	sd	s10,48(sp)
    80006f30:	03b13423          	sd	s11,40(sp)
    80006f34:	00006317          	auipc	t1,0x6
    80006f38:	87c30313          	addi	t1,t1,-1924 # 8000c7b0 <pr>
    80006f3c:	01832c03          	lw	s8,24(t1)
    80006f40:	00b43423          	sd	a1,8(s0)
    80006f44:	00c43823          	sd	a2,16(s0)
    80006f48:	00d43c23          	sd	a3,24(s0)
    80006f4c:	02e43023          	sd	a4,32(s0)
    80006f50:	02f43423          	sd	a5,40(s0)
    80006f54:	03043823          	sd	a6,48(s0)
    80006f58:	03143c23          	sd	a7,56(s0)
    80006f5c:	00050993          	mv	s3,a0
    80006f60:	4a0c1663          	bnez	s8,8000740c <__printf+0x514>
    80006f64:	60098c63          	beqz	s3,8000757c <__printf+0x684>
    80006f68:	0009c503          	lbu	a0,0(s3)
    80006f6c:	00840793          	addi	a5,s0,8
    80006f70:	f6f43c23          	sd	a5,-136(s0)
    80006f74:	00000493          	li	s1,0
    80006f78:	22050063          	beqz	a0,80007198 <__printf+0x2a0>
    80006f7c:	00002a37          	lui	s4,0x2
    80006f80:	00018ab7          	lui	s5,0x18
    80006f84:	000f4b37          	lui	s6,0xf4
    80006f88:	00989bb7          	lui	s7,0x989
    80006f8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006f90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006f94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006f98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006f9c:	00148c9b          	addiw	s9,s1,1
    80006fa0:	02500793          	li	a5,37
    80006fa4:	01998933          	add	s2,s3,s9
    80006fa8:	38f51263          	bne	a0,a5,8000732c <__printf+0x434>
    80006fac:	00094783          	lbu	a5,0(s2)
    80006fb0:	00078c9b          	sext.w	s9,a5
    80006fb4:	1e078263          	beqz	a5,80007198 <__printf+0x2a0>
    80006fb8:	0024849b          	addiw	s1,s1,2
    80006fbc:	07000713          	li	a4,112
    80006fc0:	00998933          	add	s2,s3,s1
    80006fc4:	38e78a63          	beq	a5,a4,80007358 <__printf+0x460>
    80006fc8:	20f76863          	bltu	a4,a5,800071d8 <__printf+0x2e0>
    80006fcc:	42a78863          	beq	a5,a0,800073fc <__printf+0x504>
    80006fd0:	06400713          	li	a4,100
    80006fd4:	40e79663          	bne	a5,a4,800073e0 <__printf+0x4e8>
    80006fd8:	f7843783          	ld	a5,-136(s0)
    80006fdc:	0007a603          	lw	a2,0(a5)
    80006fe0:	00878793          	addi	a5,a5,8
    80006fe4:	f6f43c23          	sd	a5,-136(s0)
    80006fe8:	42064a63          	bltz	a2,8000741c <__printf+0x524>
    80006fec:	00a00713          	li	a4,10
    80006ff0:	02e677bb          	remuw	a5,a2,a4
    80006ff4:	00002d97          	auipc	s11,0x2
    80006ff8:	5ccd8d93          	addi	s11,s11,1484 # 800095c0 <digits>
    80006ffc:	00900593          	li	a1,9
    80007000:	0006051b          	sext.w	a0,a2
    80007004:	00000c93          	li	s9,0
    80007008:	02079793          	slli	a5,a5,0x20
    8000700c:	0207d793          	srli	a5,a5,0x20
    80007010:	00fd87b3          	add	a5,s11,a5
    80007014:	0007c783          	lbu	a5,0(a5)
    80007018:	02e656bb          	divuw	a3,a2,a4
    8000701c:	f8f40023          	sb	a5,-128(s0)
    80007020:	14c5d863          	bge	a1,a2,80007170 <__printf+0x278>
    80007024:	06300593          	li	a1,99
    80007028:	00100c93          	li	s9,1
    8000702c:	02e6f7bb          	remuw	a5,a3,a4
    80007030:	02079793          	slli	a5,a5,0x20
    80007034:	0207d793          	srli	a5,a5,0x20
    80007038:	00fd87b3          	add	a5,s11,a5
    8000703c:	0007c783          	lbu	a5,0(a5)
    80007040:	02e6d73b          	divuw	a4,a3,a4
    80007044:	f8f400a3          	sb	a5,-127(s0)
    80007048:	12a5f463          	bgeu	a1,a0,80007170 <__printf+0x278>
    8000704c:	00a00693          	li	a3,10
    80007050:	00900593          	li	a1,9
    80007054:	02d777bb          	remuw	a5,a4,a3
    80007058:	02079793          	slli	a5,a5,0x20
    8000705c:	0207d793          	srli	a5,a5,0x20
    80007060:	00fd87b3          	add	a5,s11,a5
    80007064:	0007c503          	lbu	a0,0(a5)
    80007068:	02d757bb          	divuw	a5,a4,a3
    8000706c:	f8a40123          	sb	a0,-126(s0)
    80007070:	48e5f263          	bgeu	a1,a4,800074f4 <__printf+0x5fc>
    80007074:	06300513          	li	a0,99
    80007078:	02d7f5bb          	remuw	a1,a5,a3
    8000707c:	02059593          	slli	a1,a1,0x20
    80007080:	0205d593          	srli	a1,a1,0x20
    80007084:	00bd85b3          	add	a1,s11,a1
    80007088:	0005c583          	lbu	a1,0(a1)
    8000708c:	02d7d7bb          	divuw	a5,a5,a3
    80007090:	f8b401a3          	sb	a1,-125(s0)
    80007094:	48e57263          	bgeu	a0,a4,80007518 <__printf+0x620>
    80007098:	3e700513          	li	a0,999
    8000709c:	02d7f5bb          	remuw	a1,a5,a3
    800070a0:	02059593          	slli	a1,a1,0x20
    800070a4:	0205d593          	srli	a1,a1,0x20
    800070a8:	00bd85b3          	add	a1,s11,a1
    800070ac:	0005c583          	lbu	a1,0(a1)
    800070b0:	02d7d7bb          	divuw	a5,a5,a3
    800070b4:	f8b40223          	sb	a1,-124(s0)
    800070b8:	46e57663          	bgeu	a0,a4,80007524 <__printf+0x62c>
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b402a3          	sb	a1,-123(s0)
    800070d8:	46ea7863          	bgeu	s4,a4,80007548 <__printf+0x650>
    800070dc:	02d7f5bb          	remuw	a1,a5,a3
    800070e0:	02059593          	slli	a1,a1,0x20
    800070e4:	0205d593          	srli	a1,a1,0x20
    800070e8:	00bd85b3          	add	a1,s11,a1
    800070ec:	0005c583          	lbu	a1,0(a1)
    800070f0:	02d7d7bb          	divuw	a5,a5,a3
    800070f4:	f8b40323          	sb	a1,-122(s0)
    800070f8:	3eeaf863          	bgeu	s5,a4,800074e8 <__printf+0x5f0>
    800070fc:	02d7f5bb          	remuw	a1,a5,a3
    80007100:	02059593          	slli	a1,a1,0x20
    80007104:	0205d593          	srli	a1,a1,0x20
    80007108:	00bd85b3          	add	a1,s11,a1
    8000710c:	0005c583          	lbu	a1,0(a1)
    80007110:	02d7d7bb          	divuw	a5,a5,a3
    80007114:	f8b403a3          	sb	a1,-121(s0)
    80007118:	42eb7e63          	bgeu	s6,a4,80007554 <__printf+0x65c>
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b40423          	sb	a1,-120(s0)
    80007138:	42ebfc63          	bgeu	s7,a4,80007570 <__printf+0x678>
    8000713c:	02079793          	slli	a5,a5,0x20
    80007140:	0207d793          	srli	a5,a5,0x20
    80007144:	00fd8db3          	add	s11,s11,a5
    80007148:	000dc703          	lbu	a4,0(s11)
    8000714c:	00a00793          	li	a5,10
    80007150:	00900c93          	li	s9,9
    80007154:	f8e404a3          	sb	a4,-119(s0)
    80007158:	00065c63          	bgez	a2,80007170 <__printf+0x278>
    8000715c:	f9040713          	addi	a4,s0,-112
    80007160:	00f70733          	add	a4,a4,a5
    80007164:	02d00693          	li	a3,45
    80007168:	fed70823          	sb	a3,-16(a4)
    8000716c:	00078c93          	mv	s9,a5
    80007170:	f8040793          	addi	a5,s0,-128
    80007174:	01978cb3          	add	s9,a5,s9
    80007178:	f7f40d13          	addi	s10,s0,-129
    8000717c:	000cc503          	lbu	a0,0(s9)
    80007180:	fffc8c93          	addi	s9,s9,-1
    80007184:	00000097          	auipc	ra,0x0
    80007188:	b90080e7          	jalr	-1136(ra) # 80006d14 <consputc>
    8000718c:	ffac98e3          	bne	s9,s10,8000717c <__printf+0x284>
    80007190:	00094503          	lbu	a0,0(s2)
    80007194:	e00514e3          	bnez	a0,80006f9c <__printf+0xa4>
    80007198:	1a0c1663          	bnez	s8,80007344 <__printf+0x44c>
    8000719c:	08813083          	ld	ra,136(sp)
    800071a0:	08013403          	ld	s0,128(sp)
    800071a4:	07813483          	ld	s1,120(sp)
    800071a8:	07013903          	ld	s2,112(sp)
    800071ac:	06813983          	ld	s3,104(sp)
    800071b0:	06013a03          	ld	s4,96(sp)
    800071b4:	05813a83          	ld	s5,88(sp)
    800071b8:	05013b03          	ld	s6,80(sp)
    800071bc:	04813b83          	ld	s7,72(sp)
    800071c0:	04013c03          	ld	s8,64(sp)
    800071c4:	03813c83          	ld	s9,56(sp)
    800071c8:	03013d03          	ld	s10,48(sp)
    800071cc:	02813d83          	ld	s11,40(sp)
    800071d0:	0d010113          	addi	sp,sp,208
    800071d4:	00008067          	ret
    800071d8:	07300713          	li	a4,115
    800071dc:	1ce78a63          	beq	a5,a4,800073b0 <__printf+0x4b8>
    800071e0:	07800713          	li	a4,120
    800071e4:	1ee79e63          	bne	a5,a4,800073e0 <__printf+0x4e8>
    800071e8:	f7843783          	ld	a5,-136(s0)
    800071ec:	0007a703          	lw	a4,0(a5)
    800071f0:	00878793          	addi	a5,a5,8
    800071f4:	f6f43c23          	sd	a5,-136(s0)
    800071f8:	28074263          	bltz	a4,8000747c <__printf+0x584>
    800071fc:	00002d97          	auipc	s11,0x2
    80007200:	3c4d8d93          	addi	s11,s11,964 # 800095c0 <digits>
    80007204:	00f77793          	andi	a5,a4,15
    80007208:	00fd87b3          	add	a5,s11,a5
    8000720c:	0007c683          	lbu	a3,0(a5)
    80007210:	00f00613          	li	a2,15
    80007214:	0007079b          	sext.w	a5,a4
    80007218:	f8d40023          	sb	a3,-128(s0)
    8000721c:	0047559b          	srliw	a1,a4,0x4
    80007220:	0047569b          	srliw	a3,a4,0x4
    80007224:	00000c93          	li	s9,0
    80007228:	0ee65063          	bge	a2,a4,80007308 <__printf+0x410>
    8000722c:	00f6f693          	andi	a3,a3,15
    80007230:	00dd86b3          	add	a3,s11,a3
    80007234:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007238:	0087d79b          	srliw	a5,a5,0x8
    8000723c:	00100c93          	li	s9,1
    80007240:	f8d400a3          	sb	a3,-127(s0)
    80007244:	0cb67263          	bgeu	a2,a1,80007308 <__printf+0x410>
    80007248:	00f7f693          	andi	a3,a5,15
    8000724c:	00dd86b3          	add	a3,s11,a3
    80007250:	0006c583          	lbu	a1,0(a3)
    80007254:	00f00613          	li	a2,15
    80007258:	0047d69b          	srliw	a3,a5,0x4
    8000725c:	f8b40123          	sb	a1,-126(s0)
    80007260:	0047d593          	srli	a1,a5,0x4
    80007264:	28f67e63          	bgeu	a2,a5,80007500 <__printf+0x608>
    80007268:	00f6f693          	andi	a3,a3,15
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c503          	lbu	a0,0(a3)
    80007274:	0087d813          	srli	a6,a5,0x8
    80007278:	0087d69b          	srliw	a3,a5,0x8
    8000727c:	f8a401a3          	sb	a0,-125(s0)
    80007280:	28b67663          	bgeu	a2,a1,8000750c <__printf+0x614>
    80007284:	00f6f693          	andi	a3,a3,15
    80007288:	00dd86b3          	add	a3,s11,a3
    8000728c:	0006c583          	lbu	a1,0(a3)
    80007290:	00c7d513          	srli	a0,a5,0xc
    80007294:	00c7d69b          	srliw	a3,a5,0xc
    80007298:	f8b40223          	sb	a1,-124(s0)
    8000729c:	29067a63          	bgeu	a2,a6,80007530 <__printf+0x638>
    800072a0:	00f6f693          	andi	a3,a3,15
    800072a4:	00dd86b3          	add	a3,s11,a3
    800072a8:	0006c583          	lbu	a1,0(a3)
    800072ac:	0107d813          	srli	a6,a5,0x10
    800072b0:	0107d69b          	srliw	a3,a5,0x10
    800072b4:	f8b402a3          	sb	a1,-123(s0)
    800072b8:	28a67263          	bgeu	a2,a0,8000753c <__printf+0x644>
    800072bc:	00f6f693          	andi	a3,a3,15
    800072c0:	00dd86b3          	add	a3,s11,a3
    800072c4:	0006c683          	lbu	a3,0(a3)
    800072c8:	0147d79b          	srliw	a5,a5,0x14
    800072cc:	f8d40323          	sb	a3,-122(s0)
    800072d0:	21067663          	bgeu	a2,a6,800074dc <__printf+0x5e4>
    800072d4:	02079793          	slli	a5,a5,0x20
    800072d8:	0207d793          	srli	a5,a5,0x20
    800072dc:	00fd8db3          	add	s11,s11,a5
    800072e0:	000dc683          	lbu	a3,0(s11)
    800072e4:	00800793          	li	a5,8
    800072e8:	00700c93          	li	s9,7
    800072ec:	f8d403a3          	sb	a3,-121(s0)
    800072f0:	00075c63          	bgez	a4,80007308 <__printf+0x410>
    800072f4:	f9040713          	addi	a4,s0,-112
    800072f8:	00f70733          	add	a4,a4,a5
    800072fc:	02d00693          	li	a3,45
    80007300:	fed70823          	sb	a3,-16(a4)
    80007304:	00078c93          	mv	s9,a5
    80007308:	f8040793          	addi	a5,s0,-128
    8000730c:	01978cb3          	add	s9,a5,s9
    80007310:	f7f40d13          	addi	s10,s0,-129
    80007314:	000cc503          	lbu	a0,0(s9)
    80007318:	fffc8c93          	addi	s9,s9,-1
    8000731c:	00000097          	auipc	ra,0x0
    80007320:	9f8080e7          	jalr	-1544(ra) # 80006d14 <consputc>
    80007324:	ff9d18e3          	bne	s10,s9,80007314 <__printf+0x41c>
    80007328:	0100006f          	j	80007338 <__printf+0x440>
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	9e8080e7          	jalr	-1560(ra) # 80006d14 <consputc>
    80007334:	000c8493          	mv	s1,s9
    80007338:	00094503          	lbu	a0,0(s2)
    8000733c:	c60510e3          	bnez	a0,80006f9c <__printf+0xa4>
    80007340:	e40c0ee3          	beqz	s8,8000719c <__printf+0x2a4>
    80007344:	00005517          	auipc	a0,0x5
    80007348:	46c50513          	addi	a0,a0,1132 # 8000c7b0 <pr>
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	94c080e7          	jalr	-1716(ra) # 80007c98 <release>
    80007354:	e49ff06f          	j	8000719c <__printf+0x2a4>
    80007358:	f7843783          	ld	a5,-136(s0)
    8000735c:	03000513          	li	a0,48
    80007360:	01000d13          	li	s10,16
    80007364:	00878713          	addi	a4,a5,8
    80007368:	0007bc83          	ld	s9,0(a5)
    8000736c:	f6e43c23          	sd	a4,-136(s0)
    80007370:	00000097          	auipc	ra,0x0
    80007374:	9a4080e7          	jalr	-1628(ra) # 80006d14 <consputc>
    80007378:	07800513          	li	a0,120
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	998080e7          	jalr	-1640(ra) # 80006d14 <consputc>
    80007384:	00002d97          	auipc	s11,0x2
    80007388:	23cd8d93          	addi	s11,s11,572 # 800095c0 <digits>
    8000738c:	03ccd793          	srli	a5,s9,0x3c
    80007390:	00fd87b3          	add	a5,s11,a5
    80007394:	0007c503          	lbu	a0,0(a5)
    80007398:	fffd0d1b          	addiw	s10,s10,-1
    8000739c:	004c9c93          	slli	s9,s9,0x4
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	974080e7          	jalr	-1676(ra) # 80006d14 <consputc>
    800073a8:	fe0d12e3          	bnez	s10,8000738c <__printf+0x494>
    800073ac:	f8dff06f          	j	80007338 <__printf+0x440>
    800073b0:	f7843783          	ld	a5,-136(s0)
    800073b4:	0007bc83          	ld	s9,0(a5)
    800073b8:	00878793          	addi	a5,a5,8
    800073bc:	f6f43c23          	sd	a5,-136(s0)
    800073c0:	000c9a63          	bnez	s9,800073d4 <__printf+0x4dc>
    800073c4:	1080006f          	j	800074cc <__printf+0x5d4>
    800073c8:	001c8c93          	addi	s9,s9,1
    800073cc:	00000097          	auipc	ra,0x0
    800073d0:	948080e7          	jalr	-1720(ra) # 80006d14 <consputc>
    800073d4:	000cc503          	lbu	a0,0(s9)
    800073d8:	fe0518e3          	bnez	a0,800073c8 <__printf+0x4d0>
    800073dc:	f5dff06f          	j	80007338 <__printf+0x440>
    800073e0:	02500513          	li	a0,37
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	930080e7          	jalr	-1744(ra) # 80006d14 <consputc>
    800073ec:	000c8513          	mv	a0,s9
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	924080e7          	jalr	-1756(ra) # 80006d14 <consputc>
    800073f8:	f41ff06f          	j	80007338 <__printf+0x440>
    800073fc:	02500513          	li	a0,37
    80007400:	00000097          	auipc	ra,0x0
    80007404:	914080e7          	jalr	-1772(ra) # 80006d14 <consputc>
    80007408:	f31ff06f          	j	80007338 <__printf+0x440>
    8000740c:	00030513          	mv	a0,t1
    80007410:	00000097          	auipc	ra,0x0
    80007414:	7bc080e7          	jalr	1980(ra) # 80007bcc <acquire>
    80007418:	b4dff06f          	j	80006f64 <__printf+0x6c>
    8000741c:	40c0053b          	negw	a0,a2
    80007420:	00a00713          	li	a4,10
    80007424:	02e576bb          	remuw	a3,a0,a4
    80007428:	00002d97          	auipc	s11,0x2
    8000742c:	198d8d93          	addi	s11,s11,408 # 800095c0 <digits>
    80007430:	ff700593          	li	a1,-9
    80007434:	02069693          	slli	a3,a3,0x20
    80007438:	0206d693          	srli	a3,a3,0x20
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c683          	lbu	a3,0(a3)
    80007444:	02e557bb          	divuw	a5,a0,a4
    80007448:	f8d40023          	sb	a3,-128(s0)
    8000744c:	10b65e63          	bge	a2,a1,80007568 <__printf+0x670>
    80007450:	06300593          	li	a1,99
    80007454:	02e7f6bb          	remuw	a3,a5,a4
    80007458:	02069693          	slli	a3,a3,0x20
    8000745c:	0206d693          	srli	a3,a3,0x20
    80007460:	00dd86b3          	add	a3,s11,a3
    80007464:	0006c683          	lbu	a3,0(a3)
    80007468:	02e7d73b          	divuw	a4,a5,a4
    8000746c:	00200793          	li	a5,2
    80007470:	f8d400a3          	sb	a3,-127(s0)
    80007474:	bca5ece3          	bltu	a1,a0,8000704c <__printf+0x154>
    80007478:	ce5ff06f          	j	8000715c <__printf+0x264>
    8000747c:	40e007bb          	negw	a5,a4
    80007480:	00002d97          	auipc	s11,0x2
    80007484:	140d8d93          	addi	s11,s11,320 # 800095c0 <digits>
    80007488:	00f7f693          	andi	a3,a5,15
    8000748c:	00dd86b3          	add	a3,s11,a3
    80007490:	0006c583          	lbu	a1,0(a3)
    80007494:	ff100613          	li	a2,-15
    80007498:	0047d69b          	srliw	a3,a5,0x4
    8000749c:	f8b40023          	sb	a1,-128(s0)
    800074a0:	0047d59b          	srliw	a1,a5,0x4
    800074a4:	0ac75e63          	bge	a4,a2,80007560 <__printf+0x668>
    800074a8:	00f6f693          	andi	a3,a3,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c603          	lbu	a2,0(a3)
    800074b4:	00f00693          	li	a3,15
    800074b8:	0087d79b          	srliw	a5,a5,0x8
    800074bc:	f8c400a3          	sb	a2,-127(s0)
    800074c0:	d8b6e4e3          	bltu	a3,a1,80007248 <__printf+0x350>
    800074c4:	00200793          	li	a5,2
    800074c8:	e2dff06f          	j	800072f4 <__printf+0x3fc>
    800074cc:	00002c97          	auipc	s9,0x2
    800074d0:	0d4c8c93          	addi	s9,s9,212 # 800095a0 <_ZZ6prtIntmE6digits+0x4a8>
    800074d4:	02800513          	li	a0,40
    800074d8:	ef1ff06f          	j	800073c8 <__printf+0x4d0>
    800074dc:	00700793          	li	a5,7
    800074e0:	00600c93          	li	s9,6
    800074e4:	e0dff06f          	j	800072f0 <__printf+0x3f8>
    800074e8:	00700793          	li	a5,7
    800074ec:	00600c93          	li	s9,6
    800074f0:	c69ff06f          	j	80007158 <__printf+0x260>
    800074f4:	00300793          	li	a5,3
    800074f8:	00200c93          	li	s9,2
    800074fc:	c5dff06f          	j	80007158 <__printf+0x260>
    80007500:	00300793          	li	a5,3
    80007504:	00200c93          	li	s9,2
    80007508:	de9ff06f          	j	800072f0 <__printf+0x3f8>
    8000750c:	00400793          	li	a5,4
    80007510:	00300c93          	li	s9,3
    80007514:	dddff06f          	j	800072f0 <__printf+0x3f8>
    80007518:	00400793          	li	a5,4
    8000751c:	00300c93          	li	s9,3
    80007520:	c39ff06f          	j	80007158 <__printf+0x260>
    80007524:	00500793          	li	a5,5
    80007528:	00400c93          	li	s9,4
    8000752c:	c2dff06f          	j	80007158 <__printf+0x260>
    80007530:	00500793          	li	a5,5
    80007534:	00400c93          	li	s9,4
    80007538:	db9ff06f          	j	800072f0 <__printf+0x3f8>
    8000753c:	00600793          	li	a5,6
    80007540:	00500c93          	li	s9,5
    80007544:	dadff06f          	j	800072f0 <__printf+0x3f8>
    80007548:	00600793          	li	a5,6
    8000754c:	00500c93          	li	s9,5
    80007550:	c09ff06f          	j	80007158 <__printf+0x260>
    80007554:	00800793          	li	a5,8
    80007558:	00700c93          	li	s9,7
    8000755c:	bfdff06f          	j	80007158 <__printf+0x260>
    80007560:	00100793          	li	a5,1
    80007564:	d91ff06f          	j	800072f4 <__printf+0x3fc>
    80007568:	00100793          	li	a5,1
    8000756c:	bf1ff06f          	j	8000715c <__printf+0x264>
    80007570:	00900793          	li	a5,9
    80007574:	00800c93          	li	s9,8
    80007578:	be1ff06f          	j	80007158 <__printf+0x260>
    8000757c:	00002517          	auipc	a0,0x2
    80007580:	02c50513          	addi	a0,a0,44 # 800095a8 <_ZZ6prtIntmE6digits+0x4b0>
    80007584:	00000097          	auipc	ra,0x0
    80007588:	918080e7          	jalr	-1768(ra) # 80006e9c <panic>

000000008000758c <printfinit>:
    8000758c:	fe010113          	addi	sp,sp,-32
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	00113c23          	sd	ra,24(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00005497          	auipc	s1,0x5
    800075a4:	21048493          	addi	s1,s1,528 # 8000c7b0 <pr>
    800075a8:	00048513          	mv	a0,s1
    800075ac:	00002597          	auipc	a1,0x2
    800075b0:	00c58593          	addi	a1,a1,12 # 800095b8 <_ZZ6prtIntmE6digits+0x4c0>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	5f4080e7          	jalr	1524(ra) # 80007ba8 <initlock>
    800075bc:	01813083          	ld	ra,24(sp)
    800075c0:	01013403          	ld	s0,16(sp)
    800075c4:	0004ac23          	sw	zero,24(s1)
    800075c8:	00813483          	ld	s1,8(sp)
    800075cc:	02010113          	addi	sp,sp,32
    800075d0:	00008067          	ret

00000000800075d4 <uartinit>:
    800075d4:	ff010113          	addi	sp,sp,-16
    800075d8:	00813423          	sd	s0,8(sp)
    800075dc:	01010413          	addi	s0,sp,16
    800075e0:	100007b7          	lui	a5,0x10000
    800075e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800075e8:	f8000713          	li	a4,-128
    800075ec:	00e781a3          	sb	a4,3(a5)
    800075f0:	00300713          	li	a4,3
    800075f4:	00e78023          	sb	a4,0(a5)
    800075f8:	000780a3          	sb	zero,1(a5)
    800075fc:	00e781a3          	sb	a4,3(a5)
    80007600:	00700693          	li	a3,7
    80007604:	00d78123          	sb	a3,2(a5)
    80007608:	00e780a3          	sb	a4,1(a5)
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret

0000000080007618 <uartputc>:
    80007618:	00004797          	auipc	a5,0x4
    8000761c:	ed07a783          	lw	a5,-304(a5) # 8000b4e8 <panicked>
    80007620:	00078463          	beqz	a5,80007628 <uartputc+0x10>
    80007624:	0000006f          	j	80007624 <uartputc+0xc>
    80007628:	fd010113          	addi	sp,sp,-48
    8000762c:	02813023          	sd	s0,32(sp)
    80007630:	00913c23          	sd	s1,24(sp)
    80007634:	01213823          	sd	s2,16(sp)
    80007638:	01313423          	sd	s3,8(sp)
    8000763c:	02113423          	sd	ra,40(sp)
    80007640:	03010413          	addi	s0,sp,48
    80007644:	00004917          	auipc	s2,0x4
    80007648:	eac90913          	addi	s2,s2,-340 # 8000b4f0 <uart_tx_r>
    8000764c:	00093783          	ld	a5,0(s2)
    80007650:	00004497          	auipc	s1,0x4
    80007654:	ea848493          	addi	s1,s1,-344 # 8000b4f8 <uart_tx_w>
    80007658:	0004b703          	ld	a4,0(s1)
    8000765c:	02078693          	addi	a3,a5,32
    80007660:	00050993          	mv	s3,a0
    80007664:	02e69c63          	bne	a3,a4,8000769c <uartputc+0x84>
    80007668:	00001097          	auipc	ra,0x1
    8000766c:	834080e7          	jalr	-1996(ra) # 80007e9c <push_on>
    80007670:	00093783          	ld	a5,0(s2)
    80007674:	0004b703          	ld	a4,0(s1)
    80007678:	02078793          	addi	a5,a5,32
    8000767c:	00e79463          	bne	a5,a4,80007684 <uartputc+0x6c>
    80007680:	0000006f          	j	80007680 <uartputc+0x68>
    80007684:	00001097          	auipc	ra,0x1
    80007688:	88c080e7          	jalr	-1908(ra) # 80007f10 <pop_on>
    8000768c:	00093783          	ld	a5,0(s2)
    80007690:	0004b703          	ld	a4,0(s1)
    80007694:	02078693          	addi	a3,a5,32
    80007698:	fce688e3          	beq	a3,a4,80007668 <uartputc+0x50>
    8000769c:	01f77693          	andi	a3,a4,31
    800076a0:	00005597          	auipc	a1,0x5
    800076a4:	13058593          	addi	a1,a1,304 # 8000c7d0 <uart_tx_buf>
    800076a8:	00d586b3          	add	a3,a1,a3
    800076ac:	00170713          	addi	a4,a4,1
    800076b0:	01368023          	sb	s3,0(a3)
    800076b4:	00e4b023          	sd	a4,0(s1)
    800076b8:	10000637          	lui	a2,0x10000
    800076bc:	02f71063          	bne	a4,a5,800076dc <uartputc+0xc4>
    800076c0:	0340006f          	j	800076f4 <uartputc+0xdc>
    800076c4:	00074703          	lbu	a4,0(a4)
    800076c8:	00f93023          	sd	a5,0(s2)
    800076cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800076d0:	00093783          	ld	a5,0(s2)
    800076d4:	0004b703          	ld	a4,0(s1)
    800076d8:	00f70e63          	beq	a4,a5,800076f4 <uartputc+0xdc>
    800076dc:	00564683          	lbu	a3,5(a2)
    800076e0:	01f7f713          	andi	a4,a5,31
    800076e4:	00e58733          	add	a4,a1,a4
    800076e8:	0206f693          	andi	a3,a3,32
    800076ec:	00178793          	addi	a5,a5,1
    800076f0:	fc069ae3          	bnez	a3,800076c4 <uartputc+0xac>
    800076f4:	02813083          	ld	ra,40(sp)
    800076f8:	02013403          	ld	s0,32(sp)
    800076fc:	01813483          	ld	s1,24(sp)
    80007700:	01013903          	ld	s2,16(sp)
    80007704:	00813983          	ld	s3,8(sp)
    80007708:	03010113          	addi	sp,sp,48
    8000770c:	00008067          	ret

0000000080007710 <uartputc_sync>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813423          	sd	s0,8(sp)
    80007718:	01010413          	addi	s0,sp,16
    8000771c:	00004717          	auipc	a4,0x4
    80007720:	dcc72703          	lw	a4,-564(a4) # 8000b4e8 <panicked>
    80007724:	02071663          	bnez	a4,80007750 <uartputc_sync+0x40>
    80007728:	00050793          	mv	a5,a0
    8000772c:	100006b7          	lui	a3,0x10000
    80007730:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007734:	02077713          	andi	a4,a4,32
    80007738:	fe070ce3          	beqz	a4,80007730 <uartputc_sync+0x20>
    8000773c:	0ff7f793          	andi	a5,a5,255
    80007740:	00f68023          	sb	a5,0(a3)
    80007744:	00813403          	ld	s0,8(sp)
    80007748:	01010113          	addi	sp,sp,16
    8000774c:	00008067          	ret
    80007750:	0000006f          	j	80007750 <uartputc_sync+0x40>

0000000080007754 <uartstart>:
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00813423          	sd	s0,8(sp)
    8000775c:	01010413          	addi	s0,sp,16
    80007760:	00004617          	auipc	a2,0x4
    80007764:	d9060613          	addi	a2,a2,-624 # 8000b4f0 <uart_tx_r>
    80007768:	00004517          	auipc	a0,0x4
    8000776c:	d9050513          	addi	a0,a0,-624 # 8000b4f8 <uart_tx_w>
    80007770:	00063783          	ld	a5,0(a2)
    80007774:	00053703          	ld	a4,0(a0)
    80007778:	04f70263          	beq	a4,a5,800077bc <uartstart+0x68>
    8000777c:	100005b7          	lui	a1,0x10000
    80007780:	00005817          	auipc	a6,0x5
    80007784:	05080813          	addi	a6,a6,80 # 8000c7d0 <uart_tx_buf>
    80007788:	01c0006f          	j	800077a4 <uartstart+0x50>
    8000778c:	0006c703          	lbu	a4,0(a3)
    80007790:	00f63023          	sd	a5,0(a2)
    80007794:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007798:	00063783          	ld	a5,0(a2)
    8000779c:	00053703          	ld	a4,0(a0)
    800077a0:	00f70e63          	beq	a4,a5,800077bc <uartstart+0x68>
    800077a4:	01f7f713          	andi	a4,a5,31
    800077a8:	00e806b3          	add	a3,a6,a4
    800077ac:	0055c703          	lbu	a4,5(a1)
    800077b0:	00178793          	addi	a5,a5,1
    800077b4:	02077713          	andi	a4,a4,32
    800077b8:	fc071ae3          	bnez	a4,8000778c <uartstart+0x38>
    800077bc:	00813403          	ld	s0,8(sp)
    800077c0:	01010113          	addi	sp,sp,16
    800077c4:	00008067          	ret

00000000800077c8 <uartgetc>:
    800077c8:	ff010113          	addi	sp,sp,-16
    800077cc:	00813423          	sd	s0,8(sp)
    800077d0:	01010413          	addi	s0,sp,16
    800077d4:	10000737          	lui	a4,0x10000
    800077d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800077dc:	0017f793          	andi	a5,a5,1
    800077e0:	00078c63          	beqz	a5,800077f8 <uartgetc+0x30>
    800077e4:	00074503          	lbu	a0,0(a4)
    800077e8:	0ff57513          	andi	a0,a0,255
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret
    800077f8:	fff00513          	li	a0,-1
    800077fc:	ff1ff06f          	j	800077ec <uartgetc+0x24>

0000000080007800 <uartintr>:
    80007800:	100007b7          	lui	a5,0x10000
    80007804:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007808:	0017f793          	andi	a5,a5,1
    8000780c:	0a078463          	beqz	a5,800078b4 <uartintr+0xb4>
    80007810:	fe010113          	addi	sp,sp,-32
    80007814:	00813823          	sd	s0,16(sp)
    80007818:	00913423          	sd	s1,8(sp)
    8000781c:	00113c23          	sd	ra,24(sp)
    80007820:	02010413          	addi	s0,sp,32
    80007824:	100004b7          	lui	s1,0x10000
    80007828:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000782c:	0ff57513          	andi	a0,a0,255
    80007830:	fffff097          	auipc	ra,0xfffff
    80007834:	534080e7          	jalr	1332(ra) # 80006d64 <consoleintr>
    80007838:	0054c783          	lbu	a5,5(s1)
    8000783c:	0017f793          	andi	a5,a5,1
    80007840:	fe0794e3          	bnez	a5,80007828 <uartintr+0x28>
    80007844:	00004617          	auipc	a2,0x4
    80007848:	cac60613          	addi	a2,a2,-852 # 8000b4f0 <uart_tx_r>
    8000784c:	00004517          	auipc	a0,0x4
    80007850:	cac50513          	addi	a0,a0,-852 # 8000b4f8 <uart_tx_w>
    80007854:	00063783          	ld	a5,0(a2)
    80007858:	00053703          	ld	a4,0(a0)
    8000785c:	04f70263          	beq	a4,a5,800078a0 <uartintr+0xa0>
    80007860:	100005b7          	lui	a1,0x10000
    80007864:	00005817          	auipc	a6,0x5
    80007868:	f6c80813          	addi	a6,a6,-148 # 8000c7d0 <uart_tx_buf>
    8000786c:	01c0006f          	j	80007888 <uartintr+0x88>
    80007870:	0006c703          	lbu	a4,0(a3)
    80007874:	00f63023          	sd	a5,0(a2)
    80007878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000787c:	00063783          	ld	a5,0(a2)
    80007880:	00053703          	ld	a4,0(a0)
    80007884:	00f70e63          	beq	a4,a5,800078a0 <uartintr+0xa0>
    80007888:	01f7f713          	andi	a4,a5,31
    8000788c:	00e806b3          	add	a3,a6,a4
    80007890:	0055c703          	lbu	a4,5(a1)
    80007894:	00178793          	addi	a5,a5,1
    80007898:	02077713          	andi	a4,a4,32
    8000789c:	fc071ae3          	bnez	a4,80007870 <uartintr+0x70>
    800078a0:	01813083          	ld	ra,24(sp)
    800078a4:	01013403          	ld	s0,16(sp)
    800078a8:	00813483          	ld	s1,8(sp)
    800078ac:	02010113          	addi	sp,sp,32
    800078b0:	00008067          	ret
    800078b4:	00004617          	auipc	a2,0x4
    800078b8:	c3c60613          	addi	a2,a2,-964 # 8000b4f0 <uart_tx_r>
    800078bc:	00004517          	auipc	a0,0x4
    800078c0:	c3c50513          	addi	a0,a0,-964 # 8000b4f8 <uart_tx_w>
    800078c4:	00063783          	ld	a5,0(a2)
    800078c8:	00053703          	ld	a4,0(a0)
    800078cc:	04f70263          	beq	a4,a5,80007910 <uartintr+0x110>
    800078d0:	100005b7          	lui	a1,0x10000
    800078d4:	00005817          	auipc	a6,0x5
    800078d8:	efc80813          	addi	a6,a6,-260 # 8000c7d0 <uart_tx_buf>
    800078dc:	01c0006f          	j	800078f8 <uartintr+0xf8>
    800078e0:	0006c703          	lbu	a4,0(a3)
    800078e4:	00f63023          	sd	a5,0(a2)
    800078e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ec:	00063783          	ld	a5,0(a2)
    800078f0:	00053703          	ld	a4,0(a0)
    800078f4:	02f70063          	beq	a4,a5,80007914 <uartintr+0x114>
    800078f8:	01f7f713          	andi	a4,a5,31
    800078fc:	00e806b3          	add	a3,a6,a4
    80007900:	0055c703          	lbu	a4,5(a1)
    80007904:	00178793          	addi	a5,a5,1
    80007908:	02077713          	andi	a4,a4,32
    8000790c:	fc071ae3          	bnez	a4,800078e0 <uartintr+0xe0>
    80007910:	00008067          	ret
    80007914:	00008067          	ret

0000000080007918 <kinit>:
    80007918:	fc010113          	addi	sp,sp,-64
    8000791c:	02913423          	sd	s1,40(sp)
    80007920:	fffff7b7          	lui	a5,0xfffff
    80007924:	00006497          	auipc	s1,0x6
    80007928:	ecb48493          	addi	s1,s1,-309 # 8000d7ef <end+0xfff>
    8000792c:	02813823          	sd	s0,48(sp)
    80007930:	01313c23          	sd	s3,24(sp)
    80007934:	00f4f4b3          	and	s1,s1,a5
    80007938:	02113c23          	sd	ra,56(sp)
    8000793c:	03213023          	sd	s2,32(sp)
    80007940:	01413823          	sd	s4,16(sp)
    80007944:	01513423          	sd	s5,8(sp)
    80007948:	04010413          	addi	s0,sp,64
    8000794c:	000017b7          	lui	a5,0x1
    80007950:	01100993          	li	s3,17
    80007954:	00f487b3          	add	a5,s1,a5
    80007958:	01b99993          	slli	s3,s3,0x1b
    8000795c:	06f9e063          	bltu	s3,a5,800079bc <kinit+0xa4>
    80007960:	00005a97          	auipc	s5,0x5
    80007964:	e90a8a93          	addi	s5,s5,-368 # 8000c7f0 <end>
    80007968:	0754ec63          	bltu	s1,s5,800079e0 <kinit+0xc8>
    8000796c:	0734fa63          	bgeu	s1,s3,800079e0 <kinit+0xc8>
    80007970:	00088a37          	lui	s4,0x88
    80007974:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007978:	00004917          	auipc	s2,0x4
    8000797c:	b8890913          	addi	s2,s2,-1144 # 8000b500 <kmem>
    80007980:	00ca1a13          	slli	s4,s4,0xc
    80007984:	0140006f          	j	80007998 <kinit+0x80>
    80007988:	000017b7          	lui	a5,0x1
    8000798c:	00f484b3          	add	s1,s1,a5
    80007990:	0554e863          	bltu	s1,s5,800079e0 <kinit+0xc8>
    80007994:	0534f663          	bgeu	s1,s3,800079e0 <kinit+0xc8>
    80007998:	00001637          	lui	a2,0x1
    8000799c:	00100593          	li	a1,1
    800079a0:	00048513          	mv	a0,s1
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	5e4080e7          	jalr	1508(ra) # 80007f88 <__memset>
    800079ac:	00093783          	ld	a5,0(s2)
    800079b0:	00f4b023          	sd	a5,0(s1)
    800079b4:	00993023          	sd	s1,0(s2)
    800079b8:	fd4498e3          	bne	s1,s4,80007988 <kinit+0x70>
    800079bc:	03813083          	ld	ra,56(sp)
    800079c0:	03013403          	ld	s0,48(sp)
    800079c4:	02813483          	ld	s1,40(sp)
    800079c8:	02013903          	ld	s2,32(sp)
    800079cc:	01813983          	ld	s3,24(sp)
    800079d0:	01013a03          	ld	s4,16(sp)
    800079d4:	00813a83          	ld	s5,8(sp)
    800079d8:	04010113          	addi	sp,sp,64
    800079dc:	00008067          	ret
    800079e0:	00002517          	auipc	a0,0x2
    800079e4:	bf850513          	addi	a0,a0,-1032 # 800095d8 <digits+0x18>
    800079e8:	fffff097          	auipc	ra,0xfffff
    800079ec:	4b4080e7          	jalr	1204(ra) # 80006e9c <panic>

00000000800079f0 <freerange>:
    800079f0:	fc010113          	addi	sp,sp,-64
    800079f4:	000017b7          	lui	a5,0x1
    800079f8:	02913423          	sd	s1,40(sp)
    800079fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a00:	009504b3          	add	s1,a0,s1
    80007a04:	fffff537          	lui	a0,0xfffff
    80007a08:	02813823          	sd	s0,48(sp)
    80007a0c:	02113c23          	sd	ra,56(sp)
    80007a10:	03213023          	sd	s2,32(sp)
    80007a14:	01313c23          	sd	s3,24(sp)
    80007a18:	01413823          	sd	s4,16(sp)
    80007a1c:	01513423          	sd	s5,8(sp)
    80007a20:	01613023          	sd	s6,0(sp)
    80007a24:	04010413          	addi	s0,sp,64
    80007a28:	00a4f4b3          	and	s1,s1,a0
    80007a2c:	00f487b3          	add	a5,s1,a5
    80007a30:	06f5e463          	bltu	a1,a5,80007a98 <freerange+0xa8>
    80007a34:	00005a97          	auipc	s5,0x5
    80007a38:	dbca8a93          	addi	s5,s5,-580 # 8000c7f0 <end>
    80007a3c:	0954e263          	bltu	s1,s5,80007ac0 <freerange+0xd0>
    80007a40:	01100993          	li	s3,17
    80007a44:	01b99993          	slli	s3,s3,0x1b
    80007a48:	0734fc63          	bgeu	s1,s3,80007ac0 <freerange+0xd0>
    80007a4c:	00058a13          	mv	s4,a1
    80007a50:	00004917          	auipc	s2,0x4
    80007a54:	ab090913          	addi	s2,s2,-1360 # 8000b500 <kmem>
    80007a58:	00002b37          	lui	s6,0x2
    80007a5c:	0140006f          	j	80007a70 <freerange+0x80>
    80007a60:	000017b7          	lui	a5,0x1
    80007a64:	00f484b3          	add	s1,s1,a5
    80007a68:	0554ec63          	bltu	s1,s5,80007ac0 <freerange+0xd0>
    80007a6c:	0534fa63          	bgeu	s1,s3,80007ac0 <freerange+0xd0>
    80007a70:	00001637          	lui	a2,0x1
    80007a74:	00100593          	li	a1,1
    80007a78:	00048513          	mv	a0,s1
    80007a7c:	00000097          	auipc	ra,0x0
    80007a80:	50c080e7          	jalr	1292(ra) # 80007f88 <__memset>
    80007a84:	00093703          	ld	a4,0(s2)
    80007a88:	016487b3          	add	a5,s1,s6
    80007a8c:	00e4b023          	sd	a4,0(s1)
    80007a90:	00993023          	sd	s1,0(s2)
    80007a94:	fcfa76e3          	bgeu	s4,a5,80007a60 <freerange+0x70>
    80007a98:	03813083          	ld	ra,56(sp)
    80007a9c:	03013403          	ld	s0,48(sp)
    80007aa0:	02813483          	ld	s1,40(sp)
    80007aa4:	02013903          	ld	s2,32(sp)
    80007aa8:	01813983          	ld	s3,24(sp)
    80007aac:	01013a03          	ld	s4,16(sp)
    80007ab0:	00813a83          	ld	s5,8(sp)
    80007ab4:	00013b03          	ld	s6,0(sp)
    80007ab8:	04010113          	addi	sp,sp,64
    80007abc:	00008067          	ret
    80007ac0:	00002517          	auipc	a0,0x2
    80007ac4:	b1850513          	addi	a0,a0,-1256 # 800095d8 <digits+0x18>
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	3d4080e7          	jalr	980(ra) # 80006e9c <panic>

0000000080007ad0 <kfree>:
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00813823          	sd	s0,16(sp)
    80007ad8:	00113c23          	sd	ra,24(sp)
    80007adc:	00913423          	sd	s1,8(sp)
    80007ae0:	02010413          	addi	s0,sp,32
    80007ae4:	03451793          	slli	a5,a0,0x34
    80007ae8:	04079c63          	bnez	a5,80007b40 <kfree+0x70>
    80007aec:	00005797          	auipc	a5,0x5
    80007af0:	d0478793          	addi	a5,a5,-764 # 8000c7f0 <end>
    80007af4:	00050493          	mv	s1,a0
    80007af8:	04f56463          	bltu	a0,a5,80007b40 <kfree+0x70>
    80007afc:	01100793          	li	a5,17
    80007b00:	01b79793          	slli	a5,a5,0x1b
    80007b04:	02f57e63          	bgeu	a0,a5,80007b40 <kfree+0x70>
    80007b08:	00001637          	lui	a2,0x1
    80007b0c:	00100593          	li	a1,1
    80007b10:	00000097          	auipc	ra,0x0
    80007b14:	478080e7          	jalr	1144(ra) # 80007f88 <__memset>
    80007b18:	00004797          	auipc	a5,0x4
    80007b1c:	9e878793          	addi	a5,a5,-1560 # 8000b500 <kmem>
    80007b20:	0007b703          	ld	a4,0(a5)
    80007b24:	01813083          	ld	ra,24(sp)
    80007b28:	01013403          	ld	s0,16(sp)
    80007b2c:	00e4b023          	sd	a4,0(s1)
    80007b30:	0097b023          	sd	s1,0(a5)
    80007b34:	00813483          	ld	s1,8(sp)
    80007b38:	02010113          	addi	sp,sp,32
    80007b3c:	00008067          	ret
    80007b40:	00002517          	auipc	a0,0x2
    80007b44:	a9850513          	addi	a0,a0,-1384 # 800095d8 <digits+0x18>
    80007b48:	fffff097          	auipc	ra,0xfffff
    80007b4c:	354080e7          	jalr	852(ra) # 80006e9c <panic>

0000000080007b50 <kalloc>:
    80007b50:	fe010113          	addi	sp,sp,-32
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	00004797          	auipc	a5,0x4
    80007b68:	99c78793          	addi	a5,a5,-1636 # 8000b500 <kmem>
    80007b6c:	0007b483          	ld	s1,0(a5)
    80007b70:	02048063          	beqz	s1,80007b90 <kalloc+0x40>
    80007b74:	0004b703          	ld	a4,0(s1)
    80007b78:	00001637          	lui	a2,0x1
    80007b7c:	00500593          	li	a1,5
    80007b80:	00048513          	mv	a0,s1
    80007b84:	00e7b023          	sd	a4,0(a5)
    80007b88:	00000097          	auipc	ra,0x0
    80007b8c:	400080e7          	jalr	1024(ra) # 80007f88 <__memset>
    80007b90:	01813083          	ld	ra,24(sp)
    80007b94:	01013403          	ld	s0,16(sp)
    80007b98:	00048513          	mv	a0,s1
    80007b9c:	00813483          	ld	s1,8(sp)
    80007ba0:	02010113          	addi	sp,sp,32
    80007ba4:	00008067          	ret

0000000080007ba8 <initlock>:
    80007ba8:	ff010113          	addi	sp,sp,-16
    80007bac:	00813423          	sd	s0,8(sp)
    80007bb0:	01010413          	addi	s0,sp,16
    80007bb4:	00813403          	ld	s0,8(sp)
    80007bb8:	00b53423          	sd	a1,8(a0)
    80007bbc:	00052023          	sw	zero,0(a0)
    80007bc0:	00053823          	sd	zero,16(a0)
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00008067          	ret

0000000080007bcc <acquire>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00813823          	sd	s0,16(sp)
    80007bd4:	00913423          	sd	s1,8(sp)
    80007bd8:	00113c23          	sd	ra,24(sp)
    80007bdc:	01213023          	sd	s2,0(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	00050493          	mv	s1,a0
    80007be8:	10002973          	csrr	s2,sstatus
    80007bec:	100027f3          	csrr	a5,sstatus
    80007bf0:	ffd7f793          	andi	a5,a5,-3
    80007bf4:	10079073          	csrw	sstatus,a5
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	8ec080e7          	jalr	-1812(ra) # 800064e4 <mycpu>
    80007c00:	07852783          	lw	a5,120(a0)
    80007c04:	06078e63          	beqz	a5,80007c80 <acquire+0xb4>
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	8dc080e7          	jalr	-1828(ra) # 800064e4 <mycpu>
    80007c10:	07852783          	lw	a5,120(a0)
    80007c14:	0004a703          	lw	a4,0(s1)
    80007c18:	0017879b          	addiw	a5,a5,1
    80007c1c:	06f52c23          	sw	a5,120(a0)
    80007c20:	04071063          	bnez	a4,80007c60 <acquire+0x94>
    80007c24:	00100713          	li	a4,1
    80007c28:	00070793          	mv	a5,a4
    80007c2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c30:	0007879b          	sext.w	a5,a5
    80007c34:	fe079ae3          	bnez	a5,80007c28 <acquire+0x5c>
    80007c38:	0ff0000f          	fence
    80007c3c:	fffff097          	auipc	ra,0xfffff
    80007c40:	8a8080e7          	jalr	-1880(ra) # 800064e4 <mycpu>
    80007c44:	01813083          	ld	ra,24(sp)
    80007c48:	01013403          	ld	s0,16(sp)
    80007c4c:	00a4b823          	sd	a0,16(s1)
    80007c50:	00013903          	ld	s2,0(sp)
    80007c54:	00813483          	ld	s1,8(sp)
    80007c58:	02010113          	addi	sp,sp,32
    80007c5c:	00008067          	ret
    80007c60:	0104b903          	ld	s2,16(s1)
    80007c64:	fffff097          	auipc	ra,0xfffff
    80007c68:	880080e7          	jalr	-1920(ra) # 800064e4 <mycpu>
    80007c6c:	faa91ce3          	bne	s2,a0,80007c24 <acquire+0x58>
    80007c70:	00002517          	auipc	a0,0x2
    80007c74:	97050513          	addi	a0,a0,-1680 # 800095e0 <digits+0x20>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	224080e7          	jalr	548(ra) # 80006e9c <panic>
    80007c80:	00195913          	srli	s2,s2,0x1
    80007c84:	fffff097          	auipc	ra,0xfffff
    80007c88:	860080e7          	jalr	-1952(ra) # 800064e4 <mycpu>
    80007c8c:	00197913          	andi	s2,s2,1
    80007c90:	07252e23          	sw	s2,124(a0)
    80007c94:	f75ff06f          	j	80007c08 <acquire+0x3c>

0000000080007c98 <release>:
    80007c98:	fe010113          	addi	sp,sp,-32
    80007c9c:	00813823          	sd	s0,16(sp)
    80007ca0:	00113c23          	sd	ra,24(sp)
    80007ca4:	00913423          	sd	s1,8(sp)
    80007ca8:	01213023          	sd	s2,0(sp)
    80007cac:	02010413          	addi	s0,sp,32
    80007cb0:	00052783          	lw	a5,0(a0)
    80007cb4:	00079a63          	bnez	a5,80007cc8 <release+0x30>
    80007cb8:	00002517          	auipc	a0,0x2
    80007cbc:	93050513          	addi	a0,a0,-1744 # 800095e8 <digits+0x28>
    80007cc0:	fffff097          	auipc	ra,0xfffff
    80007cc4:	1dc080e7          	jalr	476(ra) # 80006e9c <panic>
    80007cc8:	01053903          	ld	s2,16(a0)
    80007ccc:	00050493          	mv	s1,a0
    80007cd0:	fffff097          	auipc	ra,0xfffff
    80007cd4:	814080e7          	jalr	-2028(ra) # 800064e4 <mycpu>
    80007cd8:	fea910e3          	bne	s2,a0,80007cb8 <release+0x20>
    80007cdc:	0004b823          	sd	zero,16(s1)
    80007ce0:	0ff0000f          	fence
    80007ce4:	0f50000f          	fence	iorw,ow
    80007ce8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007cec:	ffffe097          	auipc	ra,0xffffe
    80007cf0:	7f8080e7          	jalr	2040(ra) # 800064e4 <mycpu>
    80007cf4:	100027f3          	csrr	a5,sstatus
    80007cf8:	0027f793          	andi	a5,a5,2
    80007cfc:	04079a63          	bnez	a5,80007d50 <release+0xb8>
    80007d00:	07852783          	lw	a5,120(a0)
    80007d04:	02f05e63          	blez	a5,80007d40 <release+0xa8>
    80007d08:	fff7871b          	addiw	a4,a5,-1
    80007d0c:	06e52c23          	sw	a4,120(a0)
    80007d10:	00071c63          	bnez	a4,80007d28 <release+0x90>
    80007d14:	07c52783          	lw	a5,124(a0)
    80007d18:	00078863          	beqz	a5,80007d28 <release+0x90>
    80007d1c:	100027f3          	csrr	a5,sstatus
    80007d20:	0027e793          	ori	a5,a5,2
    80007d24:	10079073          	csrw	sstatus,a5
    80007d28:	01813083          	ld	ra,24(sp)
    80007d2c:	01013403          	ld	s0,16(sp)
    80007d30:	00813483          	ld	s1,8(sp)
    80007d34:	00013903          	ld	s2,0(sp)
    80007d38:	02010113          	addi	sp,sp,32
    80007d3c:	00008067          	ret
    80007d40:	00002517          	auipc	a0,0x2
    80007d44:	8c850513          	addi	a0,a0,-1848 # 80009608 <digits+0x48>
    80007d48:	fffff097          	auipc	ra,0xfffff
    80007d4c:	154080e7          	jalr	340(ra) # 80006e9c <panic>
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	8a050513          	addi	a0,a0,-1888 # 800095f0 <digits+0x30>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	144080e7          	jalr	324(ra) # 80006e9c <panic>

0000000080007d60 <holding>:
    80007d60:	00052783          	lw	a5,0(a0)
    80007d64:	00079663          	bnez	a5,80007d70 <holding+0x10>
    80007d68:	00000513          	li	a0,0
    80007d6c:	00008067          	ret
    80007d70:	fe010113          	addi	sp,sp,-32
    80007d74:	00813823          	sd	s0,16(sp)
    80007d78:	00913423          	sd	s1,8(sp)
    80007d7c:	00113c23          	sd	ra,24(sp)
    80007d80:	02010413          	addi	s0,sp,32
    80007d84:	01053483          	ld	s1,16(a0)
    80007d88:	ffffe097          	auipc	ra,0xffffe
    80007d8c:	75c080e7          	jalr	1884(ra) # 800064e4 <mycpu>
    80007d90:	01813083          	ld	ra,24(sp)
    80007d94:	01013403          	ld	s0,16(sp)
    80007d98:	40a48533          	sub	a0,s1,a0
    80007d9c:	00153513          	seqz	a0,a0
    80007da0:	00813483          	ld	s1,8(sp)
    80007da4:	02010113          	addi	sp,sp,32
    80007da8:	00008067          	ret

0000000080007dac <push_off>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00113c23          	sd	ra,24(sp)
    80007db8:	00913423          	sd	s1,8(sp)
    80007dbc:	02010413          	addi	s0,sp,32
    80007dc0:	100024f3          	csrr	s1,sstatus
    80007dc4:	100027f3          	csrr	a5,sstatus
    80007dc8:	ffd7f793          	andi	a5,a5,-3
    80007dcc:	10079073          	csrw	sstatus,a5
    80007dd0:	ffffe097          	auipc	ra,0xffffe
    80007dd4:	714080e7          	jalr	1812(ra) # 800064e4 <mycpu>
    80007dd8:	07852783          	lw	a5,120(a0)
    80007ddc:	02078663          	beqz	a5,80007e08 <push_off+0x5c>
    80007de0:	ffffe097          	auipc	ra,0xffffe
    80007de4:	704080e7          	jalr	1796(ra) # 800064e4 <mycpu>
    80007de8:	07852783          	lw	a5,120(a0)
    80007dec:	01813083          	ld	ra,24(sp)
    80007df0:	01013403          	ld	s0,16(sp)
    80007df4:	0017879b          	addiw	a5,a5,1
    80007df8:	06f52c23          	sw	a5,120(a0)
    80007dfc:	00813483          	ld	s1,8(sp)
    80007e00:	02010113          	addi	sp,sp,32
    80007e04:	00008067          	ret
    80007e08:	0014d493          	srli	s1,s1,0x1
    80007e0c:	ffffe097          	auipc	ra,0xffffe
    80007e10:	6d8080e7          	jalr	1752(ra) # 800064e4 <mycpu>
    80007e14:	0014f493          	andi	s1,s1,1
    80007e18:	06952e23          	sw	s1,124(a0)
    80007e1c:	fc5ff06f          	j	80007de0 <push_off+0x34>

0000000080007e20 <pop_off>:
    80007e20:	ff010113          	addi	sp,sp,-16
    80007e24:	00813023          	sd	s0,0(sp)
    80007e28:	00113423          	sd	ra,8(sp)
    80007e2c:	01010413          	addi	s0,sp,16
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	6b4080e7          	jalr	1716(ra) # 800064e4 <mycpu>
    80007e38:	100027f3          	csrr	a5,sstatus
    80007e3c:	0027f793          	andi	a5,a5,2
    80007e40:	04079663          	bnez	a5,80007e8c <pop_off+0x6c>
    80007e44:	07852783          	lw	a5,120(a0)
    80007e48:	02f05a63          	blez	a5,80007e7c <pop_off+0x5c>
    80007e4c:	fff7871b          	addiw	a4,a5,-1
    80007e50:	06e52c23          	sw	a4,120(a0)
    80007e54:	00071c63          	bnez	a4,80007e6c <pop_off+0x4c>
    80007e58:	07c52783          	lw	a5,124(a0)
    80007e5c:	00078863          	beqz	a5,80007e6c <pop_off+0x4c>
    80007e60:	100027f3          	csrr	a5,sstatus
    80007e64:	0027e793          	ori	a5,a5,2
    80007e68:	10079073          	csrw	sstatus,a5
    80007e6c:	00813083          	ld	ra,8(sp)
    80007e70:	00013403          	ld	s0,0(sp)
    80007e74:	01010113          	addi	sp,sp,16
    80007e78:	00008067          	ret
    80007e7c:	00001517          	auipc	a0,0x1
    80007e80:	78c50513          	addi	a0,a0,1932 # 80009608 <digits+0x48>
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	018080e7          	jalr	24(ra) # 80006e9c <panic>
    80007e8c:	00001517          	auipc	a0,0x1
    80007e90:	76450513          	addi	a0,a0,1892 # 800095f0 <digits+0x30>
    80007e94:	fffff097          	auipc	ra,0xfffff
    80007e98:	008080e7          	jalr	8(ra) # 80006e9c <panic>

0000000080007e9c <push_on>:
    80007e9c:	fe010113          	addi	sp,sp,-32
    80007ea0:	00813823          	sd	s0,16(sp)
    80007ea4:	00113c23          	sd	ra,24(sp)
    80007ea8:	00913423          	sd	s1,8(sp)
    80007eac:	02010413          	addi	s0,sp,32
    80007eb0:	100024f3          	csrr	s1,sstatus
    80007eb4:	100027f3          	csrr	a5,sstatus
    80007eb8:	0027e793          	ori	a5,a5,2
    80007ebc:	10079073          	csrw	sstatus,a5
    80007ec0:	ffffe097          	auipc	ra,0xffffe
    80007ec4:	624080e7          	jalr	1572(ra) # 800064e4 <mycpu>
    80007ec8:	07852783          	lw	a5,120(a0)
    80007ecc:	02078663          	beqz	a5,80007ef8 <push_on+0x5c>
    80007ed0:	ffffe097          	auipc	ra,0xffffe
    80007ed4:	614080e7          	jalr	1556(ra) # 800064e4 <mycpu>
    80007ed8:	07852783          	lw	a5,120(a0)
    80007edc:	01813083          	ld	ra,24(sp)
    80007ee0:	01013403          	ld	s0,16(sp)
    80007ee4:	0017879b          	addiw	a5,a5,1
    80007ee8:	06f52c23          	sw	a5,120(a0)
    80007eec:	00813483          	ld	s1,8(sp)
    80007ef0:	02010113          	addi	sp,sp,32
    80007ef4:	00008067          	ret
    80007ef8:	0014d493          	srli	s1,s1,0x1
    80007efc:	ffffe097          	auipc	ra,0xffffe
    80007f00:	5e8080e7          	jalr	1512(ra) # 800064e4 <mycpu>
    80007f04:	0014f493          	andi	s1,s1,1
    80007f08:	06952e23          	sw	s1,124(a0)
    80007f0c:	fc5ff06f          	j	80007ed0 <push_on+0x34>

0000000080007f10 <pop_on>:
    80007f10:	ff010113          	addi	sp,sp,-16
    80007f14:	00813023          	sd	s0,0(sp)
    80007f18:	00113423          	sd	ra,8(sp)
    80007f1c:	01010413          	addi	s0,sp,16
    80007f20:	ffffe097          	auipc	ra,0xffffe
    80007f24:	5c4080e7          	jalr	1476(ra) # 800064e4 <mycpu>
    80007f28:	100027f3          	csrr	a5,sstatus
    80007f2c:	0027f793          	andi	a5,a5,2
    80007f30:	04078463          	beqz	a5,80007f78 <pop_on+0x68>
    80007f34:	07852783          	lw	a5,120(a0)
    80007f38:	02f05863          	blez	a5,80007f68 <pop_on+0x58>
    80007f3c:	fff7879b          	addiw	a5,a5,-1
    80007f40:	06f52c23          	sw	a5,120(a0)
    80007f44:	07853783          	ld	a5,120(a0)
    80007f48:	00079863          	bnez	a5,80007f58 <pop_on+0x48>
    80007f4c:	100027f3          	csrr	a5,sstatus
    80007f50:	ffd7f793          	andi	a5,a5,-3
    80007f54:	10079073          	csrw	sstatus,a5
    80007f58:	00813083          	ld	ra,8(sp)
    80007f5c:	00013403          	ld	s0,0(sp)
    80007f60:	01010113          	addi	sp,sp,16
    80007f64:	00008067          	ret
    80007f68:	00001517          	auipc	a0,0x1
    80007f6c:	6c850513          	addi	a0,a0,1736 # 80009630 <digits+0x70>
    80007f70:	fffff097          	auipc	ra,0xfffff
    80007f74:	f2c080e7          	jalr	-212(ra) # 80006e9c <panic>
    80007f78:	00001517          	auipc	a0,0x1
    80007f7c:	69850513          	addi	a0,a0,1688 # 80009610 <digits+0x50>
    80007f80:	fffff097          	auipc	ra,0xfffff
    80007f84:	f1c080e7          	jalr	-228(ra) # 80006e9c <panic>

0000000080007f88 <__memset>:
    80007f88:	ff010113          	addi	sp,sp,-16
    80007f8c:	00813423          	sd	s0,8(sp)
    80007f90:	01010413          	addi	s0,sp,16
    80007f94:	1a060e63          	beqz	a2,80008150 <__memset+0x1c8>
    80007f98:	40a007b3          	neg	a5,a0
    80007f9c:	0077f793          	andi	a5,a5,7
    80007fa0:	00778693          	addi	a3,a5,7
    80007fa4:	00b00813          	li	a6,11
    80007fa8:	0ff5f593          	andi	a1,a1,255
    80007fac:	fff6071b          	addiw	a4,a2,-1
    80007fb0:	1b06e663          	bltu	a3,a6,8000815c <__memset+0x1d4>
    80007fb4:	1cd76463          	bltu	a4,a3,8000817c <__memset+0x1f4>
    80007fb8:	1a078e63          	beqz	a5,80008174 <__memset+0x1ec>
    80007fbc:	00b50023          	sb	a1,0(a0)
    80007fc0:	00100713          	li	a4,1
    80007fc4:	1ae78463          	beq	a5,a4,8000816c <__memset+0x1e4>
    80007fc8:	00b500a3          	sb	a1,1(a0)
    80007fcc:	00200713          	li	a4,2
    80007fd0:	1ae78a63          	beq	a5,a4,80008184 <__memset+0x1fc>
    80007fd4:	00b50123          	sb	a1,2(a0)
    80007fd8:	00300713          	li	a4,3
    80007fdc:	18e78463          	beq	a5,a4,80008164 <__memset+0x1dc>
    80007fe0:	00b501a3          	sb	a1,3(a0)
    80007fe4:	00400713          	li	a4,4
    80007fe8:	1ae78263          	beq	a5,a4,8000818c <__memset+0x204>
    80007fec:	00b50223          	sb	a1,4(a0)
    80007ff0:	00500713          	li	a4,5
    80007ff4:	1ae78063          	beq	a5,a4,80008194 <__memset+0x20c>
    80007ff8:	00b502a3          	sb	a1,5(a0)
    80007ffc:	00700713          	li	a4,7
    80008000:	18e79e63          	bne	a5,a4,8000819c <__memset+0x214>
    80008004:	00b50323          	sb	a1,6(a0)
    80008008:	00700e93          	li	t4,7
    8000800c:	00859713          	slli	a4,a1,0x8
    80008010:	00e5e733          	or	a4,a1,a4
    80008014:	01059e13          	slli	t3,a1,0x10
    80008018:	01c76e33          	or	t3,a4,t3
    8000801c:	01859313          	slli	t1,a1,0x18
    80008020:	006e6333          	or	t1,t3,t1
    80008024:	02059893          	slli	a7,a1,0x20
    80008028:	40f60e3b          	subw	t3,a2,a5
    8000802c:	011368b3          	or	a7,t1,a7
    80008030:	02859813          	slli	a6,a1,0x28
    80008034:	0108e833          	or	a6,a7,a6
    80008038:	03059693          	slli	a3,a1,0x30
    8000803c:	003e589b          	srliw	a7,t3,0x3
    80008040:	00d866b3          	or	a3,a6,a3
    80008044:	03859713          	slli	a4,a1,0x38
    80008048:	00389813          	slli	a6,a7,0x3
    8000804c:	00f507b3          	add	a5,a0,a5
    80008050:	00e6e733          	or	a4,a3,a4
    80008054:	000e089b          	sext.w	a7,t3
    80008058:	00f806b3          	add	a3,a6,a5
    8000805c:	00e7b023          	sd	a4,0(a5)
    80008060:	00878793          	addi	a5,a5,8
    80008064:	fed79ce3          	bne	a5,a3,8000805c <__memset+0xd4>
    80008068:	ff8e7793          	andi	a5,t3,-8
    8000806c:	0007871b          	sext.w	a4,a5
    80008070:	01d787bb          	addw	a5,a5,t4
    80008074:	0ce88e63          	beq	a7,a4,80008150 <__memset+0x1c8>
    80008078:	00f50733          	add	a4,a0,a5
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	0017871b          	addiw	a4,a5,1
    80008084:	0cc77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	0027871b          	addiw	a4,a5,2
    80008094:	0ac77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0037871b          	addiw	a4,a5,3
    800080a4:	0ac77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0047871b          	addiw	a4,a5,4
    800080b4:	08c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0057871b          	addiw	a4,a5,5
    800080c4:	08c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0067871b          	addiw	a4,a5,6
    800080d4:	06c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0077871b          	addiw	a4,a5,7
    800080e4:	06c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0087871b          	addiw	a4,a5,8
    800080f4:	04c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0097871b          	addiw	a4,a5,9
    80008104:	04c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	00a7871b          	addiw	a4,a5,10
    80008114:	02c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	00b7871b          	addiw	a4,a5,11
    80008124:	02c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	00c7871b          	addiw	a4,a5,12
    80008134:	00c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00d7879b          	addiw	a5,a5,13
    80008144:	00c7f663          	bgeu	a5,a2,80008150 <__memset+0x1c8>
    80008148:	00f507b3          	add	a5,a0,a5
    8000814c:	00b78023          	sb	a1,0(a5)
    80008150:	00813403          	ld	s0,8(sp)
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00008067          	ret
    8000815c:	00b00693          	li	a3,11
    80008160:	e55ff06f          	j	80007fb4 <__memset+0x2c>
    80008164:	00300e93          	li	t4,3
    80008168:	ea5ff06f          	j	8000800c <__memset+0x84>
    8000816c:	00100e93          	li	t4,1
    80008170:	e9dff06f          	j	8000800c <__memset+0x84>
    80008174:	00000e93          	li	t4,0
    80008178:	e95ff06f          	j	8000800c <__memset+0x84>
    8000817c:	00000793          	li	a5,0
    80008180:	ef9ff06f          	j	80008078 <__memset+0xf0>
    80008184:	00200e93          	li	t4,2
    80008188:	e85ff06f          	j	8000800c <__memset+0x84>
    8000818c:	00400e93          	li	t4,4
    80008190:	e7dff06f          	j	8000800c <__memset+0x84>
    80008194:	00500e93          	li	t4,5
    80008198:	e75ff06f          	j	8000800c <__memset+0x84>
    8000819c:	00600e93          	li	t4,6
    800081a0:	e6dff06f          	j	8000800c <__memset+0x84>

00000000800081a4 <__memmove>:
    800081a4:	ff010113          	addi	sp,sp,-16
    800081a8:	00813423          	sd	s0,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	0e060863          	beqz	a2,800082a0 <__memmove+0xfc>
    800081b4:	fff6069b          	addiw	a3,a2,-1
    800081b8:	0006881b          	sext.w	a6,a3
    800081bc:	0ea5e863          	bltu	a1,a0,800082ac <__memmove+0x108>
    800081c0:	00758713          	addi	a4,a1,7
    800081c4:	00a5e7b3          	or	a5,a1,a0
    800081c8:	40a70733          	sub	a4,a4,a0
    800081cc:	0077f793          	andi	a5,a5,7
    800081d0:	00f73713          	sltiu	a4,a4,15
    800081d4:	00174713          	xori	a4,a4,1
    800081d8:	0017b793          	seqz	a5,a5
    800081dc:	00e7f7b3          	and	a5,a5,a4
    800081e0:	10078863          	beqz	a5,800082f0 <__memmove+0x14c>
    800081e4:	00900793          	li	a5,9
    800081e8:	1107f463          	bgeu	a5,a6,800082f0 <__memmove+0x14c>
    800081ec:	0036581b          	srliw	a6,a2,0x3
    800081f0:	fff8081b          	addiw	a6,a6,-1
    800081f4:	02081813          	slli	a6,a6,0x20
    800081f8:	01d85893          	srli	a7,a6,0x1d
    800081fc:	00858813          	addi	a6,a1,8
    80008200:	00058793          	mv	a5,a1
    80008204:	00050713          	mv	a4,a0
    80008208:	01088833          	add	a6,a7,a6
    8000820c:	0007b883          	ld	a7,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	00870713          	addi	a4,a4,8
    80008218:	ff173c23          	sd	a7,-8(a4)
    8000821c:	ff0798e3          	bne	a5,a6,8000820c <__memmove+0x68>
    80008220:	ff867713          	andi	a4,a2,-8
    80008224:	02071793          	slli	a5,a4,0x20
    80008228:	0207d793          	srli	a5,a5,0x20
    8000822c:	00f585b3          	add	a1,a1,a5
    80008230:	40e686bb          	subw	a3,a3,a4
    80008234:	00f507b3          	add	a5,a0,a5
    80008238:	06e60463          	beq	a2,a4,800082a0 <__memmove+0xfc>
    8000823c:	0005c703          	lbu	a4,0(a1)
    80008240:	00e78023          	sb	a4,0(a5)
    80008244:	04068e63          	beqz	a3,800082a0 <__memmove+0xfc>
    80008248:	0015c603          	lbu	a2,1(a1)
    8000824c:	00100713          	li	a4,1
    80008250:	00c780a3          	sb	a2,1(a5)
    80008254:	04e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008258:	0025c603          	lbu	a2,2(a1)
    8000825c:	00200713          	li	a4,2
    80008260:	00c78123          	sb	a2,2(a5)
    80008264:	02e68e63          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008268:	0035c603          	lbu	a2,3(a1)
    8000826c:	00300713          	li	a4,3
    80008270:	00c781a3          	sb	a2,3(a5)
    80008274:	02e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008278:	0045c603          	lbu	a2,4(a1)
    8000827c:	00400713          	li	a4,4
    80008280:	00c78223          	sb	a2,4(a5)
    80008284:	00e68e63          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008288:	0055c603          	lbu	a2,5(a1)
    8000828c:	00500713          	li	a4,5
    80008290:	00c782a3          	sb	a2,5(a5)
    80008294:	00e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008298:	0065c703          	lbu	a4,6(a1)
    8000829c:	00e78323          	sb	a4,6(a5)
    800082a0:	00813403          	ld	s0,8(sp)
    800082a4:	01010113          	addi	sp,sp,16
    800082a8:	00008067          	ret
    800082ac:	02061713          	slli	a4,a2,0x20
    800082b0:	02075713          	srli	a4,a4,0x20
    800082b4:	00e587b3          	add	a5,a1,a4
    800082b8:	f0f574e3          	bgeu	a0,a5,800081c0 <__memmove+0x1c>
    800082bc:	02069613          	slli	a2,a3,0x20
    800082c0:	02065613          	srli	a2,a2,0x20
    800082c4:	fff64613          	not	a2,a2
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00c78633          	add	a2,a5,a2
    800082d0:	fff7c683          	lbu	a3,-1(a5)
    800082d4:	fff78793          	addi	a5,a5,-1
    800082d8:	fff70713          	addi	a4,a4,-1
    800082dc:	00d70023          	sb	a3,0(a4)
    800082e0:	fec798e3          	bne	a5,a2,800082d0 <__memmove+0x12c>
    800082e4:	00813403          	ld	s0,8(sp)
    800082e8:	01010113          	addi	sp,sp,16
    800082ec:	00008067          	ret
    800082f0:	02069713          	slli	a4,a3,0x20
    800082f4:	02075713          	srli	a4,a4,0x20
    800082f8:	00170713          	addi	a4,a4,1
    800082fc:	00e50733          	add	a4,a0,a4
    80008300:	00050793          	mv	a5,a0
    80008304:	0005c683          	lbu	a3,0(a1)
    80008308:	00178793          	addi	a5,a5,1
    8000830c:	00158593          	addi	a1,a1,1
    80008310:	fed78fa3          	sb	a3,-1(a5)
    80008314:	fee798e3          	bne	a5,a4,80008304 <__memmove+0x160>
    80008318:	f89ff06f          	j	800082a0 <__memmove+0xfc>

000000008000831c <__putc>:
    8000831c:	fe010113          	addi	sp,sp,-32
    80008320:	00813823          	sd	s0,16(sp)
    80008324:	00113c23          	sd	ra,24(sp)
    80008328:	02010413          	addi	s0,sp,32
    8000832c:	00050793          	mv	a5,a0
    80008330:	fef40593          	addi	a1,s0,-17
    80008334:	00100613          	li	a2,1
    80008338:	00000513          	li	a0,0
    8000833c:	fef407a3          	sb	a5,-17(s0)
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	b3c080e7          	jalr	-1220(ra) # 80006e7c <console_write>
    80008348:	01813083          	ld	ra,24(sp)
    8000834c:	01013403          	ld	s0,16(sp)
    80008350:	02010113          	addi	sp,sp,32
    80008354:	00008067          	ret

0000000080008358 <__getc>:
    80008358:	fe010113          	addi	sp,sp,-32
    8000835c:	00813823          	sd	s0,16(sp)
    80008360:	00113c23          	sd	ra,24(sp)
    80008364:	02010413          	addi	s0,sp,32
    80008368:	fe840593          	addi	a1,s0,-24
    8000836c:	00100613          	li	a2,1
    80008370:	00000513          	li	a0,0
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	ae8080e7          	jalr	-1304(ra) # 80006e5c <console_read>
    8000837c:	fe844503          	lbu	a0,-24(s0)
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	02010113          	addi	sp,sp,32
    8000838c:	00008067          	ret

0000000080008390 <console_handler>:
    80008390:	fe010113          	addi	sp,sp,-32
    80008394:	00813823          	sd	s0,16(sp)
    80008398:	00113c23          	sd	ra,24(sp)
    8000839c:	00913423          	sd	s1,8(sp)
    800083a0:	02010413          	addi	s0,sp,32
    800083a4:	14202773          	csrr	a4,scause
    800083a8:	100027f3          	csrr	a5,sstatus
    800083ac:	0027f793          	andi	a5,a5,2
    800083b0:	06079e63          	bnez	a5,8000842c <console_handler+0x9c>
    800083b4:	00074c63          	bltz	a4,800083cc <console_handler+0x3c>
    800083b8:	01813083          	ld	ra,24(sp)
    800083bc:	01013403          	ld	s0,16(sp)
    800083c0:	00813483          	ld	s1,8(sp)
    800083c4:	02010113          	addi	sp,sp,32
    800083c8:	00008067          	ret
    800083cc:	0ff77713          	andi	a4,a4,255
    800083d0:	00900793          	li	a5,9
    800083d4:	fef712e3          	bne	a4,a5,800083b8 <console_handler+0x28>
    800083d8:	ffffe097          	auipc	ra,0xffffe
    800083dc:	6dc080e7          	jalr	1756(ra) # 80006ab4 <plic_claim>
    800083e0:	00a00793          	li	a5,10
    800083e4:	00050493          	mv	s1,a0
    800083e8:	02f50c63          	beq	a0,a5,80008420 <console_handler+0x90>
    800083ec:	fc0506e3          	beqz	a0,800083b8 <console_handler+0x28>
    800083f0:	00050593          	mv	a1,a0
    800083f4:	00001517          	auipc	a0,0x1
    800083f8:	14450513          	addi	a0,a0,324 # 80009538 <_ZZ6prtIntmE6digits+0x440>
    800083fc:	fffff097          	auipc	ra,0xfffff
    80008400:	afc080e7          	jalr	-1284(ra) # 80006ef8 <__printf>
    80008404:	01013403          	ld	s0,16(sp)
    80008408:	01813083          	ld	ra,24(sp)
    8000840c:	00048513          	mv	a0,s1
    80008410:	00813483          	ld	s1,8(sp)
    80008414:	02010113          	addi	sp,sp,32
    80008418:	ffffe317          	auipc	t1,0xffffe
    8000841c:	6d430067          	jr	1748(t1) # 80006aec <plic_complete>
    80008420:	fffff097          	auipc	ra,0xfffff
    80008424:	3e0080e7          	jalr	992(ra) # 80007800 <uartintr>
    80008428:	fddff06f          	j	80008404 <console_handler+0x74>
    8000842c:	00001517          	auipc	a0,0x1
    80008430:	20c50513          	addi	a0,a0,524 # 80009638 <digits+0x78>
    80008434:	fffff097          	auipc	ra,0xfffff
    80008438:	a68080e7          	jalr	-1432(ra) # 80006e9c <panic>
	...
