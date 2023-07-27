
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	b7013103          	ld	sp,-1168(sp) # 80005b70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7d4020ef          	jal	ra,800027f0 <start>

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
    800011a8:	459000ef          	jal	ra,80001e00 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012b0:	4d5000ef          	jal	ra,80001f84 <_ZN5Riscv14timerInterruptEv>

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
    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr
    80001338:	00113423          	sd	ra,8(sp)
    8000133c:	00213823          	sd	sp,16(sp)
    80001340:	00313c23          	sd	gp,24(sp)
    80001344:	02413023          	sd	tp,32(sp)
    80001348:	02513423          	sd	t0,40(sp)
    8000134c:	02613823          	sd	t1,48(sp)
    80001350:	02713c23          	sd	t2,56(sp)
    80001354:	04813023          	sd	s0,64(sp)
    80001358:	04913423          	sd	s1,72(sp)
    8000135c:	04a13823          	sd	a0,80(sp)
    80001360:	04b13c23          	sd	a1,88(sp)
    80001364:	06c13023          	sd	a2,96(sp)
    80001368:	06d13423          	sd	a3,104(sp)
    8000136c:	06e13823          	sd	a4,112(sp)
    80001370:	06f13c23          	sd	a5,120(sp)
    80001374:	09013023          	sd	a6,128(sp)
    80001378:	09113423          	sd	a7,136(sp)
    8000137c:	09213823          	sd	s2,144(sp)
    80001380:	09313c23          	sd	s3,152(sp)
    80001384:	0b413023          	sd	s4,160(sp)
    80001388:	0b513423          	sd	s5,168(sp)
    8000138c:	0b613823          	sd	s6,176(sp)
    80001390:	0b713c23          	sd	s7,184(sp)
    80001394:	0d813023          	sd	s8,192(sp)
    80001398:	0d913423          	sd	s9,200(sp)
    8000139c:	0da13823          	sd	s10,208(sp)
    800013a0:	0db13c23          	sd	s11,216(sp)
    800013a4:	0fc13023          	sd	t3,224(sp)
    800013a8:	0fd13423          	sd	t4,232(sp)
    800013ac:	0fe13823          	sd	t5,240(sp)
    800013b0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv17hardwareInterruptEv
    800013b4:	489000ef          	jal	ra,8000203c <_ZN5Riscv17hardwareInterruptEv>

    .irp ind, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr
    800013b8:	00813083          	ld	ra,8(sp)
    800013bc:	01013103          	ld	sp,16(sp)
    800013c0:	01813183          	ld	gp,24(sp)
    800013c4:	02013203          	ld	tp,32(sp)
    800013c8:	02813283          	ld	t0,40(sp)
    800013cc:	03013303          	ld	t1,48(sp)
    800013d0:	03813383          	ld	t2,56(sp)
    800013d4:	04013403          	ld	s0,64(sp)
    800013d8:	04813483          	ld	s1,72(sp)
    800013dc:	05013503          	ld	a0,80(sp)
    800013e0:	05813583          	ld	a1,88(sp)
    800013e4:	06013603          	ld	a2,96(sp)
    800013e8:	06813683          	ld	a3,104(sp)
    800013ec:	07013703          	ld	a4,112(sp)
    800013f0:	07813783          	ld	a5,120(sp)
    800013f4:	08013803          	ld	a6,128(sp)
    800013f8:	08813883          	ld	a7,136(sp)
    800013fc:	09013903          	ld	s2,144(sp)
    80001400:	09813983          	ld	s3,152(sp)
    80001404:	0a013a03          	ld	s4,160(sp)
    80001408:	0a813a83          	ld	s5,168(sp)
    8000140c:	0b013b03          	ld	s6,176(sp)
    80001410:	0b813b83          	ld	s7,184(sp)
    80001414:	0c013c03          	ld	s8,192(sp)
    80001418:	0c813c83          	ld	s9,200(sp)
    8000141c:	0d013d03          	ld	s10,208(sp)
    80001420:	0d813d83          	ld	s11,216(sp)
    80001424:	0e013e03          	ld	t3,224(sp)
    80001428:	0e813e83          	ld	t4,232(sp)
    8000142c:	0f013f03          	ld	t5,240(sp)
    80001430:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001434:	10010113          	addi	sp,sp,256

    80001438:	10200073          	sret
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

000000008000145c <_Z18commonPartSysCallsiz>:
//


#include "../h/syscall_c.hpp"

void commonPartSysCalls(int code, ...){
    8000145c:	fb010113          	addi	sp,sp,-80
    80001460:	00813423          	sd	s0,8(sp)
    80001464:	01010413          	addi	s0,sp,16
    80001468:	00b43423          	sd	a1,8(s0)
    8000146c:	00c43823          	sd	a2,16(s0)
    80001470:	00d43c23          	sd	a3,24(s0)
    80001474:	02e43023          	sd	a4,32(s0)
    80001478:	02f43423          	sd	a5,40(s0)
    8000147c:	03043823          	sd	a6,48(s0)
    80001480:	03143c23          	sd	a7,56(s0)
    __asm__ volatile("ecall");
    80001484:	00000073          	ecall
}
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	05010113          	addi	sp,sp,80
    80001490:	00008067          	ret

0000000080001494 <_Z9mem_allocm>:


void *mem_alloc(size_t size) {
    80001494:	fe010113          	addi	sp,sp,-32
    80001498:	00113c23          	sd	ra,24(sp)
    8000149c:	00813823          	sd	s0,16(sp)
    800014a0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */

    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    800014a4:	03f50593          	addi	a1,a0,63
    800014a8:	0065d593          	srli	a1,a1,0x6
    800014ac:	00100513          	li	a0,1
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	fac080e7          	jalr	-84(ra) # 8000145c <_Z18commonPartSysCallsiz>

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800014b8:	00050793          	mv	a5,a0
    800014bc:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    800014c0:	fe843503          	ld	a0,-24(s0)
}
    800014c4:	01813083          	ld	ra,24(sp)
    800014c8:	01013403          	ld	s0,16(sp)
    800014cc:	02010113          	addi	sp,sp,32
    800014d0:	00008067          	ret

00000000800014d4 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	02010413          	addi	s0,sp,32
    800014e4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));

    __asm__ volatile("ecall");
     */
    commonPartSysCalls(0x02, (uint64)ptr);
    800014e8:	00200513          	li	a0,2
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	f70080e7          	jalr	-144(ra) # 8000145c <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800014f4:	00050793          	mv	a5,a0
    800014f8:	fef42623          	sw	a5,-20(s0)
    return ret;
    800014fc:	fec42503          	lw	a0,-20(s0)
}
    80001500:	0005051b          	sext.w	a0,a0
    80001504:	01813083          	ld	ra,24(sp)
    80001508:	01013403          	ld	s0,16(sp)
    8000150c:	02010113          	addi	sp,sp,32
    80001510:	00008067          	ret

0000000080001514 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001514:	fc010113          	addi	sp,sp,-64
    80001518:	02113c23          	sd	ra,56(sp)
    8000151c:	02813823          	sd	s0,48(sp)
    80001520:	02913423          	sd	s1,40(sp)
    80001524:	03213023          	sd	s2,32(sp)
    80001528:	01313c23          	sd	s3,24(sp)
    8000152c:	04010413          	addi	s0,sp,64
    80001530:	00050493          	mv	s1,a0
    80001534:	00058913          	mv	s2,a1
    80001538:	00060993          	mv	s3,a2
    uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    8000153c:	00001537          	lui	a0,0x1
    80001540:	00000097          	auipc	ra,0x0
    80001544:	f54080e7          	jalr	-172(ra) # 80001494 <_Z9mem_allocm>
    if(stack==nullptr)return -1;
    80001548:	04050663          	beqz	a0,80001594 <_Z13thread_createPP7_threadPFvPvES2_+0x80>
    8000154c:	00050713          	mv	a4,a0
    commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    80001550:	00098693          	mv	a3,s3
    80001554:	00090613          	mv	a2,s2
    80001558:	00048593          	mv	a1,s1
    8000155c:	01100513          	li	a0,17
    80001560:	00000097          	auipc	ra,0x0
    80001564:	efc080e7          	jalr	-260(ra) # 8000145c <_Z18commonPartSysCallsiz>


    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001568:	00050793          	mv	a5,a0
    8000156c:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001570:	fcc42503          	lw	a0,-52(s0)
    80001574:	0005051b          	sext.w	a0,a0
}
    80001578:	03813083          	ld	ra,56(sp)
    8000157c:	03013403          	ld	s0,48(sp)
    80001580:	02813483          	ld	s1,40(sp)
    80001584:	02013903          	ld	s2,32(sp)
    80001588:	01813983          	ld	s3,24(sp)
    8000158c:	04010113          	addi	sp,sp,64
    80001590:	00008067          	ret
    if(stack==nullptr)return -1;
    80001594:	fff00513          	li	a0,-1
    80001598:	fe1ff06f          	j	80001578 <_Z13thread_createPP7_threadPFvPvES2_+0x64>

000000008000159c <_Z10time_sleepm>:

int time_sleep(time_t) {
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16
    return 0;
}
    800015a8:	00000513          	li	a0,0
    800015ac:	00813403          	ld	s0,8(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_Z11thread_exitv>:

int thread_exit() {
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	02010413          	addi	s0,sp,32
    commonPartSysCalls(0x12);
    800015c8:	01200513          	li	a0,18
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	e90080e7          	jalr	-368(ra) # 8000145c <_Z18commonPartSysCallsiz>

    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800015d4:	00050793          	mv	a5,a0
    800015d8:	fef42623          	sw	a5,-20(s0)
    return ret;
    800015dc:	fec42503          	lw	a0,-20(s0)
}
    800015e0:	0005051b          	sext.w	a0,a0
    800015e4:	01813083          	ld	ra,24(sp)
    800015e8:	01013403          	ld	s0,16(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00113423          	sd	ra,8(sp)
    800015fc:	00813023          	sd	s0,0(sp)
    80001600:	01010413          	addi	s0,sp,16
    commonPartSysCalls(0x13);
    80001604:	01300513          	li	a0,19
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	e54080e7          	jalr	-428(ra) # 8000145c <_Z18commonPartSysCallsiz>
}
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle) {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16

}
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00813423          	sd	s0,8(sp)
    80001640:	01010413          	addi	s0,sp,16
    return 0;
}
    80001644:	00000513          	li	a0,0
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001660:	00000513          	li	a0,0
    80001664:	00813403          	ld	s0,8(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret

0000000080001670 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00813423          	sd	s0,8(sp)
    80001678:	01010413          	addi	s0,sp,16
    return 0;
}
    8000167c:	00000513          	li	a0,0
    80001680:	00813403          	ld	s0,8(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    return 0;
}
    80001698:	00000513          	li	a0,0
    8000169c:	00813403          	ld	s0,8(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_Z4getcv>:

char getc() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00813423          	sd	s0,8(sp)
    800016b0:	01010413          	addi	s0,sp,16
    return 0;
}
    800016b4:	00000513          	li	a0,0
    800016b8:	00813403          	ld	s0,8(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_Z4putcc>:

void putc(char) {
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00813423          	sd	s0,8(sp)
    800016cc:	01010413          	addi	s0,sp,16

}
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_Z9fibonaccim>:
#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/print.hpp"

uint64 fibonacci(uint64 n)
{
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
    800016f4:	00050493          	mv	s1,a0
    if(n==0 || n==1)return n;
    800016f8:	00100793          	li	a5,1
    800016fc:	02a7f663          	bgeu	a5,a0,80001728 <_Z9fibonaccim+0x4c>
    if(n%4==0)TCB::yield();
    80001700:	00357793          	andi	a5,a0,3
    80001704:	02078e63          	beqz	a5,80001740 <_Z9fibonaccim+0x64>
    return fibonacci(n-1)+ fibonacci(n-2);
    80001708:	fff48513          	addi	a0,s1,-1
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	fd0080e7          	jalr	-48(ra) # 800016dc <_Z9fibonaccim>
    80001714:	00050913          	mv	s2,a0
    80001718:	ffe48513          	addi	a0,s1,-2
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	fc0080e7          	jalr	-64(ra) # 800016dc <_Z9fibonaccim>
    80001724:	00a90533          	add	a0,s2,a0
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret
    if(n%4==0)TCB::yield();
    80001740:	00001097          	auipc	ra,0x1
    80001744:	a4c080e7          	jalr	-1460(ra) # 8000218c <_ZN3TCB5yieldEv>
    80001748:	fc1ff06f          	j	80001708 <_Z9fibonaccim+0x2c>

000000008000174c <_Z11workerBodyCPv>:

void workerBodyC(void*) {
    8000174c:	fe010113          	addi	sp,sp,-32
    80001750:	00113c23          	sd	ra,24(sp)
    80001754:	00813823          	sd	s0,16(sp)
    80001758:	00913423          	sd	s1,8(sp)
    8000175c:	01213023          	sd	s2,0(sp)
    80001760:	02010413          	addi	s0,sp,32
    uint8 i=0;
    80001764:	00000493          	li	s1,0
    80001768:	0380006f          	j	800017a0 <_Z11workerBodyCPv+0x54>
    for(;i<3;i++){
        printString("C: i=");
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	8b450513          	addi	a0,a0,-1868 # 80005020 <CONSOLE_STATUS+0x10>
    80001774:	00001097          	auipc	ra,0x1
    80001778:	f50080e7          	jalr	-176(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    8000177c:	00048513          	mv	a0,s1
    80001780:	00001097          	auipc	ra,0x1
    80001784:	fb4080e7          	jalr	-76(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    80001788:	00004517          	auipc	a0,0x4
    8000178c:	92050513          	addi	a0,a0,-1760 # 800050a8 <CONSOLE_STATUS+0x98>
    80001790:	00001097          	auipc	ra,0x1
    80001794:	f34080e7          	jalr	-204(ra) # 800026c4 <_Z11printStringPKc>
    for(;i<3;i++){
    80001798:	0014849b          	addiw	s1,s1,1
    8000179c:	0ff4f493          	andi	s1,s1,255
    800017a0:	00200793          	li	a5,2
    800017a4:	fc97f4e3          	bgeu	a5,s1,8000176c <_Z11workerBodyCPv+0x20>
    }
    printString("C: yield\n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	88050513          	addi	a0,a0,-1920 # 80005028 <CONSOLE_STATUS+0x18>
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	f14080e7          	jalr	-236(ra) # 800026c4 <_Z11printStringPKc>
    __asm__("li t1, 7");
    800017b8:	00700313          	li	t1,7
    TCB::yield();
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	9d0080e7          	jalr	-1584(ra) # 8000218c <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    800017c4:	00030913          	mv	s2,t1

    printString("A: t1=");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	87050513          	addi	a0,a0,-1936 # 80005038 <CONSOLE_STATUS+0x28>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	ef4080e7          	jalr	-268(ra) # 800026c4 <_Z11printStringPKc>
    printInteger(t1);
    800017d8:	00090513          	mv	a0,s2
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	f58080e7          	jalr	-168(ra) # 80002734 <_Z12printIntegerm>
    printString("\n");
    800017e4:	00004517          	auipc	a0,0x4
    800017e8:	8c450513          	addi	a0,a0,-1852 # 800050a8 <CONSOLE_STATUS+0x98>
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	ed8080e7          	jalr	-296(ra) # 800026c4 <_Z11printStringPKc>

    uint64 result= fibonacci(20);
    800017f4:	01400513          	li	a0,20
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	ee4080e7          	jalr	-284(ra) # 800016dc <_Z9fibonaccim>
    80001800:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001804:	00004517          	auipc	a0,0x4
    80001808:	83c50513          	addi	a0,a0,-1988 # 80005040 <CONSOLE_STATUS+0x30>
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	eb8080e7          	jalr	-328(ra) # 800026c4 <_Z11printStringPKc>
    printInteger(result);
    80001814:	00090513          	mv	a0,s2
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	f1c080e7          	jalr	-228(ra) # 80002734 <_Z12printIntegerm>
    printString("\n");
    80001820:	00004517          	auipc	a0,0x4
    80001824:	88850513          	addi	a0,a0,-1912 # 800050a8 <CONSOLE_STATUS+0x98>
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	e9c080e7          	jalr	-356(ra) # 800026c4 <_Z11printStringPKc>
    80001830:	0380006f          	j	80001868 <_Z11workerBodyCPv+0x11c>

    for(;i<6;i++){
        printString("C: i=");
    80001834:	00003517          	auipc	a0,0x3
    80001838:	7ec50513          	addi	a0,a0,2028 # 80005020 <CONSOLE_STATUS+0x10>
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	e88080e7          	jalr	-376(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    80001844:	00048513          	mv	a0,s1
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	eec080e7          	jalr	-276(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    80001850:	00004517          	auipc	a0,0x4
    80001854:	85850513          	addi	a0,a0,-1960 # 800050a8 <CONSOLE_STATUS+0x98>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	e6c080e7          	jalr	-404(ra) # 800026c4 <_Z11printStringPKc>
    for(;i<6;i++){
    80001860:	0014849b          	addiw	s1,s1,1
    80001864:	0ff4f493          	andi	s1,s1,255
    80001868:	00500793          	li	a5,5
    8000186c:	fc97f4e3          	bgeu	a5,s1,80001834 <_Z11workerBodyCPv+0xe8>
    }


    /*TCB::running->setFinished(true);
    TCB::yield();*/
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	00013903          	ld	s2,0(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret

0000000080001888 <_Z11workerBodyDPv>:

void workerBodyD(void*) {
    80001888:	fe010113          	addi	sp,sp,-32
    8000188c:	00113c23          	sd	ra,24(sp)
    80001890:	00813823          	sd	s0,16(sp)
    80001894:	00913423          	sd	s1,8(sp)
    80001898:	01213023          	sd	s2,0(sp)
    8000189c:	02010413          	addi	s0,sp,32
    uint8 i=10;
    800018a0:	00a00493          	li	s1,10
    800018a4:	0380006f          	j	800018dc <_Z11workerBodyDPv+0x54>
    for(;i<13;i++){
        printString("D: i=");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	7a850513          	addi	a0,a0,1960 # 80005050 <CONSOLE_STATUS+0x40>
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	e14080e7          	jalr	-492(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	e78080e7          	jalr	-392(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    800018c4:	00003517          	auipc	a0,0x3
    800018c8:	7e450513          	addi	a0,a0,2020 # 800050a8 <CONSOLE_STATUS+0x98>
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	df8080e7          	jalr	-520(ra) # 800026c4 <_Z11printStringPKc>
    for(;i<13;i++){
    800018d4:	0014849b          	addiw	s1,s1,1
    800018d8:	0ff4f493          	andi	s1,s1,255
    800018dc:	00c00793          	li	a5,12
    800018e0:	fc97f4e3          	bgeu	a5,s1,800018a8 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	77450513          	addi	a0,a0,1908 # 80005058 <CONSOLE_STATUS+0x48>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	dd8080e7          	jalr	-552(ra) # 800026c4 <_Z11printStringPKc>
    __asm__("li t1, 5");
    800018f4:	00500313          	li	t1,5
    TCB::yield();
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	894080e7          	jalr	-1900(ra) # 8000218c <_ZN3TCB5yieldEv>
    printString("B: t1=");
    printInteger(t1);
    printString("\n");
     */

    uint64 result= fibonacci(23);
    80001900:	01700513          	li	a0,23
    80001904:	00000097          	auipc	ra,0x0
    80001908:	dd8080e7          	jalr	-552(ra) # 800016dc <_Z9fibonaccim>
    8000190c:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001910:	00003517          	auipc	a0,0x3
    80001914:	75850513          	addi	a0,a0,1880 # 80005068 <CONSOLE_STATUS+0x58>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	dac080e7          	jalr	-596(ra) # 800026c4 <_Z11printStringPKc>
    printInteger(result);
    80001920:	00090513          	mv	a0,s2
    80001924:	00001097          	auipc	ra,0x1
    80001928:	e10080e7          	jalr	-496(ra) # 80002734 <_Z12printIntegerm>
    printString("\n");
    8000192c:	00003517          	auipc	a0,0x3
    80001930:	77c50513          	addi	a0,a0,1916 # 800050a8 <CONSOLE_STATUS+0x98>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	d90080e7          	jalr	-624(ra) # 800026c4 <_Z11printStringPKc>
    8000193c:	0380006f          	j	80001974 <_Z11workerBodyDPv+0xec>

    for(;i<16;i++){
        printString("D: i=");
    80001940:	00003517          	auipc	a0,0x3
    80001944:	71050513          	addi	a0,a0,1808 # 80005050 <CONSOLE_STATUS+0x40>
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	d7c080e7          	jalr	-644(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    80001950:	00048513          	mv	a0,s1
    80001954:	00001097          	auipc	ra,0x1
    80001958:	de0080e7          	jalr	-544(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    8000195c:	00003517          	auipc	a0,0x3
    80001960:	74c50513          	addi	a0,a0,1868 # 800050a8 <CONSOLE_STATUS+0x98>
    80001964:	00001097          	auipc	ra,0x1
    80001968:	d60080e7          	jalr	-672(ra) # 800026c4 <_Z11printStringPKc>
    for(;i<16;i++){
    8000196c:	0014849b          	addiw	s1,s1,1
    80001970:	0ff4f493          	andi	s1,s1,255
    80001974:	00f00793          	li	a5,15
    80001978:	fc97f4e3          	bgeu	a5,s1,80001940 <_Z11workerBodyDPv+0xb8>



    /*TCB::running->setFinished(true);
    TCB::yield();*/
}
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	00013903          	ld	s2,0(sp)
    8000198c:	02010113          	addi	sp,sp,32
    80001990:	00008067          	ret

0000000080001994 <_Z11workerBodyAPv>:


void workerBodyA(void*){
    80001994:	fe010113          	addi	sp,sp,-32
    80001998:	00113c23          	sd	ra,24(sp)
    8000199c:	00813823          	sd	s0,16(sp)
    800019a0:	00913423          	sd	s1,8(sp)
    800019a4:	02010413          	addi	s0,sp,32
    for (uint64 i=0;i<10;i++){
    800019a8:	00000493          	li	s1,0
    800019ac:	0300006f          	j	800019dc <_Z11workerBodyAPv+0x48>
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
    800019b0:	00168693          	addi	a3,a3,1
    800019b4:	000027b7          	lui	a5,0x2
    800019b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800019bc:	00d7ee63          	bltu	a5,a3,800019d8 <_Z11workerBodyAPv+0x44>
            for(uint64 k=0;k<30000;k++){
    800019c0:	00000713          	li	a4,0
    800019c4:	000077b7          	lui	a5,0x7
    800019c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800019cc:	fee7e2e3          	bltu	a5,a4,800019b0 <_Z11workerBodyAPv+0x1c>
    800019d0:	00170713          	addi	a4,a4,1
    800019d4:	ff1ff06f          	j	800019c4 <_Z11workerBodyAPv+0x30>
    for (uint64 i=0;i<10;i++){
    800019d8:	00148493          	addi	s1,s1,1
    800019dc:	00900793          	li	a5,9
    800019e0:	0297ec63          	bltu	a5,s1,80001a18 <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    800019e4:	00003517          	auipc	a0,0x3
    800019e8:	69450513          	addi	a0,a0,1684 # 80005078 <CONSOLE_STATUS+0x68>
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	cd8080e7          	jalr	-808(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	d3c080e7          	jalr	-708(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	6a850513          	addi	a0,a0,1704 # 800050a8 <CONSOLE_STATUS+0x98>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	cbc080e7          	jalr	-836(ra) # 800026c4 <_Z11printStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001a10:	00000693          	li	a3,0
    80001a14:	fa1ff06f          	j	800019b4 <_Z11workerBodyAPv+0x20>
                //busy
            }
            //TCB::yield();
        }
    }
    printString("WorkerBodyA finished");
    80001a18:	00003517          	auipc	a0,0x3
    80001a1c:	66850513          	addi	a0,a0,1640 # 80005080 <CONSOLE_STATUS+0x70>
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	ca4080e7          	jalr	-860(ra) # 800026c4 <_Z11printStringPKc>
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret

0000000080001a3c <_Z11workerBodyBPv>:

void workerBodyB(void*){
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<16;i++){
    80001a50:	00000493          	li	s1,0
    80001a54:	0300006f          	j	80001a84 <_Z11workerBodyBPv+0x48>
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for(uint64 j=0;j<10000;j++){
    80001a58:	00168693          	addi	a3,a3,1
    80001a5c:	000027b7          	lui	a5,0x2
    80001a60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a64:	00d7ee63          	bltu	a5,a3,80001a80 <_Z11workerBodyBPv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001a68:	00000713          	li	a4,0
    80001a6c:	000077b7          	lui	a5,0x7
    80001a70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a74:	fee7e2e3          	bltu	a5,a4,80001a58 <_Z11workerBodyBPv+0x1c>
    80001a78:	00170713          	addi	a4,a4,1
    80001a7c:	ff1ff06f          	j	80001a6c <_Z11workerBodyBPv+0x30>
    for(uint64 i=0;i<16;i++){
    80001a80:	00148493          	addi	s1,s1,1
    80001a84:	00f00793          	li	a5,15
    80001a88:	0297ec63          	bltu	a5,s1,80001ac0 <_Z11workerBodyBPv+0x84>
        printString("B: i=");
    80001a8c:	00003517          	auipc	a0,0x3
    80001a90:	60c50513          	addi	a0,a0,1548 # 80005098 <CONSOLE_STATUS+0x88>
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	c30080e7          	jalr	-976(ra) # 800026c4 <_Z11printStringPKc>
        printInteger(i);
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	c94080e7          	jalr	-876(ra) # 80002734 <_Z12printIntegerm>
        printString("\n");
    80001aa8:	00003517          	auipc	a0,0x3
    80001aac:	60050513          	addi	a0,a0,1536 # 800050a8 <CONSOLE_STATUS+0x98>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	c14080e7          	jalr	-1004(ra) # 800026c4 <_Z11printStringPKc>
        for(uint64 j=0;j<10000;j++){
    80001ab8:	00000693          	li	a3,0
    80001abc:	fa1ff06f          	j	80001a5c <_Z11workerBodyBPv+0x20>
            }
        }
    }
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret

0000000080001ad4 <_ZN9Scheduler3putEP3TCB>:
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(TCB *t) {
    80001ad4:	fe010113          	addi	sp,sp,-32
    80001ad8:	00113c23          	sd	ra,24(sp)
    80001adc:	00813823          	sd	s0,16(sp)
    80001ae0:	00913423          	sd	s1,8(sp)
    80001ae4:	02010413          	addi	s0,sp,32
    80001ae8:	00050493          	mv	s1,a0
    Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80001aec:	00100513          	li	a0,1
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	910080e7          	jalr	-1776(ra) # 80002400 <_ZN15MemoryAllocator5allocEm>
    //Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    newElem->t=t;
    80001af8:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    80001afc:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001b00:	00004797          	auipc	a5,0x4
    80001b04:	0f07b783          	ld	a5,240(a5) # 80005bf0 <_ZN9Scheduler5firstE>
    80001b08:	02078663          	beqz	a5,80001b34 <_ZN9Scheduler3putEP3TCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001b0c:	00004797          	auipc	a5,0x4
    80001b10:	0e478793          	addi	a5,a5,228 # 80005bf0 <_ZN9Scheduler5firstE>
    80001b14:	0087b703          	ld	a4,8(a5)
    80001b18:	00a73423          	sd	a0,8(a4)
    80001b1c:	00a7b423          	sd	a0,8(a5)
    }
}
    80001b20:	01813083          	ld	ra,24(sp)
    80001b24:	01013403          	ld	s0,16(sp)
    80001b28:	00813483          	ld	s1,8(sp)
    80001b2c:	02010113          	addi	sp,sp,32
    80001b30:	00008067          	ret
        first=last=newElem;
    80001b34:	00004797          	auipc	a5,0x4
    80001b38:	0bc78793          	addi	a5,a5,188 # 80005bf0 <_ZN9Scheduler5firstE>
    80001b3c:	00a7b423          	sd	a0,8(a5)
    80001b40:	00a7b023          	sd	a0,0(a5)
    80001b44:	fddff06f          	j	80001b20 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001b48 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    80001b48:	fe010113          	addi	sp,sp,-32
    80001b4c:	00113c23          	sd	ra,24(sp)
    80001b50:	00813823          	sd	s0,16(sp)
    80001b54:	00913423          	sd	s1,8(sp)
    80001b58:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    80001b5c:	00004517          	auipc	a0,0x4
    80001b60:	09453503          	ld	a0,148(a0) # 80005bf0 <_ZN9Scheduler5firstE>
    80001b64:	04050663          	beqz	a0,80001bb0 <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    TCB* t=elem->t;
    80001b68:	00053483          	ld	s1,0(a0)

    MemoryAllocator::free(elem);
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	968080e7          	jalr	-1688(ra) # 800024d4 <_ZN15MemoryAllocator4freeEPv>
    //mem_free(elem);

    first=first->next;
    80001b74:	00004717          	auipc	a4,0x4
    80001b78:	07c70713          	addi	a4,a4,124 # 80005bf0 <_ZN9Scheduler5firstE>
    80001b7c:	00073783          	ld	a5,0(a4)
    80001b80:	0087b783          	ld	a5,8(a5)
    80001b84:	00f73023          	sd	a5,0(a4)
    if(first==nullptr)last=nullptr;
    80001b88:	00078e63          	beqz	a5,80001ba4 <_ZN9Scheduler3getEv+0x5c>

    return t;
}
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	01013403          	ld	s0,16(sp)
    80001b98:	00813483          	ld	s1,8(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	0407ba23          	sd	zero,84(a5) # 80005bf8 <_ZN9Scheduler4lastE>
    80001bac:	fe1ff06f          	j	80001b8c <_ZN9Scheduler3getEv+0x44>
    if(first==nullptr)return nullptr;
    80001bb0:	00050493          	mv	s1,a0
    80001bb4:	fd9ff06f          	j	80001b8c <_ZN9Scheduler3getEv+0x44>

0000000080001bb8 <main>:
#include "../h/Scheduler.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"

int main(){
    80001bb8:	fa010113          	addi	sp,sp,-96
    80001bbc:	04113c23          	sd	ra,88(sp)
    80001bc0:	04813823          	sd	s0,80(sp)
    80001bc4:	04913423          	sd	s1,72(sp)
    80001bc8:	05213023          	sd	s2,64(sp)
    80001bcc:	03313c23          	sd	s3,56(sp)
    80001bd0:	03413823          	sd	s4,48(sp)
    80001bd4:	06010413          	addi	s0,sp,96

    //__asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	a68080e7          	jalr	-1432(ra) # 80002640 <_ZN15MemoryAllocator10initializeEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap+1);
    80001be0:	00004797          	auipc	a5,0x4
    80001be4:	f807b783          	ld	a5,-128(a5) # 80005b60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001be8:	00178793          	addi	a5,a5,1
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec]"=r"(stvec));
    return stvec;
}
inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]"::[stvec]"r"(stvec));
    80001bec:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida




    uint64 *stack1=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001bf0:	00001537          	lui	a0,0x1
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	8a0080e7          	jalr	-1888(ra) # 80001494 <_Z9mem_allocm>
    80001bfc:	00050a13          	mv	s4,a0
    uint64 *stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001c00:	00001537          	lui	a0,0x1
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	890080e7          	jalr	-1904(ra) # 80001494 <_Z9mem_allocm>
    80001c0c:	00050993          	mv	s3,a0
    uint64 *stack3=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001c10:	00001537          	lui	a0,0x1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	880080e7          	jalr	-1920(ra) # 80001494 <_Z9mem_allocm>
    80001c1c:	00050913          	mv	s2,a0
    uint64 *stack4=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001c20:	00001537          	lui	a0,0x1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	870080e7          	jalr	-1936(ra) # 80001494 <_Z9mem_allocm>
    80001c2c:	00050493          	mv	s1,a0



    TCB *threads[5];

    threads[0]= TCB::createThread(nullptr, nullptr, nullptr);
    80001c30:	00000613          	li	a2,0
    80001c34:	00000593          	li	a1,0
    80001c38:	00000513          	li	a0,0
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	6e8080e7          	jalr	1768(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80001c44:	faa43423          	sd	a0,-88(s0)
    TCB::running=threads[0];//main nit
    80001c48:	00004717          	auipc	a4,0x4
    80001c4c:	f3873703          	ld	a4,-200(a4) # 80005b80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c50:	00a73023          	sd	a0,0(a4)



    threads[1]= TCB::createThread(workerBodyA, stack1, nullptr);
    80001c54:	00000613          	li	a2,0
    80001c58:	000a0593          	mv	a1,s4
    80001c5c:	00004517          	auipc	a0,0x4
    80001c60:	f1c53503          	ld	a0,-228(a0) # 80005b78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	6c0080e7          	jalr	1728(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80001c6c:	faa43823          	sd	a0,-80(s0)
    threads[2]= TCB::createThread(workerBodyB, stack2, nullptr);
    80001c70:	00000613          	li	a2,0
    80001c74:	00098593          	mv	a1,s3
    80001c78:	00004517          	auipc	a0,0x4
    80001c7c:	f1853503          	ld	a0,-232(a0) # 80005b90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	6a4080e7          	jalr	1700(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80001c88:	faa43c23          	sd	a0,-72(s0)
    threads[3]= TCB::createThread(workerBodyC, stack3, nullptr);
    80001c8c:	00000613          	li	a2,0
    80001c90:	00090593          	mv	a1,s2
    80001c94:	00004517          	auipc	a0,0x4
    80001c98:	ec453503          	ld	a0,-316(a0) # 80005b58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	688080e7          	jalr	1672(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80001ca4:	fca43023          	sd	a0,-64(s0)
    threads[4]= TCB::createThread(workerBodyD, stack4, nullptr);
    80001ca8:	00000613          	li	a2,0
    80001cac:	00048593          	mv	a1,s1
    80001cb0:	00004517          	auipc	a0,0x4
    80001cb4:	ee853503          	ld	a0,-280(a0) # 80005b98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	66c080e7          	jalr	1644(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80001cc0:	fca43423          	sd	a0,-56(s0)
    80001cc4:	00c0006f          	j	80001cd0 <main+0x118>


    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);//dozvoljavanje prekida

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
        TCB::yield();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	4c4080e7          	jalr	1220(ra) # 8000218c <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished()))
    80001cd0:	fb043783          	ld	a5,-80(s0)

class TCB{
public:
    virtual ~TCB();
    bool isFinished() const{
        return finished;
    80001cd4:	0307c783          	lbu	a5,48(a5)
    80001cd8:	fe0788e3          	beqz	a5,80001cc8 <main+0x110>
    80001cdc:	fb843783          	ld	a5,-72(s0)
    80001ce0:	0307c783          	lbu	a5,48(a5)
    80001ce4:	fe0782e3          	beqz	a5,80001cc8 <main+0x110>
    80001ce8:	fc043783          	ld	a5,-64(s0)
    80001cec:	0307c783          	lbu	a5,48(a5)
    80001cf0:	fc078ce3          	beqz	a5,80001cc8 <main+0x110>
    80001cf4:	fc843783          	ld	a5,-56(s0)
    80001cf8:	0307c783          	lbu	a5,48(a5)
    80001cfc:	fc0786e3          	beqz	a5,80001cc8 <main+0x110>
    80001d00:	fa840493          	addi	s1,s0,-88
    80001d04:	0080006f          	j	80001d0c <main+0x154>

    for(auto &thread :threads)
    80001d08:	00848493          	addi	s1,s1,8
    80001d0c:	fd040793          	addi	a5,s0,-48
    80001d10:	00f48e63          	beq	s1,a5,80001d2c <main+0x174>
        delete thread;
    80001d14:	0004b503          	ld	a0,0(s1)
    80001d18:	fe0508e3          	beqz	a0,80001d08 <main+0x150>
    80001d1c:	00053783          	ld	a5,0(a0)
    80001d20:	0087b783          	ld	a5,8(a5)
    80001d24:	000780e7          	jalr	a5
    80001d28:	fe1ff06f          	j	80001d08 <main+0x150>
    printString("Finished\n");
    80001d2c:	00003517          	auipc	a0,0x3
    80001d30:	37450513          	addi	a0,a0,884 # 800050a0 <CONSOLE_STATUS+0x90>
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	990080e7          	jalr	-1648(ra) # 800026c4 <_Z11printStringPKc>
    thread_dispatch();*/



    return 0;
    80001d3c:	00000513          	li	a0,0
    80001d40:	05813083          	ld	ra,88(sp)
    80001d44:	05013403          	ld	s0,80(sp)
    80001d48:	04813483          	ld	s1,72(sp)
    80001d4c:	04013903          	ld	s2,64(sp)
    80001d50:	03813983          	ld	s3,56(sp)
    80001d54:	03013a03          	ld	s4,48(sp)
    80001d58:	06010113          	addi	sp,sp,96
    80001d5c:	00008067          	ret

0000000080001d60 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	724080e7          	jalr	1828(ra) # 80001494 <_Z9mem_allocm>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_Znam>:

void *operator new[](uint64 n)
{
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	6fc080e7          	jalr	1788(ra) # 80001494 <_Z9mem_allocm>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	714080e7          	jalr	1812(ra) # 800014d4 <_Z8mem_freePv>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	6ec080e7          	jalr	1772(ra) # 800014d4 <_Z8mem_freePv>
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"



void Riscv::handleSupervisorTrap(){
    80001e00:	fa010113          	addi	sp,sp,-96
    80001e04:	04113c23          	sd	ra,88(sp)
    80001e08:	04813823          	sd	s0,80(sp)
    80001e0c:	04913423          	sd	s1,72(sp)
    80001e10:	05213023          	sd	s2,64(sp)
    80001e14:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001e18:	142027f3          	csrr	a5,scause
    80001e1c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001e20:	fa043783          	ld	a5,-96(s0)
    uint64 scause=r_scause();

    volatile uint64 a0;
    __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    80001e24:	05043703          	ld	a4,80(s0)
    80001e28:	fce43c23          	sd	a4,-40(s0)
    volatile uint64 a1;
    __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    80001e2c:	05843703          	ld	a4,88(s0)
    80001e30:	fce43823          	sd	a4,-48(s0)
    volatile uint64 a2;
    __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    80001e34:	06043703          	ld	a4,96(s0)
    80001e38:	fce43423          	sd	a4,-56(s0)
    volatile uint64 a3;
    __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    80001e3c:	06843703          	ld	a4,104(s0)
    80001e40:	fce43023          	sd	a4,-64(s0)
    volatile uint64 a4;
    __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    80001e44:	07043703          	ld	a4,112(s0)
    80001e48:	fae43c23          	sd	a4,-72(s0)

    if(scause==0x09UL || scause==0x08UL){
    80001e4c:	ff878793          	addi	a5,a5,-8
    80001e50:	00100713          	li	a4,1
    80001e54:	00f77e63          	bgeu	a4,a5,80001e70 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
        //print scause
        //print sepc
        //print stval
    }

}
    80001e58:	05813083          	ld	ra,88(sp)
    80001e5c:	05013403          	ld	s0,80(sp)
    80001e60:	04813483          	ld	s1,72(sp)
    80001e64:	04013903          	ld	s2,64(sp)
    80001e68:	06010113          	addi	sp,sp,96
    80001e6c:	00008067          	ret
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80001e70:	141027f3          	csrr	a5,sepc
    80001e74:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80001e78:	fb043483          	ld	s1,-80(s0)
        uint64 sepc=r_sepc()+4;
    80001e7c:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
}

inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80001e80:	100027f3          	csrr	a5,sstatus
    80001e84:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80001e88:	fa843903          	ld	s2,-88(s0)
        if(a0==0x01){
    80001e8c:	fd843703          	ld	a4,-40(s0)
    80001e90:	00100793          	li	a5,1
    80001e94:	04f70063          	beq	a4,a5,80001ed4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        else if(a0==0x02){
    80001e98:	fd843703          	ld	a4,-40(s0)
    80001e9c:	00200793          	li	a5,2
    80001ea0:	04f70463          	beq	a4,a5,80001ee8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
        else if(a0==0x11){
    80001ea4:	fd843703          	ld	a4,-40(s0)
    80001ea8:	01100793          	li	a5,17
    80001eac:	04f70863          	beq	a4,a5,80001efc <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        else if(a0==0x12){
    80001eb0:	fd843703          	ld	a4,-40(s0)
    80001eb4:	01200793          	li	a5,18
    80001eb8:	06f70e63          	beq	a4,a5,80001f34 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
        else if(a0==0x13){
    80001ebc:	fd843703          	ld	a4,-40(s0)
    80001ec0:	01300793          	li	a5,19
    80001ec4:	08f70c63          	beq	a4,a5,80001f5c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
}
inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80001ec8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80001ecc:	14149073          	csrw	sepc,s1
}
    80001ed0:	f89ff06f          	j	80001e58 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
            void *ptr=MemoryAllocator::alloc(a1);
    80001ed4:	fd043503          	ld	a0,-48(s0)
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	528080e7          	jalr	1320(ra) # 80002400 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    80001ee0:	04a43823          	sd	a0,80(s0)
    80001ee4:	fe5ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            int stat=MemoryAllocator::free((void*)a1);
    80001ee8:	fd043503          	ld	a0,-48(s0)
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	5e8080e7          	jalr	1512(ra) # 800024d4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    80001ef4:	04a43823          	sd	a0,80(s0)
    80001ef8:	fd1ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            TCB* handle= TCB::createThread((TCB::Body)a2, (uint64*)a4, (void*)a3);
    80001efc:	fc843503          	ld	a0,-56(s0)
    80001f00:	fb843583          	ld	a1,-72(s0)
    80001f04:	fc043603          	ld	a2,-64(s0)
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	41c080e7          	jalr	1052(ra) # 80002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>
            if(!handle){
    80001f10:	00050c63          	beqz	a0,80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
                TCB** retHandle=(TCB**)a1;
    80001f14:	fd043783          	ld	a5,-48(s0)
                *retHandle=handle;
    80001f18:	00a7b023          	sd	a0,0(a5)
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80001f1c:	00000793          	li	a5,0
    80001f20:	04f43823          	sd	a5,80(s0)
    80001f24:	fa5ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                __asm__ volatile("sd %0, 0x50(fp)": : "r"(-1));
    80001f28:	fff00793          	li	a5,-1
    80001f2c:	04f43823          	sd	a5,80(s0)
    80001f30:	f99ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            TCB::running->setFinished(true);
    80001f34:	00004797          	auipc	a5,0x4
    80001f38:	c4c7b783          	ld	a5,-948(a5) # 80005b80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001f3c:	0007b783          	ld	a5,0(a5)
    }

    void setFinished(bool finished){
        TCB::finished = finished;
    80001f40:	00100713          	li	a4,1
    80001f44:	02e78823          	sb	a4,48(a5)
            TCB::yield();
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	244080e7          	jalr	580(ra) # 8000218c <_ZN3TCB5yieldEv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(0));
    80001f50:	00000793          	li	a5,0
    80001f54:	04f43823          	sd	a5,80(s0)
    80001f58:	f71ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            TCB::timeSliceCounter=0;
    80001f5c:	00004797          	auipc	a5,0x4
    80001f60:	c0c7b783          	ld	a5,-1012(a5) # 80005b68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f64:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	1bc080e7          	jalr	444(ra) # 80002124 <_ZN3TCB8dispatchEv>
            printString("synchronous dispatch succeded\n");
    80001f70:	00003517          	auipc	a0,0x3
    80001f74:	14050513          	addi	a0,a0,320 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	74c080e7          	jalr	1868(ra) # 800026c4 <_Z11printStringPKc>
    80001f80:	f49ff06f          	j	80001ec8 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>

0000000080001f84 <_ZN5Riscv14timerInterruptEv>:

void Riscv::timerInterrupt() {
    80001f84:	fc010113          	addi	sp,sp,-64
    80001f88:	02113c23          	sd	ra,56(sp)
    80001f8c:	02813823          	sd	s0,48(sp)
    80001f90:	02913423          	sd	s1,40(sp)
    80001f94:	03213023          	sd	s2,32(sp)
    80001f98:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001f9c:	142027f3          	csrr	a5,scause
    80001fa0:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001fa4:	fc843703          	ld	a4,-56(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000001UL){
    80001fa8:	fff00793          	li	a5,-1
    80001fac:	03f79793          	slli	a5,a5,0x3f
    80001fb0:	00178793          	addi	a5,a5,1
    80001fb4:	00f70e63          	beq	a4,a5,80001fd0 <_ZN5Riscv14timerInterruptEv+0x4c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
}
    80001fb8:	03813083          	ld	ra,56(sp)
    80001fbc:	03013403          	ld	s0,48(sp)
    80001fc0:	02813483          	ld	s1,40(sp)
    80001fc4:	02013903          	ld	s2,32(sp)
    80001fc8:	04010113          	addi	sp,sp,64
    80001fcc:	00008067          	ret
        TCB::timeSliceCounter++;
    80001fd0:	00004717          	auipc	a4,0x4
    80001fd4:	b9873703          	ld	a4,-1128(a4) # 80005b68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fd8:	00073783          	ld	a5,0(a4)
    80001fdc:	00178793          	addi	a5,a5,1
    80001fe0:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    80001fe4:	00004717          	auipc	a4,0x4
    80001fe8:	b9c73703          	ld	a4,-1124(a4) # 80005b80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001fec:	00073703          	ld	a4,0(a4)
    }

    uint64 getTimeSlice() const{
        return timeSlice;
    80001ff0:	02873703          	ld	a4,40(a4)
    80001ff4:	00e7f863          	bgeu	a5,a4,80002004 <_ZN5Riscv14timerInterruptEv+0x80>
    __asm__ volatile("csrc sip, %[mask]"::[mask]"r"(mask));
    80001ff8:	00200793          	li	a5,2
    80001ffc:	1447b073          	csrc	sip,a5
}
    80002000:	fb9ff06f          	j	80001fb8 <_ZN5Riscv14timerInterruptEv+0x34>
    __asm__ volatile("csrr %[sepc], sepc":[sepc]"=r"(sepc));
    80002004:	141027f3          	csrr	a5,sepc
    80002008:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000200c:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    80002010:	100027f3          	csrr	a5,sstatus
    80002014:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002018:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter=0;
    8000201c:	00004797          	auipc	a5,0x4
    80002020:	b4c7b783          	ld	a5,-1204(a5) # 80005b68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002024:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	0fc080e7          	jalr	252(ra) # 80002124 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]"::[sstatus]"r"(sstatus));
    80002030:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]"::[sepc]"r"(sepc));
    80002034:	14149073          	csrw	sepc,s1
}
    80002038:	fc1ff06f          	j	80001ff8 <_ZN5Riscv14timerInterruptEv+0x74>

000000008000203c <_ZN5Riscv17hardwareInterruptEv>:

void Riscv::hardwareInterrupt() {
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    8000204c:	142027f3          	csrr	a5,scause
    80002050:	fef43423          	sd	a5,-24(s0)
    return scause;
    80002054:	fe843703          	ld	a4,-24(s0)
    uint64 scause=r_scause();
    if(scause==0x8000000000000009UL){
    80002058:	fff00793          	li	a5,-1
    8000205c:	03f79793          	slli	a5,a5,0x3f
    80002060:	00978793          	addi	a5,a5,9
    80002064:	00f70a63          	beq	a4,a5,80002078 <_ZN5Riscv17hardwareInterruptEv+0x3c>
        //prekid konzola
        console_handler();
    }
}
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	02010113          	addi	sp,sp,32
    80002074:	00008067          	ret
        console_handler();
    80002078:	00003097          	auipc	ra,0x3
    8000207c:	8a8080e7          	jalr	-1880(ra) # 80004920 <console_handler>
}
    80002080:	fe9ff06f          	j	80002068 <_ZN5Riscv17hardwareInterruptEv+0x2c>

0000000080002084 <_ZN5Riscv10popSppSpieEv>:



void Riscv::popSppSpie() {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002090:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002094:	10200073          	sret
    80002098:	00813403          	ld	s0,8(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZN3TCBD1Ev>:
                                     arg(arg)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

TCB::~TCB() {
    800020a4:	00004797          	auipc	a5,0x4
    800020a8:	a9478793          	addi	a5,a5,-1388 # 80005b38 <_ZTV3TCB+0x10>
    800020ac:	00f53023          	sd	a5,0(a0)
    //mem_free(stack);
    delete[] stack;
    800020b0:	01053503          	ld	a0,16(a0)
    800020b4:	02050663          	beqz	a0,800020e0 <_ZN3TCBD1Ev+0x3c>
TCB::~TCB() {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    delete[] stack;
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	d10080e7          	jalr	-752(ra) # 80001dd8 <_ZdaPv>
}
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret
    800020e0:	00008067          	ret

00000000800020e4 <_ZN3TCBD0Ev>:
TCB::~TCB() {
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	00813823          	sd	s0,16(sp)
    800020f0:	00913423          	sd	s1,8(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00050493          	mv	s1,a0
}
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	fa8080e7          	jalr	-88(ra) # 800020a4 <_ZN3TCBD1Ev>
    80002104:	00048513          	mv	a0,s1
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	ca8080e7          	jalr	-856(ra) # 80001db0 <_ZdlPv>
    80002110:	01813083          	ld	ra,24(sp)
    80002114:	01013403          	ld	s0,16(sp)
    80002118:	00813483          	ld	s1,8(sp)
    8000211c:	02010113          	addi	sp,sp,32
    80002120:	00008067          	ret

0000000080002124 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002124:	fe010113          	addi	sp,sp,-32
    80002128:	00113c23          	sd	ra,24(sp)
    8000212c:	00813823          	sd	s0,16(sp)
    80002130:	00913423          	sd	s1,8(sp)
    80002134:	02010413          	addi	s0,sp,32
    TCB* old=running;
    80002138:	00004497          	auipc	s1,0x4
    8000213c:	ac84b483          	ld	s1,-1336(s1) # 80005c00 <_ZN3TCB7runningE>
        return finished;
    80002140:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80002144:	02078c63          	beqz	a5,8000217c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	a00080e7          	jalr	-1536(ra) # 80001b48 <_ZN9Scheduler3getEv>
    80002150:	00004797          	auipc	a5,0x4
    80002154:	aaa7b823          	sd	a0,-1360(a5) # 80005c00 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002158:	01850593          	addi	a1,a0,24
    8000215c:	01848513          	addi	a0,s1,24
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	2e8080e7          	jalr	744(ra) # 80001448 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret
        Scheduler::put(old);
    8000217c:	00048513          	mv	a0,s1
    80002180:	00000097          	auipc	ra,0x0
    80002184:	954080e7          	jalr	-1708(ra) # 80001ad4 <_ZN9Scheduler3putEP3TCB>
    80002188:	fc1ff06f          	j	80002148 <_ZN3TCB8dispatchEv+0x24>

000000008000218c <_ZN3TCB5yieldEv>:
void TCB::yield() {
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00113423          	sd	ra,8(sp)
    80002194:	00813023          	sd	s0,0(sp)
    80002198:	01010413          	addi	s0,sp,16
    Riscv::pushRegs();
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	e64080e7          	jalr	-412(ra) # 80001000 <_ZN5Riscv8pushRegsEv>
    TCB::timeSliceCounter=0;
    800021a4:	00004797          	auipc	a5,0x4
    800021a8:	a607b223          	sd	zero,-1436(a5) # 80005c08 <_ZN3TCB16timeSliceCounterE>
    TCB::dispatch();
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	f78080e7          	jalr	-136(ra) # 80002124 <_ZN3TCB8dispatchEv>
    Riscv::popRegs();
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	ec8080e7          	jalr	-312(ra) # 8000107c <_ZN5Riscv7popRegsEv>
}
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_ZN3TCB13threadWrapperEv>:
    //delete running niti mozda ovde
    return 0;
}


void TCB::threadWrapper() {
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    800021e0:	10000793          	li	a5,256
    800021e4:	1007a073          	csrs	sstatus,a5
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800021e8:	02000793          	li	a5,32
    800021ec:	1007b073          	csrc	sstatus,a5
    //ukoliko se zeli preci u korisnicki rezim pri pokretanju niti na ovom mestu
    //treba promeniti (naglaseno promeniti a ne samo vratiti stare) privilegije
    //pop SPP i vratiti SPIE?
    Riscv::ms_sstatus(Riscv::BitMaskSStatus::SSTATUS_SPP);
    Riscv::mc_sstatus(Riscv::BitMaskSStatus::SSTATUS_SPIE);
    Riscv::popSppSpie();
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	e94080e7          	jalr	-364(ra) # 80002084 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800021f8:	00004497          	auipc	s1,0x4
    800021fc:	a0848493          	addi	s1,s1,-1528 # 80005c00 <_ZN3TCB7runningE>
    80002200:	0004b783          	ld	a5,0(s1)
    80002204:	0087b703          	ld	a4,8(a5)
    80002208:	0387b503          	ld	a0,56(a5)
    8000220c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002210:	0004b783          	ld	a5,0(s1)
        TCB::finished = finished;
    80002214:	00100713          	li	a4,1
    80002218:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	f70080e7          	jalr	-144(ra) # 8000218c <_ZN3TCB5yieldEv>

}
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret

0000000080002238 <_ZN3TCBC1EPFvPvEPmS0_m>:
                                     arg(arg)
    80002238:	00004797          	auipc	a5,0x4
    8000223c:	90078793          	addi	a5,a5,-1792 # 80005b38 <_ZTV3TCB+0x10>
    80002240:	00f53023          	sd	a5,0(a0)
    80002244:	00b53423          	sd	a1,8(a0)
                                    stack(body!=nullptr? stack : nullptr),
    80002248:	04058e63          	beqz	a1,800022a4 <_ZN3TCBC1EPFvPvEPmS0_m+0x6c>
                                     arg(arg)
    8000224c:	00c53823          	sd	a2,16(a0)
    80002250:	00000797          	auipc	a5,0x0
    80002254:	f7c78793          	addi	a5,a5,-132 # 800021cc <_ZN3TCB13threadWrapperEv>
    80002258:	00f53c23          	sd	a5,24(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    8000225c:	04060863          	beqz	a2,800022ac <_ZN3TCBC1EPFvPvEPmS0_m+0x74>
    80002260:	000087b7          	lui	a5,0x8
    80002264:	00f60633          	add	a2,a2,a5
                                     arg(arg)
    80002268:	02c53023          	sd	a2,32(a0)
    8000226c:	02e53423          	sd	a4,40(a0)
    80002270:	02050823          	sb	zero,48(a0)
    80002274:	02d53c23          	sd	a3,56(a0)
        if(body!=nullptr) Scheduler::put(this);
    80002278:	02058e63          	beqz	a1,800022b4 <_ZN3TCBC1EPFvPvEPmS0_m+0x7c>
TCB::TCB(TCB::Body body, uint64* stack, void* arg, uint64 timeSlice): body(body),
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	848080e7          	jalr	-1976(ra) # 80001ad4 <_ZN9Scheduler3putEP3TCB>
    }
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret
                                    stack(body!=nullptr? stack : nullptr),
    800022a4:	00000613          	li	a2,0
    800022a8:	fa5ff06f          	j	8000224c <_ZN3TCBC1EPFvPvEPmS0_m+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    800022ac:	00000613          	li	a2,0
    800022b0:	fb9ff06f          	j	80002268 <_ZN3TCBC1EPFvPvEPmS0_m+0x30>
    800022b4:	00008067          	ret

00000000800022b8 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00113423          	sd	ra,8(sp)
    800022c0:	00813023          	sd	s0,0(sp)
    800022c4:	01010413          	addi	s0,sp,16
    800022c8:	00004797          	auipc	a5,0x4
    800022cc:	9387b783          	ld	a5,-1736(a5) # 80005c00 <_ZN3TCB7runningE>
    800022d0:	00100713          	li	a4,1
    800022d4:	02e78823          	sb	a4,48(a5)
    yield();
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	eb4080e7          	jalr	-332(ra) # 8000218c <_ZN3TCB5yieldEv>
}
    800022e0:	00000513          	li	a0,0
    800022e4:	00813083          	ld	ra,8(sp)
    800022e8:	00013403          	ld	s0,0(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <_ZN3TCBnwEm>:

void *TCB::operator new(uint64 n) {
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00113423          	sd	ra,8(sp)
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	01010413          	addi	s0,sp,16
    void* ptr=MemoryAllocator::alloc(((n+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    80002304:	03f50513          	addi	a0,a0,63
    80002308:	00655513          	srli	a0,a0,0x6
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	0f4080e7          	jalr	244(ra) # 80002400 <_ZN15MemoryAllocator5allocEm>
    return ptr;
}
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::createThread(TCB::Body body, uint64* stack, void* arg) {
    80002324:	fd010113          	addi	sp,sp,-48
    80002328:	02113423          	sd	ra,40(sp)
    8000232c:	02813023          	sd	s0,32(sp)
    80002330:	00913c23          	sd	s1,24(sp)
    80002334:	01213823          	sd	s2,16(sp)
    80002338:	01313423          	sd	s3,8(sp)
    8000233c:	01413023          	sd	s4,0(sp)
    80002340:	03010413          	addi	s0,sp,48
    80002344:	00050913          	mv	s2,a0
    80002348:	00058993          	mv	s3,a1
    8000234c:	00060a13          	mv	s4,a2
    return new TCB(body, stack, arg, TIME_SLICE);
    80002350:	04000513          	li	a0,64
    80002354:	00000097          	auipc	ra,0x0
    80002358:	fa0080e7          	jalr	-96(ra) # 800022f4 <_ZN3TCBnwEm>
    8000235c:	00050493          	mv	s1,a0
    80002360:	00200713          	li	a4,2
    80002364:	000a0693          	mv	a3,s4
    80002368:	00098613          	mv	a2,s3
    8000236c:	00090593          	mv	a1,s2
    80002370:	00000097          	auipc	ra,0x0
    80002374:	ec8080e7          	jalr	-312(ra) # 80002238 <_ZN3TCBC1EPFvPvEPmS0_m>
    80002378:	0200006f          	j	80002398 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x74>
    8000237c:	00050913          	mv	s2,a0
    80002380:	00048513          	mv	a0,s1
    80002384:	00000097          	auipc	ra,0x0
    80002388:	a2c080e7          	jalr	-1492(ra) # 80001db0 <_ZdlPv>
    8000238c:	00090513          	mv	a0,s2
    80002390:	00005097          	auipc	ra,0x5
    80002394:	958080e7          	jalr	-1704(ra) # 80006ce8 <_Unwind_Resume>
}
    80002398:	00048513          	mv	a0,s1
    8000239c:	02813083          	ld	ra,40(sp)
    800023a0:	02013403          	ld	s0,32(sp)
    800023a4:	01813483          	ld	s1,24(sp)
    800023a8:	01013903          	ld	s2,16(sp)
    800023ac:	00813983          	ld	s3,8(sp)
    800023b0:	00013a03          	ld	s4,0(sp)
    800023b4:	03010113          	addi	sp,sp,48
    800023b8:	00008067          	ret

00000000800023bc <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00100793          	li	a5,1
    800023cc:	00f50863          	beq	a0,a5,800023dc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret
    800023dc:	000107b7          	lui	a5,0x10
    800023e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023e4:	fef596e3          	bne	a1,a5,800023d0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    800023e8:	00003797          	auipc	a5,0x3
    800023ec:	7687b783          	ld	a5,1896(a5) # 80005b50 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023f0:	0007b783          	ld	a5,0(a5)
    800023f4:	00004717          	auipc	a4,0x4
    800023f8:	80f73e23          	sd	a5,-2020(a4) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    800023fc:	fd5ff06f          	j	800023d0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002400 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    8000240c:	0a050c63          	beqz	a0,800024c4 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002410:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80002414:	00003797          	auipc	a5,0x3
    80002418:	7fc7b783          	ld	a5,2044(a5) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    8000241c:	00000613          	li	a2,0
    while(free){
    80002420:	00078e63          	beqz	a5,8000243c <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80002424:	0007b703          	ld	a4,0(a5)
    80002428:	fff70713          	addi	a4,a4,-1
    8000242c:	00d77863          	bgeu	a4,a3,8000243c <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80002430:	00078613          	mv	a2,a5
        free=free->next;
    80002434:	0087b783          	ld	a5,8(a5)
    while(free){
    80002438:	fe9ff06f          	j	80002420 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    8000243c:	08078863          	beqz	a5,800024cc <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80002440:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80002444:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80002448:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    8000244c:	fff70593          	addi	a1,a4,-1
    80002450:	04d58063          	beq	a1,a3,80002490 <_ZN15MemoryAllocator5allocEm+0x90>
    80002454:	ffe70593          	addi	a1,a4,-2
    80002458:	02d58c63          	beq	a1,a3,80002490 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    8000245c:	40d70733          	sub	a4,a4,a3
    80002460:	fff70713          	addi	a4,a4,-1
    80002464:	00100593          	li	a1,1
    80002468:	02e5fa63          	bgeu	a1,a4,8000249c <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    8000246c:	00168693          	addi	a3,a3,1
    80002470:	00669593          	slli	a1,a3,0x6
    80002474:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80002478:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    8000247c:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80002480:	02060c63          	beqz	a2,800024b8 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80002484:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80002488:	00d7b023          	sd	a3,0(a5)
    8000248c:	0100006f          	j	8000249c <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80002490:	00060e63          	beqz	a2,800024ac <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80002494:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80002498:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    8000249c:	0007b423          	sd	zero,8(a5)
}
    800024a0:	00813403          	ld	s0,8(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret
            firstFreeSeg=free->next;
    800024ac:	00003697          	auipc	a3,0x3
    800024b0:	7706b223          	sd	a6,1892(a3) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    800024b4:	fe5ff06f          	j	80002498 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    800024b8:	00003717          	auipc	a4,0x3
    800024bc:	74b73c23          	sd	a1,1880(a4) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    800024c0:	fc9ff06f          	j	80002488 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    800024c4:	00000513          	li	a0,0
    800024c8:	fd9ff06f          	j	800024a0 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    800024cc:	00078513          	mv	a0,a5
    800024d0:	fd1ff06f          	j	800024a0 <_ZN15MemoryAllocator5allocEm+0xa0>

00000000800024d4 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    800024e0:	14050c63          	beqz	a0,80002638 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    800024e4:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    800024e8:	00003797          	auipc	a5,0x3
    800024ec:	7287b783          	ld	a5,1832(a5) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    800024f0:	02078a63          	beqz	a5,80002524 <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    800024f4:	06f77863          	bgeu	a4,a5,80002564 <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    800024f8:	fc053603          	ld	a2,-64(a0)
    800024fc:	00661693          	slli	a3,a2,0x6
    80002500:	00d706b3          	add	a3,a4,a3
    80002504:	02d78a63          	beq	a5,a3,80002538 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80002508:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    8000250c:	00003797          	auipc	a5,0x3
    80002510:	70e7b223          	sd	a4,1796(a5) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002514:	00000513          	li	a0,0
}
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
        freeFromAddr->next=nullptr;
    80002524:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80002528:	00003797          	auipc	a5,0x3
    8000252c:	6ee7b423          	sd	a4,1768(a5) # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80002530:	00000513          	li	a0,0
    80002534:	fe5ff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80002538:	0007b783          	ld	a5,0(a5)
    8000253c:	00f60633          	add	a2,a2,a5
    80002540:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80002544:	00003797          	auipc	a5,0x3
    80002548:	6cc78793          	addi	a5,a5,1740 # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    8000254c:	0007b683          	ld	a3,0(a5)
    80002550:	0086b683          	ld	a3,8(a3)
    80002554:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80002558:	00e7b023          	sd	a4,0(a5)
            return 0;
    8000255c:	00000513          	li	a0,0
    80002560:	fb9ff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80002564:	00000693          	li	a3,0
    while(nextFree){
    80002568:	00078a63          	beqz	a5,8000257c <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    8000256c:	00f76863          	bltu	a4,a5,8000257c <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80002570:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80002574:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80002578:	ff1ff06f          	j	80002568 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    8000257c:	02078a63          	beqz	a5,800025b0 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80002580:	0006b583          	ld	a1,0(a3)
    80002584:	00659613          	slli	a2,a1,0x6
    80002588:	00c68633          	add	a2,a3,a2
    8000258c:	04e60c63          	beq	a2,a4,800025e4 <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80002590:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80002594:	fc053683          	ld	a3,-64(a0)
    80002598:	00669613          	slli	a2,a3,0x6
    8000259c:	00c70733          	add	a4,a4,a2
    800025a0:	06f70e63          	beq	a4,a5,8000261c <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    800025a4:	fcf53423          	sd	a5,-56(a0)
    return 0;
    800025a8:	00000513          	li	a0,0
    800025ac:	f6dff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    800025b0:	0006b603          	ld	a2,0(a3)
    800025b4:	00661793          	slli	a5,a2,0x6
    800025b8:	00f687b3          	add	a5,a3,a5
    800025bc:	00e78a63          	beq	a5,a4,800025d0 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    800025c0:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    800025c4:	00e6b423          	sd	a4,8(a3)
            return 0;
    800025c8:	00000513          	li	a0,0
    800025cc:	f4dff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    800025d0:	fc053783          	ld	a5,-64(a0)
    800025d4:	00f60633          	add	a2,a2,a5
    800025d8:	00c6b023          	sd	a2,0(a3)
            return 0;
    800025dc:	00000513          	li	a0,0
    800025e0:	f39ff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    800025e4:	fc053703          	ld	a4,-64(a0)
    800025e8:	00e585b3          	add	a1,a1,a4
    800025ec:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    800025f0:	00659713          	slli	a4,a1,0x6
    800025f4:	00e68733          	add	a4,a3,a4
    800025f8:	00f70663          	beq	a4,a5,80002604 <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    800025fc:	00000513          	li	a0,0
    80002600:	f19ff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80002604:	0007b703          	ld	a4,0(a5)
    80002608:	00e585b3          	add	a1,a1,a4
    8000260c:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80002610:	0087b783          	ld	a5,8(a5)
    80002614:	00f6b423          	sd	a5,8(a3)
    80002618:	fe5ff06f          	j	800025fc <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    8000261c:	0007b703          	ld	a4,0(a5)
    80002620:	00e686b3          	add	a3,a3,a4
    80002624:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80002628:	0087b783          	ld	a5,8(a5)
    8000262c:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80002630:	00000513          	li	a0,0
    80002634:	ee5ff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80002638:	fff00513          	li	a0,-1
    8000263c:	eddff06f          	j	80002518 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080002640 <_ZN15MemoryAllocator10initializeEv>:
{
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00813423          	sd	s0,8(sp)
    80002648:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    8000264c:	00003797          	auipc	a5,0x3
    80002650:	5047b783          	ld	a5,1284(a5) # 80005b50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002654:	0007b703          	ld	a4,0(a5)
    80002658:	00003697          	auipc	a3,0x3
    8000265c:	5b868693          	addi	a3,a3,1464 # 80005c10 <_ZN15MemoryAllocator12firstFreeSegE>
    80002660:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80002664:	00003797          	auipc	a5,0x3
    80002668:	5247b783          	ld	a5,1316(a5) # 80005b88 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000266c:	0007b783          	ld	a5,0(a5)
    80002670:	40e787b3          	sub	a5,a5,a4
    80002674:	0067d793          	srli	a5,a5,0x6
    80002678:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    8000267c:	0006b783          	ld	a5,0(a3)
    80002680:	0007b423          	sd	zero,8(a5)
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	01010413          	addi	s0,sp,16
    800026a0:	000105b7          	lui	a1,0x10
    800026a4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800026a8:	00100513          	li	a0,1
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	d10080e7          	jalr	-752(ra) # 800023bc <_Z41__static_initialization_and_destruction_0ii>
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_Z11printStringPKc>:
#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/riscv.hpp"


void printString(char const *string){
    800026c4:	fd010113          	addi	sp,sp,-48
    800026c8:	02113423          	sd	ra,40(sp)
    800026cc:	02813023          	sd	s0,32(sp)
    800026d0:	00913c23          	sd	s1,24(sp)
    800026d4:	01213823          	sd	s2,16(sp)
    800026d8:	03010413          	addi	s0,sp,48
    800026dc:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    800026e0:	100027f3          	csrr	a5,sstatus
    800026e4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800026e8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    800026ec:	00200793          	li	a5,2
    800026f0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus=Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string!='\0'){
    800026f4:	0004c503          	lbu	a0,0(s1)
    800026f8:	00050a63          	beqz	a0,8000270c <_Z11printStringPKc+0x48>
        __putc(*string);
    800026fc:	00002097          	auipc	ra,0x2
    80002700:	1b0080e7          	jalr	432(ra) # 800048ac <__putc>
        string++;
    80002704:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002708:	fedff06f          	j	800026f4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    8000270c:	0009091b          	sext.w	s2,s2
    80002710:	00297913          	andi	s2,s2,2
    80002714:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    80002718:	10092073          	csrs	sstatus,s2
}
    8000271c:	02813083          	ld	ra,40(sp)
    80002720:	02013403          	ld	s0,32(sp)
    80002724:	01813483          	ld	s1,24(sp)
    80002728:	01013903          	ld	s2,16(sp)
    8000272c:	03010113          	addi	sp,sp,48
    80002730:	00008067          	ret

0000000080002734 <_Z12printIntegerm>:
void printInteger(uint64 integer){
    80002734:	fc010113          	addi	sp,sp,-64
    80002738:	02113c23          	sd	ra,56(sp)
    8000273c:	02813823          	sd	s0,48(sp)
    80002740:	02913423          	sd	s1,40(sp)
    80002744:	03213023          	sd	s2,32(sp)
    80002748:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus]"=r"(sstatus));
    8000274c:	100027f3          	csrr	a5,sstatus
    80002750:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002754:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %[mask]"::[mask]"r"(mask));
    80002758:	00200793          	li	a5,2
    8000275c:	1007b073          	csrc	sstatus,a5
    if(integer<0){
        neg=1;
        x=-integer;
    }else
    {
        x=integer;
    80002760:	0005051b          	sext.w	a0,a0
    }
    i=0;
    80002764:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    80002768:	00a00613          	li	a2,10
    8000276c:	02c5773b          	remuw	a4,a0,a2
    80002770:	02071693          	slli	a3,a4,0x20
    80002774:	0206d693          	srli	a3,a3,0x20
    80002778:	00003717          	auipc	a4,0x3
    8000277c:	95870713          	addi	a4,a4,-1704 # 800050d0 <_ZZ12printIntegermE6digits>
    80002780:	00d70733          	add	a4,a4,a3
    80002784:	00074703          	lbu	a4,0(a4)
    80002788:	fe040693          	addi	a3,s0,-32
    8000278c:	009687b3          	add	a5,a3,s1
    80002790:	0014849b          	addiw	s1,s1,1
    80002794:	fee78823          	sb	a4,-16(a5)

    }while((x/=10)!=0);
    80002798:	0005071b          	sext.w	a4,a0
    8000279c:	02c5553b          	divuw	a0,a0,a2
    800027a0:	00900793          	li	a5,9
    800027a4:	fce7e2e3          	bltu	a5,a4,80002768 <_Z12printIntegerm+0x34>
    if(neg){
        buf[i++]='-';
    }
    while(--i>=0)
    800027a8:	fff4849b          	addiw	s1,s1,-1
    800027ac:	0004ce63          	bltz	s1,800027c8 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    800027b0:	fe040793          	addi	a5,s0,-32
    800027b4:	009787b3          	add	a5,a5,s1
    800027b8:	ff07c503          	lbu	a0,-16(a5)
    800027bc:	00002097          	auipc	ra,0x2
    800027c0:	0f0080e7          	jalr	240(ra) # 800048ac <__putc>
    800027c4:	fe5ff06f          	j	800027a8 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE?Riscv::SSTATUS_SIE:0);
    800027c8:	0009091b          	sext.w	s2,s2
    800027cc:	00297913          	andi	s2,s2,2
    800027d0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %[mask]"::[mask]"r"(mask));
    800027d4:	10092073          	csrs	sstatus,s2
}
    800027d8:	03813083          	ld	ra,56(sp)
    800027dc:	03013403          	ld	s0,48(sp)
    800027e0:	02813483          	ld	s1,40(sp)
    800027e4:	02013903          	ld	s2,32(sp)
    800027e8:	04010113          	addi	sp,sp,64
    800027ec:	00008067          	ret

00000000800027f0 <start>:
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	300027f3          	csrr	a5,mstatus
    80002800:	ffffe737          	lui	a4,0xffffe
    80002804:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff797f>
    80002808:	00e7f7b3          	and	a5,a5,a4
    8000280c:	00001737          	lui	a4,0x1
    80002810:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002814:	00e7e7b3          	or	a5,a5,a4
    80002818:	30079073          	csrw	mstatus,a5
    8000281c:	00000797          	auipc	a5,0x0
    80002820:	16078793          	addi	a5,a5,352 # 8000297c <system_main>
    80002824:	34179073          	csrw	mepc,a5
    80002828:	00000793          	li	a5,0
    8000282c:	18079073          	csrw	satp,a5
    80002830:	000107b7          	lui	a5,0x10
    80002834:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002838:	30279073          	csrw	medeleg,a5
    8000283c:	30379073          	csrw	mideleg,a5
    80002840:	104027f3          	csrr	a5,sie
    80002844:	2227e793          	ori	a5,a5,546
    80002848:	10479073          	csrw	sie,a5
    8000284c:	fff00793          	li	a5,-1
    80002850:	00a7d793          	srli	a5,a5,0xa
    80002854:	3b079073          	csrw	pmpaddr0,a5
    80002858:	00f00793          	li	a5,15
    8000285c:	3a079073          	csrw	pmpcfg0,a5
    80002860:	f14027f3          	csrr	a5,mhartid
    80002864:	0200c737          	lui	a4,0x200c
    80002868:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000286c:	0007869b          	sext.w	a3,a5
    80002870:	00269713          	slli	a4,a3,0x2
    80002874:	000f4637          	lui	a2,0xf4
    80002878:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000287c:	00d70733          	add	a4,a4,a3
    80002880:	0037979b          	slliw	a5,a5,0x3
    80002884:	020046b7          	lui	a3,0x2004
    80002888:	00d787b3          	add	a5,a5,a3
    8000288c:	00c585b3          	add	a1,a1,a2
    80002890:	00371693          	slli	a3,a4,0x3
    80002894:	00003717          	auipc	a4,0x3
    80002898:	38c70713          	addi	a4,a4,908 # 80005c20 <timer_scratch>
    8000289c:	00b7b023          	sd	a1,0(a5)
    800028a0:	00d70733          	add	a4,a4,a3
    800028a4:	00f73c23          	sd	a5,24(a4)
    800028a8:	02c73023          	sd	a2,32(a4)
    800028ac:	34071073          	csrw	mscratch,a4
    800028b0:	00000797          	auipc	a5,0x0
    800028b4:	6e078793          	addi	a5,a5,1760 # 80002f90 <timervec>
    800028b8:	30579073          	csrw	mtvec,a5
    800028bc:	300027f3          	csrr	a5,mstatus
    800028c0:	0087e793          	ori	a5,a5,8
    800028c4:	30079073          	csrw	mstatus,a5
    800028c8:	304027f3          	csrr	a5,mie
    800028cc:	0807e793          	ori	a5,a5,128
    800028d0:	30479073          	csrw	mie,a5
    800028d4:	f14027f3          	csrr	a5,mhartid
    800028d8:	0007879b          	sext.w	a5,a5
    800028dc:	00078213          	mv	tp,a5
    800028e0:	30200073          	mret
    800028e4:	00813403          	ld	s0,8(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <timerinit>:
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00813423          	sd	s0,8(sp)
    800028f8:	01010413          	addi	s0,sp,16
    800028fc:	f14027f3          	csrr	a5,mhartid
    80002900:	0200c737          	lui	a4,0x200c
    80002904:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002908:	0007869b          	sext.w	a3,a5
    8000290c:	00269713          	slli	a4,a3,0x2
    80002910:	000f4637          	lui	a2,0xf4
    80002914:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002918:	00d70733          	add	a4,a4,a3
    8000291c:	0037979b          	slliw	a5,a5,0x3
    80002920:	020046b7          	lui	a3,0x2004
    80002924:	00d787b3          	add	a5,a5,a3
    80002928:	00c585b3          	add	a1,a1,a2
    8000292c:	00371693          	slli	a3,a4,0x3
    80002930:	00003717          	auipc	a4,0x3
    80002934:	2f070713          	addi	a4,a4,752 # 80005c20 <timer_scratch>
    80002938:	00b7b023          	sd	a1,0(a5)
    8000293c:	00d70733          	add	a4,a4,a3
    80002940:	00f73c23          	sd	a5,24(a4)
    80002944:	02c73023          	sd	a2,32(a4)
    80002948:	34071073          	csrw	mscratch,a4
    8000294c:	00000797          	auipc	a5,0x0
    80002950:	64478793          	addi	a5,a5,1604 # 80002f90 <timervec>
    80002954:	30579073          	csrw	mtvec,a5
    80002958:	300027f3          	csrr	a5,mstatus
    8000295c:	0087e793          	ori	a5,a5,8
    80002960:	30079073          	csrw	mstatus,a5
    80002964:	304027f3          	csrr	a5,mie
    80002968:	0807e793          	ori	a5,a5,128
    8000296c:	30479073          	csrw	mie,a5
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <system_main>:
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00813823          	sd	s0,16(sp)
    80002984:	00913423          	sd	s1,8(sp)
    80002988:	00113c23          	sd	ra,24(sp)
    8000298c:	02010413          	addi	s0,sp,32
    80002990:	00000097          	auipc	ra,0x0
    80002994:	0c4080e7          	jalr	196(ra) # 80002a54 <cpuid>
    80002998:	00003497          	auipc	s1,0x3
    8000299c:	22848493          	addi	s1,s1,552 # 80005bc0 <started>
    800029a0:	02050263          	beqz	a0,800029c4 <system_main+0x48>
    800029a4:	0004a783          	lw	a5,0(s1)
    800029a8:	0007879b          	sext.w	a5,a5
    800029ac:	fe078ce3          	beqz	a5,800029a4 <system_main+0x28>
    800029b0:	0ff0000f          	fence
    800029b4:	00002517          	auipc	a0,0x2
    800029b8:	75c50513          	addi	a0,a0,1884 # 80005110 <_ZZ12printIntegermE6digits+0x40>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	a70080e7          	jalr	-1424(ra) # 8000342c <panic>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	9c4080e7          	jalr	-1596(ra) # 80003388 <consoleinit>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	150080e7          	jalr	336(ra) # 80003b1c <printfinit>
    800029d4:	00002517          	auipc	a0,0x2
    800029d8:	6d450513          	addi	a0,a0,1748 # 800050a8 <CONSOLE_STATUS+0x98>
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	aac080e7          	jalr	-1364(ra) # 80003488 <__printf>
    800029e4:	00002517          	auipc	a0,0x2
    800029e8:	6fc50513          	addi	a0,a0,1788 # 800050e0 <_ZZ12printIntegermE6digits+0x10>
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	a9c080e7          	jalr	-1380(ra) # 80003488 <__printf>
    800029f4:	00002517          	auipc	a0,0x2
    800029f8:	6b450513          	addi	a0,a0,1716 # 800050a8 <CONSOLE_STATUS+0x98>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	a8c080e7          	jalr	-1396(ra) # 80003488 <__printf>
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	4a4080e7          	jalr	1188(ra) # 80003ea8 <kinit>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	148080e7          	jalr	328(ra) # 80002b54 <trapinit>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	16c080e7          	jalr	364(ra) # 80002b80 <trapinithart>
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	5b4080e7          	jalr	1460(ra) # 80002fd0 <plicinit>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	5d4080e7          	jalr	1492(ra) # 80002ff8 <plicinithart>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	078080e7          	jalr	120(ra) # 80002aa4 <userinit>
    80002a34:	0ff0000f          	fence
    80002a38:	00100793          	li	a5,1
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	6bc50513          	addi	a0,a0,1724 # 800050f8 <_ZZ12printIntegermE6digits+0x28>
    80002a44:	00f4a023          	sw	a5,0(s1)
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	a40080e7          	jalr	-1472(ra) # 80003488 <__printf>
    80002a50:	0000006f          	j	80002a50 <system_main+0xd4>

0000000080002a54 <cpuid>:
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    80002a60:	00020513          	mv	a0,tp
    80002a64:	00813403          	ld	s0,8(sp)
    80002a68:	0005051b          	sext.w	a0,a0
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <mycpu>:
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813423          	sd	s0,8(sp)
    80002a7c:	01010413          	addi	s0,sp,16
    80002a80:	00020793          	mv	a5,tp
    80002a84:	00813403          	ld	s0,8(sp)
    80002a88:	0007879b          	sext.w	a5,a5
    80002a8c:	00779793          	slli	a5,a5,0x7
    80002a90:	00004517          	auipc	a0,0x4
    80002a94:	1c050513          	addi	a0,a0,448 # 80006c50 <cpus>
    80002a98:	00f50533          	add	a0,a0,a5
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <userinit>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00813403          	ld	s0,8(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	fffff317          	auipc	t1,0xfffff
    80002abc:	10030067          	jr	256(t1) # 80001bb8 <main>

0000000080002ac0 <either_copyout>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	00113423          	sd	ra,8(sp)
    80002acc:	01010413          	addi	s0,sp,16
    80002ad0:	02051663          	bnez	a0,80002afc <either_copyout+0x3c>
    80002ad4:	00058513          	mv	a0,a1
    80002ad8:	00060593          	mv	a1,a2
    80002adc:	0006861b          	sext.w	a2,a3
    80002ae0:	00002097          	auipc	ra,0x2
    80002ae4:	c54080e7          	jalr	-940(ra) # 80004734 <__memmove>
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	00000513          	li	a0,0
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	63c50513          	addi	a0,a0,1596 # 80005138 <_ZZ12printIntegermE6digits+0x68>
    80002b04:	00001097          	auipc	ra,0x1
    80002b08:	928080e7          	jalr	-1752(ra) # 8000342c <panic>

0000000080002b0c <either_copyin>:
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00813023          	sd	s0,0(sp)
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	01010413          	addi	s0,sp,16
    80002b1c:	02059463          	bnez	a1,80002b44 <either_copyin+0x38>
    80002b20:	00060593          	mv	a1,a2
    80002b24:	0006861b          	sext.w	a2,a3
    80002b28:	00002097          	auipc	ra,0x2
    80002b2c:	c0c080e7          	jalr	-1012(ra) # 80004734 <__memmove>
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	00000513          	li	a0,0
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret
    80002b44:	00002517          	auipc	a0,0x2
    80002b48:	61c50513          	addi	a0,a0,1564 # 80005160 <_ZZ12printIntegermE6digits+0x90>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	8e0080e7          	jalr	-1824(ra) # 8000342c <panic>

0000000080002b54 <trapinit>:
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    80002b60:	00813403          	ld	s0,8(sp)
    80002b64:	00002597          	auipc	a1,0x2
    80002b68:	62458593          	addi	a1,a1,1572 # 80005188 <_ZZ12printIntegermE6digits+0xb8>
    80002b6c:	00004517          	auipc	a0,0x4
    80002b70:	16450513          	addi	a0,a0,356 # 80006cd0 <tickslock>
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00001317          	auipc	t1,0x1
    80002b7c:	5c030067          	jr	1472(t1) # 80004138 <initlock>

0000000080002b80 <trapinithart>:
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00000797          	auipc	a5,0x0
    80002b90:	2f478793          	addi	a5,a5,756 # 80002e80 <kernelvec>
    80002b94:	10579073          	csrw	stvec,a5
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <usertrap>:
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00813423          	sd	s0,8(sp)
    80002bac:	01010413          	addi	s0,sp,16
    80002bb0:	00813403          	ld	s0,8(sp)
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <usertrapret>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <kerneltrap>:
    80002bd4:	fe010113          	addi	sp,sp,-32
    80002bd8:	00813823          	sd	s0,16(sp)
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00913423          	sd	s1,8(sp)
    80002be4:	02010413          	addi	s0,sp,32
    80002be8:	142025f3          	csrr	a1,scause
    80002bec:	100027f3          	csrr	a5,sstatus
    80002bf0:	0027f793          	andi	a5,a5,2
    80002bf4:	10079c63          	bnez	a5,80002d0c <kerneltrap+0x138>
    80002bf8:	142027f3          	csrr	a5,scause
    80002bfc:	0207ce63          	bltz	a5,80002c38 <kerneltrap+0x64>
    80002c00:	00002517          	auipc	a0,0x2
    80002c04:	5d050513          	addi	a0,a0,1488 # 800051d0 <_ZZ12printIntegermE6digits+0x100>
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	880080e7          	jalr	-1920(ra) # 80003488 <__printf>
    80002c10:	141025f3          	csrr	a1,sepc
    80002c14:	14302673          	csrr	a2,stval
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	5c850513          	addi	a0,a0,1480 # 800051e0 <_ZZ12printIntegermE6digits+0x110>
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	868080e7          	jalr	-1944(ra) # 80003488 <__printf>
    80002c28:	00002517          	auipc	a0,0x2
    80002c2c:	5d050513          	addi	a0,a0,1488 # 800051f8 <_ZZ12printIntegermE6digits+0x128>
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	7fc080e7          	jalr	2044(ra) # 8000342c <panic>
    80002c38:	0ff7f713          	andi	a4,a5,255
    80002c3c:	00900693          	li	a3,9
    80002c40:	04d70063          	beq	a4,a3,80002c80 <kerneltrap+0xac>
    80002c44:	fff00713          	li	a4,-1
    80002c48:	03f71713          	slli	a4,a4,0x3f
    80002c4c:	00170713          	addi	a4,a4,1
    80002c50:	fae798e3          	bne	a5,a4,80002c00 <kerneltrap+0x2c>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	e00080e7          	jalr	-512(ra) # 80002a54 <cpuid>
    80002c5c:	06050663          	beqz	a0,80002cc8 <kerneltrap+0xf4>
    80002c60:	144027f3          	csrr	a5,sip
    80002c64:	ffd7f793          	andi	a5,a5,-3
    80002c68:	14479073          	csrw	sip,a5
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	3c4080e7          	jalr	964(ra) # 80003044 <plic_claim>
    80002c88:	00a00793          	li	a5,10
    80002c8c:	00050493          	mv	s1,a0
    80002c90:	06f50863          	beq	a0,a5,80002d00 <kerneltrap+0x12c>
    80002c94:	fc050ce3          	beqz	a0,80002c6c <kerneltrap+0x98>
    80002c98:	00050593          	mv	a1,a0
    80002c9c:	00002517          	auipc	a0,0x2
    80002ca0:	51450513          	addi	a0,a0,1300 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	7e4080e7          	jalr	2020(ra) # 80003488 <__printf>
    80002cac:	01013403          	ld	s0,16(sp)
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	00048513          	mv	a0,s1
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00000317          	auipc	t1,0x0
    80002cc4:	3bc30067          	jr	956(t1) # 8000307c <plic_complete>
    80002cc8:	00004517          	auipc	a0,0x4
    80002ccc:	00850513          	addi	a0,a0,8 # 80006cd0 <tickslock>
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	48c080e7          	jalr	1164(ra) # 8000415c <acquire>
    80002cd8:	00003717          	auipc	a4,0x3
    80002cdc:	eec70713          	addi	a4,a4,-276 # 80005bc4 <ticks>
    80002ce0:	00072783          	lw	a5,0(a4)
    80002ce4:	00004517          	auipc	a0,0x4
    80002ce8:	fec50513          	addi	a0,a0,-20 # 80006cd0 <tickslock>
    80002cec:	0017879b          	addiw	a5,a5,1
    80002cf0:	00f72023          	sw	a5,0(a4)
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	534080e7          	jalr	1332(ra) # 80004228 <release>
    80002cfc:	f65ff06f          	j	80002c60 <kerneltrap+0x8c>
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	090080e7          	jalr	144(ra) # 80003d90 <uartintr>
    80002d08:	fa5ff06f          	j	80002cac <kerneltrap+0xd8>
    80002d0c:	00002517          	auipc	a0,0x2
    80002d10:	48450513          	addi	a0,a0,1156 # 80005190 <_ZZ12printIntegermE6digits+0xc0>
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	718080e7          	jalr	1816(ra) # 8000342c <panic>

0000000080002d1c <clockintr>:
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00004497          	auipc	s1,0x4
    80002d34:	fa048493          	addi	s1,s1,-96 # 80006cd0 <tickslock>
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	420080e7          	jalr	1056(ra) # 8000415c <acquire>
    80002d44:	00003717          	auipc	a4,0x3
    80002d48:	e8070713          	addi	a4,a4,-384 # 80005bc4 <ticks>
    80002d4c:	00072783          	lw	a5,0(a4)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	01813083          	ld	ra,24(sp)
    80002d58:	00048513          	mv	a0,s1
    80002d5c:	0017879b          	addiw	a5,a5,1
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	00f72023          	sw	a5,0(a4)
    80002d68:	02010113          	addi	sp,sp,32
    80002d6c:	00001317          	auipc	t1,0x1
    80002d70:	4bc30067          	jr	1212(t1) # 80004228 <release>

0000000080002d74 <devintr>:
    80002d74:	142027f3          	csrr	a5,scause
    80002d78:	00000513          	li	a0,0
    80002d7c:	0007c463          	bltz	a5,80002d84 <devintr+0x10>
    80002d80:	00008067          	ret
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00913423          	sd	s1,8(sp)
    80002d94:	02010413          	addi	s0,sp,32
    80002d98:	0ff7f713          	andi	a4,a5,255
    80002d9c:	00900693          	li	a3,9
    80002da0:	04d70c63          	beq	a4,a3,80002df8 <devintr+0x84>
    80002da4:	fff00713          	li	a4,-1
    80002da8:	03f71713          	slli	a4,a4,0x3f
    80002dac:	00170713          	addi	a4,a4,1
    80002db0:	00e78c63          	beq	a5,a4,80002dc8 <devintr+0x54>
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	02010113          	addi	sp,sp,32
    80002dc4:	00008067          	ret
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	c8c080e7          	jalr	-884(ra) # 80002a54 <cpuid>
    80002dd0:	06050663          	beqz	a0,80002e3c <devintr+0xc8>
    80002dd4:	144027f3          	csrr	a5,sip
    80002dd8:	ffd7f793          	andi	a5,a5,-3
    80002ddc:	14479073          	csrw	sip,a5
    80002de0:	01813083          	ld	ra,24(sp)
    80002de4:	01013403          	ld	s0,16(sp)
    80002de8:	00813483          	ld	s1,8(sp)
    80002dec:	00200513          	li	a0,2
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	24c080e7          	jalr	588(ra) # 80003044 <plic_claim>
    80002e00:	00a00793          	li	a5,10
    80002e04:	00050493          	mv	s1,a0
    80002e08:	06f50663          	beq	a0,a5,80002e74 <devintr+0x100>
    80002e0c:	00100513          	li	a0,1
    80002e10:	fa0482e3          	beqz	s1,80002db4 <devintr+0x40>
    80002e14:	00048593          	mv	a1,s1
    80002e18:	00002517          	auipc	a0,0x2
    80002e1c:	39850513          	addi	a0,a0,920 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	668080e7          	jalr	1640(ra) # 80003488 <__printf>
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	250080e7          	jalr	592(ra) # 8000307c <plic_complete>
    80002e34:	00100513          	li	a0,1
    80002e38:	f7dff06f          	j	80002db4 <devintr+0x40>
    80002e3c:	00004517          	auipc	a0,0x4
    80002e40:	e9450513          	addi	a0,a0,-364 # 80006cd0 <tickslock>
    80002e44:	00001097          	auipc	ra,0x1
    80002e48:	318080e7          	jalr	792(ra) # 8000415c <acquire>
    80002e4c:	00003717          	auipc	a4,0x3
    80002e50:	d7870713          	addi	a4,a4,-648 # 80005bc4 <ticks>
    80002e54:	00072783          	lw	a5,0(a4)
    80002e58:	00004517          	auipc	a0,0x4
    80002e5c:	e7850513          	addi	a0,a0,-392 # 80006cd0 <tickslock>
    80002e60:	0017879b          	addiw	a5,a5,1
    80002e64:	00f72023          	sw	a5,0(a4)
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	3c0080e7          	jalr	960(ra) # 80004228 <release>
    80002e70:	f65ff06f          	j	80002dd4 <devintr+0x60>
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	f1c080e7          	jalr	-228(ra) # 80003d90 <uartintr>
    80002e7c:	fadff06f          	j	80002e28 <devintr+0xb4>

0000000080002e80 <kernelvec>:
    80002e80:	f0010113          	addi	sp,sp,-256
    80002e84:	00113023          	sd	ra,0(sp)
    80002e88:	00213423          	sd	sp,8(sp)
    80002e8c:	00313823          	sd	gp,16(sp)
    80002e90:	00413c23          	sd	tp,24(sp)
    80002e94:	02513023          	sd	t0,32(sp)
    80002e98:	02613423          	sd	t1,40(sp)
    80002e9c:	02713823          	sd	t2,48(sp)
    80002ea0:	02813c23          	sd	s0,56(sp)
    80002ea4:	04913023          	sd	s1,64(sp)
    80002ea8:	04a13423          	sd	a0,72(sp)
    80002eac:	04b13823          	sd	a1,80(sp)
    80002eb0:	04c13c23          	sd	a2,88(sp)
    80002eb4:	06d13023          	sd	a3,96(sp)
    80002eb8:	06e13423          	sd	a4,104(sp)
    80002ebc:	06f13823          	sd	a5,112(sp)
    80002ec0:	07013c23          	sd	a6,120(sp)
    80002ec4:	09113023          	sd	a7,128(sp)
    80002ec8:	09213423          	sd	s2,136(sp)
    80002ecc:	09313823          	sd	s3,144(sp)
    80002ed0:	09413c23          	sd	s4,152(sp)
    80002ed4:	0b513023          	sd	s5,160(sp)
    80002ed8:	0b613423          	sd	s6,168(sp)
    80002edc:	0b713823          	sd	s7,176(sp)
    80002ee0:	0b813c23          	sd	s8,184(sp)
    80002ee4:	0d913023          	sd	s9,192(sp)
    80002ee8:	0da13423          	sd	s10,200(sp)
    80002eec:	0db13823          	sd	s11,208(sp)
    80002ef0:	0dc13c23          	sd	t3,216(sp)
    80002ef4:	0fd13023          	sd	t4,224(sp)
    80002ef8:	0fe13423          	sd	t5,232(sp)
    80002efc:	0ff13823          	sd	t6,240(sp)
    80002f00:	cd5ff0ef          	jal	ra,80002bd4 <kerneltrap>
    80002f04:	00013083          	ld	ra,0(sp)
    80002f08:	00813103          	ld	sp,8(sp)
    80002f0c:	01013183          	ld	gp,16(sp)
    80002f10:	02013283          	ld	t0,32(sp)
    80002f14:	02813303          	ld	t1,40(sp)
    80002f18:	03013383          	ld	t2,48(sp)
    80002f1c:	03813403          	ld	s0,56(sp)
    80002f20:	04013483          	ld	s1,64(sp)
    80002f24:	04813503          	ld	a0,72(sp)
    80002f28:	05013583          	ld	a1,80(sp)
    80002f2c:	05813603          	ld	a2,88(sp)
    80002f30:	06013683          	ld	a3,96(sp)
    80002f34:	06813703          	ld	a4,104(sp)
    80002f38:	07013783          	ld	a5,112(sp)
    80002f3c:	07813803          	ld	a6,120(sp)
    80002f40:	08013883          	ld	a7,128(sp)
    80002f44:	08813903          	ld	s2,136(sp)
    80002f48:	09013983          	ld	s3,144(sp)
    80002f4c:	09813a03          	ld	s4,152(sp)
    80002f50:	0a013a83          	ld	s5,160(sp)
    80002f54:	0a813b03          	ld	s6,168(sp)
    80002f58:	0b013b83          	ld	s7,176(sp)
    80002f5c:	0b813c03          	ld	s8,184(sp)
    80002f60:	0c013c83          	ld	s9,192(sp)
    80002f64:	0c813d03          	ld	s10,200(sp)
    80002f68:	0d013d83          	ld	s11,208(sp)
    80002f6c:	0d813e03          	ld	t3,216(sp)
    80002f70:	0e013e83          	ld	t4,224(sp)
    80002f74:	0e813f03          	ld	t5,232(sp)
    80002f78:	0f013f83          	ld	t6,240(sp)
    80002f7c:	10010113          	addi	sp,sp,256
    80002f80:	10200073          	sret
    80002f84:	00000013          	nop
    80002f88:	00000013          	nop
    80002f8c:	00000013          	nop

0000000080002f90 <timervec>:
    80002f90:	34051573          	csrrw	a0,mscratch,a0
    80002f94:	00b53023          	sd	a1,0(a0)
    80002f98:	00c53423          	sd	a2,8(a0)
    80002f9c:	00d53823          	sd	a3,16(a0)
    80002fa0:	01853583          	ld	a1,24(a0)
    80002fa4:	02053603          	ld	a2,32(a0)
    80002fa8:	0005b683          	ld	a3,0(a1)
    80002fac:	00c686b3          	add	a3,a3,a2
    80002fb0:	00d5b023          	sd	a3,0(a1)
    80002fb4:	00200593          	li	a1,2
    80002fb8:	14459073          	csrw	sip,a1
    80002fbc:	01053683          	ld	a3,16(a0)
    80002fc0:	00853603          	ld	a2,8(a0)
    80002fc4:	00053583          	ld	a1,0(a0)
    80002fc8:	34051573          	csrrw	a0,mscratch,a0
    80002fcc:	30200073          	mret

0000000080002fd0 <plicinit>:
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	0c0007b7          	lui	a5,0xc000
    80002fe4:	00100713          	li	a4,1
    80002fe8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002fec:	00e7a223          	sw	a4,4(a5)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <plicinithart>:
    80002ff8:	ff010113          	addi	sp,sp,-16
    80002ffc:	00813023          	sd	s0,0(sp)
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	01010413          	addi	s0,sp,16
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	a4c080e7          	jalr	-1460(ra) # 80002a54 <cpuid>
    80003010:	0085171b          	slliw	a4,a0,0x8
    80003014:	0c0027b7          	lui	a5,0xc002
    80003018:	00e787b3          	add	a5,a5,a4
    8000301c:	40200713          	li	a4,1026
    80003020:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	00d5151b          	slliw	a0,a0,0xd
    80003030:	0c2017b7          	lui	a5,0xc201
    80003034:	00a78533          	add	a0,a5,a0
    80003038:	00052023          	sw	zero,0(a0)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <plic_claim>:
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00813023          	sd	s0,0(sp)
    8000304c:	00113423          	sd	ra,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	00000097          	auipc	ra,0x0
    80003058:	a00080e7          	jalr	-1536(ra) # 80002a54 <cpuid>
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	00d5151b          	slliw	a0,a0,0xd
    80003068:	0c2017b7          	lui	a5,0xc201
    8000306c:	00a78533          	add	a0,a5,a0
    80003070:	00452503          	lw	a0,4(a0)
    80003074:	01010113          	addi	sp,sp,16
    80003078:	00008067          	ret

000000008000307c <plic_complete>:
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00050493          	mv	s1,a0
    80003094:	00000097          	auipc	ra,0x0
    80003098:	9c0080e7          	jalr	-1600(ra) # 80002a54 <cpuid>
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00d5179b          	slliw	a5,a0,0xd
    800030a8:	0c201737          	lui	a4,0xc201
    800030ac:	00f707b3          	add	a5,a4,a5
    800030b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800030b4:	00813483          	ld	s1,8(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret

00000000800030c0 <consolewrite>:
    800030c0:	fb010113          	addi	sp,sp,-80
    800030c4:	04813023          	sd	s0,64(sp)
    800030c8:	04113423          	sd	ra,72(sp)
    800030cc:	02913c23          	sd	s1,56(sp)
    800030d0:	03213823          	sd	s2,48(sp)
    800030d4:	03313423          	sd	s3,40(sp)
    800030d8:	03413023          	sd	s4,32(sp)
    800030dc:	01513c23          	sd	s5,24(sp)
    800030e0:	05010413          	addi	s0,sp,80
    800030e4:	06c05c63          	blez	a2,8000315c <consolewrite+0x9c>
    800030e8:	00060993          	mv	s3,a2
    800030ec:	00050a13          	mv	s4,a0
    800030f0:	00058493          	mv	s1,a1
    800030f4:	00000913          	li	s2,0
    800030f8:	fff00a93          	li	s5,-1
    800030fc:	01c0006f          	j	80003118 <consolewrite+0x58>
    80003100:	fbf44503          	lbu	a0,-65(s0)
    80003104:	0019091b          	addiw	s2,s2,1
    80003108:	00148493          	addi	s1,s1,1
    8000310c:	00001097          	auipc	ra,0x1
    80003110:	a9c080e7          	jalr	-1380(ra) # 80003ba8 <uartputc>
    80003114:	03298063          	beq	s3,s2,80003134 <consolewrite+0x74>
    80003118:	00048613          	mv	a2,s1
    8000311c:	00100693          	li	a3,1
    80003120:	000a0593          	mv	a1,s4
    80003124:	fbf40513          	addi	a0,s0,-65
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	9e4080e7          	jalr	-1564(ra) # 80002b0c <either_copyin>
    80003130:	fd5518e3          	bne	a0,s5,80003100 <consolewrite+0x40>
    80003134:	04813083          	ld	ra,72(sp)
    80003138:	04013403          	ld	s0,64(sp)
    8000313c:	03813483          	ld	s1,56(sp)
    80003140:	02813983          	ld	s3,40(sp)
    80003144:	02013a03          	ld	s4,32(sp)
    80003148:	01813a83          	ld	s5,24(sp)
    8000314c:	00090513          	mv	a0,s2
    80003150:	03013903          	ld	s2,48(sp)
    80003154:	05010113          	addi	sp,sp,80
    80003158:	00008067          	ret
    8000315c:	00000913          	li	s2,0
    80003160:	fd5ff06f          	j	80003134 <consolewrite+0x74>

0000000080003164 <consoleread>:
    80003164:	f9010113          	addi	sp,sp,-112
    80003168:	06813023          	sd	s0,96(sp)
    8000316c:	04913c23          	sd	s1,88(sp)
    80003170:	05213823          	sd	s2,80(sp)
    80003174:	05313423          	sd	s3,72(sp)
    80003178:	05413023          	sd	s4,64(sp)
    8000317c:	03513c23          	sd	s5,56(sp)
    80003180:	03613823          	sd	s6,48(sp)
    80003184:	03713423          	sd	s7,40(sp)
    80003188:	03813023          	sd	s8,32(sp)
    8000318c:	06113423          	sd	ra,104(sp)
    80003190:	01913c23          	sd	s9,24(sp)
    80003194:	07010413          	addi	s0,sp,112
    80003198:	00060b93          	mv	s7,a2
    8000319c:	00050913          	mv	s2,a0
    800031a0:	00058c13          	mv	s8,a1
    800031a4:	00060b1b          	sext.w	s6,a2
    800031a8:	00004497          	auipc	s1,0x4
    800031ac:	b5048493          	addi	s1,s1,-1200 # 80006cf8 <cons>
    800031b0:	00400993          	li	s3,4
    800031b4:	fff00a13          	li	s4,-1
    800031b8:	00a00a93          	li	s5,10
    800031bc:	05705e63          	blez	s7,80003218 <consoleread+0xb4>
    800031c0:	09c4a703          	lw	a4,156(s1)
    800031c4:	0984a783          	lw	a5,152(s1)
    800031c8:	0007071b          	sext.w	a4,a4
    800031cc:	08e78463          	beq	a5,a4,80003254 <consoleread+0xf0>
    800031d0:	07f7f713          	andi	a4,a5,127
    800031d4:	00e48733          	add	a4,s1,a4
    800031d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800031dc:	0017869b          	addiw	a3,a5,1
    800031e0:	08d4ac23          	sw	a3,152(s1)
    800031e4:	00070c9b          	sext.w	s9,a4
    800031e8:	0b370663          	beq	a4,s3,80003294 <consoleread+0x130>
    800031ec:	00100693          	li	a3,1
    800031f0:	f9f40613          	addi	a2,s0,-97
    800031f4:	000c0593          	mv	a1,s8
    800031f8:	00090513          	mv	a0,s2
    800031fc:	f8e40fa3          	sb	a4,-97(s0)
    80003200:	00000097          	auipc	ra,0x0
    80003204:	8c0080e7          	jalr	-1856(ra) # 80002ac0 <either_copyout>
    80003208:	01450863          	beq	a0,s4,80003218 <consoleread+0xb4>
    8000320c:	001c0c13          	addi	s8,s8,1
    80003210:	fffb8b9b          	addiw	s7,s7,-1
    80003214:	fb5c94e3          	bne	s9,s5,800031bc <consoleread+0x58>
    80003218:	000b851b          	sext.w	a0,s7
    8000321c:	06813083          	ld	ra,104(sp)
    80003220:	06013403          	ld	s0,96(sp)
    80003224:	05813483          	ld	s1,88(sp)
    80003228:	05013903          	ld	s2,80(sp)
    8000322c:	04813983          	ld	s3,72(sp)
    80003230:	04013a03          	ld	s4,64(sp)
    80003234:	03813a83          	ld	s5,56(sp)
    80003238:	02813b83          	ld	s7,40(sp)
    8000323c:	02013c03          	ld	s8,32(sp)
    80003240:	01813c83          	ld	s9,24(sp)
    80003244:	40ab053b          	subw	a0,s6,a0
    80003248:	03013b03          	ld	s6,48(sp)
    8000324c:	07010113          	addi	sp,sp,112
    80003250:	00008067          	ret
    80003254:	00001097          	auipc	ra,0x1
    80003258:	1d8080e7          	jalr	472(ra) # 8000442c <push_on>
    8000325c:	0984a703          	lw	a4,152(s1)
    80003260:	09c4a783          	lw	a5,156(s1)
    80003264:	0007879b          	sext.w	a5,a5
    80003268:	fef70ce3          	beq	a4,a5,80003260 <consoleread+0xfc>
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	234080e7          	jalr	564(ra) # 800044a0 <pop_on>
    80003274:	0984a783          	lw	a5,152(s1)
    80003278:	07f7f713          	andi	a4,a5,127
    8000327c:	00e48733          	add	a4,s1,a4
    80003280:	01874703          	lbu	a4,24(a4)
    80003284:	0017869b          	addiw	a3,a5,1
    80003288:	08d4ac23          	sw	a3,152(s1)
    8000328c:	00070c9b          	sext.w	s9,a4
    80003290:	f5371ee3          	bne	a4,s3,800031ec <consoleread+0x88>
    80003294:	000b851b          	sext.w	a0,s7
    80003298:	f96bf2e3          	bgeu	s7,s6,8000321c <consoleread+0xb8>
    8000329c:	08f4ac23          	sw	a5,152(s1)
    800032a0:	f7dff06f          	j	8000321c <consoleread+0xb8>

00000000800032a4 <consputc>:
    800032a4:	10000793          	li	a5,256
    800032a8:	00f50663          	beq	a0,a5,800032b4 <consputc+0x10>
    800032ac:	00001317          	auipc	t1,0x1
    800032b0:	9f430067          	jr	-1548(t1) # 80003ca0 <uartputc_sync>
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	00800513          	li	a0,8
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	9d8080e7          	jalr	-1576(ra) # 80003ca0 <uartputc_sync>
    800032d0:	02000513          	li	a0,32
    800032d4:	00001097          	auipc	ra,0x1
    800032d8:	9cc080e7          	jalr	-1588(ra) # 80003ca0 <uartputc_sync>
    800032dc:	00013403          	ld	s0,0(sp)
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00800513          	li	a0,8
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00001317          	auipc	t1,0x1
    800032f0:	9b430067          	jr	-1612(t1) # 80003ca0 <uartputc_sync>

00000000800032f4 <consoleintr>:
    800032f4:	fe010113          	addi	sp,sp,-32
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	00113c23          	sd	ra,24(sp)
    80003308:	02010413          	addi	s0,sp,32
    8000330c:	00004917          	auipc	s2,0x4
    80003310:	9ec90913          	addi	s2,s2,-1556 # 80006cf8 <cons>
    80003314:	00050493          	mv	s1,a0
    80003318:	00090513          	mv	a0,s2
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	e40080e7          	jalr	-448(ra) # 8000415c <acquire>
    80003324:	02048c63          	beqz	s1,8000335c <consoleintr+0x68>
    80003328:	0a092783          	lw	a5,160(s2)
    8000332c:	09892703          	lw	a4,152(s2)
    80003330:	07f00693          	li	a3,127
    80003334:	40e7873b          	subw	a4,a5,a4
    80003338:	02e6e263          	bltu	a3,a4,8000335c <consoleintr+0x68>
    8000333c:	00d00713          	li	a4,13
    80003340:	04e48063          	beq	s1,a4,80003380 <consoleintr+0x8c>
    80003344:	07f7f713          	andi	a4,a5,127
    80003348:	00e90733          	add	a4,s2,a4
    8000334c:	0017879b          	addiw	a5,a5,1
    80003350:	0af92023          	sw	a5,160(s2)
    80003354:	00970c23          	sb	s1,24(a4)
    80003358:	08f92e23          	sw	a5,156(s2)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	01813083          	ld	ra,24(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	00013903          	ld	s2,0(sp)
    8000336c:	00004517          	auipc	a0,0x4
    80003370:	98c50513          	addi	a0,a0,-1652 # 80006cf8 <cons>
    80003374:	02010113          	addi	sp,sp,32
    80003378:	00001317          	auipc	t1,0x1
    8000337c:	eb030067          	jr	-336(t1) # 80004228 <release>
    80003380:	00a00493          	li	s1,10
    80003384:	fc1ff06f          	j	80003344 <consoleintr+0x50>

0000000080003388 <consoleinit>:
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00004497          	auipc	s1,0x4
    800033a0:	95c48493          	addi	s1,s1,-1700 # 80006cf8 <cons>
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00002597          	auipc	a1,0x2
    800033ac:	e6058593          	addi	a1,a1,-416 # 80005208 <_ZZ12printIntegermE6digits+0x138>
    800033b0:	00001097          	auipc	ra,0x1
    800033b4:	d88080e7          	jalr	-632(ra) # 80004138 <initlock>
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	7ac080e7          	jalr	1964(ra) # 80003b64 <uartinit>
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00000797          	auipc	a5,0x0
    800033cc:	d9c78793          	addi	a5,a5,-612 # 80003164 <consoleread>
    800033d0:	0af4bc23          	sd	a5,184(s1)
    800033d4:	00000797          	auipc	a5,0x0
    800033d8:	cec78793          	addi	a5,a5,-788 # 800030c0 <consolewrite>
    800033dc:	0cf4b023          	sd	a5,192(s1)
    800033e0:	00813483          	ld	s1,8(sp)
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00008067          	ret

00000000800033ec <console_read>:
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	00004317          	auipc	t1,0x4
    80003400:	9b433303          	ld	t1,-1612(t1) # 80006db0 <devsw+0x10>
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00030067          	jr	t1

000000008000340c <console_write>:
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00813423          	sd	s0,8(sp)
    80003414:	01010413          	addi	s0,sp,16
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	00004317          	auipc	t1,0x4
    80003420:	99c33303          	ld	t1,-1636(t1) # 80006db8 <devsw+0x18>
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00030067          	jr	t1

000000008000342c <panic>:
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00113c23          	sd	ra,24(sp)
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050493          	mv	s1,a0
    80003444:	00002517          	auipc	a0,0x2
    80003448:	dcc50513          	addi	a0,a0,-564 # 80005210 <_ZZ12printIntegermE6digits+0x140>
    8000344c:	00004797          	auipc	a5,0x4
    80003450:	a007a623          	sw	zero,-1524(a5) # 80006e58 <pr+0x18>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	034080e7          	jalr	52(ra) # 80003488 <__printf>
    8000345c:	00048513          	mv	a0,s1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	028080e7          	jalr	40(ra) # 80003488 <__printf>
    80003468:	00002517          	auipc	a0,0x2
    8000346c:	c4050513          	addi	a0,a0,-960 # 800050a8 <CONSOLE_STATUS+0x98>
    80003470:	00000097          	auipc	ra,0x0
    80003474:	018080e7          	jalr	24(ra) # 80003488 <__printf>
    80003478:	00100793          	li	a5,1
    8000347c:	00002717          	auipc	a4,0x2
    80003480:	74f72623          	sw	a5,1868(a4) # 80005bc8 <panicked>
    80003484:	0000006f          	j	80003484 <panic+0x58>

0000000080003488 <__printf>:
    80003488:	f3010113          	addi	sp,sp,-208
    8000348c:	08813023          	sd	s0,128(sp)
    80003490:	07313423          	sd	s3,104(sp)
    80003494:	09010413          	addi	s0,sp,144
    80003498:	05813023          	sd	s8,64(sp)
    8000349c:	08113423          	sd	ra,136(sp)
    800034a0:	06913c23          	sd	s1,120(sp)
    800034a4:	07213823          	sd	s2,112(sp)
    800034a8:	07413023          	sd	s4,96(sp)
    800034ac:	05513c23          	sd	s5,88(sp)
    800034b0:	05613823          	sd	s6,80(sp)
    800034b4:	05713423          	sd	s7,72(sp)
    800034b8:	03913c23          	sd	s9,56(sp)
    800034bc:	03a13823          	sd	s10,48(sp)
    800034c0:	03b13423          	sd	s11,40(sp)
    800034c4:	00004317          	auipc	t1,0x4
    800034c8:	97c30313          	addi	t1,t1,-1668 # 80006e40 <pr>
    800034cc:	01832c03          	lw	s8,24(t1)
    800034d0:	00b43423          	sd	a1,8(s0)
    800034d4:	00c43823          	sd	a2,16(s0)
    800034d8:	00d43c23          	sd	a3,24(s0)
    800034dc:	02e43023          	sd	a4,32(s0)
    800034e0:	02f43423          	sd	a5,40(s0)
    800034e4:	03043823          	sd	a6,48(s0)
    800034e8:	03143c23          	sd	a7,56(s0)
    800034ec:	00050993          	mv	s3,a0
    800034f0:	4a0c1663          	bnez	s8,8000399c <__printf+0x514>
    800034f4:	60098c63          	beqz	s3,80003b0c <__printf+0x684>
    800034f8:	0009c503          	lbu	a0,0(s3)
    800034fc:	00840793          	addi	a5,s0,8
    80003500:	f6f43c23          	sd	a5,-136(s0)
    80003504:	00000493          	li	s1,0
    80003508:	22050063          	beqz	a0,80003728 <__printf+0x2a0>
    8000350c:	00002a37          	lui	s4,0x2
    80003510:	00018ab7          	lui	s5,0x18
    80003514:	000f4b37          	lui	s6,0xf4
    80003518:	00989bb7          	lui	s7,0x989
    8000351c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003520:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003524:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003528:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000352c:	00148c9b          	addiw	s9,s1,1
    80003530:	02500793          	li	a5,37
    80003534:	01998933          	add	s2,s3,s9
    80003538:	38f51263          	bne	a0,a5,800038bc <__printf+0x434>
    8000353c:	00094783          	lbu	a5,0(s2)
    80003540:	00078c9b          	sext.w	s9,a5
    80003544:	1e078263          	beqz	a5,80003728 <__printf+0x2a0>
    80003548:	0024849b          	addiw	s1,s1,2
    8000354c:	07000713          	li	a4,112
    80003550:	00998933          	add	s2,s3,s1
    80003554:	38e78a63          	beq	a5,a4,800038e8 <__printf+0x460>
    80003558:	20f76863          	bltu	a4,a5,80003768 <__printf+0x2e0>
    8000355c:	42a78863          	beq	a5,a0,8000398c <__printf+0x504>
    80003560:	06400713          	li	a4,100
    80003564:	40e79663          	bne	a5,a4,80003970 <__printf+0x4e8>
    80003568:	f7843783          	ld	a5,-136(s0)
    8000356c:	0007a603          	lw	a2,0(a5)
    80003570:	00878793          	addi	a5,a5,8
    80003574:	f6f43c23          	sd	a5,-136(s0)
    80003578:	42064a63          	bltz	a2,800039ac <__printf+0x524>
    8000357c:	00a00713          	li	a4,10
    80003580:	02e677bb          	remuw	a5,a2,a4
    80003584:	00002d97          	auipc	s11,0x2
    80003588:	cb4d8d93          	addi	s11,s11,-844 # 80005238 <digits>
    8000358c:	00900593          	li	a1,9
    80003590:	0006051b          	sext.w	a0,a2
    80003594:	00000c93          	li	s9,0
    80003598:	02079793          	slli	a5,a5,0x20
    8000359c:	0207d793          	srli	a5,a5,0x20
    800035a0:	00fd87b3          	add	a5,s11,a5
    800035a4:	0007c783          	lbu	a5,0(a5)
    800035a8:	02e656bb          	divuw	a3,a2,a4
    800035ac:	f8f40023          	sb	a5,-128(s0)
    800035b0:	14c5d863          	bge	a1,a2,80003700 <__printf+0x278>
    800035b4:	06300593          	li	a1,99
    800035b8:	00100c93          	li	s9,1
    800035bc:	02e6f7bb          	remuw	a5,a3,a4
    800035c0:	02079793          	slli	a5,a5,0x20
    800035c4:	0207d793          	srli	a5,a5,0x20
    800035c8:	00fd87b3          	add	a5,s11,a5
    800035cc:	0007c783          	lbu	a5,0(a5)
    800035d0:	02e6d73b          	divuw	a4,a3,a4
    800035d4:	f8f400a3          	sb	a5,-127(s0)
    800035d8:	12a5f463          	bgeu	a1,a0,80003700 <__printf+0x278>
    800035dc:	00a00693          	li	a3,10
    800035e0:	00900593          	li	a1,9
    800035e4:	02d777bb          	remuw	a5,a4,a3
    800035e8:	02079793          	slli	a5,a5,0x20
    800035ec:	0207d793          	srli	a5,a5,0x20
    800035f0:	00fd87b3          	add	a5,s11,a5
    800035f4:	0007c503          	lbu	a0,0(a5)
    800035f8:	02d757bb          	divuw	a5,a4,a3
    800035fc:	f8a40123          	sb	a0,-126(s0)
    80003600:	48e5f263          	bgeu	a1,a4,80003a84 <__printf+0x5fc>
    80003604:	06300513          	li	a0,99
    80003608:	02d7f5bb          	remuw	a1,a5,a3
    8000360c:	02059593          	slli	a1,a1,0x20
    80003610:	0205d593          	srli	a1,a1,0x20
    80003614:	00bd85b3          	add	a1,s11,a1
    80003618:	0005c583          	lbu	a1,0(a1)
    8000361c:	02d7d7bb          	divuw	a5,a5,a3
    80003620:	f8b401a3          	sb	a1,-125(s0)
    80003624:	48e57263          	bgeu	a0,a4,80003aa8 <__printf+0x620>
    80003628:	3e700513          	li	a0,999
    8000362c:	02d7f5bb          	remuw	a1,a5,a3
    80003630:	02059593          	slli	a1,a1,0x20
    80003634:	0205d593          	srli	a1,a1,0x20
    80003638:	00bd85b3          	add	a1,s11,a1
    8000363c:	0005c583          	lbu	a1,0(a1)
    80003640:	02d7d7bb          	divuw	a5,a5,a3
    80003644:	f8b40223          	sb	a1,-124(s0)
    80003648:	46e57663          	bgeu	a0,a4,80003ab4 <__printf+0x62c>
    8000364c:	02d7f5bb          	remuw	a1,a5,a3
    80003650:	02059593          	slli	a1,a1,0x20
    80003654:	0205d593          	srli	a1,a1,0x20
    80003658:	00bd85b3          	add	a1,s11,a1
    8000365c:	0005c583          	lbu	a1,0(a1)
    80003660:	02d7d7bb          	divuw	a5,a5,a3
    80003664:	f8b402a3          	sb	a1,-123(s0)
    80003668:	46ea7863          	bgeu	s4,a4,80003ad8 <__printf+0x650>
    8000366c:	02d7f5bb          	remuw	a1,a5,a3
    80003670:	02059593          	slli	a1,a1,0x20
    80003674:	0205d593          	srli	a1,a1,0x20
    80003678:	00bd85b3          	add	a1,s11,a1
    8000367c:	0005c583          	lbu	a1,0(a1)
    80003680:	02d7d7bb          	divuw	a5,a5,a3
    80003684:	f8b40323          	sb	a1,-122(s0)
    80003688:	3eeaf863          	bgeu	s5,a4,80003a78 <__printf+0x5f0>
    8000368c:	02d7f5bb          	remuw	a1,a5,a3
    80003690:	02059593          	slli	a1,a1,0x20
    80003694:	0205d593          	srli	a1,a1,0x20
    80003698:	00bd85b3          	add	a1,s11,a1
    8000369c:	0005c583          	lbu	a1,0(a1)
    800036a0:	02d7d7bb          	divuw	a5,a5,a3
    800036a4:	f8b403a3          	sb	a1,-121(s0)
    800036a8:	42eb7e63          	bgeu	s6,a4,80003ae4 <__printf+0x65c>
    800036ac:	02d7f5bb          	remuw	a1,a5,a3
    800036b0:	02059593          	slli	a1,a1,0x20
    800036b4:	0205d593          	srli	a1,a1,0x20
    800036b8:	00bd85b3          	add	a1,s11,a1
    800036bc:	0005c583          	lbu	a1,0(a1)
    800036c0:	02d7d7bb          	divuw	a5,a5,a3
    800036c4:	f8b40423          	sb	a1,-120(s0)
    800036c8:	42ebfc63          	bgeu	s7,a4,80003b00 <__printf+0x678>
    800036cc:	02079793          	slli	a5,a5,0x20
    800036d0:	0207d793          	srli	a5,a5,0x20
    800036d4:	00fd8db3          	add	s11,s11,a5
    800036d8:	000dc703          	lbu	a4,0(s11)
    800036dc:	00a00793          	li	a5,10
    800036e0:	00900c93          	li	s9,9
    800036e4:	f8e404a3          	sb	a4,-119(s0)
    800036e8:	00065c63          	bgez	a2,80003700 <__printf+0x278>
    800036ec:	f9040713          	addi	a4,s0,-112
    800036f0:	00f70733          	add	a4,a4,a5
    800036f4:	02d00693          	li	a3,45
    800036f8:	fed70823          	sb	a3,-16(a4)
    800036fc:	00078c93          	mv	s9,a5
    80003700:	f8040793          	addi	a5,s0,-128
    80003704:	01978cb3          	add	s9,a5,s9
    80003708:	f7f40d13          	addi	s10,s0,-129
    8000370c:	000cc503          	lbu	a0,0(s9)
    80003710:	fffc8c93          	addi	s9,s9,-1
    80003714:	00000097          	auipc	ra,0x0
    80003718:	b90080e7          	jalr	-1136(ra) # 800032a4 <consputc>
    8000371c:	ffac98e3          	bne	s9,s10,8000370c <__printf+0x284>
    80003720:	00094503          	lbu	a0,0(s2)
    80003724:	e00514e3          	bnez	a0,8000352c <__printf+0xa4>
    80003728:	1a0c1663          	bnez	s8,800038d4 <__printf+0x44c>
    8000372c:	08813083          	ld	ra,136(sp)
    80003730:	08013403          	ld	s0,128(sp)
    80003734:	07813483          	ld	s1,120(sp)
    80003738:	07013903          	ld	s2,112(sp)
    8000373c:	06813983          	ld	s3,104(sp)
    80003740:	06013a03          	ld	s4,96(sp)
    80003744:	05813a83          	ld	s5,88(sp)
    80003748:	05013b03          	ld	s6,80(sp)
    8000374c:	04813b83          	ld	s7,72(sp)
    80003750:	04013c03          	ld	s8,64(sp)
    80003754:	03813c83          	ld	s9,56(sp)
    80003758:	03013d03          	ld	s10,48(sp)
    8000375c:	02813d83          	ld	s11,40(sp)
    80003760:	0d010113          	addi	sp,sp,208
    80003764:	00008067          	ret
    80003768:	07300713          	li	a4,115
    8000376c:	1ce78a63          	beq	a5,a4,80003940 <__printf+0x4b8>
    80003770:	07800713          	li	a4,120
    80003774:	1ee79e63          	bne	a5,a4,80003970 <__printf+0x4e8>
    80003778:	f7843783          	ld	a5,-136(s0)
    8000377c:	0007a703          	lw	a4,0(a5)
    80003780:	00878793          	addi	a5,a5,8
    80003784:	f6f43c23          	sd	a5,-136(s0)
    80003788:	28074263          	bltz	a4,80003a0c <__printf+0x584>
    8000378c:	00002d97          	auipc	s11,0x2
    80003790:	aacd8d93          	addi	s11,s11,-1364 # 80005238 <digits>
    80003794:	00f77793          	andi	a5,a4,15
    80003798:	00fd87b3          	add	a5,s11,a5
    8000379c:	0007c683          	lbu	a3,0(a5)
    800037a0:	00f00613          	li	a2,15
    800037a4:	0007079b          	sext.w	a5,a4
    800037a8:	f8d40023          	sb	a3,-128(s0)
    800037ac:	0047559b          	srliw	a1,a4,0x4
    800037b0:	0047569b          	srliw	a3,a4,0x4
    800037b4:	00000c93          	li	s9,0
    800037b8:	0ee65063          	bge	a2,a4,80003898 <__printf+0x410>
    800037bc:	00f6f693          	andi	a3,a3,15
    800037c0:	00dd86b3          	add	a3,s11,a3
    800037c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800037c8:	0087d79b          	srliw	a5,a5,0x8
    800037cc:	00100c93          	li	s9,1
    800037d0:	f8d400a3          	sb	a3,-127(s0)
    800037d4:	0cb67263          	bgeu	a2,a1,80003898 <__printf+0x410>
    800037d8:	00f7f693          	andi	a3,a5,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c583          	lbu	a1,0(a3)
    800037e4:	00f00613          	li	a2,15
    800037e8:	0047d69b          	srliw	a3,a5,0x4
    800037ec:	f8b40123          	sb	a1,-126(s0)
    800037f0:	0047d593          	srli	a1,a5,0x4
    800037f4:	28f67e63          	bgeu	a2,a5,80003a90 <__printf+0x608>
    800037f8:	00f6f693          	andi	a3,a3,15
    800037fc:	00dd86b3          	add	a3,s11,a3
    80003800:	0006c503          	lbu	a0,0(a3)
    80003804:	0087d813          	srli	a6,a5,0x8
    80003808:	0087d69b          	srliw	a3,a5,0x8
    8000380c:	f8a401a3          	sb	a0,-125(s0)
    80003810:	28b67663          	bgeu	a2,a1,80003a9c <__printf+0x614>
    80003814:	00f6f693          	andi	a3,a3,15
    80003818:	00dd86b3          	add	a3,s11,a3
    8000381c:	0006c583          	lbu	a1,0(a3)
    80003820:	00c7d513          	srli	a0,a5,0xc
    80003824:	00c7d69b          	srliw	a3,a5,0xc
    80003828:	f8b40223          	sb	a1,-124(s0)
    8000382c:	29067a63          	bgeu	a2,a6,80003ac0 <__printf+0x638>
    80003830:	00f6f693          	andi	a3,a3,15
    80003834:	00dd86b3          	add	a3,s11,a3
    80003838:	0006c583          	lbu	a1,0(a3)
    8000383c:	0107d813          	srli	a6,a5,0x10
    80003840:	0107d69b          	srliw	a3,a5,0x10
    80003844:	f8b402a3          	sb	a1,-123(s0)
    80003848:	28a67263          	bgeu	a2,a0,80003acc <__printf+0x644>
    8000384c:	00f6f693          	andi	a3,a3,15
    80003850:	00dd86b3          	add	a3,s11,a3
    80003854:	0006c683          	lbu	a3,0(a3)
    80003858:	0147d79b          	srliw	a5,a5,0x14
    8000385c:	f8d40323          	sb	a3,-122(s0)
    80003860:	21067663          	bgeu	a2,a6,80003a6c <__printf+0x5e4>
    80003864:	02079793          	slli	a5,a5,0x20
    80003868:	0207d793          	srli	a5,a5,0x20
    8000386c:	00fd8db3          	add	s11,s11,a5
    80003870:	000dc683          	lbu	a3,0(s11)
    80003874:	00800793          	li	a5,8
    80003878:	00700c93          	li	s9,7
    8000387c:	f8d403a3          	sb	a3,-121(s0)
    80003880:	00075c63          	bgez	a4,80003898 <__printf+0x410>
    80003884:	f9040713          	addi	a4,s0,-112
    80003888:	00f70733          	add	a4,a4,a5
    8000388c:	02d00693          	li	a3,45
    80003890:	fed70823          	sb	a3,-16(a4)
    80003894:	00078c93          	mv	s9,a5
    80003898:	f8040793          	addi	a5,s0,-128
    8000389c:	01978cb3          	add	s9,a5,s9
    800038a0:	f7f40d13          	addi	s10,s0,-129
    800038a4:	000cc503          	lbu	a0,0(s9)
    800038a8:	fffc8c93          	addi	s9,s9,-1
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	9f8080e7          	jalr	-1544(ra) # 800032a4 <consputc>
    800038b4:	ff9d18e3          	bne	s10,s9,800038a4 <__printf+0x41c>
    800038b8:	0100006f          	j	800038c8 <__printf+0x440>
    800038bc:	00000097          	auipc	ra,0x0
    800038c0:	9e8080e7          	jalr	-1560(ra) # 800032a4 <consputc>
    800038c4:	000c8493          	mv	s1,s9
    800038c8:	00094503          	lbu	a0,0(s2)
    800038cc:	c60510e3          	bnez	a0,8000352c <__printf+0xa4>
    800038d0:	e40c0ee3          	beqz	s8,8000372c <__printf+0x2a4>
    800038d4:	00003517          	auipc	a0,0x3
    800038d8:	56c50513          	addi	a0,a0,1388 # 80006e40 <pr>
    800038dc:	00001097          	auipc	ra,0x1
    800038e0:	94c080e7          	jalr	-1716(ra) # 80004228 <release>
    800038e4:	e49ff06f          	j	8000372c <__printf+0x2a4>
    800038e8:	f7843783          	ld	a5,-136(s0)
    800038ec:	03000513          	li	a0,48
    800038f0:	01000d13          	li	s10,16
    800038f4:	00878713          	addi	a4,a5,8
    800038f8:	0007bc83          	ld	s9,0(a5)
    800038fc:	f6e43c23          	sd	a4,-136(s0)
    80003900:	00000097          	auipc	ra,0x0
    80003904:	9a4080e7          	jalr	-1628(ra) # 800032a4 <consputc>
    80003908:	07800513          	li	a0,120
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	998080e7          	jalr	-1640(ra) # 800032a4 <consputc>
    80003914:	00002d97          	auipc	s11,0x2
    80003918:	924d8d93          	addi	s11,s11,-1756 # 80005238 <digits>
    8000391c:	03ccd793          	srli	a5,s9,0x3c
    80003920:	00fd87b3          	add	a5,s11,a5
    80003924:	0007c503          	lbu	a0,0(a5)
    80003928:	fffd0d1b          	addiw	s10,s10,-1
    8000392c:	004c9c93          	slli	s9,s9,0x4
    80003930:	00000097          	auipc	ra,0x0
    80003934:	974080e7          	jalr	-1676(ra) # 800032a4 <consputc>
    80003938:	fe0d12e3          	bnez	s10,8000391c <__printf+0x494>
    8000393c:	f8dff06f          	j	800038c8 <__printf+0x440>
    80003940:	f7843783          	ld	a5,-136(s0)
    80003944:	0007bc83          	ld	s9,0(a5)
    80003948:	00878793          	addi	a5,a5,8
    8000394c:	f6f43c23          	sd	a5,-136(s0)
    80003950:	000c9a63          	bnez	s9,80003964 <__printf+0x4dc>
    80003954:	1080006f          	j	80003a5c <__printf+0x5d4>
    80003958:	001c8c93          	addi	s9,s9,1
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	948080e7          	jalr	-1720(ra) # 800032a4 <consputc>
    80003964:	000cc503          	lbu	a0,0(s9)
    80003968:	fe0518e3          	bnez	a0,80003958 <__printf+0x4d0>
    8000396c:	f5dff06f          	j	800038c8 <__printf+0x440>
    80003970:	02500513          	li	a0,37
    80003974:	00000097          	auipc	ra,0x0
    80003978:	930080e7          	jalr	-1744(ra) # 800032a4 <consputc>
    8000397c:	000c8513          	mv	a0,s9
    80003980:	00000097          	auipc	ra,0x0
    80003984:	924080e7          	jalr	-1756(ra) # 800032a4 <consputc>
    80003988:	f41ff06f          	j	800038c8 <__printf+0x440>
    8000398c:	02500513          	li	a0,37
    80003990:	00000097          	auipc	ra,0x0
    80003994:	914080e7          	jalr	-1772(ra) # 800032a4 <consputc>
    80003998:	f31ff06f          	j	800038c8 <__printf+0x440>
    8000399c:	00030513          	mv	a0,t1
    800039a0:	00000097          	auipc	ra,0x0
    800039a4:	7bc080e7          	jalr	1980(ra) # 8000415c <acquire>
    800039a8:	b4dff06f          	j	800034f4 <__printf+0x6c>
    800039ac:	40c0053b          	negw	a0,a2
    800039b0:	00a00713          	li	a4,10
    800039b4:	02e576bb          	remuw	a3,a0,a4
    800039b8:	00002d97          	auipc	s11,0x2
    800039bc:	880d8d93          	addi	s11,s11,-1920 # 80005238 <digits>
    800039c0:	ff700593          	li	a1,-9
    800039c4:	02069693          	slli	a3,a3,0x20
    800039c8:	0206d693          	srli	a3,a3,0x20
    800039cc:	00dd86b3          	add	a3,s11,a3
    800039d0:	0006c683          	lbu	a3,0(a3)
    800039d4:	02e557bb          	divuw	a5,a0,a4
    800039d8:	f8d40023          	sb	a3,-128(s0)
    800039dc:	10b65e63          	bge	a2,a1,80003af8 <__printf+0x670>
    800039e0:	06300593          	li	a1,99
    800039e4:	02e7f6bb          	remuw	a3,a5,a4
    800039e8:	02069693          	slli	a3,a3,0x20
    800039ec:	0206d693          	srli	a3,a3,0x20
    800039f0:	00dd86b3          	add	a3,s11,a3
    800039f4:	0006c683          	lbu	a3,0(a3)
    800039f8:	02e7d73b          	divuw	a4,a5,a4
    800039fc:	00200793          	li	a5,2
    80003a00:	f8d400a3          	sb	a3,-127(s0)
    80003a04:	bca5ece3          	bltu	a1,a0,800035dc <__printf+0x154>
    80003a08:	ce5ff06f          	j	800036ec <__printf+0x264>
    80003a0c:	40e007bb          	negw	a5,a4
    80003a10:	00002d97          	auipc	s11,0x2
    80003a14:	828d8d93          	addi	s11,s11,-2008 # 80005238 <digits>
    80003a18:	00f7f693          	andi	a3,a5,15
    80003a1c:	00dd86b3          	add	a3,s11,a3
    80003a20:	0006c583          	lbu	a1,0(a3)
    80003a24:	ff100613          	li	a2,-15
    80003a28:	0047d69b          	srliw	a3,a5,0x4
    80003a2c:	f8b40023          	sb	a1,-128(s0)
    80003a30:	0047d59b          	srliw	a1,a5,0x4
    80003a34:	0ac75e63          	bge	a4,a2,80003af0 <__printf+0x668>
    80003a38:	00f6f693          	andi	a3,a3,15
    80003a3c:	00dd86b3          	add	a3,s11,a3
    80003a40:	0006c603          	lbu	a2,0(a3)
    80003a44:	00f00693          	li	a3,15
    80003a48:	0087d79b          	srliw	a5,a5,0x8
    80003a4c:	f8c400a3          	sb	a2,-127(s0)
    80003a50:	d8b6e4e3          	bltu	a3,a1,800037d8 <__printf+0x350>
    80003a54:	00200793          	li	a5,2
    80003a58:	e2dff06f          	j	80003884 <__printf+0x3fc>
    80003a5c:	00001c97          	auipc	s9,0x1
    80003a60:	7bcc8c93          	addi	s9,s9,1980 # 80005218 <_ZZ12printIntegermE6digits+0x148>
    80003a64:	02800513          	li	a0,40
    80003a68:	ef1ff06f          	j	80003958 <__printf+0x4d0>
    80003a6c:	00700793          	li	a5,7
    80003a70:	00600c93          	li	s9,6
    80003a74:	e0dff06f          	j	80003880 <__printf+0x3f8>
    80003a78:	00700793          	li	a5,7
    80003a7c:	00600c93          	li	s9,6
    80003a80:	c69ff06f          	j	800036e8 <__printf+0x260>
    80003a84:	00300793          	li	a5,3
    80003a88:	00200c93          	li	s9,2
    80003a8c:	c5dff06f          	j	800036e8 <__printf+0x260>
    80003a90:	00300793          	li	a5,3
    80003a94:	00200c93          	li	s9,2
    80003a98:	de9ff06f          	j	80003880 <__printf+0x3f8>
    80003a9c:	00400793          	li	a5,4
    80003aa0:	00300c93          	li	s9,3
    80003aa4:	dddff06f          	j	80003880 <__printf+0x3f8>
    80003aa8:	00400793          	li	a5,4
    80003aac:	00300c93          	li	s9,3
    80003ab0:	c39ff06f          	j	800036e8 <__printf+0x260>
    80003ab4:	00500793          	li	a5,5
    80003ab8:	00400c93          	li	s9,4
    80003abc:	c2dff06f          	j	800036e8 <__printf+0x260>
    80003ac0:	00500793          	li	a5,5
    80003ac4:	00400c93          	li	s9,4
    80003ac8:	db9ff06f          	j	80003880 <__printf+0x3f8>
    80003acc:	00600793          	li	a5,6
    80003ad0:	00500c93          	li	s9,5
    80003ad4:	dadff06f          	j	80003880 <__printf+0x3f8>
    80003ad8:	00600793          	li	a5,6
    80003adc:	00500c93          	li	s9,5
    80003ae0:	c09ff06f          	j	800036e8 <__printf+0x260>
    80003ae4:	00800793          	li	a5,8
    80003ae8:	00700c93          	li	s9,7
    80003aec:	bfdff06f          	j	800036e8 <__printf+0x260>
    80003af0:	00100793          	li	a5,1
    80003af4:	d91ff06f          	j	80003884 <__printf+0x3fc>
    80003af8:	00100793          	li	a5,1
    80003afc:	bf1ff06f          	j	800036ec <__printf+0x264>
    80003b00:	00900793          	li	a5,9
    80003b04:	00800c93          	li	s9,8
    80003b08:	be1ff06f          	j	800036e8 <__printf+0x260>
    80003b0c:	00001517          	auipc	a0,0x1
    80003b10:	71450513          	addi	a0,a0,1812 # 80005220 <_ZZ12printIntegermE6digits+0x150>
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	918080e7          	jalr	-1768(ra) # 8000342c <panic>

0000000080003b1c <printfinit>:
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00813823          	sd	s0,16(sp)
    80003b24:	00913423          	sd	s1,8(sp)
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00003497          	auipc	s1,0x3
    80003b34:	31048493          	addi	s1,s1,784 # 80006e40 <pr>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00001597          	auipc	a1,0x1
    80003b40:	6f458593          	addi	a1,a1,1780 # 80005230 <_ZZ12printIntegermE6digits+0x160>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	5f4080e7          	jalr	1524(ra) # 80004138 <initlock>
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	0004ac23          	sw	zero,24(s1)
    80003b58:	00813483          	ld	s1,8(sp)
    80003b5c:	02010113          	addi	sp,sp,32
    80003b60:	00008067          	ret

0000000080003b64 <uartinit>:
    80003b64:	ff010113          	addi	sp,sp,-16
    80003b68:	00813423          	sd	s0,8(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	100007b7          	lui	a5,0x10000
    80003b74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003b78:	f8000713          	li	a4,-128
    80003b7c:	00e781a3          	sb	a4,3(a5)
    80003b80:	00300713          	li	a4,3
    80003b84:	00e78023          	sb	a4,0(a5)
    80003b88:	000780a3          	sb	zero,1(a5)
    80003b8c:	00e781a3          	sb	a4,3(a5)
    80003b90:	00700693          	li	a3,7
    80003b94:	00d78123          	sb	a3,2(a5)
    80003b98:	00e780a3          	sb	a4,1(a5)
    80003b9c:	00813403          	ld	s0,8(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <uartputc>:
    80003ba8:	00002797          	auipc	a5,0x2
    80003bac:	0207a783          	lw	a5,32(a5) # 80005bc8 <panicked>
    80003bb0:	00078463          	beqz	a5,80003bb8 <uartputc+0x10>
    80003bb4:	0000006f          	j	80003bb4 <uartputc+0xc>
    80003bb8:	fd010113          	addi	sp,sp,-48
    80003bbc:	02813023          	sd	s0,32(sp)
    80003bc0:	00913c23          	sd	s1,24(sp)
    80003bc4:	01213823          	sd	s2,16(sp)
    80003bc8:	01313423          	sd	s3,8(sp)
    80003bcc:	02113423          	sd	ra,40(sp)
    80003bd0:	03010413          	addi	s0,sp,48
    80003bd4:	00002917          	auipc	s2,0x2
    80003bd8:	ffc90913          	addi	s2,s2,-4 # 80005bd0 <uart_tx_r>
    80003bdc:	00093783          	ld	a5,0(s2)
    80003be0:	00002497          	auipc	s1,0x2
    80003be4:	ff848493          	addi	s1,s1,-8 # 80005bd8 <uart_tx_w>
    80003be8:	0004b703          	ld	a4,0(s1)
    80003bec:	02078693          	addi	a3,a5,32
    80003bf0:	00050993          	mv	s3,a0
    80003bf4:	02e69c63          	bne	a3,a4,80003c2c <uartputc+0x84>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	834080e7          	jalr	-1996(ra) # 8000442c <push_on>
    80003c00:	00093783          	ld	a5,0(s2)
    80003c04:	0004b703          	ld	a4,0(s1)
    80003c08:	02078793          	addi	a5,a5,32
    80003c0c:	00e79463          	bne	a5,a4,80003c14 <uartputc+0x6c>
    80003c10:	0000006f          	j	80003c10 <uartputc+0x68>
    80003c14:	00001097          	auipc	ra,0x1
    80003c18:	88c080e7          	jalr	-1908(ra) # 800044a0 <pop_on>
    80003c1c:	00093783          	ld	a5,0(s2)
    80003c20:	0004b703          	ld	a4,0(s1)
    80003c24:	02078693          	addi	a3,a5,32
    80003c28:	fce688e3          	beq	a3,a4,80003bf8 <uartputc+0x50>
    80003c2c:	01f77693          	andi	a3,a4,31
    80003c30:	00003597          	auipc	a1,0x3
    80003c34:	23058593          	addi	a1,a1,560 # 80006e60 <uart_tx_buf>
    80003c38:	00d586b3          	add	a3,a1,a3
    80003c3c:	00170713          	addi	a4,a4,1
    80003c40:	01368023          	sb	s3,0(a3)
    80003c44:	00e4b023          	sd	a4,0(s1)
    80003c48:	10000637          	lui	a2,0x10000
    80003c4c:	02f71063          	bne	a4,a5,80003c6c <uartputc+0xc4>
    80003c50:	0340006f          	j	80003c84 <uartputc+0xdc>
    80003c54:	00074703          	lbu	a4,0(a4)
    80003c58:	00f93023          	sd	a5,0(s2)
    80003c5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c60:	00093783          	ld	a5,0(s2)
    80003c64:	0004b703          	ld	a4,0(s1)
    80003c68:	00f70e63          	beq	a4,a5,80003c84 <uartputc+0xdc>
    80003c6c:	00564683          	lbu	a3,5(a2)
    80003c70:	01f7f713          	andi	a4,a5,31
    80003c74:	00e58733          	add	a4,a1,a4
    80003c78:	0206f693          	andi	a3,a3,32
    80003c7c:	00178793          	addi	a5,a5,1
    80003c80:	fc069ae3          	bnez	a3,80003c54 <uartputc+0xac>
    80003c84:	02813083          	ld	ra,40(sp)
    80003c88:	02013403          	ld	s0,32(sp)
    80003c8c:	01813483          	ld	s1,24(sp)
    80003c90:	01013903          	ld	s2,16(sp)
    80003c94:	00813983          	ld	s3,8(sp)
    80003c98:	03010113          	addi	sp,sp,48
    80003c9c:	00008067          	ret

0000000080003ca0 <uartputc_sync>:
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00813423          	sd	s0,8(sp)
    80003ca8:	01010413          	addi	s0,sp,16
    80003cac:	00002717          	auipc	a4,0x2
    80003cb0:	f1c72703          	lw	a4,-228(a4) # 80005bc8 <panicked>
    80003cb4:	02071663          	bnez	a4,80003ce0 <uartputc_sync+0x40>
    80003cb8:	00050793          	mv	a5,a0
    80003cbc:	100006b7          	lui	a3,0x10000
    80003cc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003cc4:	02077713          	andi	a4,a4,32
    80003cc8:	fe070ce3          	beqz	a4,80003cc0 <uartputc_sync+0x20>
    80003ccc:	0ff7f793          	andi	a5,a5,255
    80003cd0:	00f68023          	sb	a5,0(a3)
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret
    80003ce0:	0000006f          	j	80003ce0 <uartputc_sync+0x40>

0000000080003ce4 <uartstart>:
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00813423          	sd	s0,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	00002617          	auipc	a2,0x2
    80003cf4:	ee060613          	addi	a2,a2,-288 # 80005bd0 <uart_tx_r>
    80003cf8:	00002517          	auipc	a0,0x2
    80003cfc:	ee050513          	addi	a0,a0,-288 # 80005bd8 <uart_tx_w>
    80003d00:	00063783          	ld	a5,0(a2)
    80003d04:	00053703          	ld	a4,0(a0)
    80003d08:	04f70263          	beq	a4,a5,80003d4c <uartstart+0x68>
    80003d0c:	100005b7          	lui	a1,0x10000
    80003d10:	00003817          	auipc	a6,0x3
    80003d14:	15080813          	addi	a6,a6,336 # 80006e60 <uart_tx_buf>
    80003d18:	01c0006f          	j	80003d34 <uartstart+0x50>
    80003d1c:	0006c703          	lbu	a4,0(a3)
    80003d20:	00f63023          	sd	a5,0(a2)
    80003d24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d28:	00063783          	ld	a5,0(a2)
    80003d2c:	00053703          	ld	a4,0(a0)
    80003d30:	00f70e63          	beq	a4,a5,80003d4c <uartstart+0x68>
    80003d34:	01f7f713          	andi	a4,a5,31
    80003d38:	00e806b3          	add	a3,a6,a4
    80003d3c:	0055c703          	lbu	a4,5(a1)
    80003d40:	00178793          	addi	a5,a5,1
    80003d44:	02077713          	andi	a4,a4,32
    80003d48:	fc071ae3          	bnez	a4,80003d1c <uartstart+0x38>
    80003d4c:	00813403          	ld	s0,8(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret

0000000080003d58 <uartgetc>:
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00813423          	sd	s0,8(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	10000737          	lui	a4,0x10000
    80003d68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d6c:	0017f793          	andi	a5,a5,1
    80003d70:	00078c63          	beqz	a5,80003d88 <uartgetc+0x30>
    80003d74:	00074503          	lbu	a0,0(a4)
    80003d78:	0ff57513          	andi	a0,a0,255
    80003d7c:	00813403          	ld	s0,8(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret
    80003d88:	fff00513          	li	a0,-1
    80003d8c:	ff1ff06f          	j	80003d7c <uartgetc+0x24>

0000000080003d90 <uartintr>:
    80003d90:	100007b7          	lui	a5,0x10000
    80003d94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d98:	0017f793          	andi	a5,a5,1
    80003d9c:	0a078463          	beqz	a5,80003e44 <uartintr+0xb4>
    80003da0:	fe010113          	addi	sp,sp,-32
    80003da4:	00813823          	sd	s0,16(sp)
    80003da8:	00913423          	sd	s1,8(sp)
    80003dac:	00113c23          	sd	ra,24(sp)
    80003db0:	02010413          	addi	s0,sp,32
    80003db4:	100004b7          	lui	s1,0x10000
    80003db8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003dbc:	0ff57513          	andi	a0,a0,255
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	534080e7          	jalr	1332(ra) # 800032f4 <consoleintr>
    80003dc8:	0054c783          	lbu	a5,5(s1)
    80003dcc:	0017f793          	andi	a5,a5,1
    80003dd0:	fe0794e3          	bnez	a5,80003db8 <uartintr+0x28>
    80003dd4:	00002617          	auipc	a2,0x2
    80003dd8:	dfc60613          	addi	a2,a2,-516 # 80005bd0 <uart_tx_r>
    80003ddc:	00002517          	auipc	a0,0x2
    80003de0:	dfc50513          	addi	a0,a0,-516 # 80005bd8 <uart_tx_w>
    80003de4:	00063783          	ld	a5,0(a2)
    80003de8:	00053703          	ld	a4,0(a0)
    80003dec:	04f70263          	beq	a4,a5,80003e30 <uartintr+0xa0>
    80003df0:	100005b7          	lui	a1,0x10000
    80003df4:	00003817          	auipc	a6,0x3
    80003df8:	06c80813          	addi	a6,a6,108 # 80006e60 <uart_tx_buf>
    80003dfc:	01c0006f          	j	80003e18 <uartintr+0x88>
    80003e00:	0006c703          	lbu	a4,0(a3)
    80003e04:	00f63023          	sd	a5,0(a2)
    80003e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e0c:	00063783          	ld	a5,0(a2)
    80003e10:	00053703          	ld	a4,0(a0)
    80003e14:	00f70e63          	beq	a4,a5,80003e30 <uartintr+0xa0>
    80003e18:	01f7f713          	andi	a4,a5,31
    80003e1c:	00e806b3          	add	a3,a6,a4
    80003e20:	0055c703          	lbu	a4,5(a1)
    80003e24:	00178793          	addi	a5,a5,1
    80003e28:	02077713          	andi	a4,a4,32
    80003e2c:	fc071ae3          	bnez	a4,80003e00 <uartintr+0x70>
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	01013403          	ld	s0,16(sp)
    80003e38:	00813483          	ld	s1,8(sp)
    80003e3c:	02010113          	addi	sp,sp,32
    80003e40:	00008067          	ret
    80003e44:	00002617          	auipc	a2,0x2
    80003e48:	d8c60613          	addi	a2,a2,-628 # 80005bd0 <uart_tx_r>
    80003e4c:	00002517          	auipc	a0,0x2
    80003e50:	d8c50513          	addi	a0,a0,-628 # 80005bd8 <uart_tx_w>
    80003e54:	00063783          	ld	a5,0(a2)
    80003e58:	00053703          	ld	a4,0(a0)
    80003e5c:	04f70263          	beq	a4,a5,80003ea0 <uartintr+0x110>
    80003e60:	100005b7          	lui	a1,0x10000
    80003e64:	00003817          	auipc	a6,0x3
    80003e68:	ffc80813          	addi	a6,a6,-4 # 80006e60 <uart_tx_buf>
    80003e6c:	01c0006f          	j	80003e88 <uartintr+0xf8>
    80003e70:	0006c703          	lbu	a4,0(a3)
    80003e74:	00f63023          	sd	a5,0(a2)
    80003e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e7c:	00063783          	ld	a5,0(a2)
    80003e80:	00053703          	ld	a4,0(a0)
    80003e84:	02f70063          	beq	a4,a5,80003ea4 <uartintr+0x114>
    80003e88:	01f7f713          	andi	a4,a5,31
    80003e8c:	00e806b3          	add	a3,a6,a4
    80003e90:	0055c703          	lbu	a4,5(a1)
    80003e94:	00178793          	addi	a5,a5,1
    80003e98:	02077713          	andi	a4,a4,32
    80003e9c:	fc071ae3          	bnez	a4,80003e70 <uartintr+0xe0>
    80003ea0:	00008067          	ret
    80003ea4:	00008067          	ret

0000000080003ea8 <kinit>:
    80003ea8:	fc010113          	addi	sp,sp,-64
    80003eac:	02913423          	sd	s1,40(sp)
    80003eb0:	fffff7b7          	lui	a5,0xfffff
    80003eb4:	00004497          	auipc	s1,0x4
    80003eb8:	fcb48493          	addi	s1,s1,-53 # 80007e7f <end+0xfff>
    80003ebc:	02813823          	sd	s0,48(sp)
    80003ec0:	01313c23          	sd	s3,24(sp)
    80003ec4:	00f4f4b3          	and	s1,s1,a5
    80003ec8:	02113c23          	sd	ra,56(sp)
    80003ecc:	03213023          	sd	s2,32(sp)
    80003ed0:	01413823          	sd	s4,16(sp)
    80003ed4:	01513423          	sd	s5,8(sp)
    80003ed8:	04010413          	addi	s0,sp,64
    80003edc:	000017b7          	lui	a5,0x1
    80003ee0:	01100993          	li	s3,17
    80003ee4:	00f487b3          	add	a5,s1,a5
    80003ee8:	01b99993          	slli	s3,s3,0x1b
    80003eec:	06f9e063          	bltu	s3,a5,80003f4c <kinit+0xa4>
    80003ef0:	00003a97          	auipc	s5,0x3
    80003ef4:	f90a8a93          	addi	s5,s5,-112 # 80006e80 <end>
    80003ef8:	0754ec63          	bltu	s1,s5,80003f70 <kinit+0xc8>
    80003efc:	0734fa63          	bgeu	s1,s3,80003f70 <kinit+0xc8>
    80003f00:	00088a37          	lui	s4,0x88
    80003f04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f08:	00002917          	auipc	s2,0x2
    80003f0c:	cd890913          	addi	s2,s2,-808 # 80005be0 <kmem>
    80003f10:	00ca1a13          	slli	s4,s4,0xc
    80003f14:	0140006f          	j	80003f28 <kinit+0x80>
    80003f18:	000017b7          	lui	a5,0x1
    80003f1c:	00f484b3          	add	s1,s1,a5
    80003f20:	0554e863          	bltu	s1,s5,80003f70 <kinit+0xc8>
    80003f24:	0534f663          	bgeu	s1,s3,80003f70 <kinit+0xc8>
    80003f28:	00001637          	lui	a2,0x1
    80003f2c:	00100593          	li	a1,1
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	5e4080e7          	jalr	1508(ra) # 80004518 <__memset>
    80003f3c:	00093783          	ld	a5,0(s2)
    80003f40:	00f4b023          	sd	a5,0(s1)
    80003f44:	00993023          	sd	s1,0(s2)
    80003f48:	fd4498e3          	bne	s1,s4,80003f18 <kinit+0x70>
    80003f4c:	03813083          	ld	ra,56(sp)
    80003f50:	03013403          	ld	s0,48(sp)
    80003f54:	02813483          	ld	s1,40(sp)
    80003f58:	02013903          	ld	s2,32(sp)
    80003f5c:	01813983          	ld	s3,24(sp)
    80003f60:	01013a03          	ld	s4,16(sp)
    80003f64:	00813a83          	ld	s5,8(sp)
    80003f68:	04010113          	addi	sp,sp,64
    80003f6c:	00008067          	ret
    80003f70:	00001517          	auipc	a0,0x1
    80003f74:	2e050513          	addi	a0,a0,736 # 80005250 <digits+0x18>
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	4b4080e7          	jalr	1204(ra) # 8000342c <panic>

0000000080003f80 <freerange>:
    80003f80:	fc010113          	addi	sp,sp,-64
    80003f84:	000017b7          	lui	a5,0x1
    80003f88:	02913423          	sd	s1,40(sp)
    80003f8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f90:	009504b3          	add	s1,a0,s1
    80003f94:	fffff537          	lui	a0,0xfffff
    80003f98:	02813823          	sd	s0,48(sp)
    80003f9c:	02113c23          	sd	ra,56(sp)
    80003fa0:	03213023          	sd	s2,32(sp)
    80003fa4:	01313c23          	sd	s3,24(sp)
    80003fa8:	01413823          	sd	s4,16(sp)
    80003fac:	01513423          	sd	s5,8(sp)
    80003fb0:	01613023          	sd	s6,0(sp)
    80003fb4:	04010413          	addi	s0,sp,64
    80003fb8:	00a4f4b3          	and	s1,s1,a0
    80003fbc:	00f487b3          	add	a5,s1,a5
    80003fc0:	06f5e463          	bltu	a1,a5,80004028 <freerange+0xa8>
    80003fc4:	00003a97          	auipc	s5,0x3
    80003fc8:	ebca8a93          	addi	s5,s5,-324 # 80006e80 <end>
    80003fcc:	0954e263          	bltu	s1,s5,80004050 <freerange+0xd0>
    80003fd0:	01100993          	li	s3,17
    80003fd4:	01b99993          	slli	s3,s3,0x1b
    80003fd8:	0734fc63          	bgeu	s1,s3,80004050 <freerange+0xd0>
    80003fdc:	00058a13          	mv	s4,a1
    80003fe0:	00002917          	auipc	s2,0x2
    80003fe4:	c0090913          	addi	s2,s2,-1024 # 80005be0 <kmem>
    80003fe8:	00002b37          	lui	s6,0x2
    80003fec:	0140006f          	j	80004000 <freerange+0x80>
    80003ff0:	000017b7          	lui	a5,0x1
    80003ff4:	00f484b3          	add	s1,s1,a5
    80003ff8:	0554ec63          	bltu	s1,s5,80004050 <freerange+0xd0>
    80003ffc:	0534fa63          	bgeu	s1,s3,80004050 <freerange+0xd0>
    80004000:	00001637          	lui	a2,0x1
    80004004:	00100593          	li	a1,1
    80004008:	00048513          	mv	a0,s1
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	50c080e7          	jalr	1292(ra) # 80004518 <__memset>
    80004014:	00093703          	ld	a4,0(s2)
    80004018:	016487b3          	add	a5,s1,s6
    8000401c:	00e4b023          	sd	a4,0(s1)
    80004020:	00993023          	sd	s1,0(s2)
    80004024:	fcfa76e3          	bgeu	s4,a5,80003ff0 <freerange+0x70>
    80004028:	03813083          	ld	ra,56(sp)
    8000402c:	03013403          	ld	s0,48(sp)
    80004030:	02813483          	ld	s1,40(sp)
    80004034:	02013903          	ld	s2,32(sp)
    80004038:	01813983          	ld	s3,24(sp)
    8000403c:	01013a03          	ld	s4,16(sp)
    80004040:	00813a83          	ld	s5,8(sp)
    80004044:	00013b03          	ld	s6,0(sp)
    80004048:	04010113          	addi	sp,sp,64
    8000404c:	00008067          	ret
    80004050:	00001517          	auipc	a0,0x1
    80004054:	20050513          	addi	a0,a0,512 # 80005250 <digits+0x18>
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	3d4080e7          	jalr	980(ra) # 8000342c <panic>

0000000080004060 <kfree>:
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00113c23          	sd	ra,24(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	03451793          	slli	a5,a0,0x34
    80004078:	04079c63          	bnez	a5,800040d0 <kfree+0x70>
    8000407c:	00003797          	auipc	a5,0x3
    80004080:	e0478793          	addi	a5,a5,-508 # 80006e80 <end>
    80004084:	00050493          	mv	s1,a0
    80004088:	04f56463          	bltu	a0,a5,800040d0 <kfree+0x70>
    8000408c:	01100793          	li	a5,17
    80004090:	01b79793          	slli	a5,a5,0x1b
    80004094:	02f57e63          	bgeu	a0,a5,800040d0 <kfree+0x70>
    80004098:	00001637          	lui	a2,0x1
    8000409c:	00100593          	li	a1,1
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	478080e7          	jalr	1144(ra) # 80004518 <__memset>
    800040a8:	00002797          	auipc	a5,0x2
    800040ac:	b3878793          	addi	a5,a5,-1224 # 80005be0 <kmem>
    800040b0:	0007b703          	ld	a4,0(a5)
    800040b4:	01813083          	ld	ra,24(sp)
    800040b8:	01013403          	ld	s0,16(sp)
    800040bc:	00e4b023          	sd	a4,0(s1)
    800040c0:	0097b023          	sd	s1,0(a5)
    800040c4:	00813483          	ld	s1,8(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret
    800040d0:	00001517          	auipc	a0,0x1
    800040d4:	18050513          	addi	a0,a0,384 # 80005250 <digits+0x18>
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	354080e7          	jalr	852(ra) # 8000342c <panic>

00000000800040e0 <kalloc>:
    800040e0:	fe010113          	addi	sp,sp,-32
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	02010413          	addi	s0,sp,32
    800040f4:	00002797          	auipc	a5,0x2
    800040f8:	aec78793          	addi	a5,a5,-1300 # 80005be0 <kmem>
    800040fc:	0007b483          	ld	s1,0(a5)
    80004100:	02048063          	beqz	s1,80004120 <kalloc+0x40>
    80004104:	0004b703          	ld	a4,0(s1)
    80004108:	00001637          	lui	a2,0x1
    8000410c:	00500593          	li	a1,5
    80004110:	00048513          	mv	a0,s1
    80004114:	00e7b023          	sd	a4,0(a5)
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	400080e7          	jalr	1024(ra) # 80004518 <__memset>
    80004120:	01813083          	ld	ra,24(sp)
    80004124:	01013403          	ld	s0,16(sp)
    80004128:	00048513          	mv	a0,s1
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret

0000000080004138 <initlock>:
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00813423          	sd	s0,8(sp)
    80004140:	01010413          	addi	s0,sp,16
    80004144:	00813403          	ld	s0,8(sp)
    80004148:	00b53423          	sd	a1,8(a0)
    8000414c:	00052023          	sw	zero,0(a0)
    80004150:	00053823          	sd	zero,16(a0)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <acquire>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	01213023          	sd	s2,0(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	00050493          	mv	s1,a0
    80004178:	10002973          	csrr	s2,sstatus
    8000417c:	100027f3          	csrr	a5,sstatus
    80004180:	ffd7f793          	andi	a5,a5,-3
    80004184:	10079073          	csrw	sstatus,a5
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	8ec080e7          	jalr	-1812(ra) # 80002a74 <mycpu>
    80004190:	07852783          	lw	a5,120(a0)
    80004194:	06078e63          	beqz	a5,80004210 <acquire+0xb4>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	8dc080e7          	jalr	-1828(ra) # 80002a74 <mycpu>
    800041a0:	07852783          	lw	a5,120(a0)
    800041a4:	0004a703          	lw	a4,0(s1)
    800041a8:	0017879b          	addiw	a5,a5,1
    800041ac:	06f52c23          	sw	a5,120(a0)
    800041b0:	04071063          	bnez	a4,800041f0 <acquire+0x94>
    800041b4:	00100713          	li	a4,1
    800041b8:	00070793          	mv	a5,a4
    800041bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800041c0:	0007879b          	sext.w	a5,a5
    800041c4:	fe079ae3          	bnez	a5,800041b8 <acquire+0x5c>
    800041c8:	0ff0000f          	fence
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	8a8080e7          	jalr	-1880(ra) # 80002a74 <mycpu>
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	00a4b823          	sd	a0,16(s1)
    800041e0:	00013903          	ld	s2,0(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret
    800041f0:	0104b903          	ld	s2,16(s1)
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	880080e7          	jalr	-1920(ra) # 80002a74 <mycpu>
    800041fc:	faa91ce3          	bne	s2,a0,800041b4 <acquire+0x58>
    80004200:	00001517          	auipc	a0,0x1
    80004204:	05850513          	addi	a0,a0,88 # 80005258 <digits+0x20>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	224080e7          	jalr	548(ra) # 8000342c <panic>
    80004210:	00195913          	srli	s2,s2,0x1
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	860080e7          	jalr	-1952(ra) # 80002a74 <mycpu>
    8000421c:	00197913          	andi	s2,s2,1
    80004220:	07252e23          	sw	s2,124(a0)
    80004224:	f75ff06f          	j	80004198 <acquire+0x3c>

0000000080004228 <release>:
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00113c23          	sd	ra,24(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	01213023          	sd	s2,0(sp)
    8000423c:	02010413          	addi	s0,sp,32
    80004240:	00052783          	lw	a5,0(a0)
    80004244:	00079a63          	bnez	a5,80004258 <release+0x30>
    80004248:	00001517          	auipc	a0,0x1
    8000424c:	01850513          	addi	a0,a0,24 # 80005260 <digits+0x28>
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	1dc080e7          	jalr	476(ra) # 8000342c <panic>
    80004258:	01053903          	ld	s2,16(a0)
    8000425c:	00050493          	mv	s1,a0
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	814080e7          	jalr	-2028(ra) # 80002a74 <mycpu>
    80004268:	fea910e3          	bne	s2,a0,80004248 <release+0x20>
    8000426c:	0004b823          	sd	zero,16(s1)
    80004270:	0ff0000f          	fence
    80004274:	0f50000f          	fence	iorw,ow
    80004278:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	7f8080e7          	jalr	2040(ra) # 80002a74 <mycpu>
    80004284:	100027f3          	csrr	a5,sstatus
    80004288:	0027f793          	andi	a5,a5,2
    8000428c:	04079a63          	bnez	a5,800042e0 <release+0xb8>
    80004290:	07852783          	lw	a5,120(a0)
    80004294:	02f05e63          	blez	a5,800042d0 <release+0xa8>
    80004298:	fff7871b          	addiw	a4,a5,-1
    8000429c:	06e52c23          	sw	a4,120(a0)
    800042a0:	00071c63          	bnez	a4,800042b8 <release+0x90>
    800042a4:	07c52783          	lw	a5,124(a0)
    800042a8:	00078863          	beqz	a5,800042b8 <release+0x90>
    800042ac:	100027f3          	csrr	a5,sstatus
    800042b0:	0027e793          	ori	a5,a5,2
    800042b4:	10079073          	csrw	sstatus,a5
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	00013903          	ld	s2,0(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret
    800042d0:	00001517          	auipc	a0,0x1
    800042d4:	fb050513          	addi	a0,a0,-80 # 80005280 <digits+0x48>
    800042d8:	fffff097          	auipc	ra,0xfffff
    800042dc:	154080e7          	jalr	340(ra) # 8000342c <panic>
    800042e0:	00001517          	auipc	a0,0x1
    800042e4:	f8850513          	addi	a0,a0,-120 # 80005268 <digits+0x30>
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	144080e7          	jalr	324(ra) # 8000342c <panic>

00000000800042f0 <holding>:
    800042f0:	00052783          	lw	a5,0(a0)
    800042f4:	00079663          	bnez	a5,80004300 <holding+0x10>
    800042f8:	00000513          	li	a0,0
    800042fc:	00008067          	ret
    80004300:	fe010113          	addi	sp,sp,-32
    80004304:	00813823          	sd	s0,16(sp)
    80004308:	00913423          	sd	s1,8(sp)
    8000430c:	00113c23          	sd	ra,24(sp)
    80004310:	02010413          	addi	s0,sp,32
    80004314:	01053483          	ld	s1,16(a0)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	75c080e7          	jalr	1884(ra) # 80002a74 <mycpu>
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	40a48533          	sub	a0,s1,a0
    8000432c:	00153513          	seqz	a0,a0
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00008067          	ret

000000008000433c <push_off>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	00913423          	sd	s1,8(sp)
    8000434c:	02010413          	addi	s0,sp,32
    80004350:	100024f3          	csrr	s1,sstatus
    80004354:	100027f3          	csrr	a5,sstatus
    80004358:	ffd7f793          	andi	a5,a5,-3
    8000435c:	10079073          	csrw	sstatus,a5
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	714080e7          	jalr	1812(ra) # 80002a74 <mycpu>
    80004368:	07852783          	lw	a5,120(a0)
    8000436c:	02078663          	beqz	a5,80004398 <push_off+0x5c>
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	704080e7          	jalr	1796(ra) # 80002a74 <mycpu>
    80004378:	07852783          	lw	a5,120(a0)
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	0017879b          	addiw	a5,a5,1
    80004388:	06f52c23          	sw	a5,120(a0)
    8000438c:	00813483          	ld	s1,8(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret
    80004398:	0014d493          	srli	s1,s1,0x1
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	6d8080e7          	jalr	1752(ra) # 80002a74 <mycpu>
    800043a4:	0014f493          	andi	s1,s1,1
    800043a8:	06952e23          	sw	s1,124(a0)
    800043ac:	fc5ff06f          	j	80004370 <push_off+0x34>

00000000800043b0 <pop_off>:
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00813023          	sd	s0,0(sp)
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	01010413          	addi	s0,sp,16
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	6b4080e7          	jalr	1716(ra) # 80002a74 <mycpu>
    800043c8:	100027f3          	csrr	a5,sstatus
    800043cc:	0027f793          	andi	a5,a5,2
    800043d0:	04079663          	bnez	a5,8000441c <pop_off+0x6c>
    800043d4:	07852783          	lw	a5,120(a0)
    800043d8:	02f05a63          	blez	a5,8000440c <pop_off+0x5c>
    800043dc:	fff7871b          	addiw	a4,a5,-1
    800043e0:	06e52c23          	sw	a4,120(a0)
    800043e4:	00071c63          	bnez	a4,800043fc <pop_off+0x4c>
    800043e8:	07c52783          	lw	a5,124(a0)
    800043ec:	00078863          	beqz	a5,800043fc <pop_off+0x4c>
    800043f0:	100027f3          	csrr	a5,sstatus
    800043f4:	0027e793          	ori	a5,a5,2
    800043f8:	10079073          	csrw	sstatus,a5
    800043fc:	00813083          	ld	ra,8(sp)
    80004400:	00013403          	ld	s0,0(sp)
    80004404:	01010113          	addi	sp,sp,16
    80004408:	00008067          	ret
    8000440c:	00001517          	auipc	a0,0x1
    80004410:	e7450513          	addi	a0,a0,-396 # 80005280 <digits+0x48>
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	018080e7          	jalr	24(ra) # 8000342c <panic>
    8000441c:	00001517          	auipc	a0,0x1
    80004420:	e4c50513          	addi	a0,a0,-436 # 80005268 <digits+0x30>
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	008080e7          	jalr	8(ra) # 8000342c <panic>

000000008000442c <push_on>:
    8000442c:	fe010113          	addi	sp,sp,-32
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	02010413          	addi	s0,sp,32
    80004440:	100024f3          	csrr	s1,sstatus
    80004444:	100027f3          	csrr	a5,sstatus
    80004448:	0027e793          	ori	a5,a5,2
    8000444c:	10079073          	csrw	sstatus,a5
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	624080e7          	jalr	1572(ra) # 80002a74 <mycpu>
    80004458:	07852783          	lw	a5,120(a0)
    8000445c:	02078663          	beqz	a5,80004488 <push_on+0x5c>
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	614080e7          	jalr	1556(ra) # 80002a74 <mycpu>
    80004468:	07852783          	lw	a5,120(a0)
    8000446c:	01813083          	ld	ra,24(sp)
    80004470:	01013403          	ld	s0,16(sp)
    80004474:	0017879b          	addiw	a5,a5,1
    80004478:	06f52c23          	sw	a5,120(a0)
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret
    80004488:	0014d493          	srli	s1,s1,0x1
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	5e8080e7          	jalr	1512(ra) # 80002a74 <mycpu>
    80004494:	0014f493          	andi	s1,s1,1
    80004498:	06952e23          	sw	s1,124(a0)
    8000449c:	fc5ff06f          	j	80004460 <push_on+0x34>

00000000800044a0 <pop_on>:
    800044a0:	ff010113          	addi	sp,sp,-16
    800044a4:	00813023          	sd	s0,0(sp)
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	01010413          	addi	s0,sp,16
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	5c4080e7          	jalr	1476(ra) # 80002a74 <mycpu>
    800044b8:	100027f3          	csrr	a5,sstatus
    800044bc:	0027f793          	andi	a5,a5,2
    800044c0:	04078463          	beqz	a5,80004508 <pop_on+0x68>
    800044c4:	07852783          	lw	a5,120(a0)
    800044c8:	02f05863          	blez	a5,800044f8 <pop_on+0x58>
    800044cc:	fff7879b          	addiw	a5,a5,-1
    800044d0:	06f52c23          	sw	a5,120(a0)
    800044d4:	07853783          	ld	a5,120(a0)
    800044d8:	00079863          	bnez	a5,800044e8 <pop_on+0x48>
    800044dc:	100027f3          	csrr	a5,sstatus
    800044e0:	ffd7f793          	andi	a5,a5,-3
    800044e4:	10079073          	csrw	sstatus,a5
    800044e8:	00813083          	ld	ra,8(sp)
    800044ec:	00013403          	ld	s0,0(sp)
    800044f0:	01010113          	addi	sp,sp,16
    800044f4:	00008067          	ret
    800044f8:	00001517          	auipc	a0,0x1
    800044fc:	db050513          	addi	a0,a0,-592 # 800052a8 <digits+0x70>
    80004500:	fffff097          	auipc	ra,0xfffff
    80004504:	f2c080e7          	jalr	-212(ra) # 8000342c <panic>
    80004508:	00001517          	auipc	a0,0x1
    8000450c:	d8050513          	addi	a0,a0,-640 # 80005288 <digits+0x50>
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	f1c080e7          	jalr	-228(ra) # 8000342c <panic>

0000000080004518 <__memset>:
    80004518:	ff010113          	addi	sp,sp,-16
    8000451c:	00813423          	sd	s0,8(sp)
    80004520:	01010413          	addi	s0,sp,16
    80004524:	1a060e63          	beqz	a2,800046e0 <__memset+0x1c8>
    80004528:	40a007b3          	neg	a5,a0
    8000452c:	0077f793          	andi	a5,a5,7
    80004530:	00778693          	addi	a3,a5,7
    80004534:	00b00813          	li	a6,11
    80004538:	0ff5f593          	andi	a1,a1,255
    8000453c:	fff6071b          	addiw	a4,a2,-1
    80004540:	1b06e663          	bltu	a3,a6,800046ec <__memset+0x1d4>
    80004544:	1cd76463          	bltu	a4,a3,8000470c <__memset+0x1f4>
    80004548:	1a078e63          	beqz	a5,80004704 <__memset+0x1ec>
    8000454c:	00b50023          	sb	a1,0(a0)
    80004550:	00100713          	li	a4,1
    80004554:	1ae78463          	beq	a5,a4,800046fc <__memset+0x1e4>
    80004558:	00b500a3          	sb	a1,1(a0)
    8000455c:	00200713          	li	a4,2
    80004560:	1ae78a63          	beq	a5,a4,80004714 <__memset+0x1fc>
    80004564:	00b50123          	sb	a1,2(a0)
    80004568:	00300713          	li	a4,3
    8000456c:	18e78463          	beq	a5,a4,800046f4 <__memset+0x1dc>
    80004570:	00b501a3          	sb	a1,3(a0)
    80004574:	00400713          	li	a4,4
    80004578:	1ae78263          	beq	a5,a4,8000471c <__memset+0x204>
    8000457c:	00b50223          	sb	a1,4(a0)
    80004580:	00500713          	li	a4,5
    80004584:	1ae78063          	beq	a5,a4,80004724 <__memset+0x20c>
    80004588:	00b502a3          	sb	a1,5(a0)
    8000458c:	00700713          	li	a4,7
    80004590:	18e79e63          	bne	a5,a4,8000472c <__memset+0x214>
    80004594:	00b50323          	sb	a1,6(a0)
    80004598:	00700e93          	li	t4,7
    8000459c:	00859713          	slli	a4,a1,0x8
    800045a0:	00e5e733          	or	a4,a1,a4
    800045a4:	01059e13          	slli	t3,a1,0x10
    800045a8:	01c76e33          	or	t3,a4,t3
    800045ac:	01859313          	slli	t1,a1,0x18
    800045b0:	006e6333          	or	t1,t3,t1
    800045b4:	02059893          	slli	a7,a1,0x20
    800045b8:	40f60e3b          	subw	t3,a2,a5
    800045bc:	011368b3          	or	a7,t1,a7
    800045c0:	02859813          	slli	a6,a1,0x28
    800045c4:	0108e833          	or	a6,a7,a6
    800045c8:	03059693          	slli	a3,a1,0x30
    800045cc:	003e589b          	srliw	a7,t3,0x3
    800045d0:	00d866b3          	or	a3,a6,a3
    800045d4:	03859713          	slli	a4,a1,0x38
    800045d8:	00389813          	slli	a6,a7,0x3
    800045dc:	00f507b3          	add	a5,a0,a5
    800045e0:	00e6e733          	or	a4,a3,a4
    800045e4:	000e089b          	sext.w	a7,t3
    800045e8:	00f806b3          	add	a3,a6,a5
    800045ec:	00e7b023          	sd	a4,0(a5)
    800045f0:	00878793          	addi	a5,a5,8
    800045f4:	fed79ce3          	bne	a5,a3,800045ec <__memset+0xd4>
    800045f8:	ff8e7793          	andi	a5,t3,-8
    800045fc:	0007871b          	sext.w	a4,a5
    80004600:	01d787bb          	addw	a5,a5,t4
    80004604:	0ce88e63          	beq	a7,a4,800046e0 <__memset+0x1c8>
    80004608:	00f50733          	add	a4,a0,a5
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0017871b          	addiw	a4,a5,1
    80004614:	0cc77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	0027871b          	addiw	a4,a5,2
    80004624:	0ac77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	0037871b          	addiw	a4,a5,3
    80004634:	0ac77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0047871b          	addiw	a4,a5,4
    80004644:	08c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0057871b          	addiw	a4,a5,5
    80004654:	08c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0067871b          	addiw	a4,a5,6
    80004664:	06c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0077871b          	addiw	a4,a5,7
    80004674:	06c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	0087871b          	addiw	a4,a5,8
    80004684:	04c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0097871b          	addiw	a4,a5,9
    80004694:	04c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	00a7871b          	addiw	a4,a5,10
    800046a4:	02c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	00b7871b          	addiw	a4,a5,11
    800046b4:	02c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	00c7871b          	addiw	a4,a5,12
    800046c4:	00c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	00d7879b          	addiw	a5,a5,13
    800046d4:	00c7f663          	bgeu	a5,a2,800046e0 <__memset+0x1c8>
    800046d8:	00f507b3          	add	a5,a0,a5
    800046dc:	00b78023          	sb	a1,0(a5)
    800046e0:	00813403          	ld	s0,8(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret
    800046ec:	00b00693          	li	a3,11
    800046f0:	e55ff06f          	j	80004544 <__memset+0x2c>
    800046f4:	00300e93          	li	t4,3
    800046f8:	ea5ff06f          	j	8000459c <__memset+0x84>
    800046fc:	00100e93          	li	t4,1
    80004700:	e9dff06f          	j	8000459c <__memset+0x84>
    80004704:	00000e93          	li	t4,0
    80004708:	e95ff06f          	j	8000459c <__memset+0x84>
    8000470c:	00000793          	li	a5,0
    80004710:	ef9ff06f          	j	80004608 <__memset+0xf0>
    80004714:	00200e93          	li	t4,2
    80004718:	e85ff06f          	j	8000459c <__memset+0x84>
    8000471c:	00400e93          	li	t4,4
    80004720:	e7dff06f          	j	8000459c <__memset+0x84>
    80004724:	00500e93          	li	t4,5
    80004728:	e75ff06f          	j	8000459c <__memset+0x84>
    8000472c:	00600e93          	li	t4,6
    80004730:	e6dff06f          	j	8000459c <__memset+0x84>

0000000080004734 <__memmove>:
    80004734:	ff010113          	addi	sp,sp,-16
    80004738:	00813423          	sd	s0,8(sp)
    8000473c:	01010413          	addi	s0,sp,16
    80004740:	0e060863          	beqz	a2,80004830 <__memmove+0xfc>
    80004744:	fff6069b          	addiw	a3,a2,-1
    80004748:	0006881b          	sext.w	a6,a3
    8000474c:	0ea5e863          	bltu	a1,a0,8000483c <__memmove+0x108>
    80004750:	00758713          	addi	a4,a1,7
    80004754:	00a5e7b3          	or	a5,a1,a0
    80004758:	40a70733          	sub	a4,a4,a0
    8000475c:	0077f793          	andi	a5,a5,7
    80004760:	00f73713          	sltiu	a4,a4,15
    80004764:	00174713          	xori	a4,a4,1
    80004768:	0017b793          	seqz	a5,a5
    8000476c:	00e7f7b3          	and	a5,a5,a4
    80004770:	10078863          	beqz	a5,80004880 <__memmove+0x14c>
    80004774:	00900793          	li	a5,9
    80004778:	1107f463          	bgeu	a5,a6,80004880 <__memmove+0x14c>
    8000477c:	0036581b          	srliw	a6,a2,0x3
    80004780:	fff8081b          	addiw	a6,a6,-1
    80004784:	02081813          	slli	a6,a6,0x20
    80004788:	01d85893          	srli	a7,a6,0x1d
    8000478c:	00858813          	addi	a6,a1,8
    80004790:	00058793          	mv	a5,a1
    80004794:	00050713          	mv	a4,a0
    80004798:	01088833          	add	a6,a7,a6
    8000479c:	0007b883          	ld	a7,0(a5)
    800047a0:	00878793          	addi	a5,a5,8
    800047a4:	00870713          	addi	a4,a4,8
    800047a8:	ff173c23          	sd	a7,-8(a4)
    800047ac:	ff0798e3          	bne	a5,a6,8000479c <__memmove+0x68>
    800047b0:	ff867713          	andi	a4,a2,-8
    800047b4:	02071793          	slli	a5,a4,0x20
    800047b8:	0207d793          	srli	a5,a5,0x20
    800047bc:	00f585b3          	add	a1,a1,a5
    800047c0:	40e686bb          	subw	a3,a3,a4
    800047c4:	00f507b3          	add	a5,a0,a5
    800047c8:	06e60463          	beq	a2,a4,80004830 <__memmove+0xfc>
    800047cc:	0005c703          	lbu	a4,0(a1)
    800047d0:	00e78023          	sb	a4,0(a5)
    800047d4:	04068e63          	beqz	a3,80004830 <__memmove+0xfc>
    800047d8:	0015c603          	lbu	a2,1(a1)
    800047dc:	00100713          	li	a4,1
    800047e0:	00c780a3          	sb	a2,1(a5)
    800047e4:	04e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    800047e8:	0025c603          	lbu	a2,2(a1)
    800047ec:	00200713          	li	a4,2
    800047f0:	00c78123          	sb	a2,2(a5)
    800047f4:	02e68e63          	beq	a3,a4,80004830 <__memmove+0xfc>
    800047f8:	0035c603          	lbu	a2,3(a1)
    800047fc:	00300713          	li	a4,3
    80004800:	00c781a3          	sb	a2,3(a5)
    80004804:	02e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004808:	0045c603          	lbu	a2,4(a1)
    8000480c:	00400713          	li	a4,4
    80004810:	00c78223          	sb	a2,4(a5)
    80004814:	00e68e63          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004818:	0055c603          	lbu	a2,5(a1)
    8000481c:	00500713          	li	a4,5
    80004820:	00c782a3          	sb	a2,5(a5)
    80004824:	00e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004828:	0065c703          	lbu	a4,6(a1)
    8000482c:	00e78323          	sb	a4,6(a5)
    80004830:	00813403          	ld	s0,8(sp)
    80004834:	01010113          	addi	sp,sp,16
    80004838:	00008067          	ret
    8000483c:	02061713          	slli	a4,a2,0x20
    80004840:	02075713          	srli	a4,a4,0x20
    80004844:	00e587b3          	add	a5,a1,a4
    80004848:	f0f574e3          	bgeu	a0,a5,80004750 <__memmove+0x1c>
    8000484c:	02069613          	slli	a2,a3,0x20
    80004850:	02065613          	srli	a2,a2,0x20
    80004854:	fff64613          	not	a2,a2
    80004858:	00e50733          	add	a4,a0,a4
    8000485c:	00c78633          	add	a2,a5,a2
    80004860:	fff7c683          	lbu	a3,-1(a5)
    80004864:	fff78793          	addi	a5,a5,-1
    80004868:	fff70713          	addi	a4,a4,-1
    8000486c:	00d70023          	sb	a3,0(a4)
    80004870:	fec798e3          	bne	a5,a2,80004860 <__memmove+0x12c>
    80004874:	00813403          	ld	s0,8(sp)
    80004878:	01010113          	addi	sp,sp,16
    8000487c:	00008067          	ret
    80004880:	02069713          	slli	a4,a3,0x20
    80004884:	02075713          	srli	a4,a4,0x20
    80004888:	00170713          	addi	a4,a4,1
    8000488c:	00e50733          	add	a4,a0,a4
    80004890:	00050793          	mv	a5,a0
    80004894:	0005c683          	lbu	a3,0(a1)
    80004898:	00178793          	addi	a5,a5,1
    8000489c:	00158593          	addi	a1,a1,1
    800048a0:	fed78fa3          	sb	a3,-1(a5)
    800048a4:	fee798e3          	bne	a5,a4,80004894 <__memmove+0x160>
    800048a8:	f89ff06f          	j	80004830 <__memmove+0xfc>

00000000800048ac <__putc>:
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	00050793          	mv	a5,a0
    800048c0:	fef40593          	addi	a1,s0,-17
    800048c4:	00100613          	li	a2,1
    800048c8:	00000513          	li	a0,0
    800048cc:	fef407a3          	sb	a5,-17(s0)
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	b3c080e7          	jalr	-1220(ra) # 8000340c <console_write>
    800048d8:	01813083          	ld	ra,24(sp)
    800048dc:	01013403          	ld	s0,16(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <__getc>:
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00813823          	sd	s0,16(sp)
    800048f0:	00113c23          	sd	ra,24(sp)
    800048f4:	02010413          	addi	s0,sp,32
    800048f8:	fe840593          	addi	a1,s0,-24
    800048fc:	00100613          	li	a2,1
    80004900:	00000513          	li	a0,0
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	ae8080e7          	jalr	-1304(ra) # 800033ec <console_read>
    8000490c:	fe844503          	lbu	a0,-24(s0)
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	02010113          	addi	sp,sp,32
    8000491c:	00008067          	ret

0000000080004920 <console_handler>:
    80004920:	fe010113          	addi	sp,sp,-32
    80004924:	00813823          	sd	s0,16(sp)
    80004928:	00113c23          	sd	ra,24(sp)
    8000492c:	00913423          	sd	s1,8(sp)
    80004930:	02010413          	addi	s0,sp,32
    80004934:	14202773          	csrr	a4,scause
    80004938:	100027f3          	csrr	a5,sstatus
    8000493c:	0027f793          	andi	a5,a5,2
    80004940:	06079e63          	bnez	a5,800049bc <console_handler+0x9c>
    80004944:	00074c63          	bltz	a4,8000495c <console_handler+0x3c>
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret
    8000495c:	0ff77713          	andi	a4,a4,255
    80004960:	00900793          	li	a5,9
    80004964:	fef712e3          	bne	a4,a5,80004948 <console_handler+0x28>
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	6dc080e7          	jalr	1756(ra) # 80003044 <plic_claim>
    80004970:	00a00793          	li	a5,10
    80004974:	00050493          	mv	s1,a0
    80004978:	02f50c63          	beq	a0,a5,800049b0 <console_handler+0x90>
    8000497c:	fc0506e3          	beqz	a0,80004948 <console_handler+0x28>
    80004980:	00050593          	mv	a1,a0
    80004984:	00001517          	auipc	a0,0x1
    80004988:	82c50513          	addi	a0,a0,-2004 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    8000498c:	fffff097          	auipc	ra,0xfffff
    80004990:	afc080e7          	jalr	-1284(ra) # 80003488 <__printf>
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	00048513          	mv	a0,s1
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	02010113          	addi	sp,sp,32
    800049a8:	ffffe317          	auipc	t1,0xffffe
    800049ac:	6d430067          	jr	1748(t1) # 8000307c <plic_complete>
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	3e0080e7          	jalr	992(ra) # 80003d90 <uartintr>
    800049b8:	fddff06f          	j	80004994 <console_handler+0x74>
    800049bc:	00001517          	auipc	a0,0x1
    800049c0:	8f450513          	addi	a0,a0,-1804 # 800052b0 <digits+0x78>
    800049c4:	fffff097          	auipc	ra,0xfffff
    800049c8:	a68080e7          	jalr	-1432(ra) # 8000342c <panic>
	...
