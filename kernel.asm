
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	4d813103          	ld	sp,1240(sp) # 8000b4d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2ac060ef          	jal	ra,800062c8 <start>

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
    800011a8:	058010ef          	jal	ra,80002200 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012b0:	11c010ef          	jal	ra,800023cc <_ZN5Riscv14timerInterruptEv>

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
    800013b8:	0cc010ef          	jal	ra,80002484 <_ZN5Riscv17hardwareInterruptEv>

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
    800017e0:	8bc080e7          	jalr	-1860(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    800017e4:	00000613          	li	a2,0
    800017e8:	00a00593          	li	a1,10
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00004097          	auipc	ra,0x4
    800017f4:	a58080e7          	jalr	-1448(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    800017f8:	00008517          	auipc	a0,0x8
    800017fc:	93850513          	addi	a0,a0,-1736 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001800:	00004097          	auipc	ra,0x4
    80001804:	898080e7          	jalr	-1896(ra) # 80005098 <_Z11printStringPKc>
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
    80001824:	878080e7          	jalr	-1928(ra) # 80005098 <_Z11printStringPKc>
    __asm__("li t1, 7");
    80001828:	00700313          	li	t1,7
    TCB::yield();
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	dc8080e7          	jalr	-568(ra) # 800025f4 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    80001834:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001838:	00008517          	auipc	a0,0x8
    8000183c:	80050513          	addi	a0,a0,-2048 # 80009038 <CONSOLE_STATUS+0x28>
    80001840:	00004097          	auipc	ra,0x4
    80001844:	858080e7          	jalr	-1960(ra) # 80005098 <_Z11printStringPKc>
    printInt(t1);
    80001848:	00000613          	li	a2,0
    8000184c:	00a00593          	li	a1,10
    80001850:	0009051b          	sext.w	a0,s2
    80001854:	00004097          	auipc	ra,0x4
    80001858:	9f4080e7          	jalr	-1548(ra) # 80005248 <_Z8printIntiii>
    printString("\n");
    8000185c:	00008517          	auipc	a0,0x8
    80001860:	8d450513          	addi	a0,a0,-1836 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001864:	00004097          	auipc	ra,0x4
    80001868:	834080e7          	jalr	-1996(ra) # 80005098 <_Z11printStringPKc>

    uint64 result= fibonacci(20);
    8000186c:	01400513          	li	a0,20
    80001870:	00000097          	auipc	ra,0x0
    80001874:	ee8080e7          	jalr	-280(ra) # 80001758 <_Z9fibonaccim>
    80001878:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000187c:	00007517          	auipc	a0,0x7
    80001880:	7c450513          	addi	a0,a0,1988 # 80009040 <CONSOLE_STATUS+0x30>
    80001884:	00004097          	auipc	ra,0x4
    80001888:	814080e7          	jalr	-2028(ra) # 80005098 <_Z11printStringPKc>
    printInt(result);
    8000188c:	00000613          	li	a2,0
    80001890:	00a00593          	li	a1,10
    80001894:	0009051b          	sext.w	a0,s2
    80001898:	00004097          	auipc	ra,0x4
    8000189c:	9b0080e7          	jalr	-1616(ra) # 80005248 <_Z8printIntiii>
    printString("\n");
    800018a0:	00008517          	auipc	a0,0x8
    800018a4:	89050513          	addi	a0,a0,-1904 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800018a8:	00003097          	auipc	ra,0x3
    800018ac:	7f0080e7          	jalr	2032(ra) # 80005098 <_Z11printStringPKc>
    800018b0:	0400006f          	j	800018f0 <_Z11workerBodyCPv+0x13c>

    for(;i<6;i++){
        printString("C: i=");
    800018b4:	00007517          	auipc	a0,0x7
    800018b8:	76c50513          	addi	a0,a0,1900 # 80009020 <CONSOLE_STATUS+0x10>
    800018bc:	00003097          	auipc	ra,0x3
    800018c0:	7dc080e7          	jalr	2012(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    800018c4:	00000613          	li	a2,0
    800018c8:	00a00593          	li	a1,10
    800018cc:	00048513          	mv	a0,s1
    800018d0:	00004097          	auipc	ra,0x4
    800018d4:	978080e7          	jalr	-1672(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    800018d8:	00008517          	auipc	a0,0x8
    800018dc:	85850513          	addi	a0,a0,-1960 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800018e0:	00003097          	auipc	ra,0x3
    800018e4:	7b8080e7          	jalr	1976(ra) # 80005098 <_Z11printStringPKc>
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
    80001904:	798080e7          	jalr	1944(ra) # 80005098 <_Z11printStringPKc>
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
    8000194c:	750080e7          	jalr	1872(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    80001950:	00000613          	li	a2,0
    80001954:	00a00593          	li	a1,10
    80001958:	00048513          	mv	a0,s1
    8000195c:	00004097          	auipc	ra,0x4
    80001960:	8ec080e7          	jalr	-1812(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    80001964:	00007517          	auipc	a0,0x7
    80001968:	7cc50513          	addi	a0,a0,1996 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000196c:	00003097          	auipc	ra,0x3
    80001970:	72c080e7          	jalr	1836(ra) # 80005098 <_Z11printStringPKc>
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
    80001990:	70c080e7          	jalr	1804(ra) # 80005098 <_Z11printStringPKc>
    __asm__("li t1, 5");
    80001994:	00500313          	li	t1,5
    TCB::yield();
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	c5c080e7          	jalr	-932(ra) # 800025f4 <_ZN3TCB5yieldEv>

    uint64 result= fibonacci(23);
    800019a0:	01700513          	li	a0,23
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	db4080e7          	jalr	-588(ra) # 80001758 <_Z9fibonaccim>
    800019ac:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800019b0:	00007517          	auipc	a0,0x7
    800019b4:	6d050513          	addi	a0,a0,1744 # 80009080 <CONSOLE_STATUS+0x70>
    800019b8:	00003097          	auipc	ra,0x3
    800019bc:	6e0080e7          	jalr	1760(ra) # 80005098 <_Z11printStringPKc>
    printInt(result);
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0009051b          	sext.w	a0,s2
    800019cc:	00004097          	auipc	ra,0x4
    800019d0:	87c080e7          	jalr	-1924(ra) # 80005248 <_Z8printIntiii>
    printString("\n");
    800019d4:	00007517          	auipc	a0,0x7
    800019d8:	75c50513          	addi	a0,a0,1884 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800019dc:	00003097          	auipc	ra,0x3
    800019e0:	6bc080e7          	jalr	1724(ra) # 80005098 <_Z11printStringPKc>
    800019e4:	0400006f          	j	80001a24 <_Z11workerBodyDPv+0x104>

    for(;i<16;i++){
        printString("D: i=");
    800019e8:	00007517          	auipc	a0,0x7
    800019ec:	68050513          	addi	a0,a0,1664 # 80009068 <CONSOLE_STATUS+0x58>
    800019f0:	00003097          	auipc	ra,0x3
    800019f4:	6a8080e7          	jalr	1704(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    800019f8:	00000613          	li	a2,0
    800019fc:	00a00593          	li	a1,10
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00004097          	auipc	ra,0x4
    80001a08:	844080e7          	jalr	-1980(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    80001a0c:	00007517          	auipc	a0,0x7
    80001a10:	72450513          	addi	a0,a0,1828 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001a14:	00003097          	auipc	ra,0x3
    80001a18:	684080e7          	jalr	1668(ra) # 80005098 <_Z11printStringPKc>
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
    80001a38:	664080e7          	jalr	1636(ra) # 80005098 <_Z11printStringPKc>
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
    80001ab0:	5ec080e7          	jalr	1516(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    80001ab4:	00000613          	li	a2,0
    80001ab8:	00a00593          	li	a1,10
    80001abc:	0004851b          	sext.w	a0,s1
    80001ac0:	00003097          	auipc	ra,0x3
    80001ac4:	788080e7          	jalr	1928(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    80001ac8:	00007517          	auipc	a0,0x7
    80001acc:	66850513          	addi	a0,a0,1640 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001ad0:	00003097          	auipc	ra,0x3
    80001ad4:	5c8080e7          	jalr	1480(ra) # 80005098 <_Z11printStringPKc>
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
    80001aec:	5b0080e7          	jalr	1456(ra) # 80005098 <_Z11printStringPKc>
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
    80001b60:	53c080e7          	jalr	1340(ra) # 80005098 <_Z11printStringPKc>
        printInt(i);
    80001b64:	00000613          	li	a2,0
    80001b68:	00a00593          	li	a1,10
    80001b6c:	0004851b          	sext.w	a0,s1
    80001b70:	00003097          	auipc	ra,0x3
    80001b74:	6d8080e7          	jalr	1752(ra) # 80005248 <_Z8printIntiii>
        printString("\n");
    80001b78:	00007517          	auipc	a0,0x7
    80001b7c:	5b850513          	addi	a0,a0,1464 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80001b80:	00003097          	auipc	ra,0x3
    80001b84:	518080e7          	jalr	1304(ra) # 80005098 <_Z11printStringPKc>
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
    80001b9c:	500080e7          	jalr	1280(ra) # 80005098 <_Z11printStringPKc>
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
    80001bd4:	c60080e7          	jalr	-928(ra) # 80002830 <_ZN15MemoryAllocator5allocEm>
    //Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    newElem->t=t;
    80001bd8:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    80001bdc:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001be0:	0000a797          	auipc	a5,0xa
    80001be4:	9607b783          	ld	a5,-1696(a5) # 8000b540 <_ZN9Scheduler5firstE>
    80001be8:	02078663          	beqz	a5,80001c14 <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001bec:	0000a797          	auipc	a5,0xa
    80001bf0:	95478793          	addi	a5,a5,-1708 # 8000b540 <_ZN9Scheduler5firstE>
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
    80001c18:	92c78793          	addi	a5,a5,-1748 # 8000b540 <_ZN9Scheduler5firstE>
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
    80001c40:	90453503          	ld	a0,-1788(a0) # 8000b540 <_ZN9Scheduler5firstE>
    80001c44:	04050663          	beqz	a0,80001c90 <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    TCB* t=elem->t;
    80001c48:	00053483          	ld	s1,0(a0)

    MemoryAllocator::free(elem);
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	cb8080e7          	jalr	-840(ra) # 80002904 <_ZN15MemoryAllocator4freeEPv>
    //mem_free(elem);

    first=first->next;
    80001c54:	0000a717          	auipc	a4,0xa
    80001c58:	8ec70713          	addi	a4,a4,-1812 # 8000b540 <_ZN9Scheduler5firstE>
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
    80001c88:	8c07b223          	sd	zero,-1852(a5) # 8000b548 <_ZN9Scheduler4lastE>
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
    80001cc8:	a9c080e7          	jalr	-1380(ra) # 80005760 <_Z8userMainv>
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
    80001cf4:	d80080e7          	jalr	-640(ra) # 80002a70 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    80001cf8:	00009797          	auipc	a5,0x9
    80001cfc:	7d07b783          	ld	a5,2000(a5) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001d0c:	7d84b483          	ld	s1,2008(s1) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001d2c:	7c07b783          	ld	a5,1984(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x30>
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

0000000080001e80 <_ZN6Thread22wrapperPolymorphThreadEPv>:
// Created by os on 7/21/23.
//

#include "../h/syscall_cpp.hpp"

void Thread::wrapperPolymorphThread(void* t){
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    80001e90:	00053783          	ld	a5,0(a0)
    80001e94:	0107b783          	ld	a5,16(a5)
    80001e98:	000780e7          	jalr	a5
}
    80001e9c:	00813083          	ld	ra,8(sp)
    80001ea0:	00013403          	ld	s0,0(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}

Thread::~Thread() {
    80001eac:	00009797          	auipc	a5,0x9
    80001eb0:	40c78793          	addi	a5,a5,1036 # 8000b2b8 <_ZTV6Thread+0x10>
    80001eb4:	00f53023          	sd	a5,0(a0)
    //myHandle->setFinished(true);
    delete myHandle;
    80001eb8:	00853503          	ld	a0,8(a0)
    80001ebc:	02050863          	beqz	a0,80001eec <_ZN6ThreadD1Ev+0x40>
Thread::~Thread() {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001ed0:	00053783          	ld	a5,0(a0)
    80001ed4:	0087b783          	ld	a5,8(a5)
    80001ed8:	000780e7          	jalr	a5
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00813423          	sd	s0,8(sp)
    80001ef8:	01010413          	addi	s0,sp,16

}
    80001efc:	00813403          	ld	s0,8(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	02010413          	addi	s0,sp,32
    80001f1c:	00050493          	mv	s1,a0
}
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	f8c080e7          	jalr	-116(ra) # 80001eac <_ZN6ThreadD1Ev>
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	f04080e7          	jalr	-252(ra) # 80001e30 <_ZdlPv>
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret

0000000080001f48 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
}
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	ed8080e7          	jalr	-296(ra) # 80001e30 <_ZdlPv>
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) :myHandle(nullptr), body(body), arg(arg){}
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00813423          	sd	s0,8(sp)
    80001f78:	01010413          	addi	s0,sp,16
    80001f7c:	00009797          	auipc	a5,0x9
    80001f80:	33c78793          	addi	a5,a5,828 # 8000b2b8 <_ZTV6Thread+0x10>
    80001f84:	00f53023          	sd	a5,0(a0)
    80001f88:	00053423          	sd	zero,8(a0)
    80001f8c:	00b53823          	sd	a1,16(a0)
    80001f90:	00c53c23          	sd	a2,24(a0)
    80001f94:	00813403          	ld	s0,8(sp)
    80001f98:	01010113          	addi	sp,sp,16
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN6Thread5startEv>:
int Thread::start() {
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	00813023          	sd	s0,0(sp)
    80001fac:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,this->body, this->arg);
    80001fb0:	01853603          	ld	a2,24(a0)
    80001fb4:	01053583          	ld	a1,16(a0)
    80001fb8:	00850513          	addi	a0,a0,8
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	578080e7          	jalr	1400(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001fc4:	00813083          	ld	ra,8(sp)
    80001fc8:	00013403          	ld	s0,0(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	654080e7          	jalr	1620(ra) # 80001638 <_Z15thread_dispatchv>
}
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN6ThreadC1Ev>:
Thread::Thread():myHandle(nullptr),body(wrapperPolymorphThread),arg((void*)this) {}
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00009797          	auipc	a5,0x9
    8000200c:	2b078793          	addi	a5,a5,688 # 8000b2b8 <_ZTV6Thread+0x10>
    80002010:	00f53023          	sd	a5,0(a0)
    80002014:	00053423          	sd	zero,8(a0)
    80002018:	00000797          	auipc	a5,0x0
    8000201c:	e6878793          	addi	a5,a5,-408 # 80001e80 <_ZN6Thread22wrapperPolymorphThreadEPv>
    80002020:	00f53823          	sd	a5,16(a0)
    80002024:	00a53c23          	sd	a0,24(a0)
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN6Thread4joinEv>:
void Thread::join() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16
}
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
}
    80002058:	00000513          	li	a0,0
    8000205c:	00813403          	ld	s0,8(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    80002074:	00009797          	auipc	a5,0x9
    80002078:	26c78793          	addi	a5,a5,620 # 8000b2e0 <_ZTV9Semaphore+0x10>
    8000207c:	00f53023          	sd	a5,0(a0)
}
    80002080:	00813403          	ld	s0,8(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret

000000008000208c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000208c:	ff010113          	addi	sp,sp,-16
    80002090:	00813423          	sd	s0,8(sp)
    80002094:	01010413          	addi	s0,sp,16
    return 0;
}
    80002098:	00000513          	li	a0,0
    8000209c:	00813403          	ld	s0,8(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00813423          	sd	s0,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    return 0;
}
    800020b4:	00000513          	li	a0,0
    800020b8:	00813403          	ld	s0,8(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16

}
    800020d0:	00813403          	ld	s0,8(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00113c23          	sd	ra,24(sp)
    800020e4:	00813823          	sd	s0,16(sp)
    800020e8:	00913423          	sd	s1,8(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00050493          	mv	s1,a0
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	f08080e7          	jalr	-248(ra) # 80001ffc <_ZN6ThreadC1Ev>
    800020fc:	00009797          	auipc	a5,0x9
    80002100:	18c78793          	addi	a5,a5,396 # 8000b288 <_ZTV14PeriodicThread+0x10>
    80002104:	00f4b023          	sd	a5,0(s1)

}
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret

000000008000211c <_ZN7Console4getcEv>:

char Console::getc() {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    return 0;
}
    80002128:	00000513          	li	a0,0
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00813423          	sd	s0,8(sp)
    80002140:	01010413          	addi	s0,sp,16

}
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void wrapperPolymorphThread(void*);
protected:
    Thread ();
    virtual void run () {}
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    8000215c:	00813403          	ld	s0,8(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret

0000000080002168 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00813423          	sd	s0,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	00813403          	ld	s0,8(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00113423          	sd	ra,8(sp)
    80002188:	00813023          	sd	s0,0(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00009797          	auipc	a5,0x9
    80002194:	0f878793          	addi	a5,a5,248 # 8000b288 <_ZTV14PeriodicThread+0x10>
    80002198:	00f53023          	sd	a5,0(a0)
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	d10080e7          	jalr	-752(ra) # 80001eac <_ZN6ThreadD1Ev>
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN14PeriodicThreadD0Ev>:
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	00050493          	mv	s1,a0
    800021cc:	00009797          	auipc	a5,0x9
    800021d0:	0bc78793          	addi	a5,a5,188 # 8000b288 <_ZTV14PeriodicThread+0x10>
    800021d4:	00f53023          	sd	a5,0(a0)
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	cd4080e7          	jalr	-812(ra) # 80001eac <_ZN6ThreadD1Ev>
    800021e0:	00048513          	mv	a0,s1
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	c4c080e7          	jalr	-948(ra) # 80001e30 <_ZdlPv>
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"



void Riscv::handleSupervisorTrap(){
    80002200:	fa010113          	addi	sp,sp,-96
    80002204:	04113c23          	sd	ra,88(sp)
    80002208:	04813823          	sd	s0,80(sp)
    8000220c:	04913423          	sd	s1,72(sp)
    80002210:	05213023          	sd	s2,64(sp)
    80002214:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002218:	142027f3          	csrr	a5,scause
    8000221c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002220:	fa043503          	ld	a0,-96(s0)
    uint64 scause=r_scause();

    volatile uint64 a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    80002224:	05043783          	ld	a5,80(s0)
    80002228:	fcf43c23          	sd	a5,-40(s0)
    volatile uint64 a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    8000222c:	05843783          	ld	a5,88(s0)
    80002230:	fcf43823          	sd	a5,-48(s0)
    volatile uint64 a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    80002234:	06043783          	ld	a5,96(s0)
    80002238:	fcf43423          	sd	a5,-56(s0)
    volatile uint64 a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    8000223c:	06843783          	ld	a5,104(s0)
    80002240:	fcf43023          	sd	a5,-64(s0)
    volatile uint64 a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    80002244:	07043783          	ld	a5,112(s0)
    80002248:	faf43c23          	sd	a5,-72(s0)

    if(scause==0x09UL || scause==0x08UL){
    8000224c:	ff850713          	addi	a4,a0,-8
    80002250:	00100793          	li	a5,1
    80002254:	16e7e063          	bltu	a5,a4,800023b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002258:	141027f3          	csrr	a5,sepc
    8000225c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002260:	fb043483          	ld	s1,-80(s0)
        //09 iz sist rezima, 08 iz korisnickog
        uint64 sepc=r_sepc()+4;
    80002264:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002268:	100027f3          	csrr	a5,sstatus
    8000226c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002270:	fa843903          	ld	s2,-88(s0)
        uint64 sstatus=r_sstatus();

        if(a0==0x01){
    80002274:	fd843703          	ld	a4,-40(s0)
    80002278:	00100793          	li	a5,1
    8000227c:	06f70063          	beq	a4,a5,800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
            //mem_alloc
            void *ptr=MemoryAllocator::alloc(a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
        }
        else if(a0==0x02){
    80002280:	fd843703          	ld	a4,-40(s0)
    80002284:	00200793          	li	a5,2
    80002288:	08f70263          	beq	a4,a5,8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
            //mem_free
            int stat=MemoryAllocator::free((void*)a1);
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
        }

        else if(a0==0x11){
    8000228c:	fd843703          	ld	a4,-40(s0)
    80002290:	01100793          	li	a5,17
    80002294:	08f70663          	beq	a4,a5,80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                *retHandle=handle;
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
            }

        }
        else if(a0==0x12){
    80002298:	fd843703          	ld	a4,-40(s0)
    8000229c:	01200793          	li	a5,18
    800022a0:	0af70c63          	beq	a4,a5,80002358 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                TCB::running->setFinished(true);
                TCB::dispatch();
                //delete exited; ovde se nikad ne vraca
            }
        }
        else if(a0==0x13){
    800022a4:	fd843703          	ld	a4,-40(s0)
    800022a8:	01300793          	li	a5,19
    800022ac:	0ef70063          	beq	a4,a5,8000238c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            //thread_dispatch()
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        else if(a0==0x41){
    800022b0:	fd843703          	ld	a4,-40(s0)
    800022b4:	04100793          	li	a5,65
    800022b8:	0ef70663          	beq	a4,a5,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            //char getc();
            char c=__getc();
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
        }
        else if(a0==0x42){
    800022bc:	fd843703          	ld	a4,-40(s0)
    800022c0:	04200793          	li	a5,66
    800022c4:	02f71463          	bne	a4,a5,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            //void putc()

            __putc((char)a1);
    800022c8:	fd043503          	ld	a0,-48(s0)
    800022cc:	0ff57513          	andi	a0,a0,255
    800022d0:	00006097          	auipc	ra,0x6
    800022d4:	0bc080e7          	jalr	188(ra) # 8000838c <__putc>
    800022d8:	0140006f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            void *ptr=MemoryAllocator::alloc(a1);
    800022dc:	fd043503          	ld	a0,-48(s0)
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	550080e7          	jalr	1360(ra) # 80002830 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    800022e8:	04a43823          	sd	a0,80(s0)
}
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    800022ec:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    800022f0:	14149073          	csrw	sepc,s1
        //print stval
        printInt(scause);
        //while(true);
    }

}
    800022f4:	05813083          	ld	ra,88(sp)
    800022f8:	05013403          	ld	s0,80(sp)
    800022fc:	04813483          	ld	s1,72(sp)
    80002300:	04013903          	ld	s2,64(sp)
    80002304:	06010113          	addi	sp,sp,96
    80002308:	00008067          	ret
            int stat=MemoryAllocator::free((void*)a1);
    8000230c:	fd043503          	ld	a0,-48(s0)
    80002310:	00000097          	auipc	ra,0x0
    80002314:	5f4080e7          	jalr	1524(ra) # 80002904 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80002318:	04a43823          	sd	a0,80(s0)
    8000231c:	fd1ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);
    80002320:	fc843503          	ld	a0,-56(s0)
    80002324:	fb843583          	ld	a1,-72(s0)
    80002328:	fc043603          	ld	a2,-64(s0)
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	400080e7          	jalr	1024(ra) # 8000272c <_ZN3TCB12createThreadEPFvPvEPmS0_>
            if(!handle){
    80002334:	00050c63          	beqz	a0,8000234c <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
                TCB** retHandle=(TCB**)a1;
    80002338:	fd043783          	ld	a5,-48(s0)
                *retHandle=handle;
    8000233c:	00a7b023          	sd	a0,0(a5)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80002340:	00000793          	li	a5,0
    80002344:	04f43823          	sd	a5,80(s0)
    80002348:	fa5ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    8000234c:	fff00793          	li	a5,-1
    80002350:	04f43823          	sd	a5,80(s0)
    80002354:	f99ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            if(TCB::running->isFinished()){
    80002358:	00009797          	auipc	a5,0x9
    8000235c:	1907b783          	ld	a5,400(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002360:	0007b783          	ld	a5,0(a5)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    80002364:	0307c703          	lbu	a4,48(a5)
    80002368:	00070863          	beqz	a4,80002378 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    8000236c:	fff00793          	li	a5,-1
    80002370:	04f43823          	sd	a5,80(s0)
    80002374:	f79ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    80002378:	00100713          	li	a4,1
    8000237c:	02e78823          	sb	a4,48(a5)
                TCB::dispatch();
    80002380:	00000097          	auipc	ra,0x0
    80002384:	294080e7          	jalr	660(ra) # 80002614 <_ZN3TCB8dispatchEv>
    80002388:	f65ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            TCB::timeSliceCounter=0;
    8000238c:	00009797          	auipc	a5,0x9
    80002390:	1447b783          	ld	a5,324(a5) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002394:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	27c080e7          	jalr	636(ra) # 80002614 <_ZN3TCB8dispatchEv>
    800023a0:	f4dff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
            char c=__getc();
    800023a4:	00006097          	auipc	ra,0x6
    800023a8:	024080e7          	jalr	36(ra) # 800083c8 <__getc>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(c));
    800023ac:	04a43823          	sd	a0,80(s0)
    800023b0:	f3dff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        printInt(scause);
    800023b4:	00000613          	li	a2,0
    800023b8:	00a00593          	li	a1,10
    800023bc:	0005051b          	sext.w	a0,a0
    800023c0:	00003097          	auipc	ra,0x3
    800023c4:	e88080e7          	jalr	-376(ra) # 80005248 <_Z8printIntiii>
}
    800023c8:	f2dff06f          	j	800022f4 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

00000000800023cc <_ZN5Riscv14timerInterruptEv>:

void Riscv::timerInterrupt() {
    800023cc:	fc010113          	addi	sp,sp,-64
    800023d0:	02113c23          	sd	ra,56(sp)
    800023d4:	02813823          	sd	s0,48(sp)
    800023d8:	02913423          	sd	s1,40(sp)
    800023dc:	03213023          	sd	s2,32(sp)
    800023e0:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800023e4:	142027f3          	csrr	a5,scause
    800023e8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800023ec:	fc843703          	ld	a4,-56(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
    800023f0:	fff00793          	li	a5,-1
    800023f4:	03f79793          	slli	a5,a5,0x3f
    800023f8:	00178793          	addi	a5,a5,1
    800023fc:	00f70e63          	beq	a4,a5,80002418 <_ZN5Riscv14timerInterruptEv+0x4c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
}
    80002400:	03813083          	ld	ra,56(sp)
    80002404:	03013403          	ld	s0,48(sp)
    80002408:	02813483          	ld	s1,40(sp)
    8000240c:	02013903          	ld	s2,32(sp)
    80002410:	04010113          	addi	sp,sp,64
    80002414:	00008067          	ret
        TCB::timeSliceCounter++;
    80002418:	00009717          	auipc	a4,0x9
    8000241c:	0b873703          	ld	a4,184(a4) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002420:	00073783          	ld	a5,0(a4)
    80002424:	00178793          	addi	a5,a5,1
    80002428:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    8000242c:	00009717          	auipc	a4,0x9
    80002430:	0bc73703          	ld	a4,188(a4) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002434:	00073703          	ld	a4,0(a4)
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    80002438:	02873703          	ld	a4,40(a4)
    8000243c:	00e7f863          	bgeu	a5,a4,8000244c <_ZN5Riscv14timerInterruptEv+0x80>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    80002440:	00200793          	li	a5,2
    80002444:	1447b073          	csrc	sip,a5
}
    80002448:	fb9ff06f          	j	80002400 <_ZN5Riscv14timerInterruptEv+0x34>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    8000244c:	141027f3          	csrr	a5,sepc
    80002450:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002454:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002458:	100027f3          	csrr	a5,sstatus
    8000245c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002460:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter=0;
    80002464:	00009797          	auipc	a5,0x9
    80002468:	06c7b783          	ld	a5,108(a5) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000246c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002470:	00000097          	auipc	ra,0x0
    80002474:	1a4080e7          	jalr	420(ra) # 80002614 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002478:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    8000247c:	14149073          	csrw	sepc,s1
}
    80002480:	fc1ff06f          	j	80002440 <_ZN5Riscv14timerInterruptEv+0x74>

0000000080002484 <_ZN5Riscv17hardwareInterruptEv>:

void Riscv::hardwareInterrupt() {
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002494:	142027f3          	csrr	a5,scause
    80002498:	fef43423          	sd	a5,-24(s0)
    return scause;
    8000249c:	fe843703          	ld	a4,-24(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    800024a0:	fff00793          	li	a5,-1
    800024a4:	03f79793          	slli	a5,a5,0x3f
    800024a8:	00978793          	addi	a5,a5,9
    800024ac:	00f70a63          	beq	a4,a5,800024c0 <_ZN5Riscv17hardwareInterruptEv+0x3c>
        //prekid konzola
        console_handler();
    }
}
    800024b0:	01813083          	ld	ra,24(sp)
    800024b4:	01013403          	ld	s0,16(sp)
    800024b8:	02010113          	addi	sp,sp,32
    800024bc:	00008067          	ret
        console_handler();
    800024c0:	00006097          	auipc	ra,0x6
    800024c4:	f40080e7          	jalr	-192(ra) # 80008400 <console_handler>
}
    800024c8:	fe9ff06f          	j	800024b0 <_ZN5Riscv17hardwareInterruptEv+0x2c>

00000000800024cc <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00813423          	sd	s0,8(sp)
    800024d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    800024d8:	02000793          	li	a5,32
    800024dc:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(SSTATUS_SPIE);
    //Riscv::mc_sstatus(SSTATUS_SPIE);
    if(TCB::newThrUserMode){
    800024e0:	00009797          	auipc	a5,0x9
    800024e4:	0007b783          	ld	a5,0(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024e8:	0007c783          	lbu	a5,0(a5)
    800024ec:	02078063          	beqz	a5,8000250c <_ZN5Riscv10popSppSpieEv+0x40>
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800024f0:	10000793          	li	a5,256
    800024f4:	1007b073          	csrc	sstatus,a5
        Riscv::mc_sstatus(SSTATUS_SPP);
    }
    else{
        Riscv::ms_sstatus(SSTATUS_SPP);
    }
    __asm__ volatile("csrw sepc, ra");
    800024f8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800024fc:	10200073          	sret
    80002500:	00813403          	ld	s0,8(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    8000250c:	10000793          	li	a5,256
    80002510:	1007a073          	csrs	sstatus,a5
}
    80002514:	fe5ff06f          	j	800024f8 <_ZN5Riscv10popSppSpieEv+0x2c>

0000000080002518 <_ZN3TCBD1Ev>:
                                     arg(arg)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    80002518:	00009797          	auipc	a5,0x9
    8000251c:	de878793          	addi	a5,a5,-536 # 8000b300 <_ZTV3TCB+0x10>
    80002520:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    80002524:	01053503          	ld	a0,16(a0)
    80002528:	02050663          	beqz	a0,80002554 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00113423          	sd	ra,8(sp)
    80002534:	00813023          	sd	s0,0(sp)
    80002538:	01010413          	addi	s0,sp,16
    delete[] stack;
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	91c080e7          	jalr	-1764(ra) # 80001e58 <_ZdaPv>
}
    80002544:	00813083          	ld	ra,8(sp)
    80002548:	00013403          	ld	s0,0(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret
    80002554:	00008067          	ret

0000000080002558 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    80002558:	fe010113          	addi	sp,sp,-32
    8000255c:	00113c23          	sd	ra,24(sp)
    80002560:	00813823          	sd	s0,16(sp)
    80002564:	00913423          	sd	s1,8(sp)
    80002568:	02010413          	addi	s0,sp,32
    8000256c:	00050493          	mv	s1,a0
}
    80002570:	00000097          	auipc	ra,0x0
    80002574:	fa8080e7          	jalr	-88(ra) # 80002518 <_ZN3TCBD1Ev>
    80002578:	00048513          	mv	a0,s1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	8b4080e7          	jalr	-1868(ra) # 80001e30 <_ZdlPv>
    80002584:	01813083          	ld	ra,24(sp)
    80002588:	01013403          	ld	s0,16(sp)
    8000258c:	00813483          	ld	s1,8(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00008067          	ret

0000000080002598 <_ZN3TCB13threadWrapperEv>:
    //delete running niti mozda ovde
    return 0;
}*/


void TCB::threadWrapper() {
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	02010413          	addi	s0,sp,32
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::popSppSpie();
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	f20080e7          	jalr	-224(ra) # 800024cc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800025b4:	00009497          	auipc	s1,0x9
    800025b8:	f9c48493          	addi	s1,s1,-100 # 8000b550 <_ZN3TCB7runningE>
    800025bc:	0004b783          	ld	a5,0(s1)
    800025c0:	0087b703          	ld	a4,8(a5)
    800025c4:	0387b503          	ld	a0,56(a5)
    800025c8:	000700e7          	jalr	a4
    running->setFinished(true);
    800025cc:	0004b783          	ld	a5,0(s1)
        TCB::finished = finished;
    800025d0:	00100713          	li	a4,1
    800025d4:	02e78823          	sb	a4,48(a5)
    //TCB::yield();
    thread_dispatch();
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	060080e7          	jalr	96(ra) # 80001638 <_Z15thread_dispatchv>
}
    800025e0:	01813083          	ld	ra,24(sp)
    800025e4:	01013403          	ld	s0,16(sp)
    800025e8:	00813483          	ld	s1,8(sp)
    800025ec:	02010113          	addi	sp,sp,32
    800025f0:	00008067          	ret

00000000800025f4 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813423          	sd	s0,8(sp)
    800025fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002600:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002604:	00000073          	ecall
}
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002628:	00009497          	auipc	s1,0x9
    8000262c:	f284b483          	ld	s1,-216(s1) # 8000b550 <_ZN3TCB7runningE>
        return finished;
    80002630:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80002634:	02078c63          	beqz	a5,8000266c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	5f0080e7          	jalr	1520(ra) # 80001c28 <_ZN9Scheduler3getEv>
    80002640:	00009797          	auipc	a5,0x9
    80002644:	f0a7b823          	sd	a0,-240(a5) # 8000b550 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002648:	01850593          	addi	a1,a0,24
    8000264c:	01848513          	addi	a0,s1,24
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	df8080e7          	jalr	-520(ra) # 80001448 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002658:	01813083          	ld	ra,24(sp)
    8000265c:	01013403          	ld	s0,16(sp)
    80002660:	00813483          	ld	s1,8(sp)
    80002664:	02010113          	addi	sp,sp,32
    80002668:	00008067          	ret
        Scheduler::put(old);
    8000266c:	00048513          	mv	a0,s1
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	544080e7          	jalr	1348(ra) # 80001bb4 <_ZN9Scheduler3putEP3TCB>
    80002678:	fc1ff06f          	j	80002638 <_ZN3TCB8dispatchEv+0x24>

000000008000267c <_ZN3TCBC1EPFvPvEPmS0_m>:
                                     arg(arg)
    8000267c:	00009797          	auipc	a5,0x9
    80002680:	c8478793          	addi	a5,a5,-892 # 8000b300 <_ZTV3TCB+0x10>
    80002684:	00f53023          	sd	a5,0(a0)
    80002688:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    8000268c:	04058e63          	beqz	a1,800026e8 <_ZN3TCBC1EPFvPvEPmS0_m+0x6c>
                                     arg(arg)
    80002690:	00c53823          	sd	a2,16(a0)
    80002694:	00000797          	auipc	a5,0x0
    80002698:	f0478793          	addi	a5,a5,-252 # 80002598 <_ZN3TCB13threadWrapperEv>
    8000269c:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800026a0:	04060863          	beqz	a2,800026f0 <_ZN3TCBC1EPFvPvEPmS0_m+0x74>
    800026a4:	000087b7          	lui	a5,0x8
    800026a8:	00f60633          	add	a2,a2,a5
                                     arg(arg)
    800026ac:	02c53023          	sd	a2,32(a0)
    800026b0:	02e53423          	sd	a4,40(a0)
    800026b4:	02050823          	sb	zero,48(a0)
    800026b8:	02d53c23          	sd	a3,56(a0)
        if(body!=nullptr) Scheduler::put(this);
    800026bc:	02058e63          	beqz	a1,800026f8 <_ZN3TCBC1EPFvPvEPmS0_m+0x7c>
TCB::TCB(TCB::Body body, uint64* stack, void* arg, uint64 timeSlice): body(body),
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00113423          	sd	ra,8(sp)
    800026c8:	00813023          	sd	s0,0(sp)
    800026cc:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	4e4080e7          	jalr	1252(ra) # 80001bb4 <_ZN9Scheduler3putEP3TCB>
    }
    800026d8:	00813083          	ld	ra,8(sp)
    800026dc:	00013403          	ld	s0,0(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800026e8:	00000613          	li	a2,0
    800026ec:	fa5ff06f          	j	80002690 <_ZN3TCBC1EPFvPvEPmS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800026f0:	00000613          	li	a2,0
    800026f4:	fb9ff06f          	j	800026ac <_ZN3TCBC1EPFvPvEPmS0_m+0x30>
    800026f8:	00008067          	ret

00000000800026fc <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    8000270c:	03f50513          	addi	a0,a0,63
    80002710:	00655513          	srli	a0,a0,0x6
    80002714:	00000097          	auipc	ra,0x0
    80002718:	11c080e7          	jalr	284(ra) # 80002830 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::createThread(TCB::Body body, uint64* stack, void* arg) {
    8000272c:	fd010113          	addi	sp,sp,-48
    80002730:	02113423          	sd	ra,40(sp)
    80002734:	02813023          	sd	s0,32(sp)
    80002738:	00913c23          	sd	s1,24(sp)
    8000273c:	01213823          	sd	s2,16(sp)
    80002740:	01313423          	sd	s3,8(sp)
    80002744:	01413023          	sd	s4,0(sp)
    80002748:	03010413          	addi	s0,sp,48
    8000274c:	00050913          	mv	s2,a0
    80002750:	00058993          	mv	s3,a1
    80002754:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    80002758:	04000513          	li	a0,64
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	fa0080e7          	jalr	-96(ra) # 800026fc <_ZN3TCBnwEm>
    80002764:	00050493          	mv	s1,a0
    80002768:	00200713          	li	a4,2
    8000276c:	000a0693          	mv	a3,s4
    80002770:	00098613          	mv	a2,s3
    80002774:	00090593          	mv	a1,s2
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	f04080e7          	jalr	-252(ra) # 8000267c <_ZN3TCBC1EPFvPvEPmS0_m>
    80002780:	0200006f          	j	800027a0 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x74>
    80002784:	00050913          	mv	s2,a0
    80002788:	00048513          	mv	a0,s1
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	6a4080e7          	jalr	1700(ra) # 80001e30 <_ZdlPv>
    80002794:	00090513          	mv	a0,s2
    80002798:	0000a097          	auipc	ra,0xa
    8000279c:	ef0080e7          	jalr	-272(ra) # 8000c688 <_Unwind_Resume>
}
    800027a0:	00048513          	mv	a0,s1
    800027a4:	02813083          	ld	ra,40(sp)
    800027a8:	02013403          	ld	s0,32(sp)
    800027ac:	01813483          	ld	s1,24(sp)
    800027b0:	01013903          	ld	s2,16(sp)
    800027b4:	00813983          	ld	s3,8(sp)
    800027b8:	00013a03          	ld	s4,0(sp)
    800027bc:	03010113          	addi	sp,sp,48
    800027c0:	00008067          	ret

00000000800027c4 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) {
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00113423          	sd	ra,8(sp)
    800027cc:	00813023          	sd	s0,0(sp)
    800027d0:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	130080e7          	jalr	304(ra) # 80002904 <_ZN15MemoryAllocator4freeEPv>
}
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	00100793          	li	a5,1
    800027fc:	00f50863          	beq	a0,a5,8000280c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002800:	00813403          	ld	s0,8(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret
    8000280c:	000107b7          	lui	a5,0x10
    80002810:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002814:	fef596e3          	bne	a1,a5,80002800 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002818:	00009797          	auipc	a5,0x9
    8000281c:	ca87b783          	ld	a5,-856(a5) # 8000b4c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002820:	0007b783          	ld	a5,0(a5)
    80002824:	00009717          	auipc	a4,0x9
    80002828:	d4f73223          	sd	a5,-700(a4) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    8000282c:	fd5ff06f          	j	80002800 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002830 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    8000283c:	0a050c63          	beqz	a0,800028f4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002840:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002844:	00009797          	auipc	a5,0x9
    80002848:	d247b783          	ld	a5,-732(a5) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    8000284c:	00000613          	li	a2,0
    while(free){
    80002850:	00078e63          	beqz	a5,8000286c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002854:	0007b703          	ld	a4,0(a5)
    80002858:	fff70713          	addi	a4,a4,-1
    8000285c:	00d77863          	bgeu	a4,a3,8000286c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002860:	00078613          	mv	a2,a5
        free=free->next;
    80002864:	0087b783          	ld	a5,8(a5)
    while(free){
    80002868:	fe9ff06f          	j	80002850 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000286c:	08078863          	beqz	a5,800028fc <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002870:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002874:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002878:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000287c:	fff70593          	addi	a1,a4,-1
    80002880:	04d58063          	beq	a1,a3,800028c0 <_ZN15MemoryAllocator5allocEm+0x90>
    80002884:	ffe70593          	addi	a1,a4,-2
    80002888:	02d58c63          	beq	a1,a3,800028c0 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000288c:	40d70733          	sub	a4,a4,a3
    80002890:	fff70713          	addi	a4,a4,-1
    80002894:	00100593          	li	a1,1
    80002898:	02e5fa63          	bgeu	a1,a4,800028cc <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000289c:	00168693          	addi	a3,a3,1
    800028a0:	00669593          	slli	a1,a3,0x6
    800028a4:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    800028a8:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    800028ac:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    800028b0:	02060c63          	beqz	a2,800028e8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    800028b4:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    800028b8:	00d7b023          	sd	a3,0(a5)
    800028bc:	0100006f          	j	800028cc <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    800028c0:	00060e63          	beqz	a2,800028dc <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    800028c4:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    800028c8:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    800028cc:	0007b423          	sd	zero,8(a5)
}
    800028d0:	00813403          	ld	s0,8(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret
            firstFreeSeg=free->next;
    800028dc:	00009697          	auipc	a3,0x9
    800028e0:	c906b623          	sd	a6,-884(a3) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    800028e4:	fe5ff06f          	j	800028c8 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    800028e8:	00009717          	auipc	a4,0x9
    800028ec:	c8b73023          	sd	a1,-896(a4) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    800028f0:	fc9ff06f          	j	800028b8 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    800028f4:	00000513          	li	a0,0
    800028f8:	fd9ff06f          	j	800028d0 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    800028fc:	00078513          	mv	a0,a5
    80002900:	fd1ff06f          	j	800028d0 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080002904 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813423          	sd	s0,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80002910:	14050c63          	beqz	a0,80002a68 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80002914:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	c507b783          	ld	a5,-944(a5) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    80002920:	02078a63          	beqz	a5,80002954 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80002924:	06f77863          	bgeu	a4,a5,80002994 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80002928:	fc053603          	ld	a2,-64(a0)
    8000292c:	00661693          	slli	a3,a2,0x6
    80002930:	00d706b3          	add	a3,a4,a3
    80002934:	02d78a63          	beq	a5,a3,80002968 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80002938:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    8000293c:	00009797          	auipc	a5,0x9
    80002940:	c2e7b623          	sd	a4,-980(a5) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002944:	00000513          	li	a0,0
}
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret
        freeFromAddr->next=nullptr;
    80002954:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002958:	00009797          	auipc	a5,0x9
    8000295c:	c0e7b823          	sd	a4,-1008(a5) # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002960:	00000513          	li	a0,0
    80002964:	fe5ff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002968:	0007b783          	ld	a5,0(a5)
    8000296c:	00f60633          	add	a2,a2,a5
    80002970:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80002974:	00009797          	auipc	a5,0x9
    80002978:	bf478793          	addi	a5,a5,-1036 # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    8000297c:	0007b683          	ld	a3,0(a5)
    80002980:	0086b683          	ld	a3,8(a3)
    80002984:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002988:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000298c:	00000513          	li	a0,0
    80002990:	fb9ff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80002994:	00000693          	li	a3,0
    while(nextFree){
    80002998:	00078a63          	beqz	a5,800029ac <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000299c:	00f76863          	bltu	a4,a5,800029ac <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    800029a0:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    800029a4:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    800029a8:	ff1ff06f          	j	80002998 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    800029ac:	02078a63          	beqz	a5,800029e0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800029b0:	0006b583          	ld	a1,0(a3)
    800029b4:	00659613          	slli	a2,a1,0x6
    800029b8:	00c68633          	add	a2,a3,a2
    800029bc:	04e60c63          	beq	a2,a4,80002a14 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    800029c0:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800029c4:	fc053683          	ld	a3,-64(a0)
    800029c8:	00669613          	slli	a2,a3,0x6
    800029cc:	00c70733          	add	a4,a4,a2
    800029d0:	06f70e63          	beq	a4,a5,80002a4c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    800029d4:	fcf53423          	sd	a5,-56(a0)
    return 0;
    800029d8:	00000513          	li	a0,0
    800029dc:	f6dff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800029e0:	0006b603          	ld	a2,0(a3)
    800029e4:	00661793          	slli	a5,a2,0x6
    800029e8:	00f687b3          	add	a5,a3,a5
    800029ec:	00e78a63          	beq	a5,a4,80002a00 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800029f0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800029f4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800029f8:	00000513          	li	a0,0
    800029fc:	f4dff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80002a00:	fc053783          	ld	a5,-64(a0)
    80002a04:	00f60633          	add	a2,a2,a5
    80002a08:	00c6b023          	sd	a2,0(a3)
            return 0;
    80002a0c:	00000513          	li	a0,0
    80002a10:	f39ff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80002a14:	fc053703          	ld	a4,-64(a0)
    80002a18:	00e585b3          	add	a1,a1,a4
    80002a1c:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002a20:	00659713          	slli	a4,a1,0x6
    80002a24:	00e68733          	add	a4,a3,a4
    80002a28:	00f70663          	beq	a4,a5,80002a34 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    80002a2c:	00000513          	li	a0,0
    80002a30:	f19ff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80002a34:	0007b703          	ld	a4,0(a5)
    80002a38:	00e585b3          	add	a1,a1,a4
    80002a3c:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80002a40:	0087b783          	ld	a5,8(a5)
    80002a44:	00f6b423          	sd	a5,8(a3)
    80002a48:	fe5ff06f          	j	80002a2c <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    80002a4c:	0007b703          	ld	a4,0(a5)
    80002a50:	00e686b3          	add	a3,a3,a4
    80002a54:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80002a58:	0087b783          	ld	a5,8(a5)
    80002a5c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80002a60:	00000513          	li	a0,0
    80002a64:	ee5ff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002a68:	fff00513          	li	a0,-1
    80002a6c:	eddff06f          	j	80002948 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002a70 <_ZN15MemoryAllocator10initializeEv>:
{
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00813423          	sd	s0,8(sp)
    80002a78:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80002a7c:	00009797          	auipc	a5,0x9
    80002a80:	a447b783          	ld	a5,-1468(a5) # 8000b4c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a84:	0007b703          	ld	a4,0(a5)
    80002a88:	00009697          	auipc	a3,0x9
    80002a8c:	ae068693          	addi	a3,a3,-1312 # 8000b568 <_ZN15MemoryAllocator12firstFreeSegE>
    80002a90:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002a94:	00009797          	auipc	a5,0x9
    80002a98:	a5c7b783          	ld	a5,-1444(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a9c:	0007b783          	ld	a5,0(a5)
    80002aa0:	40e787b3          	sub	a5,a5,a4
    80002aa4:	0067d793          	srli	a5,a5,0x6
    80002aa8:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80002aac:	0006b783          	ld	a5,0(a3)
    80002ab0:	0007b423          	sd	zero,8(a5)
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00008067          	ret

0000000080002ac0 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00113423          	sd	ra,8(sp)
    80002ac8:	00813023          	sd	s0,0(sp)
    80002acc:	01010413          	addi	s0,sp,16
    80002ad0:	000105b7          	lui	a1,0x10
    80002ad4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ad8:	00100513          	li	a0,1
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	d10080e7          	jalr	-752(ra) # 800027ec <_Z41__static_initialization_and_destruction_0ii>
    80002ae4:	00813083          	ld	ra,8(sp)
    80002ae8:	00013403          	ld	s0,0(sp)
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <_Z9prtStringPKc>:
#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/riscv.hpp"


void prtString(char const *string){
    80002af4:	fd010113          	addi	sp,sp,-48
    80002af8:	02113423          	sd	ra,40(sp)
    80002afc:	02813023          	sd	s0,32(sp)
    80002b00:	00913c23          	sd	s1,24(sp)
    80002b04:	01213823          	sd	s2,16(sp)
    80002b08:	03010413          	addi	s0,sp,48
    80002b0c:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002b10:	100027f3          	csrr	a5,sstatus
    80002b14:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002b18:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002b1c:	00200793          	li	a5,2
    80002b20:	1007b073          	csrc	sstatus,a5
    uint64 sstatus=Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string!='\0'){
    80002b24:	0004c503          	lbu	a0,0(s1)
    80002b28:	00050a63          	beqz	a0,80002b3c <_Z9prtStringPKc+0x48>
        __putc(*string);
    80002b2c:	00006097          	auipc	ra,0x6
    80002b30:	860080e7          	jalr	-1952(ra) # 8000838c <__putc>
        string++;
    80002b34:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002b38:	fedff06f          	j	80002b24 <_Z9prtStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002b3c:	0009091b          	sext.w	s2,s2
    80002b40:	00297913          	andi	s2,s2,2
    80002b44:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002b48:	10092073          	csrs	sstatus,s2
}
    80002b4c:	02813083          	ld	ra,40(sp)
    80002b50:	02013403          	ld	s0,32(sp)
    80002b54:	01813483          	ld	s1,24(sp)
    80002b58:	01013903          	ld	s2,16(sp)
    80002b5c:	03010113          	addi	sp,sp,48
    80002b60:	00008067          	ret

0000000080002b64 <_Z6prtIntm>:
void prtInt(uint64 integer){
    80002b64:	fc010113          	addi	sp,sp,-64
    80002b68:	02113c23          	sd	ra,56(sp)
    80002b6c:	02813823          	sd	s0,48(sp)
    80002b70:	02913423          	sd	s1,40(sp)
    80002b74:	03213023          	sd	s2,32(sp)
    80002b78:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002b7c:	100027f3          	csrr	a5,sstatus
    80002b80:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b84:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002b88:	00200793          	li	a5,2
    80002b8c:	1007b073          	csrc	sstatus,a5
    if(integer<0){
        neg=1;
        x=-integer;
    }else
    {
        x=integer;
    80002b90:	0005051b          	sext.w	a0,a0
    }
    i=0;
    80002b94:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    80002b98:	00a00613          	li	a2,10
    80002b9c:	02c5773b          	remuw	a4,a0,a2
    80002ba0:	02071693          	slli	a3,a4,0x20
    80002ba4:	0206d693          	srli	a3,a3,0x20
    80002ba8:	00006717          	auipc	a4,0x6
    80002bac:	54070713          	addi	a4,a4,1344 # 800090e8 <_ZZ6prtIntmE6digits>
    80002bb0:	00d70733          	add	a4,a4,a3
    80002bb4:	00074703          	lbu	a4,0(a4)
    80002bb8:	fe040693          	addi	a3,s0,-32
    80002bbc:	009687b3          	add	a5,a3,s1
    80002bc0:	0014849b          	addiw	s1,s1,1
    80002bc4:	fee78823          	sb	a4,-16(a5)

    }while((x/=10)!=0);
    80002bc8:	0005071b          	sext.w	a4,a0
    80002bcc:	02c5553b          	divuw	a0,a0,a2
    80002bd0:	00900793          	li	a5,9
    80002bd4:	fce7e2e3          	bltu	a5,a4,80002b98 <_Z6prtIntm+0x34>
    if(neg){
        buf[i++]='-';
    }
    while(--i>=0)
    80002bd8:	fff4849b          	addiw	s1,s1,-1
    80002bdc:	0004ce63          	bltz	s1,80002bf8 <_Z6prtIntm+0x94>
        __putc(buf[i]);
    80002be0:	fe040793          	addi	a5,s0,-32
    80002be4:	009787b3          	add	a5,a5,s1
    80002be8:	ff07c503          	lbu	a0,-16(a5)
    80002bec:	00005097          	auipc	ra,0x5
    80002bf0:	7a0080e7          	jalr	1952(ra) # 8000838c <__putc>
    80002bf4:	fe5ff06f          	j	80002bd8 <_Z6prtIntm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    80002bf8:	0009091b          	sext.w	s2,s2
    80002bfc:	00297913          	andi	s2,s2,2
    80002c00:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002c04:	10092073          	csrs	sstatus,s2
}
    80002c08:	03813083          	ld	ra,56(sp)
    80002c0c:	03013403          	ld	s0,48(sp)
    80002c10:	02813483          	ld	s1,40(sp)
    80002c14:	02013903          	ld	s2,32(sp)
    80002c18:	04010113          	addi	sp,sp,64
    80002c1c:	00008067          	ret

0000000080002c20 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002c20:	fe010113          	addi	sp,sp,-32
    80002c24:	00113c23          	sd	ra,24(sp)
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00913423          	sd	s1,8(sp)
    80002c30:	01213023          	sd	s2,0(sp)
    80002c34:	02010413          	addi	s0,sp,32
    80002c38:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002c3c:	00000913          	li	s2,0
    80002c40:	00c0006f          	j	80002c4c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	9f4080e7          	jalr	-1548(ra) # 80001638 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	aa0080e7          	jalr	-1376(ra) # 800016ec <_Z4getcv>
    80002c54:	0005059b          	sext.w	a1,a0
    80002c58:	01b00793          	li	a5,27
    80002c5c:	02f58a63          	beq	a1,a5,80002c90 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002c60:	0084b503          	ld	a0,8(s1)
    80002c64:	00003097          	auipc	ra,0x3
    80002c68:	3e0080e7          	jalr	992(ra) # 80006044 <_ZN6Buffer3putEi>
        i++;
    80002c6c:	0019071b          	addiw	a4,s2,1
    80002c70:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c74:	0004a683          	lw	a3,0(s1)
    80002c78:	0026979b          	slliw	a5,a3,0x2
    80002c7c:	00d787bb          	addw	a5,a5,a3
    80002c80:	0017979b          	slliw	a5,a5,0x1
    80002c84:	02f767bb          	remw	a5,a4,a5
    80002c88:	fc0792e3          	bnez	a5,80002c4c <_ZL16producerKeyboardPv+0x2c>
    80002c8c:	fb9ff06f          	j	80002c44 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002c90:	00100793          	li	a5,1
    80002c94:	00009717          	auipc	a4,0x9
    80002c98:	8cf72e23          	sw	a5,-1828(a4) # 8000b570 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c9c:	02100593          	li	a1,33
    80002ca0:	0084b503          	ld	a0,8(s1)
    80002ca4:	00003097          	auipc	ra,0x3
    80002ca8:	3a0080e7          	jalr	928(ra) # 80006044 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002cac:	0104b503          	ld	a0,16(s1)
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	a20080e7          	jalr	-1504(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002cb8:	01813083          	ld	ra,24(sp)
    80002cbc:	01013403          	ld	s0,16(sp)
    80002cc0:	00813483          	ld	s1,8(sp)
    80002cc4:	00013903          	ld	s2,0(sp)
    80002cc8:	02010113          	addi	sp,sp,32
    80002ccc:	00008067          	ret

0000000080002cd0 <_ZL8producerPv>:

static void producer(void *arg) {
    80002cd0:	fe010113          	addi	sp,sp,-32
    80002cd4:	00113c23          	sd	ra,24(sp)
    80002cd8:	00813823          	sd	s0,16(sp)
    80002cdc:	00913423          	sd	s1,8(sp)
    80002ce0:	01213023          	sd	s2,0(sp)
    80002ce4:	02010413          	addi	s0,sp,32
    80002ce8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002cec:	00000913          	li	s2,0
    80002cf0:	00c0006f          	j	80002cfc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	944080e7          	jalr	-1724(ra) # 80001638 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002cfc:	00009797          	auipc	a5,0x9
    80002d00:	8747a783          	lw	a5,-1932(a5) # 8000b570 <_ZL9threadEnd>
    80002d04:	02079e63          	bnez	a5,80002d40 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002d08:	0004a583          	lw	a1,0(s1)
    80002d0c:	0305859b          	addiw	a1,a1,48
    80002d10:	0084b503          	ld	a0,8(s1)
    80002d14:	00003097          	auipc	ra,0x3
    80002d18:	330080e7          	jalr	816(ra) # 80006044 <_ZN6Buffer3putEi>
        i++;
    80002d1c:	0019071b          	addiw	a4,s2,1
    80002d20:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d24:	0004a683          	lw	a3,0(s1)
    80002d28:	0026979b          	slliw	a5,a3,0x2
    80002d2c:	00d787bb          	addw	a5,a5,a3
    80002d30:	0017979b          	slliw	a5,a5,0x1
    80002d34:	02f767bb          	remw	a5,a4,a5
    80002d38:	fc0792e3          	bnez	a5,80002cfc <_ZL8producerPv+0x2c>
    80002d3c:	fb9ff06f          	j	80002cf4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002d40:	0104b503          	ld	a0,16(s1)
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	98c080e7          	jalr	-1652(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002d4c:	01813083          	ld	ra,24(sp)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	00013903          	ld	s2,0(sp)
    80002d5c:	02010113          	addi	sp,sp,32
    80002d60:	00008067          	ret

0000000080002d64 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002d64:	fd010113          	addi	sp,sp,-48
    80002d68:	02113423          	sd	ra,40(sp)
    80002d6c:	02813023          	sd	s0,32(sp)
    80002d70:	00913c23          	sd	s1,24(sp)
    80002d74:	01213823          	sd	s2,16(sp)
    80002d78:	01313423          	sd	s3,8(sp)
    80002d7c:	03010413          	addi	s0,sp,48
    80002d80:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d84:	00000993          	li	s3,0
    80002d88:	01c0006f          	j	80002da4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	8ac080e7          	jalr	-1876(ra) # 80001638 <_Z15thread_dispatchv>
    80002d94:	0500006f          	j	80002de4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002d98:	00a00513          	li	a0,10
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	98c080e7          	jalr	-1652(ra) # 80001728 <_Z4putcc>
    while (!threadEnd) {
    80002da4:	00008797          	auipc	a5,0x8
    80002da8:	7cc7a783          	lw	a5,1996(a5) # 8000b570 <_ZL9threadEnd>
    80002dac:	06079063          	bnez	a5,80002e0c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002db0:	00893503          	ld	a0,8(s2)
    80002db4:	00003097          	auipc	ra,0x3
    80002db8:	320080e7          	jalr	800(ra) # 800060d4 <_ZN6Buffer3getEv>
        i++;
    80002dbc:	0019849b          	addiw	s1,s3,1
    80002dc0:	0004899b          	sext.w	s3,s1
        putc(key);
    80002dc4:	0ff57513          	andi	a0,a0,255
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	960080e7          	jalr	-1696(ra) # 80001728 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002dd0:	00092703          	lw	a4,0(s2)
    80002dd4:	0027179b          	slliw	a5,a4,0x2
    80002dd8:	00e787bb          	addw	a5,a5,a4
    80002ddc:	02f4e7bb          	remw	a5,s1,a5
    80002de0:	fa0786e3          	beqz	a5,80002d8c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002de4:	05000793          	li	a5,80
    80002de8:	02f4e4bb          	remw	s1,s1,a5
    80002dec:	fa049ce3          	bnez	s1,80002da4 <_ZL8consumerPv+0x40>
    80002df0:	fa9ff06f          	j	80002d98 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002df4:	00893503          	ld	a0,8(s2)
    80002df8:	00003097          	auipc	ra,0x3
    80002dfc:	2dc080e7          	jalr	732(ra) # 800060d4 <_ZN6Buffer3getEv>
        putc(key);
    80002e00:	0ff57513          	andi	a0,a0,255
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	924080e7          	jalr	-1756(ra) # 80001728 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002e0c:	00893503          	ld	a0,8(s2)
    80002e10:	00003097          	auipc	ra,0x3
    80002e14:	350080e7          	jalr	848(ra) # 80006160 <_ZN6Buffer6getCntEv>
    80002e18:	fca04ee3          	bgtz	a0,80002df4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002e1c:	01093503          	ld	a0,16(s2)
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	8b0080e7          	jalr	-1872(ra) # 800016d0 <_Z10sem_signalP4_sem>
}
    80002e28:	02813083          	ld	ra,40(sp)
    80002e2c:	02013403          	ld	s0,32(sp)
    80002e30:	01813483          	ld	s1,24(sp)
    80002e34:	01013903          	ld	s2,16(sp)
    80002e38:	00813983          	ld	s3,8(sp)
    80002e3c:	03010113          	addi	sp,sp,48
    80002e40:	00008067          	ret

0000000080002e44 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002e44:	f9010113          	addi	sp,sp,-112
    80002e48:	06113423          	sd	ra,104(sp)
    80002e4c:	06813023          	sd	s0,96(sp)
    80002e50:	04913c23          	sd	s1,88(sp)
    80002e54:	05213823          	sd	s2,80(sp)
    80002e58:	05313423          	sd	s3,72(sp)
    80002e5c:	05413023          	sd	s4,64(sp)
    80002e60:	03513c23          	sd	s5,56(sp)
    80002e64:	03613823          	sd	s6,48(sp)
    80002e68:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002e6c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002e70:	00006517          	auipc	a0,0x6
    80002e74:	28850513          	addi	a0,a0,648 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	220080e7          	jalr	544(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80002e80:	01e00593          	li	a1,30
    80002e84:	fa040493          	addi	s1,s0,-96
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00002097          	auipc	ra,0x2
    80002e90:	294080e7          	jalr	660(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002e94:	00048513          	mv	a0,s1
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	360080e7          	jalr	864(ra) # 800051f8 <_Z11stringToIntPKc>
    80002ea0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002ea4:	00006517          	auipc	a0,0x6
    80002ea8:	27450513          	addi	a0,a0,628 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	1ec080e7          	jalr	492(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80002eb4:	01e00593          	li	a1,30
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00002097          	auipc	ra,0x2
    80002ec0:	264080e7          	jalr	612(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80002ec4:	00048513          	mv	a0,s1
    80002ec8:	00002097          	auipc	ra,0x2
    80002ecc:	330080e7          	jalr	816(ra) # 800051f8 <_Z11stringToIntPKc>
    80002ed0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002ed4:	00006517          	auipc	a0,0x6
    80002ed8:	26450513          	addi	a0,a0,612 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80002edc:	00002097          	auipc	ra,0x2
    80002ee0:	1bc080e7          	jalr	444(ra) # 80005098 <_Z11printStringPKc>
    80002ee4:	00000613          	li	a2,0
    80002ee8:	00a00593          	li	a1,10
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	00002097          	auipc	ra,0x2
    80002ef4:	358080e7          	jalr	856(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002ef8:	00006517          	auipc	a0,0x6
    80002efc:	25850513          	addi	a0,a0,600 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80002f00:	00002097          	auipc	ra,0x2
    80002f04:	198080e7          	jalr	408(ra) # 80005098 <_Z11printStringPKc>
    80002f08:	00000613          	li	a2,0
    80002f0c:	00a00593          	li	a1,10
    80002f10:	00048513          	mv	a0,s1
    80002f14:	00002097          	auipc	ra,0x2
    80002f18:	334080e7          	jalr	820(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80002f1c:	00006517          	auipc	a0,0x6
    80002f20:	24c50513          	addi	a0,a0,588 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80002f24:	00002097          	auipc	ra,0x2
    80002f28:	174080e7          	jalr	372(ra) # 80005098 <_Z11printStringPKc>
    if(threadNum > n) {
    80002f2c:	0324c463          	blt	s1,s2,80002f54 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002f30:	03205c63          	blez	s2,80002f68 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002f34:	03800513          	li	a0,56
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	ea8080e7          	jalr	-344(ra) # 80001de0 <_Znwm>
    80002f40:	00050a13          	mv	s4,a0
    80002f44:	00048593          	mv	a1,s1
    80002f48:	00003097          	auipc	ra,0x3
    80002f4c:	060080e7          	jalr	96(ra) # 80005fa8 <_ZN6BufferC1Ei>
    80002f50:	0300006f          	j	80002f80 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002f54:	00006517          	auipc	a0,0x6
    80002f58:	21c50513          	addi	a0,a0,540 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	13c080e7          	jalr	316(ra) # 80005098 <_Z11printStringPKc>
        return;
    80002f64:	0140006f          	j	80002f78 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002f68:	00006517          	auipc	a0,0x6
    80002f6c:	24850513          	addi	a0,a0,584 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80002f70:	00002097          	auipc	ra,0x2
    80002f74:	128080e7          	jalr	296(ra) # 80005098 <_Z11printStringPKc>
        return;
    80002f78:	000b0113          	mv	sp,s6
    80002f7c:	1500006f          	j	800030cc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002f80:	00000593          	li	a1,0
    80002f84:	00008517          	auipc	a0,0x8
    80002f88:	5f450513          	addi	a0,a0,1524 # 8000b578 <_ZL10waitForAll>
    80002f8c:	ffffe097          	auipc	ra,0xffffe
    80002f90:	6f0080e7          	jalr	1776(ra) # 8000167c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002f94:	00391793          	slli	a5,s2,0x3
    80002f98:	00f78793          	addi	a5,a5,15
    80002f9c:	ff07f793          	andi	a5,a5,-16
    80002fa0:	40f10133          	sub	sp,sp,a5
    80002fa4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002fa8:	0019071b          	addiw	a4,s2,1
    80002fac:	00171793          	slli	a5,a4,0x1
    80002fb0:	00e787b3          	add	a5,a5,a4
    80002fb4:	00379793          	slli	a5,a5,0x3
    80002fb8:	00f78793          	addi	a5,a5,15
    80002fbc:	ff07f793          	andi	a5,a5,-16
    80002fc0:	40f10133          	sub	sp,sp,a5
    80002fc4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002fc8:	00191613          	slli	a2,s2,0x1
    80002fcc:	012607b3          	add	a5,a2,s2
    80002fd0:	00379793          	slli	a5,a5,0x3
    80002fd4:	00f987b3          	add	a5,s3,a5
    80002fd8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002fdc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002fe0:	00008717          	auipc	a4,0x8
    80002fe4:	59873703          	ld	a4,1432(a4) # 8000b578 <_ZL10waitForAll>
    80002fe8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002fec:	00078613          	mv	a2,a5
    80002ff0:	00000597          	auipc	a1,0x0
    80002ff4:	d7458593          	addi	a1,a1,-652 # 80002d64 <_ZL8consumerPv>
    80002ff8:	f9840513          	addi	a0,s0,-104
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	538080e7          	jalr	1336(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003004:	00000493          	li	s1,0
    80003008:	0280006f          	j	80003030 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000300c:	00000597          	auipc	a1,0x0
    80003010:	c1458593          	addi	a1,a1,-1004 # 80002c20 <_ZL16producerKeyboardPv>
                      data + i);
    80003014:	00179613          	slli	a2,a5,0x1
    80003018:	00f60633          	add	a2,a2,a5
    8000301c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003020:	00c98633          	add	a2,s3,a2
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	510080e7          	jalr	1296(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000302c:	0014849b          	addiw	s1,s1,1
    80003030:	0524d263          	bge	s1,s2,80003074 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003034:	00149793          	slli	a5,s1,0x1
    80003038:	009787b3          	add	a5,a5,s1
    8000303c:	00379793          	slli	a5,a5,0x3
    80003040:	00f987b3          	add	a5,s3,a5
    80003044:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003048:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000304c:	00008717          	auipc	a4,0x8
    80003050:	52c73703          	ld	a4,1324(a4) # 8000b578 <_ZL10waitForAll>
    80003054:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003058:	00048793          	mv	a5,s1
    8000305c:	00349513          	slli	a0,s1,0x3
    80003060:	00aa8533          	add	a0,s5,a0
    80003064:	fa9054e3          	blez	s1,8000300c <_Z22producerConsumer_C_APIv+0x1c8>
    80003068:	00000597          	auipc	a1,0x0
    8000306c:	c6858593          	addi	a1,a1,-920 # 80002cd0 <_ZL8producerPv>
    80003070:	fa5ff06f          	j	80003014 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003074:	ffffe097          	auipc	ra,0xffffe
    80003078:	5c4080e7          	jalr	1476(ra) # 80001638 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000307c:	00000493          	li	s1,0
    80003080:	00994e63          	blt	s2,s1,8000309c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003084:	00008517          	auipc	a0,0x8
    80003088:	4f453503          	ld	a0,1268(a0) # 8000b578 <_ZL10waitForAll>
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	628080e7          	jalr	1576(ra) # 800016b4 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003094:	0014849b          	addiw	s1,s1,1
    80003098:	fe9ff06f          	j	80003080 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000309c:	00008517          	auipc	a0,0x8
    800030a0:	4dc53503          	ld	a0,1244(a0) # 8000b578 <_ZL10waitForAll>
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	5f4080e7          	jalr	1524(ra) # 80001698 <_Z9sem_closeP4_sem>
    delete buffer;
    800030ac:	000a0e63          	beqz	s4,800030c8 <_Z22producerConsumer_C_APIv+0x284>
    800030b0:	000a0513          	mv	a0,s4
    800030b4:	00003097          	auipc	ra,0x3
    800030b8:	134080e7          	jalr	308(ra) # 800061e8 <_ZN6BufferD1Ev>
    800030bc:	000a0513          	mv	a0,s4
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	d70080e7          	jalr	-656(ra) # 80001e30 <_ZdlPv>
    800030c8:	000b0113          	mv	sp,s6

}
    800030cc:	f9040113          	addi	sp,s0,-112
    800030d0:	06813083          	ld	ra,104(sp)
    800030d4:	06013403          	ld	s0,96(sp)
    800030d8:	05813483          	ld	s1,88(sp)
    800030dc:	05013903          	ld	s2,80(sp)
    800030e0:	04813983          	ld	s3,72(sp)
    800030e4:	04013a03          	ld	s4,64(sp)
    800030e8:	03813a83          	ld	s5,56(sp)
    800030ec:	03013b03          	ld	s6,48(sp)
    800030f0:	07010113          	addi	sp,sp,112
    800030f4:	00008067          	ret
    800030f8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800030fc:	000a0513          	mv	a0,s4
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	d30080e7          	jalr	-720(ra) # 80001e30 <_ZdlPv>
    80003108:	00048513          	mv	a0,s1
    8000310c:	00009097          	auipc	ra,0x9
    80003110:	57c080e7          	jalr	1404(ra) # 8000c688 <_Unwind_Resume>

0000000080003114 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003114:	fe010113          	addi	sp,sp,-32
    80003118:	00113c23          	sd	ra,24(sp)
    8000311c:	00813823          	sd	s0,16(sp)
    80003120:	00913423          	sd	s1,8(sp)
    80003124:	01213023          	sd	s2,0(sp)
    80003128:	02010413          	addi	s0,sp,32
    8000312c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003130:	00100793          	li	a5,1
    80003134:	02a7f863          	bgeu	a5,a0,80003164 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003138:	00a00793          	li	a5,10
    8000313c:	02f577b3          	remu	a5,a0,a5
    80003140:	02078e63          	beqz	a5,8000317c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003144:	fff48513          	addi	a0,s1,-1
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	fcc080e7          	jalr	-52(ra) # 80003114 <_ZL9fibonaccim>
    80003150:	00050913          	mv	s2,a0
    80003154:	ffe48513          	addi	a0,s1,-2
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	fbc080e7          	jalr	-68(ra) # 80003114 <_ZL9fibonaccim>
    80003160:	00a90533          	add	a0,s2,a0
}
    80003164:	01813083          	ld	ra,24(sp)
    80003168:	01013403          	ld	s0,16(sp)
    8000316c:	00813483          	ld	s1,8(sp)
    80003170:	00013903          	ld	s2,0(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	4bc080e7          	jalr	1212(ra) # 80001638 <_Z15thread_dispatchv>
    80003184:	fc1ff06f          	j	80003144 <_ZL9fibonaccim+0x30>

0000000080003188 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	01213023          	sd	s2,0(sp)
    8000319c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800031a0:	00000913          	li	s2,0
    800031a4:	0380006f          	j	800031dc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	490080e7          	jalr	1168(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031b0:	00148493          	addi	s1,s1,1
    800031b4:	000027b7          	lui	a5,0x2
    800031b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031bc:	0097ee63          	bltu	a5,s1,800031d8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031c0:	00000713          	li	a4,0
    800031c4:	000077b7          	lui	a5,0x7
    800031c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031cc:	fce7eee3          	bltu	a5,a4,800031a8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800031d0:	00170713          	addi	a4,a4,1
    800031d4:	ff1ff06f          	j	800031c4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800031d8:	00190913          	addi	s2,s2,1
    800031dc:	00900793          	li	a5,9
    800031e0:	0527e063          	bltu	a5,s2,80003220 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800031e4:	00006517          	auipc	a0,0x6
    800031e8:	ec450513          	addi	a0,a0,-316 # 800090a8 <CONSOLE_STATUS+0x98>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	eac080e7          	jalr	-340(ra) # 80005098 <_Z11printStringPKc>
    800031f4:	00000613          	li	a2,0
    800031f8:	00a00593          	li	a1,10
    800031fc:	0009051b          	sext.w	a0,s2
    80003200:	00002097          	auipc	ra,0x2
    80003204:	048080e7          	jalr	72(ra) # 80005248 <_Z8printIntiii>
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	f2850513          	addi	a0,a0,-216 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	e88080e7          	jalr	-376(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003218:	00000493          	li	s1,0
    8000321c:	f99ff06f          	j	800031b4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003220:	00006517          	auipc	a0,0x6
    80003224:	fc050513          	addi	a0,a0,-64 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	e70080e7          	jalr	-400(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    80003230:	00100793          	li	a5,1
    80003234:	00008717          	auipc	a4,0x8
    80003238:	34f70623          	sb	a5,844(a4) # 8000b580 <_ZL9finishedA>
}
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	00013903          	ld	s2,0(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret

0000000080003254 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003254:	fe010113          	addi	sp,sp,-32
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00913423          	sd	s1,8(sp)
    80003264:	01213023          	sd	s2,0(sp)
    80003268:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000326c:	00000913          	li	s2,0
    80003270:	0380006f          	j	800032a8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	3c4080e7          	jalr	964(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000327c:	00148493          	addi	s1,s1,1
    80003280:	000027b7          	lui	a5,0x2
    80003284:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003288:	0097ee63          	bltu	a5,s1,800032a4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000328c:	00000713          	li	a4,0
    80003290:	000077b7          	lui	a5,0x7
    80003294:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003298:	fce7eee3          	bltu	a5,a4,80003274 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000329c:	00170713          	addi	a4,a4,1
    800032a0:	ff1ff06f          	j	80003290 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800032a4:	00190913          	addi	s2,s2,1
    800032a8:	00f00793          	li	a5,15
    800032ac:	0527e063          	bltu	a5,s2,800032ec <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	e1850513          	addi	a0,a0,-488 # 800090c8 <CONSOLE_STATUS+0xb8>
    800032b8:	00002097          	auipc	ra,0x2
    800032bc:	de0080e7          	jalr	-544(ra) # 80005098 <_Z11printStringPKc>
    800032c0:	00000613          	li	a2,0
    800032c4:	00a00593          	li	a1,10
    800032c8:	0009051b          	sext.w	a0,s2
    800032cc:	00002097          	auipc	ra,0x2
    800032d0:	f7c080e7          	jalr	-132(ra) # 80005248 <_Z8printIntiii>
    800032d4:	00006517          	auipc	a0,0x6
    800032d8:	e5c50513          	addi	a0,a0,-420 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800032dc:	00002097          	auipc	ra,0x2
    800032e0:	dbc080e7          	jalr	-580(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800032e4:	00000493          	li	s1,0
    800032e8:	f99ff06f          	j	80003280 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800032ec:	00006517          	auipc	a0,0x6
    800032f0:	f0450513          	addi	a0,a0,-252 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	da4080e7          	jalr	-604(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    800032fc:	00100793          	li	a5,1
    80003300:	00008717          	auipc	a4,0x8
    80003304:	28f700a3          	sb	a5,641(a4) # 8000b581 <_ZL9finishedB>
    thread_dispatch();
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	330080e7          	jalr	816(ra) # 80001638 <_Z15thread_dispatchv>
}
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00813483          	ld	s1,8(sp)
    8000331c:	00013903          	ld	s2,0(sp)
    80003320:	02010113          	addi	sp,sp,32
    80003324:	00008067          	ret

0000000080003328 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003328:	fe010113          	addi	sp,sp,-32
    8000332c:	00113c23          	sd	ra,24(sp)
    80003330:	00813823          	sd	s0,16(sp)
    80003334:	00913423          	sd	s1,8(sp)
    80003338:	01213023          	sd	s2,0(sp)
    8000333c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003340:	00000493          	li	s1,0
    80003344:	0400006f          	j	80003384 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003348:	00006517          	auipc	a0,0x6
    8000334c:	cd850513          	addi	a0,a0,-808 # 80009020 <CONSOLE_STATUS+0x10>
    80003350:	00002097          	auipc	ra,0x2
    80003354:	d48080e7          	jalr	-696(ra) # 80005098 <_Z11printStringPKc>
    80003358:	00000613          	li	a2,0
    8000335c:	00a00593          	li	a1,10
    80003360:	00048513          	mv	a0,s1
    80003364:	00002097          	auipc	ra,0x2
    80003368:	ee4080e7          	jalr	-284(ra) # 80005248 <_Z8printIntiii>
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	dc450513          	addi	a0,a0,-572 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	d24080e7          	jalr	-732(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000337c:	0014849b          	addiw	s1,s1,1
    80003380:	0ff4f493          	andi	s1,s1,255
    80003384:	00200793          	li	a5,2
    80003388:	fc97f0e3          	bgeu	a5,s1,80003348 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000338c:	00006517          	auipc	a0,0x6
    80003390:	e7450513          	addi	a0,a0,-396 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    80003394:	00002097          	auipc	ra,0x2
    80003398:	d04080e7          	jalr	-764(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000339c:	00700313          	li	t1,7
    thread_dispatch();
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	298080e7          	jalr	664(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800033a8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800033ac:	00006517          	auipc	a0,0x6
    800033b0:	c8c50513          	addi	a0,a0,-884 # 80009038 <CONSOLE_STATUS+0x28>
    800033b4:	00002097          	auipc	ra,0x2
    800033b8:	ce4080e7          	jalr	-796(ra) # 80005098 <_Z11printStringPKc>
    800033bc:	00000613          	li	a2,0
    800033c0:	00a00593          	li	a1,10
    800033c4:	0009051b          	sext.w	a0,s2
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	e80080e7          	jalr	-384(ra) # 80005248 <_Z8printIntiii>
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	d6050513          	addi	a0,a0,-672 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	cc0080e7          	jalr	-832(ra) # 80005098 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800033e0:	00c00513          	li	a0,12
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	d30080e7          	jalr	-720(ra) # 80003114 <_ZL9fibonaccim>
    800033ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	c5050513          	addi	a0,a0,-944 # 80009040 <CONSOLE_STATUS+0x30>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	ca0080e7          	jalr	-864(ra) # 80005098 <_Z11printStringPKc>
    80003400:	00000613          	li	a2,0
    80003404:	00a00593          	li	a1,10
    80003408:	0009051b          	sext.w	a0,s2
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	e3c080e7          	jalr	-452(ra) # 80005248 <_Z8printIntiii>
    80003414:	00006517          	auipc	a0,0x6
    80003418:	d1c50513          	addi	a0,a0,-740 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	c7c080e7          	jalr	-900(ra) # 80005098 <_Z11printStringPKc>
    80003424:	0400006f          	j	80003464 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	bf850513          	addi	a0,a0,-1032 # 80009020 <CONSOLE_STATUS+0x10>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	c68080e7          	jalr	-920(ra) # 80005098 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	00048513          	mv	a0,s1
    80003444:	00002097          	auipc	ra,0x2
    80003448:	e04080e7          	jalr	-508(ra) # 80005248 <_Z8printIntiii>
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	ce450513          	addi	a0,a0,-796 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	c44080e7          	jalr	-956(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000345c:	0014849b          	addiw	s1,s1,1
    80003460:	0ff4f493          	andi	s1,s1,255
    80003464:	00500793          	li	a5,5
    80003468:	fc97f0e3          	bgeu	a5,s1,80003428 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	da450513          	addi	a0,a0,-604 # 80009210 <_ZZ6prtIntmE6digits+0x128>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	c24080e7          	jalr	-988(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    8000347c:	00100793          	li	a5,1
    80003480:	00008717          	auipc	a4,0x8
    80003484:	10f70123          	sb	a5,258(a4) # 8000b582 <_ZL9finishedC>
    thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	1b0080e7          	jalr	432(ra) # 80001638 <_Z15thread_dispatchv>
}
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00813483          	ld	s1,8(sp)
    8000349c:	00013903          	ld	s2,0(sp)
    800034a0:	02010113          	addi	sp,sp,32
    800034a4:	00008067          	ret

00000000800034a8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800034a8:	fe010113          	addi	sp,sp,-32
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	01213023          	sd	s2,0(sp)
    800034bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800034c0:	00a00493          	li	s1,10
    800034c4:	0400006f          	j	80003504 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800034c8:	00006517          	auipc	a0,0x6
    800034cc:	ba050513          	addi	a0,a0,-1120 # 80009068 <CONSOLE_STATUS+0x58>
    800034d0:	00002097          	auipc	ra,0x2
    800034d4:	bc8080e7          	jalr	-1080(ra) # 80005098 <_Z11printStringPKc>
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	d64080e7          	jalr	-668(ra) # 80005248 <_Z8printIntiii>
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	c4450513          	addi	a0,a0,-956 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	ba4080e7          	jalr	-1116(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800034fc:	0014849b          	addiw	s1,s1,1
    80003500:	0ff4f493          	andi	s1,s1,255
    80003504:	00c00793          	li	a5,12
    80003508:	fc97f0e3          	bgeu	a5,s1,800034c8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	d1450513          	addi	a0,a0,-748 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	b84080e7          	jalr	-1148(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000351c:	00500313          	li	t1,5
    thread_dispatch();
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	118080e7          	jalr	280(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003528:	01000513          	li	a0,16
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	be8080e7          	jalr	-1048(ra) # 80003114 <_ZL9fibonaccim>
    80003534:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	b4850513          	addi	a0,a0,-1208 # 80009080 <CONSOLE_STATUS+0x70>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	b58080e7          	jalr	-1192(ra) # 80005098 <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	0009051b          	sext.w	a0,s2
    80003554:	00002097          	auipc	ra,0x2
    80003558:	cf4080e7          	jalr	-780(ra) # 80005248 <_Z8printIntiii>
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	bd450513          	addi	a0,a0,-1068 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	b34080e7          	jalr	-1228(ra) # 80005098 <_Z11printStringPKc>
    8000356c:	0400006f          	j	800035ac <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	af850513          	addi	a0,a0,-1288 # 80009068 <CONSOLE_STATUS+0x58>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	b20080e7          	jalr	-1248(ra) # 80005098 <_Z11printStringPKc>
    80003580:	00000613          	li	a2,0
    80003584:	00a00593          	li	a1,10
    80003588:	00048513          	mv	a0,s1
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	cbc080e7          	jalr	-836(ra) # 80005248 <_Z8printIntiii>
    80003594:	00006517          	auipc	a0,0x6
    80003598:	b9c50513          	addi	a0,a0,-1124 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000359c:	00002097          	auipc	ra,0x2
    800035a0:	afc080e7          	jalr	-1284(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800035a4:	0014849b          	addiw	s1,s1,1
    800035a8:	0ff4f493          	andi	s1,s1,255
    800035ac:	00f00793          	li	a5,15
    800035b0:	fc97f0e3          	bgeu	a5,s1,80003570 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	c7c50513          	addi	a0,a0,-900 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	adc080e7          	jalr	-1316(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    800035c4:	00100793          	li	a5,1
    800035c8:	00008717          	auipc	a4,0x8
    800035cc:	faf70da3          	sb	a5,-69(a4) # 8000b583 <_ZL9finishedD>
    thread_dispatch();
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	068080e7          	jalr	104(ra) # 80001638 <_Z15thread_dispatchv>
}
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00013903          	ld	s2,0(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret

00000000800035f0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800035f0:	fc010113          	addi	sp,sp,-64
    800035f4:	02113c23          	sd	ra,56(sp)
    800035f8:	02813823          	sd	s0,48(sp)
    800035fc:	02913423          	sd	s1,40(sp)
    80003600:	03213023          	sd	s2,32(sp)
    80003604:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003608:	02000513          	li	a0,32
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	7d4080e7          	jalr	2004(ra) # 80001de0 <_Znwm>
    80003614:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	9e4080e7          	jalr	-1564(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003620:	00008797          	auipc	a5,0x8
    80003624:	d0078793          	addi	a5,a5,-768 # 8000b320 <_ZTV7WorkerA+0x10>
    80003628:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000362c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003630:	00006517          	auipc	a0,0x6
    80003634:	c1050513          	addi	a0,a0,-1008 # 80009240 <_ZZ6prtIntmE6digits+0x158>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	a60080e7          	jalr	-1440(ra) # 80005098 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003640:	02000513          	li	a0,32
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	79c080e7          	jalr	1948(ra) # 80001de0 <_Znwm>
    8000364c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	9ac080e7          	jalr	-1620(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003658:	00008797          	auipc	a5,0x8
    8000365c:	cf078793          	addi	a5,a5,-784 # 8000b348 <_ZTV7WorkerB+0x10>
    80003660:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003664:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	bf050513          	addi	a0,a0,-1040 # 80009258 <_ZZ6prtIntmE6digits+0x170>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	a28080e7          	jalr	-1496(ra) # 80005098 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003678:	02000513          	li	a0,32
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	764080e7          	jalr	1892(ra) # 80001de0 <_Znwm>
    80003684:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	974080e7          	jalr	-1676(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003690:	00008797          	auipc	a5,0x8
    80003694:	ce078793          	addi	a5,a5,-800 # 8000b370 <_ZTV7WorkerC+0x10>
    80003698:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000369c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	bd050513          	addi	a0,a0,-1072 # 80009270 <_ZZ6prtIntmE6digits+0x188>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	9f0080e7          	jalr	-1552(ra) # 80005098 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800036b0:	02000513          	li	a0,32
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	72c080e7          	jalr	1836(ra) # 80001de0 <_Znwm>
    800036bc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	93c080e7          	jalr	-1732(ra) # 80001ffc <_ZN6ThreadC1Ev>
    800036c8:	00008797          	auipc	a5,0x8
    800036cc:	cd078793          	addi	a5,a5,-816 # 8000b398 <_ZTV7WorkerD+0x10>
    800036d0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800036d4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800036d8:	00006517          	auipc	a0,0x6
    800036dc:	bb050513          	addi	a0,a0,-1104 # 80009288 <_ZZ6prtIntmE6digits+0x1a0>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	9b8080e7          	jalr	-1608(ra) # 80005098 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800036e8:	00000493          	li	s1,0
    800036ec:	00300793          	li	a5,3
    800036f0:	0297c663          	blt	a5,s1,8000371c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800036f4:	00349793          	slli	a5,s1,0x3
    800036f8:	fe040713          	addi	a4,s0,-32
    800036fc:	00f707b3          	add	a5,a4,a5
    80003700:	fe07b503          	ld	a0,-32(a5)
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	89c080e7          	jalr	-1892(ra) # 80001fa0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000370c:	0014849b          	addiw	s1,s1,1
    80003710:	fddff06f          	j	800036ec <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	8c0080e7          	jalr	-1856(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000371c:	00008797          	auipc	a5,0x8
    80003720:	e647c783          	lbu	a5,-412(a5) # 8000b580 <_ZL9finishedA>
    80003724:	fe0788e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003728:	00008797          	auipc	a5,0x8
    8000372c:	e597c783          	lbu	a5,-423(a5) # 8000b581 <_ZL9finishedB>
    80003730:	fe0782e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003734:	00008797          	auipc	a5,0x8
    80003738:	e4e7c783          	lbu	a5,-434(a5) # 8000b582 <_ZL9finishedC>
    8000373c:	fc078ce3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003740:	00008797          	auipc	a5,0x8
    80003744:	e437c783          	lbu	a5,-445(a5) # 8000b583 <_ZL9finishedD>
    80003748:	fc0786e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    8000374c:	fc040493          	addi	s1,s0,-64
    80003750:	0080006f          	j	80003758 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003754:	00848493          	addi	s1,s1,8
    80003758:	fe040793          	addi	a5,s0,-32
    8000375c:	08f48663          	beq	s1,a5,800037e8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003760:	0004b503          	ld	a0,0(s1)
    80003764:	fe0508e3          	beqz	a0,80003754 <_Z20Threads_CPP_API_testv+0x164>
    80003768:	00053783          	ld	a5,0(a0)
    8000376c:	0087b783          	ld	a5,8(a5)
    80003770:	000780e7          	jalr	a5
    80003774:	fe1ff06f          	j	80003754 <_Z20Threads_CPP_API_testv+0x164>
    80003778:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000377c:	00048513          	mv	a0,s1
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	6b0080e7          	jalr	1712(ra) # 80001e30 <_ZdlPv>
    80003788:	00090513          	mv	a0,s2
    8000378c:	00009097          	auipc	ra,0x9
    80003790:	efc080e7          	jalr	-260(ra) # 8000c688 <_Unwind_Resume>
    80003794:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003798:	00048513          	mv	a0,s1
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	694080e7          	jalr	1684(ra) # 80001e30 <_ZdlPv>
    800037a4:	00090513          	mv	a0,s2
    800037a8:	00009097          	auipc	ra,0x9
    800037ac:	ee0080e7          	jalr	-288(ra) # 8000c688 <_Unwind_Resume>
    800037b0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800037b4:	00048513          	mv	a0,s1
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	678080e7          	jalr	1656(ra) # 80001e30 <_ZdlPv>
    800037c0:	00090513          	mv	a0,s2
    800037c4:	00009097          	auipc	ra,0x9
    800037c8:	ec4080e7          	jalr	-316(ra) # 8000c688 <_Unwind_Resume>
    800037cc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800037d0:	00048513          	mv	a0,s1
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	65c080e7          	jalr	1628(ra) # 80001e30 <_ZdlPv>
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00009097          	auipc	ra,0x9
    800037e4:	ea8080e7          	jalr	-344(ra) # 8000c688 <_Unwind_Resume>
}
    800037e8:	03813083          	ld	ra,56(sp)
    800037ec:	03013403          	ld	s0,48(sp)
    800037f0:	02813483          	ld	s1,40(sp)
    800037f4:	02013903          	ld	s2,32(sp)
    800037f8:	04010113          	addi	sp,sp,64
    800037fc:	00008067          	ret

0000000080003800 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00113423          	sd	ra,8(sp)
    80003808:	00813023          	sd	s0,0(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	00008797          	auipc	a5,0x8
    80003814:	b1078793          	addi	a5,a5,-1264 # 8000b320 <_ZTV7WorkerA+0x10>
    80003818:	00f53023          	sd	a5,0(a0)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	690080e7          	jalr	1680(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003824:	00813083          	ld	ra,8(sp)
    80003828:	00013403          	ld	s0,0(sp)
    8000382c:	01010113          	addi	sp,sp,16
    80003830:	00008067          	ret

0000000080003834 <_ZN7WorkerAD0Ev>:
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00913423          	sd	s1,8(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00050493          	mv	s1,a0
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	ad478793          	addi	a5,a5,-1324 # 8000b320 <_ZTV7WorkerA+0x10>
    80003854:	00f53023          	sd	a5,0(a0)
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	654080e7          	jalr	1620(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003860:	00048513          	mv	a0,s1
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	5cc080e7          	jalr	1484(ra) # 80001e30 <_ZdlPv>
    8000386c:	01813083          	ld	ra,24(sp)
    80003870:	01013403          	ld	s0,16(sp)
    80003874:	00813483          	ld	s1,8(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret

0000000080003880 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00113423          	sd	ra,8(sp)
    80003888:	00813023          	sd	s0,0(sp)
    8000388c:	01010413          	addi	s0,sp,16
    80003890:	00008797          	auipc	a5,0x8
    80003894:	ab878793          	addi	a5,a5,-1352 # 8000b348 <_ZTV7WorkerB+0x10>
    80003898:	00f53023          	sd	a5,0(a0)
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	610080e7          	jalr	1552(ra) # 80001eac <_ZN6ThreadD1Ev>
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	01010113          	addi	sp,sp,16
    800038b0:	00008067          	ret

00000000800038b4 <_ZN7WorkerBD0Ev>:
    800038b4:	fe010113          	addi	sp,sp,-32
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	00813823          	sd	s0,16(sp)
    800038c0:	00913423          	sd	s1,8(sp)
    800038c4:	02010413          	addi	s0,sp,32
    800038c8:	00050493          	mv	s1,a0
    800038cc:	00008797          	auipc	a5,0x8
    800038d0:	a7c78793          	addi	a5,a5,-1412 # 8000b348 <_ZTV7WorkerB+0x10>
    800038d4:	00f53023          	sd	a5,0(a0)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	5d4080e7          	jalr	1492(ra) # 80001eac <_ZN6ThreadD1Ev>
    800038e0:	00048513          	mv	a0,s1
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	54c080e7          	jalr	1356(ra) # 80001e30 <_ZdlPv>
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	02010113          	addi	sp,sp,32
    800038fc:	00008067          	ret

0000000080003900 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00113423          	sd	ra,8(sp)
    80003908:	00813023          	sd	s0,0(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	00008797          	auipc	a5,0x8
    80003914:	a6078793          	addi	a5,a5,-1440 # 8000b370 <_ZTV7WorkerC+0x10>
    80003918:	00f53023          	sd	a5,0(a0)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	590080e7          	jalr	1424(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003924:	00813083          	ld	ra,8(sp)
    80003928:	00013403          	ld	s0,0(sp)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret

0000000080003934 <_ZN7WorkerCD0Ev>:
    80003934:	fe010113          	addi	sp,sp,-32
    80003938:	00113c23          	sd	ra,24(sp)
    8000393c:	00813823          	sd	s0,16(sp)
    80003940:	00913423          	sd	s1,8(sp)
    80003944:	02010413          	addi	s0,sp,32
    80003948:	00050493          	mv	s1,a0
    8000394c:	00008797          	auipc	a5,0x8
    80003950:	a2478793          	addi	a5,a5,-1500 # 8000b370 <_ZTV7WorkerC+0x10>
    80003954:	00f53023          	sd	a5,0(a0)
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	554080e7          	jalr	1364(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003960:	00048513          	mv	a0,s1
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	4cc080e7          	jalr	1228(ra) # 80001e30 <_ZdlPv>
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret

0000000080003980 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00113423          	sd	ra,8(sp)
    80003988:	00813023          	sd	s0,0(sp)
    8000398c:	01010413          	addi	s0,sp,16
    80003990:	00008797          	auipc	a5,0x8
    80003994:	a0878793          	addi	a5,a5,-1528 # 8000b398 <_ZTV7WorkerD+0x10>
    80003998:	00f53023          	sd	a5,0(a0)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	510080e7          	jalr	1296(ra) # 80001eac <_ZN6ThreadD1Ev>
    800039a4:	00813083          	ld	ra,8(sp)
    800039a8:	00013403          	ld	s0,0(sp)
    800039ac:	01010113          	addi	sp,sp,16
    800039b0:	00008067          	ret

00000000800039b4 <_ZN7WorkerDD0Ev>:
    800039b4:	fe010113          	addi	sp,sp,-32
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00913423          	sd	s1,8(sp)
    800039c4:	02010413          	addi	s0,sp,32
    800039c8:	00050493          	mv	s1,a0
    800039cc:	00008797          	auipc	a5,0x8
    800039d0:	9cc78793          	addi	a5,a5,-1588 # 8000b398 <_ZTV7WorkerD+0x10>
    800039d4:	00f53023          	sd	a5,0(a0)
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	4d4080e7          	jalr	1236(ra) # 80001eac <_ZN6ThreadD1Ev>
    800039e0:	00048513          	mv	a0,s1
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	44c080e7          	jalr	1100(ra) # 80001e30 <_ZdlPv>
    800039ec:	01813083          	ld	ra,24(sp)
    800039f0:	01013403          	ld	s0,16(sp)
    800039f4:	00813483          	ld	s1,8(sp)
    800039f8:	02010113          	addi	sp,sp,32
    800039fc:	00008067          	ret

0000000080003a00 <_ZN7WorkerA3runEv>:
    void run() override {
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00113423          	sd	ra,8(sp)
    80003a08:	00813023          	sd	s0,0(sp)
    80003a0c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003a10:	00000593          	li	a1,0
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	774080e7          	jalr	1908(ra) # 80003188 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003a1c:	00813083          	ld	ra,8(sp)
    80003a20:	00013403          	ld	s0,0(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret

0000000080003a2c <_ZN7WorkerB3runEv>:
    void run() override {
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00113423          	sd	ra,8(sp)
    80003a34:	00813023          	sd	s0,0(sp)
    80003a38:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003a3c:	00000593          	li	a1,0
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	814080e7          	jalr	-2028(ra) # 80003254 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN7WorkerC3runEv>:
    void run() override {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003a68:	00000593          	li	a1,0
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	8bc080e7          	jalr	-1860(ra) # 80003328 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003a74:	00813083          	ld	ra,8(sp)
    80003a78:	00013403          	ld	s0,0(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN7WorkerD3runEv>:
    void run() override {
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003a94:	00000593          	li	a1,0
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	a10080e7          	jalr	-1520(ra) # 800034a8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003aa0:	00813083          	ld	ra,8(sp)
    80003aa4:	00013403          	ld	s0,0(sp)
    80003aa8:	01010113          	addi	sp,sp,16
    80003aac:	00008067          	ret

0000000080003ab0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ab0:	f8010113          	addi	sp,sp,-128
    80003ab4:	06113c23          	sd	ra,120(sp)
    80003ab8:	06813823          	sd	s0,112(sp)
    80003abc:	06913423          	sd	s1,104(sp)
    80003ac0:	07213023          	sd	s2,96(sp)
    80003ac4:	05313c23          	sd	s3,88(sp)
    80003ac8:	05413823          	sd	s4,80(sp)
    80003acc:	05513423          	sd	s5,72(sp)
    80003ad0:	05613023          	sd	s6,64(sp)
    80003ad4:	03713c23          	sd	s7,56(sp)
    80003ad8:	03813823          	sd	s8,48(sp)
    80003adc:	03913423          	sd	s9,40(sp)
    80003ae0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003ae4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ae8:	00005517          	auipc	a0,0x5
    80003aec:	61050513          	addi	a0,a0,1552 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	5a8080e7          	jalr	1448(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80003af8:	01e00593          	li	a1,30
    80003afc:	f8040493          	addi	s1,s0,-128
    80003b00:	00048513          	mv	a0,s1
    80003b04:	00001097          	auipc	ra,0x1
    80003b08:	61c080e7          	jalr	1564(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b0c:	00048513          	mv	a0,s1
    80003b10:	00001097          	auipc	ra,0x1
    80003b14:	6e8080e7          	jalr	1768(ra) # 800051f8 <_Z11stringToIntPKc>
    80003b18:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003b1c:	00005517          	auipc	a0,0x5
    80003b20:	5fc50513          	addi	a0,a0,1532 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80003b24:	00001097          	auipc	ra,0x1
    80003b28:	574080e7          	jalr	1396(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80003b2c:	01e00593          	li	a1,30
    80003b30:	00048513          	mv	a0,s1
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	5ec080e7          	jalr	1516(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	00001097          	auipc	ra,0x1
    80003b44:	6b8080e7          	jalr	1720(ra) # 800051f8 <_Z11stringToIntPKc>
    80003b48:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003b4c:	00005517          	auipc	a0,0x5
    80003b50:	5ec50513          	addi	a0,a0,1516 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	544080e7          	jalr	1348(ra) # 80005098 <_Z11printStringPKc>
    printInt(threadNum);
    80003b5c:	00000613          	li	a2,0
    80003b60:	00a00593          	li	a1,10
    80003b64:	00098513          	mv	a0,s3
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	6e0080e7          	jalr	1760(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	5e050513          	addi	a0,a0,1504 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80003b78:	00001097          	auipc	ra,0x1
    80003b7c:	520080e7          	jalr	1312(ra) # 80005098 <_Z11printStringPKc>
    printInt(n);
    80003b80:	00000613          	li	a2,0
    80003b84:	00a00593          	li	a1,10
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	6bc080e7          	jalr	1724(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	5d450513          	addi	a0,a0,1492 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	4fc080e7          	jalr	1276(ra) # 80005098 <_Z11printStringPKc>
    if (threadNum > n) {
    80003ba4:	0334c463          	blt	s1,s3,80003bcc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003ba8:	03305c63          	blez	s3,80003be0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003bac:	03800513          	li	a0,56
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	230080e7          	jalr	560(ra) # 80001de0 <_Znwm>
    80003bb8:	00050a93          	mv	s5,a0
    80003bbc:	00048593          	mv	a1,s1
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	7a8080e7          	jalr	1960(ra) # 80005368 <_ZN9BufferCPPC1Ei>
    80003bc8:	0300006f          	j	80003bf8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003bcc:	00005517          	auipc	a0,0x5
    80003bd0:	5a450513          	addi	a0,a0,1444 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	4c4080e7          	jalr	1220(ra) # 80005098 <_Z11printStringPKc>
        return;
    80003bdc:	0140006f          	j	80003bf0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	5d050513          	addi	a0,a0,1488 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	4b0080e7          	jalr	1200(ra) # 80005098 <_Z11printStringPKc>
        return;
    80003bf0:	000c0113          	mv	sp,s8
    80003bf4:	2140006f          	j	80003e08 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003bf8:	01000513          	li	a0,16
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	1e4080e7          	jalr	484(ra) # 80001de0 <_Znwm>
    80003c04:	00050913          	mv	s2,a0
    80003c08:	00000593          	li	a1,0
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	45c080e7          	jalr	1116(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    80003c14:	00008797          	auipc	a5,0x8
    80003c18:	9727be23          	sd	s2,-1668(a5) # 8000b590 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003c1c:	00399793          	slli	a5,s3,0x3
    80003c20:	00f78793          	addi	a5,a5,15
    80003c24:	ff07f793          	andi	a5,a5,-16
    80003c28:	40f10133          	sub	sp,sp,a5
    80003c2c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003c30:	0019871b          	addiw	a4,s3,1
    80003c34:	00171793          	slli	a5,a4,0x1
    80003c38:	00e787b3          	add	a5,a5,a4
    80003c3c:	00379793          	slli	a5,a5,0x3
    80003c40:	00f78793          	addi	a5,a5,15
    80003c44:	ff07f793          	andi	a5,a5,-16
    80003c48:	40f10133          	sub	sp,sp,a5
    80003c4c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003c50:	00199493          	slli	s1,s3,0x1
    80003c54:	013484b3          	add	s1,s1,s3
    80003c58:	00349493          	slli	s1,s1,0x3
    80003c5c:	009b04b3          	add	s1,s6,s1
    80003c60:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003c64:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003c68:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c6c:	02800513          	li	a0,40
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	170080e7          	jalr	368(ra) # 80001de0 <_Znwm>
    80003c78:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	380080e7          	jalr	896(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003c84:	00007797          	auipc	a5,0x7
    80003c88:	78c78793          	addi	a5,a5,1932 # 8000b410 <_ZTV8Consumer+0x10>
    80003c8c:	00fbb023          	sd	a5,0(s7)
    80003c90:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003c94:	000b8513          	mv	a0,s7
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	308080e7          	jalr	776(ra) # 80001fa0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003ca0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003ca4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	8e87b783          	ld	a5,-1816(a5) # 8000b590 <_ZL10waitForAll>
    80003cb0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003cb4:	02800513          	li	a0,40
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	128080e7          	jalr	296(ra) # 80001de0 <_Znwm>
    80003cc0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	338080e7          	jalr	824(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003ccc:	00007797          	auipc	a5,0x7
    80003cd0:	6f478793          	addi	a5,a5,1780 # 8000b3c0 <_ZTV16ProducerKeyborad+0x10>
    80003cd4:	00f4b023          	sd	a5,0(s1)
    80003cd8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003cdc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	2bc080e7          	jalr	700(ra) # 80001fa0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003cec:	00100913          	li	s2,1
    80003cf0:	0300006f          	j	80003d20 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003cf4:	00007797          	auipc	a5,0x7
    80003cf8:	6f478793          	addi	a5,a5,1780 # 8000b3e8 <_ZTV8Producer+0x10>
    80003cfc:	00fcb023          	sd	a5,0(s9)
    80003d00:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003d04:	00391793          	slli	a5,s2,0x3
    80003d08:	00fa07b3          	add	a5,s4,a5
    80003d0c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003d10:	000c8513          	mv	a0,s9
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	28c080e7          	jalr	652(ra) # 80001fa0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d1c:	0019091b          	addiw	s2,s2,1
    80003d20:	05395263          	bge	s2,s3,80003d64 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003d24:	00191493          	slli	s1,s2,0x1
    80003d28:	012484b3          	add	s1,s1,s2
    80003d2c:	00349493          	slli	s1,s1,0x3
    80003d30:	009b04b3          	add	s1,s6,s1
    80003d34:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003d38:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003d3c:	00008797          	auipc	a5,0x8
    80003d40:	8547b783          	ld	a5,-1964(a5) # 8000b590 <_ZL10waitForAll>
    80003d44:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003d48:	02800513          	li	a0,40
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	094080e7          	jalr	148(ra) # 80001de0 <_Znwm>
    80003d54:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	2a4080e7          	jalr	676(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80003d60:	f95ff06f          	j	80003cf4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	270080e7          	jalr	624(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d6c:	00000493          	li	s1,0
    80003d70:	0099ce63          	blt	s3,s1,80003d8c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003d74:	00008517          	auipc	a0,0x8
    80003d78:	81c53503          	ld	a0,-2020(a0) # 8000b590 <_ZL10waitForAll>
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	310080e7          	jalr	784(ra) # 8000208c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	fe9ff06f          	j	80003d70 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003d8c:	00008517          	auipc	a0,0x8
    80003d90:	80453503          	ld	a0,-2044(a0) # 8000b590 <_ZL10waitForAll>
    80003d94:	00050863          	beqz	a0,80003da4 <_Z20testConsumerProducerv+0x2f4>
    80003d98:	00053783          	ld	a5,0(a0)
    80003d9c:	0087b783          	ld	a5,8(a5)
    80003da0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003da4:	00000493          	li	s1,0
    80003da8:	0080006f          	j	80003db0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003dac:	0014849b          	addiw	s1,s1,1
    80003db0:	0334d263          	bge	s1,s3,80003dd4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003db4:	00349793          	slli	a5,s1,0x3
    80003db8:	00fa07b3          	add	a5,s4,a5
    80003dbc:	0007b503          	ld	a0,0(a5)
    80003dc0:	fe0506e3          	beqz	a0,80003dac <_Z20testConsumerProducerv+0x2fc>
    80003dc4:	00053783          	ld	a5,0(a0)
    80003dc8:	0087b783          	ld	a5,8(a5)
    80003dcc:	000780e7          	jalr	a5
    80003dd0:	fddff06f          	j	80003dac <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003dd4:	000b8a63          	beqz	s7,80003de8 <_Z20testConsumerProducerv+0x338>
    80003dd8:	000bb783          	ld	a5,0(s7)
    80003ddc:	0087b783          	ld	a5,8(a5)
    80003de0:	000b8513          	mv	a0,s7
    80003de4:	000780e7          	jalr	a5
    delete buffer;
    80003de8:	000a8e63          	beqz	s5,80003e04 <_Z20testConsumerProducerv+0x354>
    80003dec:	000a8513          	mv	a0,s5
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	870080e7          	jalr	-1936(ra) # 80005660 <_ZN9BufferCPPD1Ev>
    80003df8:	000a8513          	mv	a0,s5
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	034080e7          	jalr	52(ra) # 80001e30 <_ZdlPv>
    80003e04:	000c0113          	mv	sp,s8
}
    80003e08:	f8040113          	addi	sp,s0,-128
    80003e0c:	07813083          	ld	ra,120(sp)
    80003e10:	07013403          	ld	s0,112(sp)
    80003e14:	06813483          	ld	s1,104(sp)
    80003e18:	06013903          	ld	s2,96(sp)
    80003e1c:	05813983          	ld	s3,88(sp)
    80003e20:	05013a03          	ld	s4,80(sp)
    80003e24:	04813a83          	ld	s5,72(sp)
    80003e28:	04013b03          	ld	s6,64(sp)
    80003e2c:	03813b83          	ld	s7,56(sp)
    80003e30:	03013c03          	ld	s8,48(sp)
    80003e34:	02813c83          	ld	s9,40(sp)
    80003e38:	08010113          	addi	sp,sp,128
    80003e3c:	00008067          	ret
    80003e40:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e44:	000a8513          	mv	a0,s5
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	fe8080e7          	jalr	-24(ra) # 80001e30 <_ZdlPv>
    80003e50:	00048513          	mv	a0,s1
    80003e54:	00009097          	auipc	ra,0x9
    80003e58:	834080e7          	jalr	-1996(ra) # 8000c688 <_Unwind_Resume>
    80003e5c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003e60:	00090513          	mv	a0,s2
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	fcc080e7          	jalr	-52(ra) # 80001e30 <_ZdlPv>
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00009097          	auipc	ra,0x9
    80003e74:	818080e7          	jalr	-2024(ra) # 8000c688 <_Unwind_Resume>
    80003e78:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e7c:	000b8513          	mv	a0,s7
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	fb0080e7          	jalr	-80(ra) # 80001e30 <_ZdlPv>
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00008097          	auipc	ra,0x8
    80003e90:	7fc080e7          	jalr	2044(ra) # 8000c688 <_Unwind_Resume>
    80003e94:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	f94080e7          	jalr	-108(ra) # 80001e30 <_ZdlPv>
    80003ea4:	00090513          	mv	a0,s2
    80003ea8:	00008097          	auipc	ra,0x8
    80003eac:	7e0080e7          	jalr	2016(ra) # 8000c688 <_Unwind_Resume>
    80003eb0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003eb4:	000c8513          	mv	a0,s9
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	f78080e7          	jalr	-136(ra) # 80001e30 <_ZdlPv>
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00008097          	auipc	ra,0x8
    80003ec8:	7c4080e7          	jalr	1988(ra) # 8000c688 <_Unwind_Resume>

0000000080003ecc <_ZN8Consumer3runEv>:
    void run() override {
    80003ecc:	fd010113          	addi	sp,sp,-48
    80003ed0:	02113423          	sd	ra,40(sp)
    80003ed4:	02813023          	sd	s0,32(sp)
    80003ed8:	00913c23          	sd	s1,24(sp)
    80003edc:	01213823          	sd	s2,16(sp)
    80003ee0:	01313423          	sd	s3,8(sp)
    80003ee4:	03010413          	addi	s0,sp,48
    80003ee8:	00050913          	mv	s2,a0
        int i = 0;
    80003eec:	00000993          	li	s3,0
    80003ef0:	0100006f          	j	80003f00 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003ef4:	00a00513          	li	a0,10
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	240080e7          	jalr	576(ra) # 80002138 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003f00:	00007797          	auipc	a5,0x7
    80003f04:	6887a783          	lw	a5,1672(a5) # 8000b588 <_ZL9threadEnd>
    80003f08:	04079a63          	bnez	a5,80003f5c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003f0c:	02093783          	ld	a5,32(s2)
    80003f10:	0087b503          	ld	a0,8(a5)
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	638080e7          	jalr	1592(ra) # 8000554c <_ZN9BufferCPP3getEv>
            i++;
    80003f1c:	0019849b          	addiw	s1,s3,1
    80003f20:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003f24:	0ff57513          	andi	a0,a0,255
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	210080e7          	jalr	528(ra) # 80002138 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003f30:	05000793          	li	a5,80
    80003f34:	02f4e4bb          	remw	s1,s1,a5
    80003f38:	fc0494e3          	bnez	s1,80003f00 <_ZN8Consumer3runEv+0x34>
    80003f3c:	fb9ff06f          	j	80003ef4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003f40:	02093783          	ld	a5,32(s2)
    80003f44:	0087b503          	ld	a0,8(a5)
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	604080e7          	jalr	1540(ra) # 8000554c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003f50:	0ff57513          	andi	a0,a0,255
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	1e4080e7          	jalr	484(ra) # 80002138 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003f5c:	02093783          	ld	a5,32(s2)
    80003f60:	0087b503          	ld	a0,8(a5)
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	674080e7          	jalr	1652(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    80003f6c:	fca04ae3          	bgtz	a0,80003f40 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003f70:	02093783          	ld	a5,32(s2)
    80003f74:	0107b503          	ld	a0,16(a5)
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	130080e7          	jalr	304(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    80003f80:	02813083          	ld	ra,40(sp)
    80003f84:	02013403          	ld	s0,32(sp)
    80003f88:	01813483          	ld	s1,24(sp)
    80003f8c:	01013903          	ld	s2,16(sp)
    80003f90:	00813983          	ld	s3,8(sp)
    80003f94:	03010113          	addi	sp,sp,48
    80003f98:	00008067          	ret

0000000080003f9c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00113423          	sd	ra,8(sp)
    80003fa4:	00813023          	sd	s0,0(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    80003fac:	00007797          	auipc	a5,0x7
    80003fb0:	46478793          	addi	a5,a5,1124 # 8000b410 <_ZTV8Consumer+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	ef4080e7          	jalr	-268(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003fc0:	00813083          	ld	ra,8(sp)
    80003fc4:	00013403          	ld	s0,0(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret

0000000080003fd0 <_ZN8ConsumerD0Ev>:
    80003fd0:	fe010113          	addi	sp,sp,-32
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00813823          	sd	s0,16(sp)
    80003fdc:	00913423          	sd	s1,8(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    80003fe4:	00050493          	mv	s1,a0
    80003fe8:	00007797          	auipc	a5,0x7
    80003fec:	42878793          	addi	a5,a5,1064 # 8000b410 <_ZTV8Consumer+0x10>
    80003ff0:	00f53023          	sd	a5,0(a0)
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	eb8080e7          	jalr	-328(ra) # 80001eac <_ZN6ThreadD1Ev>
    80003ffc:	00048513          	mv	a0,s1
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	e30080e7          	jalr	-464(ra) # 80001e30 <_ZdlPv>
    80004008:	01813083          	ld	ra,24(sp)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	00813483          	ld	s1,8(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000401c:	ff010113          	addi	sp,sp,-16
    80004020:	00113423          	sd	ra,8(sp)
    80004024:	00813023          	sd	s0,0(sp)
    80004028:	01010413          	addi	s0,sp,16
    8000402c:	00007797          	auipc	a5,0x7
    80004030:	39478793          	addi	a5,a5,916 # 8000b3c0 <_ZTV16ProducerKeyborad+0x10>
    80004034:	00f53023          	sd	a5,0(a0)
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	e74080e7          	jalr	-396(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004040:	00813083          	ld	ra,8(sp)
    80004044:	00013403          	ld	s0,0(sp)
    80004048:	01010113          	addi	sp,sp,16
    8000404c:	00008067          	ret

0000000080004050 <_ZN16ProducerKeyboradD0Ev>:
    80004050:	fe010113          	addi	sp,sp,-32
    80004054:	00113c23          	sd	ra,24(sp)
    80004058:	00813823          	sd	s0,16(sp)
    8000405c:	00913423          	sd	s1,8(sp)
    80004060:	02010413          	addi	s0,sp,32
    80004064:	00050493          	mv	s1,a0
    80004068:	00007797          	auipc	a5,0x7
    8000406c:	35878793          	addi	a5,a5,856 # 8000b3c0 <_ZTV16ProducerKeyborad+0x10>
    80004070:	00f53023          	sd	a5,0(a0)
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	e38080e7          	jalr	-456(ra) # 80001eac <_ZN6ThreadD1Ev>
    8000407c:	00048513          	mv	a0,s1
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	db0080e7          	jalr	-592(ra) # 80001e30 <_ZdlPv>
    80004088:	01813083          	ld	ra,24(sp)
    8000408c:	01013403          	ld	s0,16(sp)
    80004090:	00813483          	ld	s1,8(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret

000000008000409c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    800040ac:	00007797          	auipc	a5,0x7
    800040b0:	33c78793          	addi	a5,a5,828 # 8000b3e8 <_ZTV8Producer+0x10>
    800040b4:	00f53023          	sd	a5,0(a0)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	df4080e7          	jalr	-524(ra) # 80001eac <_ZN6ThreadD1Ev>
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret

00000000800040d0 <_ZN8ProducerD0Ev>:
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	02010413          	addi	s0,sp,32
    800040e4:	00050493          	mv	s1,a0
    800040e8:	00007797          	auipc	a5,0x7
    800040ec:	30078793          	addi	a5,a5,768 # 8000b3e8 <_ZTV8Producer+0x10>
    800040f0:	00f53023          	sd	a5,0(a0)
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	db8080e7          	jalr	-584(ra) # 80001eac <_ZN6ThreadD1Ev>
    800040fc:	00048513          	mv	a0,s1
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	d30080e7          	jalr	-720(ra) # 80001e30 <_ZdlPv>
    80004108:	01813083          	ld	ra,24(sp)
    8000410c:	01013403          	ld	s0,16(sp)
    80004110:	00813483          	ld	s1,8(sp)
    80004114:	02010113          	addi	sp,sp,32
    80004118:	00008067          	ret

000000008000411c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00113c23          	sd	ra,24(sp)
    80004124:	00813823          	sd	s0,16(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	5b8080e7          	jalr	1464(ra) # 800016ec <_Z4getcv>
    8000413c:	0005059b          	sext.w	a1,a0
    80004140:	01b00793          	li	a5,27
    80004144:	00f58c63          	beq	a1,a5,8000415c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004148:	0204b783          	ld	a5,32(s1)
    8000414c:	0087b503          	ld	a0,8(a5)
    80004150:	00001097          	auipc	ra,0x1
    80004154:	36c080e7          	jalr	876(ra) # 800054bc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004158:	fddff06f          	j	80004134 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000415c:	00100793          	li	a5,1
    80004160:	00007717          	auipc	a4,0x7
    80004164:	42f72423          	sw	a5,1064(a4) # 8000b588 <_ZL9threadEnd>
        td->buffer->put('!');
    80004168:	0204b783          	ld	a5,32(s1)
    8000416c:	02100593          	li	a1,33
    80004170:	0087b503          	ld	a0,8(a5)
    80004174:	00001097          	auipc	ra,0x1
    80004178:	348080e7          	jalr	840(ra) # 800054bc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000417c:	0204b783          	ld	a5,32(s1)
    80004180:	0107b503          	ld	a0,16(a5)
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	f24080e7          	jalr	-220(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret

00000000800041a0 <_ZN8Producer3runEv>:
    void run() override {
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	00113c23          	sd	ra,24(sp)
    800041a8:	00813823          	sd	s0,16(sp)
    800041ac:	00913423          	sd	s1,8(sp)
    800041b0:	01213023          	sd	s2,0(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050493          	mv	s1,a0
        int i = 0;
    800041bc:	00000913          	li	s2,0
        while (!threadEnd) {
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	3c87a783          	lw	a5,968(a5) # 8000b588 <_ZL9threadEnd>
    800041c8:	04079263          	bnez	a5,8000420c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800041cc:	0204b783          	ld	a5,32(s1)
    800041d0:	0007a583          	lw	a1,0(a5)
    800041d4:	0305859b          	addiw	a1,a1,48
    800041d8:	0087b503          	ld	a0,8(a5)
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	2e0080e7          	jalr	736(ra) # 800054bc <_ZN9BufferCPP3putEi>
            i++;
    800041e4:	0019071b          	addiw	a4,s2,1
    800041e8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800041ec:	0204b783          	ld	a5,32(s1)
    800041f0:	0007a783          	lw	a5,0(a5)
    800041f4:	00e787bb          	addw	a5,a5,a4
    800041f8:	00500513          	li	a0,5
    800041fc:	02a7e53b          	remw	a0,a5,a0
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	e4c080e7          	jalr	-436(ra) # 8000204c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004208:	fb9ff06f          	j	800041c0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000420c:	0204b783          	ld	a5,32(s1)
    80004210:	0107b503          	ld	a0,16(a5)
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	e94080e7          	jalr	-364(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret

0000000080004234 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004234:	fe010113          	addi	sp,sp,-32
    80004238:	00113c23          	sd	ra,24(sp)
    8000423c:	00813823          	sd	s0,16(sp)
    80004240:	00913423          	sd	s1,8(sp)
    80004244:	01213023          	sd	s2,0(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004250:	00100793          	li	a5,1
    80004254:	02a7f863          	bgeu	a5,a0,80004284 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004258:	00a00793          	li	a5,10
    8000425c:	02f577b3          	remu	a5,a0,a5
    80004260:	02078e63          	beqz	a5,8000429c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004264:	fff48513          	addi	a0,s1,-1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	fcc080e7          	jalr	-52(ra) # 80004234 <_ZL9fibonaccim>
    80004270:	00050913          	mv	s2,a0
    80004274:	ffe48513          	addi	a0,s1,-2
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	fbc080e7          	jalr	-68(ra) # 80004234 <_ZL9fibonaccim>
    80004280:	00a90533          	add	a0,s2,a0
}
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	00013903          	ld	s2,0(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	39c080e7          	jalr	924(ra) # 80001638 <_Z15thread_dispatchv>
    800042a4:	fc1ff06f          	j	80004264 <_ZL9fibonaccim+0x30>

00000000800042a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	01213023          	sd	s2,0(sp)
    800042bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800042c0:	00a00493          	li	s1,10
    800042c4:	0400006f          	j	80004304 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042c8:	00005517          	auipc	a0,0x5
    800042cc:	da050513          	addi	a0,a0,-608 # 80009068 <CONSOLE_STATUS+0x58>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	dc8080e7          	jalr	-568(ra) # 80005098 <_Z11printStringPKc>
    800042d8:	00000613          	li	a2,0
    800042dc:	00a00593          	li	a1,10
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	f64080e7          	jalr	-156(ra) # 80005248 <_Z8printIntiii>
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	e4450513          	addi	a0,a0,-444 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	da4080e7          	jalr	-604(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042fc:	0014849b          	addiw	s1,s1,1
    80004300:	0ff4f493          	andi	s1,s1,255
    80004304:	00c00793          	li	a5,12
    80004308:	fc97f0e3          	bgeu	a5,s1,800042c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	f1450513          	addi	a0,a0,-236 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	d84080e7          	jalr	-636(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000431c:	00500313          	li	t1,5
    thread_dispatch();
    80004320:	ffffd097          	auipc	ra,0xffffd
    80004324:	318080e7          	jalr	792(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004328:	01000513          	li	a0,16
    8000432c:	00000097          	auipc	ra,0x0
    80004330:	f08080e7          	jalr	-248(ra) # 80004234 <_ZL9fibonaccim>
    80004334:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004338:	00005517          	auipc	a0,0x5
    8000433c:	d4850513          	addi	a0,a0,-696 # 80009080 <CONSOLE_STATUS+0x70>
    80004340:	00001097          	auipc	ra,0x1
    80004344:	d58080e7          	jalr	-680(ra) # 80005098 <_Z11printStringPKc>
    80004348:	00000613          	li	a2,0
    8000434c:	00a00593          	li	a1,10
    80004350:	0009051b          	sext.w	a0,s2
    80004354:	00001097          	auipc	ra,0x1
    80004358:	ef4080e7          	jalr	-268(ra) # 80005248 <_Z8printIntiii>
    8000435c:	00005517          	auipc	a0,0x5
    80004360:	dd450513          	addi	a0,a0,-556 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80004364:	00001097          	auipc	ra,0x1
    80004368:	d34080e7          	jalr	-716(ra) # 80005098 <_Z11printStringPKc>
    8000436c:	0400006f          	j	800043ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	cf850513          	addi	a0,a0,-776 # 80009068 <CONSOLE_STATUS+0x58>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	d20080e7          	jalr	-736(ra) # 80005098 <_Z11printStringPKc>
    80004380:	00000613          	li	a2,0
    80004384:	00a00593          	li	a1,10
    80004388:	00048513          	mv	a0,s1
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	ebc080e7          	jalr	-324(ra) # 80005248 <_Z8printIntiii>
    80004394:	00005517          	auipc	a0,0x5
    80004398:	d9c50513          	addi	a0,a0,-612 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	cfc080e7          	jalr	-772(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800043a4:	0014849b          	addiw	s1,s1,1
    800043a8:	0ff4f493          	andi	s1,s1,255
    800043ac:	00f00793          	li	a5,15
    800043b0:	fc97f0e3          	bgeu	a5,s1,80004370 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	e7c50513          	addi	a0,a0,-388 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	cdc080e7          	jalr	-804(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    800043c4:	00100793          	li	a5,1
    800043c8:	00007717          	auipc	a4,0x7
    800043cc:	1cf70823          	sb	a5,464(a4) # 8000b598 <_ZL9finishedD>
    thread_dispatch();
    800043d0:	ffffd097          	auipc	ra,0xffffd
    800043d4:	268080e7          	jalr	616(ra) # 80001638 <_Z15thread_dispatchv>
}
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret

00000000800043f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800043f0:	fe010113          	addi	sp,sp,-32
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	00813823          	sd	s0,16(sp)
    800043fc:	00913423          	sd	s1,8(sp)
    80004400:	01213023          	sd	s2,0(sp)
    80004404:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004408:	00000493          	li	s1,0
    8000440c:	0400006f          	j	8000444c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004410:	00005517          	auipc	a0,0x5
    80004414:	c1050513          	addi	a0,a0,-1008 # 80009020 <CONSOLE_STATUS+0x10>
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	c80080e7          	jalr	-896(ra) # 80005098 <_Z11printStringPKc>
    80004420:	00000613          	li	a2,0
    80004424:	00a00593          	li	a1,10
    80004428:	00048513          	mv	a0,s1
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	e1c080e7          	jalr	-484(ra) # 80005248 <_Z8printIntiii>
    80004434:	00005517          	auipc	a0,0x5
    80004438:	cfc50513          	addi	a0,a0,-772 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	c5c080e7          	jalr	-932(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004444:	0014849b          	addiw	s1,s1,1
    80004448:	0ff4f493          	andi	s1,s1,255
    8000444c:	00200793          	li	a5,2
    80004450:	fc97f0e3          	bgeu	a5,s1,80004410 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	dac50513          	addi	a0,a0,-596 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	c3c080e7          	jalr	-964(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004464:	00700313          	li	t1,7
    thread_dispatch();
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	1d0080e7          	jalr	464(ra) # 80001638 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004470:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	bc450513          	addi	a0,a0,-1084 # 80009038 <CONSOLE_STATUS+0x28>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	c1c080e7          	jalr	-996(ra) # 80005098 <_Z11printStringPKc>
    80004484:	00000613          	li	a2,0
    80004488:	00a00593          	li	a1,10
    8000448c:	0009051b          	sext.w	a0,s2
    80004490:	00001097          	auipc	ra,0x1
    80004494:	db8080e7          	jalr	-584(ra) # 80005248 <_Z8printIntiii>
    80004498:	00005517          	auipc	a0,0x5
    8000449c:	c9850513          	addi	a0,a0,-872 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	bf8080e7          	jalr	-1032(ra) # 80005098 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800044a8:	00c00513          	li	a0,12
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	d88080e7          	jalr	-632(ra) # 80004234 <_ZL9fibonaccim>
    800044b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800044b8:	00005517          	auipc	a0,0x5
    800044bc:	b8850513          	addi	a0,a0,-1144 # 80009040 <CONSOLE_STATUS+0x30>
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	bd8080e7          	jalr	-1064(ra) # 80005098 <_Z11printStringPKc>
    800044c8:	00000613          	li	a2,0
    800044cc:	00a00593          	li	a1,10
    800044d0:	0009051b          	sext.w	a0,s2
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	d74080e7          	jalr	-652(ra) # 80005248 <_Z8printIntiii>
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	c5450513          	addi	a0,a0,-940 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	bb4080e7          	jalr	-1100(ra) # 80005098 <_Z11printStringPKc>
    800044ec:	0400006f          	j	8000452c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	b3050513          	addi	a0,a0,-1232 # 80009020 <CONSOLE_STATUS+0x10>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	ba0080e7          	jalr	-1120(ra) # 80005098 <_Z11printStringPKc>
    80004500:	00000613          	li	a2,0
    80004504:	00a00593          	li	a1,10
    80004508:	00048513          	mv	a0,s1
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	d3c080e7          	jalr	-708(ra) # 80005248 <_Z8printIntiii>
    80004514:	00005517          	auipc	a0,0x5
    80004518:	c1c50513          	addi	a0,a0,-996 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	b7c080e7          	jalr	-1156(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004524:	0014849b          	addiw	s1,s1,1
    80004528:	0ff4f493          	andi	s1,s1,255
    8000452c:	00500793          	li	a5,5
    80004530:	fc97f0e3          	bgeu	a5,s1,800044f0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004534:	00005517          	auipc	a0,0x5
    80004538:	cac50513          	addi	a0,a0,-852 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	b5c080e7          	jalr	-1188(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    80004544:	00100793          	li	a5,1
    80004548:	00007717          	auipc	a4,0x7
    8000454c:	04f708a3          	sb	a5,81(a4) # 8000b599 <_ZL9finishedC>
    thread_dispatch();
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	0e8080e7          	jalr	232(ra) # 80001638 <_Z15thread_dispatchv>
}
    80004558:	01813083          	ld	ra,24(sp)
    8000455c:	01013403          	ld	s0,16(sp)
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	00013903          	ld	s2,0(sp)
    80004568:	02010113          	addi	sp,sp,32
    8000456c:	00008067          	ret

0000000080004570 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004570:	fe010113          	addi	sp,sp,-32
    80004574:	00113c23          	sd	ra,24(sp)
    80004578:	00813823          	sd	s0,16(sp)
    8000457c:	00913423          	sd	s1,8(sp)
    80004580:	01213023          	sd	s2,0(sp)
    80004584:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004588:	00000913          	li	s2,0
    8000458c:	0380006f          	j	800045c4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	0a8080e7          	jalr	168(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004598:	00148493          	addi	s1,s1,1
    8000459c:	000027b7          	lui	a5,0x2
    800045a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045a4:	0097ee63          	bltu	a5,s1,800045c0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045a8:	00000713          	li	a4,0
    800045ac:	000077b7          	lui	a5,0x7
    800045b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800045b4:	fce7eee3          	bltu	a5,a4,80004590 <_ZL11workerBodyBPv+0x20>
    800045b8:	00170713          	addi	a4,a4,1
    800045bc:	ff1ff06f          	j	800045ac <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800045c0:	00190913          	addi	s2,s2,1
    800045c4:	00f00793          	li	a5,15
    800045c8:	0527e063          	bltu	a5,s2,80004608 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	afc50513          	addi	a0,a0,-1284 # 800090c8 <CONSOLE_STATUS+0xb8>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	ac4080e7          	jalr	-1340(ra) # 80005098 <_Z11printStringPKc>
    800045dc:	00000613          	li	a2,0
    800045e0:	00a00593          	li	a1,10
    800045e4:	0009051b          	sext.w	a0,s2
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	c60080e7          	jalr	-928(ra) # 80005248 <_Z8printIntiii>
    800045f0:	00005517          	auipc	a0,0x5
    800045f4:	b4050513          	addi	a0,a0,-1216 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	aa0080e7          	jalr	-1376(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004600:	00000493          	li	s1,0
    80004604:	f99ff06f          	j	8000459c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004608:	00005517          	auipc	a0,0x5
    8000460c:	be850513          	addi	a0,a0,-1048 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	a88080e7          	jalr	-1400(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    80004618:	00100793          	li	a5,1
    8000461c:	00007717          	auipc	a4,0x7
    80004620:	f6f70f23          	sb	a5,-130(a4) # 8000b59a <_ZL9finishedB>
    thread_dispatch();
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	014080e7          	jalr	20(ra) # 80001638 <_Z15thread_dispatchv>
}
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	00013903          	ld	s2,0(sp)
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret

0000000080004644 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00913423          	sd	s1,8(sp)
    80004654:	01213023          	sd	s2,0(sp)
    80004658:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000465c:	00000913          	li	s2,0
    80004660:	0380006f          	j	80004698 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	fd4080e7          	jalr	-44(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000466c:	00148493          	addi	s1,s1,1
    80004670:	000027b7          	lui	a5,0x2
    80004674:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004678:	0097ee63          	bltu	a5,s1,80004694 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000467c:	00000713          	li	a4,0
    80004680:	000077b7          	lui	a5,0x7
    80004684:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004688:	fce7eee3          	bltu	a5,a4,80004664 <_ZL11workerBodyAPv+0x20>
    8000468c:	00170713          	addi	a4,a4,1
    80004690:	ff1ff06f          	j	80004680 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004694:	00190913          	addi	s2,s2,1
    80004698:	00900793          	li	a5,9
    8000469c:	0527e063          	bltu	a5,s2,800046dc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	a0850513          	addi	a0,a0,-1528 # 800090a8 <CONSOLE_STATUS+0x98>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	9f0080e7          	jalr	-1552(ra) # 80005098 <_Z11printStringPKc>
    800046b0:	00000613          	li	a2,0
    800046b4:	00a00593          	li	a1,10
    800046b8:	0009051b          	sext.w	a0,s2
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	b8c080e7          	jalr	-1140(ra) # 80005248 <_Z8printIntiii>
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	a6c50513          	addi	a0,a0,-1428 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	9cc080e7          	jalr	-1588(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046d4:	00000493          	li	s1,0
    800046d8:	f99ff06f          	j	80004670 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	b0450513          	addi	a0,a0,-1276 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	9b4080e7          	jalr	-1612(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    800046ec:	00100793          	li	a5,1
    800046f0:	00007717          	auipc	a4,0x7
    800046f4:	eaf705a3          	sb	a5,-341(a4) # 8000b59b <_ZL9finishedA>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004710:	fd010113          	addi	sp,sp,-48
    80004714:	02113423          	sd	ra,40(sp)
    80004718:	02813023          	sd	s0,32(sp)
    8000471c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004720:	00000613          	li	a2,0
    80004724:	00000597          	auipc	a1,0x0
    80004728:	f2058593          	addi	a1,a1,-224 # 80004644 <_ZL11workerBodyAPv>
    8000472c:	fd040513          	addi	a0,s0,-48
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	e04080e7          	jalr	-508(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	b0850513          	addi	a0,a0,-1272 # 80009240 <_ZZ6prtIntmE6digits+0x158>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	958080e7          	jalr	-1704(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004748:	00000613          	li	a2,0
    8000474c:	00000597          	auipc	a1,0x0
    80004750:	e2458593          	addi	a1,a1,-476 # 80004570 <_ZL11workerBodyBPv>
    80004754:	fd840513          	addi	a0,s0,-40
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	ddc080e7          	jalr	-548(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	af850513          	addi	a0,a0,-1288 # 80009258 <_ZZ6prtIntmE6digits+0x170>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	930080e7          	jalr	-1744(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004770:	00000613          	li	a2,0
    80004774:	00000597          	auipc	a1,0x0
    80004778:	c7c58593          	addi	a1,a1,-900 # 800043f0 <_ZL11workerBodyCPv>
    8000477c:	fe040513          	addi	a0,s0,-32
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	db4080e7          	jalr	-588(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004788:	00005517          	auipc	a0,0x5
    8000478c:	ae850513          	addi	a0,a0,-1304 # 80009270 <_ZZ6prtIntmE6digits+0x188>
    80004790:	00001097          	auipc	ra,0x1
    80004794:	908080e7          	jalr	-1784(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004798:	00000613          	li	a2,0
    8000479c:	00000597          	auipc	a1,0x0
    800047a0:	b0c58593          	addi	a1,a1,-1268 # 800042a8 <_ZL11workerBodyDPv>
    800047a4:	fe840513          	addi	a0,s0,-24
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	d8c080e7          	jalr	-628(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	ad850513          	addi	a0,a0,-1320 # 80009288 <_ZZ6prtIntmE6digits+0x1a0>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	8e0080e7          	jalr	-1824(ra) # 80005098 <_Z11printStringPKc>
    800047c0:	00c0006f          	j	800047cc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	e74080e7          	jalr	-396(ra) # 80001638 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800047cc:	00007797          	auipc	a5,0x7
    800047d0:	dcf7c783          	lbu	a5,-561(a5) # 8000b59b <_ZL9finishedA>
    800047d4:	fe0788e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047d8:	00007797          	auipc	a5,0x7
    800047dc:	dc27c783          	lbu	a5,-574(a5) # 8000b59a <_ZL9finishedB>
    800047e0:	fe0782e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047e4:	00007797          	auipc	a5,0x7
    800047e8:	db57c783          	lbu	a5,-587(a5) # 8000b599 <_ZL9finishedC>
    800047ec:	fc078ce3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	da87c783          	lbu	a5,-600(a5) # 8000b598 <_ZL9finishedD>
    800047f8:	fc0786e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800047fc:	02813083          	ld	ra,40(sp)
    80004800:	02013403          	ld	s0,32(sp)
    80004804:	03010113          	addi	sp,sp,48
    80004808:	00008067          	ret

000000008000480c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000480c:	fd010113          	addi	sp,sp,-48
    80004810:	02113423          	sd	ra,40(sp)
    80004814:	02813023          	sd	s0,32(sp)
    80004818:	00913c23          	sd	s1,24(sp)
    8000481c:	01213823          	sd	s2,16(sp)
    80004820:	01313423          	sd	s3,8(sp)
    80004824:	03010413          	addi	s0,sp,48
    80004828:	00050993          	mv	s3,a0
    8000482c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004830:	00000913          	li	s2,0
    80004834:	00c0006f          	j	80004840 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	79c080e7          	jalr	1948(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	eac080e7          	jalr	-340(ra) # 800016ec <_Z4getcv>
    80004848:	0005059b          	sext.w	a1,a0
    8000484c:	01b00793          	li	a5,27
    80004850:	02f58a63          	beq	a1,a5,80004884 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004854:	0084b503          	ld	a0,8(s1)
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	c64080e7          	jalr	-924(ra) # 800054bc <_ZN9BufferCPP3putEi>
        i++;
    80004860:	0019071b          	addiw	a4,s2,1
    80004864:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004868:	0004a683          	lw	a3,0(s1)
    8000486c:	0026979b          	slliw	a5,a3,0x2
    80004870:	00d787bb          	addw	a5,a5,a3
    80004874:	0017979b          	slliw	a5,a5,0x1
    80004878:	02f767bb          	remw	a5,a4,a5
    8000487c:	fc0792e3          	bnez	a5,80004840 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004880:	fb9ff06f          	j	80004838 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004884:	00100793          	li	a5,1
    80004888:	00007717          	auipc	a4,0x7
    8000488c:	d0f72c23          	sw	a5,-744(a4) # 8000b5a0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004890:	0209b783          	ld	a5,32(s3)
    80004894:	02100593          	li	a1,33
    80004898:	0087b503          	ld	a0,8(a5)
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	c20080e7          	jalr	-992(ra) # 800054bc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800048a4:	0104b503          	ld	a0,16(s1)
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	800080e7          	jalr	-2048(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    800048b0:	02813083          	ld	ra,40(sp)
    800048b4:	02013403          	ld	s0,32(sp)
    800048b8:	01813483          	ld	s1,24(sp)
    800048bc:	01013903          	ld	s2,16(sp)
    800048c0:	00813983          	ld	s3,8(sp)
    800048c4:	03010113          	addi	sp,sp,48
    800048c8:	00008067          	ret

00000000800048cc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	00813823          	sd	s0,16(sp)
    800048d8:	00913423          	sd	s1,8(sp)
    800048dc:	01213023          	sd	s2,0(sp)
    800048e0:	02010413          	addi	s0,sp,32
    800048e4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048e8:	00000913          	li	s2,0
    800048ec:	00c0006f          	j	800048f8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	6e4080e7          	jalr	1764(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	ca87a783          	lw	a5,-856(a5) # 8000b5a0 <_ZL9threadEnd>
    80004900:	02079e63          	bnez	a5,8000493c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004904:	0004a583          	lw	a1,0(s1)
    80004908:	0305859b          	addiw	a1,a1,48
    8000490c:	0084b503          	ld	a0,8(s1)
    80004910:	00001097          	auipc	ra,0x1
    80004914:	bac080e7          	jalr	-1108(ra) # 800054bc <_ZN9BufferCPP3putEi>
        i++;
    80004918:	0019071b          	addiw	a4,s2,1
    8000491c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004920:	0004a683          	lw	a3,0(s1)
    80004924:	0026979b          	slliw	a5,a3,0x2
    80004928:	00d787bb          	addw	a5,a5,a3
    8000492c:	0017979b          	slliw	a5,a5,0x1
    80004930:	02f767bb          	remw	a5,a4,a5
    80004934:	fc0792e3          	bnez	a5,800048f8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004938:	fb9ff06f          	j	800048f0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000493c:	0104b503          	ld	a0,16(s1)
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	768080e7          	jalr	1896(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	00013903          	ld	s2,0(sp)
    80004958:	02010113          	addi	sp,sp,32
    8000495c:	00008067          	ret

0000000080004960 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004960:	fd010113          	addi	sp,sp,-48
    80004964:	02113423          	sd	ra,40(sp)
    80004968:	02813023          	sd	s0,32(sp)
    8000496c:	00913c23          	sd	s1,24(sp)
    80004970:	01213823          	sd	s2,16(sp)
    80004974:	01313423          	sd	s3,8(sp)
    80004978:	01413023          	sd	s4,0(sp)
    8000497c:	03010413          	addi	s0,sp,48
    80004980:	00050993          	mv	s3,a0
    80004984:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004988:	00000a13          	li	s4,0
    8000498c:	01c0006f          	j	800049a8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	644080e7          	jalr	1604(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    80004998:	0500006f          	j	800049e8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000499c:	00a00513          	li	a0,10
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	d88080e7          	jalr	-632(ra) # 80001728 <_Z4putcc>
    while (!threadEnd) {
    800049a8:	00007797          	auipc	a5,0x7
    800049ac:	bf87a783          	lw	a5,-1032(a5) # 8000b5a0 <_ZL9threadEnd>
    800049b0:	06079263          	bnez	a5,80004a14 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800049b4:	00893503          	ld	a0,8(s2)
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	b94080e7          	jalr	-1132(ra) # 8000554c <_ZN9BufferCPP3getEv>
        i++;
    800049c0:	001a049b          	addiw	s1,s4,1
    800049c4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800049c8:	0ff57513          	andi	a0,a0,255
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	d5c080e7          	jalr	-676(ra) # 80001728 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800049d4:	00092703          	lw	a4,0(s2)
    800049d8:	0027179b          	slliw	a5,a4,0x2
    800049dc:	00e787bb          	addw	a5,a5,a4
    800049e0:	02f4e7bb          	remw	a5,s1,a5
    800049e4:	fa0786e3          	beqz	a5,80004990 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800049e8:	05000793          	li	a5,80
    800049ec:	02f4e4bb          	remw	s1,s1,a5
    800049f0:	fa049ce3          	bnez	s1,800049a8 <_ZN12ConsumerSync8consumerEPv+0x48>
    800049f4:	fa9ff06f          	j	8000499c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800049f8:	0209b783          	ld	a5,32(s3)
    800049fc:	0087b503          	ld	a0,8(a5)
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	b4c080e7          	jalr	-1204(ra) # 8000554c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004a08:	0ff57513          	andi	a0,a0,255
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	72c080e7          	jalr	1836(ra) # 80002138 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004a14:	0209b783          	ld	a5,32(s3)
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	bbc080e7          	jalr	-1092(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    80004a24:	fca04ae3          	bgtz	a0,800049f8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004a28:	01093503          	ld	a0,16(s2)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	67c080e7          	jalr	1660(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    80004a34:	02813083          	ld	ra,40(sp)
    80004a38:	02013403          	ld	s0,32(sp)
    80004a3c:	01813483          	ld	s1,24(sp)
    80004a40:	01013903          	ld	s2,16(sp)
    80004a44:	00813983          	ld	s3,8(sp)
    80004a48:	00013a03          	ld	s4,0(sp)
    80004a4c:	03010113          	addi	sp,sp,48
    80004a50:	00008067          	ret

0000000080004a54 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004a54:	f8010113          	addi	sp,sp,-128
    80004a58:	06113c23          	sd	ra,120(sp)
    80004a5c:	06813823          	sd	s0,112(sp)
    80004a60:	06913423          	sd	s1,104(sp)
    80004a64:	07213023          	sd	s2,96(sp)
    80004a68:	05313c23          	sd	s3,88(sp)
    80004a6c:	05413823          	sd	s4,80(sp)
    80004a70:	05513423          	sd	s5,72(sp)
    80004a74:	05613023          	sd	s6,64(sp)
    80004a78:	03713c23          	sd	s7,56(sp)
    80004a7c:	03813823          	sd	s8,48(sp)
    80004a80:	03913423          	sd	s9,40(sp)
    80004a84:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004a88:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a8c:	00004517          	auipc	a0,0x4
    80004a90:	66c50513          	addi	a0,a0,1644 # 800090f8 <_ZZ6prtIntmE6digits+0x10>
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	604080e7          	jalr	1540(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80004a9c:	01e00593          	li	a1,30
    80004aa0:	f8040493          	addi	s1,s0,-128
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	00000097          	auipc	ra,0x0
    80004aac:	678080e7          	jalr	1656(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	744080e7          	jalr	1860(ra) # 800051f8 <_Z11stringToIntPKc>
    80004abc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004ac0:	00004517          	auipc	a0,0x4
    80004ac4:	65850513          	addi	a0,a0,1624 # 80009118 <_ZZ6prtIntmE6digits+0x30>
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	5d0080e7          	jalr	1488(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80004ad0:	01e00593          	li	a1,30
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	648080e7          	jalr	1608(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80004ae0:	00048513          	mv	a0,s1
    80004ae4:	00000097          	auipc	ra,0x0
    80004ae8:	714080e7          	jalr	1812(ra) # 800051f8 <_Z11stringToIntPKc>
    80004aec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004af0:	00004517          	auipc	a0,0x4
    80004af4:	64850513          	addi	a0,a0,1608 # 80009138 <_ZZ6prtIntmE6digits+0x50>
    80004af8:	00000097          	auipc	ra,0x0
    80004afc:	5a0080e7          	jalr	1440(ra) # 80005098 <_Z11printStringPKc>
    80004b00:	00000613          	li	a2,0
    80004b04:	00a00593          	li	a1,10
    80004b08:	00090513          	mv	a0,s2
    80004b0c:	00000097          	auipc	ra,0x0
    80004b10:	73c080e7          	jalr	1852(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b14:	00004517          	auipc	a0,0x4
    80004b18:	63c50513          	addi	a0,a0,1596 # 80009150 <_ZZ6prtIntmE6digits+0x68>
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	57c080e7          	jalr	1404(ra) # 80005098 <_Z11printStringPKc>
    80004b24:	00000613          	li	a2,0
    80004b28:	00a00593          	li	a1,10
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	718080e7          	jalr	1816(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80004b38:	00004517          	auipc	a0,0x4
    80004b3c:	63050513          	addi	a0,a0,1584 # 80009168 <_ZZ6prtIntmE6digits+0x80>
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	558080e7          	jalr	1368(ra) # 80005098 <_Z11printStringPKc>
    if(threadNum > n) {
    80004b48:	0324c463          	blt	s1,s2,80004b70 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004b4c:	03205c63          	blez	s2,80004b84 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004b50:	03800513          	li	a0,56
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	28c080e7          	jalr	652(ra) # 80001de0 <_Znwm>
    80004b5c:	00050a93          	mv	s5,a0
    80004b60:	00048593          	mv	a1,s1
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	804080e7          	jalr	-2044(ra) # 80005368 <_ZN9BufferCPPC1Ei>
    80004b6c:	0300006f          	j	80004b9c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	60050513          	addi	a0,a0,1536 # 80009170 <_ZZ6prtIntmE6digits+0x88>
    80004b78:	00000097          	auipc	ra,0x0
    80004b7c:	520080e7          	jalr	1312(ra) # 80005098 <_Z11printStringPKc>
        return;
    80004b80:	0140006f          	j	80004b94 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b84:	00004517          	auipc	a0,0x4
    80004b88:	62c50513          	addi	a0,a0,1580 # 800091b0 <_ZZ6prtIntmE6digits+0xc8>
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	50c080e7          	jalr	1292(ra) # 80005098 <_Z11printStringPKc>
        return;
    80004b94:	000b8113          	mv	sp,s7
    80004b98:	2380006f          	j	80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004b9c:	01000513          	li	a0,16
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	240080e7          	jalr	576(ra) # 80001de0 <_Znwm>
    80004ba8:	00050493          	mv	s1,a0
    80004bac:	00000593          	li	a1,0
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	4b8080e7          	jalr	1208(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    80004bb8:	00007797          	auipc	a5,0x7
    80004bbc:	9e97b823          	sd	s1,-1552(a5) # 8000b5a8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004bc0:	00391793          	slli	a5,s2,0x3
    80004bc4:	00f78793          	addi	a5,a5,15
    80004bc8:	ff07f793          	andi	a5,a5,-16
    80004bcc:	40f10133          	sub	sp,sp,a5
    80004bd0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004bd4:	0019071b          	addiw	a4,s2,1
    80004bd8:	00171793          	slli	a5,a4,0x1
    80004bdc:	00e787b3          	add	a5,a5,a4
    80004be0:	00379793          	slli	a5,a5,0x3
    80004be4:	00f78793          	addi	a5,a5,15
    80004be8:	ff07f793          	andi	a5,a5,-16
    80004bec:	40f10133          	sub	sp,sp,a5
    80004bf0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004bf4:	00191c13          	slli	s8,s2,0x1
    80004bf8:	012c07b3          	add	a5,s8,s2
    80004bfc:	00379793          	slli	a5,a5,0x3
    80004c00:	00fa07b3          	add	a5,s4,a5
    80004c04:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c08:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004c0c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004c10:	02800513          	li	a0,40
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	1cc080e7          	jalr	460(ra) # 80001de0 <_Znwm>
    80004c1c:	00050b13          	mv	s6,a0
    80004c20:	012c0c33          	add	s8,s8,s2
    80004c24:	003c1c13          	slli	s8,s8,0x3
    80004c28:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	3d0080e7          	jalr	976(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	85478793          	addi	a5,a5,-1964 # 8000b488 <_ZTV12ConsumerSync+0x10>
    80004c3c:	00fb3023          	sd	a5,0(s6)
    80004c40:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004c44:	000b0513          	mv	a0,s6
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	358080e7          	jalr	856(ra) # 80001fa0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c50:	00000493          	li	s1,0
    80004c54:	0380006f          	j	80004c8c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c58:	00007797          	auipc	a5,0x7
    80004c5c:	80878793          	addi	a5,a5,-2040 # 8000b460 <_ZTV12ProducerSync+0x10>
    80004c60:	00fcb023          	sd	a5,0(s9)
    80004c64:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004c68:	00349793          	slli	a5,s1,0x3
    80004c6c:	00f987b3          	add	a5,s3,a5
    80004c70:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004c74:	00349793          	slli	a5,s1,0x3
    80004c78:	00f987b3          	add	a5,s3,a5
    80004c7c:	0007b503          	ld	a0,0(a5)
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	320080e7          	jalr	800(ra) # 80001fa0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c88:	0014849b          	addiw	s1,s1,1
    80004c8c:	0b24d063          	bge	s1,s2,80004d2c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004c90:	00149793          	slli	a5,s1,0x1
    80004c94:	009787b3          	add	a5,a5,s1
    80004c98:	00379793          	slli	a5,a5,0x3
    80004c9c:	00fa07b3          	add	a5,s4,a5
    80004ca0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004ca4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004ca8:	00007717          	auipc	a4,0x7
    80004cac:	90073703          	ld	a4,-1792(a4) # 8000b5a8 <_ZL10waitForAll>
    80004cb0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004cb4:	02905863          	blez	s1,80004ce4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004cb8:	02800513          	li	a0,40
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	124080e7          	jalr	292(ra) # 80001de0 <_Znwm>
    80004cc4:	00050c93          	mv	s9,a0
    80004cc8:	00149c13          	slli	s8,s1,0x1
    80004ccc:	009c0c33          	add	s8,s8,s1
    80004cd0:	003c1c13          	slli	s8,s8,0x3
    80004cd4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	324080e7          	jalr	804(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80004ce0:	f79ff06f          	j	80004c58 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ce4:	02800513          	li	a0,40
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	0f8080e7          	jalr	248(ra) # 80001de0 <_Znwm>
    80004cf0:	00050c93          	mv	s9,a0
    80004cf4:	00149c13          	slli	s8,s1,0x1
    80004cf8:	009c0c33          	add	s8,s8,s1
    80004cfc:	003c1c13          	slli	s8,s8,0x3
    80004d00:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	2f8080e7          	jalr	760(ra) # 80001ffc <_ZN6ThreadC1Ev>
    80004d0c:	00006797          	auipc	a5,0x6
    80004d10:	72c78793          	addi	a5,a5,1836 # 8000b438 <_ZTV16ProducerKeyboard+0x10>
    80004d14:	00fcb023          	sd	a5,0(s9)
    80004d18:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004d1c:	00349793          	slli	a5,s1,0x3
    80004d20:	00f987b3          	add	a5,s3,a5
    80004d24:	0197b023          	sd	s9,0(a5)
    80004d28:	f4dff06f          	j	80004c74 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	2a8080e7          	jalr	680(ra) # 80001fd4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d34:	00000493          	li	s1,0
    80004d38:	00994e63          	blt	s2,s1,80004d54 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004d3c:	00007517          	auipc	a0,0x7
    80004d40:	86c53503          	ld	a0,-1940(a0) # 8000b5a8 <_ZL10waitForAll>
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	348080e7          	jalr	840(ra) # 8000208c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d4c:	0014849b          	addiw	s1,s1,1
    80004d50:	fe9ff06f          	j	80004d38 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004d54:	00000493          	li	s1,0
    80004d58:	0080006f          	j	80004d60 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004d5c:	0014849b          	addiw	s1,s1,1
    80004d60:	0324d263          	bge	s1,s2,80004d84 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004d64:	00349793          	slli	a5,s1,0x3
    80004d68:	00f987b3          	add	a5,s3,a5
    80004d6c:	0007b503          	ld	a0,0(a5)
    80004d70:	fe0506e3          	beqz	a0,80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004d74:	00053783          	ld	a5,0(a0)
    80004d78:	0087b783          	ld	a5,8(a5)
    80004d7c:	000780e7          	jalr	a5
    80004d80:	fddff06f          	j	80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004d84:	000b0a63          	beqz	s6,80004d98 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004d88:	000b3783          	ld	a5,0(s6)
    80004d8c:	0087b783          	ld	a5,8(a5)
    80004d90:	000b0513          	mv	a0,s6
    80004d94:	000780e7          	jalr	a5
    delete waitForAll;
    80004d98:	00007517          	auipc	a0,0x7
    80004d9c:	81053503          	ld	a0,-2032(a0) # 8000b5a8 <_ZL10waitForAll>
    80004da0:	00050863          	beqz	a0,80004db0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004da4:	00053783          	ld	a5,0(a0)
    80004da8:	0087b783          	ld	a5,8(a5)
    80004dac:	000780e7          	jalr	a5
    delete buffer;
    80004db0:	000a8e63          	beqz	s5,80004dcc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004db4:	000a8513          	mv	a0,s5
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	8a8080e7          	jalr	-1880(ra) # 80005660 <_ZN9BufferCPPD1Ev>
    80004dc0:	000a8513          	mv	a0,s5
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	06c080e7          	jalr	108(ra) # 80001e30 <_ZdlPv>
    80004dcc:	000b8113          	mv	sp,s7

}
    80004dd0:	f8040113          	addi	sp,s0,-128
    80004dd4:	07813083          	ld	ra,120(sp)
    80004dd8:	07013403          	ld	s0,112(sp)
    80004ddc:	06813483          	ld	s1,104(sp)
    80004de0:	06013903          	ld	s2,96(sp)
    80004de4:	05813983          	ld	s3,88(sp)
    80004de8:	05013a03          	ld	s4,80(sp)
    80004dec:	04813a83          	ld	s5,72(sp)
    80004df0:	04013b03          	ld	s6,64(sp)
    80004df4:	03813b83          	ld	s7,56(sp)
    80004df8:	03013c03          	ld	s8,48(sp)
    80004dfc:	02813c83          	ld	s9,40(sp)
    80004e00:	08010113          	addi	sp,sp,128
    80004e04:	00008067          	ret
    80004e08:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004e0c:	000a8513          	mv	a0,s5
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	020080e7          	jalr	32(ra) # 80001e30 <_ZdlPv>
    80004e18:	00048513          	mv	a0,s1
    80004e1c:	00008097          	auipc	ra,0x8
    80004e20:	86c080e7          	jalr	-1940(ra) # 8000c688 <_Unwind_Resume>
    80004e24:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	004080e7          	jalr	4(ra) # 80001e30 <_ZdlPv>
    80004e34:	00090513          	mv	a0,s2
    80004e38:	00008097          	auipc	ra,0x8
    80004e3c:	850080e7          	jalr	-1968(ra) # 8000c688 <_Unwind_Resume>
    80004e40:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004e44:	000b0513          	mv	a0,s6
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	fe8080e7          	jalr	-24(ra) # 80001e30 <_ZdlPv>
    80004e50:	00048513          	mv	a0,s1
    80004e54:	00008097          	auipc	ra,0x8
    80004e58:	834080e7          	jalr	-1996(ra) # 8000c688 <_Unwind_Resume>
    80004e5c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004e60:	000c8513          	mv	a0,s9
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	fcc080e7          	jalr	-52(ra) # 80001e30 <_ZdlPv>
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00008097          	auipc	ra,0x8
    80004e74:	818080e7          	jalr	-2024(ra) # 8000c688 <_Unwind_Resume>
    80004e78:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004e7c:	000c8513          	mv	a0,s9
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	fb0080e7          	jalr	-80(ra) # 80001e30 <_ZdlPv>
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	00007097          	auipc	ra,0x7
    80004e90:	7fc080e7          	jalr	2044(ra) # 8000c688 <_Unwind_Resume>

0000000080004e94 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004e94:	ff010113          	addi	sp,sp,-16
    80004e98:	00113423          	sd	ra,8(sp)
    80004e9c:	00813023          	sd	s0,0(sp)
    80004ea0:	01010413          	addi	s0,sp,16
    80004ea4:	00006797          	auipc	a5,0x6
    80004ea8:	5e478793          	addi	a5,a5,1508 # 8000b488 <_ZTV12ConsumerSync+0x10>
    80004eac:	00f53023          	sd	a5,0(a0)
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	ffc080e7          	jalr	-4(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004eb8:	00813083          	ld	ra,8(sp)
    80004ebc:	00013403          	ld	s0,0(sp)
    80004ec0:	01010113          	addi	sp,sp,16
    80004ec4:	00008067          	ret

0000000080004ec8 <_ZN12ConsumerSyncD0Ev>:
    80004ec8:	fe010113          	addi	sp,sp,-32
    80004ecc:	00113c23          	sd	ra,24(sp)
    80004ed0:	00813823          	sd	s0,16(sp)
    80004ed4:	00913423          	sd	s1,8(sp)
    80004ed8:	02010413          	addi	s0,sp,32
    80004edc:	00050493          	mv	s1,a0
    80004ee0:	00006797          	auipc	a5,0x6
    80004ee4:	5a878793          	addi	a5,a5,1448 # 8000b488 <_ZTV12ConsumerSync+0x10>
    80004ee8:	00f53023          	sd	a5,0(a0)
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	fc0080e7          	jalr	-64(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	f38080e7          	jalr	-200(ra) # 80001e30 <_ZdlPv>
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004f14:	ff010113          	addi	sp,sp,-16
    80004f18:	00113423          	sd	ra,8(sp)
    80004f1c:	00813023          	sd	s0,0(sp)
    80004f20:	01010413          	addi	s0,sp,16
    80004f24:	00006797          	auipc	a5,0x6
    80004f28:	53c78793          	addi	a5,a5,1340 # 8000b460 <_ZTV12ProducerSync+0x10>
    80004f2c:	00f53023          	sd	a5,0(a0)
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	f7c080e7          	jalr	-132(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004f38:	00813083          	ld	ra,8(sp)
    80004f3c:	00013403          	ld	s0,0(sp)
    80004f40:	01010113          	addi	sp,sp,16
    80004f44:	00008067          	ret

0000000080004f48 <_ZN12ProducerSyncD0Ev>:
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	00050493          	mv	s1,a0
    80004f60:	00006797          	auipc	a5,0x6
    80004f64:	50078793          	addi	a5,a5,1280 # 8000b460 <_ZTV12ProducerSync+0x10>
    80004f68:	00f53023          	sd	a5,0(a0)
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	f40080e7          	jalr	-192(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004f74:	00048513          	mv	a0,s1
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	eb8080e7          	jalr	-328(ra) # 80001e30 <_ZdlPv>
    80004f80:	01813083          	ld	ra,24(sp)
    80004f84:	01013403          	ld	s0,16(sp)
    80004f88:	00813483          	ld	s1,8(sp)
    80004f8c:	02010113          	addi	sp,sp,32
    80004f90:	00008067          	ret

0000000080004f94 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004f94:	ff010113          	addi	sp,sp,-16
    80004f98:	00113423          	sd	ra,8(sp)
    80004f9c:	00813023          	sd	s0,0(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	00006797          	auipc	a5,0x6
    80004fa8:	49478793          	addi	a5,a5,1172 # 8000b438 <_ZTV16ProducerKeyboard+0x10>
    80004fac:	00f53023          	sd	a5,0(a0)
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	efc080e7          	jalr	-260(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004fb8:	00813083          	ld	ra,8(sp)
    80004fbc:	00013403          	ld	s0,0(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret

0000000080004fc8 <_ZN16ProducerKeyboardD0Ev>:
    80004fc8:	fe010113          	addi	sp,sp,-32
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00913423          	sd	s1,8(sp)
    80004fd8:	02010413          	addi	s0,sp,32
    80004fdc:	00050493          	mv	s1,a0
    80004fe0:	00006797          	auipc	a5,0x6
    80004fe4:	45878793          	addi	a5,a5,1112 # 8000b438 <_ZTV16ProducerKeyboard+0x10>
    80004fe8:	00f53023          	sd	a5,0(a0)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	ec0080e7          	jalr	-320(ra) # 80001eac <_ZN6ThreadD1Ev>
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	e38080e7          	jalr	-456(ra) # 80001e30 <_ZdlPv>
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005014:	ff010113          	addi	sp,sp,-16
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	00813023          	sd	s0,0(sp)
    80005020:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005024:	02053583          	ld	a1,32(a0)
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	7e4080e7          	jalr	2020(ra) # 8000480c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret

0000000080005040 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005040:	ff010113          	addi	sp,sp,-16
    80005044:	00113423          	sd	ra,8(sp)
    80005048:	00813023          	sd	s0,0(sp)
    8000504c:	01010413          	addi	s0,sp,16
        producer(td);
    80005050:	02053583          	ld	a1,32(a0)
    80005054:	00000097          	auipc	ra,0x0
    80005058:	878080e7          	jalr	-1928(ra) # 800048cc <_ZN12ProducerSync8producerEPv>
    }
    8000505c:	00813083          	ld	ra,8(sp)
    80005060:	00013403          	ld	s0,0(sp)
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret

000000008000506c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00113423          	sd	ra,8(sp)
    80005074:	00813023          	sd	s0,0(sp)
    80005078:	01010413          	addi	s0,sp,16
        consumer(td);
    8000507c:	02053583          	ld	a1,32(a0)
    80005080:	00000097          	auipc	ra,0x0
    80005084:	8e0080e7          	jalr	-1824(ra) # 80004960 <_ZN12ConsumerSync8consumerEPv>
    }
    80005088:	00813083          	ld	ra,8(sp)
    8000508c:	00013403          	ld	s0,0(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	02010413          	addi	s0,sp,32
    800050ac:	00050493          	mv	s1,a0
    LOCK();
    800050b0:	00100613          	li	a2,1
    800050b4:	00000593          	li	a1,0
    800050b8:	00006517          	auipc	a0,0x6
    800050bc:	4f850513          	addi	a0,a0,1272 # 8000b5b0 <lockPrint>
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	39c080e7          	jalr	924(ra) # 8000145c <copy_and_swap>
    800050c8:	00050863          	beqz	a0,800050d8 <_Z11printStringPKc+0x40>
    800050cc:	ffffc097          	auipc	ra,0xffffc
    800050d0:	56c080e7          	jalr	1388(ra) # 80001638 <_Z15thread_dispatchv>
    800050d4:	fddff06f          	j	800050b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800050d8:	0004c503          	lbu	a0,0(s1)
    800050dc:	00050a63          	beqz	a0,800050f0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	648080e7          	jalr	1608(ra) # 80001728 <_Z4putcc>
        string++;
    800050e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800050ec:	fedff06f          	j	800050d8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800050f0:	00000613          	li	a2,0
    800050f4:	00100593          	li	a1,1
    800050f8:	00006517          	auipc	a0,0x6
    800050fc:	4b850513          	addi	a0,a0,1208 # 8000b5b0 <lockPrint>
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	35c080e7          	jalr	860(ra) # 8000145c <copy_and_swap>
    80005108:	fe0514e3          	bnez	a0,800050f0 <_Z11printStringPKc+0x58>
}
    8000510c:	01813083          	ld	ra,24(sp)
    80005110:	01013403          	ld	s0,16(sp)
    80005114:	00813483          	ld	s1,8(sp)
    80005118:	02010113          	addi	sp,sp,32
    8000511c:	00008067          	ret

0000000080005120 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005120:	fd010113          	addi	sp,sp,-48
    80005124:	02113423          	sd	ra,40(sp)
    80005128:	02813023          	sd	s0,32(sp)
    8000512c:	00913c23          	sd	s1,24(sp)
    80005130:	01213823          	sd	s2,16(sp)
    80005134:	01313423          	sd	s3,8(sp)
    80005138:	01413023          	sd	s4,0(sp)
    8000513c:	03010413          	addi	s0,sp,48
    80005140:	00050993          	mv	s3,a0
    80005144:	00058a13          	mv	s4,a1
    LOCK();
    80005148:	00100613          	li	a2,1
    8000514c:	00000593          	li	a1,0
    80005150:	00006517          	auipc	a0,0x6
    80005154:	46050513          	addi	a0,a0,1120 # 8000b5b0 <lockPrint>
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	304080e7          	jalr	772(ra) # 8000145c <copy_and_swap>
    80005160:	00050863          	beqz	a0,80005170 <_Z9getStringPci+0x50>
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	4d4080e7          	jalr	1236(ra) # 80001638 <_Z15thread_dispatchv>
    8000516c:	fddff06f          	j	80005148 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005170:	00000913          	li	s2,0
    80005174:	00090493          	mv	s1,s2
    80005178:	0019091b          	addiw	s2,s2,1
    8000517c:	03495a63          	bge	s2,s4,800051b0 <_Z9getStringPci+0x90>
        cc = getc();
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	56c080e7          	jalr	1388(ra) # 800016ec <_Z4getcv>
        if(cc < 1)
    80005188:	02050463          	beqz	a0,800051b0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000518c:	009984b3          	add	s1,s3,s1
    80005190:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005194:	00a00793          	li	a5,10
    80005198:	00f50a63          	beq	a0,a5,800051ac <_Z9getStringPci+0x8c>
    8000519c:	00d00793          	li	a5,13
    800051a0:	fcf51ae3          	bne	a0,a5,80005174 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800051a4:	00090493          	mv	s1,s2
    800051a8:	0080006f          	j	800051b0 <_Z9getStringPci+0x90>
    800051ac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800051b0:	009984b3          	add	s1,s3,s1
    800051b4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800051b8:	00000613          	li	a2,0
    800051bc:	00100593          	li	a1,1
    800051c0:	00006517          	auipc	a0,0x6
    800051c4:	3f050513          	addi	a0,a0,1008 # 8000b5b0 <lockPrint>
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	294080e7          	jalr	660(ra) # 8000145c <copy_and_swap>
    800051d0:	fe0514e3          	bnez	a0,800051b8 <_Z9getStringPci+0x98>
    return buf;
}
    800051d4:	00098513          	mv	a0,s3
    800051d8:	02813083          	ld	ra,40(sp)
    800051dc:	02013403          	ld	s0,32(sp)
    800051e0:	01813483          	ld	s1,24(sp)
    800051e4:	01013903          	ld	s2,16(sp)
    800051e8:	00813983          	ld	s3,8(sp)
    800051ec:	00013a03          	ld	s4,0(sp)
    800051f0:	03010113          	addi	sp,sp,48
    800051f4:	00008067          	ret

00000000800051f8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800051f8:	ff010113          	addi	sp,sp,-16
    800051fc:	00813423          	sd	s0,8(sp)
    80005200:	01010413          	addi	s0,sp,16
    80005204:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005208:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000520c:	0006c603          	lbu	a2,0(a3)
    80005210:	fd06071b          	addiw	a4,a2,-48
    80005214:	0ff77713          	andi	a4,a4,255
    80005218:	00900793          	li	a5,9
    8000521c:	02e7e063          	bltu	a5,a4,8000523c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005220:	0025179b          	slliw	a5,a0,0x2
    80005224:	00a787bb          	addw	a5,a5,a0
    80005228:	0017979b          	slliw	a5,a5,0x1
    8000522c:	00168693          	addi	a3,a3,1
    80005230:	00c787bb          	addw	a5,a5,a2
    80005234:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005238:	fd5ff06f          	j	8000520c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000523c:	00813403          	ld	s0,8(sp)
    80005240:	01010113          	addi	sp,sp,16
    80005244:	00008067          	ret

0000000080005248 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005248:	fc010113          	addi	sp,sp,-64
    8000524c:	02113c23          	sd	ra,56(sp)
    80005250:	02813823          	sd	s0,48(sp)
    80005254:	02913423          	sd	s1,40(sp)
    80005258:	03213023          	sd	s2,32(sp)
    8000525c:	01313c23          	sd	s3,24(sp)
    80005260:	04010413          	addi	s0,sp,64
    80005264:	00050493          	mv	s1,a0
    80005268:	00058913          	mv	s2,a1
    8000526c:	00060993          	mv	s3,a2
    LOCK();
    80005270:	00100613          	li	a2,1
    80005274:	00000593          	li	a1,0
    80005278:	00006517          	auipc	a0,0x6
    8000527c:	33850513          	addi	a0,a0,824 # 8000b5b0 <lockPrint>
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	1dc080e7          	jalr	476(ra) # 8000145c <copy_and_swap>
    80005288:	00050863          	beqz	a0,80005298 <_Z8printIntiii+0x50>
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	3ac080e7          	jalr	940(ra) # 80001638 <_Z15thread_dispatchv>
    80005294:	fddff06f          	j	80005270 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005298:	00098463          	beqz	s3,800052a0 <_Z8printIntiii+0x58>
    8000529c:	0804c463          	bltz	s1,80005324 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800052a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800052a4:	00000593          	li	a1,0
    }

    i = 0;
    800052a8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800052ac:	0009079b          	sext.w	a5,s2
    800052b0:	0325773b          	remuw	a4,a0,s2
    800052b4:	00048613          	mv	a2,s1
    800052b8:	0014849b          	addiw	s1,s1,1
    800052bc:	02071693          	slli	a3,a4,0x20
    800052c0:	0206d693          	srli	a3,a3,0x20
    800052c4:	00006717          	auipc	a4,0x6
    800052c8:	1dc70713          	addi	a4,a4,476 # 8000b4a0 <digits>
    800052cc:	00d70733          	add	a4,a4,a3
    800052d0:	00074683          	lbu	a3,0(a4)
    800052d4:	fd040713          	addi	a4,s0,-48
    800052d8:	00c70733          	add	a4,a4,a2
    800052dc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800052e0:	0005071b          	sext.w	a4,a0
    800052e4:	0325553b          	divuw	a0,a0,s2
    800052e8:	fcf772e3          	bgeu	a4,a5,800052ac <_Z8printIntiii+0x64>
    if(neg)
    800052ec:	00058c63          	beqz	a1,80005304 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800052f0:	fd040793          	addi	a5,s0,-48
    800052f4:	009784b3          	add	s1,a5,s1
    800052f8:	02d00793          	li	a5,45
    800052fc:	fef48823          	sb	a5,-16(s1)
    80005300:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005304:	fff4849b          	addiw	s1,s1,-1
    80005308:	0204c463          	bltz	s1,80005330 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000530c:	fd040793          	addi	a5,s0,-48
    80005310:	009787b3          	add	a5,a5,s1
    80005314:	ff07c503          	lbu	a0,-16(a5)
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	410080e7          	jalr	1040(ra) # 80001728 <_Z4putcc>
    80005320:	fe5ff06f          	j	80005304 <_Z8printIntiii+0xbc>
        x = -xx;
    80005324:	4090053b          	negw	a0,s1
        neg = 1;
    80005328:	00100593          	li	a1,1
        x = -xx;
    8000532c:	f7dff06f          	j	800052a8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005330:	00000613          	li	a2,0
    80005334:	00100593          	li	a1,1
    80005338:	00006517          	auipc	a0,0x6
    8000533c:	27850513          	addi	a0,a0,632 # 8000b5b0 <lockPrint>
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	11c080e7          	jalr	284(ra) # 8000145c <copy_and_swap>
    80005348:	fe0514e3          	bnez	a0,80005330 <_Z8printIntiii+0xe8>
    8000534c:	03813083          	ld	ra,56(sp)
    80005350:	03013403          	ld	s0,48(sp)
    80005354:	02813483          	ld	s1,40(sp)
    80005358:	02013903          	ld	s2,32(sp)
    8000535c:	01813983          	ld	s3,24(sp)
    80005360:	04010113          	addi	sp,sp,64
    80005364:	00008067          	ret

0000000080005368 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005368:	fd010113          	addi	sp,sp,-48
    8000536c:	02113423          	sd	ra,40(sp)
    80005370:	02813023          	sd	s0,32(sp)
    80005374:	00913c23          	sd	s1,24(sp)
    80005378:	01213823          	sd	s2,16(sp)
    8000537c:	01313423          	sd	s3,8(sp)
    80005380:	03010413          	addi	s0,sp,48
    80005384:	00050493          	mv	s1,a0
    80005388:	00058913          	mv	s2,a1
    8000538c:	0015879b          	addiw	a5,a1,1
    80005390:	0007851b          	sext.w	a0,a5
    80005394:	00f4a023          	sw	a5,0(s1)
    80005398:	0004a823          	sw	zero,16(s1)
    8000539c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800053a0:	00251513          	slli	a0,a0,0x2
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	110080e7          	jalr	272(ra) # 800014b4 <_Z9mem_allocm>
    800053ac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800053b0:	01000513          	li	a0,16
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	a2c080e7          	jalr	-1492(ra) # 80001de0 <_Znwm>
    800053bc:	00050993          	mv	s3,a0
    800053c0:	00000593          	li	a1,0
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	ca4080e7          	jalr	-860(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    800053cc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800053d0:	01000513          	li	a0,16
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	a0c080e7          	jalr	-1524(ra) # 80001de0 <_Znwm>
    800053dc:	00050993          	mv	s3,a0
    800053e0:	00090593          	mv	a1,s2
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	c84080e7          	jalr	-892(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    800053ec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800053f0:	01000513          	li	a0,16
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	9ec080e7          	jalr	-1556(ra) # 80001de0 <_Znwm>
    800053fc:	00050913          	mv	s2,a0
    80005400:	00100593          	li	a1,1
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	c64080e7          	jalr	-924(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    8000540c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005410:	01000513          	li	a0,16
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	9cc080e7          	jalr	-1588(ra) # 80001de0 <_Znwm>
    8000541c:	00050913          	mv	s2,a0
    80005420:	00100593          	li	a1,1
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	c44080e7          	jalr	-956(ra) # 80002068 <_ZN9SemaphoreC1Ej>
    8000542c:	0324b823          	sd	s2,48(s1)
}
    80005430:	02813083          	ld	ra,40(sp)
    80005434:	02013403          	ld	s0,32(sp)
    80005438:	01813483          	ld	s1,24(sp)
    8000543c:	01013903          	ld	s2,16(sp)
    80005440:	00813983          	ld	s3,8(sp)
    80005444:	03010113          	addi	sp,sp,48
    80005448:	00008067          	ret
    8000544c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005450:	00098513          	mv	a0,s3
    80005454:	ffffd097          	auipc	ra,0xffffd
    80005458:	9dc080e7          	jalr	-1572(ra) # 80001e30 <_ZdlPv>
    8000545c:	00048513          	mv	a0,s1
    80005460:	00007097          	auipc	ra,0x7
    80005464:	228080e7          	jalr	552(ra) # 8000c688 <_Unwind_Resume>
    80005468:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000546c:	00098513          	mv	a0,s3
    80005470:	ffffd097          	auipc	ra,0xffffd
    80005474:	9c0080e7          	jalr	-1600(ra) # 80001e30 <_ZdlPv>
    80005478:	00048513          	mv	a0,s1
    8000547c:	00007097          	auipc	ra,0x7
    80005480:	20c080e7          	jalr	524(ra) # 8000c688 <_Unwind_Resume>
    80005484:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005488:	00090513          	mv	a0,s2
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	9a4080e7          	jalr	-1628(ra) # 80001e30 <_ZdlPv>
    80005494:	00048513          	mv	a0,s1
    80005498:	00007097          	auipc	ra,0x7
    8000549c:	1f0080e7          	jalr	496(ra) # 8000c688 <_Unwind_Resume>
    800054a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800054a4:	00090513          	mv	a0,s2
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	988080e7          	jalr	-1656(ra) # 80001e30 <_ZdlPv>
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00007097          	auipc	ra,0x7
    800054b8:	1d4080e7          	jalr	468(ra) # 8000c688 <_Unwind_Resume>

00000000800054bc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00113c23          	sd	ra,24(sp)
    800054c4:	00813823          	sd	s0,16(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	01213023          	sd	s2,0(sp)
    800054d0:	02010413          	addi	s0,sp,32
    800054d4:	00050493          	mv	s1,a0
    800054d8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800054dc:	01853503          	ld	a0,24(a0)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	bac080e7          	jalr	-1108(ra) # 8000208c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800054e8:	0304b503          	ld	a0,48(s1)
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	ba0080e7          	jalr	-1120(ra) # 8000208c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800054f4:	0084b783          	ld	a5,8(s1)
    800054f8:	0144a703          	lw	a4,20(s1)
    800054fc:	00271713          	slli	a4,a4,0x2
    80005500:	00e787b3          	add	a5,a5,a4
    80005504:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005508:	0144a783          	lw	a5,20(s1)
    8000550c:	0017879b          	addiw	a5,a5,1
    80005510:	0004a703          	lw	a4,0(s1)
    80005514:	02e7e7bb          	remw	a5,a5,a4
    80005518:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000551c:	0304b503          	ld	a0,48(s1)
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	b88080e7          	jalr	-1144(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005528:	0204b503          	ld	a0,32(s1)
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	b7c080e7          	jalr	-1156(ra) # 800020a8 <_ZN9Semaphore6signalEv>

}
    80005534:	01813083          	ld	ra,24(sp)
    80005538:	01013403          	ld	s0,16(sp)
    8000553c:	00813483          	ld	s1,8(sp)
    80005540:	00013903          	ld	s2,0(sp)
    80005544:	02010113          	addi	sp,sp,32
    80005548:	00008067          	ret

000000008000554c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000554c:	fe010113          	addi	sp,sp,-32
    80005550:	00113c23          	sd	ra,24(sp)
    80005554:	00813823          	sd	s0,16(sp)
    80005558:	00913423          	sd	s1,8(sp)
    8000555c:	01213023          	sd	s2,0(sp)
    80005560:	02010413          	addi	s0,sp,32
    80005564:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005568:	02053503          	ld	a0,32(a0)
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	b20080e7          	jalr	-1248(ra) # 8000208c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005574:	0284b503          	ld	a0,40(s1)
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	b14080e7          	jalr	-1260(ra) # 8000208c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005580:	0084b703          	ld	a4,8(s1)
    80005584:	0104a783          	lw	a5,16(s1)
    80005588:	00279693          	slli	a3,a5,0x2
    8000558c:	00d70733          	add	a4,a4,a3
    80005590:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005594:	0017879b          	addiw	a5,a5,1
    80005598:	0004a703          	lw	a4,0(s1)
    8000559c:	02e7e7bb          	remw	a5,a5,a4
    800055a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800055a4:	0284b503          	ld	a0,40(s1)
    800055a8:	ffffd097          	auipc	ra,0xffffd
    800055ac:	b00080e7          	jalr	-1280(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800055b0:	0184b503          	ld	a0,24(s1)
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	af4080e7          	jalr	-1292(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800055bc:	00090513          	mv	a0,s2
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	00813483          	ld	s1,8(sp)
    800055cc:	00013903          	ld	s2,0(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret

00000000800055d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800055d8:	fe010113          	addi	sp,sp,-32
    800055dc:	00113c23          	sd	ra,24(sp)
    800055e0:	00813823          	sd	s0,16(sp)
    800055e4:	00913423          	sd	s1,8(sp)
    800055e8:	01213023          	sd	s2,0(sp)
    800055ec:	02010413          	addi	s0,sp,32
    800055f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800055f4:	02853503          	ld	a0,40(a0)
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	a94080e7          	jalr	-1388(ra) # 8000208c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005600:	0304b503          	ld	a0,48(s1)
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	a88080e7          	jalr	-1400(ra) # 8000208c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000560c:	0144a783          	lw	a5,20(s1)
    80005610:	0104a903          	lw	s2,16(s1)
    80005614:	0327ce63          	blt	a5,s2,80005650 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005618:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000561c:	0304b503          	ld	a0,48(s1)
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	a88080e7          	jalr	-1400(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005628:	0284b503          	ld	a0,40(s1)
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	a7c080e7          	jalr	-1412(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005634:	00090513          	mv	a0,s2
    80005638:	01813083          	ld	ra,24(sp)
    8000563c:	01013403          	ld	s0,16(sp)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	00013903          	ld	s2,0(sp)
    80005648:	02010113          	addi	sp,sp,32
    8000564c:	00008067          	ret
        ret = cap - head + tail;
    80005650:	0004a703          	lw	a4,0(s1)
    80005654:	4127093b          	subw	s2,a4,s2
    80005658:	00f9093b          	addw	s2,s2,a5
    8000565c:	fc1ff06f          	j	8000561c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005660 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	02010413          	addi	s0,sp,32
    80005674:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005678:	00a00513          	li	a0,10
    8000567c:	ffffd097          	auipc	ra,0xffffd
    80005680:	abc080e7          	jalr	-1348(ra) # 80002138 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005684:	00004517          	auipc	a0,0x4
    80005688:	c1c50513          	addi	a0,a0,-996 # 800092a0 <_ZZ6prtIntmE6digits+0x1b8>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	a0c080e7          	jalr	-1524(ra) # 80005098 <_Z11printStringPKc>
    while (getCnt()) {
    80005694:	00048513          	mv	a0,s1
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	f40080e7          	jalr	-192(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    800056a0:	02050c63          	beqz	a0,800056d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800056a4:	0084b783          	ld	a5,8(s1)
    800056a8:	0104a703          	lw	a4,16(s1)
    800056ac:	00271713          	slli	a4,a4,0x2
    800056b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800056b4:	0007c503          	lbu	a0,0(a5)
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	a80080e7          	jalr	-1408(ra) # 80002138 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800056c0:	0104a783          	lw	a5,16(s1)
    800056c4:	0017879b          	addiw	a5,a5,1
    800056c8:	0004a703          	lw	a4,0(s1)
    800056cc:	02e7e7bb          	remw	a5,a5,a4
    800056d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800056d4:	fc1ff06f          	j	80005694 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800056d8:	02100513          	li	a0,33
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	a5c080e7          	jalr	-1444(ra) # 80002138 <_ZN7Console4putcEc>
    Console::putc('\n');
    800056e4:	00a00513          	li	a0,10
    800056e8:	ffffd097          	auipc	ra,0xffffd
    800056ec:	a50080e7          	jalr	-1456(ra) # 80002138 <_ZN7Console4putcEc>
    mem_free(buffer);
    800056f0:	0084b503          	ld	a0,8(s1)
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	e00080e7          	jalr	-512(ra) # 800014f4 <_Z8mem_freePv>
    delete itemAvailable;
    800056fc:	0204b503          	ld	a0,32(s1)
    80005700:	00050863          	beqz	a0,80005710 <_ZN9BufferCPPD1Ev+0xb0>
    80005704:	00053783          	ld	a5,0(a0)
    80005708:	0087b783          	ld	a5,8(a5)
    8000570c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005710:	0184b503          	ld	a0,24(s1)
    80005714:	00050863          	beqz	a0,80005724 <_ZN9BufferCPPD1Ev+0xc4>
    80005718:	00053783          	ld	a5,0(a0)
    8000571c:	0087b783          	ld	a5,8(a5)
    80005720:	000780e7          	jalr	a5
    delete mutexTail;
    80005724:	0304b503          	ld	a0,48(s1)
    80005728:	00050863          	beqz	a0,80005738 <_ZN9BufferCPPD1Ev+0xd8>
    8000572c:	00053783          	ld	a5,0(a0)
    80005730:	0087b783          	ld	a5,8(a5)
    80005734:	000780e7          	jalr	a5
    delete mutexHead;
    80005738:	0284b503          	ld	a0,40(s1)
    8000573c:	00050863          	beqz	a0,8000574c <_ZN9BufferCPPD1Ev+0xec>
    80005740:	00053783          	ld	a5,0(a0)
    80005744:	0087b783          	ld	a5,8(a5)
    80005748:	000780e7          	jalr	a5
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	02010113          	addi	sp,sp,32
    8000575c:	00008067          	ret

0000000080005760 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	00113c23          	sd	ra,24(sp)
    80005768:	00813823          	sd	s0,16(sp)
    8000576c:	00913423          	sd	s1,8(sp)
    80005770:	01213023          	sd	s2,0(sp)
    80005774:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	b4050513          	addi	a0,a0,-1216 # 800092b8 <_ZZ6prtIntmE6digits+0x1d0>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	918080e7          	jalr	-1768(ra) # 80005098 <_Z11printStringPKc>
    int test = getc() - '0';
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	f64080e7          	jalr	-156(ra) # 800016ec <_Z4getcv>
    80005790:	0005091b          	sext.w	s2,a0
    80005794:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	f54080e7          	jalr	-172(ra) # 800016ec <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800057a0:	fcd9071b          	addiw	a4,s2,-51
    800057a4:	00100793          	li	a5,1
    800057a8:	04e7f663          	bgeu	a5,a4,800057f4 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800057ac:	fcb9091b          	addiw	s2,s2,-53
    800057b0:	00100793          	li	a5,1
    800057b4:	0727f463          	bgeu	a5,s2,8000581c <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800057b8:	00600793          	li	a5,6
    800057bc:	0697ca63          	blt	a5,s1,80005830 <_Z8userMainv+0xd0>
    800057c0:	00300793          	li	a5,3
    800057c4:	04f4d063          	bge	s1,a5,80005804 <_Z8userMainv+0xa4>
    800057c8:	00100793          	li	a5,1
    800057cc:	08f48c63          	beq	s1,a5,80005864 <_Z8userMainv+0x104>
    800057d0:	00200793          	li	a5,2
    800057d4:	0af49663          	bne	s1,a5,80005880 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    800057d8:	ffffe097          	auipc	ra,0xffffe
    800057dc:	e18080e7          	jalr	-488(ra) # 800035f0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800057e0:	00004517          	auipc	a0,0x4
    800057e4:	b9850513          	addi	a0,a0,-1128 # 80009378 <_ZZ6prtIntmE6digits+0x290>
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	8b0080e7          	jalr	-1872(ra) # 80005098 <_Z11printStringPKc>
#endif
            break;
    800057f0:	0140006f          	j	80005804 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800057f4:	00004517          	auipc	a0,0x4
    800057f8:	ae450513          	addi	a0,a0,-1308 # 800092d8 <_ZZ6prtIntmE6digits+0x1f0>
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	89c080e7          	jalr	-1892(ra) # 80005098 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005804:	01813083          	ld	ra,24(sp)
    80005808:	01013403          	ld	s0,16(sp)
    8000580c:	00813483          	ld	s1,8(sp)
    80005810:	00013903          	ld	s2,0(sp)
    80005814:	02010113          	addi	sp,sp,32
    80005818:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000581c:	00004517          	auipc	a0,0x4
    80005820:	aec50513          	addi	a0,a0,-1300 # 80009308 <_ZZ6prtIntmE6digits+0x220>
    80005824:	00000097          	auipc	ra,0x0
    80005828:	874080e7          	jalr	-1932(ra) # 80005098 <_Z11printStringPKc>
            return;
    8000582c:	fd9ff06f          	j	80005804 <_Z8userMainv+0xa4>
    switch (test) {
    80005830:	00700793          	li	a5,7
    80005834:	04f49663          	bne	s1,a5,80005880 <_Z8userMainv+0x120>
            System_Mode_test();
    80005838:	00000097          	auipc	ra,0x0
    8000583c:	674080e7          	jalr	1652(ra) # 80005eac <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005840:	00004517          	auipc	a0,0x4
    80005844:	b7850513          	addi	a0,a0,-1160 # 800093b8 <_ZZ6prtIntmE6digits+0x2d0>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	850080e7          	jalr	-1968(ra) # 80005098 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005850:	00004517          	auipc	a0,0x4
    80005854:	b8850513          	addi	a0,a0,-1144 # 800093d8 <_ZZ6prtIntmE6digits+0x2f0>
    80005858:	00000097          	auipc	ra,0x0
    8000585c:	840080e7          	jalr	-1984(ra) # 80005098 <_Z11printStringPKc>
            break;
    80005860:	fa5ff06f          	j	80005804 <_Z8userMainv+0xa4>
            Threads_C_API_test();
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	eac080e7          	jalr	-340(ra) # 80004710 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000586c:	00004517          	auipc	a0,0x4
    80005870:	acc50513          	addi	a0,a0,-1332 # 80009338 <_ZZ6prtIntmE6digits+0x250>
    80005874:	00000097          	auipc	ra,0x0
    80005878:	824080e7          	jalr	-2012(ra) # 80005098 <_Z11printStringPKc>
            break;
    8000587c:	f89ff06f          	j	80005804 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005880:	00004517          	auipc	a0,0x4
    80005884:	bb050513          	addi	a0,a0,-1104 # 80009430 <_ZZ6prtIntmE6digits+0x348>
    80005888:	00000097          	auipc	ra,0x0
    8000588c:	810080e7          	jalr	-2032(ra) # 80005098 <_Z11printStringPKc>
    80005890:	f75ff06f          	j	80005804 <_Z8userMainv+0xa4>

0000000080005894 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005894:	fe010113          	addi	sp,sp,-32
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00813823          	sd	s0,16(sp)
    800058a0:	00913423          	sd	s1,8(sp)
    800058a4:	01213023          	sd	s2,0(sp)
    800058a8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800058ac:	00053903          	ld	s2,0(a0)
    int i = 6;
    800058b0:	00600493          	li	s1,6
    while (--i > 0) {
    800058b4:	fff4849b          	addiw	s1,s1,-1
    800058b8:	04905463          	blez	s1,80005900 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800058bc:	00004517          	auipc	a0,0x4
    800058c0:	b9c50513          	addi	a0,a0,-1124 # 80009458 <_ZZ6prtIntmE6digits+0x370>
    800058c4:	fffff097          	auipc	ra,0xfffff
    800058c8:	7d4080e7          	jalr	2004(ra) # 80005098 <_Z11printStringPKc>
        printInt(sleep_time);
    800058cc:	00000613          	li	a2,0
    800058d0:	00a00593          	li	a1,10
    800058d4:	0009051b          	sext.w	a0,s2
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	970080e7          	jalr	-1680(ra) # 80005248 <_Z8printIntiii>
        printString(" !\n");
    800058e0:	00004517          	auipc	a0,0x4
    800058e4:	b8050513          	addi	a0,a0,-1152 # 80009460 <_ZZ6prtIntmE6digits+0x378>
    800058e8:	fffff097          	auipc	ra,0xfffff
    800058ec:	7b0080e7          	jalr	1968(ra) # 80005098 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800058f0:	00090513          	mv	a0,s2
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	cec080e7          	jalr	-788(ra) # 800015e0 <_Z10time_sleepm>
    while (--i > 0) {
    800058fc:	fb9ff06f          	j	800058b4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005900:	00a00793          	li	a5,10
    80005904:	02f95933          	divu	s2,s2,a5
    80005908:	fff90913          	addi	s2,s2,-1
    8000590c:	00006797          	auipc	a5,0x6
    80005910:	cac78793          	addi	a5,a5,-852 # 8000b5b8 <_ZL8finished>
    80005914:	01278933          	add	s2,a5,s2
    80005918:	00100793          	li	a5,1
    8000591c:	00f90023          	sb	a5,0(s2)
}
    80005920:	01813083          	ld	ra,24(sp)
    80005924:	01013403          	ld	s0,16(sp)
    80005928:	00813483          	ld	s1,8(sp)
    8000592c:	00013903          	ld	s2,0(sp)
    80005930:	02010113          	addi	sp,sp,32
    80005934:	00008067          	ret

0000000080005938 <_Z12testSleepingv>:

void testSleeping() {
    80005938:	fc010113          	addi	sp,sp,-64
    8000593c:	02113c23          	sd	ra,56(sp)
    80005940:	02813823          	sd	s0,48(sp)
    80005944:	02913423          	sd	s1,40(sp)
    80005948:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000594c:	00a00793          	li	a5,10
    80005950:	fcf43823          	sd	a5,-48(s0)
    80005954:	01400793          	li	a5,20
    80005958:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000595c:	00000493          	li	s1,0
    80005960:	02c0006f          	j	8000598c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005964:	00349793          	slli	a5,s1,0x3
    80005968:	fd040613          	addi	a2,s0,-48
    8000596c:	00f60633          	add	a2,a2,a5
    80005970:	00000597          	auipc	a1,0x0
    80005974:	f2458593          	addi	a1,a1,-220 # 80005894 <_ZL9sleepyRunPv>
    80005978:	fc040513          	addi	a0,s0,-64
    8000597c:	00f50533          	add	a0,a0,a5
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	bb4080e7          	jalr	-1100(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005988:	0014849b          	addiw	s1,s1,1
    8000598c:	00100793          	li	a5,1
    80005990:	fc97dae3          	bge	a5,s1,80005964 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005994:	00006797          	auipc	a5,0x6
    80005998:	c247c783          	lbu	a5,-988(a5) # 8000b5b8 <_ZL8finished>
    8000599c:	fe078ce3          	beqz	a5,80005994 <_Z12testSleepingv+0x5c>
    800059a0:	00006797          	auipc	a5,0x6
    800059a4:	c197c783          	lbu	a5,-999(a5) # 8000b5b9 <_ZL8finished+0x1>
    800059a8:	fe0786e3          	beqz	a5,80005994 <_Z12testSleepingv+0x5c>
}
    800059ac:	03813083          	ld	ra,56(sp)
    800059b0:	03013403          	ld	s0,48(sp)
    800059b4:	02813483          	ld	s1,40(sp)
    800059b8:	04010113          	addi	sp,sp,64
    800059bc:	00008067          	ret

00000000800059c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00813823          	sd	s0,16(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	01213023          	sd	s2,0(sp)
    800059d4:	02010413          	addi	s0,sp,32
    800059d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800059dc:	00100793          	li	a5,1
    800059e0:	02a7f863          	bgeu	a5,a0,80005a10 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800059e4:	00a00793          	li	a5,10
    800059e8:	02f577b3          	remu	a5,a0,a5
    800059ec:	02078e63          	beqz	a5,80005a28 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800059f0:	fff48513          	addi	a0,s1,-1
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	fcc080e7          	jalr	-52(ra) # 800059c0 <_ZL9fibonaccim>
    800059fc:	00050913          	mv	s2,a0
    80005a00:	ffe48513          	addi	a0,s1,-2
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	fbc080e7          	jalr	-68(ra) # 800059c0 <_ZL9fibonaccim>
    80005a0c:	00a90533          	add	a0,s2,a0
}
    80005a10:	01813083          	ld	ra,24(sp)
    80005a14:	01013403          	ld	s0,16(sp)
    80005a18:	00813483          	ld	s1,8(sp)
    80005a1c:	00013903          	ld	s2,0(sp)
    80005a20:	02010113          	addi	sp,sp,32
    80005a24:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	c10080e7          	jalr	-1008(ra) # 80001638 <_Z15thread_dispatchv>
    80005a30:	fc1ff06f          	j	800059f0 <_ZL9fibonaccim+0x30>

0000000080005a34 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005a34:	fe010113          	addi	sp,sp,-32
    80005a38:	00113c23          	sd	ra,24(sp)
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00913423          	sd	s1,8(sp)
    80005a44:	01213023          	sd	s2,0(sp)
    80005a48:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a4c:	00a00493          	li	s1,10
    80005a50:	0400006f          	j	80005a90 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a54:	00003517          	auipc	a0,0x3
    80005a58:	61450513          	addi	a0,a0,1556 # 80009068 <CONSOLE_STATUS+0x58>
    80005a5c:	fffff097          	auipc	ra,0xfffff
    80005a60:	63c080e7          	jalr	1596(ra) # 80005098 <_Z11printStringPKc>
    80005a64:	00000613          	li	a2,0
    80005a68:	00a00593          	li	a1,10
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	7d8080e7          	jalr	2008(ra) # 80005248 <_Z8printIntiii>
    80005a78:	00003517          	auipc	a0,0x3
    80005a7c:	6b850513          	addi	a0,a0,1720 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	618080e7          	jalr	1560(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a88:	0014849b          	addiw	s1,s1,1
    80005a8c:	0ff4f493          	andi	s1,s1,255
    80005a90:	00c00793          	li	a5,12
    80005a94:	fc97f0e3          	bgeu	a5,s1,80005a54 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a98:	00003517          	auipc	a0,0x3
    80005a9c:	78850513          	addi	a0,a0,1928 # 80009220 <_ZZ6prtIntmE6digits+0x138>
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	5f8080e7          	jalr	1528(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005aa8:	00500313          	li	t1,5
    thread_dispatch();
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	b8c080e7          	jalr	-1140(ra) # 80001638 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005ab4:	01000513          	li	a0,16
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	f08080e7          	jalr	-248(ra) # 800059c0 <_ZL9fibonaccim>
    80005ac0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005ac4:	00003517          	auipc	a0,0x3
    80005ac8:	5bc50513          	addi	a0,a0,1468 # 80009080 <CONSOLE_STATUS+0x70>
    80005acc:	fffff097          	auipc	ra,0xfffff
    80005ad0:	5cc080e7          	jalr	1484(ra) # 80005098 <_Z11printStringPKc>
    80005ad4:	00000613          	li	a2,0
    80005ad8:	00a00593          	li	a1,10
    80005adc:	0009051b          	sext.w	a0,s2
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	768080e7          	jalr	1896(ra) # 80005248 <_Z8printIntiii>
    80005ae8:	00003517          	auipc	a0,0x3
    80005aec:	64850513          	addi	a0,a0,1608 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005af0:	fffff097          	auipc	ra,0xfffff
    80005af4:	5a8080e7          	jalr	1448(ra) # 80005098 <_Z11printStringPKc>
    80005af8:	0400006f          	j	80005b38 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005afc:	00003517          	auipc	a0,0x3
    80005b00:	56c50513          	addi	a0,a0,1388 # 80009068 <CONSOLE_STATUS+0x58>
    80005b04:	fffff097          	auipc	ra,0xfffff
    80005b08:	594080e7          	jalr	1428(ra) # 80005098 <_Z11printStringPKc>
    80005b0c:	00000613          	li	a2,0
    80005b10:	00a00593          	li	a1,10
    80005b14:	00048513          	mv	a0,s1
    80005b18:	fffff097          	auipc	ra,0xfffff
    80005b1c:	730080e7          	jalr	1840(ra) # 80005248 <_Z8printIntiii>
    80005b20:	00003517          	auipc	a0,0x3
    80005b24:	61050513          	addi	a0,a0,1552 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005b28:	fffff097          	auipc	ra,0xfffff
    80005b2c:	570080e7          	jalr	1392(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b30:	0014849b          	addiw	s1,s1,1
    80005b34:	0ff4f493          	andi	s1,s1,255
    80005b38:	00f00793          	li	a5,15
    80005b3c:	fc97f0e3          	bgeu	a5,s1,80005afc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005b40:	00003517          	auipc	a0,0x3
    80005b44:	6f050513          	addi	a0,a0,1776 # 80009230 <_ZZ6prtIntmE6digits+0x148>
    80005b48:	fffff097          	auipc	ra,0xfffff
    80005b4c:	550080e7          	jalr	1360(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    80005b50:	00100793          	li	a5,1
    80005b54:	00006717          	auipc	a4,0x6
    80005b58:	a6f70323          	sb	a5,-1434(a4) # 8000b5ba <_ZL9finishedD>
    thread_dispatch();
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	adc080e7          	jalr	-1316(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005b64:	01813083          	ld	ra,24(sp)
    80005b68:	01013403          	ld	s0,16(sp)
    80005b6c:	00813483          	ld	s1,8(sp)
    80005b70:	00013903          	ld	s2,0(sp)
    80005b74:	02010113          	addi	sp,sp,32
    80005b78:	00008067          	ret

0000000080005b7c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b7c:	fe010113          	addi	sp,sp,-32
    80005b80:	00113c23          	sd	ra,24(sp)
    80005b84:	00813823          	sd	s0,16(sp)
    80005b88:	00913423          	sd	s1,8(sp)
    80005b8c:	01213023          	sd	s2,0(sp)
    80005b90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b94:	00000493          	li	s1,0
    80005b98:	0400006f          	j	80005bd8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b9c:	00003517          	auipc	a0,0x3
    80005ba0:	48450513          	addi	a0,a0,1156 # 80009020 <CONSOLE_STATUS+0x10>
    80005ba4:	fffff097          	auipc	ra,0xfffff
    80005ba8:	4f4080e7          	jalr	1268(ra) # 80005098 <_Z11printStringPKc>
    80005bac:	00000613          	li	a2,0
    80005bb0:	00a00593          	li	a1,10
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	690080e7          	jalr	1680(ra) # 80005248 <_Z8printIntiii>
    80005bc0:	00003517          	auipc	a0,0x3
    80005bc4:	57050513          	addi	a0,a0,1392 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	4d0080e7          	jalr	1232(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005bd0:	0014849b          	addiw	s1,s1,1
    80005bd4:	0ff4f493          	andi	s1,s1,255
    80005bd8:	00200793          	li	a5,2
    80005bdc:	fc97f0e3          	bgeu	a5,s1,80005b9c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	62050513          	addi	a0,a0,1568 # 80009200 <_ZZ6prtIntmE6digits+0x118>
    80005be8:	fffff097          	auipc	ra,0xfffff
    80005bec:	4b0080e7          	jalr	1200(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bf0:	00700313          	li	t1,7
    thread_dispatch();
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	a44080e7          	jalr	-1468(ra) # 80001638 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005bfc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	43850513          	addi	a0,a0,1080 # 80009038 <CONSOLE_STATUS+0x28>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	490080e7          	jalr	1168(ra) # 80005098 <_Z11printStringPKc>
    80005c10:	00000613          	li	a2,0
    80005c14:	00a00593          	li	a1,10
    80005c18:	0009051b          	sext.w	a0,s2
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	62c080e7          	jalr	1580(ra) # 80005248 <_Z8printIntiii>
    80005c24:	00003517          	auipc	a0,0x3
    80005c28:	50c50513          	addi	a0,a0,1292 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	46c080e7          	jalr	1132(ra) # 80005098 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005c34:	00c00513          	li	a0,12
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	d88080e7          	jalr	-632(ra) # 800059c0 <_ZL9fibonaccim>
    80005c40:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	3fc50513          	addi	a0,a0,1020 # 80009040 <CONSOLE_STATUS+0x30>
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	44c080e7          	jalr	1100(ra) # 80005098 <_Z11printStringPKc>
    80005c54:	00000613          	li	a2,0
    80005c58:	00a00593          	li	a1,10
    80005c5c:	0009051b          	sext.w	a0,s2
    80005c60:	fffff097          	auipc	ra,0xfffff
    80005c64:	5e8080e7          	jalr	1512(ra) # 80005248 <_Z8printIntiii>
    80005c68:	00003517          	auipc	a0,0x3
    80005c6c:	4c850513          	addi	a0,a0,1224 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	428080e7          	jalr	1064(ra) # 80005098 <_Z11printStringPKc>
    80005c78:	0400006f          	j	80005cb8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c7c:	00003517          	auipc	a0,0x3
    80005c80:	3a450513          	addi	a0,a0,932 # 80009020 <CONSOLE_STATUS+0x10>
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	414080e7          	jalr	1044(ra) # 80005098 <_Z11printStringPKc>
    80005c8c:	00000613          	li	a2,0
    80005c90:	00a00593          	li	a1,10
    80005c94:	00048513          	mv	a0,s1
    80005c98:	fffff097          	auipc	ra,0xfffff
    80005c9c:	5b0080e7          	jalr	1456(ra) # 80005248 <_Z8printIntiii>
    80005ca0:	00003517          	auipc	a0,0x3
    80005ca4:	49050513          	addi	a0,a0,1168 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005ca8:	fffff097          	auipc	ra,0xfffff
    80005cac:	3f0080e7          	jalr	1008(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005cb0:	0014849b          	addiw	s1,s1,1
    80005cb4:	0ff4f493          	andi	s1,s1,255
    80005cb8:	00500793          	li	a5,5
    80005cbc:	fc97f0e3          	bgeu	a5,s1,80005c7c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005cc0:	00003517          	auipc	a0,0x3
    80005cc4:	52050513          	addi	a0,a0,1312 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	3d0080e7          	jalr	976(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    80005cd0:	00100793          	li	a5,1
    80005cd4:	00006717          	auipc	a4,0x6
    80005cd8:	8ef703a3          	sb	a5,-1817(a4) # 8000b5bb <_ZL9finishedC>
    thread_dispatch();
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	95c080e7          	jalr	-1700(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005ce4:	01813083          	ld	ra,24(sp)
    80005ce8:	01013403          	ld	s0,16(sp)
    80005cec:	00813483          	ld	s1,8(sp)
    80005cf0:	00013903          	ld	s2,0(sp)
    80005cf4:	02010113          	addi	sp,sp,32
    80005cf8:	00008067          	ret

0000000080005cfc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005cfc:	fe010113          	addi	sp,sp,-32
    80005d00:	00113c23          	sd	ra,24(sp)
    80005d04:	00813823          	sd	s0,16(sp)
    80005d08:	00913423          	sd	s1,8(sp)
    80005d0c:	01213023          	sd	s2,0(sp)
    80005d10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005d14:	00000913          	li	s2,0
    80005d18:	0400006f          	j	80005d58 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005d1c:	ffffc097          	auipc	ra,0xffffc
    80005d20:	91c080e7          	jalr	-1764(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005d24:	00148493          	addi	s1,s1,1
    80005d28:	000027b7          	lui	a5,0x2
    80005d2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d30:	0097ee63          	bltu	a5,s1,80005d4c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d34:	00000713          	li	a4,0
    80005d38:	000077b7          	lui	a5,0x7
    80005d3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d40:	fce7eee3          	bltu	a5,a4,80005d1c <_ZL11workerBodyBPv+0x20>
    80005d44:	00170713          	addi	a4,a4,1
    80005d48:	ff1ff06f          	j	80005d38 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005d4c:	00a00793          	li	a5,10
    80005d50:	04f90663          	beq	s2,a5,80005d9c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005d54:	00190913          	addi	s2,s2,1
    80005d58:	00f00793          	li	a5,15
    80005d5c:	0527e463          	bltu	a5,s2,80005da4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005d60:	00003517          	auipc	a0,0x3
    80005d64:	36850513          	addi	a0,a0,872 # 800090c8 <CONSOLE_STATUS+0xb8>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	330080e7          	jalr	816(ra) # 80005098 <_Z11printStringPKc>
    80005d70:	00000613          	li	a2,0
    80005d74:	00a00593          	li	a1,10
    80005d78:	0009051b          	sext.w	a0,s2
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	4cc080e7          	jalr	1228(ra) # 80005248 <_Z8printIntiii>
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	3ac50513          	addi	a0,a0,940 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	30c080e7          	jalr	780(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d94:	00000493          	li	s1,0
    80005d98:	f91ff06f          	j	80005d28 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d9c:	14102ff3          	csrr	t6,sepc
    80005da0:	fb5ff06f          	j	80005d54 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	44c50513          	addi	a0,a0,1100 # 800091f0 <_ZZ6prtIntmE6digits+0x108>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	2ec080e7          	jalr	748(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    80005db4:	00100793          	li	a5,1
    80005db8:	00006717          	auipc	a4,0x6
    80005dbc:	80f70223          	sb	a5,-2044(a4) # 8000b5bc <_ZL9finishedB>
    thread_dispatch();
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	878080e7          	jalr	-1928(ra) # 80001638 <_Z15thread_dispatchv>
}
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret

0000000080005de0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00113c23          	sd	ra,24(sp)
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	01213023          	sd	s2,0(sp)
    80005df4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005df8:	00000913          	li	s2,0
    80005dfc:	0380006f          	j	80005e34 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005e00:	ffffc097          	auipc	ra,0xffffc
    80005e04:	838080e7          	jalr	-1992(ra) # 80001638 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e08:	00148493          	addi	s1,s1,1
    80005e0c:	000027b7          	lui	a5,0x2
    80005e10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e14:	0097ee63          	bltu	a5,s1,80005e30 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e18:	00000713          	li	a4,0
    80005e1c:	000077b7          	lui	a5,0x7
    80005e20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e24:	fce7eee3          	bltu	a5,a4,80005e00 <_ZL11workerBodyAPv+0x20>
    80005e28:	00170713          	addi	a4,a4,1
    80005e2c:	ff1ff06f          	j	80005e1c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005e30:	00190913          	addi	s2,s2,1
    80005e34:	00900793          	li	a5,9
    80005e38:	0527e063          	bltu	a5,s2,80005e78 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005e3c:	00003517          	auipc	a0,0x3
    80005e40:	26c50513          	addi	a0,a0,620 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	254080e7          	jalr	596(ra) # 80005098 <_Z11printStringPKc>
    80005e4c:	00000613          	li	a2,0
    80005e50:	00a00593          	li	a1,10
    80005e54:	0009051b          	sext.w	a0,s2
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	3f0080e7          	jalr	1008(ra) # 80005248 <_Z8printIntiii>
    80005e60:	00003517          	auipc	a0,0x3
    80005e64:	2d050513          	addi	a0,a0,720 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	230080e7          	jalr	560(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e70:	00000493          	li	s1,0
    80005e74:	f99ff06f          	j	80005e0c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	36850513          	addi	a0,a0,872 # 800091e0 <_ZZ6prtIntmE6digits+0xf8>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	218080e7          	jalr	536(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    80005e88:	00100793          	li	a5,1
    80005e8c:	00005717          	auipc	a4,0x5
    80005e90:	72f708a3          	sb	a5,1841(a4) # 8000b5bd <_ZL9finishedA>
}
    80005e94:	01813083          	ld	ra,24(sp)
    80005e98:	01013403          	ld	s0,16(sp)
    80005e9c:	00813483          	ld	s1,8(sp)
    80005ea0:	00013903          	ld	s2,0(sp)
    80005ea4:	02010113          	addi	sp,sp,32
    80005ea8:	00008067          	ret

0000000080005eac <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005eac:	fd010113          	addi	sp,sp,-48
    80005eb0:	02113423          	sd	ra,40(sp)
    80005eb4:	02813023          	sd	s0,32(sp)
    80005eb8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005ebc:	00000613          	li	a2,0
    80005ec0:	00000597          	auipc	a1,0x0
    80005ec4:	f2058593          	addi	a1,a1,-224 # 80005de0 <_ZL11workerBodyAPv>
    80005ec8:	fd040513          	addi	a0,s0,-48
    80005ecc:	ffffb097          	auipc	ra,0xffffb
    80005ed0:	668080e7          	jalr	1640(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	36c50513          	addi	a0,a0,876 # 80009240 <_ZZ6prtIntmE6digits+0x158>
    80005edc:	fffff097          	auipc	ra,0xfffff
    80005ee0:	1bc080e7          	jalr	444(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005ee4:	00000613          	li	a2,0
    80005ee8:	00000597          	auipc	a1,0x0
    80005eec:	e1458593          	addi	a1,a1,-492 # 80005cfc <_ZL11workerBodyBPv>
    80005ef0:	fd840513          	addi	a0,s0,-40
    80005ef4:	ffffb097          	auipc	ra,0xffffb
    80005ef8:	640080e7          	jalr	1600(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005efc:	00003517          	auipc	a0,0x3
    80005f00:	35c50513          	addi	a0,a0,860 # 80009258 <_ZZ6prtIntmE6digits+0x170>
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	194080e7          	jalr	404(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005f0c:	00000613          	li	a2,0
    80005f10:	00000597          	auipc	a1,0x0
    80005f14:	c6c58593          	addi	a1,a1,-916 # 80005b7c <_ZL11workerBodyCPv>
    80005f18:	fe040513          	addi	a0,s0,-32
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	618080e7          	jalr	1560(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005f24:	00003517          	auipc	a0,0x3
    80005f28:	34c50513          	addi	a0,a0,844 # 80009270 <_ZZ6prtIntmE6digits+0x188>
    80005f2c:	fffff097          	auipc	ra,0xfffff
    80005f30:	16c080e7          	jalr	364(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005f34:	00000613          	li	a2,0
    80005f38:	00000597          	auipc	a1,0x0
    80005f3c:	afc58593          	addi	a1,a1,-1284 # 80005a34 <_ZL11workerBodyDPv>
    80005f40:	fe840513          	addi	a0,s0,-24
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	5f0080e7          	jalr	1520(ra) # 80001534 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005f4c:	00003517          	auipc	a0,0x3
    80005f50:	33c50513          	addi	a0,a0,828 # 80009288 <_ZZ6prtIntmE6digits+0x1a0>
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	144080e7          	jalr	324(ra) # 80005098 <_Z11printStringPKc>
    80005f5c:	00c0006f          	j	80005f68 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	6d8080e7          	jalr	1752(ra) # 80001638 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f68:	00005797          	auipc	a5,0x5
    80005f6c:	6557c783          	lbu	a5,1621(a5) # 8000b5bd <_ZL9finishedA>
    80005f70:	fe0788e3          	beqz	a5,80005f60 <_Z16System_Mode_testv+0xb4>
    80005f74:	00005797          	auipc	a5,0x5
    80005f78:	6487c783          	lbu	a5,1608(a5) # 8000b5bc <_ZL9finishedB>
    80005f7c:	fe0782e3          	beqz	a5,80005f60 <_Z16System_Mode_testv+0xb4>
    80005f80:	00005797          	auipc	a5,0x5
    80005f84:	63b7c783          	lbu	a5,1595(a5) # 8000b5bb <_ZL9finishedC>
    80005f88:	fc078ce3          	beqz	a5,80005f60 <_Z16System_Mode_testv+0xb4>
    80005f8c:	00005797          	auipc	a5,0x5
    80005f90:	62e7c783          	lbu	a5,1582(a5) # 8000b5ba <_ZL9finishedD>
    80005f94:	fc0786e3          	beqz	a5,80005f60 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f98:	02813083          	ld	ra,40(sp)
    80005f9c:	02013403          	ld	s0,32(sp)
    80005fa0:	03010113          	addi	sp,sp,48
    80005fa4:	00008067          	ret

0000000080005fa8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005fa8:	fe010113          	addi	sp,sp,-32
    80005fac:	00113c23          	sd	ra,24(sp)
    80005fb0:	00813823          	sd	s0,16(sp)
    80005fb4:	00913423          	sd	s1,8(sp)
    80005fb8:	01213023          	sd	s2,0(sp)
    80005fbc:	02010413          	addi	s0,sp,32
    80005fc0:	00050493          	mv	s1,a0
    80005fc4:	00058913          	mv	s2,a1
    80005fc8:	0015879b          	addiw	a5,a1,1
    80005fcc:	0007851b          	sext.w	a0,a5
    80005fd0:	00f4a023          	sw	a5,0(s1)
    80005fd4:	0004a823          	sw	zero,16(s1)
    80005fd8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fdc:	00251513          	slli	a0,a0,0x2
    80005fe0:	ffffb097          	auipc	ra,0xffffb
    80005fe4:	4d4080e7          	jalr	1236(ra) # 800014b4 <_Z9mem_allocm>
    80005fe8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fec:	00000593          	li	a1,0
    80005ff0:	02048513          	addi	a0,s1,32
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	688080e7          	jalr	1672(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005ffc:	00090593          	mv	a1,s2
    80006000:	01848513          	addi	a0,s1,24
    80006004:	ffffb097          	auipc	ra,0xffffb
    80006008:	678080e7          	jalr	1656(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000600c:	00100593          	li	a1,1
    80006010:	02848513          	addi	a0,s1,40
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	668080e7          	jalr	1640(ra) # 8000167c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000601c:	00100593          	li	a1,1
    80006020:	03048513          	addi	a0,s1,48
    80006024:	ffffb097          	auipc	ra,0xffffb
    80006028:	658080e7          	jalr	1624(ra) # 8000167c <_Z8sem_openPP4_semj>
}
    8000602c:	01813083          	ld	ra,24(sp)
    80006030:	01013403          	ld	s0,16(sp)
    80006034:	00813483          	ld	s1,8(sp)
    80006038:	00013903          	ld	s2,0(sp)
    8000603c:	02010113          	addi	sp,sp,32
    80006040:	00008067          	ret

0000000080006044 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006044:	fe010113          	addi	sp,sp,-32
    80006048:	00113c23          	sd	ra,24(sp)
    8000604c:	00813823          	sd	s0,16(sp)
    80006050:	00913423          	sd	s1,8(sp)
    80006054:	01213023          	sd	s2,0(sp)
    80006058:	02010413          	addi	s0,sp,32
    8000605c:	00050493          	mv	s1,a0
    80006060:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006064:	01853503          	ld	a0,24(a0)
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	64c080e7          	jalr	1612(ra) # 800016b4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006070:	0304b503          	ld	a0,48(s1)
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	640080e7          	jalr	1600(ra) # 800016b4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000607c:	0084b783          	ld	a5,8(s1)
    80006080:	0144a703          	lw	a4,20(s1)
    80006084:	00271713          	slli	a4,a4,0x2
    80006088:	00e787b3          	add	a5,a5,a4
    8000608c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006090:	0144a783          	lw	a5,20(s1)
    80006094:	0017879b          	addiw	a5,a5,1
    80006098:	0004a703          	lw	a4,0(s1)
    8000609c:	02e7e7bb          	remw	a5,a5,a4
    800060a0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800060a4:	0304b503          	ld	a0,48(s1)
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	628080e7          	jalr	1576(ra) # 800016d0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800060b0:	0204b503          	ld	a0,32(s1)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	61c080e7          	jalr	1564(ra) # 800016d0 <_Z10sem_signalP4_sem>

}
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	00813483          	ld	s1,8(sp)
    800060c8:	00013903          	ld	s2,0(sp)
    800060cc:	02010113          	addi	sp,sp,32
    800060d0:	00008067          	ret

00000000800060d4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800060d4:	fe010113          	addi	sp,sp,-32
    800060d8:	00113c23          	sd	ra,24(sp)
    800060dc:	00813823          	sd	s0,16(sp)
    800060e0:	00913423          	sd	s1,8(sp)
    800060e4:	01213023          	sd	s2,0(sp)
    800060e8:	02010413          	addi	s0,sp,32
    800060ec:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060f0:	02053503          	ld	a0,32(a0)
    800060f4:	ffffb097          	auipc	ra,0xffffb
    800060f8:	5c0080e7          	jalr	1472(ra) # 800016b4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800060fc:	0284b503          	ld	a0,40(s1)
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	5b4080e7          	jalr	1460(ra) # 800016b4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006108:	0084b703          	ld	a4,8(s1)
    8000610c:	0104a783          	lw	a5,16(s1)
    80006110:	00279693          	slli	a3,a5,0x2
    80006114:	00d70733          	add	a4,a4,a3
    80006118:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000611c:	0017879b          	addiw	a5,a5,1
    80006120:	0004a703          	lw	a4,0(s1)
    80006124:	02e7e7bb          	remw	a5,a5,a4
    80006128:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000612c:	0284b503          	ld	a0,40(s1)
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	5a0080e7          	jalr	1440(ra) # 800016d0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006138:	0184b503          	ld	a0,24(s1)
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	594080e7          	jalr	1428(ra) # 800016d0 <_Z10sem_signalP4_sem>

    return ret;
}
    80006144:	00090513          	mv	a0,s2
    80006148:	01813083          	ld	ra,24(sp)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	00813483          	ld	s1,8(sp)
    80006154:	00013903          	ld	s2,0(sp)
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret

0000000080006160 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	01213023          	sd	s2,0(sp)
    80006174:	02010413          	addi	s0,sp,32
    80006178:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000617c:	02853503          	ld	a0,40(a0)
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	534080e7          	jalr	1332(ra) # 800016b4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006188:	0304b503          	ld	a0,48(s1)
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	528080e7          	jalr	1320(ra) # 800016b4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006194:	0144a783          	lw	a5,20(s1)
    80006198:	0104a903          	lw	s2,16(s1)
    8000619c:	0327ce63          	blt	a5,s2,800061d8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800061a0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800061a4:	0304b503          	ld	a0,48(s1)
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	528080e7          	jalr	1320(ra) # 800016d0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800061b0:	0284b503          	ld	a0,40(s1)
    800061b4:	ffffb097          	auipc	ra,0xffffb
    800061b8:	51c080e7          	jalr	1308(ra) # 800016d0 <_Z10sem_signalP4_sem>

    return ret;
}
    800061bc:	00090513          	mv	a0,s2
    800061c0:	01813083          	ld	ra,24(sp)
    800061c4:	01013403          	ld	s0,16(sp)
    800061c8:	00813483          	ld	s1,8(sp)
    800061cc:	00013903          	ld	s2,0(sp)
    800061d0:	02010113          	addi	sp,sp,32
    800061d4:	00008067          	ret
        ret = cap - head + tail;
    800061d8:	0004a703          	lw	a4,0(s1)
    800061dc:	4127093b          	subw	s2,a4,s2
    800061e0:	00f9093b          	addw	s2,s2,a5
    800061e4:	fc1ff06f          	j	800061a4 <_ZN6Buffer6getCntEv+0x44>

00000000800061e8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800061e8:	fe010113          	addi	sp,sp,-32
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	00813823          	sd	s0,16(sp)
    800061f4:	00913423          	sd	s1,8(sp)
    800061f8:	02010413          	addi	s0,sp,32
    800061fc:	00050493          	mv	s1,a0
    putc('\n');
    80006200:	00a00513          	li	a0,10
    80006204:	ffffb097          	auipc	ra,0xffffb
    80006208:	524080e7          	jalr	1316(ra) # 80001728 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000620c:	00003517          	auipc	a0,0x3
    80006210:	09450513          	addi	a0,a0,148 # 800092a0 <_ZZ6prtIntmE6digits+0x1b8>
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	e84080e7          	jalr	-380(ra) # 80005098 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000621c:	00048513          	mv	a0,s1
    80006220:	00000097          	auipc	ra,0x0
    80006224:	f40080e7          	jalr	-192(ra) # 80006160 <_ZN6Buffer6getCntEv>
    80006228:	02a05c63          	blez	a0,80006260 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000622c:	0084b783          	ld	a5,8(s1)
    80006230:	0104a703          	lw	a4,16(s1)
    80006234:	00271713          	slli	a4,a4,0x2
    80006238:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000623c:	0007c503          	lbu	a0,0(a5)
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	4e8080e7          	jalr	1256(ra) # 80001728 <_Z4putcc>
        head = (head + 1) % cap;
    80006248:	0104a783          	lw	a5,16(s1)
    8000624c:	0017879b          	addiw	a5,a5,1
    80006250:	0004a703          	lw	a4,0(s1)
    80006254:	02e7e7bb          	remw	a5,a5,a4
    80006258:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000625c:	fc1ff06f          	j	8000621c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006260:	02100513          	li	a0,33
    80006264:	ffffb097          	auipc	ra,0xffffb
    80006268:	4c4080e7          	jalr	1220(ra) # 80001728 <_Z4putcc>
    putc('\n');
    8000626c:	00a00513          	li	a0,10
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	4b8080e7          	jalr	1208(ra) # 80001728 <_Z4putcc>
    mem_free(buffer);
    80006278:	0084b503          	ld	a0,8(s1)
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	278080e7          	jalr	632(ra) # 800014f4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006284:	0204b503          	ld	a0,32(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	410080e7          	jalr	1040(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006290:	0184b503          	ld	a0,24(s1)
    80006294:	ffffb097          	auipc	ra,0xffffb
    80006298:	404080e7          	jalr	1028(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000629c:	0304b503          	ld	a0,48(s1)
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	3f8080e7          	jalr	1016(ra) # 80001698 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800062a8:	0284b503          	ld	a0,40(s1)
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	3ec080e7          	jalr	1004(ra) # 80001698 <_Z9sem_closeP4_sem>
}
    800062b4:	01813083          	ld	ra,24(sp)
    800062b8:	01013403          	ld	s0,16(sp)
    800062bc:	00813483          	ld	s1,8(sp)
    800062c0:	02010113          	addi	sp,sp,32
    800062c4:	00008067          	ret

00000000800062c8 <start>:
    800062c8:	ff010113          	addi	sp,sp,-16
    800062cc:	00813423          	sd	s0,8(sp)
    800062d0:	01010413          	addi	s0,sp,16
    800062d4:	300027f3          	csrr	a5,mstatus
    800062d8:	ffffe737          	lui	a4,0xffffe
    800062dc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1fdf>
    800062e0:	00e7f7b3          	and	a5,a5,a4
    800062e4:	00001737          	lui	a4,0x1
    800062e8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062ec:	00e7e7b3          	or	a5,a5,a4
    800062f0:	30079073          	csrw	mstatus,a5
    800062f4:	00000797          	auipc	a5,0x0
    800062f8:	16078793          	addi	a5,a5,352 # 80006454 <system_main>
    800062fc:	34179073          	csrw	mepc,a5
    80006300:	00000793          	li	a5,0
    80006304:	18079073          	csrw	satp,a5
    80006308:	000107b7          	lui	a5,0x10
    8000630c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006310:	30279073          	csrw	medeleg,a5
    80006314:	30379073          	csrw	mideleg,a5
    80006318:	104027f3          	csrr	a5,sie
    8000631c:	2227e793          	ori	a5,a5,546
    80006320:	10479073          	csrw	sie,a5
    80006324:	fff00793          	li	a5,-1
    80006328:	00a7d793          	srli	a5,a5,0xa
    8000632c:	3b079073          	csrw	pmpaddr0,a5
    80006330:	00f00793          	li	a5,15
    80006334:	3a079073          	csrw	pmpcfg0,a5
    80006338:	f14027f3          	csrr	a5,mhartid
    8000633c:	0200c737          	lui	a4,0x200c
    80006340:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006344:	0007869b          	sext.w	a3,a5
    80006348:	00269713          	slli	a4,a3,0x2
    8000634c:	000f4637          	lui	a2,0xf4
    80006350:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006354:	00d70733          	add	a4,a4,a3
    80006358:	0037979b          	slliw	a5,a5,0x3
    8000635c:	020046b7          	lui	a3,0x2004
    80006360:	00d787b3          	add	a5,a5,a3
    80006364:	00c585b3          	add	a1,a1,a2
    80006368:	00371693          	slli	a3,a4,0x3
    8000636c:	00005717          	auipc	a4,0x5
    80006370:	25470713          	addi	a4,a4,596 # 8000b5c0 <timer_scratch>
    80006374:	00b7b023          	sd	a1,0(a5)
    80006378:	00d70733          	add	a4,a4,a3
    8000637c:	00f73c23          	sd	a5,24(a4)
    80006380:	02c73023          	sd	a2,32(a4)
    80006384:	34071073          	csrw	mscratch,a4
    80006388:	00000797          	auipc	a5,0x0
    8000638c:	6e878793          	addi	a5,a5,1768 # 80006a70 <timervec>
    80006390:	30579073          	csrw	mtvec,a5
    80006394:	300027f3          	csrr	a5,mstatus
    80006398:	0087e793          	ori	a5,a5,8
    8000639c:	30079073          	csrw	mstatus,a5
    800063a0:	304027f3          	csrr	a5,mie
    800063a4:	0807e793          	ori	a5,a5,128
    800063a8:	30479073          	csrw	mie,a5
    800063ac:	f14027f3          	csrr	a5,mhartid
    800063b0:	0007879b          	sext.w	a5,a5
    800063b4:	00078213          	mv	tp,a5
    800063b8:	30200073          	mret
    800063bc:	00813403          	ld	s0,8(sp)
    800063c0:	01010113          	addi	sp,sp,16
    800063c4:	00008067          	ret

00000000800063c8 <timerinit>:
    800063c8:	ff010113          	addi	sp,sp,-16
    800063cc:	00813423          	sd	s0,8(sp)
    800063d0:	01010413          	addi	s0,sp,16
    800063d4:	f14027f3          	csrr	a5,mhartid
    800063d8:	0200c737          	lui	a4,0x200c
    800063dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800063e0:	0007869b          	sext.w	a3,a5
    800063e4:	00269713          	slli	a4,a3,0x2
    800063e8:	000f4637          	lui	a2,0xf4
    800063ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063f0:	00d70733          	add	a4,a4,a3
    800063f4:	0037979b          	slliw	a5,a5,0x3
    800063f8:	020046b7          	lui	a3,0x2004
    800063fc:	00d787b3          	add	a5,a5,a3
    80006400:	00c585b3          	add	a1,a1,a2
    80006404:	00371693          	slli	a3,a4,0x3
    80006408:	00005717          	auipc	a4,0x5
    8000640c:	1b870713          	addi	a4,a4,440 # 8000b5c0 <timer_scratch>
    80006410:	00b7b023          	sd	a1,0(a5)
    80006414:	00d70733          	add	a4,a4,a3
    80006418:	00f73c23          	sd	a5,24(a4)
    8000641c:	02c73023          	sd	a2,32(a4)
    80006420:	34071073          	csrw	mscratch,a4
    80006424:	00000797          	auipc	a5,0x0
    80006428:	64c78793          	addi	a5,a5,1612 # 80006a70 <timervec>
    8000642c:	30579073          	csrw	mtvec,a5
    80006430:	300027f3          	csrr	a5,mstatus
    80006434:	0087e793          	ori	a5,a5,8
    80006438:	30079073          	csrw	mstatus,a5
    8000643c:	304027f3          	csrr	a5,mie
    80006440:	0807e793          	ori	a5,a5,128
    80006444:	30479073          	csrw	mie,a5
    80006448:	00813403          	ld	s0,8(sp)
    8000644c:	01010113          	addi	sp,sp,16
    80006450:	00008067          	ret

0000000080006454 <system_main>:
    80006454:	fe010113          	addi	sp,sp,-32
    80006458:	00813823          	sd	s0,16(sp)
    8000645c:	00913423          	sd	s1,8(sp)
    80006460:	00113c23          	sd	ra,24(sp)
    80006464:	02010413          	addi	s0,sp,32
    80006468:	00000097          	auipc	ra,0x0
    8000646c:	0c4080e7          	jalr	196(ra) # 8000652c <cpuid>
    80006470:	00005497          	auipc	s1,0x5
    80006474:	0a048493          	addi	s1,s1,160 # 8000b510 <started>
    80006478:	02050263          	beqz	a0,8000649c <system_main+0x48>
    8000647c:	0004a783          	lw	a5,0(s1)
    80006480:	0007879b          	sext.w	a5,a5
    80006484:	fe078ce3          	beqz	a5,8000647c <system_main+0x28>
    80006488:	0ff0000f          	fence
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	00c50513          	addi	a0,a0,12 # 80009498 <_ZZ6prtIntmE6digits+0x3b0>
    80006494:	00001097          	auipc	ra,0x1
    80006498:	a78080e7          	jalr	-1416(ra) # 80006f0c <panic>
    8000649c:	00001097          	auipc	ra,0x1
    800064a0:	9cc080e7          	jalr	-1588(ra) # 80006e68 <consoleinit>
    800064a4:	00001097          	auipc	ra,0x1
    800064a8:	158080e7          	jalr	344(ra) # 800075fc <printfinit>
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	c8450513          	addi	a0,a0,-892 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800064b4:	00001097          	auipc	ra,0x1
    800064b8:	ab4080e7          	jalr	-1356(ra) # 80006f68 <__printf>
    800064bc:	00003517          	auipc	a0,0x3
    800064c0:	fac50513          	addi	a0,a0,-84 # 80009468 <_ZZ6prtIntmE6digits+0x380>
    800064c4:	00001097          	auipc	ra,0x1
    800064c8:	aa4080e7          	jalr	-1372(ra) # 80006f68 <__printf>
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	c6450513          	addi	a0,a0,-924 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    800064d4:	00001097          	auipc	ra,0x1
    800064d8:	a94080e7          	jalr	-1388(ra) # 80006f68 <__printf>
    800064dc:	00001097          	auipc	ra,0x1
    800064e0:	4ac080e7          	jalr	1196(ra) # 80007988 <kinit>
    800064e4:	00000097          	auipc	ra,0x0
    800064e8:	148080e7          	jalr	328(ra) # 8000662c <trapinit>
    800064ec:	00000097          	auipc	ra,0x0
    800064f0:	16c080e7          	jalr	364(ra) # 80006658 <trapinithart>
    800064f4:	00000097          	auipc	ra,0x0
    800064f8:	5bc080e7          	jalr	1468(ra) # 80006ab0 <plicinit>
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	5dc080e7          	jalr	1500(ra) # 80006ad8 <plicinithart>
    80006504:	00000097          	auipc	ra,0x0
    80006508:	078080e7          	jalr	120(ra) # 8000657c <userinit>
    8000650c:	0ff0000f          	fence
    80006510:	00100793          	li	a5,1
    80006514:	00003517          	auipc	a0,0x3
    80006518:	f6c50513          	addi	a0,a0,-148 # 80009480 <_ZZ6prtIntmE6digits+0x398>
    8000651c:	00f4a023          	sw	a5,0(s1)
    80006520:	00001097          	auipc	ra,0x1
    80006524:	a48080e7          	jalr	-1464(ra) # 80006f68 <__printf>
    80006528:	0000006f          	j	80006528 <system_main+0xd4>

000000008000652c <cpuid>:
    8000652c:	ff010113          	addi	sp,sp,-16
    80006530:	00813423          	sd	s0,8(sp)
    80006534:	01010413          	addi	s0,sp,16
    80006538:	00020513          	mv	a0,tp
    8000653c:	00813403          	ld	s0,8(sp)
    80006540:	0005051b          	sext.w	a0,a0
    80006544:	01010113          	addi	sp,sp,16
    80006548:	00008067          	ret

000000008000654c <mycpu>:
    8000654c:	ff010113          	addi	sp,sp,-16
    80006550:	00813423          	sd	s0,8(sp)
    80006554:	01010413          	addi	s0,sp,16
    80006558:	00020793          	mv	a5,tp
    8000655c:	00813403          	ld	s0,8(sp)
    80006560:	0007879b          	sext.w	a5,a5
    80006564:	00779793          	slli	a5,a5,0x7
    80006568:	00006517          	auipc	a0,0x6
    8000656c:	08850513          	addi	a0,a0,136 # 8000c5f0 <cpus>
    80006570:	00f50533          	add	a0,a0,a5
    80006574:	01010113          	addi	sp,sp,16
    80006578:	00008067          	ret

000000008000657c <userinit>:
    8000657c:	ff010113          	addi	sp,sp,-16
    80006580:	00813423          	sd	s0,8(sp)
    80006584:	01010413          	addi	s0,sp,16
    80006588:	00813403          	ld	s0,8(sp)
    8000658c:	01010113          	addi	sp,sp,16
    80006590:	ffffb317          	auipc	t1,0xffffb
    80006594:	74c30067          	jr	1868(t1) # 80001cdc <main>

0000000080006598 <either_copyout>:
    80006598:	ff010113          	addi	sp,sp,-16
    8000659c:	00813023          	sd	s0,0(sp)
    800065a0:	00113423          	sd	ra,8(sp)
    800065a4:	01010413          	addi	s0,sp,16
    800065a8:	02051663          	bnez	a0,800065d4 <either_copyout+0x3c>
    800065ac:	00058513          	mv	a0,a1
    800065b0:	00060593          	mv	a1,a2
    800065b4:	0006861b          	sext.w	a2,a3
    800065b8:	00002097          	auipc	ra,0x2
    800065bc:	c5c080e7          	jalr	-932(ra) # 80008214 <__memmove>
    800065c0:	00813083          	ld	ra,8(sp)
    800065c4:	00013403          	ld	s0,0(sp)
    800065c8:	00000513          	li	a0,0
    800065cc:	01010113          	addi	sp,sp,16
    800065d0:	00008067          	ret
    800065d4:	00003517          	auipc	a0,0x3
    800065d8:	eec50513          	addi	a0,a0,-276 # 800094c0 <_ZZ6prtIntmE6digits+0x3d8>
    800065dc:	00001097          	auipc	ra,0x1
    800065e0:	930080e7          	jalr	-1744(ra) # 80006f0c <panic>

00000000800065e4 <either_copyin>:
    800065e4:	ff010113          	addi	sp,sp,-16
    800065e8:	00813023          	sd	s0,0(sp)
    800065ec:	00113423          	sd	ra,8(sp)
    800065f0:	01010413          	addi	s0,sp,16
    800065f4:	02059463          	bnez	a1,8000661c <either_copyin+0x38>
    800065f8:	00060593          	mv	a1,a2
    800065fc:	0006861b          	sext.w	a2,a3
    80006600:	00002097          	auipc	ra,0x2
    80006604:	c14080e7          	jalr	-1004(ra) # 80008214 <__memmove>
    80006608:	00813083          	ld	ra,8(sp)
    8000660c:	00013403          	ld	s0,0(sp)
    80006610:	00000513          	li	a0,0
    80006614:	01010113          	addi	sp,sp,16
    80006618:	00008067          	ret
    8000661c:	00003517          	auipc	a0,0x3
    80006620:	ecc50513          	addi	a0,a0,-308 # 800094e8 <_ZZ6prtIntmE6digits+0x400>
    80006624:	00001097          	auipc	ra,0x1
    80006628:	8e8080e7          	jalr	-1816(ra) # 80006f0c <panic>

000000008000662c <trapinit>:
    8000662c:	ff010113          	addi	sp,sp,-16
    80006630:	00813423          	sd	s0,8(sp)
    80006634:	01010413          	addi	s0,sp,16
    80006638:	00813403          	ld	s0,8(sp)
    8000663c:	00003597          	auipc	a1,0x3
    80006640:	ed458593          	addi	a1,a1,-300 # 80009510 <_ZZ6prtIntmE6digits+0x428>
    80006644:	00006517          	auipc	a0,0x6
    80006648:	02c50513          	addi	a0,a0,44 # 8000c670 <tickslock>
    8000664c:	01010113          	addi	sp,sp,16
    80006650:	00001317          	auipc	t1,0x1
    80006654:	5c830067          	jr	1480(t1) # 80007c18 <initlock>

0000000080006658 <trapinithart>:
    80006658:	ff010113          	addi	sp,sp,-16
    8000665c:	00813423          	sd	s0,8(sp)
    80006660:	01010413          	addi	s0,sp,16
    80006664:	00000797          	auipc	a5,0x0
    80006668:	2fc78793          	addi	a5,a5,764 # 80006960 <kernelvec>
    8000666c:	10579073          	csrw	stvec,a5
    80006670:	00813403          	ld	s0,8(sp)
    80006674:	01010113          	addi	sp,sp,16
    80006678:	00008067          	ret

000000008000667c <usertrap>:
    8000667c:	ff010113          	addi	sp,sp,-16
    80006680:	00813423          	sd	s0,8(sp)
    80006684:	01010413          	addi	s0,sp,16
    80006688:	00813403          	ld	s0,8(sp)
    8000668c:	01010113          	addi	sp,sp,16
    80006690:	00008067          	ret

0000000080006694 <usertrapret>:
    80006694:	ff010113          	addi	sp,sp,-16
    80006698:	00813423          	sd	s0,8(sp)
    8000669c:	01010413          	addi	s0,sp,16
    800066a0:	00813403          	ld	s0,8(sp)
    800066a4:	01010113          	addi	sp,sp,16
    800066a8:	00008067          	ret

00000000800066ac <kerneltrap>:
    800066ac:	fe010113          	addi	sp,sp,-32
    800066b0:	00813823          	sd	s0,16(sp)
    800066b4:	00113c23          	sd	ra,24(sp)
    800066b8:	00913423          	sd	s1,8(sp)
    800066bc:	02010413          	addi	s0,sp,32
    800066c0:	142025f3          	csrr	a1,scause
    800066c4:	100027f3          	csrr	a5,sstatus
    800066c8:	0027f793          	andi	a5,a5,2
    800066cc:	10079c63          	bnez	a5,800067e4 <kerneltrap+0x138>
    800066d0:	142027f3          	csrr	a5,scause
    800066d4:	0207ce63          	bltz	a5,80006710 <kerneltrap+0x64>
    800066d8:	00003517          	auipc	a0,0x3
    800066dc:	e8050513          	addi	a0,a0,-384 # 80009558 <_ZZ6prtIntmE6digits+0x470>
    800066e0:	00001097          	auipc	ra,0x1
    800066e4:	888080e7          	jalr	-1912(ra) # 80006f68 <__printf>
    800066e8:	141025f3          	csrr	a1,sepc
    800066ec:	14302673          	csrr	a2,stval
    800066f0:	00003517          	auipc	a0,0x3
    800066f4:	e7850513          	addi	a0,a0,-392 # 80009568 <_ZZ6prtIntmE6digits+0x480>
    800066f8:	00001097          	auipc	ra,0x1
    800066fc:	870080e7          	jalr	-1936(ra) # 80006f68 <__printf>
    80006700:	00003517          	auipc	a0,0x3
    80006704:	e8050513          	addi	a0,a0,-384 # 80009580 <_ZZ6prtIntmE6digits+0x498>
    80006708:	00001097          	auipc	ra,0x1
    8000670c:	804080e7          	jalr	-2044(ra) # 80006f0c <panic>
    80006710:	0ff7f713          	andi	a4,a5,255
    80006714:	00900693          	li	a3,9
    80006718:	04d70063          	beq	a4,a3,80006758 <kerneltrap+0xac>
    8000671c:	fff00713          	li	a4,-1
    80006720:	03f71713          	slli	a4,a4,0x3f
    80006724:	00170713          	addi	a4,a4,1
    80006728:	fae798e3          	bne	a5,a4,800066d8 <kerneltrap+0x2c>
    8000672c:	00000097          	auipc	ra,0x0
    80006730:	e00080e7          	jalr	-512(ra) # 8000652c <cpuid>
    80006734:	06050663          	beqz	a0,800067a0 <kerneltrap+0xf4>
    80006738:	144027f3          	csrr	a5,sip
    8000673c:	ffd7f793          	andi	a5,a5,-3
    80006740:	14479073          	csrw	sip,a5
    80006744:	01813083          	ld	ra,24(sp)
    80006748:	01013403          	ld	s0,16(sp)
    8000674c:	00813483          	ld	s1,8(sp)
    80006750:	02010113          	addi	sp,sp,32
    80006754:	00008067          	ret
    80006758:	00000097          	auipc	ra,0x0
    8000675c:	3cc080e7          	jalr	972(ra) # 80006b24 <plic_claim>
    80006760:	00a00793          	li	a5,10
    80006764:	00050493          	mv	s1,a0
    80006768:	06f50863          	beq	a0,a5,800067d8 <kerneltrap+0x12c>
    8000676c:	fc050ce3          	beqz	a0,80006744 <kerneltrap+0x98>
    80006770:	00050593          	mv	a1,a0
    80006774:	00003517          	auipc	a0,0x3
    80006778:	dc450513          	addi	a0,a0,-572 # 80009538 <_ZZ6prtIntmE6digits+0x450>
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	7ec080e7          	jalr	2028(ra) # 80006f68 <__printf>
    80006784:	01013403          	ld	s0,16(sp)
    80006788:	01813083          	ld	ra,24(sp)
    8000678c:	00048513          	mv	a0,s1
    80006790:	00813483          	ld	s1,8(sp)
    80006794:	02010113          	addi	sp,sp,32
    80006798:	00000317          	auipc	t1,0x0
    8000679c:	3c430067          	jr	964(t1) # 80006b5c <plic_complete>
    800067a0:	00006517          	auipc	a0,0x6
    800067a4:	ed050513          	addi	a0,a0,-304 # 8000c670 <tickslock>
    800067a8:	00001097          	auipc	ra,0x1
    800067ac:	494080e7          	jalr	1172(ra) # 80007c3c <acquire>
    800067b0:	00005717          	auipc	a4,0x5
    800067b4:	d6470713          	addi	a4,a4,-668 # 8000b514 <ticks>
    800067b8:	00072783          	lw	a5,0(a4)
    800067bc:	00006517          	auipc	a0,0x6
    800067c0:	eb450513          	addi	a0,a0,-332 # 8000c670 <tickslock>
    800067c4:	0017879b          	addiw	a5,a5,1
    800067c8:	00f72023          	sw	a5,0(a4)
    800067cc:	00001097          	auipc	ra,0x1
    800067d0:	53c080e7          	jalr	1340(ra) # 80007d08 <release>
    800067d4:	f65ff06f          	j	80006738 <kerneltrap+0x8c>
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	098080e7          	jalr	152(ra) # 80007870 <uartintr>
    800067e0:	fa5ff06f          	j	80006784 <kerneltrap+0xd8>
    800067e4:	00003517          	auipc	a0,0x3
    800067e8:	d3450513          	addi	a0,a0,-716 # 80009518 <_ZZ6prtIntmE6digits+0x430>
    800067ec:	00000097          	auipc	ra,0x0
    800067f0:	720080e7          	jalr	1824(ra) # 80006f0c <panic>

00000000800067f4 <clockintr>:
    800067f4:	fe010113          	addi	sp,sp,-32
    800067f8:	00813823          	sd	s0,16(sp)
    800067fc:	00913423          	sd	s1,8(sp)
    80006800:	00113c23          	sd	ra,24(sp)
    80006804:	02010413          	addi	s0,sp,32
    80006808:	00006497          	auipc	s1,0x6
    8000680c:	e6848493          	addi	s1,s1,-408 # 8000c670 <tickslock>
    80006810:	00048513          	mv	a0,s1
    80006814:	00001097          	auipc	ra,0x1
    80006818:	428080e7          	jalr	1064(ra) # 80007c3c <acquire>
    8000681c:	00005717          	auipc	a4,0x5
    80006820:	cf870713          	addi	a4,a4,-776 # 8000b514 <ticks>
    80006824:	00072783          	lw	a5,0(a4)
    80006828:	01013403          	ld	s0,16(sp)
    8000682c:	01813083          	ld	ra,24(sp)
    80006830:	00048513          	mv	a0,s1
    80006834:	0017879b          	addiw	a5,a5,1
    80006838:	00813483          	ld	s1,8(sp)
    8000683c:	00f72023          	sw	a5,0(a4)
    80006840:	02010113          	addi	sp,sp,32
    80006844:	00001317          	auipc	t1,0x1
    80006848:	4c430067          	jr	1220(t1) # 80007d08 <release>

000000008000684c <devintr>:
    8000684c:	142027f3          	csrr	a5,scause
    80006850:	00000513          	li	a0,0
    80006854:	0007c463          	bltz	a5,8000685c <devintr+0x10>
    80006858:	00008067          	ret
    8000685c:	fe010113          	addi	sp,sp,-32
    80006860:	00813823          	sd	s0,16(sp)
    80006864:	00113c23          	sd	ra,24(sp)
    80006868:	00913423          	sd	s1,8(sp)
    8000686c:	02010413          	addi	s0,sp,32
    80006870:	0ff7f713          	andi	a4,a5,255
    80006874:	00900693          	li	a3,9
    80006878:	04d70c63          	beq	a4,a3,800068d0 <devintr+0x84>
    8000687c:	fff00713          	li	a4,-1
    80006880:	03f71713          	slli	a4,a4,0x3f
    80006884:	00170713          	addi	a4,a4,1
    80006888:	00e78c63          	beq	a5,a4,800068a0 <devintr+0x54>
    8000688c:	01813083          	ld	ra,24(sp)
    80006890:	01013403          	ld	s0,16(sp)
    80006894:	00813483          	ld	s1,8(sp)
    80006898:	02010113          	addi	sp,sp,32
    8000689c:	00008067          	ret
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	c8c080e7          	jalr	-884(ra) # 8000652c <cpuid>
    800068a8:	06050663          	beqz	a0,80006914 <devintr+0xc8>
    800068ac:	144027f3          	csrr	a5,sip
    800068b0:	ffd7f793          	andi	a5,a5,-3
    800068b4:	14479073          	csrw	sip,a5
    800068b8:	01813083          	ld	ra,24(sp)
    800068bc:	01013403          	ld	s0,16(sp)
    800068c0:	00813483          	ld	s1,8(sp)
    800068c4:	00200513          	li	a0,2
    800068c8:	02010113          	addi	sp,sp,32
    800068cc:	00008067          	ret
    800068d0:	00000097          	auipc	ra,0x0
    800068d4:	254080e7          	jalr	596(ra) # 80006b24 <plic_claim>
    800068d8:	00a00793          	li	a5,10
    800068dc:	00050493          	mv	s1,a0
    800068e0:	06f50663          	beq	a0,a5,8000694c <devintr+0x100>
    800068e4:	00100513          	li	a0,1
    800068e8:	fa0482e3          	beqz	s1,8000688c <devintr+0x40>
    800068ec:	00048593          	mv	a1,s1
    800068f0:	00003517          	auipc	a0,0x3
    800068f4:	c4850513          	addi	a0,a0,-952 # 80009538 <_ZZ6prtIntmE6digits+0x450>
    800068f8:	00000097          	auipc	ra,0x0
    800068fc:	670080e7          	jalr	1648(ra) # 80006f68 <__printf>
    80006900:	00048513          	mv	a0,s1
    80006904:	00000097          	auipc	ra,0x0
    80006908:	258080e7          	jalr	600(ra) # 80006b5c <plic_complete>
    8000690c:	00100513          	li	a0,1
    80006910:	f7dff06f          	j	8000688c <devintr+0x40>
    80006914:	00006517          	auipc	a0,0x6
    80006918:	d5c50513          	addi	a0,a0,-676 # 8000c670 <tickslock>
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	320080e7          	jalr	800(ra) # 80007c3c <acquire>
    80006924:	00005717          	auipc	a4,0x5
    80006928:	bf070713          	addi	a4,a4,-1040 # 8000b514 <ticks>
    8000692c:	00072783          	lw	a5,0(a4)
    80006930:	00006517          	auipc	a0,0x6
    80006934:	d4050513          	addi	a0,a0,-704 # 8000c670 <tickslock>
    80006938:	0017879b          	addiw	a5,a5,1
    8000693c:	00f72023          	sw	a5,0(a4)
    80006940:	00001097          	auipc	ra,0x1
    80006944:	3c8080e7          	jalr	968(ra) # 80007d08 <release>
    80006948:	f65ff06f          	j	800068ac <devintr+0x60>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	f24080e7          	jalr	-220(ra) # 80007870 <uartintr>
    80006954:	fadff06f          	j	80006900 <devintr+0xb4>
	...

0000000080006960 <kernelvec>:
    80006960:	f0010113          	addi	sp,sp,-256
    80006964:	00113023          	sd	ra,0(sp)
    80006968:	00213423          	sd	sp,8(sp)
    8000696c:	00313823          	sd	gp,16(sp)
    80006970:	00413c23          	sd	tp,24(sp)
    80006974:	02513023          	sd	t0,32(sp)
    80006978:	02613423          	sd	t1,40(sp)
    8000697c:	02713823          	sd	t2,48(sp)
    80006980:	02813c23          	sd	s0,56(sp)
    80006984:	04913023          	sd	s1,64(sp)
    80006988:	04a13423          	sd	a0,72(sp)
    8000698c:	04b13823          	sd	a1,80(sp)
    80006990:	04c13c23          	sd	a2,88(sp)
    80006994:	06d13023          	sd	a3,96(sp)
    80006998:	06e13423          	sd	a4,104(sp)
    8000699c:	06f13823          	sd	a5,112(sp)
    800069a0:	07013c23          	sd	a6,120(sp)
    800069a4:	09113023          	sd	a7,128(sp)
    800069a8:	09213423          	sd	s2,136(sp)
    800069ac:	09313823          	sd	s3,144(sp)
    800069b0:	09413c23          	sd	s4,152(sp)
    800069b4:	0b513023          	sd	s5,160(sp)
    800069b8:	0b613423          	sd	s6,168(sp)
    800069bc:	0b713823          	sd	s7,176(sp)
    800069c0:	0b813c23          	sd	s8,184(sp)
    800069c4:	0d913023          	sd	s9,192(sp)
    800069c8:	0da13423          	sd	s10,200(sp)
    800069cc:	0db13823          	sd	s11,208(sp)
    800069d0:	0dc13c23          	sd	t3,216(sp)
    800069d4:	0fd13023          	sd	t4,224(sp)
    800069d8:	0fe13423          	sd	t5,232(sp)
    800069dc:	0ff13823          	sd	t6,240(sp)
    800069e0:	ccdff0ef          	jal	ra,800066ac <kerneltrap>
    800069e4:	00013083          	ld	ra,0(sp)
    800069e8:	00813103          	ld	sp,8(sp)
    800069ec:	01013183          	ld	gp,16(sp)
    800069f0:	02013283          	ld	t0,32(sp)
    800069f4:	02813303          	ld	t1,40(sp)
    800069f8:	03013383          	ld	t2,48(sp)
    800069fc:	03813403          	ld	s0,56(sp)
    80006a00:	04013483          	ld	s1,64(sp)
    80006a04:	04813503          	ld	a0,72(sp)
    80006a08:	05013583          	ld	a1,80(sp)
    80006a0c:	05813603          	ld	a2,88(sp)
    80006a10:	06013683          	ld	a3,96(sp)
    80006a14:	06813703          	ld	a4,104(sp)
    80006a18:	07013783          	ld	a5,112(sp)
    80006a1c:	07813803          	ld	a6,120(sp)
    80006a20:	08013883          	ld	a7,128(sp)
    80006a24:	08813903          	ld	s2,136(sp)
    80006a28:	09013983          	ld	s3,144(sp)
    80006a2c:	09813a03          	ld	s4,152(sp)
    80006a30:	0a013a83          	ld	s5,160(sp)
    80006a34:	0a813b03          	ld	s6,168(sp)
    80006a38:	0b013b83          	ld	s7,176(sp)
    80006a3c:	0b813c03          	ld	s8,184(sp)
    80006a40:	0c013c83          	ld	s9,192(sp)
    80006a44:	0c813d03          	ld	s10,200(sp)
    80006a48:	0d013d83          	ld	s11,208(sp)
    80006a4c:	0d813e03          	ld	t3,216(sp)
    80006a50:	0e013e83          	ld	t4,224(sp)
    80006a54:	0e813f03          	ld	t5,232(sp)
    80006a58:	0f013f83          	ld	t6,240(sp)
    80006a5c:	10010113          	addi	sp,sp,256
    80006a60:	10200073          	sret
    80006a64:	00000013          	nop
    80006a68:	00000013          	nop
    80006a6c:	00000013          	nop

0000000080006a70 <timervec>:
    80006a70:	34051573          	csrrw	a0,mscratch,a0
    80006a74:	00b53023          	sd	a1,0(a0)
    80006a78:	00c53423          	sd	a2,8(a0)
    80006a7c:	00d53823          	sd	a3,16(a0)
    80006a80:	01853583          	ld	a1,24(a0)
    80006a84:	02053603          	ld	a2,32(a0)
    80006a88:	0005b683          	ld	a3,0(a1)
    80006a8c:	00c686b3          	add	a3,a3,a2
    80006a90:	00d5b023          	sd	a3,0(a1)
    80006a94:	00200593          	li	a1,2
    80006a98:	14459073          	csrw	sip,a1
    80006a9c:	01053683          	ld	a3,16(a0)
    80006aa0:	00853603          	ld	a2,8(a0)
    80006aa4:	00053583          	ld	a1,0(a0)
    80006aa8:	34051573          	csrrw	a0,mscratch,a0
    80006aac:	30200073          	mret

0000000080006ab0 <plicinit>:
    80006ab0:	ff010113          	addi	sp,sp,-16
    80006ab4:	00813423          	sd	s0,8(sp)
    80006ab8:	01010413          	addi	s0,sp,16
    80006abc:	00813403          	ld	s0,8(sp)
    80006ac0:	0c0007b7          	lui	a5,0xc000
    80006ac4:	00100713          	li	a4,1
    80006ac8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006acc:	00e7a223          	sw	a4,4(a5)
    80006ad0:	01010113          	addi	sp,sp,16
    80006ad4:	00008067          	ret

0000000080006ad8 <plicinithart>:
    80006ad8:	ff010113          	addi	sp,sp,-16
    80006adc:	00813023          	sd	s0,0(sp)
    80006ae0:	00113423          	sd	ra,8(sp)
    80006ae4:	01010413          	addi	s0,sp,16
    80006ae8:	00000097          	auipc	ra,0x0
    80006aec:	a44080e7          	jalr	-1468(ra) # 8000652c <cpuid>
    80006af0:	0085171b          	slliw	a4,a0,0x8
    80006af4:	0c0027b7          	lui	a5,0xc002
    80006af8:	00e787b3          	add	a5,a5,a4
    80006afc:	40200713          	li	a4,1026
    80006b00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b04:	00813083          	ld	ra,8(sp)
    80006b08:	00013403          	ld	s0,0(sp)
    80006b0c:	00d5151b          	slliw	a0,a0,0xd
    80006b10:	0c2017b7          	lui	a5,0xc201
    80006b14:	00a78533          	add	a0,a5,a0
    80006b18:	00052023          	sw	zero,0(a0)
    80006b1c:	01010113          	addi	sp,sp,16
    80006b20:	00008067          	ret

0000000080006b24 <plic_claim>:
    80006b24:	ff010113          	addi	sp,sp,-16
    80006b28:	00813023          	sd	s0,0(sp)
    80006b2c:	00113423          	sd	ra,8(sp)
    80006b30:	01010413          	addi	s0,sp,16
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	9f8080e7          	jalr	-1544(ra) # 8000652c <cpuid>
    80006b3c:	00813083          	ld	ra,8(sp)
    80006b40:	00013403          	ld	s0,0(sp)
    80006b44:	00d5151b          	slliw	a0,a0,0xd
    80006b48:	0c2017b7          	lui	a5,0xc201
    80006b4c:	00a78533          	add	a0,a5,a0
    80006b50:	00452503          	lw	a0,4(a0)
    80006b54:	01010113          	addi	sp,sp,16
    80006b58:	00008067          	ret

0000000080006b5c <plic_complete>:
    80006b5c:	fe010113          	addi	sp,sp,-32
    80006b60:	00813823          	sd	s0,16(sp)
    80006b64:	00913423          	sd	s1,8(sp)
    80006b68:	00113c23          	sd	ra,24(sp)
    80006b6c:	02010413          	addi	s0,sp,32
    80006b70:	00050493          	mv	s1,a0
    80006b74:	00000097          	auipc	ra,0x0
    80006b78:	9b8080e7          	jalr	-1608(ra) # 8000652c <cpuid>
    80006b7c:	01813083          	ld	ra,24(sp)
    80006b80:	01013403          	ld	s0,16(sp)
    80006b84:	00d5179b          	slliw	a5,a0,0xd
    80006b88:	0c201737          	lui	a4,0xc201
    80006b8c:	00f707b3          	add	a5,a4,a5
    80006b90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b94:	00813483          	ld	s1,8(sp)
    80006b98:	02010113          	addi	sp,sp,32
    80006b9c:	00008067          	ret

0000000080006ba0 <consolewrite>:
    80006ba0:	fb010113          	addi	sp,sp,-80
    80006ba4:	04813023          	sd	s0,64(sp)
    80006ba8:	04113423          	sd	ra,72(sp)
    80006bac:	02913c23          	sd	s1,56(sp)
    80006bb0:	03213823          	sd	s2,48(sp)
    80006bb4:	03313423          	sd	s3,40(sp)
    80006bb8:	03413023          	sd	s4,32(sp)
    80006bbc:	01513c23          	sd	s5,24(sp)
    80006bc0:	05010413          	addi	s0,sp,80
    80006bc4:	06c05c63          	blez	a2,80006c3c <consolewrite+0x9c>
    80006bc8:	00060993          	mv	s3,a2
    80006bcc:	00050a13          	mv	s4,a0
    80006bd0:	00058493          	mv	s1,a1
    80006bd4:	00000913          	li	s2,0
    80006bd8:	fff00a93          	li	s5,-1
    80006bdc:	01c0006f          	j	80006bf8 <consolewrite+0x58>
    80006be0:	fbf44503          	lbu	a0,-65(s0)
    80006be4:	0019091b          	addiw	s2,s2,1
    80006be8:	00148493          	addi	s1,s1,1
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	a9c080e7          	jalr	-1380(ra) # 80007688 <uartputc>
    80006bf4:	03298063          	beq	s3,s2,80006c14 <consolewrite+0x74>
    80006bf8:	00048613          	mv	a2,s1
    80006bfc:	00100693          	li	a3,1
    80006c00:	000a0593          	mv	a1,s4
    80006c04:	fbf40513          	addi	a0,s0,-65
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	9dc080e7          	jalr	-1572(ra) # 800065e4 <either_copyin>
    80006c10:	fd5518e3          	bne	a0,s5,80006be0 <consolewrite+0x40>
    80006c14:	04813083          	ld	ra,72(sp)
    80006c18:	04013403          	ld	s0,64(sp)
    80006c1c:	03813483          	ld	s1,56(sp)
    80006c20:	02813983          	ld	s3,40(sp)
    80006c24:	02013a03          	ld	s4,32(sp)
    80006c28:	01813a83          	ld	s5,24(sp)
    80006c2c:	00090513          	mv	a0,s2
    80006c30:	03013903          	ld	s2,48(sp)
    80006c34:	05010113          	addi	sp,sp,80
    80006c38:	00008067          	ret
    80006c3c:	00000913          	li	s2,0
    80006c40:	fd5ff06f          	j	80006c14 <consolewrite+0x74>

0000000080006c44 <consoleread>:
    80006c44:	f9010113          	addi	sp,sp,-112
    80006c48:	06813023          	sd	s0,96(sp)
    80006c4c:	04913c23          	sd	s1,88(sp)
    80006c50:	05213823          	sd	s2,80(sp)
    80006c54:	05313423          	sd	s3,72(sp)
    80006c58:	05413023          	sd	s4,64(sp)
    80006c5c:	03513c23          	sd	s5,56(sp)
    80006c60:	03613823          	sd	s6,48(sp)
    80006c64:	03713423          	sd	s7,40(sp)
    80006c68:	03813023          	sd	s8,32(sp)
    80006c6c:	06113423          	sd	ra,104(sp)
    80006c70:	01913c23          	sd	s9,24(sp)
    80006c74:	07010413          	addi	s0,sp,112
    80006c78:	00060b93          	mv	s7,a2
    80006c7c:	00050913          	mv	s2,a0
    80006c80:	00058c13          	mv	s8,a1
    80006c84:	00060b1b          	sext.w	s6,a2
    80006c88:	00006497          	auipc	s1,0x6
    80006c8c:	a1048493          	addi	s1,s1,-1520 # 8000c698 <cons>
    80006c90:	00400993          	li	s3,4
    80006c94:	fff00a13          	li	s4,-1
    80006c98:	00a00a93          	li	s5,10
    80006c9c:	05705e63          	blez	s7,80006cf8 <consoleread+0xb4>
    80006ca0:	09c4a703          	lw	a4,156(s1)
    80006ca4:	0984a783          	lw	a5,152(s1)
    80006ca8:	0007071b          	sext.w	a4,a4
    80006cac:	08e78463          	beq	a5,a4,80006d34 <consoleread+0xf0>
    80006cb0:	07f7f713          	andi	a4,a5,127
    80006cb4:	00e48733          	add	a4,s1,a4
    80006cb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006cbc:	0017869b          	addiw	a3,a5,1
    80006cc0:	08d4ac23          	sw	a3,152(s1)
    80006cc4:	00070c9b          	sext.w	s9,a4
    80006cc8:	0b370663          	beq	a4,s3,80006d74 <consoleread+0x130>
    80006ccc:	00100693          	li	a3,1
    80006cd0:	f9f40613          	addi	a2,s0,-97
    80006cd4:	000c0593          	mv	a1,s8
    80006cd8:	00090513          	mv	a0,s2
    80006cdc:	f8e40fa3          	sb	a4,-97(s0)
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	8b8080e7          	jalr	-1864(ra) # 80006598 <either_copyout>
    80006ce8:	01450863          	beq	a0,s4,80006cf8 <consoleread+0xb4>
    80006cec:	001c0c13          	addi	s8,s8,1
    80006cf0:	fffb8b9b          	addiw	s7,s7,-1
    80006cf4:	fb5c94e3          	bne	s9,s5,80006c9c <consoleread+0x58>
    80006cf8:	000b851b          	sext.w	a0,s7
    80006cfc:	06813083          	ld	ra,104(sp)
    80006d00:	06013403          	ld	s0,96(sp)
    80006d04:	05813483          	ld	s1,88(sp)
    80006d08:	05013903          	ld	s2,80(sp)
    80006d0c:	04813983          	ld	s3,72(sp)
    80006d10:	04013a03          	ld	s4,64(sp)
    80006d14:	03813a83          	ld	s5,56(sp)
    80006d18:	02813b83          	ld	s7,40(sp)
    80006d1c:	02013c03          	ld	s8,32(sp)
    80006d20:	01813c83          	ld	s9,24(sp)
    80006d24:	40ab053b          	subw	a0,s6,a0
    80006d28:	03013b03          	ld	s6,48(sp)
    80006d2c:	07010113          	addi	sp,sp,112
    80006d30:	00008067          	ret
    80006d34:	00001097          	auipc	ra,0x1
    80006d38:	1d8080e7          	jalr	472(ra) # 80007f0c <push_on>
    80006d3c:	0984a703          	lw	a4,152(s1)
    80006d40:	09c4a783          	lw	a5,156(s1)
    80006d44:	0007879b          	sext.w	a5,a5
    80006d48:	fef70ce3          	beq	a4,a5,80006d40 <consoleread+0xfc>
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	234080e7          	jalr	564(ra) # 80007f80 <pop_on>
    80006d54:	0984a783          	lw	a5,152(s1)
    80006d58:	07f7f713          	andi	a4,a5,127
    80006d5c:	00e48733          	add	a4,s1,a4
    80006d60:	01874703          	lbu	a4,24(a4)
    80006d64:	0017869b          	addiw	a3,a5,1
    80006d68:	08d4ac23          	sw	a3,152(s1)
    80006d6c:	00070c9b          	sext.w	s9,a4
    80006d70:	f5371ee3          	bne	a4,s3,80006ccc <consoleread+0x88>
    80006d74:	000b851b          	sext.w	a0,s7
    80006d78:	f96bf2e3          	bgeu	s7,s6,80006cfc <consoleread+0xb8>
    80006d7c:	08f4ac23          	sw	a5,152(s1)
    80006d80:	f7dff06f          	j	80006cfc <consoleread+0xb8>

0000000080006d84 <consputc>:
    80006d84:	10000793          	li	a5,256
    80006d88:	00f50663          	beq	a0,a5,80006d94 <consputc+0x10>
    80006d8c:	00001317          	auipc	t1,0x1
    80006d90:	9f430067          	jr	-1548(t1) # 80007780 <uartputc_sync>
    80006d94:	ff010113          	addi	sp,sp,-16
    80006d98:	00113423          	sd	ra,8(sp)
    80006d9c:	00813023          	sd	s0,0(sp)
    80006da0:	01010413          	addi	s0,sp,16
    80006da4:	00800513          	li	a0,8
    80006da8:	00001097          	auipc	ra,0x1
    80006dac:	9d8080e7          	jalr	-1576(ra) # 80007780 <uartputc_sync>
    80006db0:	02000513          	li	a0,32
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	9cc080e7          	jalr	-1588(ra) # 80007780 <uartputc_sync>
    80006dbc:	00013403          	ld	s0,0(sp)
    80006dc0:	00813083          	ld	ra,8(sp)
    80006dc4:	00800513          	li	a0,8
    80006dc8:	01010113          	addi	sp,sp,16
    80006dcc:	00001317          	auipc	t1,0x1
    80006dd0:	9b430067          	jr	-1612(t1) # 80007780 <uartputc_sync>

0000000080006dd4 <consoleintr>:
    80006dd4:	fe010113          	addi	sp,sp,-32
    80006dd8:	00813823          	sd	s0,16(sp)
    80006ddc:	00913423          	sd	s1,8(sp)
    80006de0:	01213023          	sd	s2,0(sp)
    80006de4:	00113c23          	sd	ra,24(sp)
    80006de8:	02010413          	addi	s0,sp,32
    80006dec:	00006917          	auipc	s2,0x6
    80006df0:	8ac90913          	addi	s2,s2,-1876 # 8000c698 <cons>
    80006df4:	00050493          	mv	s1,a0
    80006df8:	00090513          	mv	a0,s2
    80006dfc:	00001097          	auipc	ra,0x1
    80006e00:	e40080e7          	jalr	-448(ra) # 80007c3c <acquire>
    80006e04:	02048c63          	beqz	s1,80006e3c <consoleintr+0x68>
    80006e08:	0a092783          	lw	a5,160(s2)
    80006e0c:	09892703          	lw	a4,152(s2)
    80006e10:	07f00693          	li	a3,127
    80006e14:	40e7873b          	subw	a4,a5,a4
    80006e18:	02e6e263          	bltu	a3,a4,80006e3c <consoleintr+0x68>
    80006e1c:	00d00713          	li	a4,13
    80006e20:	04e48063          	beq	s1,a4,80006e60 <consoleintr+0x8c>
    80006e24:	07f7f713          	andi	a4,a5,127
    80006e28:	00e90733          	add	a4,s2,a4
    80006e2c:	0017879b          	addiw	a5,a5,1
    80006e30:	0af92023          	sw	a5,160(s2)
    80006e34:	00970c23          	sb	s1,24(a4)
    80006e38:	08f92e23          	sw	a5,156(s2)
    80006e3c:	01013403          	ld	s0,16(sp)
    80006e40:	01813083          	ld	ra,24(sp)
    80006e44:	00813483          	ld	s1,8(sp)
    80006e48:	00013903          	ld	s2,0(sp)
    80006e4c:	00006517          	auipc	a0,0x6
    80006e50:	84c50513          	addi	a0,a0,-1972 # 8000c698 <cons>
    80006e54:	02010113          	addi	sp,sp,32
    80006e58:	00001317          	auipc	t1,0x1
    80006e5c:	eb030067          	jr	-336(t1) # 80007d08 <release>
    80006e60:	00a00493          	li	s1,10
    80006e64:	fc1ff06f          	j	80006e24 <consoleintr+0x50>

0000000080006e68 <consoleinit>:
    80006e68:	fe010113          	addi	sp,sp,-32
    80006e6c:	00113c23          	sd	ra,24(sp)
    80006e70:	00813823          	sd	s0,16(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	02010413          	addi	s0,sp,32
    80006e7c:	00006497          	auipc	s1,0x6
    80006e80:	81c48493          	addi	s1,s1,-2020 # 8000c698 <cons>
    80006e84:	00048513          	mv	a0,s1
    80006e88:	00002597          	auipc	a1,0x2
    80006e8c:	70858593          	addi	a1,a1,1800 # 80009590 <_ZZ6prtIntmE6digits+0x4a8>
    80006e90:	00001097          	auipc	ra,0x1
    80006e94:	d88080e7          	jalr	-632(ra) # 80007c18 <initlock>
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	7ac080e7          	jalr	1964(ra) # 80007644 <uartinit>
    80006ea0:	01813083          	ld	ra,24(sp)
    80006ea4:	01013403          	ld	s0,16(sp)
    80006ea8:	00000797          	auipc	a5,0x0
    80006eac:	d9c78793          	addi	a5,a5,-612 # 80006c44 <consoleread>
    80006eb0:	0af4bc23          	sd	a5,184(s1)
    80006eb4:	00000797          	auipc	a5,0x0
    80006eb8:	cec78793          	addi	a5,a5,-788 # 80006ba0 <consolewrite>
    80006ebc:	0cf4b023          	sd	a5,192(s1)
    80006ec0:	00813483          	ld	s1,8(sp)
    80006ec4:	02010113          	addi	sp,sp,32
    80006ec8:	00008067          	ret

0000000080006ecc <console_read>:
    80006ecc:	ff010113          	addi	sp,sp,-16
    80006ed0:	00813423          	sd	s0,8(sp)
    80006ed4:	01010413          	addi	s0,sp,16
    80006ed8:	00813403          	ld	s0,8(sp)
    80006edc:	00006317          	auipc	t1,0x6
    80006ee0:	87433303          	ld	t1,-1932(t1) # 8000c750 <devsw+0x10>
    80006ee4:	01010113          	addi	sp,sp,16
    80006ee8:	00030067          	jr	t1

0000000080006eec <console_write>:
    80006eec:	ff010113          	addi	sp,sp,-16
    80006ef0:	00813423          	sd	s0,8(sp)
    80006ef4:	01010413          	addi	s0,sp,16
    80006ef8:	00813403          	ld	s0,8(sp)
    80006efc:	00006317          	auipc	t1,0x6
    80006f00:	85c33303          	ld	t1,-1956(t1) # 8000c758 <devsw+0x18>
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00030067          	jr	t1

0000000080006f0c <panic>:
    80006f0c:	fe010113          	addi	sp,sp,-32
    80006f10:	00113c23          	sd	ra,24(sp)
    80006f14:	00813823          	sd	s0,16(sp)
    80006f18:	00913423          	sd	s1,8(sp)
    80006f1c:	02010413          	addi	s0,sp,32
    80006f20:	00050493          	mv	s1,a0
    80006f24:	00002517          	auipc	a0,0x2
    80006f28:	67450513          	addi	a0,a0,1652 # 80009598 <_ZZ6prtIntmE6digits+0x4b0>
    80006f2c:	00006797          	auipc	a5,0x6
    80006f30:	8c07a623          	sw	zero,-1844(a5) # 8000c7f8 <pr+0x18>
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	034080e7          	jalr	52(ra) # 80006f68 <__printf>
    80006f3c:	00048513          	mv	a0,s1
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	028080e7          	jalr	40(ra) # 80006f68 <__printf>
    80006f48:	00002517          	auipc	a0,0x2
    80006f4c:	1e850513          	addi	a0,a0,488 # 80009130 <_ZZ6prtIntmE6digits+0x48>
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	018080e7          	jalr	24(ra) # 80006f68 <__printf>
    80006f58:	00100793          	li	a5,1
    80006f5c:	00004717          	auipc	a4,0x4
    80006f60:	5af72e23          	sw	a5,1468(a4) # 8000b518 <panicked>
    80006f64:	0000006f          	j	80006f64 <panic+0x58>

0000000080006f68 <__printf>:
    80006f68:	f3010113          	addi	sp,sp,-208
    80006f6c:	08813023          	sd	s0,128(sp)
    80006f70:	07313423          	sd	s3,104(sp)
    80006f74:	09010413          	addi	s0,sp,144
    80006f78:	05813023          	sd	s8,64(sp)
    80006f7c:	08113423          	sd	ra,136(sp)
    80006f80:	06913c23          	sd	s1,120(sp)
    80006f84:	07213823          	sd	s2,112(sp)
    80006f88:	07413023          	sd	s4,96(sp)
    80006f8c:	05513c23          	sd	s5,88(sp)
    80006f90:	05613823          	sd	s6,80(sp)
    80006f94:	05713423          	sd	s7,72(sp)
    80006f98:	03913c23          	sd	s9,56(sp)
    80006f9c:	03a13823          	sd	s10,48(sp)
    80006fa0:	03b13423          	sd	s11,40(sp)
    80006fa4:	00006317          	auipc	t1,0x6
    80006fa8:	83c30313          	addi	t1,t1,-1988 # 8000c7e0 <pr>
    80006fac:	01832c03          	lw	s8,24(t1)
    80006fb0:	00b43423          	sd	a1,8(s0)
    80006fb4:	00c43823          	sd	a2,16(s0)
    80006fb8:	00d43c23          	sd	a3,24(s0)
    80006fbc:	02e43023          	sd	a4,32(s0)
    80006fc0:	02f43423          	sd	a5,40(s0)
    80006fc4:	03043823          	sd	a6,48(s0)
    80006fc8:	03143c23          	sd	a7,56(s0)
    80006fcc:	00050993          	mv	s3,a0
    80006fd0:	4a0c1663          	bnez	s8,8000747c <__printf+0x514>
    80006fd4:	60098c63          	beqz	s3,800075ec <__printf+0x684>
    80006fd8:	0009c503          	lbu	a0,0(s3)
    80006fdc:	00840793          	addi	a5,s0,8
    80006fe0:	f6f43c23          	sd	a5,-136(s0)
    80006fe4:	00000493          	li	s1,0
    80006fe8:	22050063          	beqz	a0,80007208 <__printf+0x2a0>
    80006fec:	00002a37          	lui	s4,0x2
    80006ff0:	00018ab7          	lui	s5,0x18
    80006ff4:	000f4b37          	lui	s6,0xf4
    80006ff8:	00989bb7          	lui	s7,0x989
    80006ffc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007000:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007004:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007008:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000700c:	00148c9b          	addiw	s9,s1,1
    80007010:	02500793          	li	a5,37
    80007014:	01998933          	add	s2,s3,s9
    80007018:	38f51263          	bne	a0,a5,8000739c <__printf+0x434>
    8000701c:	00094783          	lbu	a5,0(s2)
    80007020:	00078c9b          	sext.w	s9,a5
    80007024:	1e078263          	beqz	a5,80007208 <__printf+0x2a0>
    80007028:	0024849b          	addiw	s1,s1,2
    8000702c:	07000713          	li	a4,112
    80007030:	00998933          	add	s2,s3,s1
    80007034:	38e78a63          	beq	a5,a4,800073c8 <__printf+0x460>
    80007038:	20f76863          	bltu	a4,a5,80007248 <__printf+0x2e0>
    8000703c:	42a78863          	beq	a5,a0,8000746c <__printf+0x504>
    80007040:	06400713          	li	a4,100
    80007044:	40e79663          	bne	a5,a4,80007450 <__printf+0x4e8>
    80007048:	f7843783          	ld	a5,-136(s0)
    8000704c:	0007a603          	lw	a2,0(a5)
    80007050:	00878793          	addi	a5,a5,8
    80007054:	f6f43c23          	sd	a5,-136(s0)
    80007058:	42064a63          	bltz	a2,8000748c <__printf+0x524>
    8000705c:	00a00713          	li	a4,10
    80007060:	02e677bb          	remuw	a5,a2,a4
    80007064:	00002d97          	auipc	s11,0x2
    80007068:	55cd8d93          	addi	s11,s11,1372 # 800095c0 <digits>
    8000706c:	00900593          	li	a1,9
    80007070:	0006051b          	sext.w	a0,a2
    80007074:	00000c93          	li	s9,0
    80007078:	02079793          	slli	a5,a5,0x20
    8000707c:	0207d793          	srli	a5,a5,0x20
    80007080:	00fd87b3          	add	a5,s11,a5
    80007084:	0007c783          	lbu	a5,0(a5)
    80007088:	02e656bb          	divuw	a3,a2,a4
    8000708c:	f8f40023          	sb	a5,-128(s0)
    80007090:	14c5d863          	bge	a1,a2,800071e0 <__printf+0x278>
    80007094:	06300593          	li	a1,99
    80007098:	00100c93          	li	s9,1
    8000709c:	02e6f7bb          	remuw	a5,a3,a4
    800070a0:	02079793          	slli	a5,a5,0x20
    800070a4:	0207d793          	srli	a5,a5,0x20
    800070a8:	00fd87b3          	add	a5,s11,a5
    800070ac:	0007c783          	lbu	a5,0(a5)
    800070b0:	02e6d73b          	divuw	a4,a3,a4
    800070b4:	f8f400a3          	sb	a5,-127(s0)
    800070b8:	12a5f463          	bgeu	a1,a0,800071e0 <__printf+0x278>
    800070bc:	00a00693          	li	a3,10
    800070c0:	00900593          	li	a1,9
    800070c4:	02d777bb          	remuw	a5,a4,a3
    800070c8:	02079793          	slli	a5,a5,0x20
    800070cc:	0207d793          	srli	a5,a5,0x20
    800070d0:	00fd87b3          	add	a5,s11,a5
    800070d4:	0007c503          	lbu	a0,0(a5)
    800070d8:	02d757bb          	divuw	a5,a4,a3
    800070dc:	f8a40123          	sb	a0,-126(s0)
    800070e0:	48e5f263          	bgeu	a1,a4,80007564 <__printf+0x5fc>
    800070e4:	06300513          	li	a0,99
    800070e8:	02d7f5bb          	remuw	a1,a5,a3
    800070ec:	02059593          	slli	a1,a1,0x20
    800070f0:	0205d593          	srli	a1,a1,0x20
    800070f4:	00bd85b3          	add	a1,s11,a1
    800070f8:	0005c583          	lbu	a1,0(a1)
    800070fc:	02d7d7bb          	divuw	a5,a5,a3
    80007100:	f8b401a3          	sb	a1,-125(s0)
    80007104:	48e57263          	bgeu	a0,a4,80007588 <__printf+0x620>
    80007108:	3e700513          	li	a0,999
    8000710c:	02d7f5bb          	remuw	a1,a5,a3
    80007110:	02059593          	slli	a1,a1,0x20
    80007114:	0205d593          	srli	a1,a1,0x20
    80007118:	00bd85b3          	add	a1,s11,a1
    8000711c:	0005c583          	lbu	a1,0(a1)
    80007120:	02d7d7bb          	divuw	a5,a5,a3
    80007124:	f8b40223          	sb	a1,-124(s0)
    80007128:	46e57663          	bgeu	a0,a4,80007594 <__printf+0x62c>
    8000712c:	02d7f5bb          	remuw	a1,a5,a3
    80007130:	02059593          	slli	a1,a1,0x20
    80007134:	0205d593          	srli	a1,a1,0x20
    80007138:	00bd85b3          	add	a1,s11,a1
    8000713c:	0005c583          	lbu	a1,0(a1)
    80007140:	02d7d7bb          	divuw	a5,a5,a3
    80007144:	f8b402a3          	sb	a1,-123(s0)
    80007148:	46ea7863          	bgeu	s4,a4,800075b8 <__printf+0x650>
    8000714c:	02d7f5bb          	remuw	a1,a5,a3
    80007150:	02059593          	slli	a1,a1,0x20
    80007154:	0205d593          	srli	a1,a1,0x20
    80007158:	00bd85b3          	add	a1,s11,a1
    8000715c:	0005c583          	lbu	a1,0(a1)
    80007160:	02d7d7bb          	divuw	a5,a5,a3
    80007164:	f8b40323          	sb	a1,-122(s0)
    80007168:	3eeaf863          	bgeu	s5,a4,80007558 <__printf+0x5f0>
    8000716c:	02d7f5bb          	remuw	a1,a5,a3
    80007170:	02059593          	slli	a1,a1,0x20
    80007174:	0205d593          	srli	a1,a1,0x20
    80007178:	00bd85b3          	add	a1,s11,a1
    8000717c:	0005c583          	lbu	a1,0(a1)
    80007180:	02d7d7bb          	divuw	a5,a5,a3
    80007184:	f8b403a3          	sb	a1,-121(s0)
    80007188:	42eb7e63          	bgeu	s6,a4,800075c4 <__printf+0x65c>
    8000718c:	02d7f5bb          	remuw	a1,a5,a3
    80007190:	02059593          	slli	a1,a1,0x20
    80007194:	0205d593          	srli	a1,a1,0x20
    80007198:	00bd85b3          	add	a1,s11,a1
    8000719c:	0005c583          	lbu	a1,0(a1)
    800071a0:	02d7d7bb          	divuw	a5,a5,a3
    800071a4:	f8b40423          	sb	a1,-120(s0)
    800071a8:	42ebfc63          	bgeu	s7,a4,800075e0 <__printf+0x678>
    800071ac:	02079793          	slli	a5,a5,0x20
    800071b0:	0207d793          	srli	a5,a5,0x20
    800071b4:	00fd8db3          	add	s11,s11,a5
    800071b8:	000dc703          	lbu	a4,0(s11)
    800071bc:	00a00793          	li	a5,10
    800071c0:	00900c93          	li	s9,9
    800071c4:	f8e404a3          	sb	a4,-119(s0)
    800071c8:	00065c63          	bgez	a2,800071e0 <__printf+0x278>
    800071cc:	f9040713          	addi	a4,s0,-112
    800071d0:	00f70733          	add	a4,a4,a5
    800071d4:	02d00693          	li	a3,45
    800071d8:	fed70823          	sb	a3,-16(a4)
    800071dc:	00078c93          	mv	s9,a5
    800071e0:	f8040793          	addi	a5,s0,-128
    800071e4:	01978cb3          	add	s9,a5,s9
    800071e8:	f7f40d13          	addi	s10,s0,-129
    800071ec:	000cc503          	lbu	a0,0(s9)
    800071f0:	fffc8c93          	addi	s9,s9,-1
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	b90080e7          	jalr	-1136(ra) # 80006d84 <consputc>
    800071fc:	ffac98e3          	bne	s9,s10,800071ec <__printf+0x284>
    80007200:	00094503          	lbu	a0,0(s2)
    80007204:	e00514e3          	bnez	a0,8000700c <__printf+0xa4>
    80007208:	1a0c1663          	bnez	s8,800073b4 <__printf+0x44c>
    8000720c:	08813083          	ld	ra,136(sp)
    80007210:	08013403          	ld	s0,128(sp)
    80007214:	07813483          	ld	s1,120(sp)
    80007218:	07013903          	ld	s2,112(sp)
    8000721c:	06813983          	ld	s3,104(sp)
    80007220:	06013a03          	ld	s4,96(sp)
    80007224:	05813a83          	ld	s5,88(sp)
    80007228:	05013b03          	ld	s6,80(sp)
    8000722c:	04813b83          	ld	s7,72(sp)
    80007230:	04013c03          	ld	s8,64(sp)
    80007234:	03813c83          	ld	s9,56(sp)
    80007238:	03013d03          	ld	s10,48(sp)
    8000723c:	02813d83          	ld	s11,40(sp)
    80007240:	0d010113          	addi	sp,sp,208
    80007244:	00008067          	ret
    80007248:	07300713          	li	a4,115
    8000724c:	1ce78a63          	beq	a5,a4,80007420 <__printf+0x4b8>
    80007250:	07800713          	li	a4,120
    80007254:	1ee79e63          	bne	a5,a4,80007450 <__printf+0x4e8>
    80007258:	f7843783          	ld	a5,-136(s0)
    8000725c:	0007a703          	lw	a4,0(a5)
    80007260:	00878793          	addi	a5,a5,8
    80007264:	f6f43c23          	sd	a5,-136(s0)
    80007268:	28074263          	bltz	a4,800074ec <__printf+0x584>
    8000726c:	00002d97          	auipc	s11,0x2
    80007270:	354d8d93          	addi	s11,s11,852 # 800095c0 <digits>
    80007274:	00f77793          	andi	a5,a4,15
    80007278:	00fd87b3          	add	a5,s11,a5
    8000727c:	0007c683          	lbu	a3,0(a5)
    80007280:	00f00613          	li	a2,15
    80007284:	0007079b          	sext.w	a5,a4
    80007288:	f8d40023          	sb	a3,-128(s0)
    8000728c:	0047559b          	srliw	a1,a4,0x4
    80007290:	0047569b          	srliw	a3,a4,0x4
    80007294:	00000c93          	li	s9,0
    80007298:	0ee65063          	bge	a2,a4,80007378 <__printf+0x410>
    8000729c:	00f6f693          	andi	a3,a3,15
    800072a0:	00dd86b3          	add	a3,s11,a3
    800072a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800072a8:	0087d79b          	srliw	a5,a5,0x8
    800072ac:	00100c93          	li	s9,1
    800072b0:	f8d400a3          	sb	a3,-127(s0)
    800072b4:	0cb67263          	bgeu	a2,a1,80007378 <__printf+0x410>
    800072b8:	00f7f693          	andi	a3,a5,15
    800072bc:	00dd86b3          	add	a3,s11,a3
    800072c0:	0006c583          	lbu	a1,0(a3)
    800072c4:	00f00613          	li	a2,15
    800072c8:	0047d69b          	srliw	a3,a5,0x4
    800072cc:	f8b40123          	sb	a1,-126(s0)
    800072d0:	0047d593          	srli	a1,a5,0x4
    800072d4:	28f67e63          	bgeu	a2,a5,80007570 <__printf+0x608>
    800072d8:	00f6f693          	andi	a3,a3,15
    800072dc:	00dd86b3          	add	a3,s11,a3
    800072e0:	0006c503          	lbu	a0,0(a3)
    800072e4:	0087d813          	srli	a6,a5,0x8
    800072e8:	0087d69b          	srliw	a3,a5,0x8
    800072ec:	f8a401a3          	sb	a0,-125(s0)
    800072f0:	28b67663          	bgeu	a2,a1,8000757c <__printf+0x614>
    800072f4:	00f6f693          	andi	a3,a3,15
    800072f8:	00dd86b3          	add	a3,s11,a3
    800072fc:	0006c583          	lbu	a1,0(a3)
    80007300:	00c7d513          	srli	a0,a5,0xc
    80007304:	00c7d69b          	srliw	a3,a5,0xc
    80007308:	f8b40223          	sb	a1,-124(s0)
    8000730c:	29067a63          	bgeu	a2,a6,800075a0 <__printf+0x638>
    80007310:	00f6f693          	andi	a3,a3,15
    80007314:	00dd86b3          	add	a3,s11,a3
    80007318:	0006c583          	lbu	a1,0(a3)
    8000731c:	0107d813          	srli	a6,a5,0x10
    80007320:	0107d69b          	srliw	a3,a5,0x10
    80007324:	f8b402a3          	sb	a1,-123(s0)
    80007328:	28a67263          	bgeu	a2,a0,800075ac <__printf+0x644>
    8000732c:	00f6f693          	andi	a3,a3,15
    80007330:	00dd86b3          	add	a3,s11,a3
    80007334:	0006c683          	lbu	a3,0(a3)
    80007338:	0147d79b          	srliw	a5,a5,0x14
    8000733c:	f8d40323          	sb	a3,-122(s0)
    80007340:	21067663          	bgeu	a2,a6,8000754c <__printf+0x5e4>
    80007344:	02079793          	slli	a5,a5,0x20
    80007348:	0207d793          	srli	a5,a5,0x20
    8000734c:	00fd8db3          	add	s11,s11,a5
    80007350:	000dc683          	lbu	a3,0(s11)
    80007354:	00800793          	li	a5,8
    80007358:	00700c93          	li	s9,7
    8000735c:	f8d403a3          	sb	a3,-121(s0)
    80007360:	00075c63          	bgez	a4,80007378 <__printf+0x410>
    80007364:	f9040713          	addi	a4,s0,-112
    80007368:	00f70733          	add	a4,a4,a5
    8000736c:	02d00693          	li	a3,45
    80007370:	fed70823          	sb	a3,-16(a4)
    80007374:	00078c93          	mv	s9,a5
    80007378:	f8040793          	addi	a5,s0,-128
    8000737c:	01978cb3          	add	s9,a5,s9
    80007380:	f7f40d13          	addi	s10,s0,-129
    80007384:	000cc503          	lbu	a0,0(s9)
    80007388:	fffc8c93          	addi	s9,s9,-1
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	9f8080e7          	jalr	-1544(ra) # 80006d84 <consputc>
    80007394:	ff9d18e3          	bne	s10,s9,80007384 <__printf+0x41c>
    80007398:	0100006f          	j	800073a8 <__printf+0x440>
    8000739c:	00000097          	auipc	ra,0x0
    800073a0:	9e8080e7          	jalr	-1560(ra) # 80006d84 <consputc>
    800073a4:	000c8493          	mv	s1,s9
    800073a8:	00094503          	lbu	a0,0(s2)
    800073ac:	c60510e3          	bnez	a0,8000700c <__printf+0xa4>
    800073b0:	e40c0ee3          	beqz	s8,8000720c <__printf+0x2a4>
    800073b4:	00005517          	auipc	a0,0x5
    800073b8:	42c50513          	addi	a0,a0,1068 # 8000c7e0 <pr>
    800073bc:	00001097          	auipc	ra,0x1
    800073c0:	94c080e7          	jalr	-1716(ra) # 80007d08 <release>
    800073c4:	e49ff06f          	j	8000720c <__printf+0x2a4>
    800073c8:	f7843783          	ld	a5,-136(s0)
    800073cc:	03000513          	li	a0,48
    800073d0:	01000d13          	li	s10,16
    800073d4:	00878713          	addi	a4,a5,8
    800073d8:	0007bc83          	ld	s9,0(a5)
    800073dc:	f6e43c23          	sd	a4,-136(s0)
    800073e0:	00000097          	auipc	ra,0x0
    800073e4:	9a4080e7          	jalr	-1628(ra) # 80006d84 <consputc>
    800073e8:	07800513          	li	a0,120
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	998080e7          	jalr	-1640(ra) # 80006d84 <consputc>
    800073f4:	00002d97          	auipc	s11,0x2
    800073f8:	1ccd8d93          	addi	s11,s11,460 # 800095c0 <digits>
    800073fc:	03ccd793          	srli	a5,s9,0x3c
    80007400:	00fd87b3          	add	a5,s11,a5
    80007404:	0007c503          	lbu	a0,0(a5)
    80007408:	fffd0d1b          	addiw	s10,s10,-1
    8000740c:	004c9c93          	slli	s9,s9,0x4
    80007410:	00000097          	auipc	ra,0x0
    80007414:	974080e7          	jalr	-1676(ra) # 80006d84 <consputc>
    80007418:	fe0d12e3          	bnez	s10,800073fc <__printf+0x494>
    8000741c:	f8dff06f          	j	800073a8 <__printf+0x440>
    80007420:	f7843783          	ld	a5,-136(s0)
    80007424:	0007bc83          	ld	s9,0(a5)
    80007428:	00878793          	addi	a5,a5,8
    8000742c:	f6f43c23          	sd	a5,-136(s0)
    80007430:	000c9a63          	bnez	s9,80007444 <__printf+0x4dc>
    80007434:	1080006f          	j	8000753c <__printf+0x5d4>
    80007438:	001c8c93          	addi	s9,s9,1
    8000743c:	00000097          	auipc	ra,0x0
    80007440:	948080e7          	jalr	-1720(ra) # 80006d84 <consputc>
    80007444:	000cc503          	lbu	a0,0(s9)
    80007448:	fe0518e3          	bnez	a0,80007438 <__printf+0x4d0>
    8000744c:	f5dff06f          	j	800073a8 <__printf+0x440>
    80007450:	02500513          	li	a0,37
    80007454:	00000097          	auipc	ra,0x0
    80007458:	930080e7          	jalr	-1744(ra) # 80006d84 <consputc>
    8000745c:	000c8513          	mv	a0,s9
    80007460:	00000097          	auipc	ra,0x0
    80007464:	924080e7          	jalr	-1756(ra) # 80006d84 <consputc>
    80007468:	f41ff06f          	j	800073a8 <__printf+0x440>
    8000746c:	02500513          	li	a0,37
    80007470:	00000097          	auipc	ra,0x0
    80007474:	914080e7          	jalr	-1772(ra) # 80006d84 <consputc>
    80007478:	f31ff06f          	j	800073a8 <__printf+0x440>
    8000747c:	00030513          	mv	a0,t1
    80007480:	00000097          	auipc	ra,0x0
    80007484:	7bc080e7          	jalr	1980(ra) # 80007c3c <acquire>
    80007488:	b4dff06f          	j	80006fd4 <__printf+0x6c>
    8000748c:	40c0053b          	negw	a0,a2
    80007490:	00a00713          	li	a4,10
    80007494:	02e576bb          	remuw	a3,a0,a4
    80007498:	00002d97          	auipc	s11,0x2
    8000749c:	128d8d93          	addi	s11,s11,296 # 800095c0 <digits>
    800074a0:	ff700593          	li	a1,-9
    800074a4:	02069693          	slli	a3,a3,0x20
    800074a8:	0206d693          	srli	a3,a3,0x20
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c683          	lbu	a3,0(a3)
    800074b4:	02e557bb          	divuw	a5,a0,a4
    800074b8:	f8d40023          	sb	a3,-128(s0)
    800074bc:	10b65e63          	bge	a2,a1,800075d8 <__printf+0x670>
    800074c0:	06300593          	li	a1,99
    800074c4:	02e7f6bb          	remuw	a3,a5,a4
    800074c8:	02069693          	slli	a3,a3,0x20
    800074cc:	0206d693          	srli	a3,a3,0x20
    800074d0:	00dd86b3          	add	a3,s11,a3
    800074d4:	0006c683          	lbu	a3,0(a3)
    800074d8:	02e7d73b          	divuw	a4,a5,a4
    800074dc:	00200793          	li	a5,2
    800074e0:	f8d400a3          	sb	a3,-127(s0)
    800074e4:	bca5ece3          	bltu	a1,a0,800070bc <__printf+0x154>
    800074e8:	ce5ff06f          	j	800071cc <__printf+0x264>
    800074ec:	40e007bb          	negw	a5,a4
    800074f0:	00002d97          	auipc	s11,0x2
    800074f4:	0d0d8d93          	addi	s11,s11,208 # 800095c0 <digits>
    800074f8:	00f7f693          	andi	a3,a5,15
    800074fc:	00dd86b3          	add	a3,s11,a3
    80007500:	0006c583          	lbu	a1,0(a3)
    80007504:	ff100613          	li	a2,-15
    80007508:	0047d69b          	srliw	a3,a5,0x4
    8000750c:	f8b40023          	sb	a1,-128(s0)
    80007510:	0047d59b          	srliw	a1,a5,0x4
    80007514:	0ac75e63          	bge	a4,a2,800075d0 <__printf+0x668>
    80007518:	00f6f693          	andi	a3,a3,15
    8000751c:	00dd86b3          	add	a3,s11,a3
    80007520:	0006c603          	lbu	a2,0(a3)
    80007524:	00f00693          	li	a3,15
    80007528:	0087d79b          	srliw	a5,a5,0x8
    8000752c:	f8c400a3          	sb	a2,-127(s0)
    80007530:	d8b6e4e3          	bltu	a3,a1,800072b8 <__printf+0x350>
    80007534:	00200793          	li	a5,2
    80007538:	e2dff06f          	j	80007364 <__printf+0x3fc>
    8000753c:	00002c97          	auipc	s9,0x2
    80007540:	064c8c93          	addi	s9,s9,100 # 800095a0 <_ZZ6prtIntmE6digits+0x4b8>
    80007544:	02800513          	li	a0,40
    80007548:	ef1ff06f          	j	80007438 <__printf+0x4d0>
    8000754c:	00700793          	li	a5,7
    80007550:	00600c93          	li	s9,6
    80007554:	e0dff06f          	j	80007360 <__printf+0x3f8>
    80007558:	00700793          	li	a5,7
    8000755c:	00600c93          	li	s9,6
    80007560:	c69ff06f          	j	800071c8 <__printf+0x260>
    80007564:	00300793          	li	a5,3
    80007568:	00200c93          	li	s9,2
    8000756c:	c5dff06f          	j	800071c8 <__printf+0x260>
    80007570:	00300793          	li	a5,3
    80007574:	00200c93          	li	s9,2
    80007578:	de9ff06f          	j	80007360 <__printf+0x3f8>
    8000757c:	00400793          	li	a5,4
    80007580:	00300c93          	li	s9,3
    80007584:	dddff06f          	j	80007360 <__printf+0x3f8>
    80007588:	00400793          	li	a5,4
    8000758c:	00300c93          	li	s9,3
    80007590:	c39ff06f          	j	800071c8 <__printf+0x260>
    80007594:	00500793          	li	a5,5
    80007598:	00400c93          	li	s9,4
    8000759c:	c2dff06f          	j	800071c8 <__printf+0x260>
    800075a0:	00500793          	li	a5,5
    800075a4:	00400c93          	li	s9,4
    800075a8:	db9ff06f          	j	80007360 <__printf+0x3f8>
    800075ac:	00600793          	li	a5,6
    800075b0:	00500c93          	li	s9,5
    800075b4:	dadff06f          	j	80007360 <__printf+0x3f8>
    800075b8:	00600793          	li	a5,6
    800075bc:	00500c93          	li	s9,5
    800075c0:	c09ff06f          	j	800071c8 <__printf+0x260>
    800075c4:	00800793          	li	a5,8
    800075c8:	00700c93          	li	s9,7
    800075cc:	bfdff06f          	j	800071c8 <__printf+0x260>
    800075d0:	00100793          	li	a5,1
    800075d4:	d91ff06f          	j	80007364 <__printf+0x3fc>
    800075d8:	00100793          	li	a5,1
    800075dc:	bf1ff06f          	j	800071cc <__printf+0x264>
    800075e0:	00900793          	li	a5,9
    800075e4:	00800c93          	li	s9,8
    800075e8:	be1ff06f          	j	800071c8 <__printf+0x260>
    800075ec:	00002517          	auipc	a0,0x2
    800075f0:	fbc50513          	addi	a0,a0,-68 # 800095a8 <_ZZ6prtIntmE6digits+0x4c0>
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	918080e7          	jalr	-1768(ra) # 80006f0c <panic>

00000000800075fc <printfinit>:
    800075fc:	fe010113          	addi	sp,sp,-32
    80007600:	00813823          	sd	s0,16(sp)
    80007604:	00913423          	sd	s1,8(sp)
    80007608:	00113c23          	sd	ra,24(sp)
    8000760c:	02010413          	addi	s0,sp,32
    80007610:	00005497          	auipc	s1,0x5
    80007614:	1d048493          	addi	s1,s1,464 # 8000c7e0 <pr>
    80007618:	00048513          	mv	a0,s1
    8000761c:	00002597          	auipc	a1,0x2
    80007620:	f9c58593          	addi	a1,a1,-100 # 800095b8 <_ZZ6prtIntmE6digits+0x4d0>
    80007624:	00000097          	auipc	ra,0x0
    80007628:	5f4080e7          	jalr	1524(ra) # 80007c18 <initlock>
    8000762c:	01813083          	ld	ra,24(sp)
    80007630:	01013403          	ld	s0,16(sp)
    80007634:	0004ac23          	sw	zero,24(s1)
    80007638:	00813483          	ld	s1,8(sp)
    8000763c:	02010113          	addi	sp,sp,32
    80007640:	00008067          	ret

0000000080007644 <uartinit>:
    80007644:	ff010113          	addi	sp,sp,-16
    80007648:	00813423          	sd	s0,8(sp)
    8000764c:	01010413          	addi	s0,sp,16
    80007650:	100007b7          	lui	a5,0x10000
    80007654:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007658:	f8000713          	li	a4,-128
    8000765c:	00e781a3          	sb	a4,3(a5)
    80007660:	00300713          	li	a4,3
    80007664:	00e78023          	sb	a4,0(a5)
    80007668:	000780a3          	sb	zero,1(a5)
    8000766c:	00e781a3          	sb	a4,3(a5)
    80007670:	00700693          	li	a3,7
    80007674:	00d78123          	sb	a3,2(a5)
    80007678:	00e780a3          	sb	a4,1(a5)
    8000767c:	00813403          	ld	s0,8(sp)
    80007680:	01010113          	addi	sp,sp,16
    80007684:	00008067          	ret

0000000080007688 <uartputc>:
    80007688:	00004797          	auipc	a5,0x4
    8000768c:	e907a783          	lw	a5,-368(a5) # 8000b518 <panicked>
    80007690:	00078463          	beqz	a5,80007698 <uartputc+0x10>
    80007694:	0000006f          	j	80007694 <uartputc+0xc>
    80007698:	fd010113          	addi	sp,sp,-48
    8000769c:	02813023          	sd	s0,32(sp)
    800076a0:	00913c23          	sd	s1,24(sp)
    800076a4:	01213823          	sd	s2,16(sp)
    800076a8:	01313423          	sd	s3,8(sp)
    800076ac:	02113423          	sd	ra,40(sp)
    800076b0:	03010413          	addi	s0,sp,48
    800076b4:	00004917          	auipc	s2,0x4
    800076b8:	e6c90913          	addi	s2,s2,-404 # 8000b520 <uart_tx_r>
    800076bc:	00093783          	ld	a5,0(s2)
    800076c0:	00004497          	auipc	s1,0x4
    800076c4:	e6848493          	addi	s1,s1,-408 # 8000b528 <uart_tx_w>
    800076c8:	0004b703          	ld	a4,0(s1)
    800076cc:	02078693          	addi	a3,a5,32
    800076d0:	00050993          	mv	s3,a0
    800076d4:	02e69c63          	bne	a3,a4,8000770c <uartputc+0x84>
    800076d8:	00001097          	auipc	ra,0x1
    800076dc:	834080e7          	jalr	-1996(ra) # 80007f0c <push_on>
    800076e0:	00093783          	ld	a5,0(s2)
    800076e4:	0004b703          	ld	a4,0(s1)
    800076e8:	02078793          	addi	a5,a5,32
    800076ec:	00e79463          	bne	a5,a4,800076f4 <uartputc+0x6c>
    800076f0:	0000006f          	j	800076f0 <uartputc+0x68>
    800076f4:	00001097          	auipc	ra,0x1
    800076f8:	88c080e7          	jalr	-1908(ra) # 80007f80 <pop_on>
    800076fc:	00093783          	ld	a5,0(s2)
    80007700:	0004b703          	ld	a4,0(s1)
    80007704:	02078693          	addi	a3,a5,32
    80007708:	fce688e3          	beq	a3,a4,800076d8 <uartputc+0x50>
    8000770c:	01f77693          	andi	a3,a4,31
    80007710:	00005597          	auipc	a1,0x5
    80007714:	0f058593          	addi	a1,a1,240 # 8000c800 <uart_tx_buf>
    80007718:	00d586b3          	add	a3,a1,a3
    8000771c:	00170713          	addi	a4,a4,1
    80007720:	01368023          	sb	s3,0(a3)
    80007724:	00e4b023          	sd	a4,0(s1)
    80007728:	10000637          	lui	a2,0x10000
    8000772c:	02f71063          	bne	a4,a5,8000774c <uartputc+0xc4>
    80007730:	0340006f          	j	80007764 <uartputc+0xdc>
    80007734:	00074703          	lbu	a4,0(a4)
    80007738:	00f93023          	sd	a5,0(s2)
    8000773c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007740:	00093783          	ld	a5,0(s2)
    80007744:	0004b703          	ld	a4,0(s1)
    80007748:	00f70e63          	beq	a4,a5,80007764 <uartputc+0xdc>
    8000774c:	00564683          	lbu	a3,5(a2)
    80007750:	01f7f713          	andi	a4,a5,31
    80007754:	00e58733          	add	a4,a1,a4
    80007758:	0206f693          	andi	a3,a3,32
    8000775c:	00178793          	addi	a5,a5,1
    80007760:	fc069ae3          	bnez	a3,80007734 <uartputc+0xac>
    80007764:	02813083          	ld	ra,40(sp)
    80007768:	02013403          	ld	s0,32(sp)
    8000776c:	01813483          	ld	s1,24(sp)
    80007770:	01013903          	ld	s2,16(sp)
    80007774:	00813983          	ld	s3,8(sp)
    80007778:	03010113          	addi	sp,sp,48
    8000777c:	00008067          	ret

0000000080007780 <uartputc_sync>:
    80007780:	ff010113          	addi	sp,sp,-16
    80007784:	00813423          	sd	s0,8(sp)
    80007788:	01010413          	addi	s0,sp,16
    8000778c:	00004717          	auipc	a4,0x4
    80007790:	d8c72703          	lw	a4,-628(a4) # 8000b518 <panicked>
    80007794:	02071663          	bnez	a4,800077c0 <uartputc_sync+0x40>
    80007798:	00050793          	mv	a5,a0
    8000779c:	100006b7          	lui	a3,0x10000
    800077a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800077a4:	02077713          	andi	a4,a4,32
    800077a8:	fe070ce3          	beqz	a4,800077a0 <uartputc_sync+0x20>
    800077ac:	0ff7f793          	andi	a5,a5,255
    800077b0:	00f68023          	sb	a5,0(a3)
    800077b4:	00813403          	ld	s0,8(sp)
    800077b8:	01010113          	addi	sp,sp,16
    800077bc:	00008067          	ret
    800077c0:	0000006f          	j	800077c0 <uartputc_sync+0x40>

00000000800077c4 <uartstart>:
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00813423          	sd	s0,8(sp)
    800077cc:	01010413          	addi	s0,sp,16
    800077d0:	00004617          	auipc	a2,0x4
    800077d4:	d5060613          	addi	a2,a2,-688 # 8000b520 <uart_tx_r>
    800077d8:	00004517          	auipc	a0,0x4
    800077dc:	d5050513          	addi	a0,a0,-688 # 8000b528 <uart_tx_w>
    800077e0:	00063783          	ld	a5,0(a2)
    800077e4:	00053703          	ld	a4,0(a0)
    800077e8:	04f70263          	beq	a4,a5,8000782c <uartstart+0x68>
    800077ec:	100005b7          	lui	a1,0x10000
    800077f0:	00005817          	auipc	a6,0x5
    800077f4:	01080813          	addi	a6,a6,16 # 8000c800 <uart_tx_buf>
    800077f8:	01c0006f          	j	80007814 <uartstart+0x50>
    800077fc:	0006c703          	lbu	a4,0(a3)
    80007800:	00f63023          	sd	a5,0(a2)
    80007804:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007808:	00063783          	ld	a5,0(a2)
    8000780c:	00053703          	ld	a4,0(a0)
    80007810:	00f70e63          	beq	a4,a5,8000782c <uartstart+0x68>
    80007814:	01f7f713          	andi	a4,a5,31
    80007818:	00e806b3          	add	a3,a6,a4
    8000781c:	0055c703          	lbu	a4,5(a1)
    80007820:	00178793          	addi	a5,a5,1
    80007824:	02077713          	andi	a4,a4,32
    80007828:	fc071ae3          	bnez	a4,800077fc <uartstart+0x38>
    8000782c:	00813403          	ld	s0,8(sp)
    80007830:	01010113          	addi	sp,sp,16
    80007834:	00008067          	ret

0000000080007838 <uartgetc>:
    80007838:	ff010113          	addi	sp,sp,-16
    8000783c:	00813423          	sd	s0,8(sp)
    80007840:	01010413          	addi	s0,sp,16
    80007844:	10000737          	lui	a4,0x10000
    80007848:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000784c:	0017f793          	andi	a5,a5,1
    80007850:	00078c63          	beqz	a5,80007868 <uartgetc+0x30>
    80007854:	00074503          	lbu	a0,0(a4)
    80007858:	0ff57513          	andi	a0,a0,255
    8000785c:	00813403          	ld	s0,8(sp)
    80007860:	01010113          	addi	sp,sp,16
    80007864:	00008067          	ret
    80007868:	fff00513          	li	a0,-1
    8000786c:	ff1ff06f          	j	8000785c <uartgetc+0x24>

0000000080007870 <uartintr>:
    80007870:	100007b7          	lui	a5,0x10000
    80007874:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007878:	0017f793          	andi	a5,a5,1
    8000787c:	0a078463          	beqz	a5,80007924 <uartintr+0xb4>
    80007880:	fe010113          	addi	sp,sp,-32
    80007884:	00813823          	sd	s0,16(sp)
    80007888:	00913423          	sd	s1,8(sp)
    8000788c:	00113c23          	sd	ra,24(sp)
    80007890:	02010413          	addi	s0,sp,32
    80007894:	100004b7          	lui	s1,0x10000
    80007898:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000789c:	0ff57513          	andi	a0,a0,255
    800078a0:	fffff097          	auipc	ra,0xfffff
    800078a4:	534080e7          	jalr	1332(ra) # 80006dd4 <consoleintr>
    800078a8:	0054c783          	lbu	a5,5(s1)
    800078ac:	0017f793          	andi	a5,a5,1
    800078b0:	fe0794e3          	bnez	a5,80007898 <uartintr+0x28>
    800078b4:	00004617          	auipc	a2,0x4
    800078b8:	c6c60613          	addi	a2,a2,-916 # 8000b520 <uart_tx_r>
    800078bc:	00004517          	auipc	a0,0x4
    800078c0:	c6c50513          	addi	a0,a0,-916 # 8000b528 <uart_tx_w>
    800078c4:	00063783          	ld	a5,0(a2)
    800078c8:	00053703          	ld	a4,0(a0)
    800078cc:	04f70263          	beq	a4,a5,80007910 <uartintr+0xa0>
    800078d0:	100005b7          	lui	a1,0x10000
    800078d4:	00005817          	auipc	a6,0x5
    800078d8:	f2c80813          	addi	a6,a6,-212 # 8000c800 <uart_tx_buf>
    800078dc:	01c0006f          	j	800078f8 <uartintr+0x88>
    800078e0:	0006c703          	lbu	a4,0(a3)
    800078e4:	00f63023          	sd	a5,0(a2)
    800078e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ec:	00063783          	ld	a5,0(a2)
    800078f0:	00053703          	ld	a4,0(a0)
    800078f4:	00f70e63          	beq	a4,a5,80007910 <uartintr+0xa0>
    800078f8:	01f7f713          	andi	a4,a5,31
    800078fc:	00e806b3          	add	a3,a6,a4
    80007900:	0055c703          	lbu	a4,5(a1)
    80007904:	00178793          	addi	a5,a5,1
    80007908:	02077713          	andi	a4,a4,32
    8000790c:	fc071ae3          	bnez	a4,800078e0 <uartintr+0x70>
    80007910:	01813083          	ld	ra,24(sp)
    80007914:	01013403          	ld	s0,16(sp)
    80007918:	00813483          	ld	s1,8(sp)
    8000791c:	02010113          	addi	sp,sp,32
    80007920:	00008067          	ret
    80007924:	00004617          	auipc	a2,0x4
    80007928:	bfc60613          	addi	a2,a2,-1028 # 8000b520 <uart_tx_r>
    8000792c:	00004517          	auipc	a0,0x4
    80007930:	bfc50513          	addi	a0,a0,-1028 # 8000b528 <uart_tx_w>
    80007934:	00063783          	ld	a5,0(a2)
    80007938:	00053703          	ld	a4,0(a0)
    8000793c:	04f70263          	beq	a4,a5,80007980 <uartintr+0x110>
    80007940:	100005b7          	lui	a1,0x10000
    80007944:	00005817          	auipc	a6,0x5
    80007948:	ebc80813          	addi	a6,a6,-324 # 8000c800 <uart_tx_buf>
    8000794c:	01c0006f          	j	80007968 <uartintr+0xf8>
    80007950:	0006c703          	lbu	a4,0(a3)
    80007954:	00f63023          	sd	a5,0(a2)
    80007958:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000795c:	00063783          	ld	a5,0(a2)
    80007960:	00053703          	ld	a4,0(a0)
    80007964:	02f70063          	beq	a4,a5,80007984 <uartintr+0x114>
    80007968:	01f7f713          	andi	a4,a5,31
    8000796c:	00e806b3          	add	a3,a6,a4
    80007970:	0055c703          	lbu	a4,5(a1)
    80007974:	00178793          	addi	a5,a5,1
    80007978:	02077713          	andi	a4,a4,32
    8000797c:	fc071ae3          	bnez	a4,80007950 <uartintr+0xe0>
    80007980:	00008067          	ret
    80007984:	00008067          	ret

0000000080007988 <kinit>:
    80007988:	fc010113          	addi	sp,sp,-64
    8000798c:	02913423          	sd	s1,40(sp)
    80007990:	fffff7b7          	lui	a5,0xfffff
    80007994:	00006497          	auipc	s1,0x6
    80007998:	e8b48493          	addi	s1,s1,-373 # 8000d81f <end+0xfff>
    8000799c:	02813823          	sd	s0,48(sp)
    800079a0:	01313c23          	sd	s3,24(sp)
    800079a4:	00f4f4b3          	and	s1,s1,a5
    800079a8:	02113c23          	sd	ra,56(sp)
    800079ac:	03213023          	sd	s2,32(sp)
    800079b0:	01413823          	sd	s4,16(sp)
    800079b4:	01513423          	sd	s5,8(sp)
    800079b8:	04010413          	addi	s0,sp,64
    800079bc:	000017b7          	lui	a5,0x1
    800079c0:	01100993          	li	s3,17
    800079c4:	00f487b3          	add	a5,s1,a5
    800079c8:	01b99993          	slli	s3,s3,0x1b
    800079cc:	06f9e063          	bltu	s3,a5,80007a2c <kinit+0xa4>
    800079d0:	00005a97          	auipc	s5,0x5
    800079d4:	e50a8a93          	addi	s5,s5,-432 # 8000c820 <end>
    800079d8:	0754ec63          	bltu	s1,s5,80007a50 <kinit+0xc8>
    800079dc:	0734fa63          	bgeu	s1,s3,80007a50 <kinit+0xc8>
    800079e0:	00088a37          	lui	s4,0x88
    800079e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079e8:	00004917          	auipc	s2,0x4
    800079ec:	b4890913          	addi	s2,s2,-1208 # 8000b530 <kmem>
    800079f0:	00ca1a13          	slli	s4,s4,0xc
    800079f4:	0140006f          	j	80007a08 <kinit+0x80>
    800079f8:	000017b7          	lui	a5,0x1
    800079fc:	00f484b3          	add	s1,s1,a5
    80007a00:	0554e863          	bltu	s1,s5,80007a50 <kinit+0xc8>
    80007a04:	0534f663          	bgeu	s1,s3,80007a50 <kinit+0xc8>
    80007a08:	00001637          	lui	a2,0x1
    80007a0c:	00100593          	li	a1,1
    80007a10:	00048513          	mv	a0,s1
    80007a14:	00000097          	auipc	ra,0x0
    80007a18:	5e4080e7          	jalr	1508(ra) # 80007ff8 <__memset>
    80007a1c:	00093783          	ld	a5,0(s2)
    80007a20:	00f4b023          	sd	a5,0(s1)
    80007a24:	00993023          	sd	s1,0(s2)
    80007a28:	fd4498e3          	bne	s1,s4,800079f8 <kinit+0x70>
    80007a2c:	03813083          	ld	ra,56(sp)
    80007a30:	03013403          	ld	s0,48(sp)
    80007a34:	02813483          	ld	s1,40(sp)
    80007a38:	02013903          	ld	s2,32(sp)
    80007a3c:	01813983          	ld	s3,24(sp)
    80007a40:	01013a03          	ld	s4,16(sp)
    80007a44:	00813a83          	ld	s5,8(sp)
    80007a48:	04010113          	addi	sp,sp,64
    80007a4c:	00008067          	ret
    80007a50:	00002517          	auipc	a0,0x2
    80007a54:	b8850513          	addi	a0,a0,-1144 # 800095d8 <digits+0x18>
    80007a58:	fffff097          	auipc	ra,0xfffff
    80007a5c:	4b4080e7          	jalr	1204(ra) # 80006f0c <panic>

0000000080007a60 <freerange>:
    80007a60:	fc010113          	addi	sp,sp,-64
    80007a64:	000017b7          	lui	a5,0x1
    80007a68:	02913423          	sd	s1,40(sp)
    80007a6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a70:	009504b3          	add	s1,a0,s1
    80007a74:	fffff537          	lui	a0,0xfffff
    80007a78:	02813823          	sd	s0,48(sp)
    80007a7c:	02113c23          	sd	ra,56(sp)
    80007a80:	03213023          	sd	s2,32(sp)
    80007a84:	01313c23          	sd	s3,24(sp)
    80007a88:	01413823          	sd	s4,16(sp)
    80007a8c:	01513423          	sd	s5,8(sp)
    80007a90:	01613023          	sd	s6,0(sp)
    80007a94:	04010413          	addi	s0,sp,64
    80007a98:	00a4f4b3          	and	s1,s1,a0
    80007a9c:	00f487b3          	add	a5,s1,a5
    80007aa0:	06f5e463          	bltu	a1,a5,80007b08 <freerange+0xa8>
    80007aa4:	00005a97          	auipc	s5,0x5
    80007aa8:	d7ca8a93          	addi	s5,s5,-644 # 8000c820 <end>
    80007aac:	0954e263          	bltu	s1,s5,80007b30 <freerange+0xd0>
    80007ab0:	01100993          	li	s3,17
    80007ab4:	01b99993          	slli	s3,s3,0x1b
    80007ab8:	0734fc63          	bgeu	s1,s3,80007b30 <freerange+0xd0>
    80007abc:	00058a13          	mv	s4,a1
    80007ac0:	00004917          	auipc	s2,0x4
    80007ac4:	a7090913          	addi	s2,s2,-1424 # 8000b530 <kmem>
    80007ac8:	00002b37          	lui	s6,0x2
    80007acc:	0140006f          	j	80007ae0 <freerange+0x80>
    80007ad0:	000017b7          	lui	a5,0x1
    80007ad4:	00f484b3          	add	s1,s1,a5
    80007ad8:	0554ec63          	bltu	s1,s5,80007b30 <freerange+0xd0>
    80007adc:	0534fa63          	bgeu	s1,s3,80007b30 <freerange+0xd0>
    80007ae0:	00001637          	lui	a2,0x1
    80007ae4:	00100593          	li	a1,1
    80007ae8:	00048513          	mv	a0,s1
    80007aec:	00000097          	auipc	ra,0x0
    80007af0:	50c080e7          	jalr	1292(ra) # 80007ff8 <__memset>
    80007af4:	00093703          	ld	a4,0(s2)
    80007af8:	016487b3          	add	a5,s1,s6
    80007afc:	00e4b023          	sd	a4,0(s1)
    80007b00:	00993023          	sd	s1,0(s2)
    80007b04:	fcfa76e3          	bgeu	s4,a5,80007ad0 <freerange+0x70>
    80007b08:	03813083          	ld	ra,56(sp)
    80007b0c:	03013403          	ld	s0,48(sp)
    80007b10:	02813483          	ld	s1,40(sp)
    80007b14:	02013903          	ld	s2,32(sp)
    80007b18:	01813983          	ld	s3,24(sp)
    80007b1c:	01013a03          	ld	s4,16(sp)
    80007b20:	00813a83          	ld	s5,8(sp)
    80007b24:	00013b03          	ld	s6,0(sp)
    80007b28:	04010113          	addi	sp,sp,64
    80007b2c:	00008067          	ret
    80007b30:	00002517          	auipc	a0,0x2
    80007b34:	aa850513          	addi	a0,a0,-1368 # 800095d8 <digits+0x18>
    80007b38:	fffff097          	auipc	ra,0xfffff
    80007b3c:	3d4080e7          	jalr	980(ra) # 80006f0c <panic>

0000000080007b40 <kfree>:
    80007b40:	fe010113          	addi	sp,sp,-32
    80007b44:	00813823          	sd	s0,16(sp)
    80007b48:	00113c23          	sd	ra,24(sp)
    80007b4c:	00913423          	sd	s1,8(sp)
    80007b50:	02010413          	addi	s0,sp,32
    80007b54:	03451793          	slli	a5,a0,0x34
    80007b58:	04079c63          	bnez	a5,80007bb0 <kfree+0x70>
    80007b5c:	00005797          	auipc	a5,0x5
    80007b60:	cc478793          	addi	a5,a5,-828 # 8000c820 <end>
    80007b64:	00050493          	mv	s1,a0
    80007b68:	04f56463          	bltu	a0,a5,80007bb0 <kfree+0x70>
    80007b6c:	01100793          	li	a5,17
    80007b70:	01b79793          	slli	a5,a5,0x1b
    80007b74:	02f57e63          	bgeu	a0,a5,80007bb0 <kfree+0x70>
    80007b78:	00001637          	lui	a2,0x1
    80007b7c:	00100593          	li	a1,1
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	478080e7          	jalr	1144(ra) # 80007ff8 <__memset>
    80007b88:	00004797          	auipc	a5,0x4
    80007b8c:	9a878793          	addi	a5,a5,-1624 # 8000b530 <kmem>
    80007b90:	0007b703          	ld	a4,0(a5)
    80007b94:	01813083          	ld	ra,24(sp)
    80007b98:	01013403          	ld	s0,16(sp)
    80007b9c:	00e4b023          	sd	a4,0(s1)
    80007ba0:	0097b023          	sd	s1,0(a5)
    80007ba4:	00813483          	ld	s1,8(sp)
    80007ba8:	02010113          	addi	sp,sp,32
    80007bac:	00008067          	ret
    80007bb0:	00002517          	auipc	a0,0x2
    80007bb4:	a2850513          	addi	a0,a0,-1496 # 800095d8 <digits+0x18>
    80007bb8:	fffff097          	auipc	ra,0xfffff
    80007bbc:	354080e7          	jalr	852(ra) # 80006f0c <panic>

0000000080007bc0 <kalloc>:
    80007bc0:	fe010113          	addi	sp,sp,-32
    80007bc4:	00813823          	sd	s0,16(sp)
    80007bc8:	00913423          	sd	s1,8(sp)
    80007bcc:	00113c23          	sd	ra,24(sp)
    80007bd0:	02010413          	addi	s0,sp,32
    80007bd4:	00004797          	auipc	a5,0x4
    80007bd8:	95c78793          	addi	a5,a5,-1700 # 8000b530 <kmem>
    80007bdc:	0007b483          	ld	s1,0(a5)
    80007be0:	02048063          	beqz	s1,80007c00 <kalloc+0x40>
    80007be4:	0004b703          	ld	a4,0(s1)
    80007be8:	00001637          	lui	a2,0x1
    80007bec:	00500593          	li	a1,5
    80007bf0:	00048513          	mv	a0,s1
    80007bf4:	00e7b023          	sd	a4,0(a5)
    80007bf8:	00000097          	auipc	ra,0x0
    80007bfc:	400080e7          	jalr	1024(ra) # 80007ff8 <__memset>
    80007c00:	01813083          	ld	ra,24(sp)
    80007c04:	01013403          	ld	s0,16(sp)
    80007c08:	00048513          	mv	a0,s1
    80007c0c:	00813483          	ld	s1,8(sp)
    80007c10:	02010113          	addi	sp,sp,32
    80007c14:	00008067          	ret

0000000080007c18 <initlock>:
    80007c18:	ff010113          	addi	sp,sp,-16
    80007c1c:	00813423          	sd	s0,8(sp)
    80007c20:	01010413          	addi	s0,sp,16
    80007c24:	00813403          	ld	s0,8(sp)
    80007c28:	00b53423          	sd	a1,8(a0)
    80007c2c:	00052023          	sw	zero,0(a0)
    80007c30:	00053823          	sd	zero,16(a0)
    80007c34:	01010113          	addi	sp,sp,16
    80007c38:	00008067          	ret

0000000080007c3c <acquire>:
    80007c3c:	fe010113          	addi	sp,sp,-32
    80007c40:	00813823          	sd	s0,16(sp)
    80007c44:	00913423          	sd	s1,8(sp)
    80007c48:	00113c23          	sd	ra,24(sp)
    80007c4c:	01213023          	sd	s2,0(sp)
    80007c50:	02010413          	addi	s0,sp,32
    80007c54:	00050493          	mv	s1,a0
    80007c58:	10002973          	csrr	s2,sstatus
    80007c5c:	100027f3          	csrr	a5,sstatus
    80007c60:	ffd7f793          	andi	a5,a5,-3
    80007c64:	10079073          	csrw	sstatus,a5
    80007c68:	fffff097          	auipc	ra,0xfffff
    80007c6c:	8e4080e7          	jalr	-1820(ra) # 8000654c <mycpu>
    80007c70:	07852783          	lw	a5,120(a0)
    80007c74:	06078e63          	beqz	a5,80007cf0 <acquire+0xb4>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	8d4080e7          	jalr	-1836(ra) # 8000654c <mycpu>
    80007c80:	07852783          	lw	a5,120(a0)
    80007c84:	0004a703          	lw	a4,0(s1)
    80007c88:	0017879b          	addiw	a5,a5,1
    80007c8c:	06f52c23          	sw	a5,120(a0)
    80007c90:	04071063          	bnez	a4,80007cd0 <acquire+0x94>
    80007c94:	00100713          	li	a4,1
    80007c98:	00070793          	mv	a5,a4
    80007c9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ca0:	0007879b          	sext.w	a5,a5
    80007ca4:	fe079ae3          	bnez	a5,80007c98 <acquire+0x5c>
    80007ca8:	0ff0000f          	fence
    80007cac:	fffff097          	auipc	ra,0xfffff
    80007cb0:	8a0080e7          	jalr	-1888(ra) # 8000654c <mycpu>
    80007cb4:	01813083          	ld	ra,24(sp)
    80007cb8:	01013403          	ld	s0,16(sp)
    80007cbc:	00a4b823          	sd	a0,16(s1)
    80007cc0:	00013903          	ld	s2,0(sp)
    80007cc4:	00813483          	ld	s1,8(sp)
    80007cc8:	02010113          	addi	sp,sp,32
    80007ccc:	00008067          	ret
    80007cd0:	0104b903          	ld	s2,16(s1)
    80007cd4:	fffff097          	auipc	ra,0xfffff
    80007cd8:	878080e7          	jalr	-1928(ra) # 8000654c <mycpu>
    80007cdc:	faa91ce3          	bne	s2,a0,80007c94 <acquire+0x58>
    80007ce0:	00002517          	auipc	a0,0x2
    80007ce4:	90050513          	addi	a0,a0,-1792 # 800095e0 <digits+0x20>
    80007ce8:	fffff097          	auipc	ra,0xfffff
    80007cec:	224080e7          	jalr	548(ra) # 80006f0c <panic>
    80007cf0:	00195913          	srli	s2,s2,0x1
    80007cf4:	fffff097          	auipc	ra,0xfffff
    80007cf8:	858080e7          	jalr	-1960(ra) # 8000654c <mycpu>
    80007cfc:	00197913          	andi	s2,s2,1
    80007d00:	07252e23          	sw	s2,124(a0)
    80007d04:	f75ff06f          	j	80007c78 <acquire+0x3c>

0000000080007d08 <release>:
    80007d08:	fe010113          	addi	sp,sp,-32
    80007d0c:	00813823          	sd	s0,16(sp)
    80007d10:	00113c23          	sd	ra,24(sp)
    80007d14:	00913423          	sd	s1,8(sp)
    80007d18:	01213023          	sd	s2,0(sp)
    80007d1c:	02010413          	addi	s0,sp,32
    80007d20:	00052783          	lw	a5,0(a0)
    80007d24:	00079a63          	bnez	a5,80007d38 <release+0x30>
    80007d28:	00002517          	auipc	a0,0x2
    80007d2c:	8c050513          	addi	a0,a0,-1856 # 800095e8 <digits+0x28>
    80007d30:	fffff097          	auipc	ra,0xfffff
    80007d34:	1dc080e7          	jalr	476(ra) # 80006f0c <panic>
    80007d38:	01053903          	ld	s2,16(a0)
    80007d3c:	00050493          	mv	s1,a0
    80007d40:	fffff097          	auipc	ra,0xfffff
    80007d44:	80c080e7          	jalr	-2036(ra) # 8000654c <mycpu>
    80007d48:	fea910e3          	bne	s2,a0,80007d28 <release+0x20>
    80007d4c:	0004b823          	sd	zero,16(s1)
    80007d50:	0ff0000f          	fence
    80007d54:	0f50000f          	fence	iorw,ow
    80007d58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d5c:	ffffe097          	auipc	ra,0xffffe
    80007d60:	7f0080e7          	jalr	2032(ra) # 8000654c <mycpu>
    80007d64:	100027f3          	csrr	a5,sstatus
    80007d68:	0027f793          	andi	a5,a5,2
    80007d6c:	04079a63          	bnez	a5,80007dc0 <release+0xb8>
    80007d70:	07852783          	lw	a5,120(a0)
    80007d74:	02f05e63          	blez	a5,80007db0 <release+0xa8>
    80007d78:	fff7871b          	addiw	a4,a5,-1
    80007d7c:	06e52c23          	sw	a4,120(a0)
    80007d80:	00071c63          	bnez	a4,80007d98 <release+0x90>
    80007d84:	07c52783          	lw	a5,124(a0)
    80007d88:	00078863          	beqz	a5,80007d98 <release+0x90>
    80007d8c:	100027f3          	csrr	a5,sstatus
    80007d90:	0027e793          	ori	a5,a5,2
    80007d94:	10079073          	csrw	sstatus,a5
    80007d98:	01813083          	ld	ra,24(sp)
    80007d9c:	01013403          	ld	s0,16(sp)
    80007da0:	00813483          	ld	s1,8(sp)
    80007da4:	00013903          	ld	s2,0(sp)
    80007da8:	02010113          	addi	sp,sp,32
    80007dac:	00008067          	ret
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	85850513          	addi	a0,a0,-1960 # 80009608 <digits+0x48>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	154080e7          	jalr	340(ra) # 80006f0c <panic>
    80007dc0:	00002517          	auipc	a0,0x2
    80007dc4:	83050513          	addi	a0,a0,-2000 # 800095f0 <digits+0x30>
    80007dc8:	fffff097          	auipc	ra,0xfffff
    80007dcc:	144080e7          	jalr	324(ra) # 80006f0c <panic>

0000000080007dd0 <holding>:
    80007dd0:	00052783          	lw	a5,0(a0)
    80007dd4:	00079663          	bnez	a5,80007de0 <holding+0x10>
    80007dd8:	00000513          	li	a0,0
    80007ddc:	00008067          	ret
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	00113c23          	sd	ra,24(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	01053483          	ld	s1,16(a0)
    80007df8:	ffffe097          	auipc	ra,0xffffe
    80007dfc:	754080e7          	jalr	1876(ra) # 8000654c <mycpu>
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	40a48533          	sub	a0,s1,a0
    80007e0c:	00153513          	seqz	a0,a0
    80007e10:	00813483          	ld	s1,8(sp)
    80007e14:	02010113          	addi	sp,sp,32
    80007e18:	00008067          	ret

0000000080007e1c <push_off>:
    80007e1c:	fe010113          	addi	sp,sp,-32
    80007e20:	00813823          	sd	s0,16(sp)
    80007e24:	00113c23          	sd	ra,24(sp)
    80007e28:	00913423          	sd	s1,8(sp)
    80007e2c:	02010413          	addi	s0,sp,32
    80007e30:	100024f3          	csrr	s1,sstatus
    80007e34:	100027f3          	csrr	a5,sstatus
    80007e38:	ffd7f793          	andi	a5,a5,-3
    80007e3c:	10079073          	csrw	sstatus,a5
    80007e40:	ffffe097          	auipc	ra,0xffffe
    80007e44:	70c080e7          	jalr	1804(ra) # 8000654c <mycpu>
    80007e48:	07852783          	lw	a5,120(a0)
    80007e4c:	02078663          	beqz	a5,80007e78 <push_off+0x5c>
    80007e50:	ffffe097          	auipc	ra,0xffffe
    80007e54:	6fc080e7          	jalr	1788(ra) # 8000654c <mycpu>
    80007e58:	07852783          	lw	a5,120(a0)
    80007e5c:	01813083          	ld	ra,24(sp)
    80007e60:	01013403          	ld	s0,16(sp)
    80007e64:	0017879b          	addiw	a5,a5,1
    80007e68:	06f52c23          	sw	a5,120(a0)
    80007e6c:	00813483          	ld	s1,8(sp)
    80007e70:	02010113          	addi	sp,sp,32
    80007e74:	00008067          	ret
    80007e78:	0014d493          	srli	s1,s1,0x1
    80007e7c:	ffffe097          	auipc	ra,0xffffe
    80007e80:	6d0080e7          	jalr	1744(ra) # 8000654c <mycpu>
    80007e84:	0014f493          	andi	s1,s1,1
    80007e88:	06952e23          	sw	s1,124(a0)
    80007e8c:	fc5ff06f          	j	80007e50 <push_off+0x34>

0000000080007e90 <pop_off>:
    80007e90:	ff010113          	addi	sp,sp,-16
    80007e94:	00813023          	sd	s0,0(sp)
    80007e98:	00113423          	sd	ra,8(sp)
    80007e9c:	01010413          	addi	s0,sp,16
    80007ea0:	ffffe097          	auipc	ra,0xffffe
    80007ea4:	6ac080e7          	jalr	1708(ra) # 8000654c <mycpu>
    80007ea8:	100027f3          	csrr	a5,sstatus
    80007eac:	0027f793          	andi	a5,a5,2
    80007eb0:	04079663          	bnez	a5,80007efc <pop_off+0x6c>
    80007eb4:	07852783          	lw	a5,120(a0)
    80007eb8:	02f05a63          	blez	a5,80007eec <pop_off+0x5c>
    80007ebc:	fff7871b          	addiw	a4,a5,-1
    80007ec0:	06e52c23          	sw	a4,120(a0)
    80007ec4:	00071c63          	bnez	a4,80007edc <pop_off+0x4c>
    80007ec8:	07c52783          	lw	a5,124(a0)
    80007ecc:	00078863          	beqz	a5,80007edc <pop_off+0x4c>
    80007ed0:	100027f3          	csrr	a5,sstatus
    80007ed4:	0027e793          	ori	a5,a5,2
    80007ed8:	10079073          	csrw	sstatus,a5
    80007edc:	00813083          	ld	ra,8(sp)
    80007ee0:	00013403          	ld	s0,0(sp)
    80007ee4:	01010113          	addi	sp,sp,16
    80007ee8:	00008067          	ret
    80007eec:	00001517          	auipc	a0,0x1
    80007ef0:	71c50513          	addi	a0,a0,1820 # 80009608 <digits+0x48>
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	018080e7          	jalr	24(ra) # 80006f0c <panic>
    80007efc:	00001517          	auipc	a0,0x1
    80007f00:	6f450513          	addi	a0,a0,1780 # 800095f0 <digits+0x30>
    80007f04:	fffff097          	auipc	ra,0xfffff
    80007f08:	008080e7          	jalr	8(ra) # 80006f0c <panic>

0000000080007f0c <push_on>:
    80007f0c:	fe010113          	addi	sp,sp,-32
    80007f10:	00813823          	sd	s0,16(sp)
    80007f14:	00113c23          	sd	ra,24(sp)
    80007f18:	00913423          	sd	s1,8(sp)
    80007f1c:	02010413          	addi	s0,sp,32
    80007f20:	100024f3          	csrr	s1,sstatus
    80007f24:	100027f3          	csrr	a5,sstatus
    80007f28:	0027e793          	ori	a5,a5,2
    80007f2c:	10079073          	csrw	sstatus,a5
    80007f30:	ffffe097          	auipc	ra,0xffffe
    80007f34:	61c080e7          	jalr	1564(ra) # 8000654c <mycpu>
    80007f38:	07852783          	lw	a5,120(a0)
    80007f3c:	02078663          	beqz	a5,80007f68 <push_on+0x5c>
    80007f40:	ffffe097          	auipc	ra,0xffffe
    80007f44:	60c080e7          	jalr	1548(ra) # 8000654c <mycpu>
    80007f48:	07852783          	lw	a5,120(a0)
    80007f4c:	01813083          	ld	ra,24(sp)
    80007f50:	01013403          	ld	s0,16(sp)
    80007f54:	0017879b          	addiw	a5,a5,1
    80007f58:	06f52c23          	sw	a5,120(a0)
    80007f5c:	00813483          	ld	s1,8(sp)
    80007f60:	02010113          	addi	sp,sp,32
    80007f64:	00008067          	ret
    80007f68:	0014d493          	srli	s1,s1,0x1
    80007f6c:	ffffe097          	auipc	ra,0xffffe
    80007f70:	5e0080e7          	jalr	1504(ra) # 8000654c <mycpu>
    80007f74:	0014f493          	andi	s1,s1,1
    80007f78:	06952e23          	sw	s1,124(a0)
    80007f7c:	fc5ff06f          	j	80007f40 <push_on+0x34>

0000000080007f80 <pop_on>:
    80007f80:	ff010113          	addi	sp,sp,-16
    80007f84:	00813023          	sd	s0,0(sp)
    80007f88:	00113423          	sd	ra,8(sp)
    80007f8c:	01010413          	addi	s0,sp,16
    80007f90:	ffffe097          	auipc	ra,0xffffe
    80007f94:	5bc080e7          	jalr	1468(ra) # 8000654c <mycpu>
    80007f98:	100027f3          	csrr	a5,sstatus
    80007f9c:	0027f793          	andi	a5,a5,2
    80007fa0:	04078463          	beqz	a5,80007fe8 <pop_on+0x68>
    80007fa4:	07852783          	lw	a5,120(a0)
    80007fa8:	02f05863          	blez	a5,80007fd8 <pop_on+0x58>
    80007fac:	fff7879b          	addiw	a5,a5,-1
    80007fb0:	06f52c23          	sw	a5,120(a0)
    80007fb4:	07853783          	ld	a5,120(a0)
    80007fb8:	00079863          	bnez	a5,80007fc8 <pop_on+0x48>
    80007fbc:	100027f3          	csrr	a5,sstatus
    80007fc0:	ffd7f793          	andi	a5,a5,-3
    80007fc4:	10079073          	csrw	sstatus,a5
    80007fc8:	00813083          	ld	ra,8(sp)
    80007fcc:	00013403          	ld	s0,0(sp)
    80007fd0:	01010113          	addi	sp,sp,16
    80007fd4:	00008067          	ret
    80007fd8:	00001517          	auipc	a0,0x1
    80007fdc:	65850513          	addi	a0,a0,1624 # 80009630 <digits+0x70>
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	f2c080e7          	jalr	-212(ra) # 80006f0c <panic>
    80007fe8:	00001517          	auipc	a0,0x1
    80007fec:	62850513          	addi	a0,a0,1576 # 80009610 <digits+0x50>
    80007ff0:	fffff097          	auipc	ra,0xfffff
    80007ff4:	f1c080e7          	jalr	-228(ra) # 80006f0c <panic>

0000000080007ff8 <__memset>:
    80007ff8:	ff010113          	addi	sp,sp,-16
    80007ffc:	00813423          	sd	s0,8(sp)
    80008000:	01010413          	addi	s0,sp,16
    80008004:	1a060e63          	beqz	a2,800081c0 <__memset+0x1c8>
    80008008:	40a007b3          	neg	a5,a0
    8000800c:	0077f793          	andi	a5,a5,7
    80008010:	00778693          	addi	a3,a5,7
    80008014:	00b00813          	li	a6,11
    80008018:	0ff5f593          	andi	a1,a1,255
    8000801c:	fff6071b          	addiw	a4,a2,-1
    80008020:	1b06e663          	bltu	a3,a6,800081cc <__memset+0x1d4>
    80008024:	1cd76463          	bltu	a4,a3,800081ec <__memset+0x1f4>
    80008028:	1a078e63          	beqz	a5,800081e4 <__memset+0x1ec>
    8000802c:	00b50023          	sb	a1,0(a0)
    80008030:	00100713          	li	a4,1
    80008034:	1ae78463          	beq	a5,a4,800081dc <__memset+0x1e4>
    80008038:	00b500a3          	sb	a1,1(a0)
    8000803c:	00200713          	li	a4,2
    80008040:	1ae78a63          	beq	a5,a4,800081f4 <__memset+0x1fc>
    80008044:	00b50123          	sb	a1,2(a0)
    80008048:	00300713          	li	a4,3
    8000804c:	18e78463          	beq	a5,a4,800081d4 <__memset+0x1dc>
    80008050:	00b501a3          	sb	a1,3(a0)
    80008054:	00400713          	li	a4,4
    80008058:	1ae78263          	beq	a5,a4,800081fc <__memset+0x204>
    8000805c:	00b50223          	sb	a1,4(a0)
    80008060:	00500713          	li	a4,5
    80008064:	1ae78063          	beq	a5,a4,80008204 <__memset+0x20c>
    80008068:	00b502a3          	sb	a1,5(a0)
    8000806c:	00700713          	li	a4,7
    80008070:	18e79e63          	bne	a5,a4,8000820c <__memset+0x214>
    80008074:	00b50323          	sb	a1,6(a0)
    80008078:	00700e93          	li	t4,7
    8000807c:	00859713          	slli	a4,a1,0x8
    80008080:	00e5e733          	or	a4,a1,a4
    80008084:	01059e13          	slli	t3,a1,0x10
    80008088:	01c76e33          	or	t3,a4,t3
    8000808c:	01859313          	slli	t1,a1,0x18
    80008090:	006e6333          	or	t1,t3,t1
    80008094:	02059893          	slli	a7,a1,0x20
    80008098:	40f60e3b          	subw	t3,a2,a5
    8000809c:	011368b3          	or	a7,t1,a7
    800080a0:	02859813          	slli	a6,a1,0x28
    800080a4:	0108e833          	or	a6,a7,a6
    800080a8:	03059693          	slli	a3,a1,0x30
    800080ac:	003e589b          	srliw	a7,t3,0x3
    800080b0:	00d866b3          	or	a3,a6,a3
    800080b4:	03859713          	slli	a4,a1,0x38
    800080b8:	00389813          	slli	a6,a7,0x3
    800080bc:	00f507b3          	add	a5,a0,a5
    800080c0:	00e6e733          	or	a4,a3,a4
    800080c4:	000e089b          	sext.w	a7,t3
    800080c8:	00f806b3          	add	a3,a6,a5
    800080cc:	00e7b023          	sd	a4,0(a5)
    800080d0:	00878793          	addi	a5,a5,8
    800080d4:	fed79ce3          	bne	a5,a3,800080cc <__memset+0xd4>
    800080d8:	ff8e7793          	andi	a5,t3,-8
    800080dc:	0007871b          	sext.w	a4,a5
    800080e0:	01d787bb          	addw	a5,a5,t4
    800080e4:	0ce88e63          	beq	a7,a4,800081c0 <__memset+0x1c8>
    800080e8:	00f50733          	add	a4,a0,a5
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0017871b          	addiw	a4,a5,1
    800080f4:	0cc77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0027871b          	addiw	a4,a5,2
    80008104:	0ac77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0037871b          	addiw	a4,a5,3
    80008114:	0ac77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0047871b          	addiw	a4,a5,4
    80008124:	08c77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0057871b          	addiw	a4,a5,5
    80008134:	08c77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	0067871b          	addiw	a4,a5,6
    80008144:	06c77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	0077871b          	addiw	a4,a5,7
    80008154:	06c77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	0087871b          	addiw	a4,a5,8
    80008164:	04c77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	0097871b          	addiw	a4,a5,9
    80008174:	04c77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008178:	00e50733          	add	a4,a0,a4
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	00a7871b          	addiw	a4,a5,10
    80008184:	02c77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	00b7871b          	addiw	a4,a5,11
    80008194:	02c77663          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	00c7871b          	addiw	a4,a5,12
    800081a4:	00c77e63          	bgeu	a4,a2,800081c0 <__memset+0x1c8>
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00b70023          	sb	a1,0(a4)
    800081b0:	00d7879b          	addiw	a5,a5,13
    800081b4:	00c7f663          	bgeu	a5,a2,800081c0 <__memset+0x1c8>
    800081b8:	00f507b3          	add	a5,a0,a5
    800081bc:	00b78023          	sb	a1,0(a5)
    800081c0:	00813403          	ld	s0,8(sp)
    800081c4:	01010113          	addi	sp,sp,16
    800081c8:	00008067          	ret
    800081cc:	00b00693          	li	a3,11
    800081d0:	e55ff06f          	j	80008024 <__memset+0x2c>
    800081d4:	00300e93          	li	t4,3
    800081d8:	ea5ff06f          	j	8000807c <__memset+0x84>
    800081dc:	00100e93          	li	t4,1
    800081e0:	e9dff06f          	j	8000807c <__memset+0x84>
    800081e4:	00000e93          	li	t4,0
    800081e8:	e95ff06f          	j	8000807c <__memset+0x84>
    800081ec:	00000793          	li	a5,0
    800081f0:	ef9ff06f          	j	800080e8 <__memset+0xf0>
    800081f4:	00200e93          	li	t4,2
    800081f8:	e85ff06f          	j	8000807c <__memset+0x84>
    800081fc:	00400e93          	li	t4,4
    80008200:	e7dff06f          	j	8000807c <__memset+0x84>
    80008204:	00500e93          	li	t4,5
    80008208:	e75ff06f          	j	8000807c <__memset+0x84>
    8000820c:	00600e93          	li	t4,6
    80008210:	e6dff06f          	j	8000807c <__memset+0x84>

0000000080008214 <__memmove>:
    80008214:	ff010113          	addi	sp,sp,-16
    80008218:	00813423          	sd	s0,8(sp)
    8000821c:	01010413          	addi	s0,sp,16
    80008220:	0e060863          	beqz	a2,80008310 <__memmove+0xfc>
    80008224:	fff6069b          	addiw	a3,a2,-1
    80008228:	0006881b          	sext.w	a6,a3
    8000822c:	0ea5e863          	bltu	a1,a0,8000831c <__memmove+0x108>
    80008230:	00758713          	addi	a4,a1,7
    80008234:	00a5e7b3          	or	a5,a1,a0
    80008238:	40a70733          	sub	a4,a4,a0
    8000823c:	0077f793          	andi	a5,a5,7
    80008240:	00f73713          	sltiu	a4,a4,15
    80008244:	00174713          	xori	a4,a4,1
    80008248:	0017b793          	seqz	a5,a5
    8000824c:	00e7f7b3          	and	a5,a5,a4
    80008250:	10078863          	beqz	a5,80008360 <__memmove+0x14c>
    80008254:	00900793          	li	a5,9
    80008258:	1107f463          	bgeu	a5,a6,80008360 <__memmove+0x14c>
    8000825c:	0036581b          	srliw	a6,a2,0x3
    80008260:	fff8081b          	addiw	a6,a6,-1
    80008264:	02081813          	slli	a6,a6,0x20
    80008268:	01d85893          	srli	a7,a6,0x1d
    8000826c:	00858813          	addi	a6,a1,8
    80008270:	00058793          	mv	a5,a1
    80008274:	00050713          	mv	a4,a0
    80008278:	01088833          	add	a6,a7,a6
    8000827c:	0007b883          	ld	a7,0(a5)
    80008280:	00878793          	addi	a5,a5,8
    80008284:	00870713          	addi	a4,a4,8
    80008288:	ff173c23          	sd	a7,-8(a4)
    8000828c:	ff0798e3          	bne	a5,a6,8000827c <__memmove+0x68>
    80008290:	ff867713          	andi	a4,a2,-8
    80008294:	02071793          	slli	a5,a4,0x20
    80008298:	0207d793          	srli	a5,a5,0x20
    8000829c:	00f585b3          	add	a1,a1,a5
    800082a0:	40e686bb          	subw	a3,a3,a4
    800082a4:	00f507b3          	add	a5,a0,a5
    800082a8:	06e60463          	beq	a2,a4,80008310 <__memmove+0xfc>
    800082ac:	0005c703          	lbu	a4,0(a1)
    800082b0:	00e78023          	sb	a4,0(a5)
    800082b4:	04068e63          	beqz	a3,80008310 <__memmove+0xfc>
    800082b8:	0015c603          	lbu	a2,1(a1)
    800082bc:	00100713          	li	a4,1
    800082c0:	00c780a3          	sb	a2,1(a5)
    800082c4:	04e68663          	beq	a3,a4,80008310 <__memmove+0xfc>
    800082c8:	0025c603          	lbu	a2,2(a1)
    800082cc:	00200713          	li	a4,2
    800082d0:	00c78123          	sb	a2,2(a5)
    800082d4:	02e68e63          	beq	a3,a4,80008310 <__memmove+0xfc>
    800082d8:	0035c603          	lbu	a2,3(a1)
    800082dc:	00300713          	li	a4,3
    800082e0:	00c781a3          	sb	a2,3(a5)
    800082e4:	02e68663          	beq	a3,a4,80008310 <__memmove+0xfc>
    800082e8:	0045c603          	lbu	a2,4(a1)
    800082ec:	00400713          	li	a4,4
    800082f0:	00c78223          	sb	a2,4(a5)
    800082f4:	00e68e63          	beq	a3,a4,80008310 <__memmove+0xfc>
    800082f8:	0055c603          	lbu	a2,5(a1)
    800082fc:	00500713          	li	a4,5
    80008300:	00c782a3          	sb	a2,5(a5)
    80008304:	00e68663          	beq	a3,a4,80008310 <__memmove+0xfc>
    80008308:	0065c703          	lbu	a4,6(a1)
    8000830c:	00e78323          	sb	a4,6(a5)
    80008310:	00813403          	ld	s0,8(sp)
    80008314:	01010113          	addi	sp,sp,16
    80008318:	00008067          	ret
    8000831c:	02061713          	slli	a4,a2,0x20
    80008320:	02075713          	srli	a4,a4,0x20
    80008324:	00e587b3          	add	a5,a1,a4
    80008328:	f0f574e3          	bgeu	a0,a5,80008230 <__memmove+0x1c>
    8000832c:	02069613          	slli	a2,a3,0x20
    80008330:	02065613          	srli	a2,a2,0x20
    80008334:	fff64613          	not	a2,a2
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00c78633          	add	a2,a5,a2
    80008340:	fff7c683          	lbu	a3,-1(a5)
    80008344:	fff78793          	addi	a5,a5,-1
    80008348:	fff70713          	addi	a4,a4,-1
    8000834c:	00d70023          	sb	a3,0(a4)
    80008350:	fec798e3          	bne	a5,a2,80008340 <__memmove+0x12c>
    80008354:	00813403          	ld	s0,8(sp)
    80008358:	01010113          	addi	sp,sp,16
    8000835c:	00008067          	ret
    80008360:	02069713          	slli	a4,a3,0x20
    80008364:	02075713          	srli	a4,a4,0x20
    80008368:	00170713          	addi	a4,a4,1
    8000836c:	00e50733          	add	a4,a0,a4
    80008370:	00050793          	mv	a5,a0
    80008374:	0005c683          	lbu	a3,0(a1)
    80008378:	00178793          	addi	a5,a5,1
    8000837c:	00158593          	addi	a1,a1,1
    80008380:	fed78fa3          	sb	a3,-1(a5)
    80008384:	fee798e3          	bne	a5,a4,80008374 <__memmove+0x160>
    80008388:	f89ff06f          	j	80008310 <__memmove+0xfc>

000000008000838c <__putc>:
    8000838c:	fe010113          	addi	sp,sp,-32
    80008390:	00813823          	sd	s0,16(sp)
    80008394:	00113c23          	sd	ra,24(sp)
    80008398:	02010413          	addi	s0,sp,32
    8000839c:	00050793          	mv	a5,a0
    800083a0:	fef40593          	addi	a1,s0,-17
    800083a4:	00100613          	li	a2,1
    800083a8:	00000513          	li	a0,0
    800083ac:	fef407a3          	sb	a5,-17(s0)
    800083b0:	fffff097          	auipc	ra,0xfffff
    800083b4:	b3c080e7          	jalr	-1220(ra) # 80006eec <console_write>
    800083b8:	01813083          	ld	ra,24(sp)
    800083bc:	01013403          	ld	s0,16(sp)
    800083c0:	02010113          	addi	sp,sp,32
    800083c4:	00008067          	ret

00000000800083c8 <__getc>:
    800083c8:	fe010113          	addi	sp,sp,-32
    800083cc:	00813823          	sd	s0,16(sp)
    800083d0:	00113c23          	sd	ra,24(sp)
    800083d4:	02010413          	addi	s0,sp,32
    800083d8:	fe840593          	addi	a1,s0,-24
    800083dc:	00100613          	li	a2,1
    800083e0:	00000513          	li	a0,0
    800083e4:	fffff097          	auipc	ra,0xfffff
    800083e8:	ae8080e7          	jalr	-1304(ra) # 80006ecc <console_read>
    800083ec:	fe844503          	lbu	a0,-24(s0)
    800083f0:	01813083          	ld	ra,24(sp)
    800083f4:	01013403          	ld	s0,16(sp)
    800083f8:	02010113          	addi	sp,sp,32
    800083fc:	00008067          	ret

0000000080008400 <console_handler>:
    80008400:	fe010113          	addi	sp,sp,-32
    80008404:	00813823          	sd	s0,16(sp)
    80008408:	00113c23          	sd	ra,24(sp)
    8000840c:	00913423          	sd	s1,8(sp)
    80008410:	02010413          	addi	s0,sp,32
    80008414:	14202773          	csrr	a4,scause
    80008418:	100027f3          	csrr	a5,sstatus
    8000841c:	0027f793          	andi	a5,a5,2
    80008420:	06079e63          	bnez	a5,8000849c <console_handler+0x9c>
    80008424:	00074c63          	bltz	a4,8000843c <console_handler+0x3c>
    80008428:	01813083          	ld	ra,24(sp)
    8000842c:	01013403          	ld	s0,16(sp)
    80008430:	00813483          	ld	s1,8(sp)
    80008434:	02010113          	addi	sp,sp,32
    80008438:	00008067          	ret
    8000843c:	0ff77713          	andi	a4,a4,255
    80008440:	00900793          	li	a5,9
    80008444:	fef712e3          	bne	a4,a5,80008428 <console_handler+0x28>
    80008448:	ffffe097          	auipc	ra,0xffffe
    8000844c:	6dc080e7          	jalr	1756(ra) # 80006b24 <plic_claim>
    80008450:	00a00793          	li	a5,10
    80008454:	00050493          	mv	s1,a0
    80008458:	02f50c63          	beq	a0,a5,80008490 <console_handler+0x90>
    8000845c:	fc0506e3          	beqz	a0,80008428 <console_handler+0x28>
    80008460:	00050593          	mv	a1,a0
    80008464:	00001517          	auipc	a0,0x1
    80008468:	0d450513          	addi	a0,a0,212 # 80009538 <_ZZ6prtIntmE6digits+0x450>
    8000846c:	fffff097          	auipc	ra,0xfffff
    80008470:	afc080e7          	jalr	-1284(ra) # 80006f68 <__printf>
    80008474:	01013403          	ld	s0,16(sp)
    80008478:	01813083          	ld	ra,24(sp)
    8000847c:	00048513          	mv	a0,s1
    80008480:	00813483          	ld	s1,8(sp)
    80008484:	02010113          	addi	sp,sp,32
    80008488:	ffffe317          	auipc	t1,0xffffe
    8000848c:	6d430067          	jr	1748(t1) # 80006b5c <plic_complete>
    80008490:	fffff097          	auipc	ra,0xfffff
    80008494:	3e0080e7          	jalr	992(ra) # 80007870 <uartintr>
    80008498:	fddff06f          	j	80008474 <console_handler+0x74>
    8000849c:	00001517          	auipc	a0,0x1
    800084a0:	19c50513          	addi	a0,a0,412 # 80009638 <digits+0x78>
    800084a4:	fffff097          	auipc	ra,0xfffff
    800084a8:	a68080e7          	jalr	-1432(ra) # 80006f0c <panic>
	...
