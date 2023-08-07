
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	49813103          	ld	sp,1176(sp) # 8000b498 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	26c060ef          	jal	ra,80006288 <start>

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
    800011a8:	018010ef          	jal	ra,800021c0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012b0:	0dc010ef          	jal	ra,8000238c <_ZN5Riscv14timerInterruptEv>

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
    800013b8:	08c010ef          	jal	ra,80002444 <_ZN5Riscv17hardwareInterruptEv>

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
    80001550:	00050913          	mv	s2,a0
    80001554:	00058493          	mv	s1,a1
    80001558:	00060993          	mv	s3,a2
    if(start_routine!=nullptr){
    8000155c:	04058e63          	beqz	a1,800015b8 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
        uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE*8);
    80001560:	00008537          	lui	a0,0x8
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f50080e7          	jalr	-176(ra) # 800014b4 <_Z9mem_allocm>
    8000156c:	00050713          	mv	a4,a0
        if(stack==nullptr)return -1;
    80001570:	06050463          	beqz	a0,800015d8 <_Z13thread_createPP3TCBPFvPvES2_+0xa4>
        commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    80001574:	00098693          	mv	a3,s3
    80001578:	00048613          	mv	a2,s1
    8000157c:	00090593          	mv	a1,s2
    80001580:	01100513          	li	a0,17
    80001584:	00000097          	auipc	ra,0x0
    80001588:	ef8080e7          	jalr	-264(ra) # 8000147c <_Z18commonPartSysCallsiz>
    }



    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    8000158c:	00050793          	mv	a5,a0
    80001590:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001594:	fcc42503          	lw	a0,-52(s0)
    80001598:	0005051b          	sext.w	a0,a0
}
    8000159c:	03813083          	ld	ra,56(sp)
    800015a0:	03013403          	ld	s0,48(sp)
    800015a4:	02813483          	ld	s1,40(sp)
    800015a8:	02013903          	ld	s2,32(sp)
    800015ac:	01813983          	ld	s3,24(sp)
    800015b0:	04010113          	addi	sp,sp,64
    800015b4:	00008067          	ret
        commonPartSysCalls(0x11, handle, start_routine, arg, nullptr);
    800015b8:	00000713          	li	a4,0
    800015bc:	00060693          	mv	a3,a2
    800015c0:	00058613          	mv	a2,a1
    800015c4:	00050593          	mv	a1,a0
    800015c8:	01100513          	li	a0,17
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	eb0080e7          	jalr	-336(ra) # 8000147c <_Z18commonPartSysCallsiz>
    800015d4:	fb9ff06f          	j	8000158c <_Z13thread_createPP3TCBPFvPvES2_+0x58>
        if(stack==nullptr)return -1;
    800015d8:	fff00513          	li	a0,-1
    800015dc:	fc1ff06f          	j	8000159c <_Z13thread_createPP3TCBPFvPvES2_+0x68>

00000000800015e0 <_Z10time_sleepm>:

int time_sleep(time_t) {
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00813423          	sd	s0,8(sp)
    800015e8:	01010413          	addi	s0,sp,16
    return 0;
}
    800015ec:	00000513          	li	a0,0
    800015f0:	00813403          	ld	s0,8(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <_Z11thread_exitv>:

int thread_exit() {
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x12);
    8000160c:	01200513          	li	a0,18
    80001610:	00000097          	auipc	ra,0x0
    80001614:	e6c080e7          	jalr	-404(ra) # 8000147c <_Z18commonPartSysCallsiz>

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001618:	00050793          	mv	a5,a0
    8000161c:	fef42623          	sw	a5,-20(s0)
    return ret;
    80001620:	fec42503          	lw	a0,-20(s0)
}
    80001624:	0005051b          	sext.w	a0,a0
    80001628:	01813083          	ld	ra,24(sp)
    8000162c:	01013403          	ld	s0,16(sp)
    80001630:	02010113          	addi	sp,sp,32
    80001634:	00008067          	ret

0000000080001638 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    commonPartSysCalls(0x13);
    80001648:	01300513          	li	a0,19
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	e30080e7          	jalr	-464(ra) # 8000147c <_Z18commonPartSysCallsiz>
}
    80001654:	00813083          	ld	ra,8(sp)
    80001658:	00013403          	ld	s0,0(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00813423          	sd	s0,8(sp)
    8000166c:	01010413          	addi	s0,sp,16

}
    80001670:	00813403          	ld	s0,8(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret

000000008000167c <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    8000167c:	ff010113          	addi	sp,sp,-16
    80001680:	00813423          	sd	s0,8(sp)
    80001684:	01010413          	addi	s0,sp,16
    return 0;
}
    80001688:	00000513          	li	a0,0
    8000168c:	00813403          	ld	s0,8(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16
    return 0;
}
    800016a4:	00000513          	li	a0,0
    800016a8:	00813403          	ld	s0,8(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00813423          	sd	s0,8(sp)
    800016bc:	01010413          	addi	s0,sp,16
    return 0;
}
    800016c0:	00000513          	li	a0,0
    800016c4:	00813403          	ld	s0,8(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00813423          	sd	s0,8(sp)
    800016d8:	01010413          	addi	s0,sp,16
    return 0;
}
    800016dc:	00000513          	li	a0,0
    800016e0:	00813403          	ld	s0,8(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_Z4getcv>:

char getc() {
    800016ec:	fe010113          	addi	sp,sp,-32
    800016f0:	00113c23          	sd	ra,24(sp)
    800016f4:	00813823          	sd	s0,16(sp)
    800016f8:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x41);
    800016fc:	04100513          	li	a0,65
    80001700:	00000097          	auipc	ra,0x0
    80001704:	d7c080e7          	jalr	-644(ra) # 8000147c <_Z18commonPartSysCallsiz>

    volatile char ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001708:	00050793          	mv	a5,a0
    8000170c:	fef407a3          	sb	a5,-17(s0)
    return ret;
    80001710:	fef44503          	lbu	a0,-17(s0)
}
    80001714:	0ff57513          	andi	a0,a0,255
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z4putcc>:

void putc(char c) {
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00113423          	sd	ra,8(sp)
    80001730:	00813023          	sd	s0,0(sp)
    80001734:	01010413          	addi	s0,sp,16
    80001738:	00050593          	mv	a1,a0
    commonPartSysCalls(0x42, c);
    8000173c:	04200513          	li	a0,66
    80001740:	00000097          	auipc	ra,0x0
    80001744:	d3c080e7          	jalr	-708(ra) # 8000147c <_Z18commonPartSysCallsiz>
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_Z9fibonaccim>:
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

uint64 fibonacci(uint64 n)
{
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	01213023          	sd	s2,0(sp)
    8000176c:	02010413          	addi	s0,sp,32
    80001770:	00050493          	mv	s1,a0
    if(n==0 || n==1)return n;
    80001774:	00100793          	li	a5,1
    80001778:	02a7f263          	bgeu	a5,a0,8000179c <_Z9fibonaccim+0x44>
    //if(n%4==0)TCB::yield();
    return fibonacci(n-1)+ fibonacci(n-2);
    8000177c:	fff50513          	addi	a0,a0,-1 # 7fff <_entry-0x7fff8001>
    80001780:	00000097          	auipc	ra,0x0
    80001784:	fd8080e7          	jalr	-40(ra) # 80001758 <_Z9fibonaccim>
    80001788:	00050913          	mv	s2,a0
    8000178c:	ffe48513          	addi	a0,s1,-2
    80001790:	00000097          	auipc	ra,0x0
    80001794:	fc8080e7          	jalr	-56(ra) # 80001758 <_Z9fibonaccim>
    80001798:	00a90533          	add	a0,s2,a0
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	00013903          	ld	s2,0(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret

00000000800017b4 <_Z11workerBodyCPv>:

void workerBodyC(void*) {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	01213023          	sd	s2,0(sp)
    800017c8:	02010413          	addi	s0,sp,32
    uint8 i=0;
    800017cc:	00000493          	li	s1,0
    800017d0:	0400006f          	j	80001810 <_Z11workerBodyCPv+0x5c>
    for(;i<3;i++){
        printString("C: i=");
    800017d4:	00008517          	auipc	a0,0x8
    800017d8:	84c50513          	addi	a0,a0,-1972 # 80009020 <CONSOLE_STATUS+0x10>
    800017dc:	00004097          	auipc	ra,0x4
    800017e0:	87c080e7          	jalr	-1924(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    800017e4:	00000613          	li	a2,0
    800017e8:	00a00593          	li	a1,10
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00004097          	auipc	ra,0x4
    800017f4:	a18080e7          	jalr	-1512(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    800017f8:	00008517          	auipc	a0,0x8
    800017fc:	93850513          	addi	a0,a0,-1736 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001800:	00004097          	auipc	ra,0x4
    80001804:	858080e7          	jalr	-1960(ra) # 80005058 <_Z11printStringPKc>
    for(;i<3;i++){
    80001808:	0014849b          	addiw	s1,s1,1
    8000180c:	0ff4f493          	andi	s1,s1,255
    80001810:	00200793          	li	a5,2
    80001814:	fc97f0e3          	bgeu	a5,s1,800017d4 <_Z11workerBodyCPv+0x20>
    }
    printString("C: yield\n");
    80001818:	00008517          	auipc	a0,0x8
    8000181c:	81050513          	addi	a0,a0,-2032 # 80009028 <CONSOLE_STATUS+0x18>
    80001820:	00004097          	auipc	ra,0x4
    80001824:	838080e7          	jalr	-1992(ra) # 80005058 <_Z11printStringPKc>
    __asm__("li t1, 7");
    80001828:	00700313          	li	t1,7
    TCB::yield();
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	d88080e7          	jalr	-632(ra) # 800025b4 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    80001834:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001838:	00008517          	auipc	a0,0x8
    8000183c:	80050513          	addi	a0,a0,-2048 # 80009038 <CONSOLE_STATUS+0x28>
    80001840:	00004097          	auipc	ra,0x4
    80001844:	818080e7          	jalr	-2024(ra) # 80005058 <_Z11printStringPKc>
    printInt(t1);
    80001848:	00000613          	li	a2,0
    8000184c:	00a00593          	li	a1,10
    80001850:	0009051b          	sext.w	a0,s2
    80001854:	00004097          	auipc	ra,0x4
    80001858:	9b4080e7          	jalr	-1612(ra) # 80005208 <_Z8printIntiii>
    printString("\n");
    8000185c:	00008517          	auipc	a0,0x8
    80001860:	8d450513          	addi	a0,a0,-1836 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001864:	00003097          	auipc	ra,0x3
    80001868:	7f4080e7          	jalr	2036(ra) # 80005058 <_Z11printStringPKc>

    uint64 result= fibonacci(20);
    8000186c:	01400513          	li	a0,20
    80001870:	00000097          	auipc	ra,0x0
    80001874:	ee8080e7          	jalr	-280(ra) # 80001758 <_Z9fibonaccim>
    80001878:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000187c:	00007517          	auipc	a0,0x7
    80001880:	7c450513          	addi	a0,a0,1988 # 80009040 <CONSOLE_STATUS+0x30>
    80001884:	00003097          	auipc	ra,0x3
    80001888:	7d4080e7          	jalr	2004(ra) # 80005058 <_Z11printStringPKc>
    printInt(result);
    8000188c:	00000613          	li	a2,0
    80001890:	00a00593          	li	a1,10
    80001894:	0009051b          	sext.w	a0,s2
    80001898:	00004097          	auipc	ra,0x4
    8000189c:	970080e7          	jalr	-1680(ra) # 80005208 <_Z8printIntiii>
    printString("\n");
    800018a0:	00008517          	auipc	a0,0x8
    800018a4:	89050513          	addi	a0,a0,-1904 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800018a8:	00003097          	auipc	ra,0x3
    800018ac:	7b0080e7          	jalr	1968(ra) # 80005058 <_Z11printStringPKc>
    800018b0:	0400006f          	j	800018f0 <_Z11workerBodyCPv+0x13c>

    for(;i<6;i++){
        printString("C: i=");
    800018b4:	00007517          	auipc	a0,0x7
    800018b8:	76c50513          	addi	a0,a0,1900 # 80009020 <CONSOLE_STATUS+0x10>
    800018bc:	00003097          	auipc	ra,0x3
    800018c0:	79c080e7          	jalr	1948(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    800018c4:	00000613          	li	a2,0
    800018c8:	00a00593          	li	a1,10
    800018cc:	00048513          	mv	a0,s1
    800018d0:	00004097          	auipc	ra,0x4
    800018d4:	938080e7          	jalr	-1736(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    800018d8:	00008517          	auipc	a0,0x8
    800018dc:	85850513          	addi	a0,a0,-1960 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800018e0:	00003097          	auipc	ra,0x3
    800018e4:	778080e7          	jalr	1912(ra) # 80005058 <_Z11printStringPKc>
    for(;i<6;i++){
    800018e8:	0014849b          	addiw	s1,s1,1
    800018ec:	0ff4f493          	andi	s1,s1,255
    800018f0:	00500793          	li	a5,5
    800018f4:	fc97f0e3          	bgeu	a5,s1,800018b4 <_Z11workerBodyCPv+0x100>
    }


    /*TCB::running->setFinished(true);
    TCB::yield();*/
    printString("WorkerBodyC finished\n");
    800018f8:	00007517          	auipc	a0,0x7
    800018fc:	75850513          	addi	a0,a0,1880 # 80009050 <CONSOLE_STATUS+0x40>
    80001900:	00003097          	auipc	ra,0x3
    80001904:	758080e7          	jalr	1880(ra) # 80005058 <_Z11printStringPKc>
}
    80001908:	01813083          	ld	ra,24(sp)
    8000190c:	01013403          	ld	s0,16(sp)
    80001910:	00813483          	ld	s1,8(sp)
    80001914:	00013903          	ld	s2,0(sp)
    80001918:	02010113          	addi	sp,sp,32
    8000191c:	00008067          	ret

0000000080001920 <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    uint8 i=10;
    80001938:	00a00493          	li	s1,10
    8000193c:	0400006f          	j	8000197c <_Z11workerBodyDPv+0x5c>
    for(;i<13;i++){
        printString("D: i=");
    80001940:	00007517          	auipc	a0,0x7
    80001944:	72850513          	addi	a0,a0,1832 # 80009068 <CONSOLE_STATUS+0x58>
    80001948:	00003097          	auipc	ra,0x3
    8000194c:	710080e7          	jalr	1808(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    80001950:	00000613          	li	a2,0
    80001954:	00a00593          	li	a1,10
    80001958:	00048513          	mv	a0,s1
    8000195c:	00004097          	auipc	ra,0x4
    80001960:	8ac080e7          	jalr	-1876(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    80001964:	00007517          	auipc	a0,0x7
    80001968:	7cc50513          	addi	a0,a0,1996 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000196c:	00003097          	auipc	ra,0x3
    80001970:	6ec080e7          	jalr	1772(ra) # 80005058 <_Z11printStringPKc>
    for(;i<13;i++){
    80001974:	0014849b          	addiw	s1,s1,1
    80001978:	0ff4f493          	andi	s1,s1,255
    8000197c:	00c00793          	li	a5,12
    80001980:	fc97f0e3          	bgeu	a5,s1,80001940 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001984:	00007517          	auipc	a0,0x7
    80001988:	6ec50513          	addi	a0,a0,1772 # 80009070 <CONSOLE_STATUS+0x60>
    8000198c:	00003097          	auipc	ra,0x3
    80001990:	6cc080e7          	jalr	1740(ra) # 80005058 <_Z11printStringPKc>
    __asm__("li t1, 5");
    80001994:	00500313          	li	t1,5
    TCB::yield();
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	c1c080e7          	jalr	-996(ra) # 800025b4 <_ZN3TCB5yieldEv>

    uint64 result= fibonacci(23);
    800019a0:	01700513          	li	a0,23
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	db4080e7          	jalr	-588(ra) # 80001758 <_Z9fibonaccim>
    800019ac:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800019b0:	00007517          	auipc	a0,0x7
    800019b4:	6d050513          	addi	a0,a0,1744 # 80009080 <CONSOLE_STATUS+0x70>
    800019b8:	00003097          	auipc	ra,0x3
    800019bc:	6a0080e7          	jalr	1696(ra) # 80005058 <_Z11printStringPKc>
    printInt(result);
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0009051b          	sext.w	a0,s2
    800019cc:	00004097          	auipc	ra,0x4
    800019d0:	83c080e7          	jalr	-1988(ra) # 80005208 <_Z8printIntiii>
    printString("\n");
    800019d4:	00007517          	auipc	a0,0x7
    800019d8:	75c50513          	addi	a0,a0,1884 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800019dc:	00003097          	auipc	ra,0x3
    800019e0:	67c080e7          	jalr	1660(ra) # 80005058 <_Z11printStringPKc>
    800019e4:	0400006f          	j	80001a24 <_Z11workerBodyDPv+0x104>

    for(;i<16;i++){
        printString("D: i=");
    800019e8:	00007517          	auipc	a0,0x7
    800019ec:	68050513          	addi	a0,a0,1664 # 80009068 <CONSOLE_STATUS+0x58>
    800019f0:	00003097          	auipc	ra,0x3
    800019f4:	668080e7          	jalr	1640(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    800019f8:	00000613          	li	a2,0
    800019fc:	00a00593          	li	a1,10
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00004097          	auipc	ra,0x4
    80001a08:	804080e7          	jalr	-2044(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    80001a0c:	00007517          	auipc	a0,0x7
    80001a10:	72450513          	addi	a0,a0,1828 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001a14:	00003097          	auipc	ra,0x3
    80001a18:	644080e7          	jalr	1604(ra) # 80005058 <_Z11printStringPKc>
    for(;i<16;i++){
    80001a1c:	0014849b          	addiw	s1,s1,1
    80001a20:	0ff4f493          	andi	s1,s1,255
    80001a24:	00f00793          	li	a5,15
    80001a28:	fc97f0e3          	bgeu	a5,s1,800019e8 <_Z11workerBodyDPv+0xc8>


    /*TCB::running->setFinished(true);
    TCB::yield();*/

    printString("WorkerBodyD finished\n");
    80001a2c:	00007517          	auipc	a0,0x7
    80001a30:	66450513          	addi	a0,a0,1636 # 80009090 <CONSOLE_STATUS+0x80>
    80001a34:	00003097          	auipc	ra,0x3
    80001a38:	624080e7          	jalr	1572(ra) # 80005058 <_Z11printStringPKc>
}
    80001a3c:	01813083          	ld	ra,24(sp)
    80001a40:	01013403          	ld	s0,16(sp)
    80001a44:	00813483          	ld	s1,8(sp)
    80001a48:	00013903          	ld	s2,0(sp)
    80001a4c:	02010113          	addi	sp,sp,32
    80001a50:	00008067          	ret

0000000080001a54 <_Z11workerBodyAPv>:


void workerBodyA(void*){
    80001a54:	fe010113          	addi	sp,sp,-32
    80001a58:	00113c23          	sd	ra,24(sp)
    80001a5c:	00813823          	sd	s0,16(sp)
    80001a60:	00913423          	sd	s1,8(sp)
    80001a64:	02010413          	addi	s0,sp,32
    for (uint64 i=0;i<10;i++){
    80001a68:	00000493          	li	s1,0
    80001a6c:	0300006f          	j	80001a9c <_Z11workerBodyAPv+0x48>
        printString("A: i=");
        printInt(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
    80001a70:	00168693          	addi	a3,a3,1
    80001a74:	000027b7          	lui	a5,0x2
    80001a78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a7c:	00d7ee63          	bltu	a5,a3,80001a98 <_Z11workerBodyAPv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001a80:	00000713          	li	a4,0
    80001a84:	000077b7          	lui	a5,0x7
    80001a88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a8c:	fee7e2e3          	bltu	a5,a4,80001a70 <_Z11workerBodyAPv+0x1c>
    80001a90:	00170713          	addi	a4,a4,1
    80001a94:	ff1ff06f          	j	80001a84 <_Z11workerBodyAPv+0x30>
    for (uint64 i=0;i<10;i++){
    80001a98:	00148493          	addi	s1,s1,1
    80001a9c:	00900793          	li	a5,9
    80001aa0:	0497e063          	bltu	a5,s1,80001ae0 <_Z11workerBodyAPv+0x8c>
        printString("A: i=");
    80001aa4:	00007517          	auipc	a0,0x7
    80001aa8:	60450513          	addi	a0,a0,1540 # 800090a8 <CONSOLE_STATUS+0x98>
    80001aac:	00003097          	auipc	ra,0x3
    80001ab0:	5ac080e7          	jalr	1452(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    80001ab4:	00000613          	li	a2,0
    80001ab8:	00a00593          	li	a1,10
    80001abc:	0004851b          	sext.w	a0,s1
    80001ac0:	00003097          	auipc	ra,0x3
    80001ac4:	748080e7          	jalr	1864(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    80001ac8:	00007517          	auipc	a0,0x7
    80001acc:	66850513          	addi	a0,a0,1640 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001ad0:	00003097          	auipc	ra,0x3
    80001ad4:	588080e7          	jalr	1416(ra) # 80005058 <_Z11printStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001ad8:	00000693          	li	a3,0
    80001adc:	f99ff06f          	j	80001a74 <_Z11workerBodyAPv+0x20>
                //busy
            }
            //TCB::yield();
        }
    }
    printString("WorkerBodyA finished\n");
    80001ae0:	00007517          	auipc	a0,0x7
    80001ae4:	5d050513          	addi	a0,a0,1488 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001ae8:	00003097          	auipc	ra,0x3
    80001aec:	570080e7          	jalr	1392(ra) # 80005058 <_Z11printStringPKc>
}
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_Z11workerBodyBPv>:

void workerBodyB(void*){
    80001b04:	fe010113          	addi	sp,sp,-32
    80001b08:	00113c23          	sd	ra,24(sp)
    80001b0c:	00813823          	sd	s0,16(sp)
    80001b10:	00913423          	sd	s1,8(sp)
    80001b14:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<16;i++){
    80001b18:	00000493          	li	s1,0
    80001b1c:	0300006f          	j	80001b4c <_Z11workerBodyBPv+0x48>
        printString("B: i=");
        printInt(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
    80001b20:	00168693          	addi	a3,a3,1
    80001b24:	000027b7          	lui	a5,0x2
    80001b28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001b2c:	00d7ee63          	bltu	a5,a3,80001b48 <_Z11workerBodyBPv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001b30:	00000713          	li	a4,0
    80001b34:	000077b7          	lui	a5,0x7
    80001b38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001b3c:	fee7e2e3          	bltu	a5,a4,80001b20 <_Z11workerBodyBPv+0x1c>
    80001b40:	00170713          	addi	a4,a4,1
    80001b44:	ff1ff06f          	j	80001b34 <_Z11workerBodyBPv+0x30>
    for(uint64 i=0;i<16;i++){
    80001b48:	00148493          	addi	s1,s1,1
    80001b4c:	00f00793          	li	a5,15
    80001b50:	0497e063          	bltu	a5,s1,80001b90 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    80001b54:	00007517          	auipc	a0,0x7
    80001b58:	57450513          	addi	a0,a0,1396 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001b5c:	00003097          	auipc	ra,0x3
    80001b60:	4fc080e7          	jalr	1276(ra) # 80005058 <_Z11printStringPKc>
        printInt(i);
    80001b64:	00000613          	li	a2,0
    80001b68:	00a00593          	li	a1,10
    80001b6c:	0004851b          	sext.w	a0,s1
    80001b70:	00003097          	auipc	ra,0x3
    80001b74:	698080e7          	jalr	1688(ra) # 80005208 <_Z8printIntiii>
        printString("\n");
    80001b78:	00007517          	auipc	a0,0x7
    80001b7c:	5b850513          	addi	a0,a0,1464 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001b80:	00003097          	auipc	ra,0x3
    80001b84:	4d8080e7          	jalr	1240(ra) # 80005058 <_Z11printStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001b88:	00000693          	li	a3,0
    80001b8c:	f99ff06f          	j	80001b24 <_Z11workerBodyBPv+0x20>
            }
        }
    }
    printString("WorkerBodyB finished\n");
    80001b90:	00007517          	auipc	a0,0x7
    80001b94:	54050513          	addi	a0,a0,1344 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001b98:	00003097          	auipc	ra,0x3
    80001b9c:	4c0080e7          	jalr	1216(ra) # 80005058 <_Z11printStringPKc>
    80001ba0:	01813083          	ld	ra,24(sp)
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	00813483          	ld	s1,8(sp)
    80001bac:	02010113          	addi	sp,sp,32
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN9Scheduler3putEP3TCB>:
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(TCB *t) {
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00913423          	sd	s1,8(sp)
    80001bc4:	02010413          	addi	s0,sp,32
    80001bc8:	00050493          	mv	s1,a0
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80001bcc:	00100513          	li	a0,1
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	c20080e7          	jalr	-992(ra) # 800027f0 <_ZN15MemoryAllocator5allocEm>
    //Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    newElem->t=t;
    80001bd8:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    80001bdc:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001be0:	0000a797          	auipc	a5,0xa
    80001be4:	9207b783          	ld	a5,-1760(a5) # 8000b500 <_ZN9Scheduler5firstE>
    80001be8:	02078663          	beqz	a5,80001c14 <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001bec:	0000a797          	auipc	a5,0xa
    80001bf0:	91478793          	addi	a5,a5,-1772 # 8000b500 <_ZN9Scheduler5firstE>
    80001bf4:	0087b703          	ld	a4,8(a5)
    80001bf8:	00a73423          	sd	a0,8(a4)
    80001bfc:	00a7b423          	sd	a0,8(a5)
    }
}
    80001c00:	01813083          	ld	ra,24(sp)
    80001c04:	01013403          	ld	s0,16(sp)
    80001c08:	00813483          	ld	s1,8(sp)
    80001c0c:	02010113          	addi	sp,sp,32
    80001c10:	00008067          	ret
        first=last=newElem;
    80001c14:	0000a797          	auipc	a5,0xa
    80001c18:	8ec78793          	addi	a5,a5,-1812 # 8000b500 <_ZN9Scheduler5firstE>
    80001c1c:	00a7b423          	sd	a0,8(a5)
    80001c20:	00a7b023          	sd	a0,0(a5)
    80001c24:	fddff06f          	j	80001c00 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001c28 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    80001c28:	fe010113          	addi	sp,sp,-32
    80001c2c:	00113c23          	sd	ra,24(sp)
    80001c30:	00813823          	sd	s0,16(sp)
    80001c34:	00913423          	sd	s1,8(sp)
    80001c38:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    80001c3c:	0000a517          	auipc	a0,0xa
    80001c40:	8c453503          	ld	a0,-1852(a0) # 8000b500 <_ZN9Scheduler5firstE>
    80001c44:	04050663          	beqz	a0,80001c90 <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    TCB* t=elem->t;
    80001c48:	00053483          	ld	s1,0(a0)

    MemoryAllocator::free(elem);
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	c78080e7          	jalr	-904(ra) # 800028c4 <_ZN15MemoryAllocator4freeEPv>
    //mem_free(elem);

    first=first->next;
    80001c54:	0000a717          	auipc	a4,0xa
    80001c58:	8ac70713          	addi	a4,a4,-1876 # 8000b500 <_ZN9Scheduler5firstE>
    80001c5c:	00073783          	ld	a5,0(a4)
    80001c60:	0087b783          	ld	a5,8(a5)
    80001c64:	00f73023          	sd	a5,0(a4)
    if(first==nullptr)last=nullptr;
    80001c68:	00078e63          	beqz	a5,80001c84 <_ZN9Scheduler3getEv+0x5c>

    return t;
}
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	02010113          	addi	sp,sp,32
    80001c80:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001c84:	0000a797          	auipc	a5,0xa
    80001c88:	8807b223          	sd	zero,-1916(a5) # 8000b508 <_ZN9Scheduler4lastE>
    80001c8c:	fe1ff06f          	j	80001c6c <_ZN9Scheduler3getEv+0x44>
    if(first==nullptr)return nullptr;
    80001c90:	00050493          	mv	s1,a0
    80001c94:	fd9ff06f          	j	80001c6c <_ZN9Scheduler3getEv+0x44>

0000000080001c98 <_Z10idleThreadPv>:
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

extern void userMain();

void idleThread(void *p) {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    while(true){ thread_dispatch(); }
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	990080e7          	jalr	-1648(ra) # 80001638 <_Z15thread_dispatchv>
    80001cb0:	ff9ff06f          	j	80001ca8 <_Z10idleThreadPv+0x10>

0000000080001cb4 <_Z15userMainWrapperPv>:
}
void userMainWrapper(void*){
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    userMain();
    80001cc4:	00004097          	auipc	ra,0x4
    80001cc8:	a5c080e7          	jalr	-1444(ra) # 80005720 <_Z8userMainv>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <main>:

int main(){
    80001cdc:	fc010113          	addi	sp,sp,-64
    80001ce0:	02113c23          	sd	ra,56(sp)
    80001ce4:	02813823          	sd	s0,48(sp)
    80001ce8:	02913423          	sd	s1,40(sp)
    80001cec:	04010413          	addi	s0,sp,64

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	d40080e7          	jalr	-704(ra) # 80002a30 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    80001cf8:	00009797          	auipc	a5,0x9
    80001cfc:	7907b783          	ld	a5,1936(a5) # 8000b488 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d00:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001d04:	10579073          	csrw	stvec,a5
    printString("Finished\n");*/




    TCB::newThrUserMode=false;
    80001d08:	00009497          	auipc	s1,0x9
    80001d0c:	7984b483          	ld	s1,1944(s1) # 8000b4a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d10:	00048023          	sb	zero,0(s1)
    TCB* handleMain;
    thread_create(&handleMain, nullptr, nullptr);
    80001d14:	00000613          	li	a2,0
    80001d18:	00000593          	li	a1,0
    80001d1c:	fd840513          	addi	a0,s0,-40
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	814080e7          	jalr	-2028(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=handleMain;
    80001d28:	00009797          	auipc	a5,0x9
    80001d2c:	7807b783          	ld	a5,1920(a5) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d30:	fd843703          	ld	a4,-40(s0)
    80001d34:	00e7b023          	sd	a4,0(a5)

    TCB* handleIdle;
    thread_create(&handleIdle, idleThread, nullptr);
    80001d38:	00000613          	li	a2,0
    80001d3c:	00000597          	auipc	a1,0x0
    80001d40:	f5c58593          	addi	a1,a1,-164 # 80001c98 <_Z10idleThreadPv>
    80001d44:	fd040513          	addi	a0,s0,-48
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	7ec080e7          	jalr	2028(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>


    TCB::newThrUserMode=true;
    80001d50:	00100793          	li	a5,1
    80001d54:	00f48023          	sb	a5,0(s1)
    TCB* handleUserMain;
    thread_create(&handleUserMain, userMainWrapper, nullptr);
    80001d58:	00000613          	li	a2,0
    80001d5c:	00000597          	auipc	a1,0x0
    80001d60:	f5858593          	addi	a1,a1,-168 # 80001cb4 <_Z15userMainWrapperPv>
    80001d64:	fc840513          	addi	a0,s0,-56
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	7cc080e7          	jalr	1996(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %[sip]"::[sip]"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80001d70:	00200793          	li	a5,2
    80001d74:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while (!handleUserMain->isFinished()){
    80001d78:	fc843503          	ld	a0,-56(s0)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    80001d7c:	03054783          	lbu	a5,48(a0)
    80001d80:	00079863          	bnez	a5,80001d90 <main+0xb4>
        thread_dispatch();
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	8b4080e7          	jalr	-1868(ra) # 80001638 <_Z15thread_dispatchv>
    80001d8c:	fedff06f          	j	80001d78 <main+0x9c>
    }

    delete handleUserMain;
    80001d90:	00050863          	beqz	a0,80001da0 <main+0xc4>
    80001d94:	00053783          	ld	a5,0(a0)
    80001d98:	0087b783          	ld	a5,8(a5)
    80001d9c:	000780e7          	jalr	a5
    delete handleIdle;
    80001da0:	fd043503          	ld	a0,-48(s0)
    80001da4:	00050863          	beqz	a0,80001db4 <main+0xd8>
    80001da8:	00053783          	ld	a5,0(a0)
    80001dac:	0087b783          	ld	a5,8(a5)
    80001db0:	000780e7          	jalr	a5
    delete handleMain;
    80001db4:	fd843503          	ld	a0,-40(s0)
    80001db8:	00050863          	beqz	a0,80001dc8 <main+0xec>
    80001dbc:	00053783          	ld	a5,0(a0)
    80001dc0:	0087b783          	ld	a5,8(a5)
    80001dc4:	000780e7          	jalr	a5

    return 0;
    80001dc8:	00000513          	li	a0,0
    80001dcc:	03813083          	ld	ra,56(sp)
    80001dd0:	03013403          	ld	s0,48(sp)
    80001dd4:	02813483          	ld	s1,40(sp)
    80001dd8:	04010113          	addi	sp,sp,64
    80001ddc:	00008067          	ret

0000000080001de0 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	6c4080e7          	jalr	1732(ra) # 800014b4 <_Z9mem_allocm>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_Znam>:

void *operator new[](uint64 n)
{
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	69c080e7          	jalr	1692(ra) # 800014b4 <_Z9mem_allocm>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00113423          	sd	ra,8(sp)
    80001e38:	00813023          	sd	s0,0(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e40:	fffff097          	auipc	ra,0xfffff
    80001e44:	6b4080e7          	jalr	1716(ra) # 800014f4 <_Z8mem_freePv>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	00813023          	sd	s0,0(sp)
    80001e64:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	68c080e7          	jalr	1676(ra) # 800014f4 <_Z8mem_freePv>
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN6ThreadD1Ev>:

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001e80:	00009797          	auipc	a5,0x9
    80001e84:	3f878793          	addi	a5,a5,1016 # 8000b278 <_ZTV6Thread+0x10>
    80001e88:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001e8c:	00853503          	ld	a0,8(a0)
    80001e90:	02050863          	beqz	a0,80001ec0 <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00113423          	sd	ra,8(sp)
    80001e9c:	00813023          	sd	s0,0(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001ea4:	00053783          	ld	a5,0(a0)
    80001ea8:	0087b783          	ld	a5,8(a5)
    80001eac:	000780e7          	jalr	a5
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00813423          	sd	s0,8(sp)
    80001ecc:	01010413          	addi	s0,sp,16

}
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001edc:	fe010113          	addi	sp,sp,-32
    80001ee0:	00113c23          	sd	ra,24(sp)
    80001ee4:	00813823          	sd	s0,16(sp)
    80001ee8:	00913423          	sd	s1,8(sp)
    80001eec:	02010413          	addi	s0,sp,32
    80001ef0:	00050493          	mv	s1,a0
}
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	f8c080e7          	jalr	-116(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	f30080e7          	jalr	-208(ra) # 80001e30 <_ZdlPv>
    80001f08:	01813083          	ld	ra,24(sp)
    80001f0c:	01013403          	ld	s0,16(sp)
    80001f10:	00813483          	ld	s1,8(sp)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00008067          	ret

0000000080001f1c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
}
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	f04080e7          	jalr	-252(ra) # 80001e30 <_ZdlPv>
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00813423          	sd	s0,8(sp)
    80001f4c:	01010413          	addi	s0,sp,16
    80001f50:	00009797          	auipc	a5,0x9
    80001f54:	32878793          	addi	a5,a5,808 # 8000b278 <_ZTV6Thread+0x10>
    80001f58:	00f53023          	sd	a5,0(a0)
    80001f5c:	00053423          	sd	zero,8(a0)
    80001f60:	00b53823          	sd	a1,16(a0)
    80001f64:	00c53c23          	sd	a2,24(a0)
    80001f68:	00813403          	ld	s0,8(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN6Thread5startEv>:
int Thread::start() {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001f84:	01853603          	ld	a2,24(a0)
    80001f88:	01053583          	ld	a1,16(a0)
    80001f8c:	00850513          	addi	a0,a0,8
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	5a4080e7          	jalr	1444(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	680080e7          	jalr	1664(ra) # 80001638 <_Z15thread_dispatchv>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00009797          	auipc	a5,0x9
    80001fe0:	29c78793          	addi	a5,a5,668 # 8000b278 <_ZTV6Thread+0x10>
    80001fe4:	00f53023          	sd	a5,0(a0)
}
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
}
    80002000:	00813403          	ld	s0,8(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
}
    80002018:	00000513          	li	a0,0
    8000201c:	00813403          	ld	s0,8(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00813423          	sd	s0,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    80002034:	00009797          	auipc	a5,0x9
    80002038:	26c78793          	addi	a5,a5,620 # 8000b2a0 <_ZTV9Semaphore+0x10>
    8000203c:	00f53023          	sd	a5,0(a0)
}
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    return 0;
}
    80002058:	00000513          	li	a0,0
    8000205c:	00813403          	ld	s0,8(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    return 0;
}
    80002074:	00000513          	li	a0,0
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16

}
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000209c:	fe010113          	addi	sp,sp,-32
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	02010413          	addi	s0,sp,32
    800020b0:	00050493          	mv	s1,a0
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	f1c080e7          	jalr	-228(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    800020bc:	00009797          	auipc	a5,0x9
    800020c0:	18c78793          	addi	a5,a5,396 # 8000b248 <_ZTV14PeriodicThread+0x10>
    800020c4:	00f4b023          	sd	a5,0(s1)

}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	02010113          	addi	sp,sp,32
    800020d8:	00008067          	ret

00000000800020dc <_ZN7Console4getcEv>:

char Console::getc() {
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    return 0;
}
    800020e8:	00000513          	li	a0,0
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN7Console4putcEc>:

void Console::putc(char) {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16

}
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16
    80002134:	00813403          	ld	s0,8(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00009797          	auipc	a5,0x9
    80002154:	0f878793          	addi	a5,a5,248 # 8000b248 <_ZTV14PeriodicThread+0x10>
    80002158:	00f53023          	sd	a5,0(a0)
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	d24080e7          	jalr	-732(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN14PeriodicThreadD0Ev>:
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
    80002188:	00050493          	mv	s1,a0
    8000218c:	00009797          	auipc	a5,0x9
    80002190:	0bc78793          	addi	a5,a5,188 # 8000b248 <_ZTV14PeriodicThread+0x10>
    80002194:	00f53023          	sd	a5,0(a0)
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	ce8080e7          	jalr	-792(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	c8c080e7          	jalr	-884(ra) # 80001e30 <_ZdlPv>
    800021ac:	01813083          	ld	ra,24(sp)
    800021b0:	01013403          	ld	s0,16(sp)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret

00000000800021c0 <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"



void Riscv::handleSupervisorTrap(){
    800021c0:	fa010113          	addi	sp,sp,-96
    800021c4:	04113c23          	sd	ra,88(sp)
    800021c8:	04813823          	sd	s0,80(sp)
    800021cc:	04913423          	sd	s1,72(sp)
    800021d0:	05213023          	sd	s2,64(sp)
    800021d4:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800021d8:	142027f3          	csrr	a5,scause
    800021dc:	faf43023          	sd	a5,-96(s0)
    return scause;
    800021e0:	fa043503          	ld	a0,-96(s0)
    uint64 scause=r_scause();

    volatile uint64 a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    800021e4:	05043783          	ld	a5,80(s0)
    800021e8:	fcf43c23          	sd	a5,-40(s0)
    volatile uint64 a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800021ec:	05843783          	ld	a5,88(s0)
    800021f0:	fcf43823          	sd	a5,-48(s0)
    volatile uint64 a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    800021f4:	06043783          	ld	a5,96(s0)
    800021f8:	fcf43423          	sd	a5,-56(s0)
    volatile uint64 a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    800021fc:	06843783          	ld	a5,104(s0)
    80002200:	fcf43023          	sd	a5,-64(s0)
    volatile uint64 a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    80002204:	07043783          	ld	a5,112(s0)
    80002208:	faf43c23          	sd	a5,-72(s0)

    if(scause==0x09UL || scause==0x08UL){
    8000220c:	ff850713          	addi	a4,a0,-8
    80002210:	00100793          	li	a5,1
    80002214:	16e7e063          	bltu	a5,a4,80002374 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002218:	141027f3          	csrr	a5,sepc
    8000221c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002220:	fb043483          	ld	s1,-80(s0)
        //09 iz sist rezima, 08 iz korisnickog
        uint64 sepc=r_sepc()+4;
    80002224:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002228:	100027f3          	csrr	a5,sstatus
    8000222c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002230:	fa843903          	ld	s2,-88(s0)
        uint64 sstatus=r_sstatus();

        if(a0==0x01){
    80002234:	fd843703          	ld	a4,-40(s0)
    80002238:	00100793          	li	a5,1
    8000223c:	06f70063          	beq	a4,a5,8000229c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
            //mem_alloc
            void *ptr=MemoryAllocator::alloc(a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
        }
        else if(a0==0x02){
    80002240:	fd843703          	ld	a4,-40(s0)
    80002244:	00200793          	li	a5,2
    80002248:	08f70263          	beq	a4,a5,800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
            //mem_free
            int stat=MemoryAllocator::free((void*)a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }

        else if(a0==0x11){
    8000224c:	fd843703          	ld	a4,-40(s0)
    80002250:	01100793          	li	a5,17
    80002254:	08f70663          	beq	a4,a5,800022e0 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                *retHandle=handle;
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
            }

        }
        else if(a0==0x12){
    80002258:	fd843703          	ld	a4,-40(s0)
    8000225c:	01200793          	li	a5,18
    80002260:	0af70c63          	beq	a4,a5,80002318 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                TCB::running->setFinished(true);
                TCB::dispatch();
                //delete exited; ovde se nikad ne vraca
            }
        }
        else if(a0==0x13){
    80002264:	fd843703          	ld	a4,-40(s0)
    80002268:	01300793          	li	a5,19
    8000226c:	0ef70063          	beq	a4,a5,8000234c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            //thread_dispatch()
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        else if(a0==0x41){
    80002270:	fd843703          	ld	a4,-40(s0)
    80002274:	04100793          	li	a5,65
    80002278:	0ef70663          	beq	a4,a5,80002364 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            //char getc();
            char c=__getc();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
        }
        else if(a0==0x42){
    8000227c:	fd843703          	ld	a4,-40(s0)
    80002280:	04200793          	li	a5,66
    80002284:	02f71463          	bne	a4,a5,800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            //void putc()

            __putc((char)a1);
    80002288:	fd043503          	ld	a0,-48(s0)
    8000228c:	0ff57513          	andi	a0,a0,255
    80002290:	00006097          	auipc	ra,0x6
    80002294:	0bc080e7          	jalr	188(ra) # 8000834c <__putc>
    80002298:	0140006f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            void *ptr=MemoryAllocator::alloc(a1);
    8000229c:	fd043503          	ld	a0,-48(s0)
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	550080e7          	jalr	1360(ra) # 800027f0 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    800022a8:	04a43823          	sd	a0,80(s0)
}
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800022ac:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800022b0:	14149073          	csrw	sepc,s1
        //print stval
        printInt(scause);
        //while(true);
    }

}
    800022b4:	05813083          	ld	ra,88(sp)
    800022b8:	05013403          	ld	s0,80(sp)
    800022bc:	04813483          	ld	s1,72(sp)
    800022c0:	04013903          	ld	s2,64(sp)
    800022c4:	06010113          	addi	sp,sp,96
    800022c8:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    800022cc:	fd043503          	ld	a0,-48(s0)
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	5f4080e7          	jalr	1524(ra) # 800028c4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800022d8:	04a43823          	sd	a0,80(s0)
    800022dc:	fd1ff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);
    800022e0:	fc843503          	ld	a0,-56(s0)
    800022e4:	fb843583          	ld	a1,-72(s0)
    800022e8:	fc043603          	ld	a2,-64(s0)
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	400080e7          	jalr	1024(ra) # 800026ec <_ZN3TCB12createThreadEPFvPvEPmS0_>
            if(!handle){
    800022f4:	00050c63          	beqz	a0,8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
                TCB** retHandle=(TCB**)a1;
    800022f8:	fd043783          	ld	a5,-48(s0)
                *retHandle=handle;
    800022fc:	00a7b023          	sd	a0,0(a5)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002300:	00000793          	li	a5,0
    80002304:	04f43823          	sd	a5,80(s0)
    80002308:	fa5ff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    8000230c:	fff00793          	li	a5,-1
    80002310:	04f43823          	sd	a5,80(s0)
    80002314:	f99ff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            if(TCB::running->isFinished()){
    80002318:	00009797          	auipc	a5,0x9
    8000231c:	1907b783          	ld	a5,400(a5) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002320:	0007b783          	ld	a5,0(a5)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    80002324:	0307c703          	lbu	a4,48(a5)
    80002328:	00070863          	beqz	a4,80002338 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    8000232c:	fff00793          	li	a5,-1
    80002330:	04f43823          	sd	a5,80(s0)
    80002334:	f79ff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    80002338:	00100713          	li	a4,1
    8000233c:	02e78823          	sb	a4,48(a5)
                TCB::dispatch();
    80002340:	00000097          	auipc	ra,0x0
    80002344:	294080e7          	jalr	660(ra) # 800025d4 <_ZN3TCB8dispatchEv>
    80002348:	f65ff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB::timeSliceCounter=0;
    8000234c:	00009797          	auipc	a5,0x9
    80002350:	1447b783          	ld	a5,324(a5) # 8000b490 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002354:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	27c080e7          	jalr	636(ra) # 800025d4 <_ZN3TCB8dispatchEv>
    80002360:	f4dff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            char c=__getc();
    80002364:	00006097          	auipc	ra,0x6
    80002368:	024080e7          	jalr	36(ra) # 80008388 <__getc>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    8000236c:	04a43823          	sd	a0,80(s0)
    80002370:	f3dff06f          	j	800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        printInt(scause);
    80002374:	00000613          	li	a2,0
    80002378:	00a00593          	li	a1,10
    8000237c:	0005051b          	sext.w	a0,a0
    80002380:	00003097          	auipc	ra,0x3
    80002384:	e88080e7          	jalr	-376(ra) # 80005208 <_Z8printIntiii>
}
    80002388:	f2dff06f          	j	800022b4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

000000008000238c <_ZN5Riscv14timerInterruptEv>:

void Riscv::timerInterrupt() {
    8000238c:	fc010113          	addi	sp,sp,-64
    80002390:	02113c23          	sd	ra,56(sp)
    80002394:	02813823          	sd	s0,48(sp)
    80002398:	02913423          	sd	s1,40(sp)
    8000239c:	03213023          	sd	s2,32(sp)
    800023a0:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800023a4:	142027f3          	csrr	a5,scause
    800023a8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800023ac:	fc843703          	ld	a4,-56(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
    800023b0:	fff00793          	li	a5,-1
    800023b4:	03f79793          	slli	a5,a5,0x3f
    800023b8:	00178793          	addi	a5,a5,1
    800023bc:	00f70e63          	beq	a4,a5,800023d8 <_ZN5Riscv14timerInterruptEv+0x4c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
}
    800023c0:	03813083          	ld	ra,56(sp)
    800023c4:	03013403          	ld	s0,48(sp)
    800023c8:	02813483          	ld	s1,40(sp)
    800023cc:	02013903          	ld	s2,32(sp)
    800023d0:	04010113          	addi	sp,sp,64
    800023d4:	00008067          	ret
        TCB::timeSliceCounter++;
    800023d8:	00009717          	auipc	a4,0x9
    800023dc:	0b873703          	ld	a4,184(a4) # 8000b490 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023e0:	00073783          	ld	a5,0(a4)
    800023e4:	00178793          	addi	a5,a5,1
    800023e8:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    800023ec:	00009717          	auipc	a4,0x9
    800023f0:	0bc73703          	ld	a4,188(a4) # 8000b4a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800023f4:	00073703          	ld	a4,0(a4)
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    800023f8:	02873703          	ld	a4,40(a4)
    800023fc:	00e7f863          	bgeu	a5,a4,8000240c <_ZN5Riscv14timerInterruptEv+0x80>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    80002400:	00200793          	li	a5,2
    80002404:	1447b073          	csrc	sip,a5
}
    80002408:	fb9ff06f          	j	800023c0 <_ZN5Riscv14timerInterruptEv+0x34>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    8000240c:	141027f3          	csrr	a5,sepc
    80002410:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002414:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002418:	100027f3          	csrr	a5,sstatus
    8000241c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002420:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter=0;
    80002424:	00009797          	auipc	a5,0x9
    80002428:	06c7b783          	ld	a5,108(a5) # 8000b490 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000242c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002430:	00000097          	auipc	ra,0x0
    80002434:	1a4080e7          	jalr	420(ra) # 800025d4 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002438:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    8000243c:	14149073          	csrw	sepc,s1
}
    80002440:	fc1ff06f          	j	80002400 <_ZN5Riscv14timerInterruptEv+0x74>

0000000080002444 <_ZN5Riscv17hardwareInterruptEv>:

void Riscv::hardwareInterrupt() {
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002454:	142027f3          	csrr	a5,scause
    80002458:	fef43423          	sd	a5,-24(s0)
    return scause;
    8000245c:	fe843703          	ld	a4,-24(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80002460:	fff00793          	li	a5,-1
    80002464:	03f79793          	slli	a5,a5,0x3f
    80002468:	00978793          	addi	a5,a5,9
    8000246c:	00f70a63          	beq	a4,a5,80002480 <_ZN5Riscv17hardwareInterruptEv+0x3c>
        //prekid konzola
        console_handler();
    }
}
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	02010113          	addi	sp,sp,32
    8000247c:	00008067          	ret
        console_handler();
    80002480:	00006097          	auipc	ra,0x6
    80002484:	f40080e7          	jalr	-192(ra) # 800083c0 <console_handler>
}
    80002488:	fe9ff06f          	j	80002470 <_ZN5Riscv17hardwareInterruptEv+0x2c>

000000008000248c <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002498:	02000793          	li	a5,32
    8000249c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(SSTATUS_SPIE);
    //Riscv::mc_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
    800024a0:	00009797          	auipc	a5,0x9
    800024a4:	0007b783          	ld	a5,0(a5) # 8000b4a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024a8:	0007c783          	lbu	a5,0(a5)
    800024ac:	02078063          	beqz	a5,800024cc <_ZN5Riscv10popSppSpieEv+0x40>
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800024b0:	10000793          	li	a5,256
    800024b4:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    800024b8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800024bc:	10200073          	sret
    800024c0:	00813403          	ld	s0,8(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    800024cc:	10000793          	li	a5,256
    800024d0:	1007a073          	csrs	sstatus,a5
}
    800024d4:	fe5ff06f          	j	800024b8 <_ZN5Riscv10popSppSpieEv+0x2c>

00000000800024d8 <_ZN3TCBD1Ev>:
                                     arg(arg)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    800024d8:	00009797          	auipc	a5,0x9
    800024dc:	de878793          	addi	a5,a5,-536 # 8000b2c0 <_ZTV3TCB+0x10>
    800024e0:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    800024e4:	01053503          	ld	a0,16(a0)
    800024e8:	02050663          	beqz	a0,80002514 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00113423          	sd	ra,8(sp)
    800024f4:	00813023          	sd	s0,0(sp)
    800024f8:	01010413          	addi	s0,sp,16
    delete[] stack;
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	95c080e7          	jalr	-1700(ra) # 80001e58 <_ZdaPv>
}
    80002504:	00813083          	ld	ra,8(sp)
    80002508:	00013403          	ld	s0,0(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret
    80002514:	00008067          	ret

0000000080002518 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002518:	fe010113          	addi	sp,sp,-32
    8000251c:	00113c23          	sd	ra,24(sp)
    80002520:	00813823          	sd	s0,16(sp)
    80002524:	00913423          	sd	s1,8(sp)
    80002528:	02010413          	addi	s0,sp,32
    8000252c:	00050493          	mv	s1,a0
}
    80002530:	00000097          	auipc	ra,0x0
    80002534:	fa8080e7          	jalr	-88(ra) # 800024d8 <_ZN3TCBD1Ev>
    80002538:	00048513          	mv	a0,s1
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	8f4080e7          	jalr	-1804(ra) # 80001e30 <_ZdlPv>
    80002544:	01813083          	ld	ra,24(sp)
    80002548:	01013403          	ld	s0,16(sp)
    8000254c:	00813483          	ld	s1,8(sp)
    80002550:	02010113          	addi	sp,sp,32
    80002554:	00008067          	ret

0000000080002558 <_ZN3TCB13threadWrapperEv>:
    //delete running niti mozda ovde
    return 0;
}*/


void TCB::threadWrapper() {
    80002558:	fe010113          	addi	sp,sp,-32
    8000255c:	00113c23          	sd	ra,24(sp)
    80002560:	00813823          	sd	s0,16(sp)
    80002564:	00913423          	sd	s1,8(sp)
    80002568:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	f20080e7          	jalr	-224(ra) # 8000248c <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002574:	00009497          	auipc	s1,0x9
    80002578:	f9c48493          	addi	s1,s1,-100 # 8000b510 <_ZN3TCB7runningE>
    8000257c:	0004b783          	ld	a5,0(s1)
    80002580:	0087b703          	ld	a4,8(a5)
    80002584:	0387b503          	ld	a0,56(a5)
    80002588:	000700e7          	jalr	a4
    running->setFinished(true);
    8000258c:	0004b783          	ld	a5,0(s1)
        TCB::finished = finished;
    80002590:	00100713          	li	a4,1
    80002594:	02e78823          	sb	a4,48(a5)
    //TCB::yield();
    thread_dispatch();
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	0a0080e7          	jalr	160(ra) # 80001638 <_Z15thread_dispatchv>
}
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	01013403          	ld	s0,16(sp)
    800025a8:	00813483          	ld	s1,8(sp)
    800025ac:	02010113          	addi	sp,sp,32
    800025b0:	00008067          	ret

00000000800025b4 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00813423          	sd	s0,8(sp)
    800025bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800025c0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800025c4:	00000073          	ecall
}
    800025c8:	00813403          	ld	s0,8(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	02010413          	addi	s0,sp,32
    TCB* old=running;
    800025e8:	00009497          	auipc	s1,0x9
    800025ec:	f284b483          	ld	s1,-216(s1) # 8000b510 <_ZN3TCB7runningE>
        return finished;
    800025f0:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    800025f4:	02078c63          	beqz	a5,8000262c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	630080e7          	jalr	1584(ra) # 80001c28 <_ZN9Scheduler3getEv>
    80002600:	00009797          	auipc	a5,0x9
    80002604:	f0a7b823          	sd	a0,-240(a5) # 8000b510 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002608:	01850593          	addi	a1,a0,24
    8000260c:	01848513          	addi	a0,s1,24
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	e38080e7          	jalr	-456(ra) # 80001448 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret
        Scheduler::put(old);
    8000262c:	00048513          	mv	a0,s1
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	584080e7          	jalr	1412(ra) # 80001bb4 <_ZN9Scheduler3putEP3TCB>
    80002638:	fc1ff06f          	j	800025f8 <_ZN3TCB8dispatchEv+0x24>

000000008000263c <_ZN3TCBC1EPFvPvEPmS0_m>:
                                     arg(arg)
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	c8478793          	addi	a5,a5,-892 # 8000b2c0 <_ZTV3TCB+0x10>
    80002644:	00f53023          	sd	a5,0(a0)
    80002648:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    8000264c:	04058e63          	beqz	a1,800026a8 <_ZN3TCBC1EPFvPvEPmS0_m+0x6c>
                                     arg(arg)
    80002650:	00c53823          	sd	a2,16(a0)
    80002654:	00000797          	auipc	a5,0x0
    80002658:	f0478793          	addi	a5,a5,-252 # 80002558 <_ZN3TCB13threadWrapperEv>
    8000265c:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    80002660:	04060863          	beqz	a2,800026b0 <_ZN3TCBC1EPFvPvEPmS0_m+0x74>
    80002664:	000087b7          	lui	a5,0x8
    80002668:	00f60633          	add	a2,a2,a5
                                     arg(arg)
    8000266c:	02c53023          	sd	a2,32(a0)
    80002670:	02e53423          	sd	a4,40(a0)
    80002674:	02050823          	sb	zero,48(a0)
    80002678:	02d53c23          	sd	a3,56(a0)
        if(body!=nullptr) Scheduler::put(this);
    8000267c:	02058e63          	beqz	a1,800026b8 <_ZN3TCBC1EPFvPvEPmS0_m+0x7c>
TCB::TCB(TCB::Body body, uint64* stack, void* arg, uint64 timeSlice): body(body),
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	524080e7          	jalr	1316(ra) # 80001bb4 <_ZN9Scheduler3putEP3TCB>
    }
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800026a8:	00000613          	li	a2,0
    800026ac:	fa5ff06f          	j	80002650 <_ZN3TCBC1EPFvPvEPmS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800026b0:	00000613          	li	a2,0
    800026b4:	fb9ff06f          	j	8000266c <_ZN3TCBC1EPFvPvEPmS0_m+0x30>
    800026b8:	00008067          	ret

00000000800026bc <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800026cc:	03f50513          	addi	a0,a0,63
    800026d0:	00655513          	srli	a0,a0,0x6
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	11c080e7          	jalr	284(ra) # 800027f0 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    800026dc:	00813083          	ld	ra,8(sp)
    800026e0:	00013403          	ld	s0,0(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::createThread(TCB::Body body, uint64* stack, void* arg) {
    800026ec:	fd010113          	addi	sp,sp,-48
    800026f0:	02113423          	sd	ra,40(sp)
    800026f4:	02813023          	sd	s0,32(sp)
    800026f8:	00913c23          	sd	s1,24(sp)
    800026fc:	01213823          	sd	s2,16(sp)
    80002700:	01313423          	sd	s3,8(sp)
    80002704:	01413023          	sd	s4,0(sp)
    80002708:	03010413          	addi	s0,sp,48
    8000270c:	00050913          	mv	s2,a0
    80002710:	00058993          	mv	s3,a1
    80002714:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    80002718:	04000513          	li	a0,64
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	fa0080e7          	jalr	-96(ra) # 800026bc <_ZN3TCBnwEm>
    80002724:	00050493          	mv	s1,a0
    80002728:	00200713          	li	a4,2
    8000272c:	000a0693          	mv	a3,s4
    80002730:	00098613          	mv	a2,s3
    80002734:	00090593          	mv	a1,s2
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	f04080e7          	jalr	-252(ra) # 8000263c <_ZN3TCBC1EPFvPvEPmS0_m>
    80002740:	0200006f          	j	80002760 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x74>
    80002744:	00050913          	mv	s2,a0
    80002748:	00048513          	mv	a0,s1
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	6e4080e7          	jalr	1764(ra) # 80001e30 <_ZdlPv>
    80002754:	00090513          	mv	a0,s2
    80002758:	0000a097          	auipc	ra,0xa
    8000275c:	ef0080e7          	jalr	-272(ra) # 8000c648 <_Unwind_Resume>
}
    80002760:	00048513          	mv	a0,s1
    80002764:	02813083          	ld	ra,40(sp)
    80002768:	02013403          	ld	s0,32(sp)
    8000276c:	01813483          	ld	s1,24(sp)
    80002770:	01013903          	ld	s2,16(sp)
    80002774:	00813983          	ld	s3,8(sp)
    80002778:	00013a03          	ld	s4,0(sp)
    8000277c:	03010113          	addi	sp,sp,48
    80002780:	00008067          	ret

0000000080002784 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002794:	00000097          	auipc	ra,0x0
    80002798:	130080e7          	jalr	304(ra) # 800028c4 <_ZN15MemoryAllocator4freeEPv>
}
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00100793          	li	a5,1
    800027bc:	00f50863          	beq	a0,a5,800027cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800027c0:	00813403          	ld	s0,8(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret
    800027cc:	000107b7          	lui	a5,0x10
    800027d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800027d4:	fef596e3          	bne	a1,a5,800027c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    800027d8:	00009797          	auipc	a5,0x9
    800027dc:	ca87b783          	ld	a5,-856(a5) # 8000b480 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027e0:	0007b783          	ld	a5,0(a5)
    800027e4:	00009717          	auipc	a4,0x9
    800027e8:	d4f73223          	sd	a5,-700(a4) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    800027ec:	fd5ff06f          	j	800027c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800027f0 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    800027fc:	0a050c63          	beqz	a0,800028b4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002800:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002804:	00009797          	auipc	a5,0x9
    80002808:	d247b783          	ld	a5,-732(a5) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    8000280c:	00000613          	li	a2,0
    while(free){
    80002810:	00078e63          	beqz	a5,8000282c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002814:	0007b703          	ld	a4,0(a5)
    80002818:	fff70713          	addi	a4,a4,-1
    8000281c:	00d77863          	bgeu	a4,a3,8000282c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002820:	00078613          	mv	a2,a5
        free=free->next;
    80002824:	0087b783          	ld	a5,8(a5)
    while(free){
    80002828:	fe9ff06f          	j	80002810 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000282c:	08078863          	beqz	a5,800028bc <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002830:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002834:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002838:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000283c:	fff70593          	addi	a1,a4,-1
    80002840:	04d58063          	beq	a1,a3,80002880 <_ZN15MemoryAllocator5allocEm+0x90>
    80002844:	ffe70593          	addi	a1,a4,-2
    80002848:	02d58c63          	beq	a1,a3,80002880 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000284c:	40d70733          	sub	a4,a4,a3
    80002850:	fff70713          	addi	a4,a4,-1
    80002854:	00100593          	li	a1,1
    80002858:	02e5fa63          	bgeu	a1,a4,8000288c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000285c:	00168693          	addi	a3,a3,1
    80002860:	00669593          	slli	a1,a3,0x6
    80002864:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002868:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    8000286c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002870:	02060c63          	beqz	a2,800028a8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80002874:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002878:	00d7b023          	sd	a3,0(a5)
    8000287c:	0100006f          	j	8000288c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002880:	00060e63          	beqz	a2,8000289c <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80002884:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002888:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    8000288c:	0007b423          	sd	zero,8(a5)
}
    80002890:	00813403          	ld	s0,8(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret
            firstFreeSeg=free->next;
    8000289c:	00009697          	auipc	a3,0x9
    800028a0:	c906b623          	sd	a6,-884(a3) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    800028a4:	fe5ff06f          	j	80002888 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    800028a8:	00009717          	auipc	a4,0x9
    800028ac:	c8b73023          	sd	a1,-896(a4) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    800028b0:	fc9ff06f          	j	80002878 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    800028b4:	00000513          	li	a0,0
    800028b8:	fd9ff06f          	j	80002890 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    800028bc:	00078513          	mv	a0,a5
    800028c0:	fd1ff06f          	j	80002890 <_ZN15MemoryAllocator5allocEm+0xa0>

00000000800028c4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00813423          	sd	s0,8(sp)
    800028cc:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    800028d0:	14050c63          	beqz	a0,80002a28 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    800028d4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    800028d8:	00009797          	auipc	a5,0x9
    800028dc:	c507b783          	ld	a5,-944(a5) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    800028e0:	02078a63          	beqz	a5,80002914 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    800028e4:	06f77863          	bgeu	a4,a5,80002954 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    800028e8:	fc053603          	ld	a2,-64(a0)
    800028ec:	00661693          	slli	a3,a2,0x6
    800028f0:	00d706b3          	add	a3,a4,a3
    800028f4:	02d78a63          	beq	a5,a3,80002928 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    800028f8:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    800028fc:	00009797          	auipc	a5,0x9
    80002900:	c2e7b623          	sd	a4,-980(a5) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002904:	00000513          	li	a0,0
}
    80002908:	00813403          	ld	s0,8(sp)
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00008067          	ret
        freeFromAddr->next=nullptr;
    80002914:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	c0e7b823          	sd	a4,-1008(a5) # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002920:	00000513          	li	a0,0
    80002924:	fe5ff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002928:	0007b783          	ld	a5,0(a5)
    8000292c:	00f60633          	add	a2,a2,a5
    80002930:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80002934:	00009797          	auipc	a5,0x9
    80002938:	bf478793          	addi	a5,a5,-1036 # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    8000293c:	0007b683          	ld	a3,0(a5)
    80002940:	0086b683          	ld	a3,8(a3)
    80002944:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002948:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000294c:	00000513          	li	a0,0
    80002950:	fb9ff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80002954:	00000693          	li	a3,0
    while(nextFree){
    80002958:	00078a63          	beqz	a5,8000296c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000295c:	00f76863          	bltu	a4,a5,8000296c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80002960:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80002964:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80002968:	ff1ff06f          	j	80002958 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000296c:	02078a63          	beqz	a5,800029a0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002970:	0006b583          	ld	a1,0(a3)
    80002974:	00659613          	slli	a2,a1,0x6
    80002978:	00c68633          	add	a2,a3,a2
    8000297c:	04e60c63          	beq	a2,a4,800029d4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80002980:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002984:	fc053683          	ld	a3,-64(a0)
    80002988:	00669613          	slli	a2,a3,0x6
    8000298c:	00c70733          	add	a4,a4,a2
    80002990:	06f70e63          	beq	a4,a5,80002a0c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80002994:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80002998:	00000513          	li	a0,0
    8000299c:	f6dff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800029a0:	0006b603          	ld	a2,0(a3)
    800029a4:	00661793          	slli	a5,a2,0x6
    800029a8:	00f687b3          	add	a5,a3,a5
    800029ac:	00e78a63          	beq	a5,a4,800029c0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800029b0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800029b4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800029b8:	00000513          	li	a0,0
    800029bc:	f4dff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800029c0:	fc053783          	ld	a5,-64(a0)
    800029c4:	00f60633          	add	a2,a2,a5
    800029c8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800029cc:	00000513          	li	a0,0
    800029d0:	f39ff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800029d4:	fc053703          	ld	a4,-64(a0)
    800029d8:	00e585b3          	add	a1,a1,a4
    800029dc:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800029e0:	00659713          	slli	a4,a1,0x6
    800029e4:	00e68733          	add	a4,a3,a4
    800029e8:	00f70663          	beq	a4,a5,800029f4 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    800029ec:	00000513          	li	a0,0
    800029f0:	f19ff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    800029f4:	0007b703          	ld	a4,0(a5)
    800029f8:	00e585b3          	add	a1,a1,a4
    800029fc:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80002a00:	0087b783          	ld	a5,8(a5)
    80002a04:	00f6b423          	sd	a5,8(a3)
    80002a08:	fe5ff06f          	j	800029ec <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    80002a0c:	0007b703          	ld	a4,0(a5)
    80002a10:	00e686b3          	add	a3,a3,a4
    80002a14:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80002a18:	0087b783          	ld	a5,8(a5)
    80002a1c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80002a20:	00000513          	li	a0,0
    80002a24:	ee5ff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002a28:	fff00513          	li	a0,-1
    80002a2c:	eddff06f          	j	80002908 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002a30 <_ZN15MemoryAllocator10initializeEv>:
{
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00813423          	sd	s0,8(sp)
    80002a38:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002a3c:	00009797          	auipc	a5,0x9
    80002a40:	a447b783          	ld	a5,-1468(a5) # 8000b480 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a44:	0007b703          	ld	a4,0(a5)
    80002a48:	00009697          	auipc	a3,0x9
    80002a4c:	ae068693          	addi	a3,a3,-1312 # 8000b528 <_ZN15MemoryAllocator12firstFreeSegE>
    80002a50:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002a54:	00009797          	auipc	a5,0x9
    80002a58:	a5c7b783          	ld	a5,-1444(a5) # 8000b4b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a5c:	0007b783          	ld	a5,0(a5)
    80002a60:	40e787b3          	sub	a5,a5,a4
    80002a64:	0067d793          	srli	a5,a5,0x6
    80002a68:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80002a6c:	0006b783          	ld	a5,0(a3)
    80002a70:	0007b423          	sd	zero,8(a5)
    80002a74:	00813403          	ld	s0,8(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00113423          	sd	ra,8(sp)
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    80002a90:	000105b7          	lui	a1,0x10
    80002a94:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a98:	00100513          	li	a0,1
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	d10080e7          	jalr	-752(ra) # 800027ac <_Z41__static_initialization_and_destruction_0ii>
    80002aa4:	00813083          	ld	ra,8(sp)
    80002aa8:	00013403          	ld	s0,0(sp)
    80002aac:	01010113          	addi	sp,sp,16
    80002ab0:	00008067          	ret

0000000080002ab4 <_Z9prtStringPKc>:
#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/riscv.hpp"


void prtString(char const *string){
    80002ab4:	fd010113          	addi	sp,sp,-48
    80002ab8:	02113423          	sd	ra,40(sp)
    80002abc:	02813023          	sd	s0,32(sp)
    80002ac0:	00913c23          	sd	s1,24(sp)
    80002ac4:	01213823          	sd	s2,16(sp)
    80002ac8:	03010413          	addi	s0,sp,48
    80002acc:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002ad0:	100027f3          	csrr	a5,sstatus
    80002ad4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002ad8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002adc:	00200793          	li	a5,2
    80002ae0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus=Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string!='\0'){
    80002ae4:	0004c503          	lbu	a0,0(s1)
    80002ae8:	00050a63          	beqz	a0,80002afc <_Z9prtStringPKc+0x48>
        __putc(*string);
    80002aec:	00006097          	auipc	ra,0x6
    80002af0:	860080e7          	jalr	-1952(ra) # 8000834c <__putc>
        string++;
    80002af4:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002af8:	fedff06f          	j	80002ae4 <_Z9prtStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002afc:	0009091b          	sext.w	s2,s2
    80002b00:	00297913          	andi	s2,s2,2
    80002b04:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002b08:	10092073          	csrs	sstatus,s2
}
    80002b0c:	02813083          	ld	ra,40(sp)
    80002b10:	02013403          	ld	s0,32(sp)
    80002b14:	01813483          	ld	s1,24(sp)
    80002b18:	01013903          	ld	s2,16(sp)
    80002b1c:	03010113          	addi	sp,sp,48
    80002b20:	00008067          	ret

0000000080002b24 <_Z6prtIntm>:
void prtInt(uint64 integer){
    80002b24:	fc010113          	addi	sp,sp,-64
    80002b28:	02113c23          	sd	ra,56(sp)
    80002b2c:	02813823          	sd	s0,48(sp)
    80002b30:	02913423          	sd	s1,40(sp)
    80002b34:	03213023          	sd	s2,32(sp)
    80002b38:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002b3c:	100027f3          	csrr	a5,sstatus
    80002b40:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b44:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002b48:	00200793          	li	a5,2
    80002b4c:	1007b073          	csrc	sstatus,a5
    if(integer<0){
        neg=1;
        x=-integer;
    }else
    {
        x=integer;
    80002b50:	0005051b          	sext.w	a0,a0
    }
    i=0;
    80002b54:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    80002b58:	00a00613          	li	a2,10
    80002b5c:	02c5773b          	remuw	a4,a0,a2
    80002b60:	02071693          	slli	a3,a4,0x20
    80002b64:	0206d693          	srli	a3,a3,0x20
    80002b68:	00006717          	auipc	a4,0x6
    80002b6c:	58070713          	addi	a4,a4,1408 # 800090e8 <_ZZ6prtIntmE6digits>
    80002b70:	00d70733          	add	a4,a4,a3
    80002b74:	00074703          	lbu	a4,0(a4)
    80002b78:	fe040693          	addi	a3,s0,-32
    80002b7c:	009687b3          	add	a5,a3,s1
    80002b80:	0014849b          	addiw	s1,s1,1
    80002b84:	fee78823          	sb	a4,-16(a5)

    }while((x/=10)!=0);
    80002b88:	0005071b          	sext.w	a4,a0
    80002b8c:	02c5553b          	divuw	a0,a0,a2
    80002b90:	00900793          	li	a5,9
    80002b94:	fce7e2e3          	bltu	a5,a4,80002b58 <_Z6prtIntm+0x34>
    if(neg){
        buf[i++]='-';
    }
    while(--i>=0)
    80002b98:	fff4849b          	addiw	s1,s1,-1
    80002b9c:	0004ce63          	bltz	s1,80002bb8 <_Z6prtIntm+0x94>
        __putc(buf[i]);
    80002ba0:	fe040793          	addi	a5,s0,-32
    80002ba4:	009787b3          	add	a5,a5,s1
    80002ba8:	ff07c503          	lbu	a0,-16(a5)
    80002bac:	00005097          	auipc	ra,0x5
    80002bb0:	7a0080e7          	jalr	1952(ra) # 8000834c <__putc>
    80002bb4:	fe5ff06f          	j	80002b98 <_Z6prtIntm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002bb8:	0009091b          	sext.w	s2,s2
    80002bbc:	00297913          	andi	s2,s2,2
    80002bc0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002bc4:	10092073          	csrs	sstatus,s2
}
    80002bc8:	03813083          	ld	ra,56(sp)
    80002bcc:	03013403          	ld	s0,48(sp)
    80002bd0:	02813483          	ld	s1,40(sp)
    80002bd4:	02013903          	ld	s2,32(sp)
    80002bd8:	04010113          	addi	sp,sp,64
    80002bdc:	00008067          	ret

0000000080002be0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002be0:	fe010113          	addi	sp,sp,-32
    80002be4:	00113c23          	sd	ra,24(sp)
    80002be8:	00813823          	sd	s0,16(sp)
    80002bec:	00913423          	sd	s1,8(sp)
    80002bf0:	01213023          	sd	s2,0(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    80002bf8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002bfc:	00000913          	li	s2,0
    80002c00:	00c0006f          	j	80002c0c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	a34080e7          	jalr	-1484(ra) # 80001638 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	ae0080e7          	jalr	-1312(ra) # 800016ec <_Z4getcv>
    80002c14:	0005059b          	sext.w	a1,a0
    80002c18:	01b00793          	li	a5,27
    80002c1c:	02f58a63          	beq	a1,a5,80002c50 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002c20:	0084b503          	ld	a0,8(s1)
    80002c24:	00003097          	auipc	ra,0x3
    80002c28:	3e0080e7          	jalr	992(ra) # 80006004 <_ZN6Buffer3putEi>
        i++;
    80002c2c:	0019071b          	addiw	a4,s2,1
    80002c30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c34:	0004a683          	lw	a3,0(s1)
    80002c38:	0026979b          	slliw	a5,a3,0x2
    80002c3c:	00d787bb          	addw	a5,a5,a3
    80002c40:	0017979b          	slliw	a5,a5,0x1
    80002c44:	02f767bb          	remw	a5,a4,a5
    80002c48:	fc0792e3          	bnez	a5,80002c0c <_ZL16producerKeyboardPv+0x2c>
    80002c4c:	fb9ff06f          	j	80002c04 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002c50:	00100793          	li	a5,1
    80002c54:	00009717          	auipc	a4,0x9
    80002c58:	8cf72e23          	sw	a5,-1828(a4) # 8000b530 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c5c:	02100593          	li	a1,33
    80002c60:	0084b503          	ld	a0,8(s1)
    80002c64:	00003097          	auipc	ra,0x3
    80002c68:	3a0080e7          	jalr	928(ra) # 80006004 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002c6c:	0104b503          	ld	a0,16(s1)
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	a60080e7          	jalr	-1440(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002c78:	01813083          	ld	ra,24(sp)
    80002c7c:	01013403          	ld	s0,16(sp)
    80002c80:	00813483          	ld	s1,8(sp)
    80002c84:	00013903          	ld	s2,0(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret

0000000080002c90 <_ZL8producerPv>:

static void producer(void *arg) {
    80002c90:	fe010113          	addi	sp,sp,-32
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	00813823          	sd	s0,16(sp)
    80002c9c:	00913423          	sd	s1,8(sp)
    80002ca0:	01213023          	sd	s2,0(sp)
    80002ca4:	02010413          	addi	s0,sp,32
    80002ca8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002cac:	00000913          	li	s2,0
    80002cb0:	00c0006f          	j	80002cbc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	984080e7          	jalr	-1660(ra) # 80001638 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002cbc:	00009797          	auipc	a5,0x9
    80002cc0:	8747a783          	lw	a5,-1932(a5) # 8000b530 <_ZL9threadEnd>
    80002cc4:	02079e63          	bnez	a5,80002d00 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002cc8:	0004a583          	lw	a1,0(s1)
    80002ccc:	0305859b          	addiw	a1,a1,48
    80002cd0:	0084b503          	ld	a0,8(s1)
    80002cd4:	00003097          	auipc	ra,0x3
    80002cd8:	330080e7          	jalr	816(ra) # 80006004 <_ZN6Buffer3putEi>
        i++;
    80002cdc:	0019071b          	addiw	a4,s2,1
    80002ce0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ce4:	0004a683          	lw	a3,0(s1)
    80002ce8:	0026979b          	slliw	a5,a3,0x2
    80002cec:	00d787bb          	addw	a5,a5,a3
    80002cf0:	0017979b          	slliw	a5,a5,0x1
    80002cf4:	02f767bb          	remw	a5,a4,a5
    80002cf8:	fc0792e3          	bnez	a5,80002cbc <_ZL8producerPv+0x2c>
    80002cfc:	fb9ff06f          	j	80002cb4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002d00:	0104b503          	ld	a0,16(s1)
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	9cc080e7          	jalr	-1588(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	00013903          	ld	s2,0(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret

0000000080002d24 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002d24:	fd010113          	addi	sp,sp,-48
    80002d28:	02113423          	sd	ra,40(sp)
    80002d2c:	02813023          	sd	s0,32(sp)
    80002d30:	00913c23          	sd	s1,24(sp)
    80002d34:	01213823          	sd	s2,16(sp)
    80002d38:	01313423          	sd	s3,8(sp)
    80002d3c:	03010413          	addi	s0,sp,48
    80002d40:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d44:	00000993          	li	s3,0
    80002d48:	01c0006f          	j	80002d64 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	8ec080e7          	jalr	-1812(ra) # 80001638 <_Z15thread_dispatchv>
    80002d54:	0500006f          	j	80002da4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002d58:	00a00513          	li	a0,10
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	9cc080e7          	jalr	-1588(ra) # 80001728 <_Z4putcc>
    while (!threadEnd) {
    80002d64:	00008797          	auipc	a5,0x8
    80002d68:	7cc7a783          	lw	a5,1996(a5) # 8000b530 <_ZL9threadEnd>
    80002d6c:	06079063          	bnez	a5,80002dcc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002d70:	00893503          	ld	a0,8(s2)
    80002d74:	00003097          	auipc	ra,0x3
    80002d78:	320080e7          	jalr	800(ra) # 80006094 <_ZN6Buffer3getEv>
        i++;
    80002d7c:	0019849b          	addiw	s1,s3,1
    80002d80:	0004899b          	sext.w	s3,s1
        putc(key);
    80002d84:	0ff57513          	andi	a0,a0,255
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	9a0080e7          	jalr	-1632(ra) # 80001728 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002d90:	00092703          	lw	a4,0(s2)
    80002d94:	0027179b          	slliw	a5,a4,0x2
    80002d98:	00e787bb          	addw	a5,a5,a4
    80002d9c:	02f4e7bb          	remw	a5,s1,a5
    80002da0:	fa0786e3          	beqz	a5,80002d4c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002da4:	05000793          	li	a5,80
    80002da8:	02f4e4bb          	remw	s1,s1,a5
    80002dac:	fa049ce3          	bnez	s1,80002d64 <_ZL8consumerPv+0x40>
    80002db0:	fa9ff06f          	j	80002d58 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002db4:	00893503          	ld	a0,8(s2)
    80002db8:	00003097          	auipc	ra,0x3
    80002dbc:	2dc080e7          	jalr	732(ra) # 80006094 <_ZN6Buffer3getEv>
        putc(key);
    80002dc0:	0ff57513          	andi	a0,a0,255
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	964080e7          	jalr	-1692(ra) # 80001728 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002dcc:	00893503          	ld	a0,8(s2)
    80002dd0:	00003097          	auipc	ra,0x3
    80002dd4:	350080e7          	jalr	848(ra) # 80006120 <_ZN6Buffer6getCntEv>
    80002dd8:	fca04ee3          	bgtz	a0,80002db4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002ddc:	01093503          	ld	a0,16(s2)
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	8f0080e7          	jalr	-1808(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002de8:	02813083          	ld	ra,40(sp)
    80002dec:	02013403          	ld	s0,32(sp)
    80002df0:	01813483          	ld	s1,24(sp)
    80002df4:	01013903          	ld	s2,16(sp)
    80002df8:	00813983          	ld	s3,8(sp)
    80002dfc:	03010113          	addi	sp,sp,48
    80002e00:	00008067          	ret

0000000080002e04 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002e04:	f9010113          	addi	sp,sp,-112
    80002e08:	06113423          	sd	ra,104(sp)
    80002e0c:	06813023          	sd	s0,96(sp)
    80002e10:	04913c23          	sd	s1,88(sp)
    80002e14:	05213823          	sd	s2,80(sp)
    80002e18:	05313423          	sd	s3,72(sp)
    80002e1c:	05413023          	sd	s4,64(sp)
    80002e20:	03513c23          	sd	s5,56(sp)
    80002e24:	03613823          	sd	s6,48(sp)
    80002e28:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002e2c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002e30:	00006517          	auipc	a0,0x6
    80002e34:	2c850513          	addi	a0,a0,712 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	220080e7          	jalr	544(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80002e40:	01e00593          	li	a1,30
    80002e44:	fa040493          	addi	s1,s0,-96
    80002e48:	00048513          	mv	a0,s1
    80002e4c:	00002097          	auipc	ra,0x2
    80002e50:	294080e7          	jalr	660(ra) # 800050e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002e54:	00048513          	mv	a0,s1
    80002e58:	00002097          	auipc	ra,0x2
    80002e5c:	360080e7          	jalr	864(ra) # 800051b8 <_Z11stringToIntPKc>
    80002e60:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002e64:	00006517          	auipc	a0,0x6
    80002e68:	2b450513          	addi	a0,a0,692 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80002e6c:	00002097          	auipc	ra,0x2
    80002e70:	1ec080e7          	jalr	492(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80002e74:	01e00593          	li	a1,30
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00002097          	auipc	ra,0x2
    80002e80:	264080e7          	jalr	612(ra) # 800050e0 <_Z9getStringPci>
    n = stringToInt(input);
    80002e84:	00048513          	mv	a0,s1
    80002e88:	00002097          	auipc	ra,0x2
    80002e8c:	330080e7          	jalr	816(ra) # 800051b8 <_Z11stringToIntPKc>
    80002e90:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002e94:	00006517          	auipc	a0,0x6
    80002e98:	2a450513          	addi	a0,a0,676 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80002e9c:	00002097          	auipc	ra,0x2
    80002ea0:	1bc080e7          	jalr	444(ra) # 80005058 <_Z11printStringPKc>
    80002ea4:	00000613          	li	a2,0
    80002ea8:	00a00593          	li	a1,10
    80002eac:	00090513          	mv	a0,s2
    80002eb0:	00002097          	auipc	ra,0x2
    80002eb4:	358080e7          	jalr	856(ra) # 80005208 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002eb8:	00006517          	auipc	a0,0x6
    80002ebc:	29850513          	addi	a0,a0,664 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80002ec0:	00002097          	auipc	ra,0x2
    80002ec4:	198080e7          	jalr	408(ra) # 80005058 <_Z11printStringPKc>
    80002ec8:	00000613          	li	a2,0
    80002ecc:	00a00593          	li	a1,10
    80002ed0:	00048513          	mv	a0,s1
    80002ed4:	00002097          	auipc	ra,0x2
    80002ed8:	334080e7          	jalr	820(ra) # 80005208 <_Z8printIntiii>
    printString(".\n");
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	28c50513          	addi	a0,a0,652 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	174080e7          	jalr	372(ra) # 80005058 <_Z11printStringPKc>
    if(threadNum > n) {
    80002eec:	0324c463          	blt	s1,s2,80002f14 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002ef0:	03205c63          	blez	s2,80002f28 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002ef4:	03800513          	li	a0,56
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	ee8080e7          	jalr	-280(ra) # 80001de0 <_Znwm>
    80002f00:	00050a13          	mv	s4,a0
    80002f04:	00048593          	mv	a1,s1
    80002f08:	00003097          	auipc	ra,0x3
    80002f0c:	060080e7          	jalr	96(ra) # 80005f68 <_ZN6BufferC1Ei>
    80002f10:	0300006f          	j	80002f40 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002f14:	00006517          	auipc	a0,0x6
    80002f18:	25c50513          	addi	a0,a0,604 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80002f1c:	00002097          	auipc	ra,0x2
    80002f20:	13c080e7          	jalr	316(ra) # 80005058 <_Z11printStringPKc>
        return;
    80002f24:	0140006f          	j	80002f38 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002f28:	00006517          	auipc	a0,0x6
    80002f2c:	28850513          	addi	a0,a0,648 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80002f30:	00002097          	auipc	ra,0x2
    80002f34:	128080e7          	jalr	296(ra) # 80005058 <_Z11printStringPKc>
        return;
    80002f38:	000b0113          	mv	sp,s6
    80002f3c:	1500006f          	j	8000308c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002f40:	00000593          	li	a1,0
    80002f44:	00008517          	auipc	a0,0x8
    80002f48:	5f450513          	addi	a0,a0,1524 # 8000b538 <_ZL10waitForAll>
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	730080e7          	jalr	1840(ra) # 8000167c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002f54:	00391793          	slli	a5,s2,0x3
    80002f58:	00f78793          	addi	a5,a5,15
    80002f5c:	ff07f793          	andi	a5,a5,-16
    80002f60:	40f10133          	sub	sp,sp,a5
    80002f64:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002f68:	0019071b          	addiw	a4,s2,1
    80002f6c:	00171793          	slli	a5,a4,0x1
    80002f70:	00e787b3          	add	a5,a5,a4
    80002f74:	00379793          	slli	a5,a5,0x3
    80002f78:	00f78793          	addi	a5,a5,15
    80002f7c:	ff07f793          	andi	a5,a5,-16
    80002f80:	40f10133          	sub	sp,sp,a5
    80002f84:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002f88:	00191613          	slli	a2,s2,0x1
    80002f8c:	012607b3          	add	a5,a2,s2
    80002f90:	00379793          	slli	a5,a5,0x3
    80002f94:	00f987b3          	add	a5,s3,a5
    80002f98:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002f9c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002fa0:	00008717          	auipc	a4,0x8
    80002fa4:	59873703          	ld	a4,1432(a4) # 8000b538 <_ZL10waitForAll>
    80002fa8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002fac:	00078613          	mv	a2,a5
    80002fb0:	00000597          	auipc	a1,0x0
    80002fb4:	d7458593          	addi	a1,a1,-652 # 80002d24 <_ZL8consumerPv>
    80002fb8:	f9840513          	addi	a0,s0,-104
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	578080e7          	jalr	1400(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002fc4:	00000493          	li	s1,0
    80002fc8:	0280006f          	j	80002ff0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002fcc:	00000597          	auipc	a1,0x0
    80002fd0:	c1458593          	addi	a1,a1,-1004 # 80002be0 <_ZL16producerKeyboardPv>
                      data + i);
    80002fd4:	00179613          	slli	a2,a5,0x1
    80002fd8:	00f60633          	add	a2,a2,a5
    80002fdc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002fe0:	00c98633          	add	a2,s3,a2
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	550080e7          	jalr	1360(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002fec:	0014849b          	addiw	s1,s1,1
    80002ff0:	0524d263          	bge	s1,s2,80003034 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002ff4:	00149793          	slli	a5,s1,0x1
    80002ff8:	009787b3          	add	a5,a5,s1
    80002ffc:	00379793          	slli	a5,a5,0x3
    80003000:	00f987b3          	add	a5,s3,a5
    80003004:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003008:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000300c:	00008717          	auipc	a4,0x8
    80003010:	52c73703          	ld	a4,1324(a4) # 8000b538 <_ZL10waitForAll>
    80003014:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003018:	00048793          	mv	a5,s1
    8000301c:	00349513          	slli	a0,s1,0x3
    80003020:	00aa8533          	add	a0,s5,a0
    80003024:	fa9054e3          	blez	s1,80002fcc <_Z22producerConsumer_C_APIv+0x1c8>
    80003028:	00000597          	auipc	a1,0x0
    8000302c:	c6858593          	addi	a1,a1,-920 # 80002c90 <_ZL8producerPv>
    80003030:	fa5ff06f          	j	80002fd4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	604080e7          	jalr	1540(ra) # 80001638 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000303c:	00000493          	li	s1,0
    80003040:	00994e63          	blt	s2,s1,8000305c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003044:	00008517          	auipc	a0,0x8
    80003048:	4f453503          	ld	a0,1268(a0) # 8000b538 <_ZL10waitForAll>
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	668080e7          	jalr	1640(ra) # 800016b4 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003054:	0014849b          	addiw	s1,s1,1
    80003058:	fe9ff06f          	j	80003040 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000305c:	00008517          	auipc	a0,0x8
    80003060:	4dc53503          	ld	a0,1244(a0) # 8000b538 <_ZL10waitForAll>
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	634080e7          	jalr	1588(ra) # 80001698 <_Z9sem_closeP4_sem>
    delete buffer;
    8000306c:	000a0e63          	beqz	s4,80003088 <_Z22producerConsumer_C_APIv+0x284>
    80003070:	000a0513          	mv	a0,s4
    80003074:	00003097          	auipc	ra,0x3
    80003078:	134080e7          	jalr	308(ra) # 800061a8 <_ZN6BufferD1Ev>
    8000307c:	000a0513          	mv	a0,s4
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	db0080e7          	jalr	-592(ra) # 80001e30 <_ZdlPv>
    80003088:	000b0113          	mv	sp,s6

}
    8000308c:	f9040113          	addi	sp,s0,-112
    80003090:	06813083          	ld	ra,104(sp)
    80003094:	06013403          	ld	s0,96(sp)
    80003098:	05813483          	ld	s1,88(sp)
    8000309c:	05013903          	ld	s2,80(sp)
    800030a0:	04813983          	ld	s3,72(sp)
    800030a4:	04013a03          	ld	s4,64(sp)
    800030a8:	03813a83          	ld	s5,56(sp)
    800030ac:	03013b03          	ld	s6,48(sp)
    800030b0:	07010113          	addi	sp,sp,112
    800030b4:	00008067          	ret
    800030b8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800030bc:	000a0513          	mv	a0,s4
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	d70080e7          	jalr	-656(ra) # 80001e30 <_ZdlPv>
    800030c8:	00048513          	mv	a0,s1
    800030cc:	00009097          	auipc	ra,0x9
    800030d0:	57c080e7          	jalr	1404(ra) # 8000c648 <_Unwind_Resume>

00000000800030d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	01213023          	sd	s2,0(sp)
    800030e8:	02010413          	addi	s0,sp,32
    800030ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800030f0:	00100793          	li	a5,1
    800030f4:	02a7f863          	bgeu	a5,a0,80003124 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800030f8:	00a00793          	li	a5,10
    800030fc:	02f577b3          	remu	a5,a0,a5
    80003100:	02078e63          	beqz	a5,8000313c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003104:	fff48513          	addi	a0,s1,-1
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	fcc080e7          	jalr	-52(ra) # 800030d4 <_ZL9fibonaccim>
    80003110:	00050913          	mv	s2,a0
    80003114:	ffe48513          	addi	a0,s1,-2
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	fbc080e7          	jalr	-68(ra) # 800030d4 <_ZL9fibonaccim>
    80003120:	00a90533          	add	a0,s2,a0
}
    80003124:	01813083          	ld	ra,24(sp)
    80003128:	01013403          	ld	s0,16(sp)
    8000312c:	00813483          	ld	s1,8(sp)
    80003130:	00013903          	ld	s2,0(sp)
    80003134:	02010113          	addi	sp,sp,32
    80003138:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	4fc080e7          	jalr	1276(ra) # 80001638 <_Z15thread_dispatchv>
    80003144:	fc1ff06f          	j	80003104 <_ZL9fibonaccim+0x30>

0000000080003148 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	01213023          	sd	s2,0(sp)
    8000315c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003160:	00000913          	li	s2,0
    80003164:	0380006f          	j	8000319c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	4d0080e7          	jalr	1232(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003170:	00148493          	addi	s1,s1,1
    80003174:	000027b7          	lui	a5,0x2
    80003178:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000317c:	0097ee63          	bltu	a5,s1,80003198 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003180:	00000713          	li	a4,0
    80003184:	000077b7          	lui	a5,0x7
    80003188:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000318c:	fce7eee3          	bltu	a5,a4,80003168 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003190:	00170713          	addi	a4,a4,1
    80003194:	ff1ff06f          	j	80003184 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003198:	00190913          	addi	s2,s2,1
    8000319c:	00900793          	li	a5,9
    800031a0:	0527e063          	bltu	a5,s2,800031e0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800031a4:	00006517          	auipc	a0,0x6
    800031a8:	f0450513          	addi	a0,a0,-252 # 800090a8 <CONSOLE_STATUS+0x98>
    800031ac:	00002097          	auipc	ra,0x2
    800031b0:	eac080e7          	jalr	-340(ra) # 80005058 <_Z11printStringPKc>
    800031b4:	00000613          	li	a2,0
    800031b8:	00a00593          	li	a1,10
    800031bc:	0009051b          	sext.w	a0,s2
    800031c0:	00002097          	auipc	ra,0x2
    800031c4:	048080e7          	jalr	72(ra) # 80005208 <_Z8printIntiii>
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	f6850513          	addi	a0,a0,-152 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	e88080e7          	jalr	-376(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800031d8:	00000493          	li	s1,0
    800031dc:	f99ff06f          	j	80003174 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800031e0:	00006517          	auipc	a0,0x6
    800031e4:	00050513          	mv	a0,a0
    800031e8:	00002097          	auipc	ra,0x2
    800031ec:	e70080e7          	jalr	-400(ra) # 80005058 <_Z11printStringPKc>
    finishedA = true;
    800031f0:	00100793          	li	a5,1
    800031f4:	00008717          	auipc	a4,0x8
    800031f8:	34f70623          	sb	a5,844(a4) # 8000b540 <_ZL9finishedA>
}
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	00813483          	ld	s1,8(sp)
    80003208:	00013903          	ld	s2,0(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret

0000000080003214 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00913423          	sd	s1,8(sp)
    80003224:	01213023          	sd	s2,0(sp)
    80003228:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000322c:	00000913          	li	s2,0
    80003230:	0380006f          	j	80003268 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003234:	ffffe097          	auipc	ra,0xffffe
    80003238:	404080e7          	jalr	1028(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000323c:	00148493          	addi	s1,s1,1
    80003240:	000027b7          	lui	a5,0x2
    80003244:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003248:	0097ee63          	bltu	a5,s1,80003264 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000324c:	00000713          	li	a4,0
    80003250:	000077b7          	lui	a5,0x7
    80003254:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003258:	fce7eee3          	bltu	a5,a4,80003234 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000325c:	00170713          	addi	a4,a4,1
    80003260:	ff1ff06f          	j	80003250 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003264:	00190913          	addi	s2,s2,1
    80003268:	00f00793          	li	a5,15
    8000326c:	0527e063          	bltu	a5,s2,800032ac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003270:	00006517          	auipc	a0,0x6
    80003274:	e5850513          	addi	a0,a0,-424 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	de0080e7          	jalr	-544(ra) # 80005058 <_Z11printStringPKc>
    80003280:	00000613          	li	a2,0
    80003284:	00a00593          	li	a1,10
    80003288:	0009051b          	sext.w	a0,s2
    8000328c:	00002097          	auipc	ra,0x2
    80003290:	f7c080e7          	jalr	-132(ra) # 80005208 <_Z8printIntiii>
    80003294:	00006517          	auipc	a0,0x6
    80003298:	e9c50513          	addi	a0,a0,-356 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	dbc080e7          	jalr	-580(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800032a4:	00000493          	li	s1,0
    800032a8:	f99ff06f          	j	80003240 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800032ac:	00006517          	auipc	a0,0x6
    800032b0:	f4450513          	addi	a0,a0,-188 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	da4080e7          	jalr	-604(ra) # 80005058 <_Z11printStringPKc>
    finishedB = true;
    800032bc:	00100793          	li	a5,1
    800032c0:	00008717          	auipc	a4,0x8
    800032c4:	28f700a3          	sb	a5,641(a4) # 8000b541 <_ZL9finishedB>
    thread_dispatch();
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	370080e7          	jalr	880(ra) # 80001638 <_Z15thread_dispatchv>
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00013903          	ld	s2,0(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00113c23          	sd	ra,24(sp)
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	01213023          	sd	s2,0(sp)
    800032fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003300:	00000493          	li	s1,0
    80003304:	0400006f          	j	80003344 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	d1850513          	addi	a0,a0,-744 # 80009020 <CONSOLE_STATUS+0x10>
    80003310:	00002097          	auipc	ra,0x2
    80003314:	d48080e7          	jalr	-696(ra) # 80005058 <_Z11printStringPKc>
    80003318:	00000613          	li	a2,0
    8000331c:	00a00593          	li	a1,10
    80003320:	00048513          	mv	a0,s1
    80003324:	00002097          	auipc	ra,0x2
    80003328:	ee4080e7          	jalr	-284(ra) # 80005208 <_Z8printIntiii>
    8000332c:	00006517          	auipc	a0,0x6
    80003330:	e0450513          	addi	a0,a0,-508 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003334:	00002097          	auipc	ra,0x2
    80003338:	d24080e7          	jalr	-732(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000333c:	0014849b          	addiw	s1,s1,1
    80003340:	0ff4f493          	andi	s1,s1,255
    80003344:	00200793          	li	a5,2
    80003348:	fc97f0e3          	bgeu	a5,s1,80003308 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000334c:	00006517          	auipc	a0,0x6
    80003350:	eb450513          	addi	a0,a0,-332 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    80003354:	00002097          	auipc	ra,0x2
    80003358:	d04080e7          	jalr	-764(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000335c:	00700313          	li	t1,7
    thread_dispatch();
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	2d8080e7          	jalr	728(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003368:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	ccc50513          	addi	a0,a0,-820 # 80009038 <CONSOLE_STATUS+0x28>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	ce4080e7          	jalr	-796(ra) # 80005058 <_Z11printStringPKc>
    8000337c:	00000613          	li	a2,0
    80003380:	00a00593          	li	a1,10
    80003384:	0009051b          	sext.w	a0,s2
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	e80080e7          	jalr	-384(ra) # 80005208 <_Z8printIntiii>
    80003390:	00006517          	auipc	a0,0x6
    80003394:	da050513          	addi	a0,a0,-608 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003398:	00002097          	auipc	ra,0x2
    8000339c:	cc0080e7          	jalr	-832(ra) # 80005058 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800033a0:	00c00513          	li	a0,12
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	d30080e7          	jalr	-720(ra) # 800030d4 <_ZL9fibonaccim>
    800033ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800033b0:	00006517          	auipc	a0,0x6
    800033b4:	c9050513          	addi	a0,a0,-880 # 80009040 <CONSOLE_STATUS+0x30>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	ca0080e7          	jalr	-864(ra) # 80005058 <_Z11printStringPKc>
    800033c0:	00000613          	li	a2,0
    800033c4:	00a00593          	li	a1,10
    800033c8:	0009051b          	sext.w	a0,s2
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	e3c080e7          	jalr	-452(ra) # 80005208 <_Z8printIntiii>
    800033d4:	00006517          	auipc	a0,0x6
    800033d8:	d5c50513          	addi	a0,a0,-676 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	c7c080e7          	jalr	-900(ra) # 80005058 <_Z11printStringPKc>
    800033e4:	0400006f          	j	80003424 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	c3850513          	addi	a0,a0,-968 # 80009020 <CONSOLE_STATUS+0x10>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	c68080e7          	jalr	-920(ra) # 80005058 <_Z11printStringPKc>
    800033f8:	00000613          	li	a2,0
    800033fc:	00a00593          	li	a1,10
    80003400:	00048513          	mv	a0,s1
    80003404:	00002097          	auipc	ra,0x2
    80003408:	e04080e7          	jalr	-508(ra) # 80005208 <_Z8printIntiii>
    8000340c:	00006517          	auipc	a0,0x6
    80003410:	d2450513          	addi	a0,a0,-732 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003414:	00002097          	auipc	ra,0x2
    80003418:	c44080e7          	jalr	-956(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000341c:	0014849b          	addiw	s1,s1,1
    80003420:	0ff4f493          	andi	s1,s1,255
    80003424:	00500793          	li	a5,5
    80003428:	fc97f0e3          	bgeu	a5,s1,800033e8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000342c:	00006517          	auipc	a0,0x6
    80003430:	db450513          	addi	a0,a0,-588 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80003434:	00002097          	auipc	ra,0x2
    80003438:	c24080e7          	jalr	-988(ra) # 80005058 <_Z11printStringPKc>
    finishedC = true;
    8000343c:	00100793          	li	a5,1
    80003440:	00008717          	auipc	a4,0x8
    80003444:	10f70123          	sb	a5,258(a4) # 8000b542 <_ZL9finishedC>
    thread_dispatch();
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	1f0080e7          	jalr	496(ra) # 80001638 <_Z15thread_dispatchv>
}
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	00813483          	ld	s1,8(sp)
    8000345c:	00013903          	ld	s2,0(sp)
    80003460:	02010113          	addi	sp,sp,32
    80003464:	00008067          	ret

0000000080003468 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	01213023          	sd	s2,0(sp)
    8000347c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003480:	00a00493          	li	s1,10
    80003484:	0400006f          	j	800034c4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003488:	00006517          	auipc	a0,0x6
    8000348c:	be050513          	addi	a0,a0,-1056 # 80009068 <CONSOLE_STATUS+0x58>
    80003490:	00002097          	auipc	ra,0x2
    80003494:	bc8080e7          	jalr	-1080(ra) # 80005058 <_Z11printStringPKc>
    80003498:	00000613          	li	a2,0
    8000349c:	00a00593          	li	a1,10
    800034a0:	00048513          	mv	a0,s1
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	d64080e7          	jalr	-668(ra) # 80005208 <_Z8printIntiii>
    800034ac:	00006517          	auipc	a0,0x6
    800034b0:	c8450513          	addi	a0,a0,-892 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800034b4:	00002097          	auipc	ra,0x2
    800034b8:	ba4080e7          	jalr	-1116(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800034bc:	0014849b          	addiw	s1,s1,1
    800034c0:	0ff4f493          	andi	s1,s1,255
    800034c4:	00c00793          	li	a5,12
    800034c8:	fc97f0e3          	bgeu	a5,s1,80003488 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800034cc:	00006517          	auipc	a0,0x6
    800034d0:	d4450513          	addi	a0,a0,-700 # 80009210 <_ZZ6prtIntmE6digits+0x128>
    800034d4:	00002097          	auipc	ra,0x2
    800034d8:	b84080e7          	jalr	-1148(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800034dc:	00500313          	li	t1,5
    thread_dispatch();
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	158080e7          	jalr	344(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800034e8:	01000513          	li	a0,16
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	be8080e7          	jalr	-1048(ra) # 800030d4 <_ZL9fibonaccim>
    800034f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800034f8:	00006517          	auipc	a0,0x6
    800034fc:	b8850513          	addi	a0,a0,-1144 # 80009080 <CONSOLE_STATUS+0x70>
    80003500:	00002097          	auipc	ra,0x2
    80003504:	b58080e7          	jalr	-1192(ra) # 80005058 <_Z11printStringPKc>
    80003508:	00000613          	li	a2,0
    8000350c:	00a00593          	li	a1,10
    80003510:	0009051b          	sext.w	a0,s2
    80003514:	00002097          	auipc	ra,0x2
    80003518:	cf4080e7          	jalr	-780(ra) # 80005208 <_Z8printIntiii>
    8000351c:	00006517          	auipc	a0,0x6
    80003520:	c1450513          	addi	a0,a0,-1004 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003524:	00002097          	auipc	ra,0x2
    80003528:	b34080e7          	jalr	-1228(ra) # 80005058 <_Z11printStringPKc>
    8000352c:	0400006f          	j	8000356c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	b3850513          	addi	a0,a0,-1224 # 80009068 <CONSOLE_STATUS+0x58>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	b20080e7          	jalr	-1248(ra) # 80005058 <_Z11printStringPKc>
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	00048513          	mv	a0,s1
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	cbc080e7          	jalr	-836(ra) # 80005208 <_Z8printIntiii>
    80003554:	00006517          	auipc	a0,0x6
    80003558:	bdc50513          	addi	a0,a0,-1060 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	afc080e7          	jalr	-1284(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003564:	0014849b          	addiw	s1,s1,1
    80003568:	0ff4f493          	andi	s1,s1,255
    8000356c:	00f00793          	li	a5,15
    80003570:	fc97f0e3          	bgeu	a5,s1,80003530 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	cac50513          	addi	a0,a0,-852 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	adc080e7          	jalr	-1316(ra) # 80005058 <_Z11printStringPKc>
    finishedD = true;
    80003584:	00100793          	li	a5,1
    80003588:	00008717          	auipc	a4,0x8
    8000358c:	faf70da3          	sb	a5,-69(a4) # 8000b543 <_ZL9finishedD>
    thread_dispatch();
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	0a8080e7          	jalr	168(ra) # 80001638 <_Z15thread_dispatchv>
}
    80003598:	01813083          	ld	ra,24(sp)
    8000359c:	01013403          	ld	s0,16(sp)
    800035a0:	00813483          	ld	s1,8(sp)
    800035a4:	00013903          	ld	s2,0(sp)
    800035a8:	02010113          	addi	sp,sp,32
    800035ac:	00008067          	ret

00000000800035b0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800035b0:	fc010113          	addi	sp,sp,-64
    800035b4:	02113c23          	sd	ra,56(sp)
    800035b8:	02813823          	sd	s0,48(sp)
    800035bc:	02913423          	sd	s1,40(sp)
    800035c0:	03213023          	sd	s2,32(sp)
    800035c4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800035c8:	02000513          	li	a0,32
    800035cc:	fffff097          	auipc	ra,0xfffff
    800035d0:	814080e7          	jalr	-2028(ra) # 80001de0 <_Znwm>
    800035d4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	9f8080e7          	jalr	-1544(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    800035e0:	00008797          	auipc	a5,0x8
    800035e4:	d0078793          	addi	a5,a5,-768 # 8000b2e0 <_ZTV7WorkerA+0x10>
    800035e8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800035ec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800035f0:	00006517          	auipc	a0,0x6
    800035f4:	c4050513          	addi	a0,a0,-960 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	a60080e7          	jalr	-1440(ra) # 80005058 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003600:	02000513          	li	a0,32
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	7dc080e7          	jalr	2012(ra) # 80001de0 <_Znwm>
    8000360c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	9c0080e7          	jalr	-1600(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003618:	00008797          	auipc	a5,0x8
    8000361c:	cf078793          	addi	a5,a5,-784 # 8000b308 <_ZTV7WorkerB+0x10>
    80003620:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003624:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003628:	00006517          	auipc	a0,0x6
    8000362c:	c2050513          	addi	a0,a0,-992 # 80009248 <_ZZ6prtIntmE6digits+0x160>
    80003630:	00002097          	auipc	ra,0x2
    80003634:	a28080e7          	jalr	-1496(ra) # 80005058 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003638:	02000513          	li	a0,32
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	7a4080e7          	jalr	1956(ra) # 80001de0 <_Znwm>
    80003644:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003648:	fffff097          	auipc	ra,0xfffff
    8000364c:	988080e7          	jalr	-1656(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003650:	00008797          	auipc	a5,0x8
    80003654:	ce078793          	addi	a5,a5,-800 # 8000b330 <_ZTV7WorkerC+0x10>
    80003658:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000365c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003660:	00006517          	auipc	a0,0x6
    80003664:	c0050513          	addi	a0,a0,-1024 # 80009260 <_ZZ6prtIntmE6digits+0x178>
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	9f0080e7          	jalr	-1552(ra) # 80005058 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003670:	02000513          	li	a0,32
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	76c080e7          	jalr	1900(ra) # 80001de0 <_Znwm>
    8000367c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003680:	fffff097          	auipc	ra,0xfffff
    80003684:	950080e7          	jalr	-1712(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003688:	00008797          	auipc	a5,0x8
    8000368c:	cd078793          	addi	a5,a5,-816 # 8000b358 <_ZTV7WorkerD+0x10>
    80003690:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003694:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	be050513          	addi	a0,a0,-1056 # 80009278 <_ZZ6prtIntmE6digits+0x190>
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	9b8080e7          	jalr	-1608(ra) # 80005058 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800036a8:	00000493          	li	s1,0
    800036ac:	00300793          	li	a5,3
    800036b0:	0297c663          	blt	a5,s1,800036dc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800036b4:	00349793          	slli	a5,s1,0x3
    800036b8:	fe040713          	addi	a4,s0,-32
    800036bc:	00f707b3          	add	a5,a4,a5
    800036c0:	fe07b503          	ld	a0,-32(a5)
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	8b0080e7          	jalr	-1872(ra) # 80001f74 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800036cc:	0014849b          	addiw	s1,s1,1
    800036d0:	fddff06f          	j	800036ac <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	8d4080e7          	jalr	-1836(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800036dc:	00008797          	auipc	a5,0x8
    800036e0:	e647c783          	lbu	a5,-412(a5) # 8000b540 <_ZL9finishedA>
    800036e4:	fe0788e3          	beqz	a5,800036d4 <_Z20Threads_CPP_API_testv+0x124>
    800036e8:	00008797          	auipc	a5,0x8
    800036ec:	e597c783          	lbu	a5,-423(a5) # 8000b541 <_ZL9finishedB>
    800036f0:	fe0782e3          	beqz	a5,800036d4 <_Z20Threads_CPP_API_testv+0x124>
    800036f4:	00008797          	auipc	a5,0x8
    800036f8:	e4e7c783          	lbu	a5,-434(a5) # 8000b542 <_ZL9finishedC>
    800036fc:	fc078ce3          	beqz	a5,800036d4 <_Z20Threads_CPP_API_testv+0x124>
    80003700:	00008797          	auipc	a5,0x8
    80003704:	e437c783          	lbu	a5,-445(a5) # 8000b543 <_ZL9finishedD>
    80003708:	fc0786e3          	beqz	a5,800036d4 <_Z20Threads_CPP_API_testv+0x124>
    8000370c:	fc040493          	addi	s1,s0,-64
    80003710:	0080006f          	j	80003718 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003714:	00848493          	addi	s1,s1,8
    80003718:	fe040793          	addi	a5,s0,-32
    8000371c:	08f48663          	beq	s1,a5,800037a8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003720:	0004b503          	ld	a0,0(s1)
    80003724:	fe0508e3          	beqz	a0,80003714 <_Z20Threads_CPP_API_testv+0x164>
    80003728:	00053783          	ld	a5,0(a0)
    8000372c:	0087b783          	ld	a5,8(a5)
    80003730:	000780e7          	jalr	a5
    80003734:	fe1ff06f          	j	80003714 <_Z20Threads_CPP_API_testv+0x164>
    80003738:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000373c:	00048513          	mv	a0,s1
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	6f0080e7          	jalr	1776(ra) # 80001e30 <_ZdlPv>
    80003748:	00090513          	mv	a0,s2
    8000374c:	00009097          	auipc	ra,0x9
    80003750:	efc080e7          	jalr	-260(ra) # 8000c648 <_Unwind_Resume>
    80003754:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003758:	00048513          	mv	a0,s1
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	6d4080e7          	jalr	1748(ra) # 80001e30 <_ZdlPv>
    80003764:	00090513          	mv	a0,s2
    80003768:	00009097          	auipc	ra,0x9
    8000376c:	ee0080e7          	jalr	-288(ra) # 8000c648 <_Unwind_Resume>
    80003770:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003774:	00048513          	mv	a0,s1
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	6b8080e7          	jalr	1720(ra) # 80001e30 <_ZdlPv>
    80003780:	00090513          	mv	a0,s2
    80003784:	00009097          	auipc	ra,0x9
    80003788:	ec4080e7          	jalr	-316(ra) # 8000c648 <_Unwind_Resume>
    8000378c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003790:	00048513          	mv	a0,s1
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	69c080e7          	jalr	1692(ra) # 80001e30 <_ZdlPv>
    8000379c:	00090513          	mv	a0,s2
    800037a0:	00009097          	auipc	ra,0x9
    800037a4:	ea8080e7          	jalr	-344(ra) # 8000c648 <_Unwind_Resume>
}
    800037a8:	03813083          	ld	ra,56(sp)
    800037ac:	03013403          	ld	s0,48(sp)
    800037b0:	02813483          	ld	s1,40(sp)
    800037b4:	02013903          	ld	s2,32(sp)
    800037b8:	04010113          	addi	sp,sp,64
    800037bc:	00008067          	ret

00000000800037c0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00113423          	sd	ra,8(sp)
    800037c8:	00813023          	sd	s0,0(sp)
    800037cc:	01010413          	addi	s0,sp,16
    800037d0:	00008797          	auipc	a5,0x8
    800037d4:	b1078793          	addi	a5,a5,-1264 # 8000b2e0 <_ZTV7WorkerA+0x10>
    800037d8:	00f53023          	sd	a5,0(a0)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	6a4080e7          	jalr	1700(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800037e4:	00813083          	ld	ra,8(sp)
    800037e8:	00013403          	ld	s0,0(sp)
    800037ec:	01010113          	addi	sp,sp,16
    800037f0:	00008067          	ret

00000000800037f4 <_ZN7WorkerAD0Ev>:
    800037f4:	fe010113          	addi	sp,sp,-32
    800037f8:	00113c23          	sd	ra,24(sp)
    800037fc:	00813823          	sd	s0,16(sp)
    80003800:	00913423          	sd	s1,8(sp)
    80003804:	02010413          	addi	s0,sp,32
    80003808:	00050493          	mv	s1,a0
    8000380c:	00008797          	auipc	a5,0x8
    80003810:	ad478793          	addi	a5,a5,-1324 # 8000b2e0 <_ZTV7WorkerA+0x10>
    80003814:	00f53023          	sd	a5,0(a0)
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	668080e7          	jalr	1640(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003820:	00048513          	mv	a0,s1
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	60c080e7          	jalr	1548(ra) # 80001e30 <_ZdlPv>
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00113423          	sd	ra,8(sp)
    80003848:	00813023          	sd	s0,0(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	00008797          	auipc	a5,0x8
    80003854:	ab878793          	addi	a5,a5,-1352 # 8000b308 <_ZTV7WorkerB+0x10>
    80003858:	00f53023          	sd	a5,0(a0)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	624080e7          	jalr	1572(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003864:	00813083          	ld	ra,8(sp)
    80003868:	00013403          	ld	s0,0(sp)
    8000386c:	01010113          	addi	sp,sp,16
    80003870:	00008067          	ret

0000000080003874 <_ZN7WorkerBD0Ev>:
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00913423          	sd	s1,8(sp)
    80003884:	02010413          	addi	s0,sp,32
    80003888:	00050493          	mv	s1,a0
    8000388c:	00008797          	auipc	a5,0x8
    80003890:	a7c78793          	addi	a5,a5,-1412 # 8000b308 <_ZTV7WorkerB+0x10>
    80003894:	00f53023          	sd	a5,0(a0)
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	5e8080e7          	jalr	1512(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800038a0:	00048513          	mv	a0,s1
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	58c080e7          	jalr	1420(ra) # 80001e30 <_ZdlPv>
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	02010113          	addi	sp,sp,32
    800038bc:	00008067          	ret

00000000800038c0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800038c0:	ff010113          	addi	sp,sp,-16
    800038c4:	00113423          	sd	ra,8(sp)
    800038c8:	00813023          	sd	s0,0(sp)
    800038cc:	01010413          	addi	s0,sp,16
    800038d0:	00008797          	auipc	a5,0x8
    800038d4:	a6078793          	addi	a5,a5,-1440 # 8000b330 <_ZTV7WorkerC+0x10>
    800038d8:	00f53023          	sd	a5,0(a0)
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	5a4080e7          	jalr	1444(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800038e4:	00813083          	ld	ra,8(sp)
    800038e8:	00013403          	ld	s0,0(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <_ZN7WorkerCD0Ev>:
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	02010413          	addi	s0,sp,32
    80003908:	00050493          	mv	s1,a0
    8000390c:	00008797          	auipc	a5,0x8
    80003910:	a2478793          	addi	a5,a5,-1500 # 8000b330 <_ZTV7WorkerC+0x10>
    80003914:	00f53023          	sd	a5,0(a0)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	568080e7          	jalr	1384(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003920:	00048513          	mv	a0,s1
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	50c080e7          	jalr	1292(ra) # 80001e30 <_ZdlPv>
    8000392c:	01813083          	ld	ra,24(sp)
    80003930:	01013403          	ld	s0,16(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00113423          	sd	ra,8(sp)
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	01010413          	addi	s0,sp,16
    80003950:	00008797          	auipc	a5,0x8
    80003954:	a0878793          	addi	a5,a5,-1528 # 8000b358 <_ZTV7WorkerD+0x10>
    80003958:	00f53023          	sd	a5,0(a0)
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	524080e7          	jalr	1316(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003964:	00813083          	ld	ra,8(sp)
    80003968:	00013403          	ld	s0,0(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret

0000000080003974 <_ZN7WorkerDD0Ev>:
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00913423          	sd	s1,8(sp)
    80003984:	02010413          	addi	s0,sp,32
    80003988:	00050493          	mv	s1,a0
    8000398c:	00008797          	auipc	a5,0x8
    80003990:	9cc78793          	addi	a5,a5,-1588 # 8000b358 <_ZTV7WorkerD+0x10>
    80003994:	00f53023          	sd	a5,0(a0)
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	4e8080e7          	jalr	1256(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800039a0:	00048513          	mv	a0,s1
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	48c080e7          	jalr	1164(ra) # 80001e30 <_ZdlPv>
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret

00000000800039c0 <_ZN7WorkerA3runEv>:
    void run() override {
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00113423          	sd	ra,8(sp)
    800039c8:	00813023          	sd	s0,0(sp)
    800039cc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800039d0:	00000593          	li	a1,0
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	774080e7          	jalr	1908(ra) # 80003148 <_ZN7WorkerA11workerBodyAEPv>
    }
    800039dc:	00813083          	ld	ra,8(sp)
    800039e0:	00013403          	ld	s0,0(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret

00000000800039ec <_ZN7WorkerB3runEv>:
    void run() override {
    800039ec:	ff010113          	addi	sp,sp,-16
    800039f0:	00113423          	sd	ra,8(sp)
    800039f4:	00813023          	sd	s0,0(sp)
    800039f8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800039fc:	00000593          	li	a1,0
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	814080e7          	jalr	-2028(ra) # 80003214 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret

0000000080003a18 <_ZN7WorkerC3runEv>:
    void run() override {
    80003a18:	ff010113          	addi	sp,sp,-16
    80003a1c:	00113423          	sd	ra,8(sp)
    80003a20:	00813023          	sd	s0,0(sp)
    80003a24:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003a28:	00000593          	li	a1,0
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	8bc080e7          	jalr	-1860(ra) # 800032e8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003a34:	00813083          	ld	ra,8(sp)
    80003a38:	00013403          	ld	s0,0(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <_ZN7WorkerD3runEv>:
    void run() override {
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003a54:	00000593          	li	a1,0
    80003a58:	00000097          	auipc	ra,0x0
    80003a5c:	a10080e7          	jalr	-1520(ra) # 80003468 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003a60:	00813083          	ld	ra,8(sp)
    80003a64:	00013403          	ld	s0,0(sp)
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret

0000000080003a70 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003a70:	f8010113          	addi	sp,sp,-128
    80003a74:	06113c23          	sd	ra,120(sp)
    80003a78:	06813823          	sd	s0,112(sp)
    80003a7c:	06913423          	sd	s1,104(sp)
    80003a80:	07213023          	sd	s2,96(sp)
    80003a84:	05313c23          	sd	s3,88(sp)
    80003a88:	05413823          	sd	s4,80(sp)
    80003a8c:	05513423          	sd	s5,72(sp)
    80003a90:	05613023          	sd	s6,64(sp)
    80003a94:	03713c23          	sd	s7,56(sp)
    80003a98:	03813823          	sd	s8,48(sp)
    80003a9c:	03913423          	sd	s9,40(sp)
    80003aa0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003aa4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003aa8:	00005517          	auipc	a0,0x5
    80003aac:	65050513          	addi	a0,a0,1616 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	5a8080e7          	jalr	1448(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80003ab8:	01e00593          	li	a1,30
    80003abc:	f8040493          	addi	s1,s0,-128
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	61c080e7          	jalr	1564(ra) # 800050e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00001097          	auipc	ra,0x1
    80003ad4:	6e8080e7          	jalr	1768(ra) # 800051b8 <_Z11stringToIntPKc>
    80003ad8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	63c50513          	addi	a0,a0,1596 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	574080e7          	jalr	1396(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80003aec:	01e00593          	li	a1,30
    80003af0:	00048513          	mv	a0,s1
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	5ec080e7          	jalr	1516(ra) # 800050e0 <_Z9getStringPci>
    n = stringToInt(input);
    80003afc:	00048513          	mv	a0,s1
    80003b00:	00001097          	auipc	ra,0x1
    80003b04:	6b8080e7          	jalr	1720(ra) # 800051b8 <_Z11stringToIntPKc>
    80003b08:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003b0c:	00005517          	auipc	a0,0x5
    80003b10:	62c50513          	addi	a0,a0,1580 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80003b14:	00001097          	auipc	ra,0x1
    80003b18:	544080e7          	jalr	1348(ra) # 80005058 <_Z11printStringPKc>
    printInt(threadNum);
    80003b1c:	00000613          	li	a2,0
    80003b20:	00a00593          	li	a1,10
    80003b24:	00098513          	mv	a0,s3
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	6e0080e7          	jalr	1760(ra) # 80005208 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003b30:	00005517          	auipc	a0,0x5
    80003b34:	62050513          	addi	a0,a0,1568 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80003b38:	00001097          	auipc	ra,0x1
    80003b3c:	520080e7          	jalr	1312(ra) # 80005058 <_Z11printStringPKc>
    printInt(n);
    80003b40:	00000613          	li	a2,0
    80003b44:	00a00593          	li	a1,10
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	6bc080e7          	jalr	1724(ra) # 80005208 <_Z8printIntiii>
    printString(".\n");
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	61450513          	addi	a0,a0,1556 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	4fc080e7          	jalr	1276(ra) # 80005058 <_Z11printStringPKc>
    if (threadNum > n) {
    80003b64:	0334c463          	blt	s1,s3,80003b8c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003b68:	03305c63          	blez	s3,80003ba0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003b6c:	03800513          	li	a0,56
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	270080e7          	jalr	624(ra) # 80001de0 <_Znwm>
    80003b78:	00050a93          	mv	s5,a0
    80003b7c:	00048593          	mv	a1,s1
    80003b80:	00001097          	auipc	ra,0x1
    80003b84:	7a8080e7          	jalr	1960(ra) # 80005328 <_ZN9BufferCPPC1Ei>
    80003b88:	0300006f          	j	80003bb8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b8c:	00005517          	auipc	a0,0x5
    80003b90:	5e450513          	addi	a0,a0,1508 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80003b94:	00001097          	auipc	ra,0x1
    80003b98:	4c4080e7          	jalr	1220(ra) # 80005058 <_Z11printStringPKc>
        return;
    80003b9c:	0140006f          	j	80003bb0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ba0:	00005517          	auipc	a0,0x5
    80003ba4:	61050513          	addi	a0,a0,1552 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80003ba8:	00001097          	auipc	ra,0x1
    80003bac:	4b0080e7          	jalr	1200(ra) # 80005058 <_Z11printStringPKc>
        return;
    80003bb0:	000c0113          	mv	sp,s8
    80003bb4:	2140006f          	j	80003dc8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003bb8:	01000513          	li	a0,16
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	224080e7          	jalr	548(ra) # 80001de0 <_Znwm>
    80003bc4:	00050913          	mv	s2,a0
    80003bc8:	00000593          	li	a1,0
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	45c080e7          	jalr	1116(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    80003bd4:	00008797          	auipc	a5,0x8
    80003bd8:	9727be23          	sd	s2,-1668(a5) # 8000b550 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003bdc:	00399793          	slli	a5,s3,0x3
    80003be0:	00f78793          	addi	a5,a5,15
    80003be4:	ff07f793          	andi	a5,a5,-16
    80003be8:	40f10133          	sub	sp,sp,a5
    80003bec:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003bf0:	0019871b          	addiw	a4,s3,1
    80003bf4:	00171793          	slli	a5,a4,0x1
    80003bf8:	00e787b3          	add	a5,a5,a4
    80003bfc:	00379793          	slli	a5,a5,0x3
    80003c00:	00f78793          	addi	a5,a5,15
    80003c04:	ff07f793          	andi	a5,a5,-16
    80003c08:	40f10133          	sub	sp,sp,a5
    80003c0c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003c10:	00199493          	slli	s1,s3,0x1
    80003c14:	013484b3          	add	s1,s1,s3
    80003c18:	00349493          	slli	s1,s1,0x3
    80003c1c:	009b04b3          	add	s1,s6,s1
    80003c20:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003c24:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003c28:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c2c:	02800513          	li	a0,40
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	1b0080e7          	jalr	432(ra) # 80001de0 <_Znwm>
    80003c38:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	394080e7          	jalr	916(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003c44:	00007797          	auipc	a5,0x7
    80003c48:	78c78793          	addi	a5,a5,1932 # 8000b3d0 <_ZTV8Consumer+0x10>
    80003c4c:	00fbb023          	sd	a5,0(s7)
    80003c50:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003c54:	000b8513          	mv	a0,s7
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	31c080e7          	jalr	796(ra) # 80001f74 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003c60:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003c64:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003c68:	00008797          	auipc	a5,0x8
    80003c6c:	8e87b783          	ld	a5,-1816(a5) # 8000b550 <_ZL10waitForAll>
    80003c70:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c74:	02800513          	li	a0,40
    80003c78:	ffffe097          	auipc	ra,0xffffe
    80003c7c:	168080e7          	jalr	360(ra) # 80001de0 <_Znwm>
    80003c80:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003c84:	ffffe097          	auipc	ra,0xffffe
    80003c88:	34c080e7          	jalr	844(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003c8c:	00007797          	auipc	a5,0x7
    80003c90:	6f478793          	addi	a5,a5,1780 # 8000b380 <_ZTV16ProducerKeyborad+0x10>
    80003c94:	00f4b023          	sd	a5,0(s1)
    80003c98:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c9c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	2d0080e7          	jalr	720(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003cac:	00100913          	li	s2,1
    80003cb0:	0300006f          	j	80003ce0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003cb4:	00007797          	auipc	a5,0x7
    80003cb8:	6f478793          	addi	a5,a5,1780 # 8000b3a8 <_ZTV8Producer+0x10>
    80003cbc:	00fcb023          	sd	a5,0(s9)
    80003cc0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003cc4:	00391793          	slli	a5,s2,0x3
    80003cc8:	00fa07b3          	add	a5,s4,a5
    80003ccc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003cd0:	000c8513          	mv	a0,s9
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	2a0080e7          	jalr	672(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003cdc:	0019091b          	addiw	s2,s2,1
    80003ce0:	05395263          	bge	s2,s3,80003d24 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003ce4:	00191493          	slli	s1,s2,0x1
    80003ce8:	012484b3          	add	s1,s1,s2
    80003cec:	00349493          	slli	s1,s1,0x3
    80003cf0:	009b04b3          	add	s1,s6,s1
    80003cf4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003cf8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003cfc:	00008797          	auipc	a5,0x8
    80003d00:	8547b783          	ld	a5,-1964(a5) # 8000b550 <_ZL10waitForAll>
    80003d04:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003d08:	02800513          	li	a0,40
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	0d4080e7          	jalr	212(ra) # 80001de0 <_Znwm>
    80003d14:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	2b8080e7          	jalr	696(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80003d20:	f95ff06f          	j	80003cb4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	284080e7          	jalr	644(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d2c:	00000493          	li	s1,0
    80003d30:	0099ce63          	blt	s3,s1,80003d4c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003d34:	00008517          	auipc	a0,0x8
    80003d38:	81c53503          	ld	a0,-2020(a0) # 8000b550 <_ZL10waitForAll>
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	310080e7          	jalr	784(ra) # 8000204c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d44:	0014849b          	addiw	s1,s1,1
    80003d48:	fe9ff06f          	j	80003d30 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003d4c:	00008517          	auipc	a0,0x8
    80003d50:	80453503          	ld	a0,-2044(a0) # 8000b550 <_ZL10waitForAll>
    80003d54:	00050863          	beqz	a0,80003d64 <_Z20testConsumerProducerv+0x2f4>
    80003d58:	00053783          	ld	a5,0(a0)
    80003d5c:	0087b783          	ld	a5,8(a5)
    80003d60:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003d64:	00000493          	li	s1,0
    80003d68:	0080006f          	j	80003d70 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003d6c:	0014849b          	addiw	s1,s1,1
    80003d70:	0334d263          	bge	s1,s3,80003d94 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003d74:	00349793          	slli	a5,s1,0x3
    80003d78:	00fa07b3          	add	a5,s4,a5
    80003d7c:	0007b503          	ld	a0,0(a5)
    80003d80:	fe0506e3          	beqz	a0,80003d6c <_Z20testConsumerProducerv+0x2fc>
    80003d84:	00053783          	ld	a5,0(a0)
    80003d88:	0087b783          	ld	a5,8(a5)
    80003d8c:	000780e7          	jalr	a5
    80003d90:	fddff06f          	j	80003d6c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003d94:	000b8a63          	beqz	s7,80003da8 <_Z20testConsumerProducerv+0x338>
    80003d98:	000bb783          	ld	a5,0(s7)
    80003d9c:	0087b783          	ld	a5,8(a5)
    80003da0:	000b8513          	mv	a0,s7
    80003da4:	000780e7          	jalr	a5
    delete buffer;
    80003da8:	000a8e63          	beqz	s5,80003dc4 <_Z20testConsumerProducerv+0x354>
    80003dac:	000a8513          	mv	a0,s5
    80003db0:	00002097          	auipc	ra,0x2
    80003db4:	870080e7          	jalr	-1936(ra) # 80005620 <_ZN9BufferCPPD1Ev>
    80003db8:	000a8513          	mv	a0,s5
    80003dbc:	ffffe097          	auipc	ra,0xffffe
    80003dc0:	074080e7          	jalr	116(ra) # 80001e30 <_ZdlPv>
    80003dc4:	000c0113          	mv	sp,s8
}
    80003dc8:	f8040113          	addi	sp,s0,-128
    80003dcc:	07813083          	ld	ra,120(sp)
    80003dd0:	07013403          	ld	s0,112(sp)
    80003dd4:	06813483          	ld	s1,104(sp)
    80003dd8:	06013903          	ld	s2,96(sp)
    80003ddc:	05813983          	ld	s3,88(sp)
    80003de0:	05013a03          	ld	s4,80(sp)
    80003de4:	04813a83          	ld	s5,72(sp)
    80003de8:	04013b03          	ld	s6,64(sp)
    80003dec:	03813b83          	ld	s7,56(sp)
    80003df0:	03013c03          	ld	s8,48(sp)
    80003df4:	02813c83          	ld	s9,40(sp)
    80003df8:	08010113          	addi	sp,sp,128
    80003dfc:	00008067          	ret
    80003e00:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e04:	000a8513          	mv	a0,s5
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	028080e7          	jalr	40(ra) # 80001e30 <_ZdlPv>
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00009097          	auipc	ra,0x9
    80003e18:	834080e7          	jalr	-1996(ra) # 8000c648 <_Unwind_Resume>
    80003e1c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003e20:	00090513          	mv	a0,s2
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	00c080e7          	jalr	12(ra) # 80001e30 <_ZdlPv>
    80003e2c:	00048513          	mv	a0,s1
    80003e30:	00009097          	auipc	ra,0x9
    80003e34:	818080e7          	jalr	-2024(ra) # 8000c648 <_Unwind_Resume>
    80003e38:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e3c:	000b8513          	mv	a0,s7
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	ff0080e7          	jalr	-16(ra) # 80001e30 <_ZdlPv>
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00008097          	auipc	ra,0x8
    80003e50:	7fc080e7          	jalr	2044(ra) # 8000c648 <_Unwind_Resume>
    80003e54:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	fd4080e7          	jalr	-44(ra) # 80001e30 <_ZdlPv>
    80003e64:	00090513          	mv	a0,s2
    80003e68:	00008097          	auipc	ra,0x8
    80003e6c:	7e0080e7          	jalr	2016(ra) # 8000c648 <_Unwind_Resume>
    80003e70:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003e74:	000c8513          	mv	a0,s9
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	fb8080e7          	jalr	-72(ra) # 80001e30 <_ZdlPv>
    80003e80:	00048513          	mv	a0,s1
    80003e84:	00008097          	auipc	ra,0x8
    80003e88:	7c4080e7          	jalr	1988(ra) # 8000c648 <_Unwind_Resume>

0000000080003e8c <_ZN8Consumer3runEv>:
    void run() override {
    80003e8c:	fd010113          	addi	sp,sp,-48
    80003e90:	02113423          	sd	ra,40(sp)
    80003e94:	02813023          	sd	s0,32(sp)
    80003e98:	00913c23          	sd	s1,24(sp)
    80003e9c:	01213823          	sd	s2,16(sp)
    80003ea0:	01313423          	sd	s3,8(sp)
    80003ea4:	03010413          	addi	s0,sp,48
    80003ea8:	00050913          	mv	s2,a0
        int i = 0;
    80003eac:	00000993          	li	s3,0
    80003eb0:	0100006f          	j	80003ec0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003eb4:	00a00513          	li	a0,10
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	240080e7          	jalr	576(ra) # 800020f8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003ec0:	00007797          	auipc	a5,0x7
    80003ec4:	6887a783          	lw	a5,1672(a5) # 8000b548 <_ZL9threadEnd>
    80003ec8:	04079a63          	bnez	a5,80003f1c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003ecc:	02093783          	ld	a5,32(s2)
    80003ed0:	0087b503          	ld	a0,8(a5)
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	638080e7          	jalr	1592(ra) # 8000550c <_ZN9BufferCPP3getEv>
            i++;
    80003edc:	0019849b          	addiw	s1,s3,1
    80003ee0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003ee4:	0ff57513          	andi	a0,a0,255
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	210080e7          	jalr	528(ra) # 800020f8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003ef0:	05000793          	li	a5,80
    80003ef4:	02f4e4bb          	remw	s1,s1,a5
    80003ef8:	fc0494e3          	bnez	s1,80003ec0 <_ZN8Consumer3runEv+0x34>
    80003efc:	fb9ff06f          	j	80003eb4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003f00:	02093783          	ld	a5,32(s2)
    80003f04:	0087b503          	ld	a0,8(a5)
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	604080e7          	jalr	1540(ra) # 8000550c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003f10:	0ff57513          	andi	a0,a0,255
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	1e4080e7          	jalr	484(ra) # 800020f8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003f1c:	02093783          	ld	a5,32(s2)
    80003f20:	0087b503          	ld	a0,8(a5)
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	674080e7          	jalr	1652(ra) # 80005598 <_ZN9BufferCPP6getCntEv>
    80003f2c:	fca04ae3          	bgtz	a0,80003f00 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003f30:	02093783          	ld	a5,32(s2)
    80003f34:	0107b503          	ld	a0,16(a5)
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	130080e7          	jalr	304(ra) # 80002068 <_ZN9Semaphore6signalEv>
    }
    80003f40:	02813083          	ld	ra,40(sp)
    80003f44:	02013403          	ld	s0,32(sp)
    80003f48:	01813483          	ld	s1,24(sp)
    80003f4c:	01013903          	ld	s2,16(sp)
    80003f50:	00813983          	ld	s3,8(sp)
    80003f54:	03010113          	addi	sp,sp,48
    80003f58:	00008067          	ret

0000000080003f5c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00113423          	sd	ra,8(sp)
    80003f64:	00813023          	sd	s0,0(sp)
    80003f68:	01010413          	addi	s0,sp,16
    80003f6c:	00007797          	auipc	a5,0x7
    80003f70:	46478793          	addi	a5,a5,1124 # 8000b3d0 <_ZTV8Consumer+0x10>
    80003f74:	00f53023          	sd	a5,0(a0)
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	f08080e7          	jalr	-248(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003f80:	00813083          	ld	ra,8(sp)
    80003f84:	00013403          	ld	s0,0(sp)
    80003f88:	01010113          	addi	sp,sp,16
    80003f8c:	00008067          	ret

0000000080003f90 <_ZN8ConsumerD0Ev>:
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00113c23          	sd	ra,24(sp)
    80003f98:	00813823          	sd	s0,16(sp)
    80003f9c:	00913423          	sd	s1,8(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	00050493          	mv	s1,a0
    80003fa8:	00007797          	auipc	a5,0x7
    80003fac:	42878793          	addi	a5,a5,1064 # 8000b3d0 <_ZTV8Consumer+0x10>
    80003fb0:	00f53023          	sd	a5,0(a0)
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	ecc080e7          	jalr	-308(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80003fbc:	00048513          	mv	a0,s1
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	e70080e7          	jalr	-400(ra) # 80001e30 <_ZdlPv>
    80003fc8:	01813083          	ld	ra,24(sp)
    80003fcc:	01013403          	ld	s0,16(sp)
    80003fd0:	00813483          	ld	s1,8(sp)
    80003fd4:	02010113          	addi	sp,sp,32
    80003fd8:	00008067          	ret

0000000080003fdc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003fdc:	ff010113          	addi	sp,sp,-16
    80003fe0:	00113423          	sd	ra,8(sp)
    80003fe4:	00813023          	sd	s0,0(sp)
    80003fe8:	01010413          	addi	s0,sp,16
    80003fec:	00007797          	auipc	a5,0x7
    80003ff0:	39478793          	addi	a5,a5,916 # 8000b380 <_ZTV16ProducerKeyborad+0x10>
    80003ff4:	00f53023          	sd	a5,0(a0)
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	e88080e7          	jalr	-376(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004000:	00813083          	ld	ra,8(sp)
    80004004:	00013403          	ld	s0,0(sp)
    80004008:	01010113          	addi	sp,sp,16
    8000400c:	00008067          	ret

0000000080004010 <_ZN16ProducerKeyboradD0Ev>:
    80004010:	fe010113          	addi	sp,sp,-32
    80004014:	00113c23          	sd	ra,24(sp)
    80004018:	00813823          	sd	s0,16(sp)
    8000401c:	00913423          	sd	s1,8(sp)
    80004020:	02010413          	addi	s0,sp,32
    80004024:	00050493          	mv	s1,a0
    80004028:	00007797          	auipc	a5,0x7
    8000402c:	35878793          	addi	a5,a5,856 # 8000b380 <_ZTV16ProducerKeyborad+0x10>
    80004030:	00f53023          	sd	a5,0(a0)
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	e4c080e7          	jalr	-436(ra) # 80001e80 <_ZN6ThreadD1Ev>
    8000403c:	00048513          	mv	a0,s1
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	df0080e7          	jalr	-528(ra) # 80001e30 <_ZdlPv>
    80004048:	01813083          	ld	ra,24(sp)
    8000404c:	01013403          	ld	s0,16(sp)
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	02010113          	addi	sp,sp,32
    80004058:	00008067          	ret

000000008000405c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000405c:	ff010113          	addi	sp,sp,-16
    80004060:	00113423          	sd	ra,8(sp)
    80004064:	00813023          	sd	s0,0(sp)
    80004068:	01010413          	addi	s0,sp,16
    8000406c:	00007797          	auipc	a5,0x7
    80004070:	33c78793          	addi	a5,a5,828 # 8000b3a8 <_ZTV8Producer+0x10>
    80004074:	00f53023          	sd	a5,0(a0)
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	e08080e7          	jalr	-504(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004080:	00813083          	ld	ra,8(sp)
    80004084:	00013403          	ld	s0,0(sp)
    80004088:	01010113          	addi	sp,sp,16
    8000408c:	00008067          	ret

0000000080004090 <_ZN8ProducerD0Ev>:
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	00113c23          	sd	ra,24(sp)
    80004098:	00813823          	sd	s0,16(sp)
    8000409c:	00913423          	sd	s1,8(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	00050493          	mv	s1,a0
    800040a8:	00007797          	auipc	a5,0x7
    800040ac:	30078793          	addi	a5,a5,768 # 8000b3a8 <_ZTV8Producer+0x10>
    800040b0:	00f53023          	sd	a5,0(a0)
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	dcc080e7          	jalr	-564(ra) # 80001e80 <_ZN6ThreadD1Ev>
    800040bc:	00048513          	mv	a0,s1
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	d70080e7          	jalr	-656(ra) # 80001e30 <_ZdlPv>
    800040c8:	01813083          	ld	ra,24(sp)
    800040cc:	01013403          	ld	s0,16(sp)
    800040d0:	00813483          	ld	s1,8(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret

00000000800040dc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800040f4:	ffffd097          	auipc	ra,0xffffd
    800040f8:	5f8080e7          	jalr	1528(ra) # 800016ec <_Z4getcv>
    800040fc:	0005059b          	sext.w	a1,a0
    80004100:	01b00793          	li	a5,27
    80004104:	00f58c63          	beq	a1,a5,8000411c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004108:	0204b783          	ld	a5,32(s1)
    8000410c:	0087b503          	ld	a0,8(a5)
    80004110:	00001097          	auipc	ra,0x1
    80004114:	36c080e7          	jalr	876(ra) # 8000547c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004118:	fddff06f          	j	800040f4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000411c:	00100793          	li	a5,1
    80004120:	00007717          	auipc	a4,0x7
    80004124:	42f72423          	sw	a5,1064(a4) # 8000b548 <_ZL9threadEnd>
        td->buffer->put('!');
    80004128:	0204b783          	ld	a5,32(s1)
    8000412c:	02100593          	li	a1,33
    80004130:	0087b503          	ld	a0,8(a5)
    80004134:	00001097          	auipc	ra,0x1
    80004138:	348080e7          	jalr	840(ra) # 8000547c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000413c:	0204b783          	ld	a5,32(s1)
    80004140:	0107b503          	ld	a0,16(a5)
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	f24080e7          	jalr	-220(ra) # 80002068 <_ZN9Semaphore6signalEv>
    }
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN8Producer3runEv>:
    void run() override {
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	00813823          	sd	s0,16(sp)
    8000416c:	00913423          	sd	s1,8(sp)
    80004170:	01213023          	sd	s2,0(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	00050493          	mv	s1,a0
        int i = 0;
    8000417c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004180:	00007797          	auipc	a5,0x7
    80004184:	3c87a783          	lw	a5,968(a5) # 8000b548 <_ZL9threadEnd>
    80004188:	04079263          	bnez	a5,800041cc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000418c:	0204b783          	ld	a5,32(s1)
    80004190:	0007a583          	lw	a1,0(a5)
    80004194:	0305859b          	addiw	a1,a1,48
    80004198:	0087b503          	ld	a0,8(a5)
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	2e0080e7          	jalr	736(ra) # 8000547c <_ZN9BufferCPP3putEi>
            i++;
    800041a4:	0019071b          	addiw	a4,s2,1
    800041a8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800041ac:	0204b783          	ld	a5,32(s1)
    800041b0:	0007a783          	lw	a5,0(a5)
    800041b4:	00e787bb          	addw	a5,a5,a4
    800041b8:	00500513          	li	a0,5
    800041bc:	02a7e53b          	remw	a0,a5,a0
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	e4c080e7          	jalr	-436(ra) # 8000200c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800041c8:	fb9ff06f          	j	80004180 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800041cc:	0204b783          	ld	a5,32(s1)
    800041d0:	0107b503          	ld	a0,16(a5)
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	e94080e7          	jalr	-364(ra) # 80002068 <_ZN9Semaphore6signalEv>
    }
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	00013903          	ld	s2,0(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800041f4:	fe010113          	addi	sp,sp,-32
    800041f8:	00113c23          	sd	ra,24(sp)
    800041fc:	00813823          	sd	s0,16(sp)
    80004200:	00913423          	sd	s1,8(sp)
    80004204:	01213023          	sd	s2,0(sp)
    80004208:	02010413          	addi	s0,sp,32
    8000420c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004210:	00100793          	li	a5,1
    80004214:	02a7f863          	bgeu	a5,a0,80004244 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004218:	00a00793          	li	a5,10
    8000421c:	02f577b3          	remu	a5,a0,a5
    80004220:	02078e63          	beqz	a5,8000425c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004224:	fff48513          	addi	a0,s1,-1
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	fcc080e7          	jalr	-52(ra) # 800041f4 <_ZL9fibonaccim>
    80004230:	00050913          	mv	s2,a0
    80004234:	ffe48513          	addi	a0,s1,-2
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	fbc080e7          	jalr	-68(ra) # 800041f4 <_ZL9fibonaccim>
    80004240:	00a90533          	add	a0,s2,a0
}
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	00013903          	ld	s2,0(sp)
    80004254:	02010113          	addi	sp,sp,32
    80004258:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000425c:	ffffd097          	auipc	ra,0xffffd
    80004260:	3dc080e7          	jalr	988(ra) # 80001638 <_Z15thread_dispatchv>
    80004264:	fc1ff06f          	j	80004224 <_ZL9fibonaccim+0x30>

0000000080004268 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	01213023          	sd	s2,0(sp)
    8000427c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004280:	00a00493          	li	s1,10
    80004284:	0400006f          	j	800042c4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004288:	00005517          	auipc	a0,0x5
    8000428c:	de050513          	addi	a0,a0,-544 # 80009068 <CONSOLE_STATUS+0x58>
    80004290:	00001097          	auipc	ra,0x1
    80004294:	dc8080e7          	jalr	-568(ra) # 80005058 <_Z11printStringPKc>
    80004298:	00000613          	li	a2,0
    8000429c:	00a00593          	li	a1,10
    800042a0:	00048513          	mv	a0,s1
    800042a4:	00001097          	auipc	ra,0x1
    800042a8:	f64080e7          	jalr	-156(ra) # 80005208 <_Z8printIntiii>
    800042ac:	00005517          	auipc	a0,0x5
    800042b0:	e8450513          	addi	a0,a0,-380 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	da4080e7          	jalr	-604(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042bc:	0014849b          	addiw	s1,s1,1
    800042c0:	0ff4f493          	andi	s1,s1,255
    800042c4:	00c00793          	li	a5,12
    800042c8:	fc97f0e3          	bgeu	a5,s1,80004288 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	f4450513          	addi	a0,a0,-188 # 80009210 <_ZZ6prtIntmE6digits+0x128>
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	d84080e7          	jalr	-636(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042dc:	00500313          	li	t1,5
    thread_dispatch();
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	358080e7          	jalr	856(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042e8:	01000513          	li	a0,16
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	f08080e7          	jalr	-248(ra) # 800041f4 <_ZL9fibonaccim>
    800042f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042f8:	00005517          	auipc	a0,0x5
    800042fc:	d8850513          	addi	a0,a0,-632 # 80009080 <CONSOLE_STATUS+0x70>
    80004300:	00001097          	auipc	ra,0x1
    80004304:	d58080e7          	jalr	-680(ra) # 80005058 <_Z11printStringPKc>
    80004308:	00000613          	li	a2,0
    8000430c:	00a00593          	li	a1,10
    80004310:	0009051b          	sext.w	a0,s2
    80004314:	00001097          	auipc	ra,0x1
    80004318:	ef4080e7          	jalr	-268(ra) # 80005208 <_Z8printIntiii>
    8000431c:	00005517          	auipc	a0,0x5
    80004320:	e1450513          	addi	a0,a0,-492 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80004324:	00001097          	auipc	ra,0x1
    80004328:	d34080e7          	jalr	-716(ra) # 80005058 <_Z11printStringPKc>
    8000432c:	0400006f          	j	8000436c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004330:	00005517          	auipc	a0,0x5
    80004334:	d3850513          	addi	a0,a0,-712 # 80009068 <CONSOLE_STATUS+0x58>
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	d20080e7          	jalr	-736(ra) # 80005058 <_Z11printStringPKc>
    80004340:	00000613          	li	a2,0
    80004344:	00a00593          	li	a1,10
    80004348:	00048513          	mv	a0,s1
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	ebc080e7          	jalr	-324(ra) # 80005208 <_Z8printIntiii>
    80004354:	00005517          	auipc	a0,0x5
    80004358:	ddc50513          	addi	a0,a0,-548 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	cfc080e7          	jalr	-772(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004364:	0014849b          	addiw	s1,s1,1
    80004368:	0ff4f493          	andi	s1,s1,255
    8000436c:	00f00793          	li	a5,15
    80004370:	fc97f0e3          	bgeu	a5,s1,80004330 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004374:	00005517          	auipc	a0,0x5
    80004378:	eac50513          	addi	a0,a0,-340 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	cdc080e7          	jalr	-804(ra) # 80005058 <_Z11printStringPKc>
    finishedD = true;
    80004384:	00100793          	li	a5,1
    80004388:	00007717          	auipc	a4,0x7
    8000438c:	1cf70823          	sb	a5,464(a4) # 8000b558 <_ZL9finishedD>
    thread_dispatch();
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	2a8080e7          	jalr	680(ra) # 80001638 <_Z15thread_dispatchv>
}
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	01013403          	ld	s0,16(sp)
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	00013903          	ld	s2,0(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00113c23          	sd	ra,24(sp)
    800043b8:	00813823          	sd	s0,16(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	01213023          	sd	s2,0(sp)
    800043c4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800043c8:	00000493          	li	s1,0
    800043cc:	0400006f          	j	8000440c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	c5050513          	addi	a0,a0,-944 # 80009020 <CONSOLE_STATUS+0x10>
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	c80080e7          	jalr	-896(ra) # 80005058 <_Z11printStringPKc>
    800043e0:	00000613          	li	a2,0
    800043e4:	00a00593          	li	a1,10
    800043e8:	00048513          	mv	a0,s1
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	e1c080e7          	jalr	-484(ra) # 80005208 <_Z8printIntiii>
    800043f4:	00005517          	auipc	a0,0x5
    800043f8:	d3c50513          	addi	a0,a0,-708 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	c5c080e7          	jalr	-932(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004404:	0014849b          	addiw	s1,s1,1
    80004408:	0ff4f493          	andi	s1,s1,255
    8000440c:	00200793          	li	a5,2
    80004410:	fc97f0e3          	bgeu	a5,s1,800043d0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004414:	00005517          	auipc	a0,0x5
    80004418:	dec50513          	addi	a0,a0,-532 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	c3c080e7          	jalr	-964(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004424:	00700313          	li	t1,7
    thread_dispatch();
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	210080e7          	jalr	528(ra) # 80001638 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004430:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004434:	00005517          	auipc	a0,0x5
    80004438:	c0450513          	addi	a0,a0,-1020 # 80009038 <CONSOLE_STATUS+0x28>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	c1c080e7          	jalr	-996(ra) # 80005058 <_Z11printStringPKc>
    80004444:	00000613          	li	a2,0
    80004448:	00a00593          	li	a1,10
    8000444c:	0009051b          	sext.w	a0,s2
    80004450:	00001097          	auipc	ra,0x1
    80004454:	db8080e7          	jalr	-584(ra) # 80005208 <_Z8printIntiii>
    80004458:	00005517          	auipc	a0,0x5
    8000445c:	cd850513          	addi	a0,a0,-808 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80004460:	00001097          	auipc	ra,0x1
    80004464:	bf8080e7          	jalr	-1032(ra) # 80005058 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004468:	00c00513          	li	a0,12
    8000446c:	00000097          	auipc	ra,0x0
    80004470:	d88080e7          	jalr	-632(ra) # 800041f4 <_ZL9fibonaccim>
    80004474:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	bc850513          	addi	a0,a0,-1080 # 80009040 <CONSOLE_STATUS+0x30>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	bd8080e7          	jalr	-1064(ra) # 80005058 <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	0009051b          	sext.w	a0,s2
    80004494:	00001097          	auipc	ra,0x1
    80004498:	d74080e7          	jalr	-652(ra) # 80005208 <_Z8printIntiii>
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	c9450513          	addi	a0,a0,-876 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	bb4080e7          	jalr	-1100(ra) # 80005058 <_Z11printStringPKc>
    800044ac:	0400006f          	j	800044ec <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	b7050513          	addi	a0,a0,-1168 # 80009020 <CONSOLE_STATUS+0x10>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	ba0080e7          	jalr	-1120(ra) # 80005058 <_Z11printStringPKc>
    800044c0:	00000613          	li	a2,0
    800044c4:	00a00593          	li	a1,10
    800044c8:	00048513          	mv	a0,s1
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	d3c080e7          	jalr	-708(ra) # 80005208 <_Z8printIntiii>
    800044d4:	00005517          	auipc	a0,0x5
    800044d8:	c5c50513          	addi	a0,a0,-932 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	b7c080e7          	jalr	-1156(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800044e4:	0014849b          	addiw	s1,s1,1
    800044e8:	0ff4f493          	andi	s1,s1,255
    800044ec:	00500793          	li	a5,5
    800044f0:	fc97f0e3          	bgeu	a5,s1,800044b0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800044f4:	00005517          	auipc	a0,0x5
    800044f8:	cec50513          	addi	a0,a0,-788 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	b5c080e7          	jalr	-1188(ra) # 80005058 <_Z11printStringPKc>
    finishedC = true;
    80004504:	00100793          	li	a5,1
    80004508:	00007717          	auipc	a4,0x7
    8000450c:	04f708a3          	sb	a5,81(a4) # 8000b559 <_ZL9finishedC>
    thread_dispatch();
    80004510:	ffffd097          	auipc	ra,0xffffd
    80004514:	128080e7          	jalr	296(ra) # 80001638 <_Z15thread_dispatchv>
}
    80004518:	01813083          	ld	ra,24(sp)
    8000451c:	01013403          	ld	s0,16(sp)
    80004520:	00813483          	ld	s1,8(sp)
    80004524:	00013903          	ld	s2,0(sp)
    80004528:	02010113          	addi	sp,sp,32
    8000452c:	00008067          	ret

0000000080004530 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004530:	fe010113          	addi	sp,sp,-32
    80004534:	00113c23          	sd	ra,24(sp)
    80004538:	00813823          	sd	s0,16(sp)
    8000453c:	00913423          	sd	s1,8(sp)
    80004540:	01213023          	sd	s2,0(sp)
    80004544:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004548:	00000913          	li	s2,0
    8000454c:	0380006f          	j	80004584 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	0e8080e7          	jalr	232(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004558:	00148493          	addi	s1,s1,1
    8000455c:	000027b7          	lui	a5,0x2
    80004560:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004564:	0097ee63          	bltu	a5,s1,80004580 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004568:	00000713          	li	a4,0
    8000456c:	000077b7          	lui	a5,0x7
    80004570:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004574:	fce7eee3          	bltu	a5,a4,80004550 <_ZL11workerBodyBPv+0x20>
    80004578:	00170713          	addi	a4,a4,1
    8000457c:	ff1ff06f          	j	8000456c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004580:	00190913          	addi	s2,s2,1
    80004584:	00f00793          	li	a5,15
    80004588:	0527e063          	bltu	a5,s2,800045c8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	b3c50513          	addi	a0,a0,-1220 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	ac4080e7          	jalr	-1340(ra) # 80005058 <_Z11printStringPKc>
    8000459c:	00000613          	li	a2,0
    800045a0:	00a00593          	li	a1,10
    800045a4:	0009051b          	sext.w	a0,s2
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	c60080e7          	jalr	-928(ra) # 80005208 <_Z8printIntiii>
    800045b0:	00005517          	auipc	a0,0x5
    800045b4:	b8050513          	addi	a0,a0,-1152 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	aa0080e7          	jalr	-1376(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800045c0:	00000493          	li	s1,0
    800045c4:	f99ff06f          	j	8000455c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800045c8:	00005517          	auipc	a0,0x5
    800045cc:	c2850513          	addi	a0,a0,-984 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	a88080e7          	jalr	-1400(ra) # 80005058 <_Z11printStringPKc>
    finishedB = true;
    800045d8:	00100793          	li	a5,1
    800045dc:	00007717          	auipc	a4,0x7
    800045e0:	f6f70f23          	sb	a5,-130(a4) # 8000b55a <_ZL9finishedB>
    thread_dispatch();
    800045e4:	ffffd097          	auipc	ra,0xffffd
    800045e8:	054080e7          	jalr	84(ra) # 80001638 <_Z15thread_dispatchv>
}
    800045ec:	01813083          	ld	ra,24(sp)
    800045f0:	01013403          	ld	s0,16(sp)
    800045f4:	00813483          	ld	s1,8(sp)
    800045f8:	00013903          	ld	s2,0(sp)
    800045fc:	02010113          	addi	sp,sp,32
    80004600:	00008067          	ret

0000000080004604 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00113c23          	sd	ra,24(sp)
    8000460c:	00813823          	sd	s0,16(sp)
    80004610:	00913423          	sd	s1,8(sp)
    80004614:	01213023          	sd	s2,0(sp)
    80004618:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000461c:	00000913          	li	s2,0
    80004620:	0380006f          	j	80004658 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	014080e7          	jalr	20(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000462c:	00148493          	addi	s1,s1,1
    80004630:	000027b7          	lui	a5,0x2
    80004634:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004638:	0097ee63          	bltu	a5,s1,80004654 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000463c:	00000713          	li	a4,0
    80004640:	000077b7          	lui	a5,0x7
    80004644:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004648:	fce7eee3          	bltu	a5,a4,80004624 <_ZL11workerBodyAPv+0x20>
    8000464c:	00170713          	addi	a4,a4,1
    80004650:	ff1ff06f          	j	80004640 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004654:	00190913          	addi	s2,s2,1
    80004658:	00900793          	li	a5,9
    8000465c:	0527e063          	bltu	a5,s2,8000469c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004660:	00005517          	auipc	a0,0x5
    80004664:	a4850513          	addi	a0,a0,-1464 # 800090a8 <CONSOLE_STATUS+0x98>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	9f0080e7          	jalr	-1552(ra) # 80005058 <_Z11printStringPKc>
    80004670:	00000613          	li	a2,0
    80004674:	00a00593          	li	a1,10
    80004678:	0009051b          	sext.w	a0,s2
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	b8c080e7          	jalr	-1140(ra) # 80005208 <_Z8printIntiii>
    80004684:	00005517          	auipc	a0,0x5
    80004688:	aac50513          	addi	a0,a0,-1364 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	9cc080e7          	jalr	-1588(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004694:	00000493          	li	s1,0
    80004698:	f99ff06f          	j	80004630 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000469c:	00005517          	auipc	a0,0x5
    800046a0:	b4450513          	addi	a0,a0,-1212 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    800046a4:	00001097          	auipc	ra,0x1
    800046a8:	9b4080e7          	jalr	-1612(ra) # 80005058 <_Z11printStringPKc>
    finishedA = true;
    800046ac:	00100793          	li	a5,1
    800046b0:	00007717          	auipc	a4,0x7
    800046b4:	eaf705a3          	sb	a5,-341(a4) # 8000b55b <_ZL9finishedA>
}
    800046b8:	01813083          	ld	ra,24(sp)
    800046bc:	01013403          	ld	s0,16(sp)
    800046c0:	00813483          	ld	s1,8(sp)
    800046c4:	00013903          	ld	s2,0(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret

00000000800046d0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800046d0:	fd010113          	addi	sp,sp,-48
    800046d4:	02113423          	sd	ra,40(sp)
    800046d8:	02813023          	sd	s0,32(sp)
    800046dc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800046e0:	00000613          	li	a2,0
    800046e4:	00000597          	auipc	a1,0x0
    800046e8:	f2058593          	addi	a1,a1,-224 # 80004604 <_ZL11workerBodyAPv>
    800046ec:	fd040513          	addi	a0,s0,-48
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	e44080e7          	jalr	-444(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800046f8:	00005517          	auipc	a0,0x5
    800046fc:	b3850513          	addi	a0,a0,-1224 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	958080e7          	jalr	-1704(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004708:	00000613          	li	a2,0
    8000470c:	00000597          	auipc	a1,0x0
    80004710:	e2458593          	addi	a1,a1,-476 # 80004530 <_ZL11workerBodyBPv>
    80004714:	fd840513          	addi	a0,s0,-40
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	e1c080e7          	jalr	-484(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004720:	00005517          	auipc	a0,0x5
    80004724:	b2850513          	addi	a0,a0,-1240 # 80009248 <_ZZ6prtIntmE6digits+0x160>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	930080e7          	jalr	-1744(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004730:	00000613          	li	a2,0
    80004734:	00000597          	auipc	a1,0x0
    80004738:	c7c58593          	addi	a1,a1,-900 # 800043b0 <_ZL11workerBodyCPv>
    8000473c:	fe040513          	addi	a0,s0,-32
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	df4080e7          	jalr	-524(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004748:	00005517          	auipc	a0,0x5
    8000474c:	b1850513          	addi	a0,a0,-1256 # 80009260 <_ZZ6prtIntmE6digits+0x178>
    80004750:	00001097          	auipc	ra,0x1
    80004754:	908080e7          	jalr	-1784(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004758:	00000613          	li	a2,0
    8000475c:	00000597          	auipc	a1,0x0
    80004760:	b0c58593          	addi	a1,a1,-1268 # 80004268 <_ZL11workerBodyDPv>
    80004764:	fe840513          	addi	a0,s0,-24
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	dcc080e7          	jalr	-564(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004770:	00005517          	auipc	a0,0x5
    80004774:	b0850513          	addi	a0,a0,-1272 # 80009278 <_ZZ6prtIntmE6digits+0x190>
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	8e0080e7          	jalr	-1824(ra) # 80005058 <_Z11printStringPKc>
    80004780:	00c0006f          	j	8000478c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	eb4080e7          	jalr	-332(ra) # 80001638 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000478c:	00007797          	auipc	a5,0x7
    80004790:	dcf7c783          	lbu	a5,-561(a5) # 8000b55b <_ZL9finishedA>
    80004794:	fe0788e3          	beqz	a5,80004784 <_Z18Threads_C_API_testv+0xb4>
    80004798:	00007797          	auipc	a5,0x7
    8000479c:	dc27c783          	lbu	a5,-574(a5) # 8000b55a <_ZL9finishedB>
    800047a0:	fe0782e3          	beqz	a5,80004784 <_Z18Threads_C_API_testv+0xb4>
    800047a4:	00007797          	auipc	a5,0x7
    800047a8:	db57c783          	lbu	a5,-587(a5) # 8000b559 <_ZL9finishedC>
    800047ac:	fc078ce3          	beqz	a5,80004784 <_Z18Threads_C_API_testv+0xb4>
    800047b0:	00007797          	auipc	a5,0x7
    800047b4:	da87c783          	lbu	a5,-600(a5) # 8000b558 <_ZL9finishedD>
    800047b8:	fc0786e3          	beqz	a5,80004784 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800047bc:	02813083          	ld	ra,40(sp)
    800047c0:	02013403          	ld	s0,32(sp)
    800047c4:	03010113          	addi	sp,sp,48
    800047c8:	00008067          	ret

00000000800047cc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800047cc:	fd010113          	addi	sp,sp,-48
    800047d0:	02113423          	sd	ra,40(sp)
    800047d4:	02813023          	sd	s0,32(sp)
    800047d8:	00913c23          	sd	s1,24(sp)
    800047dc:	01213823          	sd	s2,16(sp)
    800047e0:	01313423          	sd	s3,8(sp)
    800047e4:	03010413          	addi	s0,sp,48
    800047e8:	00050993          	mv	s3,a0
    800047ec:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800047f0:	00000913          	li	s2,0
    800047f4:	00c0006f          	j	80004800 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	7b0080e7          	jalr	1968(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	eec080e7          	jalr	-276(ra) # 800016ec <_Z4getcv>
    80004808:	0005059b          	sext.w	a1,a0
    8000480c:	01b00793          	li	a5,27
    80004810:	02f58a63          	beq	a1,a5,80004844 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004814:	0084b503          	ld	a0,8(s1)
    80004818:	00001097          	auipc	ra,0x1
    8000481c:	c64080e7          	jalr	-924(ra) # 8000547c <_ZN9BufferCPP3putEi>
        i++;
    80004820:	0019071b          	addiw	a4,s2,1
    80004824:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004828:	0004a683          	lw	a3,0(s1)
    8000482c:	0026979b          	slliw	a5,a3,0x2
    80004830:	00d787bb          	addw	a5,a5,a3
    80004834:	0017979b          	slliw	a5,a5,0x1
    80004838:	02f767bb          	remw	a5,a4,a5
    8000483c:	fc0792e3          	bnez	a5,80004800 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004840:	fb9ff06f          	j	800047f8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004844:	00100793          	li	a5,1
    80004848:	00007717          	auipc	a4,0x7
    8000484c:	d0f72c23          	sw	a5,-744(a4) # 8000b560 <_ZL9threadEnd>
    td->buffer->put('!');
    80004850:	0209b783          	ld	a5,32(s3)
    80004854:	02100593          	li	a1,33
    80004858:	0087b503          	ld	a0,8(a5)
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	c20080e7          	jalr	-992(ra) # 8000547c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004864:	0104b503          	ld	a0,16(s1)
    80004868:	ffffe097          	auipc	ra,0xffffe
    8000486c:	800080e7          	jalr	-2048(ra) # 80002068 <_ZN9Semaphore6signalEv>
}
    80004870:	02813083          	ld	ra,40(sp)
    80004874:	02013403          	ld	s0,32(sp)
    80004878:	01813483          	ld	s1,24(sp)
    8000487c:	01013903          	ld	s2,16(sp)
    80004880:	00813983          	ld	s3,8(sp)
    80004884:	03010113          	addi	sp,sp,48
    80004888:	00008067          	ret

000000008000488c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000488c:	fe010113          	addi	sp,sp,-32
    80004890:	00113c23          	sd	ra,24(sp)
    80004894:	00813823          	sd	s0,16(sp)
    80004898:	00913423          	sd	s1,8(sp)
    8000489c:	01213023          	sd	s2,0(sp)
    800048a0:	02010413          	addi	s0,sp,32
    800048a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048a8:	00000913          	li	s2,0
    800048ac:	00c0006f          	j	800048b8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800048b0:	ffffd097          	auipc	ra,0xffffd
    800048b4:	6f8080e7          	jalr	1784(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800048b8:	00007797          	auipc	a5,0x7
    800048bc:	ca87a783          	lw	a5,-856(a5) # 8000b560 <_ZL9threadEnd>
    800048c0:	02079e63          	bnez	a5,800048fc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800048c4:	0004a583          	lw	a1,0(s1)
    800048c8:	0305859b          	addiw	a1,a1,48
    800048cc:	0084b503          	ld	a0,8(s1)
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	bac080e7          	jalr	-1108(ra) # 8000547c <_ZN9BufferCPP3putEi>
        i++;
    800048d8:	0019071b          	addiw	a4,s2,1
    800048dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048e0:	0004a683          	lw	a3,0(s1)
    800048e4:	0026979b          	slliw	a5,a3,0x2
    800048e8:	00d787bb          	addw	a5,a5,a3
    800048ec:	0017979b          	slliw	a5,a5,0x1
    800048f0:	02f767bb          	remw	a5,a4,a5
    800048f4:	fc0792e3          	bnez	a5,800048b8 <_ZN12ProducerSync8producerEPv+0x2c>
    800048f8:	fb9ff06f          	j	800048b0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800048fc:	0104b503          	ld	a0,16(s1)
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	768080e7          	jalr	1896(ra) # 80002068 <_ZN9Semaphore6signalEv>
}
    80004908:	01813083          	ld	ra,24(sp)
    8000490c:	01013403          	ld	s0,16(sp)
    80004910:	00813483          	ld	s1,8(sp)
    80004914:	00013903          	ld	s2,0(sp)
    80004918:	02010113          	addi	sp,sp,32
    8000491c:	00008067          	ret

0000000080004920 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004920:	fd010113          	addi	sp,sp,-48
    80004924:	02113423          	sd	ra,40(sp)
    80004928:	02813023          	sd	s0,32(sp)
    8000492c:	00913c23          	sd	s1,24(sp)
    80004930:	01213823          	sd	s2,16(sp)
    80004934:	01313423          	sd	s3,8(sp)
    80004938:	01413023          	sd	s4,0(sp)
    8000493c:	03010413          	addi	s0,sp,48
    80004940:	00050993          	mv	s3,a0
    80004944:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004948:	00000a13          	li	s4,0
    8000494c:	01c0006f          	j	80004968 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	658080e7          	jalr	1624(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    80004958:	0500006f          	j	800049a8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000495c:	00a00513          	li	a0,10
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	dc8080e7          	jalr	-568(ra) # 80001728 <_Z4putcc>
    while (!threadEnd) {
    80004968:	00007797          	auipc	a5,0x7
    8000496c:	bf87a783          	lw	a5,-1032(a5) # 8000b560 <_ZL9threadEnd>
    80004970:	06079263          	bnez	a5,800049d4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004974:	00893503          	ld	a0,8(s2)
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	b94080e7          	jalr	-1132(ra) # 8000550c <_ZN9BufferCPP3getEv>
        i++;
    80004980:	001a049b          	addiw	s1,s4,1
    80004984:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004988:	0ff57513          	andi	a0,a0,255
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	d9c080e7          	jalr	-612(ra) # 80001728 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004994:	00092703          	lw	a4,0(s2)
    80004998:	0027179b          	slliw	a5,a4,0x2
    8000499c:	00e787bb          	addw	a5,a5,a4
    800049a0:	02f4e7bb          	remw	a5,s1,a5
    800049a4:	fa0786e3          	beqz	a5,80004950 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800049a8:	05000793          	li	a5,80
    800049ac:	02f4e4bb          	remw	s1,s1,a5
    800049b0:	fa049ce3          	bnez	s1,80004968 <_ZN12ConsumerSync8consumerEPv+0x48>
    800049b4:	fa9ff06f          	j	8000495c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800049b8:	0209b783          	ld	a5,32(s3)
    800049bc:	0087b503          	ld	a0,8(a5)
    800049c0:	00001097          	auipc	ra,0x1
    800049c4:	b4c080e7          	jalr	-1204(ra) # 8000550c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800049c8:	0ff57513          	andi	a0,a0,255
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	72c080e7          	jalr	1836(ra) # 800020f8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800049d4:	0209b783          	ld	a5,32(s3)
    800049d8:	0087b503          	ld	a0,8(a5)
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	bbc080e7          	jalr	-1092(ra) # 80005598 <_ZN9BufferCPP6getCntEv>
    800049e4:	fca04ae3          	bgtz	a0,800049b8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800049e8:	01093503          	ld	a0,16(s2)
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	67c080e7          	jalr	1660(ra) # 80002068 <_ZN9Semaphore6signalEv>
}
    800049f4:	02813083          	ld	ra,40(sp)
    800049f8:	02013403          	ld	s0,32(sp)
    800049fc:	01813483          	ld	s1,24(sp)
    80004a00:	01013903          	ld	s2,16(sp)
    80004a04:	00813983          	ld	s3,8(sp)
    80004a08:	00013a03          	ld	s4,0(sp)
    80004a0c:	03010113          	addi	sp,sp,48
    80004a10:	00008067          	ret

0000000080004a14 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004a14:	f8010113          	addi	sp,sp,-128
    80004a18:	06113c23          	sd	ra,120(sp)
    80004a1c:	06813823          	sd	s0,112(sp)
    80004a20:	06913423          	sd	s1,104(sp)
    80004a24:	07213023          	sd	s2,96(sp)
    80004a28:	05313c23          	sd	s3,88(sp)
    80004a2c:	05413823          	sd	s4,80(sp)
    80004a30:	05513423          	sd	s5,72(sp)
    80004a34:	05613023          	sd	s6,64(sp)
    80004a38:	03713c23          	sd	s7,56(sp)
    80004a3c:	03813823          	sd	s8,48(sp)
    80004a40:	03913423          	sd	s9,40(sp)
    80004a44:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004a48:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a4c:	00004517          	auipc	a0,0x4
    80004a50:	6ac50513          	addi	a0,a0,1708 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80004a54:	00000097          	auipc	ra,0x0
    80004a58:	604080e7          	jalr	1540(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80004a5c:	01e00593          	li	a1,30
    80004a60:	f8040493          	addi	s1,s0,-128
    80004a64:	00048513          	mv	a0,s1
    80004a68:	00000097          	auipc	ra,0x0
    80004a6c:	678080e7          	jalr	1656(ra) # 800050e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a70:	00048513          	mv	a0,s1
    80004a74:	00000097          	auipc	ra,0x0
    80004a78:	744080e7          	jalr	1860(ra) # 800051b8 <_Z11stringToIntPKc>
    80004a7c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004a80:	00004517          	auipc	a0,0x4
    80004a84:	69850513          	addi	a0,a0,1688 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80004a88:	00000097          	auipc	ra,0x0
    80004a8c:	5d0080e7          	jalr	1488(ra) # 80005058 <_Z11printStringPKc>
    getString(input, 30);
    80004a90:	01e00593          	li	a1,30
    80004a94:	00048513          	mv	a0,s1
    80004a98:	00000097          	auipc	ra,0x0
    80004a9c:	648080e7          	jalr	1608(ra) # 800050e0 <_Z9getStringPci>
    n = stringToInt(input);
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	714080e7          	jalr	1812(ra) # 800051b8 <_Z11stringToIntPKc>
    80004aac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ab0:	00004517          	auipc	a0,0x4
    80004ab4:	68850513          	addi	a0,a0,1672 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80004ab8:	00000097          	auipc	ra,0x0
    80004abc:	5a0080e7          	jalr	1440(ra) # 80005058 <_Z11printStringPKc>
    80004ac0:	00000613          	li	a2,0
    80004ac4:	00a00593          	li	a1,10
    80004ac8:	00090513          	mv	a0,s2
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	73c080e7          	jalr	1852(ra) # 80005208 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ad4:	00004517          	auipc	a0,0x4
    80004ad8:	67c50513          	addi	a0,a0,1660 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	57c080e7          	jalr	1404(ra) # 80005058 <_Z11printStringPKc>
    80004ae4:	00000613          	li	a2,0
    80004ae8:	00a00593          	li	a1,10
    80004aec:	00048513          	mv	a0,s1
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	718080e7          	jalr	1816(ra) # 80005208 <_Z8printIntiii>
    printString(".\n");
    80004af8:	00004517          	auipc	a0,0x4
    80004afc:	67050513          	addi	a0,a0,1648 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	558080e7          	jalr	1368(ra) # 80005058 <_Z11printStringPKc>
    if(threadNum > n) {
    80004b08:	0324c463          	blt	s1,s2,80004b30 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004b0c:	03205c63          	blez	s2,80004b44 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004b10:	03800513          	li	a0,56
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	2cc080e7          	jalr	716(ra) # 80001de0 <_Znwm>
    80004b1c:	00050a93          	mv	s5,a0
    80004b20:	00048593          	mv	a1,s1
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	804080e7          	jalr	-2044(ra) # 80005328 <_ZN9BufferCPPC1Ei>
    80004b2c:	0300006f          	j	80004b5c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004b30:	00004517          	auipc	a0,0x4
    80004b34:	64050513          	addi	a0,a0,1600 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80004b38:	00000097          	auipc	ra,0x0
    80004b3c:	520080e7          	jalr	1312(ra) # 80005058 <_Z11printStringPKc>
        return;
    80004b40:	0140006f          	j	80004b54 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b44:	00004517          	auipc	a0,0x4
    80004b48:	66c50513          	addi	a0,a0,1644 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	50c080e7          	jalr	1292(ra) # 80005058 <_Z11printStringPKc>
        return;
    80004b54:	000b8113          	mv	sp,s7
    80004b58:	2380006f          	j	80004d90 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004b5c:	01000513          	li	a0,16
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	280080e7          	jalr	640(ra) # 80001de0 <_Znwm>
    80004b68:	00050493          	mv	s1,a0
    80004b6c:	00000593          	li	a1,0
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	4b8080e7          	jalr	1208(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    80004b78:	00007797          	auipc	a5,0x7
    80004b7c:	9e97b823          	sd	s1,-1552(a5) # 8000b568 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004b80:	00391793          	slli	a5,s2,0x3
    80004b84:	00f78793          	addi	a5,a5,15
    80004b88:	ff07f793          	andi	a5,a5,-16
    80004b8c:	40f10133          	sub	sp,sp,a5
    80004b90:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004b94:	0019071b          	addiw	a4,s2,1
    80004b98:	00171793          	slli	a5,a4,0x1
    80004b9c:	00e787b3          	add	a5,a5,a4
    80004ba0:	00379793          	slli	a5,a5,0x3
    80004ba4:	00f78793          	addi	a5,a5,15
    80004ba8:	ff07f793          	andi	a5,a5,-16
    80004bac:	40f10133          	sub	sp,sp,a5
    80004bb0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004bb4:	00191c13          	slli	s8,s2,0x1
    80004bb8:	012c07b3          	add	a5,s8,s2
    80004bbc:	00379793          	slli	a5,a5,0x3
    80004bc0:	00fa07b3          	add	a5,s4,a5
    80004bc4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004bc8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004bcc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004bd0:	02800513          	li	a0,40
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	20c080e7          	jalr	524(ra) # 80001de0 <_Znwm>
    80004bdc:	00050b13          	mv	s6,a0
    80004be0:	012c0c33          	add	s8,s8,s2
    80004be4:	003c1c13          	slli	s8,s8,0x3
    80004be8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	3e4080e7          	jalr	996(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80004bf4:	00007797          	auipc	a5,0x7
    80004bf8:	85478793          	addi	a5,a5,-1964 # 8000b448 <_ZTV12ConsumerSync+0x10>
    80004bfc:	00fb3023          	sd	a5,0(s6)
    80004c00:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004c04:	000b0513          	mv	a0,s6
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	36c080e7          	jalr	876(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c10:	00000493          	li	s1,0
    80004c14:	0380006f          	j	80004c4c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c18:	00007797          	auipc	a5,0x7
    80004c1c:	80878793          	addi	a5,a5,-2040 # 8000b420 <_ZTV12ProducerSync+0x10>
    80004c20:	00fcb023          	sd	a5,0(s9)
    80004c24:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004c28:	00349793          	slli	a5,s1,0x3
    80004c2c:	00f987b3          	add	a5,s3,a5
    80004c30:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004c34:	00349793          	slli	a5,s1,0x3
    80004c38:	00f987b3          	add	a5,s3,a5
    80004c3c:	0007b503          	ld	a0,0(a5)
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	334080e7          	jalr	820(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c48:	0014849b          	addiw	s1,s1,1
    80004c4c:	0b24d063          	bge	s1,s2,80004cec <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004c50:	00149793          	slli	a5,s1,0x1
    80004c54:	009787b3          	add	a5,a5,s1
    80004c58:	00379793          	slli	a5,a5,0x3
    80004c5c:	00fa07b3          	add	a5,s4,a5
    80004c60:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004c64:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004c68:	00007717          	auipc	a4,0x7
    80004c6c:	90073703          	ld	a4,-1792(a4) # 8000b568 <_ZL10waitForAll>
    80004c70:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004c74:	02905863          	blez	s1,80004ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004c78:	02800513          	li	a0,40
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	164080e7          	jalr	356(ra) # 80001de0 <_Znwm>
    80004c84:	00050c93          	mv	s9,a0
    80004c88:	00149c13          	slli	s8,s1,0x1
    80004c8c:	009c0c33          	add	s8,s8,s1
    80004c90:	003c1c13          	slli	s8,s8,0x3
    80004c94:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	338080e7          	jalr	824(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80004ca0:	f79ff06f          	j	80004c18 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ca4:	02800513          	li	a0,40
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	138080e7          	jalr	312(ra) # 80001de0 <_Znwm>
    80004cb0:	00050c93          	mv	s9,a0
    80004cb4:	00149c13          	slli	s8,s1,0x1
    80004cb8:	009c0c33          	add	s8,s8,s1
    80004cbc:	003c1c13          	slli	s8,s8,0x3
    80004cc0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004cc4:	ffffd097          	auipc	ra,0xffffd
    80004cc8:	30c080e7          	jalr	780(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80004ccc:	00006797          	auipc	a5,0x6
    80004cd0:	72c78793          	addi	a5,a5,1836 # 8000b3f8 <_ZTV16ProducerKeyboard+0x10>
    80004cd4:	00fcb023          	sd	a5,0(s9)
    80004cd8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004cdc:	00349793          	slli	a5,s1,0x3
    80004ce0:	00f987b3          	add	a5,s3,a5
    80004ce4:	0197b023          	sd	s9,0(a5)
    80004ce8:	f4dff06f          	j	80004c34 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	2bc080e7          	jalr	700(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004cf4:	00000493          	li	s1,0
    80004cf8:	00994e63          	blt	s2,s1,80004d14 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004cfc:	00007517          	auipc	a0,0x7
    80004d00:	86c53503          	ld	a0,-1940(a0) # 8000b568 <_ZL10waitForAll>
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	348080e7          	jalr	840(ra) # 8000204c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d0c:	0014849b          	addiw	s1,s1,1
    80004d10:	fe9ff06f          	j	80004cf8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004d14:	00000493          	li	s1,0
    80004d18:	0080006f          	j	80004d20 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004d1c:	0014849b          	addiw	s1,s1,1
    80004d20:	0324d263          	bge	s1,s2,80004d44 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004d24:	00349793          	slli	a5,s1,0x3
    80004d28:	00f987b3          	add	a5,s3,a5
    80004d2c:	0007b503          	ld	a0,0(a5)
    80004d30:	fe0506e3          	beqz	a0,80004d1c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004d34:	00053783          	ld	a5,0(a0)
    80004d38:	0087b783          	ld	a5,8(a5)
    80004d3c:	000780e7          	jalr	a5
    80004d40:	fddff06f          	j	80004d1c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004d44:	000b0a63          	beqz	s6,80004d58 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004d48:	000b3783          	ld	a5,0(s6)
    80004d4c:	0087b783          	ld	a5,8(a5)
    80004d50:	000b0513          	mv	a0,s6
    80004d54:	000780e7          	jalr	a5
    delete waitForAll;
    80004d58:	00007517          	auipc	a0,0x7
    80004d5c:	81053503          	ld	a0,-2032(a0) # 8000b568 <_ZL10waitForAll>
    80004d60:	00050863          	beqz	a0,80004d70 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004d64:	00053783          	ld	a5,0(a0)
    80004d68:	0087b783          	ld	a5,8(a5)
    80004d6c:	000780e7          	jalr	a5
    delete buffer;
    80004d70:	000a8e63          	beqz	s5,80004d8c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004d74:	000a8513          	mv	a0,s5
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	8a8080e7          	jalr	-1880(ra) # 80005620 <_ZN9BufferCPPD1Ev>
    80004d80:	000a8513          	mv	a0,s5
    80004d84:	ffffd097          	auipc	ra,0xffffd
    80004d88:	0ac080e7          	jalr	172(ra) # 80001e30 <_ZdlPv>
    80004d8c:	000b8113          	mv	sp,s7

}
    80004d90:	f8040113          	addi	sp,s0,-128
    80004d94:	07813083          	ld	ra,120(sp)
    80004d98:	07013403          	ld	s0,112(sp)
    80004d9c:	06813483          	ld	s1,104(sp)
    80004da0:	06013903          	ld	s2,96(sp)
    80004da4:	05813983          	ld	s3,88(sp)
    80004da8:	05013a03          	ld	s4,80(sp)
    80004dac:	04813a83          	ld	s5,72(sp)
    80004db0:	04013b03          	ld	s6,64(sp)
    80004db4:	03813b83          	ld	s7,56(sp)
    80004db8:	03013c03          	ld	s8,48(sp)
    80004dbc:	02813c83          	ld	s9,40(sp)
    80004dc0:	08010113          	addi	sp,sp,128
    80004dc4:	00008067          	ret
    80004dc8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004dcc:	000a8513          	mv	a0,s5
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	060080e7          	jalr	96(ra) # 80001e30 <_ZdlPv>
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00008097          	auipc	ra,0x8
    80004de0:	86c080e7          	jalr	-1940(ra) # 8000c648 <_Unwind_Resume>
    80004de4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004de8:	00048513          	mv	a0,s1
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	044080e7          	jalr	68(ra) # 80001e30 <_ZdlPv>
    80004df4:	00090513          	mv	a0,s2
    80004df8:	00008097          	auipc	ra,0x8
    80004dfc:	850080e7          	jalr	-1968(ra) # 8000c648 <_Unwind_Resume>
    80004e00:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004e04:	000b0513          	mv	a0,s6
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	028080e7          	jalr	40(ra) # 80001e30 <_ZdlPv>
    80004e10:	00048513          	mv	a0,s1
    80004e14:	00008097          	auipc	ra,0x8
    80004e18:	834080e7          	jalr	-1996(ra) # 8000c648 <_Unwind_Resume>
    80004e1c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004e20:	000c8513          	mv	a0,s9
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	00c080e7          	jalr	12(ra) # 80001e30 <_ZdlPv>
    80004e2c:	00048513          	mv	a0,s1
    80004e30:	00008097          	auipc	ra,0x8
    80004e34:	818080e7          	jalr	-2024(ra) # 8000c648 <_Unwind_Resume>
    80004e38:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004e3c:	000c8513          	mv	a0,s9
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	ff0080e7          	jalr	-16(ra) # 80001e30 <_ZdlPv>
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00007097          	auipc	ra,0x7
    80004e50:	7fc080e7          	jalr	2044(ra) # 8000c648 <_Unwind_Resume>

0000000080004e54 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00113423          	sd	ra,8(sp)
    80004e5c:	00813023          	sd	s0,0(sp)
    80004e60:	01010413          	addi	s0,sp,16
    80004e64:	00006797          	auipc	a5,0x6
    80004e68:	5e478793          	addi	a5,a5,1508 # 8000b448 <_ZTV12ConsumerSync+0x10>
    80004e6c:	00f53023          	sd	a5,0(a0)
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	010080e7          	jalr	16(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004e78:	00813083          	ld	ra,8(sp)
    80004e7c:	00013403          	ld	s0,0(sp)
    80004e80:	01010113          	addi	sp,sp,16
    80004e84:	00008067          	ret

0000000080004e88 <_ZN12ConsumerSyncD0Ev>:
    80004e88:	fe010113          	addi	sp,sp,-32
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	02010413          	addi	s0,sp,32
    80004e9c:	00050493          	mv	s1,a0
    80004ea0:	00006797          	auipc	a5,0x6
    80004ea4:	5a878793          	addi	a5,a5,1448 # 8000b448 <_ZTV12ConsumerSync+0x10>
    80004ea8:	00f53023          	sd	a5,0(a0)
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	fd4080e7          	jalr	-44(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004eb4:	00048513          	mv	a0,s1
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	f78080e7          	jalr	-136(ra) # 80001e30 <_ZdlPv>
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004ed4:	ff010113          	addi	sp,sp,-16
    80004ed8:	00113423          	sd	ra,8(sp)
    80004edc:	00813023          	sd	s0,0(sp)
    80004ee0:	01010413          	addi	s0,sp,16
    80004ee4:	00006797          	auipc	a5,0x6
    80004ee8:	53c78793          	addi	a5,a5,1340 # 8000b420 <_ZTV12ProducerSync+0x10>
    80004eec:	00f53023          	sd	a5,0(a0)
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	f90080e7          	jalr	-112(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004ef8:	00813083          	ld	ra,8(sp)
    80004efc:	00013403          	ld	s0,0(sp)
    80004f00:	01010113          	addi	sp,sp,16
    80004f04:	00008067          	ret

0000000080004f08 <_ZN12ProducerSyncD0Ev>:
    80004f08:	fe010113          	addi	sp,sp,-32
    80004f0c:	00113c23          	sd	ra,24(sp)
    80004f10:	00813823          	sd	s0,16(sp)
    80004f14:	00913423          	sd	s1,8(sp)
    80004f18:	02010413          	addi	s0,sp,32
    80004f1c:	00050493          	mv	s1,a0
    80004f20:	00006797          	auipc	a5,0x6
    80004f24:	50078793          	addi	a5,a5,1280 # 8000b420 <_ZTV12ProducerSync+0x10>
    80004f28:	00f53023          	sd	a5,0(a0)
    80004f2c:	ffffd097          	auipc	ra,0xffffd
    80004f30:	f54080e7          	jalr	-172(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004f34:	00048513          	mv	a0,s1
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	ef8080e7          	jalr	-264(ra) # 80001e30 <_ZdlPv>
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret

0000000080004f54 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004f54:	ff010113          	addi	sp,sp,-16
    80004f58:	00113423          	sd	ra,8(sp)
    80004f5c:	00813023          	sd	s0,0(sp)
    80004f60:	01010413          	addi	s0,sp,16
    80004f64:	00006797          	auipc	a5,0x6
    80004f68:	49478793          	addi	a5,a5,1172 # 8000b3f8 <_ZTV16ProducerKeyboard+0x10>
    80004f6c:	00f53023          	sd	a5,0(a0)
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	f10080e7          	jalr	-240(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004f78:	00813083          	ld	ra,8(sp)
    80004f7c:	00013403          	ld	s0,0(sp)
    80004f80:	01010113          	addi	sp,sp,16
    80004f84:	00008067          	ret

0000000080004f88 <_ZN16ProducerKeyboardD0Ev>:
    80004f88:	fe010113          	addi	sp,sp,-32
    80004f8c:	00113c23          	sd	ra,24(sp)
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00913423          	sd	s1,8(sp)
    80004f98:	02010413          	addi	s0,sp,32
    80004f9c:	00050493          	mv	s1,a0
    80004fa0:	00006797          	auipc	a5,0x6
    80004fa4:	45878793          	addi	a5,a5,1112 # 8000b3f8 <_ZTV16ProducerKeyboard+0x10>
    80004fa8:	00f53023          	sd	a5,0(a0)
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	ed4080e7          	jalr	-300(ra) # 80001e80 <_ZN6ThreadD1Ev>
    80004fb4:	00048513          	mv	a0,s1
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	e78080e7          	jalr	-392(ra) # 80001e30 <_ZdlPv>
    80004fc0:	01813083          	ld	ra,24(sp)
    80004fc4:	01013403          	ld	s0,16(sp)
    80004fc8:	00813483          	ld	s1,8(sp)
    80004fcc:	02010113          	addi	sp,sp,32
    80004fd0:	00008067          	ret

0000000080004fd4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004fd4:	ff010113          	addi	sp,sp,-16
    80004fd8:	00113423          	sd	ra,8(sp)
    80004fdc:	00813023          	sd	s0,0(sp)
    80004fe0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004fe4:	02053583          	ld	a1,32(a0)
    80004fe8:	fffff097          	auipc	ra,0xfffff
    80004fec:	7e4080e7          	jalr	2020(ra) # 800047cc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004ff0:	00813083          	ld	ra,8(sp)
    80004ff4:	00013403          	ld	s0,0(sp)
    80004ff8:	01010113          	addi	sp,sp,16
    80004ffc:	00008067          	ret

0000000080005000 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005000:	ff010113          	addi	sp,sp,-16
    80005004:	00113423          	sd	ra,8(sp)
    80005008:	00813023          	sd	s0,0(sp)
    8000500c:	01010413          	addi	s0,sp,16
        producer(td);
    80005010:	02053583          	ld	a1,32(a0)
    80005014:	00000097          	auipc	ra,0x0
    80005018:	878080e7          	jalr	-1928(ra) # 8000488c <_ZN12ProducerSync8producerEPv>
    }
    8000501c:	00813083          	ld	ra,8(sp)
    80005020:	00013403          	ld	s0,0(sp)
    80005024:	01010113          	addi	sp,sp,16
    80005028:	00008067          	ret

000000008000502c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000502c:	ff010113          	addi	sp,sp,-16
    80005030:	00113423          	sd	ra,8(sp)
    80005034:	00813023          	sd	s0,0(sp)
    80005038:	01010413          	addi	s0,sp,16
        consumer(td);
    8000503c:	02053583          	ld	a1,32(a0)
    80005040:	00000097          	auipc	ra,0x0
    80005044:	8e0080e7          	jalr	-1824(ra) # 80004920 <_ZN12ConsumerSync8consumerEPv>
    }
    80005048:	00813083          	ld	ra,8(sp)
    8000504c:	00013403          	ld	s0,0(sp)
    80005050:	01010113          	addi	sp,sp,16
    80005054:	00008067          	ret

0000000080005058 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	02010413          	addi	s0,sp,32
    8000506c:	00050493          	mv	s1,a0
    LOCK();
    80005070:	00100613          	li	a2,1
    80005074:	00000593          	li	a1,0
    80005078:	00006517          	auipc	a0,0x6
    8000507c:	4f850513          	addi	a0,a0,1272 # 8000b570 <lockPrint>
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	3dc080e7          	jalr	988(ra) # 8000145c <copy_and_swap>
    80005088:	00050863          	beqz	a0,80005098 <_Z11printStringPKc+0x40>
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	5ac080e7          	jalr	1452(ra) # 80001638 <_Z15thread_dispatchv>
    80005094:	fddff06f          	j	80005070 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005098:	0004c503          	lbu	a0,0(s1)
    8000509c:	00050a63          	beqz	a0,800050b0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	688080e7          	jalr	1672(ra) # 80001728 <_Z4putcc>
        string++;
    800050a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800050ac:	fedff06f          	j	80005098 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800050b0:	00000613          	li	a2,0
    800050b4:	00100593          	li	a1,1
    800050b8:	00006517          	auipc	a0,0x6
    800050bc:	4b850513          	addi	a0,a0,1208 # 8000b570 <lockPrint>
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	39c080e7          	jalr	924(ra) # 8000145c <copy_and_swap>
    800050c8:	fe0514e3          	bnez	a0,800050b0 <_Z11printStringPKc+0x58>
}
    800050cc:	01813083          	ld	ra,24(sp)
    800050d0:	01013403          	ld	s0,16(sp)
    800050d4:	00813483          	ld	s1,8(sp)
    800050d8:	02010113          	addi	sp,sp,32
    800050dc:	00008067          	ret

00000000800050e0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800050e0:	fd010113          	addi	sp,sp,-48
    800050e4:	02113423          	sd	ra,40(sp)
    800050e8:	02813023          	sd	s0,32(sp)
    800050ec:	00913c23          	sd	s1,24(sp)
    800050f0:	01213823          	sd	s2,16(sp)
    800050f4:	01313423          	sd	s3,8(sp)
    800050f8:	01413023          	sd	s4,0(sp)
    800050fc:	03010413          	addi	s0,sp,48
    80005100:	00050993          	mv	s3,a0
    80005104:	00058a13          	mv	s4,a1
    LOCK();
    80005108:	00100613          	li	a2,1
    8000510c:	00000593          	li	a1,0
    80005110:	00006517          	auipc	a0,0x6
    80005114:	46050513          	addi	a0,a0,1120 # 8000b570 <lockPrint>
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	344080e7          	jalr	836(ra) # 8000145c <copy_and_swap>
    80005120:	00050863          	beqz	a0,80005130 <_Z9getStringPci+0x50>
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	514080e7          	jalr	1300(ra) # 80001638 <_Z15thread_dispatchv>
    8000512c:	fddff06f          	j	80005108 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005130:	00000913          	li	s2,0
    80005134:	00090493          	mv	s1,s2
    80005138:	0019091b          	addiw	s2,s2,1
    8000513c:	03495a63          	bge	s2,s4,80005170 <_Z9getStringPci+0x90>
        cc = getc();
    80005140:	ffffc097          	auipc	ra,0xffffc
    80005144:	5ac080e7          	jalr	1452(ra) # 800016ec <_Z4getcv>
        if(cc < 1)
    80005148:	02050463          	beqz	a0,80005170 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000514c:	009984b3          	add	s1,s3,s1
    80005150:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005154:	00a00793          	li	a5,10
    80005158:	00f50a63          	beq	a0,a5,8000516c <_Z9getStringPci+0x8c>
    8000515c:	00d00793          	li	a5,13
    80005160:	fcf51ae3          	bne	a0,a5,80005134 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005164:	00090493          	mv	s1,s2
    80005168:	0080006f          	j	80005170 <_Z9getStringPci+0x90>
    8000516c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005170:	009984b3          	add	s1,s3,s1
    80005174:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005178:	00000613          	li	a2,0
    8000517c:	00100593          	li	a1,1
    80005180:	00006517          	auipc	a0,0x6
    80005184:	3f050513          	addi	a0,a0,1008 # 8000b570 <lockPrint>
    80005188:	ffffc097          	auipc	ra,0xffffc
    8000518c:	2d4080e7          	jalr	724(ra) # 8000145c <copy_and_swap>
    80005190:	fe0514e3          	bnez	a0,80005178 <_Z9getStringPci+0x98>
    return buf;
}
    80005194:	00098513          	mv	a0,s3
    80005198:	02813083          	ld	ra,40(sp)
    8000519c:	02013403          	ld	s0,32(sp)
    800051a0:	01813483          	ld	s1,24(sp)
    800051a4:	01013903          	ld	s2,16(sp)
    800051a8:	00813983          	ld	s3,8(sp)
    800051ac:	00013a03          	ld	s4,0(sp)
    800051b0:	03010113          	addi	sp,sp,48
    800051b4:	00008067          	ret

00000000800051b8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00813423          	sd	s0,8(sp)
    800051c0:	01010413          	addi	s0,sp,16
    800051c4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800051c8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800051cc:	0006c603          	lbu	a2,0(a3)
    800051d0:	fd06071b          	addiw	a4,a2,-48
    800051d4:	0ff77713          	andi	a4,a4,255
    800051d8:	00900793          	li	a5,9
    800051dc:	02e7e063          	bltu	a5,a4,800051fc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800051e0:	0025179b          	slliw	a5,a0,0x2
    800051e4:	00a787bb          	addw	a5,a5,a0
    800051e8:	0017979b          	slliw	a5,a5,0x1
    800051ec:	00168693          	addi	a3,a3,1
    800051f0:	00c787bb          	addw	a5,a5,a2
    800051f4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800051f8:	fd5ff06f          	j	800051cc <_Z11stringToIntPKc+0x14>
    return n;
}
    800051fc:	00813403          	ld	s0,8(sp)
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret

0000000080005208 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005208:	fc010113          	addi	sp,sp,-64
    8000520c:	02113c23          	sd	ra,56(sp)
    80005210:	02813823          	sd	s0,48(sp)
    80005214:	02913423          	sd	s1,40(sp)
    80005218:	03213023          	sd	s2,32(sp)
    8000521c:	01313c23          	sd	s3,24(sp)
    80005220:	04010413          	addi	s0,sp,64
    80005224:	00050493          	mv	s1,a0
    80005228:	00058913          	mv	s2,a1
    8000522c:	00060993          	mv	s3,a2
    LOCK();
    80005230:	00100613          	li	a2,1
    80005234:	00000593          	li	a1,0
    80005238:	00006517          	auipc	a0,0x6
    8000523c:	33850513          	addi	a0,a0,824 # 8000b570 <lockPrint>
    80005240:	ffffc097          	auipc	ra,0xffffc
    80005244:	21c080e7          	jalr	540(ra) # 8000145c <copy_and_swap>
    80005248:	00050863          	beqz	a0,80005258 <_Z8printIntiii+0x50>
    8000524c:	ffffc097          	auipc	ra,0xffffc
    80005250:	3ec080e7          	jalr	1004(ra) # 80001638 <_Z15thread_dispatchv>
    80005254:	fddff06f          	j	80005230 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005258:	00098463          	beqz	s3,80005260 <_Z8printIntiii+0x58>
    8000525c:	0804c463          	bltz	s1,800052e4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005260:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005264:	00000593          	li	a1,0
    }

    i = 0;
    80005268:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000526c:	0009079b          	sext.w	a5,s2
    80005270:	0325773b          	remuw	a4,a0,s2
    80005274:	00048613          	mv	a2,s1
    80005278:	0014849b          	addiw	s1,s1,1
    8000527c:	02071693          	slli	a3,a4,0x20
    80005280:	0206d693          	srli	a3,a3,0x20
    80005284:	00006717          	auipc	a4,0x6
    80005288:	1dc70713          	addi	a4,a4,476 # 8000b460 <digits>
    8000528c:	00d70733          	add	a4,a4,a3
    80005290:	00074683          	lbu	a3,0(a4)
    80005294:	fd040713          	addi	a4,s0,-48
    80005298:	00c70733          	add	a4,a4,a2
    8000529c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800052a0:	0005071b          	sext.w	a4,a0
    800052a4:	0325553b          	divuw	a0,a0,s2
    800052a8:	fcf772e3          	bgeu	a4,a5,8000526c <_Z8printIntiii+0x64>
    if(neg)
    800052ac:	00058c63          	beqz	a1,800052c4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800052b0:	fd040793          	addi	a5,s0,-48
    800052b4:	009784b3          	add	s1,a5,s1
    800052b8:	02d00793          	li	a5,45
    800052bc:	fef48823          	sb	a5,-16(s1)
    800052c0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800052c4:	fff4849b          	addiw	s1,s1,-1
    800052c8:	0204c463          	bltz	s1,800052f0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800052cc:	fd040793          	addi	a5,s0,-48
    800052d0:	009787b3          	add	a5,a5,s1
    800052d4:	ff07c503          	lbu	a0,-16(a5)
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	450080e7          	jalr	1104(ra) # 80001728 <_Z4putcc>
    800052e0:	fe5ff06f          	j	800052c4 <_Z8printIntiii+0xbc>
        x = -xx;
    800052e4:	4090053b          	negw	a0,s1
        neg = 1;
    800052e8:	00100593          	li	a1,1
        x = -xx;
    800052ec:	f7dff06f          	j	80005268 <_Z8printIntiii+0x60>

    UNLOCK();
    800052f0:	00000613          	li	a2,0
    800052f4:	00100593          	li	a1,1
    800052f8:	00006517          	auipc	a0,0x6
    800052fc:	27850513          	addi	a0,a0,632 # 8000b570 <lockPrint>
    80005300:	ffffc097          	auipc	ra,0xffffc
    80005304:	15c080e7          	jalr	348(ra) # 8000145c <copy_and_swap>
    80005308:	fe0514e3          	bnez	a0,800052f0 <_Z8printIntiii+0xe8>
    8000530c:	03813083          	ld	ra,56(sp)
    80005310:	03013403          	ld	s0,48(sp)
    80005314:	02813483          	ld	s1,40(sp)
    80005318:	02013903          	ld	s2,32(sp)
    8000531c:	01813983          	ld	s3,24(sp)
    80005320:	04010113          	addi	sp,sp,64
    80005324:	00008067          	ret

0000000080005328 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005328:	fd010113          	addi	sp,sp,-48
    8000532c:	02113423          	sd	ra,40(sp)
    80005330:	02813023          	sd	s0,32(sp)
    80005334:	00913c23          	sd	s1,24(sp)
    80005338:	01213823          	sd	s2,16(sp)
    8000533c:	01313423          	sd	s3,8(sp)
    80005340:	03010413          	addi	s0,sp,48
    80005344:	00050493          	mv	s1,a0
    80005348:	00058913          	mv	s2,a1
    8000534c:	0015879b          	addiw	a5,a1,1
    80005350:	0007851b          	sext.w	a0,a5
    80005354:	00f4a023          	sw	a5,0(s1)
    80005358:	0004a823          	sw	zero,16(s1)
    8000535c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005360:	00251513          	slli	a0,a0,0x2
    80005364:	ffffc097          	auipc	ra,0xffffc
    80005368:	150080e7          	jalr	336(ra) # 800014b4 <_Z9mem_allocm>
    8000536c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005370:	01000513          	li	a0,16
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	a6c080e7          	jalr	-1428(ra) # 80001de0 <_Znwm>
    8000537c:	00050993          	mv	s3,a0
    80005380:	00000593          	li	a1,0
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	ca4080e7          	jalr	-860(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    8000538c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005390:	01000513          	li	a0,16
    80005394:	ffffd097          	auipc	ra,0xffffd
    80005398:	a4c080e7          	jalr	-1460(ra) # 80001de0 <_Znwm>
    8000539c:	00050993          	mv	s3,a0
    800053a0:	00090593          	mv	a1,s2
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	c84080e7          	jalr	-892(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    800053ac:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800053b0:	01000513          	li	a0,16
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	a2c080e7          	jalr	-1492(ra) # 80001de0 <_Znwm>
    800053bc:	00050913          	mv	s2,a0
    800053c0:	00100593          	li	a1,1
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	c64080e7          	jalr	-924(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    800053cc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800053d0:	01000513          	li	a0,16
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	a0c080e7          	jalr	-1524(ra) # 80001de0 <_Znwm>
    800053dc:	00050913          	mv	s2,a0
    800053e0:	00100593          	li	a1,1
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	c44080e7          	jalr	-956(ra) # 80002028 <_ZN9SemaphoreC1Ej>
    800053ec:	0324b823          	sd	s2,48(s1)
}
    800053f0:	02813083          	ld	ra,40(sp)
    800053f4:	02013403          	ld	s0,32(sp)
    800053f8:	01813483          	ld	s1,24(sp)
    800053fc:	01013903          	ld	s2,16(sp)
    80005400:	00813983          	ld	s3,8(sp)
    80005404:	03010113          	addi	sp,sp,48
    80005408:	00008067          	ret
    8000540c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005410:	00098513          	mv	a0,s3
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	a1c080e7          	jalr	-1508(ra) # 80001e30 <_ZdlPv>
    8000541c:	00048513          	mv	a0,s1
    80005420:	00007097          	auipc	ra,0x7
    80005424:	228080e7          	jalr	552(ra) # 8000c648 <_Unwind_Resume>
    80005428:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000542c:	00098513          	mv	a0,s3
    80005430:	ffffd097          	auipc	ra,0xffffd
    80005434:	a00080e7          	jalr	-1536(ra) # 80001e30 <_ZdlPv>
    80005438:	00048513          	mv	a0,s1
    8000543c:	00007097          	auipc	ra,0x7
    80005440:	20c080e7          	jalr	524(ra) # 8000c648 <_Unwind_Resume>
    80005444:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005448:	00090513          	mv	a0,s2
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	9e4080e7          	jalr	-1564(ra) # 80001e30 <_ZdlPv>
    80005454:	00048513          	mv	a0,s1
    80005458:	00007097          	auipc	ra,0x7
    8000545c:	1f0080e7          	jalr	496(ra) # 8000c648 <_Unwind_Resume>
    80005460:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005464:	00090513          	mv	a0,s2
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	9c8080e7          	jalr	-1592(ra) # 80001e30 <_ZdlPv>
    80005470:	00048513          	mv	a0,s1
    80005474:	00007097          	auipc	ra,0x7
    80005478:	1d4080e7          	jalr	468(ra) # 8000c648 <_Unwind_Resume>

000000008000547c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00113c23          	sd	ra,24(sp)
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	01213023          	sd	s2,0(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	00050493          	mv	s1,a0
    80005498:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000549c:	01853503          	ld	a0,24(a0)
    800054a0:	ffffd097          	auipc	ra,0xffffd
    800054a4:	bac080e7          	jalr	-1108(ra) # 8000204c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800054a8:	0304b503          	ld	a0,48(s1)
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	ba0080e7          	jalr	-1120(ra) # 8000204c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800054b4:	0084b783          	ld	a5,8(s1)
    800054b8:	0144a703          	lw	a4,20(s1)
    800054bc:	00271713          	slli	a4,a4,0x2
    800054c0:	00e787b3          	add	a5,a5,a4
    800054c4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800054c8:	0144a783          	lw	a5,20(s1)
    800054cc:	0017879b          	addiw	a5,a5,1
    800054d0:	0004a703          	lw	a4,0(s1)
    800054d4:	02e7e7bb          	remw	a5,a5,a4
    800054d8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800054dc:	0304b503          	ld	a0,48(s1)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	b88080e7          	jalr	-1144(ra) # 80002068 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800054e8:	0204b503          	ld	a0,32(s1)
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	b7c080e7          	jalr	-1156(ra) # 80002068 <_ZN9Semaphore6signalEv>

}
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	00013903          	ld	s2,0(sp)
    80005504:	02010113          	addi	sp,sp,32
    80005508:	00008067          	ret

000000008000550c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00113c23          	sd	ra,24(sp)
    80005514:	00813823          	sd	s0,16(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	01213023          	sd	s2,0(sp)
    80005520:	02010413          	addi	s0,sp,32
    80005524:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005528:	02053503          	ld	a0,32(a0)
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	b20080e7          	jalr	-1248(ra) # 8000204c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005534:	0284b503          	ld	a0,40(s1)
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	b14080e7          	jalr	-1260(ra) # 8000204c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005540:	0084b703          	ld	a4,8(s1)
    80005544:	0104a783          	lw	a5,16(s1)
    80005548:	00279693          	slli	a3,a5,0x2
    8000554c:	00d70733          	add	a4,a4,a3
    80005550:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005554:	0017879b          	addiw	a5,a5,1
    80005558:	0004a703          	lw	a4,0(s1)
    8000555c:	02e7e7bb          	remw	a5,a5,a4
    80005560:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005564:	0284b503          	ld	a0,40(s1)
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	b00080e7          	jalr	-1280(ra) # 80002068 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005570:	0184b503          	ld	a0,24(s1)
    80005574:	ffffd097          	auipc	ra,0xffffd
    80005578:	af4080e7          	jalr	-1292(ra) # 80002068 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000557c:	00090513          	mv	a0,s2
    80005580:	01813083          	ld	ra,24(sp)
    80005584:	01013403          	ld	s0,16(sp)
    80005588:	00813483          	ld	s1,8(sp)
    8000558c:	00013903          	ld	s2,0(sp)
    80005590:	02010113          	addi	sp,sp,32
    80005594:	00008067          	ret

0000000080005598 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005598:	fe010113          	addi	sp,sp,-32
    8000559c:	00113c23          	sd	ra,24(sp)
    800055a0:	00813823          	sd	s0,16(sp)
    800055a4:	00913423          	sd	s1,8(sp)
    800055a8:	01213023          	sd	s2,0(sp)
    800055ac:	02010413          	addi	s0,sp,32
    800055b0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800055b4:	02853503          	ld	a0,40(a0)
    800055b8:	ffffd097          	auipc	ra,0xffffd
    800055bc:	a94080e7          	jalr	-1388(ra) # 8000204c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800055c0:	0304b503          	ld	a0,48(s1)
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	a88080e7          	jalr	-1400(ra) # 8000204c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800055cc:	0144a783          	lw	a5,20(s1)
    800055d0:	0104a903          	lw	s2,16(s1)
    800055d4:	0327ce63          	blt	a5,s2,80005610 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800055d8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800055dc:	0304b503          	ld	a0,48(s1)
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	a88080e7          	jalr	-1400(ra) # 80002068 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800055e8:	0284b503          	ld	a0,40(s1)
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	a7c080e7          	jalr	-1412(ra) # 80002068 <_ZN9Semaphore6signalEv>

    return ret;
}
    800055f4:	00090513          	mv	a0,s2
    800055f8:	01813083          	ld	ra,24(sp)
    800055fc:	01013403          	ld	s0,16(sp)
    80005600:	00813483          	ld	s1,8(sp)
    80005604:	00013903          	ld	s2,0(sp)
    80005608:	02010113          	addi	sp,sp,32
    8000560c:	00008067          	ret
        ret = cap - head + tail;
    80005610:	0004a703          	lw	a4,0(s1)
    80005614:	4127093b          	subw	s2,a4,s2
    80005618:	00f9093b          	addw	s2,s2,a5
    8000561c:	fc1ff06f          	j	800055dc <_ZN9BufferCPP6getCntEv+0x44>

0000000080005620 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00913423          	sd	s1,8(sp)
    80005630:	02010413          	addi	s0,sp,32
    80005634:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005638:	00a00513          	li	a0,10
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	abc080e7          	jalr	-1348(ra) # 800020f8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005644:	00004517          	auipc	a0,0x4
    80005648:	c4c50513          	addi	a0,a0,-948 # 80009290 <_ZZ6prtIntmE6digits+0x1a8>
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	a0c080e7          	jalr	-1524(ra) # 80005058 <_Z11printStringPKc>
    while (getCnt()) {
    80005654:	00048513          	mv	a0,s1
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	f40080e7          	jalr	-192(ra) # 80005598 <_ZN9BufferCPP6getCntEv>
    80005660:	02050c63          	beqz	a0,80005698 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005664:	0084b783          	ld	a5,8(s1)
    80005668:	0104a703          	lw	a4,16(s1)
    8000566c:	00271713          	slli	a4,a4,0x2
    80005670:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005674:	0007c503          	lbu	a0,0(a5)
    80005678:	ffffd097          	auipc	ra,0xffffd
    8000567c:	a80080e7          	jalr	-1408(ra) # 800020f8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005680:	0104a783          	lw	a5,16(s1)
    80005684:	0017879b          	addiw	a5,a5,1
    80005688:	0004a703          	lw	a4,0(s1)
    8000568c:	02e7e7bb          	remw	a5,a5,a4
    80005690:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005694:	fc1ff06f          	j	80005654 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005698:	02100513          	li	a0,33
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	a5c080e7          	jalr	-1444(ra) # 800020f8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800056a4:	00a00513          	li	a0,10
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	a50080e7          	jalr	-1456(ra) # 800020f8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800056b0:	0084b503          	ld	a0,8(s1)
    800056b4:	ffffc097          	auipc	ra,0xffffc
    800056b8:	e40080e7          	jalr	-448(ra) # 800014f4 <_Z8mem_freePv>
    delete itemAvailable;
    800056bc:	0204b503          	ld	a0,32(s1)
    800056c0:	00050863          	beqz	a0,800056d0 <_ZN9BufferCPPD1Ev+0xb0>
    800056c4:	00053783          	ld	a5,0(a0)
    800056c8:	0087b783          	ld	a5,8(a5)
    800056cc:	000780e7          	jalr	a5
    delete spaceAvailable;
    800056d0:	0184b503          	ld	a0,24(s1)
    800056d4:	00050863          	beqz	a0,800056e4 <_ZN9BufferCPPD1Ev+0xc4>
    800056d8:	00053783          	ld	a5,0(a0)
    800056dc:	0087b783          	ld	a5,8(a5)
    800056e0:	000780e7          	jalr	a5
    delete mutexTail;
    800056e4:	0304b503          	ld	a0,48(s1)
    800056e8:	00050863          	beqz	a0,800056f8 <_ZN9BufferCPPD1Ev+0xd8>
    800056ec:	00053783          	ld	a5,0(a0)
    800056f0:	0087b783          	ld	a5,8(a5)
    800056f4:	000780e7          	jalr	a5
    delete mutexHead;
    800056f8:	0284b503          	ld	a0,40(s1)
    800056fc:	00050863          	beqz	a0,8000570c <_ZN9BufferCPPD1Ev+0xec>
    80005700:	00053783          	ld	a5,0(a0)
    80005704:	0087b783          	ld	a5,8(a5)
    80005708:	000780e7          	jalr	a5
}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	02010113          	addi	sp,sp,32
    8000571c:	00008067          	ret

0000000080005720 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005720:	fe010113          	addi	sp,sp,-32
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00813823          	sd	s0,16(sp)
    8000572c:	00913423          	sd	s1,8(sp)
    80005730:	01213023          	sd	s2,0(sp)
    80005734:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005738:	00004517          	auipc	a0,0x4
    8000573c:	b7050513          	addi	a0,a0,-1168 # 800092a8 <_ZZ6prtIntmE6digits+0x1c0>
    80005740:	00000097          	auipc	ra,0x0
    80005744:	918080e7          	jalr	-1768(ra) # 80005058 <_Z11printStringPKc>
    int test = getc() - '0';
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	fa4080e7          	jalr	-92(ra) # 800016ec <_Z4getcv>
    80005750:	0005091b          	sext.w	s2,a0
    80005754:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	f94080e7          	jalr	-108(ra) # 800016ec <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005760:	fcd9071b          	addiw	a4,s2,-51
    80005764:	00100793          	li	a5,1
    80005768:	04e7f663          	bgeu	a5,a4,800057b4 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000576c:	fcb9091b          	addiw	s2,s2,-53
    80005770:	00100793          	li	a5,1
    80005774:	0727f463          	bgeu	a5,s2,800057dc <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005778:	00600793          	li	a5,6
    8000577c:	0697ca63          	blt	a5,s1,800057f0 <_Z8userMainv+0xd0>
    80005780:	00300793          	li	a5,3
    80005784:	04f4d063          	bge	s1,a5,800057c4 <_Z8userMainv+0xa4>
    80005788:	00100793          	li	a5,1
    8000578c:	08f48c63          	beq	s1,a5,80005824 <_Z8userMainv+0x104>
    80005790:	00200793          	li	a5,2
    80005794:	0af49663          	bne	s1,a5,80005840 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80005798:	ffffe097          	auipc	ra,0xffffe
    8000579c:	e18080e7          	jalr	-488(ra) # 800035b0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800057a0:	00004517          	auipc	a0,0x4
    800057a4:	bc850513          	addi	a0,a0,-1080 # 80009368 <_ZZ6prtIntmE6digits+0x280>
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	8b0080e7          	jalr	-1872(ra) # 80005058 <_Z11printStringPKc>
#endif
            break;
    800057b0:	0140006f          	j	800057c4 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800057b4:	00004517          	auipc	a0,0x4
    800057b8:	b1450513          	addi	a0,a0,-1260 # 800092c8 <_ZZ6prtIntmE6digits+0x1e0>
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	89c080e7          	jalr	-1892(ra) # 80005058 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800057c4:	01813083          	ld	ra,24(sp)
    800057c8:	01013403          	ld	s0,16(sp)
    800057cc:	00813483          	ld	s1,8(sp)
    800057d0:	00013903          	ld	s2,0(sp)
    800057d4:	02010113          	addi	sp,sp,32
    800057d8:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800057dc:	00004517          	auipc	a0,0x4
    800057e0:	b1c50513          	addi	a0,a0,-1252 # 800092f8 <_ZZ6prtIntmE6digits+0x210>
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	874080e7          	jalr	-1932(ra) # 80005058 <_Z11printStringPKc>
            return;
    800057ec:	fd9ff06f          	j	800057c4 <_Z8userMainv+0xa4>
    switch (test) {
    800057f0:	00700793          	li	a5,7
    800057f4:	04f49663          	bne	s1,a5,80005840 <_Z8userMainv+0x120>
            System_Mode_test();
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	674080e7          	jalr	1652(ra) # 80005e6c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005800:	00004517          	auipc	a0,0x4
    80005804:	ba850513          	addi	a0,a0,-1112 # 800093a8 <_ZZ6prtIntmE6digits+0x2c0>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	850080e7          	jalr	-1968(ra) # 80005058 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005810:	00004517          	auipc	a0,0x4
    80005814:	bb850513          	addi	a0,a0,-1096 # 800093c8 <_ZZ6prtIntmE6digits+0x2e0>
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	840080e7          	jalr	-1984(ra) # 80005058 <_Z11printStringPKc>
            break;
    80005820:	fa5ff06f          	j	800057c4 <_Z8userMainv+0xa4>
            Threads_C_API_test();
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	eac080e7          	jalr	-340(ra) # 800046d0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000582c:	00004517          	auipc	a0,0x4
    80005830:	afc50513          	addi	a0,a0,-1284 # 80009328 <_ZZ6prtIntmE6digits+0x240>
    80005834:	00000097          	auipc	ra,0x0
    80005838:	824080e7          	jalr	-2012(ra) # 80005058 <_Z11printStringPKc>
            break;
    8000583c:	f89ff06f          	j	800057c4 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005840:	00004517          	auipc	a0,0x4
    80005844:	be050513          	addi	a0,a0,-1056 # 80009420 <_ZZ6prtIntmE6digits+0x338>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	810080e7          	jalr	-2032(ra) # 80005058 <_Z11printStringPKc>
    80005850:	f75ff06f          	j	800057c4 <_Z8userMainv+0xa4>

0000000080005854 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005854:	fe010113          	addi	sp,sp,-32
    80005858:	00113c23          	sd	ra,24(sp)
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00913423          	sd	s1,8(sp)
    80005864:	01213023          	sd	s2,0(sp)
    80005868:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000586c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005870:	00600493          	li	s1,6
    while (--i > 0) {
    80005874:	fff4849b          	addiw	s1,s1,-1
    80005878:	04905463          	blez	s1,800058c0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000587c:	00004517          	auipc	a0,0x4
    80005880:	bcc50513          	addi	a0,a0,-1076 # 80009448 <_ZZ6prtIntmE6digits+0x360>
    80005884:	fffff097          	auipc	ra,0xfffff
    80005888:	7d4080e7          	jalr	2004(ra) # 80005058 <_Z11printStringPKc>
        printInt(sleep_time);
    8000588c:	00000613          	li	a2,0
    80005890:	00a00593          	li	a1,10
    80005894:	0009051b          	sext.w	a0,s2
    80005898:	00000097          	auipc	ra,0x0
    8000589c:	970080e7          	jalr	-1680(ra) # 80005208 <_Z8printIntiii>
        printString(" !\n");
    800058a0:	00004517          	auipc	a0,0x4
    800058a4:	bb050513          	addi	a0,a0,-1104 # 80009450 <_ZZ6prtIntmE6digits+0x368>
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	7b0080e7          	jalr	1968(ra) # 80005058 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800058b0:	00090513          	mv	a0,s2
    800058b4:	ffffc097          	auipc	ra,0xffffc
    800058b8:	d2c080e7          	jalr	-724(ra) # 800015e0 <_Z10time_sleepm>
    while (--i > 0) {
    800058bc:	fb9ff06f          	j	80005874 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800058c0:	00a00793          	li	a5,10
    800058c4:	02f95933          	divu	s2,s2,a5
    800058c8:	fff90913          	addi	s2,s2,-1
    800058cc:	00006797          	auipc	a5,0x6
    800058d0:	cac78793          	addi	a5,a5,-852 # 8000b578 <_ZL8finished>
    800058d4:	01278933          	add	s2,a5,s2
    800058d8:	00100793          	li	a5,1
    800058dc:	00f90023          	sb	a5,0(s2)
}
    800058e0:	01813083          	ld	ra,24(sp)
    800058e4:	01013403          	ld	s0,16(sp)
    800058e8:	00813483          	ld	s1,8(sp)
    800058ec:	00013903          	ld	s2,0(sp)
    800058f0:	02010113          	addi	sp,sp,32
    800058f4:	00008067          	ret

00000000800058f8 <_Z12testSleepingv>:

void testSleeping() {
    800058f8:	fc010113          	addi	sp,sp,-64
    800058fc:	02113c23          	sd	ra,56(sp)
    80005900:	02813823          	sd	s0,48(sp)
    80005904:	02913423          	sd	s1,40(sp)
    80005908:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000590c:	00a00793          	li	a5,10
    80005910:	fcf43823          	sd	a5,-48(s0)
    80005914:	01400793          	li	a5,20
    80005918:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000591c:	00000493          	li	s1,0
    80005920:	02c0006f          	j	8000594c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005924:	00349793          	slli	a5,s1,0x3
    80005928:	fd040613          	addi	a2,s0,-48
    8000592c:	00f60633          	add	a2,a2,a5
    80005930:	00000597          	auipc	a1,0x0
    80005934:	f2458593          	addi	a1,a1,-220 # 80005854 <_ZL9sleepyRunPv>
    80005938:	fc040513          	addi	a0,s0,-64
    8000593c:	00f50533          	add	a0,a0,a5
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	bf4080e7          	jalr	-1036(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005948:	0014849b          	addiw	s1,s1,1
    8000594c:	00100793          	li	a5,1
    80005950:	fc97dae3          	bge	a5,s1,80005924 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005954:	00006797          	auipc	a5,0x6
    80005958:	c247c783          	lbu	a5,-988(a5) # 8000b578 <_ZL8finished>
    8000595c:	fe078ce3          	beqz	a5,80005954 <_Z12testSleepingv+0x5c>
    80005960:	00006797          	auipc	a5,0x6
    80005964:	c197c783          	lbu	a5,-999(a5) # 8000b579 <_ZL8finished+0x1>
    80005968:	fe0786e3          	beqz	a5,80005954 <_Z12testSleepingv+0x5c>
}
    8000596c:	03813083          	ld	ra,56(sp)
    80005970:	03013403          	ld	s0,48(sp)
    80005974:	02813483          	ld	s1,40(sp)
    80005978:	04010113          	addi	sp,sp,64
    8000597c:	00008067          	ret

0000000080005980 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005980:	fe010113          	addi	sp,sp,-32
    80005984:	00113c23          	sd	ra,24(sp)
    80005988:	00813823          	sd	s0,16(sp)
    8000598c:	00913423          	sd	s1,8(sp)
    80005990:	01213023          	sd	s2,0(sp)
    80005994:	02010413          	addi	s0,sp,32
    80005998:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000599c:	00100793          	li	a5,1
    800059a0:	02a7f863          	bgeu	a5,a0,800059d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800059a4:	00a00793          	li	a5,10
    800059a8:	02f577b3          	remu	a5,a0,a5
    800059ac:	02078e63          	beqz	a5,800059e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800059b0:	fff48513          	addi	a0,s1,-1
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	fcc080e7          	jalr	-52(ra) # 80005980 <_ZL9fibonaccim>
    800059bc:	00050913          	mv	s2,a0
    800059c0:	ffe48513          	addi	a0,s1,-2
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	fbc080e7          	jalr	-68(ra) # 80005980 <_ZL9fibonaccim>
    800059cc:	00a90533          	add	a0,s2,a0
}
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	00013903          	ld	s2,0(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	c50080e7          	jalr	-944(ra) # 80001638 <_Z15thread_dispatchv>
    800059f0:	fc1ff06f          	j	800059b0 <_ZL9fibonaccim+0x30>

00000000800059f4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800059f4:	fe010113          	addi	sp,sp,-32
    800059f8:	00113c23          	sd	ra,24(sp)
    800059fc:	00813823          	sd	s0,16(sp)
    80005a00:	00913423          	sd	s1,8(sp)
    80005a04:	01213023          	sd	s2,0(sp)
    80005a08:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a0c:	00a00493          	li	s1,10
    80005a10:	0400006f          	j	80005a50 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a14:	00003517          	auipc	a0,0x3
    80005a18:	65450513          	addi	a0,a0,1620 # 80009068 <CONSOLE_STATUS+0x58>
    80005a1c:	fffff097          	auipc	ra,0xfffff
    80005a20:	63c080e7          	jalr	1596(ra) # 80005058 <_Z11printStringPKc>
    80005a24:	00000613          	li	a2,0
    80005a28:	00a00593          	li	a1,10
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	7d8080e7          	jalr	2008(ra) # 80005208 <_Z8printIntiii>
    80005a38:	00003517          	auipc	a0,0x3
    80005a3c:	6f850513          	addi	a0,a0,1784 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005a40:	fffff097          	auipc	ra,0xfffff
    80005a44:	618080e7          	jalr	1560(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a48:	0014849b          	addiw	s1,s1,1
    80005a4c:	0ff4f493          	andi	s1,s1,255
    80005a50:	00c00793          	li	a5,12
    80005a54:	fc97f0e3          	bgeu	a5,s1,80005a14 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a58:	00003517          	auipc	a0,0x3
    80005a5c:	7b850513          	addi	a0,a0,1976 # 80009210 <_ZZ6prtIntmE6digits+0x128>
    80005a60:	fffff097          	auipc	ra,0xfffff
    80005a64:	5f8080e7          	jalr	1528(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a68:	00500313          	li	t1,5
    thread_dispatch();
    80005a6c:	ffffc097          	auipc	ra,0xffffc
    80005a70:	bcc080e7          	jalr	-1076(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a74:	01000513          	li	a0,16
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	f08080e7          	jalr	-248(ra) # 80005980 <_ZL9fibonaccim>
    80005a80:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a84:	00003517          	auipc	a0,0x3
    80005a88:	5fc50513          	addi	a0,a0,1532 # 80009080 <CONSOLE_STATUS+0x70>
    80005a8c:	fffff097          	auipc	ra,0xfffff
    80005a90:	5cc080e7          	jalr	1484(ra) # 80005058 <_Z11printStringPKc>
    80005a94:	00000613          	li	a2,0
    80005a98:	00a00593          	li	a1,10
    80005a9c:	0009051b          	sext.w	a0,s2
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	768080e7          	jalr	1896(ra) # 80005208 <_Z8printIntiii>
    80005aa8:	00003517          	auipc	a0,0x3
    80005aac:	68850513          	addi	a0,a0,1672 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005ab0:	fffff097          	auipc	ra,0xfffff
    80005ab4:	5a8080e7          	jalr	1448(ra) # 80005058 <_Z11printStringPKc>
    80005ab8:	0400006f          	j	80005af8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005abc:	00003517          	auipc	a0,0x3
    80005ac0:	5ac50513          	addi	a0,a0,1452 # 80009068 <CONSOLE_STATUS+0x58>
    80005ac4:	fffff097          	auipc	ra,0xfffff
    80005ac8:	594080e7          	jalr	1428(ra) # 80005058 <_Z11printStringPKc>
    80005acc:	00000613          	li	a2,0
    80005ad0:	00a00593          	li	a1,10
    80005ad4:	00048513          	mv	a0,s1
    80005ad8:	fffff097          	auipc	ra,0xfffff
    80005adc:	730080e7          	jalr	1840(ra) # 80005208 <_Z8printIntiii>
    80005ae0:	00003517          	auipc	a0,0x3
    80005ae4:	65050513          	addi	a0,a0,1616 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005ae8:	fffff097          	auipc	ra,0xfffff
    80005aec:	570080e7          	jalr	1392(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005af0:	0014849b          	addiw	s1,s1,1
    80005af4:	0ff4f493          	andi	s1,s1,255
    80005af8:	00f00793          	li	a5,15
    80005afc:	fc97f0e3          	bgeu	a5,s1,80005abc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005b00:	00003517          	auipc	a0,0x3
    80005b04:	72050513          	addi	a0,a0,1824 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    80005b08:	fffff097          	auipc	ra,0xfffff
    80005b0c:	550080e7          	jalr	1360(ra) # 80005058 <_Z11printStringPKc>
    finishedD = true;
    80005b10:	00100793          	li	a5,1
    80005b14:	00006717          	auipc	a4,0x6
    80005b18:	a6f70323          	sb	a5,-1434(a4) # 8000b57a <_ZL9finishedD>
    thread_dispatch();
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	b1c080e7          	jalr	-1252(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005b24:	01813083          	ld	ra,24(sp)
    80005b28:	01013403          	ld	s0,16(sp)
    80005b2c:	00813483          	ld	s1,8(sp)
    80005b30:	00013903          	ld	s2,0(sp)
    80005b34:	02010113          	addi	sp,sp,32
    80005b38:	00008067          	ret

0000000080005b3c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	01213023          	sd	s2,0(sp)
    80005b50:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b54:	00000493          	li	s1,0
    80005b58:	0400006f          	j	80005b98 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b5c:	00003517          	auipc	a0,0x3
    80005b60:	4c450513          	addi	a0,a0,1220 # 80009020 <CONSOLE_STATUS+0x10>
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	4f4080e7          	jalr	1268(ra) # 80005058 <_Z11printStringPKc>
    80005b6c:	00000613          	li	a2,0
    80005b70:	00a00593          	li	a1,10
    80005b74:	00048513          	mv	a0,s1
    80005b78:	fffff097          	auipc	ra,0xfffff
    80005b7c:	690080e7          	jalr	1680(ra) # 80005208 <_Z8printIntiii>
    80005b80:	00003517          	auipc	a0,0x3
    80005b84:	5b050513          	addi	a0,a0,1456 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005b88:	fffff097          	auipc	ra,0xfffff
    80005b8c:	4d0080e7          	jalr	1232(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b90:	0014849b          	addiw	s1,s1,1
    80005b94:	0ff4f493          	andi	s1,s1,255
    80005b98:	00200793          	li	a5,2
    80005b9c:	fc97f0e3          	bgeu	a5,s1,80005b5c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005ba0:	00003517          	auipc	a0,0x3
    80005ba4:	66050513          	addi	a0,a0,1632 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    80005ba8:	fffff097          	auipc	ra,0xfffff
    80005bac:	4b0080e7          	jalr	1200(ra) # 80005058 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bb0:	00700313          	li	t1,7
    thread_dispatch();
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	a84080e7          	jalr	-1404(ra) # 80001638 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005bbc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005bc0:	00003517          	auipc	a0,0x3
    80005bc4:	47850513          	addi	a0,a0,1144 # 80009038 <CONSOLE_STATUS+0x28>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	490080e7          	jalr	1168(ra) # 80005058 <_Z11printStringPKc>
    80005bd0:	00000613          	li	a2,0
    80005bd4:	00a00593          	li	a1,10
    80005bd8:	0009051b          	sext.w	a0,s2
    80005bdc:	fffff097          	auipc	ra,0xfffff
    80005be0:	62c080e7          	jalr	1580(ra) # 80005208 <_Z8printIntiii>
    80005be4:	00003517          	auipc	a0,0x3
    80005be8:	54c50513          	addi	a0,a0,1356 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005bec:	fffff097          	auipc	ra,0xfffff
    80005bf0:	46c080e7          	jalr	1132(ra) # 80005058 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005bf4:	00c00513          	li	a0,12
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	d88080e7          	jalr	-632(ra) # 80005980 <_ZL9fibonaccim>
    80005c00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	43c50513          	addi	a0,a0,1084 # 80009040 <CONSOLE_STATUS+0x30>
    80005c0c:	fffff097          	auipc	ra,0xfffff
    80005c10:	44c080e7          	jalr	1100(ra) # 80005058 <_Z11printStringPKc>
    80005c14:	00000613          	li	a2,0
    80005c18:	00a00593          	li	a1,10
    80005c1c:	0009051b          	sext.w	a0,s2
    80005c20:	fffff097          	auipc	ra,0xfffff
    80005c24:	5e8080e7          	jalr	1512(ra) # 80005208 <_Z8printIntiii>
    80005c28:	00003517          	auipc	a0,0x3
    80005c2c:	50850513          	addi	a0,a0,1288 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005c30:	fffff097          	auipc	ra,0xfffff
    80005c34:	428080e7          	jalr	1064(ra) # 80005058 <_Z11printStringPKc>
    80005c38:	0400006f          	j	80005c78 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c3c:	00003517          	auipc	a0,0x3
    80005c40:	3e450513          	addi	a0,a0,996 # 80009020 <CONSOLE_STATUS+0x10>
    80005c44:	fffff097          	auipc	ra,0xfffff
    80005c48:	414080e7          	jalr	1044(ra) # 80005058 <_Z11printStringPKc>
    80005c4c:	00000613          	li	a2,0
    80005c50:	00a00593          	li	a1,10
    80005c54:	00048513          	mv	a0,s1
    80005c58:	fffff097          	auipc	ra,0xfffff
    80005c5c:	5b0080e7          	jalr	1456(ra) # 80005208 <_Z8printIntiii>
    80005c60:	00003517          	auipc	a0,0x3
    80005c64:	4d050513          	addi	a0,a0,1232 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	3f0080e7          	jalr	1008(ra) # 80005058 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c70:	0014849b          	addiw	s1,s1,1
    80005c74:	0ff4f493          	andi	s1,s1,255
    80005c78:	00500793          	li	a5,5
    80005c7c:	fc97f0e3          	bgeu	a5,s1,80005c3c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005c80:	00003517          	auipc	a0,0x3
    80005c84:	56050513          	addi	a0,a0,1376 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80005c88:	fffff097          	auipc	ra,0xfffff
    80005c8c:	3d0080e7          	jalr	976(ra) # 80005058 <_Z11printStringPKc>
    finishedC = true;
    80005c90:	00100793          	li	a5,1
    80005c94:	00006717          	auipc	a4,0x6
    80005c98:	8ef703a3          	sb	a5,-1817(a4) # 8000b57b <_ZL9finishedC>
    thread_dispatch();
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	99c080e7          	jalr	-1636(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005ca4:	01813083          	ld	ra,24(sp)
    80005ca8:	01013403          	ld	s0,16(sp)
    80005cac:	00813483          	ld	s1,8(sp)
    80005cb0:	00013903          	ld	s2,0(sp)
    80005cb4:	02010113          	addi	sp,sp,32
    80005cb8:	00008067          	ret

0000000080005cbc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005cbc:	fe010113          	addi	sp,sp,-32
    80005cc0:	00113c23          	sd	ra,24(sp)
    80005cc4:	00813823          	sd	s0,16(sp)
    80005cc8:	00913423          	sd	s1,8(sp)
    80005ccc:	01213023          	sd	s2,0(sp)
    80005cd0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005cd4:	00000913          	li	s2,0
    80005cd8:	0400006f          	j	80005d18 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	95c080e7          	jalr	-1700(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ce4:	00148493          	addi	s1,s1,1
    80005ce8:	000027b7          	lui	a5,0x2
    80005cec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005cf0:	0097ee63          	bltu	a5,s1,80005d0c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005cf4:	00000713          	li	a4,0
    80005cf8:	000077b7          	lui	a5,0x7
    80005cfc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d00:	fce7eee3          	bltu	a5,a4,80005cdc <_ZL11workerBodyBPv+0x20>
    80005d04:	00170713          	addi	a4,a4,1
    80005d08:	ff1ff06f          	j	80005cf8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005d0c:	00a00793          	li	a5,10
    80005d10:	04f90663          	beq	s2,a5,80005d5c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005d14:	00190913          	addi	s2,s2,1
    80005d18:	00f00793          	li	a5,15
    80005d1c:	0527e463          	bltu	a5,s2,80005d64 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005d20:	00003517          	auipc	a0,0x3
    80005d24:	3a850513          	addi	a0,a0,936 # 800090c8 <CONSOLE_STATUS+0xb8>
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	330080e7          	jalr	816(ra) # 80005058 <_Z11printStringPKc>
    80005d30:	00000613          	li	a2,0
    80005d34:	00a00593          	li	a1,10
    80005d38:	0009051b          	sext.w	a0,s2
    80005d3c:	fffff097          	auipc	ra,0xfffff
    80005d40:	4cc080e7          	jalr	1228(ra) # 80005208 <_Z8printIntiii>
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	3ec50513          	addi	a0,a0,1004 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005d4c:	fffff097          	auipc	ra,0xfffff
    80005d50:	30c080e7          	jalr	780(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d54:	00000493          	li	s1,0
    80005d58:	f91ff06f          	j	80005ce8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d5c:	14102ff3          	csrr	t6,sepc
    80005d60:	fb5ff06f          	j	80005d14 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005d64:	00003517          	auipc	a0,0x3
    80005d68:	48c50513          	addi	a0,a0,1164 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	2ec080e7          	jalr	748(ra) # 80005058 <_Z11printStringPKc>
    finishedB = true;
    80005d74:	00100793          	li	a5,1
    80005d78:	00006717          	auipc	a4,0x6
    80005d7c:	80f70223          	sb	a5,-2044(a4) # 8000b57c <_ZL9finishedB>
    thread_dispatch();
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	8b8080e7          	jalr	-1864(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	01013403          	ld	s0,16(sp)
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	00013903          	ld	s2,0(sp)
    80005d98:	02010113          	addi	sp,sp,32
    80005d9c:	00008067          	ret

0000000080005da0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00113c23          	sd	ra,24(sp)
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	01213023          	sd	s2,0(sp)
    80005db4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005db8:	00000913          	li	s2,0
    80005dbc:	0380006f          	j	80005df4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	878080e7          	jalr	-1928(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005dc8:	00148493          	addi	s1,s1,1
    80005dcc:	000027b7          	lui	a5,0x2
    80005dd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005dd4:	0097ee63          	bltu	a5,s1,80005df0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005dd8:	00000713          	li	a4,0
    80005ddc:	000077b7          	lui	a5,0x7
    80005de0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005de4:	fce7eee3          	bltu	a5,a4,80005dc0 <_ZL11workerBodyAPv+0x20>
    80005de8:	00170713          	addi	a4,a4,1
    80005dec:	ff1ff06f          	j	80005ddc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005df0:	00190913          	addi	s2,s2,1
    80005df4:	00900793          	li	a5,9
    80005df8:	0527e063          	bltu	a5,s2,80005e38 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005dfc:	00003517          	auipc	a0,0x3
    80005e00:	2ac50513          	addi	a0,a0,684 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	254080e7          	jalr	596(ra) # 80005058 <_Z11printStringPKc>
    80005e0c:	00000613          	li	a2,0
    80005e10:	00a00593          	li	a1,10
    80005e14:	0009051b          	sext.w	a0,s2
    80005e18:	fffff097          	auipc	ra,0xfffff
    80005e1c:	3f0080e7          	jalr	1008(ra) # 80005208 <_Z8printIntiii>
    80005e20:	00003517          	auipc	a0,0x3
    80005e24:	31050513          	addi	a0,a0,784 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005e28:	fffff097          	auipc	ra,0xfffff
    80005e2c:	230080e7          	jalr	560(ra) # 80005058 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e30:	00000493          	li	s1,0
    80005e34:	f99ff06f          	j	80005dcc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	3a850513          	addi	a0,a0,936 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	218080e7          	jalr	536(ra) # 80005058 <_Z11printStringPKc>
    finishedA = true;
    80005e48:	00100793          	li	a5,1
    80005e4c:	00005717          	auipc	a4,0x5
    80005e50:	72f708a3          	sb	a5,1841(a4) # 8000b57d <_ZL9finishedA>
}
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	00013903          	ld	s2,0(sp)
    80005e64:	02010113          	addi	sp,sp,32
    80005e68:	00008067          	ret

0000000080005e6c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005e6c:	fd010113          	addi	sp,sp,-48
    80005e70:	02113423          	sd	ra,40(sp)
    80005e74:	02813023          	sd	s0,32(sp)
    80005e78:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e7c:	00000613          	li	a2,0
    80005e80:	00000597          	auipc	a1,0x0
    80005e84:	f2058593          	addi	a1,a1,-224 # 80005da0 <_ZL11workerBodyAPv>
    80005e88:	fd040513          	addi	a0,s0,-48
    80005e8c:	ffffb097          	auipc	ra,0xffffb
    80005e90:	6a8080e7          	jalr	1704(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005e94:	00003517          	auipc	a0,0x3
    80005e98:	39c50513          	addi	a0,a0,924 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    80005e9c:	fffff097          	auipc	ra,0xfffff
    80005ea0:	1bc080e7          	jalr	444(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005ea4:	00000613          	li	a2,0
    80005ea8:	00000597          	auipc	a1,0x0
    80005eac:	e1458593          	addi	a1,a1,-492 # 80005cbc <_ZL11workerBodyBPv>
    80005eb0:	fd840513          	addi	a0,s0,-40
    80005eb4:	ffffb097          	auipc	ra,0xffffb
    80005eb8:	680080e7          	jalr	1664(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005ebc:	00003517          	auipc	a0,0x3
    80005ec0:	38c50513          	addi	a0,a0,908 # 80009248 <_ZZ6prtIntmE6digits+0x160>
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	194080e7          	jalr	404(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ecc:	00000613          	li	a2,0
    80005ed0:	00000597          	auipc	a1,0x0
    80005ed4:	c6c58593          	addi	a1,a1,-916 # 80005b3c <_ZL11workerBodyCPv>
    80005ed8:	fe040513          	addi	a0,s0,-32
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	658080e7          	jalr	1624(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	37c50513          	addi	a0,a0,892 # 80009260 <_ZZ6prtIntmE6digits+0x178>
    80005eec:	fffff097          	auipc	ra,0xfffff
    80005ef0:	16c080e7          	jalr	364(ra) # 80005058 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ef4:	00000613          	li	a2,0
    80005ef8:	00000597          	auipc	a1,0x0
    80005efc:	afc58593          	addi	a1,a1,-1284 # 800059f4 <_ZL11workerBodyDPv>
    80005f00:	fe840513          	addi	a0,s0,-24
    80005f04:	ffffb097          	auipc	ra,0xffffb
    80005f08:	630080e7          	jalr	1584(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	36c50513          	addi	a0,a0,876 # 80009278 <_ZZ6prtIntmE6digits+0x190>
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	144080e7          	jalr	324(ra) # 80005058 <_Z11printStringPKc>
    80005f1c:	00c0006f          	j	80005f28 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	718080e7          	jalr	1816(ra) # 80001638 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f28:	00005797          	auipc	a5,0x5
    80005f2c:	6557c783          	lbu	a5,1621(a5) # 8000b57d <_ZL9finishedA>
    80005f30:	fe0788e3          	beqz	a5,80005f20 <_Z16System_Mode_testv+0xb4>
    80005f34:	00005797          	auipc	a5,0x5
    80005f38:	6487c783          	lbu	a5,1608(a5) # 8000b57c <_ZL9finishedB>
    80005f3c:	fe0782e3          	beqz	a5,80005f20 <_Z16System_Mode_testv+0xb4>
    80005f40:	00005797          	auipc	a5,0x5
    80005f44:	63b7c783          	lbu	a5,1595(a5) # 8000b57b <_ZL9finishedC>
    80005f48:	fc078ce3          	beqz	a5,80005f20 <_Z16System_Mode_testv+0xb4>
    80005f4c:	00005797          	auipc	a5,0x5
    80005f50:	62e7c783          	lbu	a5,1582(a5) # 8000b57a <_ZL9finishedD>
    80005f54:	fc0786e3          	beqz	a5,80005f20 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f58:	02813083          	ld	ra,40(sp)
    80005f5c:	02013403          	ld	s0,32(sp)
    80005f60:	03010113          	addi	sp,sp,48
    80005f64:	00008067          	ret

0000000080005f68 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f68:	fe010113          	addi	sp,sp,-32
    80005f6c:	00113c23          	sd	ra,24(sp)
    80005f70:	00813823          	sd	s0,16(sp)
    80005f74:	00913423          	sd	s1,8(sp)
    80005f78:	01213023          	sd	s2,0(sp)
    80005f7c:	02010413          	addi	s0,sp,32
    80005f80:	00050493          	mv	s1,a0
    80005f84:	00058913          	mv	s2,a1
    80005f88:	0015879b          	addiw	a5,a1,1
    80005f8c:	0007851b          	sext.w	a0,a5
    80005f90:	00f4a023          	sw	a5,0(s1)
    80005f94:	0004a823          	sw	zero,16(s1)
    80005f98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f9c:	00251513          	slli	a0,a0,0x2
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	514080e7          	jalr	1300(ra) # 800014b4 <_Z9mem_allocm>
    80005fa8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fac:	00000593          	li	a1,0
    80005fb0:	02048513          	addi	a0,s1,32
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	6c8080e7          	jalr	1736(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005fbc:	00090593          	mv	a1,s2
    80005fc0:	01848513          	addi	a0,s1,24
    80005fc4:	ffffb097          	auipc	ra,0xffffb
    80005fc8:	6b8080e7          	jalr	1720(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005fcc:	00100593          	li	a1,1
    80005fd0:	02848513          	addi	a0,s1,40
    80005fd4:	ffffb097          	auipc	ra,0xffffb
    80005fd8:	6a8080e7          	jalr	1704(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005fdc:	00100593          	li	a1,1
    80005fe0:	03048513          	addi	a0,s1,48
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	698080e7          	jalr	1688(ra) # 8000167c <_Z8sem_openPP4_semj>
}
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	00013903          	ld	s2,0(sp)
    80005ffc:	02010113          	addi	sp,sp,32
    80006000:	00008067          	ret

0000000080006004 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	00813823          	sd	s0,16(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	01213023          	sd	s2,0(sp)
    80006018:	02010413          	addi	s0,sp,32
    8000601c:	00050493          	mv	s1,a0
    80006020:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006024:	01853503          	ld	a0,24(a0)
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	68c080e7          	jalr	1676(ra) # 800016b4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006030:	0304b503          	ld	a0,48(s1)
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	680080e7          	jalr	1664(ra) # 800016b4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000603c:	0084b783          	ld	a5,8(s1)
    80006040:	0144a703          	lw	a4,20(s1)
    80006044:	00271713          	slli	a4,a4,0x2
    80006048:	00e787b3          	add	a5,a5,a4
    8000604c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006050:	0144a783          	lw	a5,20(s1)
    80006054:	0017879b          	addiw	a5,a5,1
    80006058:	0004a703          	lw	a4,0(s1)
    8000605c:	02e7e7bb          	remw	a5,a5,a4
    80006060:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006064:	0304b503          	ld	a0,48(s1)
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	668080e7          	jalr	1640(ra) # 800016d0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006070:	0204b503          	ld	a0,32(s1)
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	65c080e7          	jalr	1628(ra) # 800016d0 <_Z10sem_signalP4_sem>

}
    8000607c:	01813083          	ld	ra,24(sp)
    80006080:	01013403          	ld	s0,16(sp)
    80006084:	00813483          	ld	s1,8(sp)
    80006088:	00013903          	ld	s2,0(sp)
    8000608c:	02010113          	addi	sp,sp,32
    80006090:	00008067          	ret

0000000080006094 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006094:	fe010113          	addi	sp,sp,-32
    80006098:	00113c23          	sd	ra,24(sp)
    8000609c:	00813823          	sd	s0,16(sp)
    800060a0:	00913423          	sd	s1,8(sp)
    800060a4:	01213023          	sd	s2,0(sp)
    800060a8:	02010413          	addi	s0,sp,32
    800060ac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060b0:	02053503          	ld	a0,32(a0)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	600080e7          	jalr	1536(ra) # 800016b4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800060bc:	0284b503          	ld	a0,40(s1)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	5f4080e7          	jalr	1524(ra) # 800016b4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800060c8:	0084b703          	ld	a4,8(s1)
    800060cc:	0104a783          	lw	a5,16(s1)
    800060d0:	00279693          	slli	a3,a5,0x2
    800060d4:	00d70733          	add	a4,a4,a3
    800060d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060dc:	0017879b          	addiw	a5,a5,1
    800060e0:	0004a703          	lw	a4,0(s1)
    800060e4:	02e7e7bb          	remw	a5,a5,a4
    800060e8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060ec:	0284b503          	ld	a0,40(s1)
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	5e0080e7          	jalr	1504(ra) # 800016d0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800060f8:	0184b503          	ld	a0,24(s1)
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	5d4080e7          	jalr	1492(ra) # 800016d0 <_Z10sem_signalP4_sem>

    return ret;
}
    80006104:	00090513          	mv	a0,s2
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	00013903          	ld	s2,0(sp)
    80006118:	02010113          	addi	sp,sp,32
    8000611c:	00008067          	ret

0000000080006120 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00113c23          	sd	ra,24(sp)
    80006128:	00813823          	sd	s0,16(sp)
    8000612c:	00913423          	sd	s1,8(sp)
    80006130:	01213023          	sd	s2,0(sp)
    80006134:	02010413          	addi	s0,sp,32
    80006138:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000613c:	02853503          	ld	a0,40(a0)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	574080e7          	jalr	1396(ra) # 800016b4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006148:	0304b503          	ld	a0,48(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	568080e7          	jalr	1384(ra) # 800016b4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006154:	0144a783          	lw	a5,20(s1)
    80006158:	0104a903          	lw	s2,16(s1)
    8000615c:	0327ce63          	blt	a5,s2,80006198 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006160:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006164:	0304b503          	ld	a0,48(s1)
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	568080e7          	jalr	1384(ra) # 800016d0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006170:	0284b503          	ld	a0,40(s1)
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	55c080e7          	jalr	1372(ra) # 800016d0 <_Z10sem_signalP4_sem>

    return ret;
}
    8000617c:	00090513          	mv	a0,s2
    80006180:	01813083          	ld	ra,24(sp)
    80006184:	01013403          	ld	s0,16(sp)
    80006188:	00813483          	ld	s1,8(sp)
    8000618c:	00013903          	ld	s2,0(sp)
    80006190:	02010113          	addi	sp,sp,32
    80006194:	00008067          	ret
        ret = cap - head + tail;
    80006198:	0004a703          	lw	a4,0(s1)
    8000619c:	4127093b          	subw	s2,a4,s2
    800061a0:	00f9093b          	addw	s2,s2,a5
    800061a4:	fc1ff06f          	j	80006164 <_ZN6Buffer6getCntEv+0x44>

00000000800061a8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800061a8:	fe010113          	addi	sp,sp,-32
    800061ac:	00113c23          	sd	ra,24(sp)
    800061b0:	00813823          	sd	s0,16(sp)
    800061b4:	00913423          	sd	s1,8(sp)
    800061b8:	02010413          	addi	s0,sp,32
    800061bc:	00050493          	mv	s1,a0
    putc('\n');
    800061c0:	00a00513          	li	a0,10
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	564080e7          	jalr	1380(ra) # 80001728 <_Z4putcc>
    printString("Buffer deleted!\n");
    800061cc:	00003517          	auipc	a0,0x3
    800061d0:	0c450513          	addi	a0,a0,196 # 80009290 <_ZZ6prtIntmE6digits+0x1a8>
    800061d4:	fffff097          	auipc	ra,0xfffff
    800061d8:	e84080e7          	jalr	-380(ra) # 80005058 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061dc:	00048513          	mv	a0,s1
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	f40080e7          	jalr	-192(ra) # 80006120 <_ZN6Buffer6getCntEv>
    800061e8:	02a05c63          	blez	a0,80006220 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061ec:	0084b783          	ld	a5,8(s1)
    800061f0:	0104a703          	lw	a4,16(s1)
    800061f4:	00271713          	slli	a4,a4,0x2
    800061f8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061fc:	0007c503          	lbu	a0,0(a5)
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	528080e7          	jalr	1320(ra) # 80001728 <_Z4putcc>
        head = (head + 1) % cap;
    80006208:	0104a783          	lw	a5,16(s1)
    8000620c:	0017879b          	addiw	a5,a5,1
    80006210:	0004a703          	lw	a4,0(s1)
    80006214:	02e7e7bb          	remw	a5,a5,a4
    80006218:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000621c:	fc1ff06f          	j	800061dc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006220:	02100513          	li	a0,33
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	504080e7          	jalr	1284(ra) # 80001728 <_Z4putcc>
    putc('\n');
    8000622c:	00a00513          	li	a0,10
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	4f8080e7          	jalr	1272(ra) # 80001728 <_Z4putcc>
    mem_free(buffer);
    80006238:	0084b503          	ld	a0,8(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	2b8080e7          	jalr	696(ra) # 800014f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006244:	0204b503          	ld	a0,32(s1)
    80006248:	ffffb097          	auipc	ra,0xffffb
    8000624c:	450080e7          	jalr	1104(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006250:	0184b503          	ld	a0,24(s1)
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	444080e7          	jalr	1092(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000625c:	0304b503          	ld	a0,48(s1)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	438080e7          	jalr	1080(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006268:	0284b503          	ld	a0,40(s1)
    8000626c:	ffffb097          	auipc	ra,0xffffb
    80006270:	42c080e7          	jalr	1068(ra) # 80001698 <_Z9sem_closeP4_sem>
}
    80006274:	01813083          	ld	ra,24(sp)
    80006278:	01013403          	ld	s0,16(sp)
    8000627c:	00813483          	ld	s1,8(sp)
    80006280:	02010113          	addi	sp,sp,32
    80006284:	00008067          	ret

0000000080006288 <start>:
    80006288:	ff010113          	addi	sp,sp,-16
    8000628c:	00813423          	sd	s0,8(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	300027f3          	csrr	a5,mstatus
    80006298:	ffffe737          	lui	a4,0xffffe
    8000629c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff201f>
    800062a0:	00e7f7b3          	and	a5,a5,a4
    800062a4:	00001737          	lui	a4,0x1
    800062a8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062ac:	00e7e7b3          	or	a5,a5,a4
    800062b0:	30079073          	csrw	mstatus,a5
    800062b4:	00000797          	auipc	a5,0x0
    800062b8:	16078793          	addi	a5,a5,352 # 80006414 <system_main>
    800062bc:	34179073          	csrw	mepc,a5
    800062c0:	00000793          	li	a5,0
    800062c4:	18079073          	csrw	satp,a5
    800062c8:	000107b7          	lui	a5,0x10
    800062cc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062d0:	30279073          	csrw	medeleg,a5
    800062d4:	30379073          	csrw	mideleg,a5
    800062d8:	104027f3          	csrr	a5,sie
    800062dc:	2227e793          	ori	a5,a5,546
    800062e0:	10479073          	csrw	sie,a5
    800062e4:	fff00793          	li	a5,-1
    800062e8:	00a7d793          	srli	a5,a5,0xa
    800062ec:	3b079073          	csrw	pmpaddr0,a5
    800062f0:	00f00793          	li	a5,15
    800062f4:	3a079073          	csrw	pmpcfg0,a5
    800062f8:	f14027f3          	csrr	a5,mhartid
    800062fc:	0200c737          	lui	a4,0x200c
    80006300:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006304:	0007869b          	sext.w	a3,a5
    80006308:	00269713          	slli	a4,a3,0x2
    8000630c:	000f4637          	lui	a2,0xf4
    80006310:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006314:	00d70733          	add	a4,a4,a3
    80006318:	0037979b          	slliw	a5,a5,0x3
    8000631c:	020046b7          	lui	a3,0x2004
    80006320:	00d787b3          	add	a5,a5,a3
    80006324:	00c585b3          	add	a1,a1,a2
    80006328:	00371693          	slli	a3,a4,0x3
    8000632c:	00005717          	auipc	a4,0x5
    80006330:	25470713          	addi	a4,a4,596 # 8000b580 <timer_scratch>
    80006334:	00b7b023          	sd	a1,0(a5)
    80006338:	00d70733          	add	a4,a4,a3
    8000633c:	00f73c23          	sd	a5,24(a4)
    80006340:	02c73023          	sd	a2,32(a4)
    80006344:	34071073          	csrw	mscratch,a4
    80006348:	00000797          	auipc	a5,0x0
    8000634c:	6e878793          	addi	a5,a5,1768 # 80006a30 <timervec>
    80006350:	30579073          	csrw	mtvec,a5
    80006354:	300027f3          	csrr	a5,mstatus
    80006358:	0087e793          	ori	a5,a5,8
    8000635c:	30079073          	csrw	mstatus,a5
    80006360:	304027f3          	csrr	a5,mie
    80006364:	0807e793          	ori	a5,a5,128
    80006368:	30479073          	csrw	mie,a5
    8000636c:	f14027f3          	csrr	a5,mhartid
    80006370:	0007879b          	sext.w	a5,a5
    80006374:	00078213          	mv	tp,a5
    80006378:	30200073          	mret
    8000637c:	00813403          	ld	s0,8(sp)
    80006380:	01010113          	addi	sp,sp,16
    80006384:	00008067          	ret

0000000080006388 <timerinit>:
    80006388:	ff010113          	addi	sp,sp,-16
    8000638c:	00813423          	sd	s0,8(sp)
    80006390:	01010413          	addi	s0,sp,16
    80006394:	f14027f3          	csrr	a5,mhartid
    80006398:	0200c737          	lui	a4,0x200c
    8000639c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800063a0:	0007869b          	sext.w	a3,a5
    800063a4:	00269713          	slli	a4,a3,0x2
    800063a8:	000f4637          	lui	a2,0xf4
    800063ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063b0:	00d70733          	add	a4,a4,a3
    800063b4:	0037979b          	slliw	a5,a5,0x3
    800063b8:	020046b7          	lui	a3,0x2004
    800063bc:	00d787b3          	add	a5,a5,a3
    800063c0:	00c585b3          	add	a1,a1,a2
    800063c4:	00371693          	slli	a3,a4,0x3
    800063c8:	00005717          	auipc	a4,0x5
    800063cc:	1b870713          	addi	a4,a4,440 # 8000b580 <timer_scratch>
    800063d0:	00b7b023          	sd	a1,0(a5)
    800063d4:	00d70733          	add	a4,a4,a3
    800063d8:	00f73c23          	sd	a5,24(a4)
    800063dc:	02c73023          	sd	a2,32(a4)
    800063e0:	34071073          	csrw	mscratch,a4
    800063e4:	00000797          	auipc	a5,0x0
    800063e8:	64c78793          	addi	a5,a5,1612 # 80006a30 <timervec>
    800063ec:	30579073          	csrw	mtvec,a5
    800063f0:	300027f3          	csrr	a5,mstatus
    800063f4:	0087e793          	ori	a5,a5,8
    800063f8:	30079073          	csrw	mstatus,a5
    800063fc:	304027f3          	csrr	a5,mie
    80006400:	0807e793          	ori	a5,a5,128
    80006404:	30479073          	csrw	mie,a5
    80006408:	00813403          	ld	s0,8(sp)
    8000640c:	01010113          	addi	sp,sp,16
    80006410:	00008067          	ret

0000000080006414 <system_main>:
    80006414:	fe010113          	addi	sp,sp,-32
    80006418:	00813823          	sd	s0,16(sp)
    8000641c:	00913423          	sd	s1,8(sp)
    80006420:	00113c23          	sd	ra,24(sp)
    80006424:	02010413          	addi	s0,sp,32
    80006428:	00000097          	auipc	ra,0x0
    8000642c:	0c4080e7          	jalr	196(ra) # 800064ec <cpuid>
    80006430:	00005497          	auipc	s1,0x5
    80006434:	0a048493          	addi	s1,s1,160 # 8000b4d0 <started>
    80006438:	02050263          	beqz	a0,8000645c <system_main+0x48>
    8000643c:	0004a783          	lw	a5,0(s1)
    80006440:	0007879b          	sext.w	a5,a5
    80006444:	fe078ce3          	beqz	a5,8000643c <system_main+0x28>
    80006448:	0ff0000f          	fence
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	03c50513          	addi	a0,a0,60 # 80009488 <_ZZ6prtIntmE6digits+0x3a0>
    80006454:	00001097          	auipc	ra,0x1
    80006458:	a78080e7          	jalr	-1416(ra) # 80006ecc <panic>
    8000645c:	00001097          	auipc	ra,0x1
    80006460:	9cc080e7          	jalr	-1588(ra) # 80006e28 <consoleinit>
    80006464:	00001097          	auipc	ra,0x1
    80006468:	158080e7          	jalr	344(ra) # 800075bc <printfinit>
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	cc450513          	addi	a0,a0,-828 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80006474:	00001097          	auipc	ra,0x1
    80006478:	ab4080e7          	jalr	-1356(ra) # 80006f28 <__printf>
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	fdc50513          	addi	a0,a0,-36 # 80009458 <_ZZ6prtIntmE6digits+0x370>
    80006484:	00001097          	auipc	ra,0x1
    80006488:	aa4080e7          	jalr	-1372(ra) # 80006f28 <__printf>
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	ca450513          	addi	a0,a0,-860 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80006494:	00001097          	auipc	ra,0x1
    80006498:	a94080e7          	jalr	-1388(ra) # 80006f28 <__printf>
    8000649c:	00001097          	auipc	ra,0x1
    800064a0:	4ac080e7          	jalr	1196(ra) # 80007948 <kinit>
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	148080e7          	jalr	328(ra) # 800065ec <trapinit>
    800064ac:	00000097          	auipc	ra,0x0
    800064b0:	16c080e7          	jalr	364(ra) # 80006618 <trapinithart>
    800064b4:	00000097          	auipc	ra,0x0
    800064b8:	5bc080e7          	jalr	1468(ra) # 80006a70 <plicinit>
    800064bc:	00000097          	auipc	ra,0x0
    800064c0:	5dc080e7          	jalr	1500(ra) # 80006a98 <plicinithart>
    800064c4:	00000097          	auipc	ra,0x0
    800064c8:	078080e7          	jalr	120(ra) # 8000653c <userinit>
    800064cc:	0ff0000f          	fence
    800064d0:	00100793          	li	a5,1
    800064d4:	00003517          	auipc	a0,0x3
    800064d8:	f9c50513          	addi	a0,a0,-100 # 80009470 <_ZZ6prtIntmE6digits+0x388>
    800064dc:	00f4a023          	sw	a5,0(s1)
    800064e0:	00001097          	auipc	ra,0x1
    800064e4:	a48080e7          	jalr	-1464(ra) # 80006f28 <__printf>
    800064e8:	0000006f          	j	800064e8 <system_main+0xd4>

00000000800064ec <cpuid>:
    800064ec:	ff010113          	addi	sp,sp,-16
    800064f0:	00813423          	sd	s0,8(sp)
    800064f4:	01010413          	addi	s0,sp,16
    800064f8:	00020513          	mv	a0,tp
    800064fc:	00813403          	ld	s0,8(sp)
    80006500:	0005051b          	sext.w	a0,a0
    80006504:	01010113          	addi	sp,sp,16
    80006508:	00008067          	ret

000000008000650c <mycpu>:
    8000650c:	ff010113          	addi	sp,sp,-16
    80006510:	00813423          	sd	s0,8(sp)
    80006514:	01010413          	addi	s0,sp,16
    80006518:	00020793          	mv	a5,tp
    8000651c:	00813403          	ld	s0,8(sp)
    80006520:	0007879b          	sext.w	a5,a5
    80006524:	00779793          	slli	a5,a5,0x7
    80006528:	00006517          	auipc	a0,0x6
    8000652c:	08850513          	addi	a0,a0,136 # 8000c5b0 <cpus>
    80006530:	00f50533          	add	a0,a0,a5
    80006534:	01010113          	addi	sp,sp,16
    80006538:	00008067          	ret

000000008000653c <userinit>:
    8000653c:	ff010113          	addi	sp,sp,-16
    80006540:	00813423          	sd	s0,8(sp)
    80006544:	01010413          	addi	s0,sp,16
    80006548:	00813403          	ld	s0,8(sp)
    8000654c:	01010113          	addi	sp,sp,16
    80006550:	ffffb317          	auipc	t1,0xffffb
    80006554:	78c30067          	jr	1932(t1) # 80001cdc <main>

0000000080006558 <either_copyout>:
    80006558:	ff010113          	addi	sp,sp,-16
    8000655c:	00813023          	sd	s0,0(sp)
    80006560:	00113423          	sd	ra,8(sp)
    80006564:	01010413          	addi	s0,sp,16
    80006568:	02051663          	bnez	a0,80006594 <either_copyout+0x3c>
    8000656c:	00058513          	mv	a0,a1
    80006570:	00060593          	mv	a1,a2
    80006574:	0006861b          	sext.w	a2,a3
    80006578:	00002097          	auipc	ra,0x2
    8000657c:	c5c080e7          	jalr	-932(ra) # 800081d4 <__memmove>
    80006580:	00813083          	ld	ra,8(sp)
    80006584:	00013403          	ld	s0,0(sp)
    80006588:	00000513          	li	a0,0
    8000658c:	01010113          	addi	sp,sp,16
    80006590:	00008067          	ret
    80006594:	00003517          	auipc	a0,0x3
    80006598:	f1c50513          	addi	a0,a0,-228 # 800094b0 <_ZZ6prtIntmE6digits+0x3c8>
    8000659c:	00001097          	auipc	ra,0x1
    800065a0:	930080e7          	jalr	-1744(ra) # 80006ecc <panic>

00000000800065a4 <either_copyin>:
    800065a4:	ff010113          	addi	sp,sp,-16
    800065a8:	00813023          	sd	s0,0(sp)
    800065ac:	00113423          	sd	ra,8(sp)
    800065b0:	01010413          	addi	s0,sp,16
    800065b4:	02059463          	bnez	a1,800065dc <either_copyin+0x38>
    800065b8:	00060593          	mv	a1,a2
    800065bc:	0006861b          	sext.w	a2,a3
    800065c0:	00002097          	auipc	ra,0x2
    800065c4:	c14080e7          	jalr	-1004(ra) # 800081d4 <__memmove>
    800065c8:	00813083          	ld	ra,8(sp)
    800065cc:	00013403          	ld	s0,0(sp)
    800065d0:	00000513          	li	a0,0
    800065d4:	01010113          	addi	sp,sp,16
    800065d8:	00008067          	ret
    800065dc:	00003517          	auipc	a0,0x3
    800065e0:	efc50513          	addi	a0,a0,-260 # 800094d8 <_ZZ6prtIntmE6digits+0x3f0>
    800065e4:	00001097          	auipc	ra,0x1
    800065e8:	8e8080e7          	jalr	-1816(ra) # 80006ecc <panic>

00000000800065ec <trapinit>:
    800065ec:	ff010113          	addi	sp,sp,-16
    800065f0:	00813423          	sd	s0,8(sp)
    800065f4:	01010413          	addi	s0,sp,16
    800065f8:	00813403          	ld	s0,8(sp)
    800065fc:	00003597          	auipc	a1,0x3
    80006600:	f0458593          	addi	a1,a1,-252 # 80009500 <_ZZ6prtIntmE6digits+0x418>
    80006604:	00006517          	auipc	a0,0x6
    80006608:	02c50513          	addi	a0,a0,44 # 8000c630 <tickslock>
    8000660c:	01010113          	addi	sp,sp,16
    80006610:	00001317          	auipc	t1,0x1
    80006614:	5c830067          	jr	1480(t1) # 80007bd8 <initlock>

0000000080006618 <trapinithart>:
    80006618:	ff010113          	addi	sp,sp,-16
    8000661c:	00813423          	sd	s0,8(sp)
    80006620:	01010413          	addi	s0,sp,16
    80006624:	00000797          	auipc	a5,0x0
    80006628:	2fc78793          	addi	a5,a5,764 # 80006920 <kernelvec>
    8000662c:	10579073          	csrw	stvec,a5
    80006630:	00813403          	ld	s0,8(sp)
    80006634:	01010113          	addi	sp,sp,16
    80006638:	00008067          	ret

000000008000663c <usertrap>:
    8000663c:	ff010113          	addi	sp,sp,-16
    80006640:	00813423          	sd	s0,8(sp)
    80006644:	01010413          	addi	s0,sp,16
    80006648:	00813403          	ld	s0,8(sp)
    8000664c:	01010113          	addi	sp,sp,16
    80006650:	00008067          	ret

0000000080006654 <usertrapret>:
    80006654:	ff010113          	addi	sp,sp,-16
    80006658:	00813423          	sd	s0,8(sp)
    8000665c:	01010413          	addi	s0,sp,16
    80006660:	00813403          	ld	s0,8(sp)
    80006664:	01010113          	addi	sp,sp,16
    80006668:	00008067          	ret

000000008000666c <kerneltrap>:
    8000666c:	fe010113          	addi	sp,sp,-32
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00113c23          	sd	ra,24(sp)
    80006678:	00913423          	sd	s1,8(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	142025f3          	csrr	a1,scause
    80006684:	100027f3          	csrr	a5,sstatus
    80006688:	0027f793          	andi	a5,a5,2
    8000668c:	10079c63          	bnez	a5,800067a4 <kerneltrap+0x138>
    80006690:	142027f3          	csrr	a5,scause
    80006694:	0207ce63          	bltz	a5,800066d0 <kerneltrap+0x64>
    80006698:	00003517          	auipc	a0,0x3
    8000669c:	eb050513          	addi	a0,a0,-336 # 80009548 <_ZZ6prtIntmE6digits+0x460>
    800066a0:	00001097          	auipc	ra,0x1
    800066a4:	888080e7          	jalr	-1912(ra) # 80006f28 <__printf>
    800066a8:	141025f3          	csrr	a1,sepc
    800066ac:	14302673          	csrr	a2,stval
    800066b0:	00003517          	auipc	a0,0x3
    800066b4:	ea850513          	addi	a0,a0,-344 # 80009558 <_ZZ6prtIntmE6digits+0x470>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	870080e7          	jalr	-1936(ra) # 80006f28 <__printf>
    800066c0:	00003517          	auipc	a0,0x3
    800066c4:	eb050513          	addi	a0,a0,-336 # 80009570 <_ZZ6prtIntmE6digits+0x488>
    800066c8:	00001097          	auipc	ra,0x1
    800066cc:	804080e7          	jalr	-2044(ra) # 80006ecc <panic>
    800066d0:	0ff7f713          	andi	a4,a5,255
    800066d4:	00900693          	li	a3,9
    800066d8:	04d70063          	beq	a4,a3,80006718 <kerneltrap+0xac>
    800066dc:	fff00713          	li	a4,-1
    800066e0:	03f71713          	slli	a4,a4,0x3f
    800066e4:	00170713          	addi	a4,a4,1
    800066e8:	fae798e3          	bne	a5,a4,80006698 <kerneltrap+0x2c>
    800066ec:	00000097          	auipc	ra,0x0
    800066f0:	e00080e7          	jalr	-512(ra) # 800064ec <cpuid>
    800066f4:	06050663          	beqz	a0,80006760 <kerneltrap+0xf4>
    800066f8:	144027f3          	csrr	a5,sip
    800066fc:	ffd7f793          	andi	a5,a5,-3
    80006700:	14479073          	csrw	sip,a5
    80006704:	01813083          	ld	ra,24(sp)
    80006708:	01013403          	ld	s0,16(sp)
    8000670c:	00813483          	ld	s1,8(sp)
    80006710:	02010113          	addi	sp,sp,32
    80006714:	00008067          	ret
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	3cc080e7          	jalr	972(ra) # 80006ae4 <plic_claim>
    80006720:	00a00793          	li	a5,10
    80006724:	00050493          	mv	s1,a0
    80006728:	06f50863          	beq	a0,a5,80006798 <kerneltrap+0x12c>
    8000672c:	fc050ce3          	beqz	a0,80006704 <kerneltrap+0x98>
    80006730:	00050593          	mv	a1,a0
    80006734:	00003517          	auipc	a0,0x3
    80006738:	df450513          	addi	a0,a0,-524 # 80009528 <_ZZ6prtIntmE6digits+0x440>
    8000673c:	00000097          	auipc	ra,0x0
    80006740:	7ec080e7          	jalr	2028(ra) # 80006f28 <__printf>
    80006744:	01013403          	ld	s0,16(sp)
    80006748:	01813083          	ld	ra,24(sp)
    8000674c:	00048513          	mv	a0,s1
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	02010113          	addi	sp,sp,32
    80006758:	00000317          	auipc	t1,0x0
    8000675c:	3c430067          	jr	964(t1) # 80006b1c <plic_complete>
    80006760:	00006517          	auipc	a0,0x6
    80006764:	ed050513          	addi	a0,a0,-304 # 8000c630 <tickslock>
    80006768:	00001097          	auipc	ra,0x1
    8000676c:	494080e7          	jalr	1172(ra) # 80007bfc <acquire>
    80006770:	00005717          	auipc	a4,0x5
    80006774:	d6470713          	addi	a4,a4,-668 # 8000b4d4 <ticks>
    80006778:	00072783          	lw	a5,0(a4)
    8000677c:	00006517          	auipc	a0,0x6
    80006780:	eb450513          	addi	a0,a0,-332 # 8000c630 <tickslock>
    80006784:	0017879b          	addiw	a5,a5,1
    80006788:	00f72023          	sw	a5,0(a4)
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	53c080e7          	jalr	1340(ra) # 80007cc8 <release>
    80006794:	f65ff06f          	j	800066f8 <kerneltrap+0x8c>
    80006798:	00001097          	auipc	ra,0x1
    8000679c:	098080e7          	jalr	152(ra) # 80007830 <uartintr>
    800067a0:	fa5ff06f          	j	80006744 <kerneltrap+0xd8>
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	d6450513          	addi	a0,a0,-668 # 80009508 <_ZZ6prtIntmE6digits+0x420>
    800067ac:	00000097          	auipc	ra,0x0
    800067b0:	720080e7          	jalr	1824(ra) # 80006ecc <panic>

00000000800067b4 <clockintr>:
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00813823          	sd	s0,16(sp)
    800067bc:	00913423          	sd	s1,8(sp)
    800067c0:	00113c23          	sd	ra,24(sp)
    800067c4:	02010413          	addi	s0,sp,32
    800067c8:	00006497          	auipc	s1,0x6
    800067cc:	e6848493          	addi	s1,s1,-408 # 8000c630 <tickslock>
    800067d0:	00048513          	mv	a0,s1
    800067d4:	00001097          	auipc	ra,0x1
    800067d8:	428080e7          	jalr	1064(ra) # 80007bfc <acquire>
    800067dc:	00005717          	auipc	a4,0x5
    800067e0:	cf870713          	addi	a4,a4,-776 # 8000b4d4 <ticks>
    800067e4:	00072783          	lw	a5,0(a4)
    800067e8:	01013403          	ld	s0,16(sp)
    800067ec:	01813083          	ld	ra,24(sp)
    800067f0:	00048513          	mv	a0,s1
    800067f4:	0017879b          	addiw	a5,a5,1
    800067f8:	00813483          	ld	s1,8(sp)
    800067fc:	00f72023          	sw	a5,0(a4)
    80006800:	02010113          	addi	sp,sp,32
    80006804:	00001317          	auipc	t1,0x1
    80006808:	4c430067          	jr	1220(t1) # 80007cc8 <release>

000000008000680c <devintr>:
    8000680c:	142027f3          	csrr	a5,scause
    80006810:	00000513          	li	a0,0
    80006814:	0007c463          	bltz	a5,8000681c <devintr+0x10>
    80006818:	00008067          	ret
    8000681c:	fe010113          	addi	sp,sp,-32
    80006820:	00813823          	sd	s0,16(sp)
    80006824:	00113c23          	sd	ra,24(sp)
    80006828:	00913423          	sd	s1,8(sp)
    8000682c:	02010413          	addi	s0,sp,32
    80006830:	0ff7f713          	andi	a4,a5,255
    80006834:	00900693          	li	a3,9
    80006838:	04d70c63          	beq	a4,a3,80006890 <devintr+0x84>
    8000683c:	fff00713          	li	a4,-1
    80006840:	03f71713          	slli	a4,a4,0x3f
    80006844:	00170713          	addi	a4,a4,1
    80006848:	00e78c63          	beq	a5,a4,80006860 <devintr+0x54>
    8000684c:	01813083          	ld	ra,24(sp)
    80006850:	01013403          	ld	s0,16(sp)
    80006854:	00813483          	ld	s1,8(sp)
    80006858:	02010113          	addi	sp,sp,32
    8000685c:	00008067          	ret
    80006860:	00000097          	auipc	ra,0x0
    80006864:	c8c080e7          	jalr	-884(ra) # 800064ec <cpuid>
    80006868:	06050663          	beqz	a0,800068d4 <devintr+0xc8>
    8000686c:	144027f3          	csrr	a5,sip
    80006870:	ffd7f793          	andi	a5,a5,-3
    80006874:	14479073          	csrw	sip,a5
    80006878:	01813083          	ld	ra,24(sp)
    8000687c:	01013403          	ld	s0,16(sp)
    80006880:	00813483          	ld	s1,8(sp)
    80006884:	00200513          	li	a0,2
    80006888:	02010113          	addi	sp,sp,32
    8000688c:	00008067          	ret
    80006890:	00000097          	auipc	ra,0x0
    80006894:	254080e7          	jalr	596(ra) # 80006ae4 <plic_claim>
    80006898:	00a00793          	li	a5,10
    8000689c:	00050493          	mv	s1,a0
    800068a0:	06f50663          	beq	a0,a5,8000690c <devintr+0x100>
    800068a4:	00100513          	li	a0,1
    800068a8:	fa0482e3          	beqz	s1,8000684c <devintr+0x40>
    800068ac:	00048593          	mv	a1,s1
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	c7850513          	addi	a0,a0,-904 # 80009528 <_ZZ6prtIntmE6digits+0x440>
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	670080e7          	jalr	1648(ra) # 80006f28 <__printf>
    800068c0:	00048513          	mv	a0,s1
    800068c4:	00000097          	auipc	ra,0x0
    800068c8:	258080e7          	jalr	600(ra) # 80006b1c <plic_complete>
    800068cc:	00100513          	li	a0,1
    800068d0:	f7dff06f          	j	8000684c <devintr+0x40>
    800068d4:	00006517          	auipc	a0,0x6
    800068d8:	d5c50513          	addi	a0,a0,-676 # 8000c630 <tickslock>
    800068dc:	00001097          	auipc	ra,0x1
    800068e0:	320080e7          	jalr	800(ra) # 80007bfc <acquire>
    800068e4:	00005717          	auipc	a4,0x5
    800068e8:	bf070713          	addi	a4,a4,-1040 # 8000b4d4 <ticks>
    800068ec:	00072783          	lw	a5,0(a4)
    800068f0:	00006517          	auipc	a0,0x6
    800068f4:	d4050513          	addi	a0,a0,-704 # 8000c630 <tickslock>
    800068f8:	0017879b          	addiw	a5,a5,1
    800068fc:	00f72023          	sw	a5,0(a4)
    80006900:	00001097          	auipc	ra,0x1
    80006904:	3c8080e7          	jalr	968(ra) # 80007cc8 <release>
    80006908:	f65ff06f          	j	8000686c <devintr+0x60>
    8000690c:	00001097          	auipc	ra,0x1
    80006910:	f24080e7          	jalr	-220(ra) # 80007830 <uartintr>
    80006914:	fadff06f          	j	800068c0 <devintr+0xb4>
	...

0000000080006920 <kernelvec>:
    80006920:	f0010113          	addi	sp,sp,-256
    80006924:	00113023          	sd	ra,0(sp)
    80006928:	00213423          	sd	sp,8(sp)
    8000692c:	00313823          	sd	gp,16(sp)
    80006930:	00413c23          	sd	tp,24(sp)
    80006934:	02513023          	sd	t0,32(sp)
    80006938:	02613423          	sd	t1,40(sp)
    8000693c:	02713823          	sd	t2,48(sp)
    80006940:	02813c23          	sd	s0,56(sp)
    80006944:	04913023          	sd	s1,64(sp)
    80006948:	04a13423          	sd	a0,72(sp)
    8000694c:	04b13823          	sd	a1,80(sp)
    80006950:	04c13c23          	sd	a2,88(sp)
    80006954:	06d13023          	sd	a3,96(sp)
    80006958:	06e13423          	sd	a4,104(sp)
    8000695c:	06f13823          	sd	a5,112(sp)
    80006960:	07013c23          	sd	a6,120(sp)
    80006964:	09113023          	sd	a7,128(sp)
    80006968:	09213423          	sd	s2,136(sp)
    8000696c:	09313823          	sd	s3,144(sp)
    80006970:	09413c23          	sd	s4,152(sp)
    80006974:	0b513023          	sd	s5,160(sp)
    80006978:	0b613423          	sd	s6,168(sp)
    8000697c:	0b713823          	sd	s7,176(sp)
    80006980:	0b813c23          	sd	s8,184(sp)
    80006984:	0d913023          	sd	s9,192(sp)
    80006988:	0da13423          	sd	s10,200(sp)
    8000698c:	0db13823          	sd	s11,208(sp)
    80006990:	0dc13c23          	sd	t3,216(sp)
    80006994:	0fd13023          	sd	t4,224(sp)
    80006998:	0fe13423          	sd	t5,232(sp)
    8000699c:	0ff13823          	sd	t6,240(sp)
    800069a0:	ccdff0ef          	jal	ra,8000666c <kerneltrap>
    800069a4:	00013083          	ld	ra,0(sp)
    800069a8:	00813103          	ld	sp,8(sp)
    800069ac:	01013183          	ld	gp,16(sp)
    800069b0:	02013283          	ld	t0,32(sp)
    800069b4:	02813303          	ld	t1,40(sp)
    800069b8:	03013383          	ld	t2,48(sp)
    800069bc:	03813403          	ld	s0,56(sp)
    800069c0:	04013483          	ld	s1,64(sp)
    800069c4:	04813503          	ld	a0,72(sp)
    800069c8:	05013583          	ld	a1,80(sp)
    800069cc:	05813603          	ld	a2,88(sp)
    800069d0:	06013683          	ld	a3,96(sp)
    800069d4:	06813703          	ld	a4,104(sp)
    800069d8:	07013783          	ld	a5,112(sp)
    800069dc:	07813803          	ld	a6,120(sp)
    800069e0:	08013883          	ld	a7,128(sp)
    800069e4:	08813903          	ld	s2,136(sp)
    800069e8:	09013983          	ld	s3,144(sp)
    800069ec:	09813a03          	ld	s4,152(sp)
    800069f0:	0a013a83          	ld	s5,160(sp)
    800069f4:	0a813b03          	ld	s6,168(sp)
    800069f8:	0b013b83          	ld	s7,176(sp)
    800069fc:	0b813c03          	ld	s8,184(sp)
    80006a00:	0c013c83          	ld	s9,192(sp)
    80006a04:	0c813d03          	ld	s10,200(sp)
    80006a08:	0d013d83          	ld	s11,208(sp)
    80006a0c:	0d813e03          	ld	t3,216(sp)
    80006a10:	0e013e83          	ld	t4,224(sp)
    80006a14:	0e813f03          	ld	t5,232(sp)
    80006a18:	0f013f83          	ld	t6,240(sp)
    80006a1c:	10010113          	addi	sp,sp,256
    80006a20:	10200073          	sret
    80006a24:	00000013          	nop
    80006a28:	00000013          	nop
    80006a2c:	00000013          	nop

0000000080006a30 <timervec>:
    80006a30:	34051573          	csrrw	a0,mscratch,a0
    80006a34:	00b53023          	sd	a1,0(a0)
    80006a38:	00c53423          	sd	a2,8(a0)
    80006a3c:	00d53823          	sd	a3,16(a0)
    80006a40:	01853583          	ld	a1,24(a0)
    80006a44:	02053603          	ld	a2,32(a0)
    80006a48:	0005b683          	ld	a3,0(a1)
    80006a4c:	00c686b3          	add	a3,a3,a2
    80006a50:	00d5b023          	sd	a3,0(a1)
    80006a54:	00200593          	li	a1,2
    80006a58:	14459073          	csrw	sip,a1
    80006a5c:	01053683          	ld	a3,16(a0)
    80006a60:	00853603          	ld	a2,8(a0)
    80006a64:	00053583          	ld	a1,0(a0)
    80006a68:	34051573          	csrrw	a0,mscratch,a0
    80006a6c:	30200073          	mret

0000000080006a70 <plicinit>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00813403          	ld	s0,8(sp)
    80006a80:	0c0007b7          	lui	a5,0xc000
    80006a84:	00100713          	li	a4,1
    80006a88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a8c:	00e7a223          	sw	a4,4(a5)
    80006a90:	01010113          	addi	sp,sp,16
    80006a94:	00008067          	ret

0000000080006a98 <plicinithart>:
    80006a98:	ff010113          	addi	sp,sp,-16
    80006a9c:	00813023          	sd	s0,0(sp)
    80006aa0:	00113423          	sd	ra,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	a44080e7          	jalr	-1468(ra) # 800064ec <cpuid>
    80006ab0:	0085171b          	slliw	a4,a0,0x8
    80006ab4:	0c0027b7          	lui	a5,0xc002
    80006ab8:	00e787b3          	add	a5,a5,a4
    80006abc:	40200713          	li	a4,1026
    80006ac0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ac4:	00813083          	ld	ra,8(sp)
    80006ac8:	00013403          	ld	s0,0(sp)
    80006acc:	00d5151b          	slliw	a0,a0,0xd
    80006ad0:	0c2017b7          	lui	a5,0xc201
    80006ad4:	00a78533          	add	a0,a5,a0
    80006ad8:	00052023          	sw	zero,0(a0)
    80006adc:	01010113          	addi	sp,sp,16
    80006ae0:	00008067          	ret

0000000080006ae4 <plic_claim>:
    80006ae4:	ff010113          	addi	sp,sp,-16
    80006ae8:	00813023          	sd	s0,0(sp)
    80006aec:	00113423          	sd	ra,8(sp)
    80006af0:	01010413          	addi	s0,sp,16
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	9f8080e7          	jalr	-1544(ra) # 800064ec <cpuid>
    80006afc:	00813083          	ld	ra,8(sp)
    80006b00:	00013403          	ld	s0,0(sp)
    80006b04:	00d5151b          	slliw	a0,a0,0xd
    80006b08:	0c2017b7          	lui	a5,0xc201
    80006b0c:	00a78533          	add	a0,a5,a0
    80006b10:	00452503          	lw	a0,4(a0)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <plic_complete>:
    80006b1c:	fe010113          	addi	sp,sp,-32
    80006b20:	00813823          	sd	s0,16(sp)
    80006b24:	00913423          	sd	s1,8(sp)
    80006b28:	00113c23          	sd	ra,24(sp)
    80006b2c:	02010413          	addi	s0,sp,32
    80006b30:	00050493          	mv	s1,a0
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	9b8080e7          	jalr	-1608(ra) # 800064ec <cpuid>
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00d5179b          	slliw	a5,a0,0xd
    80006b48:	0c201737          	lui	a4,0xc201
    80006b4c:	00f707b3          	add	a5,a4,a5
    80006b50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b54:	00813483          	ld	s1,8(sp)
    80006b58:	02010113          	addi	sp,sp,32
    80006b5c:	00008067          	ret

0000000080006b60 <consolewrite>:
    80006b60:	fb010113          	addi	sp,sp,-80
    80006b64:	04813023          	sd	s0,64(sp)
    80006b68:	04113423          	sd	ra,72(sp)
    80006b6c:	02913c23          	sd	s1,56(sp)
    80006b70:	03213823          	sd	s2,48(sp)
    80006b74:	03313423          	sd	s3,40(sp)
    80006b78:	03413023          	sd	s4,32(sp)
    80006b7c:	01513c23          	sd	s5,24(sp)
    80006b80:	05010413          	addi	s0,sp,80
    80006b84:	06c05c63          	blez	a2,80006bfc <consolewrite+0x9c>
    80006b88:	00060993          	mv	s3,a2
    80006b8c:	00050a13          	mv	s4,a0
    80006b90:	00058493          	mv	s1,a1
    80006b94:	00000913          	li	s2,0
    80006b98:	fff00a93          	li	s5,-1
    80006b9c:	01c0006f          	j	80006bb8 <consolewrite+0x58>
    80006ba0:	fbf44503          	lbu	a0,-65(s0)
    80006ba4:	0019091b          	addiw	s2,s2,1
    80006ba8:	00148493          	addi	s1,s1,1
    80006bac:	00001097          	auipc	ra,0x1
    80006bb0:	a9c080e7          	jalr	-1380(ra) # 80007648 <uartputc>
    80006bb4:	03298063          	beq	s3,s2,80006bd4 <consolewrite+0x74>
    80006bb8:	00048613          	mv	a2,s1
    80006bbc:	00100693          	li	a3,1
    80006bc0:	000a0593          	mv	a1,s4
    80006bc4:	fbf40513          	addi	a0,s0,-65
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	9dc080e7          	jalr	-1572(ra) # 800065a4 <either_copyin>
    80006bd0:	fd5518e3          	bne	a0,s5,80006ba0 <consolewrite+0x40>
    80006bd4:	04813083          	ld	ra,72(sp)
    80006bd8:	04013403          	ld	s0,64(sp)
    80006bdc:	03813483          	ld	s1,56(sp)
    80006be0:	02813983          	ld	s3,40(sp)
    80006be4:	02013a03          	ld	s4,32(sp)
    80006be8:	01813a83          	ld	s5,24(sp)
    80006bec:	00090513          	mv	a0,s2
    80006bf0:	03013903          	ld	s2,48(sp)
    80006bf4:	05010113          	addi	sp,sp,80
    80006bf8:	00008067          	ret
    80006bfc:	00000913          	li	s2,0
    80006c00:	fd5ff06f          	j	80006bd4 <consolewrite+0x74>

0000000080006c04 <consoleread>:
    80006c04:	f9010113          	addi	sp,sp,-112
    80006c08:	06813023          	sd	s0,96(sp)
    80006c0c:	04913c23          	sd	s1,88(sp)
    80006c10:	05213823          	sd	s2,80(sp)
    80006c14:	05313423          	sd	s3,72(sp)
    80006c18:	05413023          	sd	s4,64(sp)
    80006c1c:	03513c23          	sd	s5,56(sp)
    80006c20:	03613823          	sd	s6,48(sp)
    80006c24:	03713423          	sd	s7,40(sp)
    80006c28:	03813023          	sd	s8,32(sp)
    80006c2c:	06113423          	sd	ra,104(sp)
    80006c30:	01913c23          	sd	s9,24(sp)
    80006c34:	07010413          	addi	s0,sp,112
    80006c38:	00060b93          	mv	s7,a2
    80006c3c:	00050913          	mv	s2,a0
    80006c40:	00058c13          	mv	s8,a1
    80006c44:	00060b1b          	sext.w	s6,a2
    80006c48:	00006497          	auipc	s1,0x6
    80006c4c:	a1048493          	addi	s1,s1,-1520 # 8000c658 <cons>
    80006c50:	00400993          	li	s3,4
    80006c54:	fff00a13          	li	s4,-1
    80006c58:	00a00a93          	li	s5,10
    80006c5c:	05705e63          	blez	s7,80006cb8 <consoleread+0xb4>
    80006c60:	09c4a703          	lw	a4,156(s1)
    80006c64:	0984a783          	lw	a5,152(s1)
    80006c68:	0007071b          	sext.w	a4,a4
    80006c6c:	08e78463          	beq	a5,a4,80006cf4 <consoleread+0xf0>
    80006c70:	07f7f713          	andi	a4,a5,127
    80006c74:	00e48733          	add	a4,s1,a4
    80006c78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c7c:	0017869b          	addiw	a3,a5,1
    80006c80:	08d4ac23          	sw	a3,152(s1)
    80006c84:	00070c9b          	sext.w	s9,a4
    80006c88:	0b370663          	beq	a4,s3,80006d34 <consoleread+0x130>
    80006c8c:	00100693          	li	a3,1
    80006c90:	f9f40613          	addi	a2,s0,-97
    80006c94:	000c0593          	mv	a1,s8
    80006c98:	00090513          	mv	a0,s2
    80006c9c:	f8e40fa3          	sb	a4,-97(s0)
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	8b8080e7          	jalr	-1864(ra) # 80006558 <either_copyout>
    80006ca8:	01450863          	beq	a0,s4,80006cb8 <consoleread+0xb4>
    80006cac:	001c0c13          	addi	s8,s8,1
    80006cb0:	fffb8b9b          	addiw	s7,s7,-1
    80006cb4:	fb5c94e3          	bne	s9,s5,80006c5c <consoleread+0x58>
    80006cb8:	000b851b          	sext.w	a0,s7
    80006cbc:	06813083          	ld	ra,104(sp)
    80006cc0:	06013403          	ld	s0,96(sp)
    80006cc4:	05813483          	ld	s1,88(sp)
    80006cc8:	05013903          	ld	s2,80(sp)
    80006ccc:	04813983          	ld	s3,72(sp)
    80006cd0:	04013a03          	ld	s4,64(sp)
    80006cd4:	03813a83          	ld	s5,56(sp)
    80006cd8:	02813b83          	ld	s7,40(sp)
    80006cdc:	02013c03          	ld	s8,32(sp)
    80006ce0:	01813c83          	ld	s9,24(sp)
    80006ce4:	40ab053b          	subw	a0,s6,a0
    80006ce8:	03013b03          	ld	s6,48(sp)
    80006cec:	07010113          	addi	sp,sp,112
    80006cf0:	00008067          	ret
    80006cf4:	00001097          	auipc	ra,0x1
    80006cf8:	1d8080e7          	jalr	472(ra) # 80007ecc <push_on>
    80006cfc:	0984a703          	lw	a4,152(s1)
    80006d00:	09c4a783          	lw	a5,156(s1)
    80006d04:	0007879b          	sext.w	a5,a5
    80006d08:	fef70ce3          	beq	a4,a5,80006d00 <consoleread+0xfc>
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	234080e7          	jalr	564(ra) # 80007f40 <pop_on>
    80006d14:	0984a783          	lw	a5,152(s1)
    80006d18:	07f7f713          	andi	a4,a5,127
    80006d1c:	00e48733          	add	a4,s1,a4
    80006d20:	01874703          	lbu	a4,24(a4)
    80006d24:	0017869b          	addiw	a3,a5,1
    80006d28:	08d4ac23          	sw	a3,152(s1)
    80006d2c:	00070c9b          	sext.w	s9,a4
    80006d30:	f5371ee3          	bne	a4,s3,80006c8c <consoleread+0x88>
    80006d34:	000b851b          	sext.w	a0,s7
    80006d38:	f96bf2e3          	bgeu	s7,s6,80006cbc <consoleread+0xb8>
    80006d3c:	08f4ac23          	sw	a5,152(s1)
    80006d40:	f7dff06f          	j	80006cbc <consoleread+0xb8>

0000000080006d44 <consputc>:
    80006d44:	10000793          	li	a5,256
    80006d48:	00f50663          	beq	a0,a5,80006d54 <consputc+0x10>
    80006d4c:	00001317          	auipc	t1,0x1
    80006d50:	9f430067          	jr	-1548(t1) # 80007740 <uartputc_sync>
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00113423          	sd	ra,8(sp)
    80006d5c:	00813023          	sd	s0,0(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00800513          	li	a0,8
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	9d8080e7          	jalr	-1576(ra) # 80007740 <uartputc_sync>
    80006d70:	02000513          	li	a0,32
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	9cc080e7          	jalr	-1588(ra) # 80007740 <uartputc_sync>
    80006d7c:	00013403          	ld	s0,0(sp)
    80006d80:	00813083          	ld	ra,8(sp)
    80006d84:	00800513          	li	a0,8
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00001317          	auipc	t1,0x1
    80006d90:	9b430067          	jr	-1612(t1) # 80007740 <uartputc_sync>

0000000080006d94 <consoleintr>:
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	01213023          	sd	s2,0(sp)
    80006da4:	00113c23          	sd	ra,24(sp)
    80006da8:	02010413          	addi	s0,sp,32
    80006dac:	00006917          	auipc	s2,0x6
    80006db0:	8ac90913          	addi	s2,s2,-1876 # 8000c658 <cons>
    80006db4:	00050493          	mv	s1,a0
    80006db8:	00090513          	mv	a0,s2
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	e40080e7          	jalr	-448(ra) # 80007bfc <acquire>
    80006dc4:	02048c63          	beqz	s1,80006dfc <consoleintr+0x68>
    80006dc8:	0a092783          	lw	a5,160(s2)
    80006dcc:	09892703          	lw	a4,152(s2)
    80006dd0:	07f00693          	li	a3,127
    80006dd4:	40e7873b          	subw	a4,a5,a4
    80006dd8:	02e6e263          	bltu	a3,a4,80006dfc <consoleintr+0x68>
    80006ddc:	00d00713          	li	a4,13
    80006de0:	04e48063          	beq	s1,a4,80006e20 <consoleintr+0x8c>
    80006de4:	07f7f713          	andi	a4,a5,127
    80006de8:	00e90733          	add	a4,s2,a4
    80006dec:	0017879b          	addiw	a5,a5,1
    80006df0:	0af92023          	sw	a5,160(s2)
    80006df4:	00970c23          	sb	s1,24(a4)
    80006df8:	08f92e23          	sw	a5,156(s2)
    80006dfc:	01013403          	ld	s0,16(sp)
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	00013903          	ld	s2,0(sp)
    80006e0c:	00006517          	auipc	a0,0x6
    80006e10:	84c50513          	addi	a0,a0,-1972 # 8000c658 <cons>
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00001317          	auipc	t1,0x1
    80006e1c:	eb030067          	jr	-336(t1) # 80007cc8 <release>
    80006e20:	00a00493          	li	s1,10
    80006e24:	fc1ff06f          	j	80006de4 <consoleintr+0x50>

0000000080006e28 <consoleinit>:
    80006e28:	fe010113          	addi	sp,sp,-32
    80006e2c:	00113c23          	sd	ra,24(sp)
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00913423          	sd	s1,8(sp)
    80006e38:	02010413          	addi	s0,sp,32
    80006e3c:	00006497          	auipc	s1,0x6
    80006e40:	81c48493          	addi	s1,s1,-2020 # 8000c658 <cons>
    80006e44:	00048513          	mv	a0,s1
    80006e48:	00002597          	auipc	a1,0x2
    80006e4c:	73858593          	addi	a1,a1,1848 # 80009580 <_ZZ6prtIntmE6digits+0x498>
    80006e50:	00001097          	auipc	ra,0x1
    80006e54:	d88080e7          	jalr	-632(ra) # 80007bd8 <initlock>
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	7ac080e7          	jalr	1964(ra) # 80007604 <uartinit>
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00000797          	auipc	a5,0x0
    80006e6c:	d9c78793          	addi	a5,a5,-612 # 80006c04 <consoleread>
    80006e70:	0af4bc23          	sd	a5,184(s1)
    80006e74:	00000797          	auipc	a5,0x0
    80006e78:	cec78793          	addi	a5,a5,-788 # 80006b60 <consolewrite>
    80006e7c:	0cf4b023          	sd	a5,192(s1)
    80006e80:	00813483          	ld	s1,8(sp)
    80006e84:	02010113          	addi	sp,sp,32
    80006e88:	00008067          	ret

0000000080006e8c <console_read>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	00006317          	auipc	t1,0x6
    80006ea0:	87433303          	ld	t1,-1932(t1) # 8000c710 <devsw+0x10>
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00030067          	jr	t1

0000000080006eac <console_write>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813423          	sd	s0,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	00813403          	ld	s0,8(sp)
    80006ebc:	00006317          	auipc	t1,0x6
    80006ec0:	85c33303          	ld	t1,-1956(t1) # 8000c718 <devsw+0x18>
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00030067          	jr	t1

0000000080006ecc <panic>:
    80006ecc:	fe010113          	addi	sp,sp,-32
    80006ed0:	00113c23          	sd	ra,24(sp)
    80006ed4:	00813823          	sd	s0,16(sp)
    80006ed8:	00913423          	sd	s1,8(sp)
    80006edc:	02010413          	addi	s0,sp,32
    80006ee0:	00050493          	mv	s1,a0
    80006ee4:	00002517          	auipc	a0,0x2
    80006ee8:	6a450513          	addi	a0,a0,1700 # 80009588 <_ZZ6prtIntmE6digits+0x4a0>
    80006eec:	00006797          	auipc	a5,0x6
    80006ef0:	8c07a623          	sw	zero,-1844(a5) # 8000c7b8 <pr+0x18>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	034080e7          	jalr	52(ra) # 80006f28 <__printf>
    80006efc:	00048513          	mv	a0,s1
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	028080e7          	jalr	40(ra) # 80006f28 <__printf>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	22850513          	addi	a0,a0,552 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	018080e7          	jalr	24(ra) # 80006f28 <__printf>
    80006f18:	00100793          	li	a5,1
    80006f1c:	00004717          	auipc	a4,0x4
    80006f20:	5af72e23          	sw	a5,1468(a4) # 8000b4d8 <panicked>
    80006f24:	0000006f          	j	80006f24 <panic+0x58>

0000000080006f28 <__printf>:
    80006f28:	f3010113          	addi	sp,sp,-208
    80006f2c:	08813023          	sd	s0,128(sp)
    80006f30:	07313423          	sd	s3,104(sp)
    80006f34:	09010413          	addi	s0,sp,144
    80006f38:	05813023          	sd	s8,64(sp)
    80006f3c:	08113423          	sd	ra,136(sp)
    80006f40:	06913c23          	sd	s1,120(sp)
    80006f44:	07213823          	sd	s2,112(sp)
    80006f48:	07413023          	sd	s4,96(sp)
    80006f4c:	05513c23          	sd	s5,88(sp)
    80006f50:	05613823          	sd	s6,80(sp)
    80006f54:	05713423          	sd	s7,72(sp)
    80006f58:	03913c23          	sd	s9,56(sp)
    80006f5c:	03a13823          	sd	s10,48(sp)
    80006f60:	03b13423          	sd	s11,40(sp)
    80006f64:	00006317          	auipc	t1,0x6
    80006f68:	83c30313          	addi	t1,t1,-1988 # 8000c7a0 <pr>
    80006f6c:	01832c03          	lw	s8,24(t1)
    80006f70:	00b43423          	sd	a1,8(s0)
    80006f74:	00c43823          	sd	a2,16(s0)
    80006f78:	00d43c23          	sd	a3,24(s0)
    80006f7c:	02e43023          	sd	a4,32(s0)
    80006f80:	02f43423          	sd	a5,40(s0)
    80006f84:	03043823          	sd	a6,48(s0)
    80006f88:	03143c23          	sd	a7,56(s0)
    80006f8c:	00050993          	mv	s3,a0
    80006f90:	4a0c1663          	bnez	s8,8000743c <__printf+0x514>
    80006f94:	60098c63          	beqz	s3,800075ac <__printf+0x684>
    80006f98:	0009c503          	lbu	a0,0(s3)
    80006f9c:	00840793          	addi	a5,s0,8
    80006fa0:	f6f43c23          	sd	a5,-136(s0)
    80006fa4:	00000493          	li	s1,0
    80006fa8:	22050063          	beqz	a0,800071c8 <__printf+0x2a0>
    80006fac:	00002a37          	lui	s4,0x2
    80006fb0:	00018ab7          	lui	s5,0x18
    80006fb4:	000f4b37          	lui	s6,0xf4
    80006fb8:	00989bb7          	lui	s7,0x989
    80006fbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fcc:	00148c9b          	addiw	s9,s1,1
    80006fd0:	02500793          	li	a5,37
    80006fd4:	01998933          	add	s2,s3,s9
    80006fd8:	38f51263          	bne	a0,a5,8000735c <__printf+0x434>
    80006fdc:	00094783          	lbu	a5,0(s2)
    80006fe0:	00078c9b          	sext.w	s9,a5
    80006fe4:	1e078263          	beqz	a5,800071c8 <__printf+0x2a0>
    80006fe8:	0024849b          	addiw	s1,s1,2
    80006fec:	07000713          	li	a4,112
    80006ff0:	00998933          	add	s2,s3,s1
    80006ff4:	38e78a63          	beq	a5,a4,80007388 <__printf+0x460>
    80006ff8:	20f76863          	bltu	a4,a5,80007208 <__printf+0x2e0>
    80006ffc:	42a78863          	beq	a5,a0,8000742c <__printf+0x504>
    80007000:	06400713          	li	a4,100
    80007004:	40e79663          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007008:	f7843783          	ld	a5,-136(s0)
    8000700c:	0007a603          	lw	a2,0(a5)
    80007010:	00878793          	addi	a5,a5,8
    80007014:	f6f43c23          	sd	a5,-136(s0)
    80007018:	42064a63          	bltz	a2,8000744c <__printf+0x524>
    8000701c:	00a00713          	li	a4,10
    80007020:	02e677bb          	remuw	a5,a2,a4
    80007024:	00002d97          	auipc	s11,0x2
    80007028:	58cd8d93          	addi	s11,s11,1420 # 800095b0 <digits>
    8000702c:	00900593          	li	a1,9
    80007030:	0006051b          	sext.w	a0,a2
    80007034:	00000c93          	li	s9,0
    80007038:	02079793          	slli	a5,a5,0x20
    8000703c:	0207d793          	srli	a5,a5,0x20
    80007040:	00fd87b3          	add	a5,s11,a5
    80007044:	0007c783          	lbu	a5,0(a5)
    80007048:	02e656bb          	divuw	a3,a2,a4
    8000704c:	f8f40023          	sb	a5,-128(s0)
    80007050:	14c5d863          	bge	a1,a2,800071a0 <__printf+0x278>
    80007054:	06300593          	li	a1,99
    80007058:	00100c93          	li	s9,1
    8000705c:	02e6f7bb          	remuw	a5,a3,a4
    80007060:	02079793          	slli	a5,a5,0x20
    80007064:	0207d793          	srli	a5,a5,0x20
    80007068:	00fd87b3          	add	a5,s11,a5
    8000706c:	0007c783          	lbu	a5,0(a5)
    80007070:	02e6d73b          	divuw	a4,a3,a4
    80007074:	f8f400a3          	sb	a5,-127(s0)
    80007078:	12a5f463          	bgeu	a1,a0,800071a0 <__printf+0x278>
    8000707c:	00a00693          	li	a3,10
    80007080:	00900593          	li	a1,9
    80007084:	02d777bb          	remuw	a5,a4,a3
    80007088:	02079793          	slli	a5,a5,0x20
    8000708c:	0207d793          	srli	a5,a5,0x20
    80007090:	00fd87b3          	add	a5,s11,a5
    80007094:	0007c503          	lbu	a0,0(a5)
    80007098:	02d757bb          	divuw	a5,a4,a3
    8000709c:	f8a40123          	sb	a0,-126(s0)
    800070a0:	48e5f263          	bgeu	a1,a4,80007524 <__printf+0x5fc>
    800070a4:	06300513          	li	a0,99
    800070a8:	02d7f5bb          	remuw	a1,a5,a3
    800070ac:	02059593          	slli	a1,a1,0x20
    800070b0:	0205d593          	srli	a1,a1,0x20
    800070b4:	00bd85b3          	add	a1,s11,a1
    800070b8:	0005c583          	lbu	a1,0(a1)
    800070bc:	02d7d7bb          	divuw	a5,a5,a3
    800070c0:	f8b401a3          	sb	a1,-125(s0)
    800070c4:	48e57263          	bgeu	a0,a4,80007548 <__printf+0x620>
    800070c8:	3e700513          	li	a0,999
    800070cc:	02d7f5bb          	remuw	a1,a5,a3
    800070d0:	02059593          	slli	a1,a1,0x20
    800070d4:	0205d593          	srli	a1,a1,0x20
    800070d8:	00bd85b3          	add	a1,s11,a1
    800070dc:	0005c583          	lbu	a1,0(a1)
    800070e0:	02d7d7bb          	divuw	a5,a5,a3
    800070e4:	f8b40223          	sb	a1,-124(s0)
    800070e8:	46e57663          	bgeu	a0,a4,80007554 <__printf+0x62c>
    800070ec:	02d7f5bb          	remuw	a1,a5,a3
    800070f0:	02059593          	slli	a1,a1,0x20
    800070f4:	0205d593          	srli	a1,a1,0x20
    800070f8:	00bd85b3          	add	a1,s11,a1
    800070fc:	0005c583          	lbu	a1,0(a1)
    80007100:	02d7d7bb          	divuw	a5,a5,a3
    80007104:	f8b402a3          	sb	a1,-123(s0)
    80007108:	46ea7863          	bgeu	s4,a4,80007578 <__printf+0x650>
    8000710c:	02d7f5bb          	remuw	a1,a5,a3
    80007110:	02059593          	slli	a1,a1,0x20
    80007114:	0205d593          	srli	a1,a1,0x20
    80007118:	00bd85b3          	add	a1,s11,a1
    8000711c:	0005c583          	lbu	a1,0(a1)
    80007120:	02d7d7bb          	divuw	a5,a5,a3
    80007124:	f8b40323          	sb	a1,-122(s0)
    80007128:	3eeaf863          	bgeu	s5,a4,80007518 <__printf+0x5f0>
    8000712c:	02d7f5bb          	remuw	a1,a5,a3
    80007130:	02059593          	slli	a1,a1,0x20
    80007134:	0205d593          	srli	a1,a1,0x20
    80007138:	00bd85b3          	add	a1,s11,a1
    8000713c:	0005c583          	lbu	a1,0(a1)
    80007140:	02d7d7bb          	divuw	a5,a5,a3
    80007144:	f8b403a3          	sb	a1,-121(s0)
    80007148:	42eb7e63          	bgeu	s6,a4,80007584 <__printf+0x65c>
    8000714c:	02d7f5bb          	remuw	a1,a5,a3
    80007150:	02059593          	slli	a1,a1,0x20
    80007154:	0205d593          	srli	a1,a1,0x20
    80007158:	00bd85b3          	add	a1,s11,a1
    8000715c:	0005c583          	lbu	a1,0(a1)
    80007160:	02d7d7bb          	divuw	a5,a5,a3
    80007164:	f8b40423          	sb	a1,-120(s0)
    80007168:	42ebfc63          	bgeu	s7,a4,800075a0 <__printf+0x678>
    8000716c:	02079793          	slli	a5,a5,0x20
    80007170:	0207d793          	srli	a5,a5,0x20
    80007174:	00fd8db3          	add	s11,s11,a5
    80007178:	000dc703          	lbu	a4,0(s11)
    8000717c:	00a00793          	li	a5,10
    80007180:	00900c93          	li	s9,9
    80007184:	f8e404a3          	sb	a4,-119(s0)
    80007188:	00065c63          	bgez	a2,800071a0 <__printf+0x278>
    8000718c:	f9040713          	addi	a4,s0,-112
    80007190:	00f70733          	add	a4,a4,a5
    80007194:	02d00693          	li	a3,45
    80007198:	fed70823          	sb	a3,-16(a4)
    8000719c:	00078c93          	mv	s9,a5
    800071a0:	f8040793          	addi	a5,s0,-128
    800071a4:	01978cb3          	add	s9,a5,s9
    800071a8:	f7f40d13          	addi	s10,s0,-129
    800071ac:	000cc503          	lbu	a0,0(s9)
    800071b0:	fffc8c93          	addi	s9,s9,-1
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	b90080e7          	jalr	-1136(ra) # 80006d44 <consputc>
    800071bc:	ffac98e3          	bne	s9,s10,800071ac <__printf+0x284>
    800071c0:	00094503          	lbu	a0,0(s2)
    800071c4:	e00514e3          	bnez	a0,80006fcc <__printf+0xa4>
    800071c8:	1a0c1663          	bnez	s8,80007374 <__printf+0x44c>
    800071cc:	08813083          	ld	ra,136(sp)
    800071d0:	08013403          	ld	s0,128(sp)
    800071d4:	07813483          	ld	s1,120(sp)
    800071d8:	07013903          	ld	s2,112(sp)
    800071dc:	06813983          	ld	s3,104(sp)
    800071e0:	06013a03          	ld	s4,96(sp)
    800071e4:	05813a83          	ld	s5,88(sp)
    800071e8:	05013b03          	ld	s6,80(sp)
    800071ec:	04813b83          	ld	s7,72(sp)
    800071f0:	04013c03          	ld	s8,64(sp)
    800071f4:	03813c83          	ld	s9,56(sp)
    800071f8:	03013d03          	ld	s10,48(sp)
    800071fc:	02813d83          	ld	s11,40(sp)
    80007200:	0d010113          	addi	sp,sp,208
    80007204:	00008067          	ret
    80007208:	07300713          	li	a4,115
    8000720c:	1ce78a63          	beq	a5,a4,800073e0 <__printf+0x4b8>
    80007210:	07800713          	li	a4,120
    80007214:	1ee79e63          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007218:	f7843783          	ld	a5,-136(s0)
    8000721c:	0007a703          	lw	a4,0(a5)
    80007220:	00878793          	addi	a5,a5,8
    80007224:	f6f43c23          	sd	a5,-136(s0)
    80007228:	28074263          	bltz	a4,800074ac <__printf+0x584>
    8000722c:	00002d97          	auipc	s11,0x2
    80007230:	384d8d93          	addi	s11,s11,900 # 800095b0 <digits>
    80007234:	00f77793          	andi	a5,a4,15
    80007238:	00fd87b3          	add	a5,s11,a5
    8000723c:	0007c683          	lbu	a3,0(a5)
    80007240:	00f00613          	li	a2,15
    80007244:	0007079b          	sext.w	a5,a4
    80007248:	f8d40023          	sb	a3,-128(s0)
    8000724c:	0047559b          	srliw	a1,a4,0x4
    80007250:	0047569b          	srliw	a3,a4,0x4
    80007254:	00000c93          	li	s9,0
    80007258:	0ee65063          	bge	a2,a4,80007338 <__printf+0x410>
    8000725c:	00f6f693          	andi	a3,a3,15
    80007260:	00dd86b3          	add	a3,s11,a3
    80007264:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007268:	0087d79b          	srliw	a5,a5,0x8
    8000726c:	00100c93          	li	s9,1
    80007270:	f8d400a3          	sb	a3,-127(s0)
    80007274:	0cb67263          	bgeu	a2,a1,80007338 <__printf+0x410>
    80007278:	00f7f693          	andi	a3,a5,15
    8000727c:	00dd86b3          	add	a3,s11,a3
    80007280:	0006c583          	lbu	a1,0(a3)
    80007284:	00f00613          	li	a2,15
    80007288:	0047d69b          	srliw	a3,a5,0x4
    8000728c:	f8b40123          	sb	a1,-126(s0)
    80007290:	0047d593          	srli	a1,a5,0x4
    80007294:	28f67e63          	bgeu	a2,a5,80007530 <__printf+0x608>
    80007298:	00f6f693          	andi	a3,a3,15
    8000729c:	00dd86b3          	add	a3,s11,a3
    800072a0:	0006c503          	lbu	a0,0(a3)
    800072a4:	0087d813          	srli	a6,a5,0x8
    800072a8:	0087d69b          	srliw	a3,a5,0x8
    800072ac:	f8a401a3          	sb	a0,-125(s0)
    800072b0:	28b67663          	bgeu	a2,a1,8000753c <__printf+0x614>
    800072b4:	00f6f693          	andi	a3,a3,15
    800072b8:	00dd86b3          	add	a3,s11,a3
    800072bc:	0006c583          	lbu	a1,0(a3)
    800072c0:	00c7d513          	srli	a0,a5,0xc
    800072c4:	00c7d69b          	srliw	a3,a5,0xc
    800072c8:	f8b40223          	sb	a1,-124(s0)
    800072cc:	29067a63          	bgeu	a2,a6,80007560 <__printf+0x638>
    800072d0:	00f6f693          	andi	a3,a3,15
    800072d4:	00dd86b3          	add	a3,s11,a3
    800072d8:	0006c583          	lbu	a1,0(a3)
    800072dc:	0107d813          	srli	a6,a5,0x10
    800072e0:	0107d69b          	srliw	a3,a5,0x10
    800072e4:	f8b402a3          	sb	a1,-123(s0)
    800072e8:	28a67263          	bgeu	a2,a0,8000756c <__printf+0x644>
    800072ec:	00f6f693          	andi	a3,a3,15
    800072f0:	00dd86b3          	add	a3,s11,a3
    800072f4:	0006c683          	lbu	a3,0(a3)
    800072f8:	0147d79b          	srliw	a5,a5,0x14
    800072fc:	f8d40323          	sb	a3,-122(s0)
    80007300:	21067663          	bgeu	a2,a6,8000750c <__printf+0x5e4>
    80007304:	02079793          	slli	a5,a5,0x20
    80007308:	0207d793          	srli	a5,a5,0x20
    8000730c:	00fd8db3          	add	s11,s11,a5
    80007310:	000dc683          	lbu	a3,0(s11)
    80007314:	00800793          	li	a5,8
    80007318:	00700c93          	li	s9,7
    8000731c:	f8d403a3          	sb	a3,-121(s0)
    80007320:	00075c63          	bgez	a4,80007338 <__printf+0x410>
    80007324:	f9040713          	addi	a4,s0,-112
    80007328:	00f70733          	add	a4,a4,a5
    8000732c:	02d00693          	li	a3,45
    80007330:	fed70823          	sb	a3,-16(a4)
    80007334:	00078c93          	mv	s9,a5
    80007338:	f8040793          	addi	a5,s0,-128
    8000733c:	01978cb3          	add	s9,a5,s9
    80007340:	f7f40d13          	addi	s10,s0,-129
    80007344:	000cc503          	lbu	a0,0(s9)
    80007348:	fffc8c93          	addi	s9,s9,-1
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	9f8080e7          	jalr	-1544(ra) # 80006d44 <consputc>
    80007354:	ff9d18e3          	bne	s10,s9,80007344 <__printf+0x41c>
    80007358:	0100006f          	j	80007368 <__printf+0x440>
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	9e8080e7          	jalr	-1560(ra) # 80006d44 <consputc>
    80007364:	000c8493          	mv	s1,s9
    80007368:	00094503          	lbu	a0,0(s2)
    8000736c:	c60510e3          	bnez	a0,80006fcc <__printf+0xa4>
    80007370:	e40c0ee3          	beqz	s8,800071cc <__printf+0x2a4>
    80007374:	00005517          	auipc	a0,0x5
    80007378:	42c50513          	addi	a0,a0,1068 # 8000c7a0 <pr>
    8000737c:	00001097          	auipc	ra,0x1
    80007380:	94c080e7          	jalr	-1716(ra) # 80007cc8 <release>
    80007384:	e49ff06f          	j	800071cc <__printf+0x2a4>
    80007388:	f7843783          	ld	a5,-136(s0)
    8000738c:	03000513          	li	a0,48
    80007390:	01000d13          	li	s10,16
    80007394:	00878713          	addi	a4,a5,8
    80007398:	0007bc83          	ld	s9,0(a5)
    8000739c:	f6e43c23          	sd	a4,-136(s0)
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	9a4080e7          	jalr	-1628(ra) # 80006d44 <consputc>
    800073a8:	07800513          	li	a0,120
    800073ac:	00000097          	auipc	ra,0x0
    800073b0:	998080e7          	jalr	-1640(ra) # 80006d44 <consputc>
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	1fcd8d93          	addi	s11,s11,508 # 800095b0 <digits>
    800073bc:	03ccd793          	srli	a5,s9,0x3c
    800073c0:	00fd87b3          	add	a5,s11,a5
    800073c4:	0007c503          	lbu	a0,0(a5)
    800073c8:	fffd0d1b          	addiw	s10,s10,-1
    800073cc:	004c9c93          	slli	s9,s9,0x4
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	974080e7          	jalr	-1676(ra) # 80006d44 <consputc>
    800073d8:	fe0d12e3          	bnez	s10,800073bc <__printf+0x494>
    800073dc:	f8dff06f          	j	80007368 <__printf+0x440>
    800073e0:	f7843783          	ld	a5,-136(s0)
    800073e4:	0007bc83          	ld	s9,0(a5)
    800073e8:	00878793          	addi	a5,a5,8
    800073ec:	f6f43c23          	sd	a5,-136(s0)
    800073f0:	000c9a63          	bnez	s9,80007404 <__printf+0x4dc>
    800073f4:	1080006f          	j	800074fc <__printf+0x5d4>
    800073f8:	001c8c93          	addi	s9,s9,1
    800073fc:	00000097          	auipc	ra,0x0
    80007400:	948080e7          	jalr	-1720(ra) # 80006d44 <consputc>
    80007404:	000cc503          	lbu	a0,0(s9)
    80007408:	fe0518e3          	bnez	a0,800073f8 <__printf+0x4d0>
    8000740c:	f5dff06f          	j	80007368 <__printf+0x440>
    80007410:	02500513          	li	a0,37
    80007414:	00000097          	auipc	ra,0x0
    80007418:	930080e7          	jalr	-1744(ra) # 80006d44 <consputc>
    8000741c:	000c8513          	mv	a0,s9
    80007420:	00000097          	auipc	ra,0x0
    80007424:	924080e7          	jalr	-1756(ra) # 80006d44 <consputc>
    80007428:	f41ff06f          	j	80007368 <__printf+0x440>
    8000742c:	02500513          	li	a0,37
    80007430:	00000097          	auipc	ra,0x0
    80007434:	914080e7          	jalr	-1772(ra) # 80006d44 <consputc>
    80007438:	f31ff06f          	j	80007368 <__printf+0x440>
    8000743c:	00030513          	mv	a0,t1
    80007440:	00000097          	auipc	ra,0x0
    80007444:	7bc080e7          	jalr	1980(ra) # 80007bfc <acquire>
    80007448:	b4dff06f          	j	80006f94 <__printf+0x6c>
    8000744c:	40c0053b          	negw	a0,a2
    80007450:	00a00713          	li	a4,10
    80007454:	02e576bb          	remuw	a3,a0,a4
    80007458:	00002d97          	auipc	s11,0x2
    8000745c:	158d8d93          	addi	s11,s11,344 # 800095b0 <digits>
    80007460:	ff700593          	li	a1,-9
    80007464:	02069693          	slli	a3,a3,0x20
    80007468:	0206d693          	srli	a3,a3,0x20
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c683          	lbu	a3,0(a3)
    80007474:	02e557bb          	divuw	a5,a0,a4
    80007478:	f8d40023          	sb	a3,-128(s0)
    8000747c:	10b65e63          	bge	a2,a1,80007598 <__printf+0x670>
    80007480:	06300593          	li	a1,99
    80007484:	02e7f6bb          	remuw	a3,a5,a4
    80007488:	02069693          	slli	a3,a3,0x20
    8000748c:	0206d693          	srli	a3,a3,0x20
    80007490:	00dd86b3          	add	a3,s11,a3
    80007494:	0006c683          	lbu	a3,0(a3)
    80007498:	02e7d73b          	divuw	a4,a5,a4
    8000749c:	00200793          	li	a5,2
    800074a0:	f8d400a3          	sb	a3,-127(s0)
    800074a4:	bca5ece3          	bltu	a1,a0,8000707c <__printf+0x154>
    800074a8:	ce5ff06f          	j	8000718c <__printf+0x264>
    800074ac:	40e007bb          	negw	a5,a4
    800074b0:	00002d97          	auipc	s11,0x2
    800074b4:	100d8d93          	addi	s11,s11,256 # 800095b0 <digits>
    800074b8:	00f7f693          	andi	a3,a5,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c583          	lbu	a1,0(a3)
    800074c4:	ff100613          	li	a2,-15
    800074c8:	0047d69b          	srliw	a3,a5,0x4
    800074cc:	f8b40023          	sb	a1,-128(s0)
    800074d0:	0047d59b          	srliw	a1,a5,0x4
    800074d4:	0ac75e63          	bge	a4,a2,80007590 <__printf+0x668>
    800074d8:	00f6f693          	andi	a3,a3,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c603          	lbu	a2,0(a3)
    800074e4:	00f00693          	li	a3,15
    800074e8:	0087d79b          	srliw	a5,a5,0x8
    800074ec:	f8c400a3          	sb	a2,-127(s0)
    800074f0:	d8b6e4e3          	bltu	a3,a1,80007278 <__printf+0x350>
    800074f4:	00200793          	li	a5,2
    800074f8:	e2dff06f          	j	80007324 <__printf+0x3fc>
    800074fc:	00002c97          	auipc	s9,0x2
    80007500:	094c8c93          	addi	s9,s9,148 # 80009590 <_ZZ6prtIntmE6digits+0x4a8>
    80007504:	02800513          	li	a0,40
    80007508:	ef1ff06f          	j	800073f8 <__printf+0x4d0>
    8000750c:	00700793          	li	a5,7
    80007510:	00600c93          	li	s9,6
    80007514:	e0dff06f          	j	80007320 <__printf+0x3f8>
    80007518:	00700793          	li	a5,7
    8000751c:	00600c93          	li	s9,6
    80007520:	c69ff06f          	j	80007188 <__printf+0x260>
    80007524:	00300793          	li	a5,3
    80007528:	00200c93          	li	s9,2
    8000752c:	c5dff06f          	j	80007188 <__printf+0x260>
    80007530:	00300793          	li	a5,3
    80007534:	00200c93          	li	s9,2
    80007538:	de9ff06f          	j	80007320 <__printf+0x3f8>
    8000753c:	00400793          	li	a5,4
    80007540:	00300c93          	li	s9,3
    80007544:	dddff06f          	j	80007320 <__printf+0x3f8>
    80007548:	00400793          	li	a5,4
    8000754c:	00300c93          	li	s9,3
    80007550:	c39ff06f          	j	80007188 <__printf+0x260>
    80007554:	00500793          	li	a5,5
    80007558:	00400c93          	li	s9,4
    8000755c:	c2dff06f          	j	80007188 <__printf+0x260>
    80007560:	00500793          	li	a5,5
    80007564:	00400c93          	li	s9,4
    80007568:	db9ff06f          	j	80007320 <__printf+0x3f8>
    8000756c:	00600793          	li	a5,6
    80007570:	00500c93          	li	s9,5
    80007574:	dadff06f          	j	80007320 <__printf+0x3f8>
    80007578:	00600793          	li	a5,6
    8000757c:	00500c93          	li	s9,5
    80007580:	c09ff06f          	j	80007188 <__printf+0x260>
    80007584:	00800793          	li	a5,8
    80007588:	00700c93          	li	s9,7
    8000758c:	bfdff06f          	j	80007188 <__printf+0x260>
    80007590:	00100793          	li	a5,1
    80007594:	d91ff06f          	j	80007324 <__printf+0x3fc>
    80007598:	00100793          	li	a5,1
    8000759c:	bf1ff06f          	j	8000718c <__printf+0x264>
    800075a0:	00900793          	li	a5,9
    800075a4:	00800c93          	li	s9,8
    800075a8:	be1ff06f          	j	80007188 <__printf+0x260>
    800075ac:	00002517          	auipc	a0,0x2
    800075b0:	fec50513          	addi	a0,a0,-20 # 80009598 <_ZZ6prtIntmE6digits+0x4b0>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	918080e7          	jalr	-1768(ra) # 80006ecc <panic>

00000000800075bc <printfinit>:
    800075bc:	fe010113          	addi	sp,sp,-32
    800075c0:	00813823          	sd	s0,16(sp)
    800075c4:	00913423          	sd	s1,8(sp)
    800075c8:	00113c23          	sd	ra,24(sp)
    800075cc:	02010413          	addi	s0,sp,32
    800075d0:	00005497          	auipc	s1,0x5
    800075d4:	1d048493          	addi	s1,s1,464 # 8000c7a0 <pr>
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00002597          	auipc	a1,0x2
    800075e0:	fcc58593          	addi	a1,a1,-52 # 800095a8 <_ZZ6prtIntmE6digits+0x4c0>
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	5f4080e7          	jalr	1524(ra) # 80007bd8 <initlock>
    800075ec:	01813083          	ld	ra,24(sp)
    800075f0:	01013403          	ld	s0,16(sp)
    800075f4:	0004ac23          	sw	zero,24(s1)
    800075f8:	00813483          	ld	s1,8(sp)
    800075fc:	02010113          	addi	sp,sp,32
    80007600:	00008067          	ret

0000000080007604 <uartinit>:
    80007604:	ff010113          	addi	sp,sp,-16
    80007608:	00813423          	sd	s0,8(sp)
    8000760c:	01010413          	addi	s0,sp,16
    80007610:	100007b7          	lui	a5,0x10000
    80007614:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007618:	f8000713          	li	a4,-128
    8000761c:	00e781a3          	sb	a4,3(a5)
    80007620:	00300713          	li	a4,3
    80007624:	00e78023          	sb	a4,0(a5)
    80007628:	000780a3          	sb	zero,1(a5)
    8000762c:	00e781a3          	sb	a4,3(a5)
    80007630:	00700693          	li	a3,7
    80007634:	00d78123          	sb	a3,2(a5)
    80007638:	00e780a3          	sb	a4,1(a5)
    8000763c:	00813403          	ld	s0,8(sp)
    80007640:	01010113          	addi	sp,sp,16
    80007644:	00008067          	ret

0000000080007648 <uartputc>:
    80007648:	00004797          	auipc	a5,0x4
    8000764c:	e907a783          	lw	a5,-368(a5) # 8000b4d8 <panicked>
    80007650:	00078463          	beqz	a5,80007658 <uartputc+0x10>
    80007654:	0000006f          	j	80007654 <uartputc+0xc>
    80007658:	fd010113          	addi	sp,sp,-48
    8000765c:	02813023          	sd	s0,32(sp)
    80007660:	00913c23          	sd	s1,24(sp)
    80007664:	01213823          	sd	s2,16(sp)
    80007668:	01313423          	sd	s3,8(sp)
    8000766c:	02113423          	sd	ra,40(sp)
    80007670:	03010413          	addi	s0,sp,48
    80007674:	00004917          	auipc	s2,0x4
    80007678:	e6c90913          	addi	s2,s2,-404 # 8000b4e0 <uart_tx_r>
    8000767c:	00093783          	ld	a5,0(s2)
    80007680:	00004497          	auipc	s1,0x4
    80007684:	e6848493          	addi	s1,s1,-408 # 8000b4e8 <uart_tx_w>
    80007688:	0004b703          	ld	a4,0(s1)
    8000768c:	02078693          	addi	a3,a5,32
    80007690:	00050993          	mv	s3,a0
    80007694:	02e69c63          	bne	a3,a4,800076cc <uartputc+0x84>
    80007698:	00001097          	auipc	ra,0x1
    8000769c:	834080e7          	jalr	-1996(ra) # 80007ecc <push_on>
    800076a0:	00093783          	ld	a5,0(s2)
    800076a4:	0004b703          	ld	a4,0(s1)
    800076a8:	02078793          	addi	a5,a5,32
    800076ac:	00e79463          	bne	a5,a4,800076b4 <uartputc+0x6c>
    800076b0:	0000006f          	j	800076b0 <uartputc+0x68>
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	88c080e7          	jalr	-1908(ra) # 80007f40 <pop_on>
    800076bc:	00093783          	ld	a5,0(s2)
    800076c0:	0004b703          	ld	a4,0(s1)
    800076c4:	02078693          	addi	a3,a5,32
    800076c8:	fce688e3          	beq	a3,a4,80007698 <uartputc+0x50>
    800076cc:	01f77693          	andi	a3,a4,31
    800076d0:	00005597          	auipc	a1,0x5
    800076d4:	0f058593          	addi	a1,a1,240 # 8000c7c0 <uart_tx_buf>
    800076d8:	00d586b3          	add	a3,a1,a3
    800076dc:	00170713          	addi	a4,a4,1
    800076e0:	01368023          	sb	s3,0(a3)
    800076e4:	00e4b023          	sd	a4,0(s1)
    800076e8:	10000637          	lui	a2,0x10000
    800076ec:	02f71063          	bne	a4,a5,8000770c <uartputc+0xc4>
    800076f0:	0340006f          	j	80007724 <uartputc+0xdc>
    800076f4:	00074703          	lbu	a4,0(a4)
    800076f8:	00f93023          	sd	a5,0(s2)
    800076fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007700:	00093783          	ld	a5,0(s2)
    80007704:	0004b703          	ld	a4,0(s1)
    80007708:	00f70e63          	beq	a4,a5,80007724 <uartputc+0xdc>
    8000770c:	00564683          	lbu	a3,5(a2)
    80007710:	01f7f713          	andi	a4,a5,31
    80007714:	00e58733          	add	a4,a1,a4
    80007718:	0206f693          	andi	a3,a3,32
    8000771c:	00178793          	addi	a5,a5,1
    80007720:	fc069ae3          	bnez	a3,800076f4 <uartputc+0xac>
    80007724:	02813083          	ld	ra,40(sp)
    80007728:	02013403          	ld	s0,32(sp)
    8000772c:	01813483          	ld	s1,24(sp)
    80007730:	01013903          	ld	s2,16(sp)
    80007734:	00813983          	ld	s3,8(sp)
    80007738:	03010113          	addi	sp,sp,48
    8000773c:	00008067          	ret

0000000080007740 <uartputc_sync>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00004717          	auipc	a4,0x4
    80007750:	d8c72703          	lw	a4,-628(a4) # 8000b4d8 <panicked>
    80007754:	02071663          	bnez	a4,80007780 <uartputc_sync+0x40>
    80007758:	00050793          	mv	a5,a0
    8000775c:	100006b7          	lui	a3,0x10000
    80007760:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007764:	02077713          	andi	a4,a4,32
    80007768:	fe070ce3          	beqz	a4,80007760 <uartputc_sync+0x20>
    8000776c:	0ff7f793          	andi	a5,a5,255
    80007770:	00f68023          	sb	a5,0(a3)
    80007774:	00813403          	ld	s0,8(sp)
    80007778:	01010113          	addi	sp,sp,16
    8000777c:	00008067          	ret
    80007780:	0000006f          	j	80007780 <uartputc_sync+0x40>

0000000080007784 <uartstart>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813423          	sd	s0,8(sp)
    8000778c:	01010413          	addi	s0,sp,16
    80007790:	00004617          	auipc	a2,0x4
    80007794:	d5060613          	addi	a2,a2,-688 # 8000b4e0 <uart_tx_r>
    80007798:	00004517          	auipc	a0,0x4
    8000779c:	d5050513          	addi	a0,a0,-688 # 8000b4e8 <uart_tx_w>
    800077a0:	00063783          	ld	a5,0(a2)
    800077a4:	00053703          	ld	a4,0(a0)
    800077a8:	04f70263          	beq	a4,a5,800077ec <uartstart+0x68>
    800077ac:	100005b7          	lui	a1,0x10000
    800077b0:	00005817          	auipc	a6,0x5
    800077b4:	01080813          	addi	a6,a6,16 # 8000c7c0 <uart_tx_buf>
    800077b8:	01c0006f          	j	800077d4 <uartstart+0x50>
    800077bc:	0006c703          	lbu	a4,0(a3)
    800077c0:	00f63023          	sd	a5,0(a2)
    800077c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077c8:	00063783          	ld	a5,0(a2)
    800077cc:	00053703          	ld	a4,0(a0)
    800077d0:	00f70e63          	beq	a4,a5,800077ec <uartstart+0x68>
    800077d4:	01f7f713          	andi	a4,a5,31
    800077d8:	00e806b3          	add	a3,a6,a4
    800077dc:	0055c703          	lbu	a4,5(a1)
    800077e0:	00178793          	addi	a5,a5,1
    800077e4:	02077713          	andi	a4,a4,32
    800077e8:	fc071ae3          	bnez	a4,800077bc <uartstart+0x38>
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret

00000000800077f8 <uartgetc>:
    800077f8:	ff010113          	addi	sp,sp,-16
    800077fc:	00813423          	sd	s0,8(sp)
    80007800:	01010413          	addi	s0,sp,16
    80007804:	10000737          	lui	a4,0x10000
    80007808:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000780c:	0017f793          	andi	a5,a5,1
    80007810:	00078c63          	beqz	a5,80007828 <uartgetc+0x30>
    80007814:	00074503          	lbu	a0,0(a4)
    80007818:	0ff57513          	andi	a0,a0,255
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret
    80007828:	fff00513          	li	a0,-1
    8000782c:	ff1ff06f          	j	8000781c <uartgetc+0x24>

0000000080007830 <uartintr>:
    80007830:	100007b7          	lui	a5,0x10000
    80007834:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007838:	0017f793          	andi	a5,a5,1
    8000783c:	0a078463          	beqz	a5,800078e4 <uartintr+0xb4>
    80007840:	fe010113          	addi	sp,sp,-32
    80007844:	00813823          	sd	s0,16(sp)
    80007848:	00913423          	sd	s1,8(sp)
    8000784c:	00113c23          	sd	ra,24(sp)
    80007850:	02010413          	addi	s0,sp,32
    80007854:	100004b7          	lui	s1,0x10000
    80007858:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000785c:	0ff57513          	andi	a0,a0,255
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	534080e7          	jalr	1332(ra) # 80006d94 <consoleintr>
    80007868:	0054c783          	lbu	a5,5(s1)
    8000786c:	0017f793          	andi	a5,a5,1
    80007870:	fe0794e3          	bnez	a5,80007858 <uartintr+0x28>
    80007874:	00004617          	auipc	a2,0x4
    80007878:	c6c60613          	addi	a2,a2,-916 # 8000b4e0 <uart_tx_r>
    8000787c:	00004517          	auipc	a0,0x4
    80007880:	c6c50513          	addi	a0,a0,-916 # 8000b4e8 <uart_tx_w>
    80007884:	00063783          	ld	a5,0(a2)
    80007888:	00053703          	ld	a4,0(a0)
    8000788c:	04f70263          	beq	a4,a5,800078d0 <uartintr+0xa0>
    80007890:	100005b7          	lui	a1,0x10000
    80007894:	00005817          	auipc	a6,0x5
    80007898:	f2c80813          	addi	a6,a6,-212 # 8000c7c0 <uart_tx_buf>
    8000789c:	01c0006f          	j	800078b8 <uartintr+0x88>
    800078a0:	0006c703          	lbu	a4,0(a3)
    800078a4:	00f63023          	sd	a5,0(a2)
    800078a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ac:	00063783          	ld	a5,0(a2)
    800078b0:	00053703          	ld	a4,0(a0)
    800078b4:	00f70e63          	beq	a4,a5,800078d0 <uartintr+0xa0>
    800078b8:	01f7f713          	andi	a4,a5,31
    800078bc:	00e806b3          	add	a3,a6,a4
    800078c0:	0055c703          	lbu	a4,5(a1)
    800078c4:	00178793          	addi	a5,a5,1
    800078c8:	02077713          	andi	a4,a4,32
    800078cc:	fc071ae3          	bnez	a4,800078a0 <uartintr+0x70>
    800078d0:	01813083          	ld	ra,24(sp)
    800078d4:	01013403          	ld	s0,16(sp)
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	02010113          	addi	sp,sp,32
    800078e0:	00008067          	ret
    800078e4:	00004617          	auipc	a2,0x4
    800078e8:	bfc60613          	addi	a2,a2,-1028 # 8000b4e0 <uart_tx_r>
    800078ec:	00004517          	auipc	a0,0x4
    800078f0:	bfc50513          	addi	a0,a0,-1028 # 8000b4e8 <uart_tx_w>
    800078f4:	00063783          	ld	a5,0(a2)
    800078f8:	00053703          	ld	a4,0(a0)
    800078fc:	04f70263          	beq	a4,a5,80007940 <uartintr+0x110>
    80007900:	100005b7          	lui	a1,0x10000
    80007904:	00005817          	auipc	a6,0x5
    80007908:	ebc80813          	addi	a6,a6,-324 # 8000c7c0 <uart_tx_buf>
    8000790c:	01c0006f          	j	80007928 <uartintr+0xf8>
    80007910:	0006c703          	lbu	a4,0(a3)
    80007914:	00f63023          	sd	a5,0(a2)
    80007918:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000791c:	00063783          	ld	a5,0(a2)
    80007920:	00053703          	ld	a4,0(a0)
    80007924:	02f70063          	beq	a4,a5,80007944 <uartintr+0x114>
    80007928:	01f7f713          	andi	a4,a5,31
    8000792c:	00e806b3          	add	a3,a6,a4
    80007930:	0055c703          	lbu	a4,5(a1)
    80007934:	00178793          	addi	a5,a5,1
    80007938:	02077713          	andi	a4,a4,32
    8000793c:	fc071ae3          	bnez	a4,80007910 <uartintr+0xe0>
    80007940:	00008067          	ret
    80007944:	00008067          	ret

0000000080007948 <kinit>:
    80007948:	fc010113          	addi	sp,sp,-64
    8000794c:	02913423          	sd	s1,40(sp)
    80007950:	fffff7b7          	lui	a5,0xfffff
    80007954:	00006497          	auipc	s1,0x6
    80007958:	e8b48493          	addi	s1,s1,-373 # 8000d7df <end+0xfff>
    8000795c:	02813823          	sd	s0,48(sp)
    80007960:	01313c23          	sd	s3,24(sp)
    80007964:	00f4f4b3          	and	s1,s1,a5
    80007968:	02113c23          	sd	ra,56(sp)
    8000796c:	03213023          	sd	s2,32(sp)
    80007970:	01413823          	sd	s4,16(sp)
    80007974:	01513423          	sd	s5,8(sp)
    80007978:	04010413          	addi	s0,sp,64
    8000797c:	000017b7          	lui	a5,0x1
    80007980:	01100993          	li	s3,17
    80007984:	00f487b3          	add	a5,s1,a5
    80007988:	01b99993          	slli	s3,s3,0x1b
    8000798c:	06f9e063          	bltu	s3,a5,800079ec <kinit+0xa4>
    80007990:	00005a97          	auipc	s5,0x5
    80007994:	e50a8a93          	addi	s5,s5,-432 # 8000c7e0 <end>
    80007998:	0754ec63          	bltu	s1,s5,80007a10 <kinit+0xc8>
    8000799c:	0734fa63          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079a0:	00088a37          	lui	s4,0x88
    800079a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079a8:	00004917          	auipc	s2,0x4
    800079ac:	b4890913          	addi	s2,s2,-1208 # 8000b4f0 <kmem>
    800079b0:	00ca1a13          	slli	s4,s4,0xc
    800079b4:	0140006f          	j	800079c8 <kinit+0x80>
    800079b8:	000017b7          	lui	a5,0x1
    800079bc:	00f484b3          	add	s1,s1,a5
    800079c0:	0554e863          	bltu	s1,s5,80007a10 <kinit+0xc8>
    800079c4:	0534f663          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079c8:	00001637          	lui	a2,0x1
    800079cc:	00100593          	li	a1,1
    800079d0:	00048513          	mv	a0,s1
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5e4080e7          	jalr	1508(ra) # 80007fb8 <__memset>
    800079dc:	00093783          	ld	a5,0(s2)
    800079e0:	00f4b023          	sd	a5,0(s1)
    800079e4:	00993023          	sd	s1,0(s2)
    800079e8:	fd4498e3          	bne	s1,s4,800079b8 <kinit+0x70>
    800079ec:	03813083          	ld	ra,56(sp)
    800079f0:	03013403          	ld	s0,48(sp)
    800079f4:	02813483          	ld	s1,40(sp)
    800079f8:	02013903          	ld	s2,32(sp)
    800079fc:	01813983          	ld	s3,24(sp)
    80007a00:	01013a03          	ld	s4,16(sp)
    80007a04:	00813a83          	ld	s5,8(sp)
    80007a08:	04010113          	addi	sp,sp,64
    80007a0c:	00008067          	ret
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	bb850513          	addi	a0,a0,-1096 # 800095c8 <digits+0x18>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	4b4080e7          	jalr	1204(ra) # 80006ecc <panic>

0000000080007a20 <freerange>:
    80007a20:	fc010113          	addi	sp,sp,-64
    80007a24:	000017b7          	lui	a5,0x1
    80007a28:	02913423          	sd	s1,40(sp)
    80007a2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a30:	009504b3          	add	s1,a0,s1
    80007a34:	fffff537          	lui	a0,0xfffff
    80007a38:	02813823          	sd	s0,48(sp)
    80007a3c:	02113c23          	sd	ra,56(sp)
    80007a40:	03213023          	sd	s2,32(sp)
    80007a44:	01313c23          	sd	s3,24(sp)
    80007a48:	01413823          	sd	s4,16(sp)
    80007a4c:	01513423          	sd	s5,8(sp)
    80007a50:	01613023          	sd	s6,0(sp)
    80007a54:	04010413          	addi	s0,sp,64
    80007a58:	00a4f4b3          	and	s1,s1,a0
    80007a5c:	00f487b3          	add	a5,s1,a5
    80007a60:	06f5e463          	bltu	a1,a5,80007ac8 <freerange+0xa8>
    80007a64:	00005a97          	auipc	s5,0x5
    80007a68:	d7ca8a93          	addi	s5,s5,-644 # 8000c7e0 <end>
    80007a6c:	0954e263          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a70:	01100993          	li	s3,17
    80007a74:	01b99993          	slli	s3,s3,0x1b
    80007a78:	0734fc63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007a7c:	00058a13          	mv	s4,a1
    80007a80:	00004917          	auipc	s2,0x4
    80007a84:	a7090913          	addi	s2,s2,-1424 # 8000b4f0 <kmem>
    80007a88:	00002b37          	lui	s6,0x2
    80007a8c:	0140006f          	j	80007aa0 <freerange+0x80>
    80007a90:	000017b7          	lui	a5,0x1
    80007a94:	00f484b3          	add	s1,s1,a5
    80007a98:	0554ec63          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a9c:	0534fa63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007aa0:	00001637          	lui	a2,0x1
    80007aa4:	00100593          	li	a1,1
    80007aa8:	00048513          	mv	a0,s1
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	50c080e7          	jalr	1292(ra) # 80007fb8 <__memset>
    80007ab4:	00093703          	ld	a4,0(s2)
    80007ab8:	016487b3          	add	a5,s1,s6
    80007abc:	00e4b023          	sd	a4,0(s1)
    80007ac0:	00993023          	sd	s1,0(s2)
    80007ac4:	fcfa76e3          	bgeu	s4,a5,80007a90 <freerange+0x70>
    80007ac8:	03813083          	ld	ra,56(sp)
    80007acc:	03013403          	ld	s0,48(sp)
    80007ad0:	02813483          	ld	s1,40(sp)
    80007ad4:	02013903          	ld	s2,32(sp)
    80007ad8:	01813983          	ld	s3,24(sp)
    80007adc:	01013a03          	ld	s4,16(sp)
    80007ae0:	00813a83          	ld	s5,8(sp)
    80007ae4:	00013b03          	ld	s6,0(sp)
    80007ae8:	04010113          	addi	sp,sp,64
    80007aec:	00008067          	ret
    80007af0:	00002517          	auipc	a0,0x2
    80007af4:	ad850513          	addi	a0,a0,-1320 # 800095c8 <digits+0x18>
    80007af8:	fffff097          	auipc	ra,0xfffff
    80007afc:	3d4080e7          	jalr	980(ra) # 80006ecc <panic>

0000000080007b00 <kfree>:
    80007b00:	fe010113          	addi	sp,sp,-32
    80007b04:	00813823          	sd	s0,16(sp)
    80007b08:	00113c23          	sd	ra,24(sp)
    80007b0c:	00913423          	sd	s1,8(sp)
    80007b10:	02010413          	addi	s0,sp,32
    80007b14:	03451793          	slli	a5,a0,0x34
    80007b18:	04079c63          	bnez	a5,80007b70 <kfree+0x70>
    80007b1c:	00005797          	auipc	a5,0x5
    80007b20:	cc478793          	addi	a5,a5,-828 # 8000c7e0 <end>
    80007b24:	00050493          	mv	s1,a0
    80007b28:	04f56463          	bltu	a0,a5,80007b70 <kfree+0x70>
    80007b2c:	01100793          	li	a5,17
    80007b30:	01b79793          	slli	a5,a5,0x1b
    80007b34:	02f57e63          	bgeu	a0,a5,80007b70 <kfree+0x70>
    80007b38:	00001637          	lui	a2,0x1
    80007b3c:	00100593          	li	a1,1
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	478080e7          	jalr	1144(ra) # 80007fb8 <__memset>
    80007b48:	00004797          	auipc	a5,0x4
    80007b4c:	9a878793          	addi	a5,a5,-1624 # 8000b4f0 <kmem>
    80007b50:	0007b703          	ld	a4,0(a5)
    80007b54:	01813083          	ld	ra,24(sp)
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	00e4b023          	sd	a4,0(s1)
    80007b60:	0097b023          	sd	s1,0(a5)
    80007b64:	00813483          	ld	s1,8(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	a5850513          	addi	a0,a0,-1448 # 800095c8 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	354080e7          	jalr	852(ra) # 80006ecc <panic>

0000000080007b80 <kalloc>:
    80007b80:	fe010113          	addi	sp,sp,-32
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	00113c23          	sd	ra,24(sp)
    80007b90:	02010413          	addi	s0,sp,32
    80007b94:	00004797          	auipc	a5,0x4
    80007b98:	95c78793          	addi	a5,a5,-1700 # 8000b4f0 <kmem>
    80007b9c:	0007b483          	ld	s1,0(a5)
    80007ba0:	02048063          	beqz	s1,80007bc0 <kalloc+0x40>
    80007ba4:	0004b703          	ld	a4,0(s1)
    80007ba8:	00001637          	lui	a2,0x1
    80007bac:	00500593          	li	a1,5
    80007bb0:	00048513          	mv	a0,s1
    80007bb4:	00e7b023          	sd	a4,0(a5)
    80007bb8:	00000097          	auipc	ra,0x0
    80007bbc:	400080e7          	jalr	1024(ra) # 80007fb8 <__memset>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	00048513          	mv	a0,s1
    80007bcc:	00813483          	ld	s1,8(sp)
    80007bd0:	02010113          	addi	sp,sp,32
    80007bd4:	00008067          	ret

0000000080007bd8 <initlock>:
    80007bd8:	ff010113          	addi	sp,sp,-16
    80007bdc:	00813423          	sd	s0,8(sp)
    80007be0:	01010413          	addi	s0,sp,16
    80007be4:	00813403          	ld	s0,8(sp)
    80007be8:	00b53423          	sd	a1,8(a0)
    80007bec:	00052023          	sw	zero,0(a0)
    80007bf0:	00053823          	sd	zero,16(a0)
    80007bf4:	01010113          	addi	sp,sp,16
    80007bf8:	00008067          	ret

0000000080007bfc <acquire>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	00113c23          	sd	ra,24(sp)
    80007c0c:	01213023          	sd	s2,0(sp)
    80007c10:	02010413          	addi	s0,sp,32
    80007c14:	00050493          	mv	s1,a0
    80007c18:	10002973          	csrr	s2,sstatus
    80007c1c:	100027f3          	csrr	a5,sstatus
    80007c20:	ffd7f793          	andi	a5,a5,-3
    80007c24:	10079073          	csrw	sstatus,a5
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	8e4080e7          	jalr	-1820(ra) # 8000650c <mycpu>
    80007c30:	07852783          	lw	a5,120(a0)
    80007c34:	06078e63          	beqz	a5,80007cb0 <acquire+0xb4>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	8d4080e7          	jalr	-1836(ra) # 8000650c <mycpu>
    80007c40:	07852783          	lw	a5,120(a0)
    80007c44:	0004a703          	lw	a4,0(s1)
    80007c48:	0017879b          	addiw	a5,a5,1
    80007c4c:	06f52c23          	sw	a5,120(a0)
    80007c50:	04071063          	bnez	a4,80007c90 <acquire+0x94>
    80007c54:	00100713          	li	a4,1
    80007c58:	00070793          	mv	a5,a4
    80007c5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c60:	0007879b          	sext.w	a5,a5
    80007c64:	fe079ae3          	bnez	a5,80007c58 <acquire+0x5c>
    80007c68:	0ff0000f          	fence
    80007c6c:	fffff097          	auipc	ra,0xfffff
    80007c70:	8a0080e7          	jalr	-1888(ra) # 8000650c <mycpu>
    80007c74:	01813083          	ld	ra,24(sp)
    80007c78:	01013403          	ld	s0,16(sp)
    80007c7c:	00a4b823          	sd	a0,16(s1)
    80007c80:	00013903          	ld	s2,0(sp)
    80007c84:	00813483          	ld	s1,8(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret
    80007c90:	0104b903          	ld	s2,16(s1)
    80007c94:	fffff097          	auipc	ra,0xfffff
    80007c98:	878080e7          	jalr	-1928(ra) # 8000650c <mycpu>
    80007c9c:	faa91ce3          	bne	s2,a0,80007c54 <acquire+0x58>
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	93050513          	addi	a0,a0,-1744 # 800095d0 <digits+0x20>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	224080e7          	jalr	548(ra) # 80006ecc <panic>
    80007cb0:	00195913          	srli	s2,s2,0x1
    80007cb4:	fffff097          	auipc	ra,0xfffff
    80007cb8:	858080e7          	jalr	-1960(ra) # 8000650c <mycpu>
    80007cbc:	00197913          	andi	s2,s2,1
    80007cc0:	07252e23          	sw	s2,124(a0)
    80007cc4:	f75ff06f          	j	80007c38 <acquire+0x3c>

0000000080007cc8 <release>:
    80007cc8:	fe010113          	addi	sp,sp,-32
    80007ccc:	00813823          	sd	s0,16(sp)
    80007cd0:	00113c23          	sd	ra,24(sp)
    80007cd4:	00913423          	sd	s1,8(sp)
    80007cd8:	01213023          	sd	s2,0(sp)
    80007cdc:	02010413          	addi	s0,sp,32
    80007ce0:	00052783          	lw	a5,0(a0)
    80007ce4:	00079a63          	bnez	a5,80007cf8 <release+0x30>
    80007ce8:	00002517          	auipc	a0,0x2
    80007cec:	8f050513          	addi	a0,a0,-1808 # 800095d8 <digits+0x28>
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	1dc080e7          	jalr	476(ra) # 80006ecc <panic>
    80007cf8:	01053903          	ld	s2,16(a0)
    80007cfc:	00050493          	mv	s1,a0
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	80c080e7          	jalr	-2036(ra) # 8000650c <mycpu>
    80007d08:	fea910e3          	bne	s2,a0,80007ce8 <release+0x20>
    80007d0c:	0004b823          	sd	zero,16(s1)
    80007d10:	0ff0000f          	fence
    80007d14:	0f50000f          	fence	iorw,ow
    80007d18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d1c:	ffffe097          	auipc	ra,0xffffe
    80007d20:	7f0080e7          	jalr	2032(ra) # 8000650c <mycpu>
    80007d24:	100027f3          	csrr	a5,sstatus
    80007d28:	0027f793          	andi	a5,a5,2
    80007d2c:	04079a63          	bnez	a5,80007d80 <release+0xb8>
    80007d30:	07852783          	lw	a5,120(a0)
    80007d34:	02f05e63          	blez	a5,80007d70 <release+0xa8>
    80007d38:	fff7871b          	addiw	a4,a5,-1
    80007d3c:	06e52c23          	sw	a4,120(a0)
    80007d40:	00071c63          	bnez	a4,80007d58 <release+0x90>
    80007d44:	07c52783          	lw	a5,124(a0)
    80007d48:	00078863          	beqz	a5,80007d58 <release+0x90>
    80007d4c:	100027f3          	csrr	a5,sstatus
    80007d50:	0027e793          	ori	a5,a5,2
    80007d54:	10079073          	csrw	sstatus,a5
    80007d58:	01813083          	ld	ra,24(sp)
    80007d5c:	01013403          	ld	s0,16(sp)
    80007d60:	00813483          	ld	s1,8(sp)
    80007d64:	00013903          	ld	s2,0(sp)
    80007d68:	02010113          	addi	sp,sp,32
    80007d6c:	00008067          	ret
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	88850513          	addi	a0,a0,-1912 # 800095f8 <digits+0x48>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	154080e7          	jalr	340(ra) # 80006ecc <panic>
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	86050513          	addi	a0,a0,-1952 # 800095e0 <digits+0x30>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	144080e7          	jalr	324(ra) # 80006ecc <panic>

0000000080007d90 <holding>:
    80007d90:	00052783          	lw	a5,0(a0)
    80007d94:	00079663          	bnez	a5,80007da0 <holding+0x10>
    80007d98:	00000513          	li	a0,0
    80007d9c:	00008067          	ret
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	01053483          	ld	s1,16(a0)
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	754080e7          	jalr	1876(ra) # 8000650c <mycpu>
    80007dc0:	01813083          	ld	ra,24(sp)
    80007dc4:	01013403          	ld	s0,16(sp)
    80007dc8:	40a48533          	sub	a0,s1,a0
    80007dcc:	00153513          	seqz	a0,a0
    80007dd0:	00813483          	ld	s1,8(sp)
    80007dd4:	02010113          	addi	sp,sp,32
    80007dd8:	00008067          	ret

0000000080007ddc <push_off>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00113c23          	sd	ra,24(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	02010413          	addi	s0,sp,32
    80007df0:	100024f3          	csrr	s1,sstatus
    80007df4:	100027f3          	csrr	a5,sstatus
    80007df8:	ffd7f793          	andi	a5,a5,-3
    80007dfc:	10079073          	csrw	sstatus,a5
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	70c080e7          	jalr	1804(ra) # 8000650c <mycpu>
    80007e08:	07852783          	lw	a5,120(a0)
    80007e0c:	02078663          	beqz	a5,80007e38 <push_off+0x5c>
    80007e10:	ffffe097          	auipc	ra,0xffffe
    80007e14:	6fc080e7          	jalr	1788(ra) # 8000650c <mycpu>
    80007e18:	07852783          	lw	a5,120(a0)
    80007e1c:	01813083          	ld	ra,24(sp)
    80007e20:	01013403          	ld	s0,16(sp)
    80007e24:	0017879b          	addiw	a5,a5,1
    80007e28:	06f52c23          	sw	a5,120(a0)
    80007e2c:	00813483          	ld	s1,8(sp)
    80007e30:	02010113          	addi	sp,sp,32
    80007e34:	00008067          	ret
    80007e38:	0014d493          	srli	s1,s1,0x1
    80007e3c:	ffffe097          	auipc	ra,0xffffe
    80007e40:	6d0080e7          	jalr	1744(ra) # 8000650c <mycpu>
    80007e44:	0014f493          	andi	s1,s1,1
    80007e48:	06952e23          	sw	s1,124(a0)
    80007e4c:	fc5ff06f          	j	80007e10 <push_off+0x34>

0000000080007e50 <pop_off>:
    80007e50:	ff010113          	addi	sp,sp,-16
    80007e54:	00813023          	sd	s0,0(sp)
    80007e58:	00113423          	sd	ra,8(sp)
    80007e5c:	01010413          	addi	s0,sp,16
    80007e60:	ffffe097          	auipc	ra,0xffffe
    80007e64:	6ac080e7          	jalr	1708(ra) # 8000650c <mycpu>
    80007e68:	100027f3          	csrr	a5,sstatus
    80007e6c:	0027f793          	andi	a5,a5,2
    80007e70:	04079663          	bnez	a5,80007ebc <pop_off+0x6c>
    80007e74:	07852783          	lw	a5,120(a0)
    80007e78:	02f05a63          	blez	a5,80007eac <pop_off+0x5c>
    80007e7c:	fff7871b          	addiw	a4,a5,-1
    80007e80:	06e52c23          	sw	a4,120(a0)
    80007e84:	00071c63          	bnez	a4,80007e9c <pop_off+0x4c>
    80007e88:	07c52783          	lw	a5,124(a0)
    80007e8c:	00078863          	beqz	a5,80007e9c <pop_off+0x4c>
    80007e90:	100027f3          	csrr	a5,sstatus
    80007e94:	0027e793          	ori	a5,a5,2
    80007e98:	10079073          	csrw	sstatus,a5
    80007e9c:	00813083          	ld	ra,8(sp)
    80007ea0:	00013403          	ld	s0,0(sp)
    80007ea4:	01010113          	addi	sp,sp,16
    80007ea8:	00008067          	ret
    80007eac:	00001517          	auipc	a0,0x1
    80007eb0:	74c50513          	addi	a0,a0,1868 # 800095f8 <digits+0x48>
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	018080e7          	jalr	24(ra) # 80006ecc <panic>
    80007ebc:	00001517          	auipc	a0,0x1
    80007ec0:	72450513          	addi	a0,a0,1828 # 800095e0 <digits+0x30>
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	008080e7          	jalr	8(ra) # 80006ecc <panic>

0000000080007ecc <push_on>:
    80007ecc:	fe010113          	addi	sp,sp,-32
    80007ed0:	00813823          	sd	s0,16(sp)
    80007ed4:	00113c23          	sd	ra,24(sp)
    80007ed8:	00913423          	sd	s1,8(sp)
    80007edc:	02010413          	addi	s0,sp,32
    80007ee0:	100024f3          	csrr	s1,sstatus
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027e793          	ori	a5,a5,2
    80007eec:	10079073          	csrw	sstatus,a5
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	61c080e7          	jalr	1564(ra) # 8000650c <mycpu>
    80007ef8:	07852783          	lw	a5,120(a0)
    80007efc:	02078663          	beqz	a5,80007f28 <push_on+0x5c>
    80007f00:	ffffe097          	auipc	ra,0xffffe
    80007f04:	60c080e7          	jalr	1548(ra) # 8000650c <mycpu>
    80007f08:	07852783          	lw	a5,120(a0)
    80007f0c:	01813083          	ld	ra,24(sp)
    80007f10:	01013403          	ld	s0,16(sp)
    80007f14:	0017879b          	addiw	a5,a5,1
    80007f18:	06f52c23          	sw	a5,120(a0)
    80007f1c:	00813483          	ld	s1,8(sp)
    80007f20:	02010113          	addi	sp,sp,32
    80007f24:	00008067          	ret
    80007f28:	0014d493          	srli	s1,s1,0x1
    80007f2c:	ffffe097          	auipc	ra,0xffffe
    80007f30:	5e0080e7          	jalr	1504(ra) # 8000650c <mycpu>
    80007f34:	0014f493          	andi	s1,s1,1
    80007f38:	06952e23          	sw	s1,124(a0)
    80007f3c:	fc5ff06f          	j	80007f00 <push_on+0x34>

0000000080007f40 <pop_on>:
    80007f40:	ff010113          	addi	sp,sp,-16
    80007f44:	00813023          	sd	s0,0(sp)
    80007f48:	00113423          	sd	ra,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	ffffe097          	auipc	ra,0xffffe
    80007f54:	5bc080e7          	jalr	1468(ra) # 8000650c <mycpu>
    80007f58:	100027f3          	csrr	a5,sstatus
    80007f5c:	0027f793          	andi	a5,a5,2
    80007f60:	04078463          	beqz	a5,80007fa8 <pop_on+0x68>
    80007f64:	07852783          	lw	a5,120(a0)
    80007f68:	02f05863          	blez	a5,80007f98 <pop_on+0x58>
    80007f6c:	fff7879b          	addiw	a5,a5,-1
    80007f70:	06f52c23          	sw	a5,120(a0)
    80007f74:	07853783          	ld	a5,120(a0)
    80007f78:	00079863          	bnez	a5,80007f88 <pop_on+0x48>
    80007f7c:	100027f3          	csrr	a5,sstatus
    80007f80:	ffd7f793          	andi	a5,a5,-3
    80007f84:	10079073          	csrw	sstatus,a5
    80007f88:	00813083          	ld	ra,8(sp)
    80007f8c:	00013403          	ld	s0,0(sp)
    80007f90:	01010113          	addi	sp,sp,16
    80007f94:	00008067          	ret
    80007f98:	00001517          	auipc	a0,0x1
    80007f9c:	68850513          	addi	a0,a0,1672 # 80009620 <digits+0x70>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	f2c080e7          	jalr	-212(ra) # 80006ecc <panic>
    80007fa8:	00001517          	auipc	a0,0x1
    80007fac:	65850513          	addi	a0,a0,1624 # 80009600 <digits+0x50>
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	f1c080e7          	jalr	-228(ra) # 80006ecc <panic>

0000000080007fb8 <__memset>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	1a060e63          	beqz	a2,80008180 <__memset+0x1c8>
    80007fc8:	40a007b3          	neg	a5,a0
    80007fcc:	0077f793          	andi	a5,a5,7
    80007fd0:	00778693          	addi	a3,a5,7
    80007fd4:	00b00813          	li	a6,11
    80007fd8:	0ff5f593          	andi	a1,a1,255
    80007fdc:	fff6071b          	addiw	a4,a2,-1
    80007fe0:	1b06e663          	bltu	a3,a6,8000818c <__memset+0x1d4>
    80007fe4:	1cd76463          	bltu	a4,a3,800081ac <__memset+0x1f4>
    80007fe8:	1a078e63          	beqz	a5,800081a4 <__memset+0x1ec>
    80007fec:	00b50023          	sb	a1,0(a0)
    80007ff0:	00100713          	li	a4,1
    80007ff4:	1ae78463          	beq	a5,a4,8000819c <__memset+0x1e4>
    80007ff8:	00b500a3          	sb	a1,1(a0)
    80007ffc:	00200713          	li	a4,2
    80008000:	1ae78a63          	beq	a5,a4,800081b4 <__memset+0x1fc>
    80008004:	00b50123          	sb	a1,2(a0)
    80008008:	00300713          	li	a4,3
    8000800c:	18e78463          	beq	a5,a4,80008194 <__memset+0x1dc>
    80008010:	00b501a3          	sb	a1,3(a0)
    80008014:	00400713          	li	a4,4
    80008018:	1ae78263          	beq	a5,a4,800081bc <__memset+0x204>
    8000801c:	00b50223          	sb	a1,4(a0)
    80008020:	00500713          	li	a4,5
    80008024:	1ae78063          	beq	a5,a4,800081c4 <__memset+0x20c>
    80008028:	00b502a3          	sb	a1,5(a0)
    8000802c:	00700713          	li	a4,7
    80008030:	18e79e63          	bne	a5,a4,800081cc <__memset+0x214>
    80008034:	00b50323          	sb	a1,6(a0)
    80008038:	00700e93          	li	t4,7
    8000803c:	00859713          	slli	a4,a1,0x8
    80008040:	00e5e733          	or	a4,a1,a4
    80008044:	01059e13          	slli	t3,a1,0x10
    80008048:	01c76e33          	or	t3,a4,t3
    8000804c:	01859313          	slli	t1,a1,0x18
    80008050:	006e6333          	or	t1,t3,t1
    80008054:	02059893          	slli	a7,a1,0x20
    80008058:	40f60e3b          	subw	t3,a2,a5
    8000805c:	011368b3          	or	a7,t1,a7
    80008060:	02859813          	slli	a6,a1,0x28
    80008064:	0108e833          	or	a6,a7,a6
    80008068:	03059693          	slli	a3,a1,0x30
    8000806c:	003e589b          	srliw	a7,t3,0x3
    80008070:	00d866b3          	or	a3,a6,a3
    80008074:	03859713          	slli	a4,a1,0x38
    80008078:	00389813          	slli	a6,a7,0x3
    8000807c:	00f507b3          	add	a5,a0,a5
    80008080:	00e6e733          	or	a4,a3,a4
    80008084:	000e089b          	sext.w	a7,t3
    80008088:	00f806b3          	add	a3,a6,a5
    8000808c:	00e7b023          	sd	a4,0(a5)
    80008090:	00878793          	addi	a5,a5,8
    80008094:	fed79ce3          	bne	a5,a3,8000808c <__memset+0xd4>
    80008098:	ff8e7793          	andi	a5,t3,-8
    8000809c:	0007871b          	sext.w	a4,a5
    800080a0:	01d787bb          	addw	a5,a5,t4
    800080a4:	0ce88e63          	beq	a7,a4,80008180 <__memset+0x1c8>
    800080a8:	00f50733          	add	a4,a0,a5
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0017871b          	addiw	a4,a5,1
    800080b4:	0cc77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0027871b          	addiw	a4,a5,2
    800080c4:	0ac77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0037871b          	addiw	a4,a5,3
    800080d4:	0ac77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0047871b          	addiw	a4,a5,4
    800080e4:	08c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0057871b          	addiw	a4,a5,5
    800080f4:	08c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0067871b          	addiw	a4,a5,6
    80008104:	06c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0077871b          	addiw	a4,a5,7
    80008114:	06c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0087871b          	addiw	a4,a5,8
    80008124:	04c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0097871b          	addiw	a4,a5,9
    80008134:	04c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00a7871b          	addiw	a4,a5,10
    80008144:	02c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00b7871b          	addiw	a4,a5,11
    80008154:	02c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	00c7871b          	addiw	a4,a5,12
    80008164:	00c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	00d7879b          	addiw	a5,a5,13
    80008174:	00c7f663          	bgeu	a5,a2,80008180 <__memset+0x1c8>
    80008178:	00f507b3          	add	a5,a0,a5
    8000817c:	00b78023          	sb	a1,0(a5)
    80008180:	00813403          	ld	s0,8(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	00b00693          	li	a3,11
    80008190:	e55ff06f          	j	80007fe4 <__memset+0x2c>
    80008194:	00300e93          	li	t4,3
    80008198:	ea5ff06f          	j	8000803c <__memset+0x84>
    8000819c:	00100e93          	li	t4,1
    800081a0:	e9dff06f          	j	8000803c <__memset+0x84>
    800081a4:	00000e93          	li	t4,0
    800081a8:	e95ff06f          	j	8000803c <__memset+0x84>
    800081ac:	00000793          	li	a5,0
    800081b0:	ef9ff06f          	j	800080a8 <__memset+0xf0>
    800081b4:	00200e93          	li	t4,2
    800081b8:	e85ff06f          	j	8000803c <__memset+0x84>
    800081bc:	00400e93          	li	t4,4
    800081c0:	e7dff06f          	j	8000803c <__memset+0x84>
    800081c4:	00500e93          	li	t4,5
    800081c8:	e75ff06f          	j	8000803c <__memset+0x84>
    800081cc:	00600e93          	li	t4,6
    800081d0:	e6dff06f          	j	8000803c <__memset+0x84>

00000000800081d4 <__memmove>:
    800081d4:	ff010113          	addi	sp,sp,-16
    800081d8:	00813423          	sd	s0,8(sp)
    800081dc:	01010413          	addi	s0,sp,16
    800081e0:	0e060863          	beqz	a2,800082d0 <__memmove+0xfc>
    800081e4:	fff6069b          	addiw	a3,a2,-1
    800081e8:	0006881b          	sext.w	a6,a3
    800081ec:	0ea5e863          	bltu	a1,a0,800082dc <__memmove+0x108>
    800081f0:	00758713          	addi	a4,a1,7
    800081f4:	00a5e7b3          	or	a5,a1,a0
    800081f8:	40a70733          	sub	a4,a4,a0
    800081fc:	0077f793          	andi	a5,a5,7
    80008200:	00f73713          	sltiu	a4,a4,15
    80008204:	00174713          	xori	a4,a4,1
    80008208:	0017b793          	seqz	a5,a5
    8000820c:	00e7f7b3          	and	a5,a5,a4
    80008210:	10078863          	beqz	a5,80008320 <__memmove+0x14c>
    80008214:	00900793          	li	a5,9
    80008218:	1107f463          	bgeu	a5,a6,80008320 <__memmove+0x14c>
    8000821c:	0036581b          	srliw	a6,a2,0x3
    80008220:	fff8081b          	addiw	a6,a6,-1
    80008224:	02081813          	slli	a6,a6,0x20
    80008228:	01d85893          	srli	a7,a6,0x1d
    8000822c:	00858813          	addi	a6,a1,8
    80008230:	00058793          	mv	a5,a1
    80008234:	00050713          	mv	a4,a0
    80008238:	01088833          	add	a6,a7,a6
    8000823c:	0007b883          	ld	a7,0(a5)
    80008240:	00878793          	addi	a5,a5,8
    80008244:	00870713          	addi	a4,a4,8
    80008248:	ff173c23          	sd	a7,-8(a4)
    8000824c:	ff0798e3          	bne	a5,a6,8000823c <__memmove+0x68>
    80008250:	ff867713          	andi	a4,a2,-8
    80008254:	02071793          	slli	a5,a4,0x20
    80008258:	0207d793          	srli	a5,a5,0x20
    8000825c:	00f585b3          	add	a1,a1,a5
    80008260:	40e686bb          	subw	a3,a3,a4
    80008264:	00f507b3          	add	a5,a0,a5
    80008268:	06e60463          	beq	a2,a4,800082d0 <__memmove+0xfc>
    8000826c:	0005c703          	lbu	a4,0(a1)
    80008270:	00e78023          	sb	a4,0(a5)
    80008274:	04068e63          	beqz	a3,800082d0 <__memmove+0xfc>
    80008278:	0015c603          	lbu	a2,1(a1)
    8000827c:	00100713          	li	a4,1
    80008280:	00c780a3          	sb	a2,1(a5)
    80008284:	04e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008288:	0025c603          	lbu	a2,2(a1)
    8000828c:	00200713          	li	a4,2
    80008290:	00c78123          	sb	a2,2(a5)
    80008294:	02e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008298:	0035c603          	lbu	a2,3(a1)
    8000829c:	00300713          	li	a4,3
    800082a0:	00c781a3          	sb	a2,3(a5)
    800082a4:	02e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082a8:	0045c603          	lbu	a2,4(a1)
    800082ac:	00400713          	li	a4,4
    800082b0:	00c78223          	sb	a2,4(a5)
    800082b4:	00e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082b8:	0055c603          	lbu	a2,5(a1)
    800082bc:	00500713          	li	a4,5
    800082c0:	00c782a3          	sb	a2,5(a5)
    800082c4:	00e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082c8:	0065c703          	lbu	a4,6(a1)
    800082cc:	00e78323          	sb	a4,6(a5)
    800082d0:	00813403          	ld	s0,8(sp)
    800082d4:	01010113          	addi	sp,sp,16
    800082d8:	00008067          	ret
    800082dc:	02061713          	slli	a4,a2,0x20
    800082e0:	02075713          	srli	a4,a4,0x20
    800082e4:	00e587b3          	add	a5,a1,a4
    800082e8:	f0f574e3          	bgeu	a0,a5,800081f0 <__memmove+0x1c>
    800082ec:	02069613          	slli	a2,a3,0x20
    800082f0:	02065613          	srli	a2,a2,0x20
    800082f4:	fff64613          	not	a2,a2
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00c78633          	add	a2,a5,a2
    80008300:	fff7c683          	lbu	a3,-1(a5)
    80008304:	fff78793          	addi	a5,a5,-1
    80008308:	fff70713          	addi	a4,a4,-1
    8000830c:	00d70023          	sb	a3,0(a4)
    80008310:	fec798e3          	bne	a5,a2,80008300 <__memmove+0x12c>
    80008314:	00813403          	ld	s0,8(sp)
    80008318:	01010113          	addi	sp,sp,16
    8000831c:	00008067          	ret
    80008320:	02069713          	slli	a4,a3,0x20
    80008324:	02075713          	srli	a4,a4,0x20
    80008328:	00170713          	addi	a4,a4,1
    8000832c:	00e50733          	add	a4,a0,a4
    80008330:	00050793          	mv	a5,a0
    80008334:	0005c683          	lbu	a3,0(a1)
    80008338:	00178793          	addi	a5,a5,1
    8000833c:	00158593          	addi	a1,a1,1
    80008340:	fed78fa3          	sb	a3,-1(a5)
    80008344:	fee798e3          	bne	a5,a4,80008334 <__memmove+0x160>
    80008348:	f89ff06f          	j	800082d0 <__memmove+0xfc>

000000008000834c <__putc>:
    8000834c:	fe010113          	addi	sp,sp,-32
    80008350:	00813823          	sd	s0,16(sp)
    80008354:	00113c23          	sd	ra,24(sp)
    80008358:	02010413          	addi	s0,sp,32
    8000835c:	00050793          	mv	a5,a0
    80008360:	fef40593          	addi	a1,s0,-17
    80008364:	00100613          	li	a2,1
    80008368:	00000513          	li	a0,0
    8000836c:	fef407a3          	sb	a5,-17(s0)
    80008370:	fffff097          	auipc	ra,0xfffff
    80008374:	b3c080e7          	jalr	-1220(ra) # 80006eac <console_write>
    80008378:	01813083          	ld	ra,24(sp)
    8000837c:	01013403          	ld	s0,16(sp)
    80008380:	02010113          	addi	sp,sp,32
    80008384:	00008067          	ret

0000000080008388 <__getc>:
    80008388:	fe010113          	addi	sp,sp,-32
    8000838c:	00813823          	sd	s0,16(sp)
    80008390:	00113c23          	sd	ra,24(sp)
    80008394:	02010413          	addi	s0,sp,32
    80008398:	fe840593          	addi	a1,s0,-24
    8000839c:	00100613          	li	a2,1
    800083a0:	00000513          	li	a0,0
    800083a4:	fffff097          	auipc	ra,0xfffff
    800083a8:	ae8080e7          	jalr	-1304(ra) # 80006e8c <console_read>
    800083ac:	fe844503          	lbu	a0,-24(s0)
    800083b0:	01813083          	ld	ra,24(sp)
    800083b4:	01013403          	ld	s0,16(sp)
    800083b8:	02010113          	addi	sp,sp,32
    800083bc:	00008067          	ret

00000000800083c0 <console_handler>:
    800083c0:	fe010113          	addi	sp,sp,-32
    800083c4:	00813823          	sd	s0,16(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	00913423          	sd	s1,8(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	14202773          	csrr	a4,scause
    800083d8:	100027f3          	csrr	a5,sstatus
    800083dc:	0027f793          	andi	a5,a5,2
    800083e0:	06079e63          	bnez	a5,8000845c <console_handler+0x9c>
    800083e4:	00074c63          	bltz	a4,800083fc <console_handler+0x3c>
    800083e8:	01813083          	ld	ra,24(sp)
    800083ec:	01013403          	ld	s0,16(sp)
    800083f0:	00813483          	ld	s1,8(sp)
    800083f4:	02010113          	addi	sp,sp,32
    800083f8:	00008067          	ret
    800083fc:	0ff77713          	andi	a4,a4,255
    80008400:	00900793          	li	a5,9
    80008404:	fef712e3          	bne	a4,a5,800083e8 <console_handler+0x28>
    80008408:	ffffe097          	auipc	ra,0xffffe
    8000840c:	6dc080e7          	jalr	1756(ra) # 80006ae4 <plic_claim>
    80008410:	00a00793          	li	a5,10
    80008414:	00050493          	mv	s1,a0
    80008418:	02f50c63          	beq	a0,a5,80008450 <console_handler+0x90>
    8000841c:	fc0506e3          	beqz	a0,800083e8 <console_handler+0x28>
    80008420:	00050593          	mv	a1,a0
    80008424:	00001517          	auipc	a0,0x1
    80008428:	10450513          	addi	a0,a0,260 # 80009528 <_ZZ6prtIntmE6digits+0x440>
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	afc080e7          	jalr	-1284(ra) # 80006f28 <__printf>
    80008434:	01013403          	ld	s0,16(sp)
    80008438:	01813083          	ld	ra,24(sp)
    8000843c:	00048513          	mv	a0,s1
    80008440:	00813483          	ld	s1,8(sp)
    80008444:	02010113          	addi	sp,sp,32
    80008448:	ffffe317          	auipc	t1,0xffffe
    8000844c:	6d430067          	jr	1748(t1) # 80006b1c <plic_complete>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	3e0080e7          	jalr	992(ra) # 80007830 <uartintr>
    80008458:	fddff06f          	j	80008434 <console_handler+0x74>
    8000845c:	00001517          	auipc	a0,0x1
    80008460:	1cc50513          	addi	a0,a0,460 # 80009628 <digits+0x78>
    80008464:	fffff097          	auipc	ra,0xfffff
    80008468:	a68080e7          	jalr	-1432(ra) # 80006ecc <panic>
	...
