
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	96013103          	ld	sp,-1696(sp) # 80005960 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	064020ef          	jal	ra,80002080 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN3PCB8pushRegsEv>:
#sa vezbi 7. sinhrona promena konteksta
.global  _ZN3PCB8pushRegsEv
.type _ZN3PCB8pushRegsEv, @function
_ZN3PCB8pushRegsEv:
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

000000008000107c <_ZN3PCB7popRegsEv>:
.type _ZN3PCB7popRegsEv, @function
_ZN3PCB7popRegsEv:

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

0000000080001100 <supervisorTrap>:
.extern handleSupervisorTrap
.global supervisorTrap
.align 4
supervisorTrap:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256

    sd x0, 0x00(sp)
    80001104:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    80001108:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    80001114:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    80001118:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    80001124:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    80001128:	04913423          	sd	s1,72(sp)
    sd x10, 0x50(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    sd x11, 0x58(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001144:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    80001148:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)


    call handleSupervisorTrap
    80001184:	794000ef          	jal	ra,80001918 <handleSupervisorTrap>


    ld x0, 0x00(sp)
    80001188:	00013003          	ld	zero,0(sp)
    ld x1, 0x08(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    ld x2, 0x10(sp)
    80001190:	01013103          	ld	sp,16(sp)
    ld x3, 0x18(sp)
    80001194:	01813183          	ld	gp,24(sp)
    ld x4, 0x20(sp)
    80001198:	02013203          	ld	tp,32(sp)
    ld x5, 0x28(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    ld x6, 0x30(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    ld x7, 0x38(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    ld x8, 0x40(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    ld x9, 0x48(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    ld x10, 0x50(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    ld x11, 0x58(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    ld x12, 0x60(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    ld x13, 0x68(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    ld x14, 0x70(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    ld x15, 0x78(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    ld x16, 0x80(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    ld x17, 0x88(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    ld x18, 0x90(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    ld x19, 0x98(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    ld x20, 0xa0(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    ld x21, 0xa8(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    ld x22, 0xb0(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    ld x23, 0xb8(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    ld x24, 0xc0(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    ld x25, 0xc8(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    ld x26, 0xd0(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    ld x27, 0xd8(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    ld x28, 0xe0(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    ld x29, 0xe8(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    ld x30, 0xf0(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    ld x31, 0xf8(sp)
    80001204:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
#sa vezbi 7.
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #u a0 &old->context, u a1 &running->context
    sd ra, 0*8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <_Z18commonPartSysCallsiz>:
//


#include "../h/syscall_c.hpp"

void commonPartSysCalls(int code, ...){
    80001224:	fb010113          	addi	sp,sp,-80
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    80001230:	00b43423          	sd	a1,8(s0)
    80001234:	00c43823          	sd	a2,16(s0)
    80001238:	00d43c23          	sd	a3,24(s0)
    8000123c:	02e43023          	sd	a4,32(s0)
    80001240:	02f43423          	sd	a5,40(s0)
    80001244:	03043823          	sd	a6,48(s0)
    80001248:	03143c23          	sd	a7,56(s0)
    __asm__ volatile("ecall");
    8000124c:	00000073          	ecall
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	05010113          	addi	sp,sp,80
    80001258:	00008067          	ret

000000008000125c <_Z9mem_allocm>:


void *mem_alloc(size_t size) {
    8000125c:	fe010113          	addi	sp,sp,-32
    80001260:	00113c23          	sd	ra,24(sp)
    80001264:	00813823          	sd	s0,16(sp)
    80001268:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(0x01));//kod sist. poziva

    __asm__ volatile("ecall");
     */

    commonPartSysCalls(0x01, ((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE));
    8000126c:	03f50593          	addi	a1,a0,63
    80001270:	0065d593          	srli	a1,a1,0x6
    80001274:	00100513          	li	a0,1
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	fac080e7          	jalr	-84(ra) # 80001224 <_Z18commonPartSysCallsiz>

    //mozda nije potrebno volatile proveriti
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    80001280:	00050793          	mv	a5,a0
    80001284:	fef43423          	sd	a5,-24(s0)
    return (void*)ret;
    80001288:	fe843503          	ld	a0,-24(s0)
}
    8000128c:	01813083          	ld	ra,24(sp)
    80001290:	01013403          	ld	s0,16(sp)
    80001294:	02010113          	addi	sp,sp,32
    80001298:	00008067          	ret

000000008000129c <_Z8mem_freePv>:

int mem_free(void *ptr) {
    8000129c:	fe010113          	addi	sp,sp,-32
    800012a0:	00113c23          	sd	ra,24(sp)
    800012a4:	00813823          	sd	s0,16(sp)
    800012a8:	02010413          	addi	s0,sp,32
    800012ac:	00050593          	mv	a1,a0
    __asm__ volatile("mv a1, %0": : "r"((uint64)ptr));
    __asm__ volatile ("mv a0, %0" : : "r"(0x02));

    __asm__ volatile("ecall");
     */
    commonPartSysCalls(0x02, (uint64)ptr);
    800012b0:	00200513          	li	a0,2
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	f70080e7          	jalr	-144(ra) # 80001224 <_Z18commonPartSysCallsiz>
    volatile int ret;
    __asm__ volatile ("mv %0, a0": "=r"(ret));
    800012bc:	00050793          	mv	a5,a0
    800012c0:	fef42623          	sw	a5,-20(s0)
    return ret;
    800012c4:	fec42503          	lw	a0,-20(s0)
}
    800012c8:	0005051b          	sext.w	a0,a0
    800012cc:	01813083          	ld	ra,24(sp)
    800012d0:	01013403          	ld	s0,16(sp)
    800012d4:	02010113          	addi	sp,sp,32
    800012d8:	00008067          	ret

00000000800012dc <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	03010413          	addi	s0,sp,48
    800012f8:	00050493          	mv	s1,a0
    800012fc:	00058913          	mv	s2,a1
    80001300:	00060993          	mv	s3,a2
    uint64* stack=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001304:	00001537          	lui	a0,0x1
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	f54080e7          	jalr	-172(ra) # 8000125c <_Z9mem_allocm>
    if(stack==nullptr)return -1;
    80001310:	04050063          	beqz	a0,80001350 <_Z13thread_createPP7_threadPFvPvES2_+0x74>
    80001314:	00050713          	mv	a4,a0
    commonPartSysCalls(0x11, handle, start_routine, arg, stack);
    80001318:	00098693          	mv	a3,s3
    8000131c:	00090613          	mv	a2,s2
    80001320:	00048593          	mv	a1,s1
    80001324:	01100513          	li	a0,17
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	efc080e7          	jalr	-260(ra) # 80001224 <_Z18commonPartSysCallsiz>

    return 0;
    80001330:	00000513          	li	a0,0
}
    80001334:	02813083          	ld	ra,40(sp)
    80001338:	02013403          	ld	s0,32(sp)
    8000133c:	01813483          	ld	s1,24(sp)
    80001340:	01013903          	ld	s2,16(sp)
    80001344:	00813983          	ld	s3,8(sp)
    80001348:	03010113          	addi	sp,sp,48
    8000134c:	00008067          	ret
    if(stack==nullptr)return -1;
    80001350:	fff00513          	li	a0,-1
    80001354:	fe1ff06f          	j	80001334 <_Z13thread_createPP7_threadPFvPvES2_+0x58>

0000000080001358 <_Z10time_sleepm>:

int time_sleep(time_t) {
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16
    return 0;
}
    80001364:	00000513          	li	a0,0
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_Z11thread_exitv>:

int thread_exit() {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001380:	00000513          	li	a0,0
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16

}
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16

}
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    800013c0:	ff010113          	addi	sp,sp,-16
    800013c4:	00813423          	sd	s0,8(sp)
    800013c8:	01010413          	addi	s0,sp,16
    return 0;
}
    800013cc:	00000513          	li	a0,0
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    return 0;
}
    800013e8:	00000513          	li	a0,0
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    return 0;
}
    80001404:	00000513          	li	a0,0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001420:	00000513          	li	a0,0
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z4getcv>:

char getc() {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    return 0;
}
    8000143c:	00000513          	li	a0,0
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z4putcc>:

void putc(char) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16

}
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_ZN3PCB8dispatchEv>:

PCB *PCB::createThread(PCB::Body body, uint64* stack) {
    return new PCB(body, stack);
}

void PCB::dispatch() {
    80001464:	fe010113          	addi	sp,sp,-32
    80001468:	00113c23          	sd	ra,24(sp)
    8000146c:	00813823          	sd	s0,16(sp)
    80001470:	00913423          	sd	s1,8(sp)
    80001474:	02010413          	addi	s0,sp,32
    PCB* old=running;
    80001478:	00004497          	auipc	s1,0x4
    8000147c:	5484b483          	ld	s1,1352(s1) # 800059c0 <_ZN3PCB7runningE>
class PCB{
public:
    ~PCB();
    PCB(){}
    bool isFinished() const{
        return finished;
    80001480:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished()){
    80001484:	02078c63          	beqz	a5,800014bc <_ZN3PCB8dispatchEv+0x58>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	5e8080e7          	jalr	1512(ra) # 80001a70 <_ZN9Scheduler3getEv>
    80001490:	00004797          	auipc	a5,0x4
    80001494:	52a7b823          	sd	a0,1328(a5) # 800059c0 <_ZN3PCB7runningE>

    PCB::contextSwitch(&old->context, &running->context);
    80001498:	01050593          	addi	a1,a0,16 # 1010 <_entry-0x7fffeff0>
    8000149c:	01048513          	addi	a0,s1,16
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	d70080e7          	jalr	-656(ra) # 80001210 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	00813483          	ld	s1,8(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret
        Scheduler::put(old);
    800014bc:	00048513          	mv	a0,s1
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	53c080e7          	jalr	1340(ra) # 800019fc <_ZN9Scheduler3putEP3PCB>
    800014c8:	fc1ff06f          	j	80001488 <_ZN3PCB8dispatchEv+0x24>

00000000800014cc <_ZN3PCB5yieldEv>:
void PCB::yield() {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    pushRegs();
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	b24080e7          	jalr	-1244(ra) # 80001000 <_ZN3PCB8pushRegsEv>
    dispatch();
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f80080e7          	jalr	-128(ra) # 80001464 <_ZN3PCB8dispatchEv>
    popRegs();
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	b90080e7          	jalr	-1136(ra) # 8000107c <_ZN3PCB7popRegsEv>
}
    800014f4:	00813083          	ld	ra,8(sp)
    800014f8:	00013403          	ld	s0,0(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZN3PCBC1EPFvvEPm>:
PCB::PCB(PCB::Body body, uint64* stack):body(body),
                            stack(body!=nullptr? stack : nullptr),
                            context({body!=nullptr? (uint64) body : 0,
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
                                     }),
                            finished(false)
    80001504:	00b53023          	sd	a1,0(a0)
                            stack(body!=nullptr? stack : nullptr),
    80001508:	04058a63          	beqz	a1,8000155c <_ZN3PCBC1EPFvvEPm+0x58>
                            finished(false)
    8000150c:	00c53423          	sd	a2,8(a0)
                            context({body!=nullptr? (uint64) body : 0,
    80001510:	04058a63          	beqz	a1,80001564 <_ZN3PCBC1EPFvvEPm+0x60>
    80001514:	00058793          	mv	a5,a1
                            finished(false)
    80001518:	00f53823          	sd	a5,16(a0)
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    8000151c:	04060863          	beqz	a2,8000156c <_ZN3PCBC1EPFvvEPm+0x68>
    80001520:	000087b7          	lui	a5,0x8
    80001524:	00f60633          	add	a2,a2,a5
                            finished(false)
    80001528:	00c53c23          	sd	a2,24(a0)
    8000152c:	02050023          	sb	zero,32(a0)

    {
        if(body!=nullptr) Scheduler::put(this);
    80001530:	04058263          	beqz	a1,80001574 <_ZN3PCBC1EPFvvEPm+0x70>
PCB::PCB(PCB::Body body, uint64* stack):body(body),
    80001534:	ff010113          	addi	sp,sp,-16
    80001538:	00113423          	sd	ra,8(sp)
    8000153c:	00813023          	sd	s0,0(sp)
    80001540:	01010413          	addi	s0,sp,16
        if(body!=nullptr) Scheduler::put(this);
    80001544:	00000097          	auipc	ra,0x0
    80001548:	4b8080e7          	jalr	1208(ra) # 800019fc <_ZN9Scheduler3putEP3PCB>
    }
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret
                            stack(body!=nullptr? stack : nullptr),
    8000155c:	00000613          	li	a2,0
    80001560:	fadff06f          	j	8000150c <_ZN3PCBC1EPFvvEPm+0x8>
                            context({body!=nullptr? (uint64) body : 0,
    80001564:	00000793          	li	a5,0
    80001568:	fb1ff06f          	j	80001518 <_ZN3PCBC1EPFvvEPm+0x14>
                                     this->stack!=nullptr? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0//prvo umanjiti za 1 da bi se uslo u taj region
    8000156c:	00000613          	li	a2,0
    80001570:	fb9ff06f          	j	80001528 <_ZN3PCBC1EPFvvEPm+0x24>
    80001574:	00008067          	ret

0000000080001578 <_ZN3PCB12createThreadEPFvvEPm>:
PCB *PCB::createThread(PCB::Body body, uint64* stack) {
    80001578:	fd010113          	addi	sp,sp,-48
    8000157c:	02113423          	sd	ra,40(sp)
    80001580:	02813023          	sd	s0,32(sp)
    80001584:	00913c23          	sd	s1,24(sp)
    80001588:	01213823          	sd	s2,16(sp)
    8000158c:	01313423          	sd	s3,8(sp)
    80001590:	03010413          	addi	s0,sp,48
    80001594:	00050913          	mv	s2,a0
    80001598:	00058993          	mv	s3,a1
    return new PCB(body, stack);
    8000159c:	02800513          	li	a0,40
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	664080e7          	jalr	1636(ra) # 80001c04 <_Znwm>
    800015a8:	00050493          	mv	s1,a0
    800015ac:	00098613          	mv	a2,s3
    800015b0:	00090593          	mv	a1,s2
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f50080e7          	jalr	-176(ra) # 80001504 <_ZN3PCBC1EPFvvEPm>
    800015bc:	0200006f          	j	800015dc <_ZN3PCB12createThreadEPFvvEPm+0x64>
    800015c0:	00050913          	mv	s2,a0
    800015c4:	00048513          	mv	a0,s1
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	68c080e7          	jalr	1676(ra) # 80001c54 <_ZdlPv>
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00005097          	auipc	ra,0x5
    800015d8:	4d4080e7          	jalr	1236(ra) # 80006aa8 <_Unwind_Resume>
}
    800015dc:	00048513          	mv	a0,s1
    800015e0:	02813083          	ld	ra,40(sp)
    800015e4:	02013403          	ld	s0,32(sp)
    800015e8:	01813483          	ld	s1,24(sp)
    800015ec:	01013903          	ld	s2,16(sp)
    800015f0:	00813983          	ld	s3,8(sp)
    800015f4:	03010113          	addi	sp,sp,48
    800015f8:	00008067          	ret

00000000800015fc <_ZN3PCBD1Ev>:

PCB::~PCB() {
    800015fc:	ff010113          	addi	sp,sp,-16
    80001600:	00113423          	sd	ra,8(sp)
    80001604:	00813023          	sd	s0,0(sp)
    80001608:	01010413          	addi	s0,sp,16
    mem_free(stack);
    8000160c:	00853503          	ld	a0,8(a0)
    80001610:	00000097          	auipc	ra,0x0
    80001614:	c8c080e7          	jalr	-884(ra) # 8000129c <_Z8mem_freePv>
}
    80001618:	00813083          	ld	ra,8(sp)
    8000161c:	00013403          	ld	s0,0(sp)
    80001620:	01010113          	addi	sp,sp,16
    80001624:	00008067          	ret

0000000080001628 <_Z9fibonaccim>:
#include "../lib/hw.h"
#include "../h/PCB.hpp"
#include "../h/print.hpp"

uint64 fibonacci(uint64 n)
{
    80001628:	fe010113          	addi	sp,sp,-32
    8000162c:	00113c23          	sd	ra,24(sp)
    80001630:	00813823          	sd	s0,16(sp)
    80001634:	00913423          	sd	s1,8(sp)
    80001638:	01213023          	sd	s2,0(sp)
    8000163c:	02010413          	addi	s0,sp,32
    80001640:	00050493          	mv	s1,a0
    if(n==0 || n==1)return n;
    80001644:	00100793          	li	a5,1
    80001648:	02a7f663          	bgeu	a5,a0,80001674 <_Z9fibonaccim+0x4c>
    if(n%4==0)PCB::yield();
    8000164c:	00357793          	andi	a5,a0,3
    80001650:	02078e63          	beqz	a5,8000168c <_Z9fibonaccim+0x64>
    return fibonacci(n-1)+ fibonacci(n-2);
    80001654:	fff48513          	addi	a0,s1,-1
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	fd0080e7          	jalr	-48(ra) # 80001628 <_Z9fibonaccim>
    80001660:	00050913          	mv	s2,a0
    80001664:	ffe48513          	addi	a0,s1,-2
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	fc0080e7          	jalr	-64(ra) # 80001628 <_Z9fibonaccim>
    80001670:	00a90533          	add	a0,s2,a0
}
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	00013903          	ld	s2,0(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret
    if(n%4==0)PCB::yield();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	e40080e7          	jalr	-448(ra) # 800014cc <_ZN3PCB5yieldEv>
    80001694:	fc1ff06f          	j	80001654 <_Z9fibonaccim+0x2c>

0000000080001698 <_Z11workerBodyAv>:

void workerBodyA() {
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	00913423          	sd	s1,8(sp)
    800016a8:	01213023          	sd	s2,0(sp)
    800016ac:	02010413          	addi	s0,sp,32
    uint8 i=0;
    800016b0:	00000493          	li	s1,0
    800016b4:	0380006f          	j	800016ec <_Z11workerBodyAv+0x54>
    for(;i<3;i++){
        printString("A: i=");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	96850513          	addi	a0,a0,-1688 # 80005020 <CONSOLE_STATUS+0x10>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	8ec080e7          	jalr	-1812(ra) # 80001fac <_Z11printStringPKc>
        printInteger(i);
    800016c8:	00048513          	mv	a0,s1
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	924080e7          	jalr	-1756(ra) # 80001ff0 <_Z12printIntegerm>
        printString("\n");
    800016d4:	00004517          	auipc	a0,0x4
    800016d8:	9ac50513          	addi	a0,a0,-1620 # 80005080 <CONSOLE_STATUS+0x70>
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	8d0080e7          	jalr	-1840(ra) # 80001fac <_Z11printStringPKc>
    for(;i<3;i++){
    800016e4:	0014849b          	addiw	s1,s1,1
    800016e8:	0ff4f493          	andi	s1,s1,255
    800016ec:	00200793          	li	a5,2
    800016f0:	fc97f4e3          	bgeu	a5,s1,800016b8 <_Z11workerBodyAv+0x20>
    }
    printString("A: yield\n");
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	93450513          	addi	a0,a0,-1740 # 80005028 <CONSOLE_STATUS+0x18>
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	8b0080e7          	jalr	-1872(ra) # 80001fac <_Z11printStringPKc>
    __asm__("li t1, 7");
    80001704:	00700313          	li	t1,7
    PCB::yield();
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	dc4080e7          	jalr	-572(ra) # 800014cc <_ZN3PCB5yieldEv>

    uint64 t1=0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    80001710:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	92450513          	addi	a0,a0,-1756 # 80005038 <CONSOLE_STATUS+0x28>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	890080e7          	jalr	-1904(ra) # 80001fac <_Z11printStringPKc>
    printInteger(t1);
    80001724:	00090513          	mv	a0,s2
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	8c8080e7          	jalr	-1848(ra) # 80001ff0 <_Z12printIntegerm>
    printString("\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	95050513          	addi	a0,a0,-1712 # 80005080 <CONSOLE_STATUS+0x70>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	874080e7          	jalr	-1932(ra) # 80001fac <_Z11printStringPKc>

    uint64 result= fibonacci(20);
    80001740:	01400513          	li	a0,20
    80001744:	00000097          	auipc	ra,0x0
    80001748:	ee4080e7          	jalr	-284(ra) # 80001628 <_Z9fibonaccim>
    8000174c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001750:	00004517          	auipc	a0,0x4
    80001754:	8f050513          	addi	a0,a0,-1808 # 80005040 <CONSOLE_STATUS+0x30>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	854080e7          	jalr	-1964(ra) # 80001fac <_Z11printStringPKc>
    printInteger(result);
    80001760:	00090513          	mv	a0,s2
    80001764:	00001097          	auipc	ra,0x1
    80001768:	88c080e7          	jalr	-1908(ra) # 80001ff0 <_Z12printIntegerm>
    printString("\n");
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	91450513          	addi	a0,a0,-1772 # 80005080 <CONSOLE_STATUS+0x70>
    80001774:	00001097          	auipc	ra,0x1
    80001778:	838080e7          	jalr	-1992(ra) # 80001fac <_Z11printStringPKc>
    8000177c:	0380006f          	j	800017b4 <_Z11workerBodyAv+0x11c>

    for(;i<6;i++){
        printString("A: i=");
    80001780:	00004517          	auipc	a0,0x4
    80001784:	8a050513          	addi	a0,a0,-1888 # 80005020 <CONSOLE_STATUS+0x10>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	824080e7          	jalr	-2012(ra) # 80001fac <_Z11printStringPKc>
        printInteger(i);
    80001790:	00048513          	mv	a0,s1
    80001794:	00001097          	auipc	ra,0x1
    80001798:	85c080e7          	jalr	-1956(ra) # 80001ff0 <_Z12printIntegerm>
        printString("\n");
    8000179c:	00004517          	auipc	a0,0x4
    800017a0:	8e450513          	addi	a0,a0,-1820 # 80005080 <CONSOLE_STATUS+0x70>
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	808080e7          	jalr	-2040(ra) # 80001fac <_Z11printStringPKc>
    for(;i<6;i++){
    800017ac:	0014849b          	addiw	s1,s1,1
    800017b0:	0ff4f493          	andi	s1,s1,255
    800017b4:	00500793          	li	a5,5
    800017b8:	fc97f4e3          	bgeu	a5,s1,80001780 <_Z11workerBodyAv+0xe8>
    }


    PCB::running->setFinished(true);
    800017bc:	00004797          	auipc	a5,0x4
    800017c0:	1ac7b783          	ld	a5,428(a5) # 80005968 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017c4:	0007b783          	ld	a5,0(a5)
    }

    void setFinished(bool finished){
        PCB::finished = finished;
    800017c8:	00100713          	li	a4,1
    800017cc:	02e78023          	sb	a4,32(a5)
    PCB::yield();
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	cfc080e7          	jalr	-772(ra) # 800014cc <_ZN3PCB5yieldEv>
}
    800017d8:	01813083          	ld	ra,24(sp)
    800017dc:	01013403          	ld	s0,16(sp)
    800017e0:	00813483          	ld	s1,8(sp)
    800017e4:	00013903          	ld	s2,0(sp)
    800017e8:	02010113          	addi	sp,sp,32
    800017ec:	00008067          	ret

00000000800017f0 <_Z11workerBodyBv>:

void workerBodyB() {
    800017f0:	fe010113          	addi	sp,sp,-32
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00813823          	sd	s0,16(sp)
    800017fc:	00913423          	sd	s1,8(sp)
    80001800:	01213023          	sd	s2,0(sp)
    80001804:	02010413          	addi	s0,sp,32
    uint8 i=10;
    80001808:	00a00493          	li	s1,10
    8000180c:	0380006f          	j	80001844 <_Z11workerBodyBv+0x54>
    for(;i<13;i++){
        printString("B: i=");
    80001810:	00004517          	auipc	a0,0x4
    80001814:	84050513          	addi	a0,a0,-1984 # 80005050 <CONSOLE_STATUS+0x40>
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	794080e7          	jalr	1940(ra) # 80001fac <_Z11printStringPKc>
        printInteger(i);
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	7cc080e7          	jalr	1996(ra) # 80001ff0 <_Z12printIntegerm>
        printString("\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	85450513          	addi	a0,a0,-1964 # 80005080 <CONSOLE_STATUS+0x70>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	778080e7          	jalr	1912(ra) # 80001fac <_Z11printStringPKc>
    for(;i<13;i++){
    8000183c:	0014849b          	addiw	s1,s1,1
    80001840:	0ff4f493          	andi	s1,s1,255
    80001844:	00c00793          	li	a5,12
    80001848:	fc97f4e3          	bgeu	a5,s1,80001810 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    8000184c:	00004517          	auipc	a0,0x4
    80001850:	80c50513          	addi	a0,a0,-2036 # 80005058 <CONSOLE_STATUS+0x48>
    80001854:	00000097          	auipc	ra,0x0
    80001858:	758080e7          	jalr	1880(ra) # 80001fac <_Z11printStringPKc>
    __asm__("li t1, 5");
    8000185c:	00500313          	li	t1,5
    PCB::yield();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	c6c080e7          	jalr	-916(ra) # 800014cc <_ZN3PCB5yieldEv>
    printString("B: t1=");
    printInteger(t1);
    printString("\n");
     */

    uint64 result= fibonacci(23);
    80001868:	01700513          	li	a0,23
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	dbc080e7          	jalr	-580(ra) # 80001628 <_Z9fibonaccim>
    80001874:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001878:	00003517          	auipc	a0,0x3
    8000187c:	7f050513          	addi	a0,a0,2032 # 80005068 <CONSOLE_STATUS+0x58>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	72c080e7          	jalr	1836(ra) # 80001fac <_Z11printStringPKc>
    printInteger(result);
    80001888:	00090513          	mv	a0,s2
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	764080e7          	jalr	1892(ra) # 80001ff0 <_Z12printIntegerm>
    printString("\n");
    80001894:	00003517          	auipc	a0,0x3
    80001898:	7ec50513          	addi	a0,a0,2028 # 80005080 <CONSOLE_STATUS+0x70>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	710080e7          	jalr	1808(ra) # 80001fac <_Z11printStringPKc>
    800018a4:	0380006f          	j	800018dc <_Z11workerBodyBv+0xec>

    for(;i<16;i++){
        printString("B: i=");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	7a850513          	addi	a0,a0,1960 # 80005050 <CONSOLE_STATUS+0x40>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	6fc080e7          	jalr	1788(ra) # 80001fac <_Z11printStringPKc>
        printInteger(i);
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	734080e7          	jalr	1844(ra) # 80001ff0 <_Z12printIntegerm>
        printString("\n");
    800018c4:	00003517          	auipc	a0,0x3
    800018c8:	7bc50513          	addi	a0,a0,1980 # 80005080 <CONSOLE_STATUS+0x70>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	6e0080e7          	jalr	1760(ra) # 80001fac <_Z11printStringPKc>
    for(;i<16;i++){
    800018d4:	0014849b          	addiw	s1,s1,1
    800018d8:	0ff4f493          	andi	s1,s1,255
    800018dc:	00f00793          	li	a5,15
    800018e0:	fc97f4e3          	bgeu	a5,s1,800018a8 <_Z11workerBodyBv+0xb8>
    }



    PCB::running->setFinished(true);
    800018e4:	00004797          	auipc	a5,0x4
    800018e8:	0847b783          	ld	a5,132(a5) # 80005968 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018ec:	0007b783          	ld	a5,0(a5)
    800018f0:	00100713          	li	a4,1
    800018f4:	02e78023          	sb	a4,32(a5)
    PCB::yield();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	bd4080e7          	jalr	-1068(ra) # 800014cc <_ZN3PCB5yieldEv>
}
    80001900:	01813083          	ld	ra,24(sp)
    80001904:	01013403          	ld	s0,16(sp)
    80001908:	00813483          	ld	s1,8(sp)
    8000190c:	00013903          	ld	s2,0(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret

0000000080001918 <handleSupervisorTrap>:
#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../h/syscall_c.hpp"


extern "C" void handleSupervisorTrap(){
    80001918:	fe010113          	addi	sp,sp,-32
    8000191c:	00113c23          	sd	ra,24(sp)
    80001920:	00813823          	sd	s0,16(sp)
    80001924:	00913423          	sd	s1,8(sp)
    80001928:	01213023          	sd	s2,0(sp)
    8000192c:	02010413          	addi	s0,sp,32
    uint64 valScause;
    //__asm__ volatile("csrr %[scause], scause" : [scause] "=r" (valScause));
    __asm__ volatile("csrr %0, scause" : "=r" (valScause));
    80001930:	142024f3          	csrr	s1,scause

    if(valScause==0x02UL || valScause==0x05UL || valScause==0x07UL){
    80001934:	00200793          	li	a5,2
    80001938:	02f48e63          	beq	s1,a5,80001974 <handleSupervisorTrap+0x5c>
    8000193c:	00500793          	li	a5,5
    80001940:	02f48a63          	beq	s1,a5,80001974 <handleSupervisorTrap+0x5c>
    80001944:	00700793          	li	a5,7
    80001948:	02f48663          	beq	s1,a5,80001974 <handleSupervisorTrap+0x5c>
        __putc('x');
        return;

    }

    else if(valScause==0x09UL || valScause==0x08UL)
    8000194c:	ff848793          	addi	a5,s1,-8
    80001950:	00100713          	li	a4,1
    80001954:	04f77263          	bgeu	a4,a5,80001998 <handleSupervisorTrap+0x80>
        //vratiti vrednost u sstatus
        __asm__ volatile("csrw sepc, %0": :"r"(sepcSaved+4));

    }

    if(valScause==(1UL<<63 | 0x09)){
    80001958:	fff00793          	li	a5,-1
    8000195c:	03f79793          	slli	a5,a5,0x3f
    80001960:	00978793          	addi	a5,a5,9
    80001964:	00f49e63          	bne	s1,a5,80001980 <handleSupervisorTrap+0x68>
        console_handler();
    80001968:	00003097          	auipc	ra,0x3
    8000196c:	848080e7          	jalr	-1976(ra) # 800041b0 <console_handler>
    80001970:	0100006f          	j	80001980 <handleSupervisorTrap+0x68>
        __putc('x');
    80001974:	07800513          	li	a0,120
    80001978:	00002097          	auipc	ra,0x2
    8000197c:	7c4080e7          	jalr	1988(ra) # 8000413c <__putc>
    }

}
    80001980:	01813083          	ld	ra,24(sp)
    80001984:	01013403          	ld	s0,16(sp)
    80001988:	00813483          	ld	s1,8(sp)
    8000198c:	00013903          	ld	s2,0(sp)
    80001990:	02010113          	addi	sp,sp,32
    80001994:	00008067          	ret
        __asm__ volatile("csrr %0, sepc": "=r"(sepcSaved));
    80001998:	14102973          	csrr	s2,sepc
        __asm__ volatile("ld %0, 0x50(fp)": "=r"(a0));
    8000199c:	05043783          	ld	a5,80(s0)
        if(a0==0x01){
    800019a0:	02e78063          	beq	a5,a4,800019c0 <handleSupervisorTrap+0xa8>
        else if(a0==0x02){
    800019a4:	00200713          	li	a4,2
    800019a8:	02e78663          	beq	a5,a4,800019d4 <handleSupervisorTrap+0xbc>
        else if(a0==0x11){
    800019ac:	01100713          	li	a4,17
    800019b0:	02e78c63          	beq	a5,a4,800019e8 <handleSupervisorTrap+0xd0>
        __asm__ volatile("csrw sepc, %0": :"r"(sepcSaved+4));
    800019b4:	00490913          	addi	s2,s2,4
    800019b8:	14191073          	csrw	sepc,s2
    800019bc:	f9dff06f          	j	80001958 <handleSupervisorTrap+0x40>
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800019c0:	05843503          	ld	a0,88(s0)
            void *ptr=MemoryAllocator::alloc(a1);
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	324080e7          	jalr	804(ra) # 80001ce8 <_ZN15MemoryAllocator5allocEm>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"((uint64)ptr));
    800019cc:	04a43823          	sd	a0,80(s0)
    800019d0:	fe5ff06f          	j	800019b4 <handleSupervisorTrap+0x9c>
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800019d4:	05843503          	ld	a0,88(s0)
           int stat=MemoryAllocator::free((void*)a1);
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	3e4080e7          	jalr	996(ra) # 80001dbc <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd %0, 0x50(fp)": : "r"(stat));
    800019e0:	04a43823          	sd	a0,80(s0)
    800019e4:	fd1ff06f          	j	800019b4 <handleSupervisorTrap+0x9c>
            __asm__ volatile("ld %0, 0x58(fp)": "=r"(a1));
    800019e8:	05843783          	ld	a5,88(s0)
            __asm__ volatile("ld %0, 0x60(fp)": "=r"(a2));
    800019ec:	06043783          	ld	a5,96(s0)
            __asm__ volatile("ld %0, 0x68(fp)": "=r"(a3));
    800019f0:	06843783          	ld	a5,104(s0)
            __asm__ volatile("ld %0, 0x70(fp)": "=r"(a4));
    800019f4:	07043783          	ld	a5,112(s0)
    800019f8:	fbdff06f          	j	800019b4 <handleSupervisorTrap+0x9c>

00000000800019fc <_ZN9Scheduler3putEP3PCB>:
#include "../h/syscall_c.hpp"

Scheduler::Elem* Scheduler::first=nullptr;
Scheduler::Elem* Scheduler::last=nullptr;

void Scheduler::put(PCB *t) {
    800019fc:	fe010113          	addi	sp,sp,-32
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00813823          	sd	s0,16(sp)
    80001a08:	00913423          	sd	s1,8(sp)
    80001a0c:	02010413          	addi	s0,sp,32
    80001a10:	00050493          	mv	s1,a0
    //Elem* newElem=(Elem*)MemoryAllocator::alloc((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    Elem* newElem=(Elem*) mem_alloc(sizeof (Elem));
    80001a14:	01000513          	li	a0,16
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	844080e7          	jalr	-1980(ra) # 8000125c <_Z9mem_allocm>
    newElem->t=t;
    80001a20:	00953023          	sd	s1,0(a0)
    newElem->next= nullptr;
    80001a24:	00053423          	sd	zero,8(a0)

    if(first==nullptr){
    80001a28:	00004797          	auipc	a5,0x4
    80001a2c:	fa07b783          	ld	a5,-96(a5) # 800059c8 <_ZN9Scheduler5firstE>
    80001a30:	02078663          	beqz	a5,80001a5c <_ZN9Scheduler3putEP3PCB+0x60>
        first=last=newElem;
    }
    else{
        last=last->next=newElem;
    80001a34:	00004797          	auipc	a5,0x4
    80001a38:	f9478793          	addi	a5,a5,-108 # 800059c8 <_ZN9Scheduler5firstE>
    80001a3c:	0087b703          	ld	a4,8(a5)
    80001a40:	00a73423          	sd	a0,8(a4)
    80001a44:	00a7b423          	sd	a0,8(a5)
    }
}
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	02010113          	addi	sp,sp,32
    80001a58:	00008067          	ret
        first=last=newElem;
    80001a5c:	00004797          	auipc	a5,0x4
    80001a60:	f6c78793          	addi	a5,a5,-148 # 800059c8 <_ZN9Scheduler5firstE>
    80001a64:	00a7b423          	sd	a0,8(a5)
    80001a68:	00a7b023          	sd	a0,0(a5)
    80001a6c:	fddff06f          	j	80001a48 <_ZN9Scheduler3putEP3PCB+0x4c>

0000000080001a70 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get() {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	02010413          	addi	s0,sp,32
    if(first==nullptr)return nullptr;
    80001a84:	00004517          	auipc	a0,0x4
    80001a88:	f4453503          	ld	a0,-188(a0) # 800059c8 <_ZN9Scheduler5firstE>
    80001a8c:	04050663          	beqz	a0,80001ad8 <_ZN9Scheduler3getEv+0x68>

    Elem* elem=first;
    PCB* t=elem->t;
    80001a90:	00053483          	ld	s1,0(a0)

    //MemoryAllocator::free(elem);
    mem_free(elem);
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	808080e7          	jalr	-2040(ra) # 8000129c <_Z8mem_freePv>

    first=first->next;
    80001a9c:	00004717          	auipc	a4,0x4
    80001aa0:	f2c70713          	addi	a4,a4,-212 # 800059c8 <_ZN9Scheduler5firstE>
    80001aa4:	00073783          	ld	a5,0(a4)
    80001aa8:	0087b783          	ld	a5,8(a5)
    80001aac:	00f73023          	sd	a5,0(a4)
    if(first==nullptr)last=nullptr;
    80001ab0:	00078e63          	beqz	a5,80001acc <_ZN9Scheduler3getEv+0x5c>

    return t;
}
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	01813083          	ld	ra,24(sp)
    80001abc:	01013403          	ld	s0,16(sp)
    80001ac0:	00813483          	ld	s1,8(sp)
    80001ac4:	02010113          	addi	sp,sp,32
    80001ac8:	00008067          	ret
    if(first==nullptr)last=nullptr;
    80001acc:	00004797          	auipc	a5,0x4
    80001ad0:	f007b223          	sd	zero,-252(a5) # 800059d0 <_ZN9Scheduler4lastE>
    80001ad4:	fe1ff06f          	j	80001ab4 <_ZN9Scheduler3getEv+0x44>
    if(first==nullptr)return nullptr;
    80001ad8:	00050493          	mv	s1,a0
    80001adc:	fd9ff06f          	j	80001ab4 <_ZN9Scheduler3getEv+0x44>

0000000080001ae0 <main>:
#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/print.hpp"
#include "../src/workers.hpp"

int main(){
    80001ae0:	fc010113          	addi	sp,sp,-64
    80001ae4:	02113c23          	sd	ra,56(sp)
    80001ae8:	02813823          	sd	s0,48(sp)
    80001aec:	02913423          	sd	s1,40(sp)
    80001af0:	03213023          	sd	s2,32(sp)
    80001af4:	04010413          	addi	s0,sp,64

    __asm__ volatile ("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    80001af8:	00004797          	auipc	a5,0x4
    80001afc:	e587b783          	ld	a5,-424(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b00:	10579073          	csrw	stvec,a5
    //dozvoljavanje prekida
    //__asm__ volatile ("csrs sstatus, 0x02");

    MemoryAllocator::initialize();
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	424080e7          	jalr	1060(ra) # 80001f28 <_ZN15MemoryAllocator10initializeEv>

    PCB *threads[3];

    threads[0]= PCB::createThread(nullptr, nullptr);
    80001b0c:	00000593          	li	a1,0
    80001b10:	00000513          	li	a0,0
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	a64080e7          	jalr	-1436(ra) # 80001578 <_ZN3PCB12createThreadEPFvvEPm>
    80001b1c:	fca43423          	sd	a0,-56(s0)
    PCB::running=threads[0];//main nit
    80001b20:	00004797          	auipc	a5,0x4
    80001b24:	e487b783          	ld	a5,-440(a5) # 80005968 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b28:	00a7b023          	sd	a0,0(a5)

    uint64 *stack1=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001b2c:	00001537          	lui	a0,0x1
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	72c080e7          	jalr	1836(ra) # 8000125c <_Z9mem_allocm>
    80001b38:	00050913          	mv	s2,a0
    uint64 *stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001b3c:	00001537          	lui	a0,0x1
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	71c080e7          	jalr	1820(ra) # 8000125c <_Z9mem_allocm>
    80001b48:	00050493          	mv	s1,a0

    threads[1]= PCB::createThread(workerBodyA, stack1);
    80001b4c:	00090593          	mv	a1,s2
    80001b50:	00004517          	auipc	a0,0x4
    80001b54:	e0853503          	ld	a0,-504(a0) # 80005958 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	a20080e7          	jalr	-1504(ra) # 80001578 <_ZN3PCB12createThreadEPFvvEPm>
    80001b60:	fca43823          	sd	a0,-48(s0)
    threads[2]= PCB::createThread(workerBodyB, stack2);
    80001b64:	00048593          	mv	a1,s1
    80001b68:	00004517          	auipc	a0,0x4
    80001b6c:	de053503          	ld	a0,-544(a0) # 80005948 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	a08080e7          	jalr	-1528(ra) # 80001578 <_ZN3PCB12createThreadEPFvvEPm>
    80001b78:	fca43c23          	sd	a0,-40(s0)
    80001b7c:	00c0006f          	j	80001b88 <main+0xa8>

    while(!(threads[1]->isFinished() && threads[2]->isFinished()))
        PCB::yield();
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	94c080e7          	jalr	-1716(ra) # 800014cc <_ZN3PCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished()))
    80001b88:	fd043783          	ld	a5,-48(s0)
        return finished;
    80001b8c:	0207c783          	lbu	a5,32(a5)
    80001b90:	fe0788e3          	beqz	a5,80001b80 <main+0xa0>
    80001b94:	fd843783          	ld	a5,-40(s0)
    80001b98:	0207c783          	lbu	a5,32(a5)
    80001b9c:	fe0782e3          	beqz	a5,80001b80 <main+0xa0>
    80001ba0:	fc840493          	addi	s1,s0,-56
    80001ba4:	0080006f          	j	80001bac <main+0xcc>

    for(auto &thread :threads)
    80001ba8:	00848493          	addi	s1,s1,8
    80001bac:	fe040793          	addi	a5,s0,-32
    80001bb0:	02f48463          	beq	s1,a5,80001bd8 <main+0xf8>
        delete thread;
    80001bb4:	0004b903          	ld	s2,0(s1)
    80001bb8:	fe0908e3          	beqz	s2,80001ba8 <main+0xc8>
    80001bbc:	00090513          	mv	a0,s2
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	a3c080e7          	jalr	-1476(ra) # 800015fc <_ZN3PCBD1Ev>
    80001bc8:	00090513          	mv	a0,s2
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	088080e7          	jalr	136(ra) # 80001c54 <_ZdlPv>
    80001bd4:	fd5ff06f          	j	80001ba8 <main+0xc8>
    printString("Finished\n");
    80001bd8:	00003517          	auipc	a0,0x3
    80001bdc:	4a050513          	addi	a0,a0,1184 # 80005078 <CONSOLE_STATUS+0x68>
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	3cc080e7          	jalr	972(ra) # 80001fac <_Z11printStringPKc>


    return 0;
    80001be8:	00000513          	li	a0,0
    80001bec:	03813083          	ld	ra,56(sp)
    80001bf0:	03013403          	ld	s0,48(sp)
    80001bf4:	02813483          	ld	s1,40(sp)
    80001bf8:	02013903          	ld	s2,32(sp)
    80001bfc:	04010113          	addi	sp,sp,64
    80001c00:	00008067          	ret

0000000080001c04 <_Znwm>:
// Created by os on 7/21/23.
// sa vezbi
#include "../h/syscall_c.hpp"

void *operator new(uint64 n)
{
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	648080e7          	jalr	1608(ra) # 8000125c <_Z9mem_allocm>
}
    80001c1c:	00813083          	ld	ra,8(sp)
    80001c20:	00013403          	ld	s0,0(sp)
    80001c24:	01010113          	addi	sp,sp,16
    80001c28:	00008067          	ret

0000000080001c2c <_Znam>:

void *operator new[](uint64 n)
{
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00113423          	sd	ra,8(sp)
    80001c34:	00813023          	sd	s0,0(sp)
    80001c38:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	620080e7          	jalr	1568(ra) # 8000125c <_Z9mem_allocm>
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZdlPv>:

void operator delete(void *p)noexcept{
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	638080e7          	jalr	1592(ra) # 8000129c <_Z8mem_freePv>
}
    80001c6c:	00813083          	ld	ra,8(sp)
    80001c70:	00013403          	ld	s0,0(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZdaPv>:

void operator delete[](void *p)noexcept{
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00113423          	sd	ra,8(sp)
    80001c84:	00813023          	sd	s0,0(sp)
    80001c88:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c8c:	fffff097          	auipc	ra,0xfffff
    80001c90:	610080e7          	jalr	1552(ra) # 8000129c <_Z8mem_freePv>
    80001c94:	00813083          	ld	ra,8(sp)
    80001c98:	00013403          	ld	s0,0(sp)
    80001c9c:	01010113          	addi	sp,sp,16
    80001ca0:	00008067          	ret

0000000080001ca4 <_Z41__static_initialization_and_destruction_0ii>:
void MemoryAllocator::initialize()
{
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    firstFreeSeg->next=nullptr;
    80001ca4:	ff010113          	addi	sp,sp,-16
    80001ca8:	00813423          	sd	s0,8(sp)
    80001cac:	01010413          	addi	s0,sp,16
    80001cb0:	00100793          	li	a5,1
    80001cb4:	00f50863          	beq	a0,a5,80001cc4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret
    80001cc4:	000107b7          	lui	a5,0x10
    80001cc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ccc:	fef596e3          	bne	a1,a5,80001cb8 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocator::MemSeg* MemoryAllocator::firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80001cd0:	00004797          	auipc	a5,0x4
    80001cd4:	c707b783          	ld	a5,-912(a5) # 80005940 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001cd8:	0007b783          	ld	a5,0(a5)
    80001cdc:	00004717          	auipc	a4,0x4
    80001ce0:	cef73e23          	sd	a5,-772(a4) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001ce4:	fd5ff06f          	j	80001cb8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ce8 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t sz) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    if(sz<=0)return nullptr;
    80001cf4:	0a050c63          	beqz	a0,80001dac <_ZN15MemoryAllocator5allocEm+0xc4>
    80001cf8:	00050693          	mv	a3,a0
    MemSeg* free=firstFreeSeg, *prev=nullptr;
    80001cfc:	00004797          	auipc	a5,0x4
    80001d00:	cdc7b783          	ld	a5,-804(a5) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001d04:	00000613          	li	a2,0
    while(free){
    80001d08:	00078e63          	beqz	a5,80001d24 <_ZN15MemoryAllocator5allocEm+0x3c>
        if(free->size-1>=sz)
    80001d0c:	0007b703          	ld	a4,0(a5)
    80001d10:	fff70713          	addi	a4,a4,-1
    80001d14:	00d77863          	bgeu	a4,a3,80001d24 <_ZN15MemoryAllocator5allocEm+0x3c>
        prev=free;
    80001d18:	00078613          	mv	a2,a5
        free=free->next;
    80001d1c:	0087b783          	ld	a5,8(a5)
    while(free){
    80001d20:	fe9ff06f          	j	80001d08 <_ZN15MemoryAllocator5allocEm+0x20>
    if(!free)return nullptr;
    80001d24:	08078863          	beqz	a5,80001db4 <_ZN15MemoryAllocator5allocEm+0xcc>
    MemSeg *taken=free, *ret=(MemSeg*)((char*)free+MEM_BLOCK_SIZE);
    80001d28:	04078513          	addi	a0,a5,64
    size_t oldFreeSize=free->size;
    80001d2c:	0007b703          	ld	a4,0(a5)
    MemSeg* next=free->next;
    80001d30:	0087b803          	ld	a6,8(a5)
    if(free->size-1==sz || ((free->size-1-1)==sz)){
    80001d34:	fff70593          	addi	a1,a4,-1
    80001d38:	04d58063          	beq	a1,a3,80001d78 <_ZN15MemoryAllocator5allocEm+0x90>
    80001d3c:	ffe70593          	addi	a1,a4,-2
    80001d40:	02d58c63          	beq	a1,a3,80001d78 <_ZN15MemoryAllocator5allocEm+0x90>
    else if(oldFreeSize-sz-1>=2){
    80001d44:	40d70733          	sub	a4,a4,a3
    80001d48:	fff70713          	addi	a4,a4,-1
    80001d4c:	00100593          	li	a1,1
    80001d50:	02e5fa63          	bgeu	a1,a4,80001d84 <_ZN15MemoryAllocator5allocEm+0x9c>
        free=(MemSeg*)((char*)free+(sz+1)*MEM_BLOCK_SIZE);
    80001d54:	00168693          	addi	a3,a3,1
    80001d58:	00669593          	slli	a1,a3,0x6
    80001d5c:	00b785b3          	add	a1,a5,a1
        free->size=oldFreeSize-sz-1;
    80001d60:	00e5b023          	sd	a4,0(a1)
        free->next=next;
    80001d64:	0105b423          	sd	a6,8(a1)
        if(prev!=nullptr){
    80001d68:	02060c63          	beqz	a2,80001da0 <_ZN15MemoryAllocator5allocEm+0xb8>
            prev->next=free;
    80001d6c:	00b63423          	sd	a1,8(a2)
        taken->size=sz+1;
    80001d70:	00d7b023          	sd	a3,0(a5)
    80001d74:	0100006f          	j	80001d84 <_ZN15MemoryAllocator5allocEm+0x9c>
        if(prev!=nullptr){
    80001d78:	00060e63          	beqz	a2,80001d94 <_ZN15MemoryAllocator5allocEm+0xac>
            prev->next=free->next;
    80001d7c:	01063423          	sd	a6,8(a2)
        taken->size=oldFreeSize;
    80001d80:	00e7b023          	sd	a4,0(a5)
    taken->next=nullptr;
    80001d84:	0007b423          	sd	zero,8(a5)
}
    80001d88:	00813403          	ld	s0,8(sp)
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret
            firstFreeSeg=free->next;
    80001d94:	00004697          	auipc	a3,0x4
    80001d98:	c506b223          	sd	a6,-956(a3) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001d9c:	fe5ff06f          	j	80001d80 <_ZN15MemoryAllocator5allocEm+0x98>
            firstFreeSeg=free;
    80001da0:	00004717          	auipc	a4,0x4
    80001da4:	c2b73c23          	sd	a1,-968(a4) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001da8:	fc9ff06f          	j	80001d70 <_ZN15MemoryAllocator5allocEm+0x88>
    if(sz<=0)return nullptr;
    80001dac:	00000513          	li	a0,0
    80001db0:	fd9ff06f          	j	80001d88 <_ZN15MemoryAllocator5allocEm+0xa0>
    if(!free)return nullptr;
    80001db4:	00078513          	mv	a0,a5
    80001db8:	fd1ff06f          	j	80001d88 <_ZN15MemoryAllocator5allocEm+0xa0>

0000000080001dbc <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *ptr) {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80001dc8:	14050c63          	beqz	a0,80001f20 <_ZN15MemoryAllocator4freeEPv+0x164>
    MemSeg* freeFromAddr=(MemSeg*)((char*)ptr-MEM_BLOCK_SIZE);
    80001dcc:	fc050713          	addi	a4,a0,-64
    if(!firstFreeSeg){
    80001dd0:	00004797          	auipc	a5,0x4
    80001dd4:	c087b783          	ld	a5,-1016(a5) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001dd8:	02078a63          	beqz	a5,80001e0c <_ZN15MemoryAllocator4freeEPv+0x50>
    if(firstFreeSeg>freeFromAddr){
    80001ddc:	06f77863          	bgeu	a4,a5,80001e4c <_ZN15MemoryAllocator4freeEPv+0x90>
        if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)firstFreeSeg){
    80001de0:	fc053603          	ld	a2,-64(a0)
    80001de4:	00661693          	slli	a3,a2,0x6
    80001de8:	00d706b3          	add	a3,a4,a3
    80001dec:	02d78a63          	beq	a5,a3,80001e20 <_ZN15MemoryAllocator4freeEPv+0x64>
        freeFromAddr->next=firstFreeSeg;
    80001df0:	fcf53423          	sd	a5,-56(a0)
        firstFreeSeg=freeFromAddr;
    80001df4:	00004797          	auipc	a5,0x4
    80001df8:	bee7b223          	sd	a4,-1052(a5) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80001dfc:	00000513          	li	a0,0
}
    80001e00:	00813403          	ld	s0,8(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret
        freeFromAddr->next=nullptr;
    80001e0c:	fc053423          	sd	zero,-56(a0)
        firstFreeSeg=freeFromAddr;
    80001e10:	00004797          	auipc	a5,0x4
    80001e14:	bce7b423          	sd	a4,-1080(a5) # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
        return 0;
    80001e18:	00000513          	li	a0,0
    80001e1c:	fe5ff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
            freeFromAddr->size+=firstFreeSeg->size;
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	00f60633          	add	a2,a2,a5
    80001e28:	fcc53023          	sd	a2,-64(a0)
            freeFromAddr->next=firstFreeSeg->next;
    80001e2c:	00004797          	auipc	a5,0x4
    80001e30:	bac78793          	addi	a5,a5,-1108 # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001e34:	0007b683          	ld	a3,0(a5)
    80001e38:	0086b683          	ld	a3,8(a3)
    80001e3c:	fcd53423          	sd	a3,-56(a0)
            firstFreeSeg=freeFromAddr;
    80001e40:	00e7b023          	sd	a4,0(a5)
            return 0;
    80001e44:	00000513          	li	a0,0
    80001e48:	fb9ff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
    MemSeg* nextFree=firstFreeSeg, *prev=nullptr;
    80001e4c:	00000693          	li	a3,0
    while(nextFree){
    80001e50:	00078a63          	beqz	a5,80001e64 <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(nextFree>freeFromAddr)break;
    80001e54:	00f76863          	bltu	a4,a5,80001e64 <_ZN15MemoryAllocator4freeEPv+0xa8>
        prev=nextFree;
    80001e58:	00078693          	mv	a3,a5
        nextFree=nextFree->next;
    80001e5c:	0087b783          	ld	a5,8(a5)
    while(nextFree){
    80001e60:	ff1ff06f          	j	80001e50 <_ZN15MemoryAllocator4freeEPv+0x94>
    if(nextFree==nullptr){
    80001e64:	02078a63          	beqz	a5,80001e98 <_ZN15MemoryAllocator4freeEPv+0xdc>
    if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80001e68:	0006b583          	ld	a1,0(a3)
    80001e6c:	00659613          	slli	a2,a1,0x6
    80001e70:	00c68633          	add	a2,a3,a2
    80001e74:	04e60c63          	beq	a2,a4,80001ecc <_ZN15MemoryAllocator4freeEPv+0x110>
    prev->next=freeFromAddr;
    80001e78:	00e6b423          	sd	a4,8(a3)
    if((char*)freeFromAddr+freeFromAddr->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80001e7c:	fc053683          	ld	a3,-64(a0)
    80001e80:	00669613          	slli	a2,a3,0x6
    80001e84:	00c70733          	add	a4,a4,a2
    80001e88:	06f70e63          	beq	a4,a5,80001f04 <_ZN15MemoryAllocator4freeEPv+0x148>
    freeFromAddr->next=nextFree;
    80001e8c:	fcf53423          	sd	a5,-56(a0)
    return 0;
    80001e90:	00000513          	li	a0,0
    80001e94:	f6dff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)freeFromAddr){
    80001e98:	0006b603          	ld	a2,0(a3)
    80001e9c:	00661793          	slli	a5,a2,0x6
    80001ea0:	00f687b3          	add	a5,a3,a5
    80001ea4:	00e78a63          	beq	a5,a4,80001eb8 <_ZN15MemoryAllocator4freeEPv+0xfc>
            freeFromAddr->next=nullptr;
    80001ea8:	fc053423          	sd	zero,-56(a0)
            prev->next=freeFromAddr;
    80001eac:	00e6b423          	sd	a4,8(a3)
            return 0;
    80001eb0:	00000513          	li	a0,0
    80001eb4:	f4dff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=freeFromAddr->size;
    80001eb8:	fc053783          	ld	a5,-64(a0)
    80001ebc:	00f60633          	add	a2,a2,a5
    80001ec0:	00c6b023          	sd	a2,0(a3)
            return 0;
    80001ec4:	00000513          	li	a0,0
    80001ec8:	f39ff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
        prev->size+=freeFromAddr->size;
    80001ecc:	fc053703          	ld	a4,-64(a0)
    80001ed0:	00e585b3          	add	a1,a1,a4
    80001ed4:	00b6b023          	sd	a1,0(a3)
        if((char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)nextFree){
    80001ed8:	00659713          	slli	a4,a1,0x6
    80001edc:	00e68733          	add	a4,a3,a4
    80001ee0:	00f70663          	beq	a4,a5,80001eec <_ZN15MemoryAllocator4freeEPv+0x130>
        return 0;
    80001ee4:	00000513          	li	a0,0
    80001ee8:	f19ff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
            prev->size+=nextFree->size;
    80001eec:	0007b703          	ld	a4,0(a5)
    80001ef0:	00e585b3          	add	a1,a1,a4
    80001ef4:	00b6b023          	sd	a1,0(a3)
            prev->next=nextFree->next;
    80001ef8:	0087b783          	ld	a5,8(a5)
    80001efc:	00f6b423          	sd	a5,8(a3)
    80001f00:	fe5ff06f          	j	80001ee4 <_ZN15MemoryAllocator4freeEPv+0x128>
        freeFromAddr->size+=nextFree->size;
    80001f04:	0007b703          	ld	a4,0(a5)
    80001f08:	00e686b3          	add	a3,a3,a4
    80001f0c:	fcd53023          	sd	a3,-64(a0)
        freeFromAddr->next=nextFree->next;
    80001f10:	0087b783          	ld	a5,8(a5)
    80001f14:	fcf53423          	sd	a5,-56(a0)
        return 0;
    80001f18:	00000513          	li	a0,0
    80001f1c:	ee5ff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>
    if(!ptr)return -1;
    80001f20:	fff00513          	li	a0,-1
    80001f24:	eddff06f          	j	80001e00 <_ZN15MemoryAllocator4freeEPv+0x44>

0000000080001f28 <_ZN15MemoryAllocator10initializeEv>:
{
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    firstFreeSeg=(MemSeg*)HEAP_START_ADDR;
    80001f34:	00004797          	auipc	a5,0x4
    80001f38:	a0c7b783          	ld	a5,-1524(a5) # 80005940 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f3c:	0007b703          	ld	a4,0(a5)
    80001f40:	00004697          	auipc	a3,0x4
    80001f44:	a9868693          	addi	a3,a3,-1384 # 800059d8 <_ZN15MemoryAllocator12firstFreeSegE>
    80001f48:	00e6b023          	sd	a4,0(a3)
    firstFreeSeg->size=(size_t)(((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE);
    80001f4c:	00004797          	auipc	a5,0x4
    80001f50:	a247b783          	ld	a5,-1500(a5) # 80005970 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001f54:	0007b783          	ld	a5,0(a5)
    80001f58:	40e787b3          	sub	a5,a5,a4
    80001f5c:	0067d793          	srli	a5,a5,0x6
    80001f60:	00f73023          	sd	a5,0(a4)
    firstFreeSeg->next=nullptr;
    80001f64:	0006b783          	ld	a5,0(a3)
    80001f68:	0007b423          	sd	zero,8(a5)
    80001f6c:	00813403          	ld	s0,8(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_GLOBAL__sub_I__ZN15MemoryAllocator12firstFreeSegE>:
    80001f78:	ff010113          	addi	sp,sp,-16
    80001f7c:	00113423          	sd	ra,8(sp)
    80001f80:	00813023          	sd	s0,0(sp)
    80001f84:	01010413          	addi	s0,sp,16
    80001f88:	000105b7          	lui	a1,0x10
    80001f8c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f90:	00100513          	li	a0,1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	d10080e7          	jalr	-752(ra) # 80001ca4 <_Z41__static_initialization_and_destruction_0ii>
    80001f9c:	00813083          	ld	ra,8(sp)
    80001fa0:	00013403          	ld	s0,0(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_Z11printStringPKc>:

#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/print.hpp"

void printString(char const *string){
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	02010413          	addi	s0,sp,32
    80001fc0:	00050493          	mv	s1,a0
    while(*string!='\0'){
    80001fc4:	0004c503          	lbu	a0,0(s1)
    80001fc8:	00050a63          	beqz	a0,80001fdc <_Z11printStringPKc+0x30>
        __putc(*string);
    80001fcc:	00002097          	auipc	ra,0x2
    80001fd0:	170080e7          	jalr	368(ra) # 8000413c <__putc>
        string++;
    80001fd4:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80001fd8:	fedff06f          	j	80001fc4 <_Z11printStringPKc+0x18>
    }
}
    80001fdc:	01813083          	ld	ra,24(sp)
    80001fe0:	01013403          	ld	s0,16(sp)
    80001fe4:	00813483          	ld	s1,8(sp)
    80001fe8:	02010113          	addi	sp,sp,32
    80001fec:	00008067          	ret

0000000080001ff0 <_Z12printIntegerm>:
void printInteger(uint64 integer){
    80001ff0:	fd010113          	addi	sp,sp,-48
    80001ff4:	02113423          	sd	ra,40(sp)
    80001ff8:	02813023          	sd	s0,32(sp)
    80001ffc:	00913c23          	sd	s1,24(sp)
    80002000:	03010413          	addi	s0,sp,48
    if(integer<0){
        neg=1;
        x=-integer;
    }else
    {
        x=integer;
    80002004:	0005051b          	sext.w	a0,a0
    }
    i=0;
    80002008:	00000493          	li	s1,0
    do{
        buf[i++]=digits[x%10];
    8000200c:	00a00613          	li	a2,10
    80002010:	02c5773b          	remuw	a4,a0,a2
    80002014:	02071693          	slli	a3,a4,0x20
    80002018:	0206d693          	srli	a3,a3,0x20
    8000201c:	00003717          	auipc	a4,0x3
    80002020:	06c70713          	addi	a4,a4,108 # 80005088 <_ZZ12printIntegermE6digits>
    80002024:	00d70733          	add	a4,a4,a3
    80002028:	00074703          	lbu	a4,0(a4)
    8000202c:	fe040693          	addi	a3,s0,-32
    80002030:	009687b3          	add	a5,a3,s1
    80002034:	0014849b          	addiw	s1,s1,1
    80002038:	fee78823          	sb	a4,-16(a5)

    }while((x/=10)!=0);
    8000203c:	0005071b          	sext.w	a4,a0
    80002040:	02c5553b          	divuw	a0,a0,a2
    80002044:	00900793          	li	a5,9
    80002048:	fce7e2e3          	bltu	a5,a4,8000200c <_Z12printIntegerm+0x1c>
    if(neg){
        buf[i++]='-';
    }
    while(--i>=0)
    8000204c:	fff4849b          	addiw	s1,s1,-1
    80002050:	0004ce63          	bltz	s1,8000206c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002054:	fe040793          	addi	a5,s0,-32
    80002058:	009787b3          	add	a5,a5,s1
    8000205c:	ff07c503          	lbu	a0,-16(a5)
    80002060:	00002097          	auipc	ra,0x2
    80002064:	0dc080e7          	jalr	220(ra) # 8000413c <__putc>
    80002068:	fe5ff06f          	j	8000204c <_Z12printIntegerm+0x5c>
}
    8000206c:	02813083          	ld	ra,40(sp)
    80002070:	02013403          	ld	s0,32(sp)
    80002074:	01813483          	ld	s1,24(sp)
    80002078:	03010113          	addi	sp,sp,48
    8000207c:	00008067          	ret

0000000080002080 <start>:
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
    8000208c:	300027f3          	csrr	a5,mstatus
    80002090:	ffffe737          	lui	a4,0xffffe
    80002094:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bbf>
    80002098:	00e7f7b3          	and	a5,a5,a4
    8000209c:	00001737          	lui	a4,0x1
    800020a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800020a4:	00e7e7b3          	or	a5,a5,a4
    800020a8:	30079073          	csrw	mstatus,a5
    800020ac:	00000797          	auipc	a5,0x0
    800020b0:	16078793          	addi	a5,a5,352 # 8000220c <system_main>
    800020b4:	34179073          	csrw	mepc,a5
    800020b8:	00000793          	li	a5,0
    800020bc:	18079073          	csrw	satp,a5
    800020c0:	000107b7          	lui	a5,0x10
    800020c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020c8:	30279073          	csrw	medeleg,a5
    800020cc:	30379073          	csrw	mideleg,a5
    800020d0:	104027f3          	csrr	a5,sie
    800020d4:	2227e793          	ori	a5,a5,546
    800020d8:	10479073          	csrw	sie,a5
    800020dc:	fff00793          	li	a5,-1
    800020e0:	00a7d793          	srli	a5,a5,0xa
    800020e4:	3b079073          	csrw	pmpaddr0,a5
    800020e8:	00f00793          	li	a5,15
    800020ec:	3a079073          	csrw	pmpcfg0,a5
    800020f0:	f14027f3          	csrr	a5,mhartid
    800020f4:	0200c737          	lui	a4,0x200c
    800020f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020fc:	0007869b          	sext.w	a3,a5
    80002100:	00269713          	slli	a4,a3,0x2
    80002104:	000f4637          	lui	a2,0xf4
    80002108:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000210c:	00d70733          	add	a4,a4,a3
    80002110:	0037979b          	slliw	a5,a5,0x3
    80002114:	020046b7          	lui	a3,0x2004
    80002118:	00d787b3          	add	a5,a5,a3
    8000211c:	00c585b3          	add	a1,a1,a2
    80002120:	00371693          	slli	a3,a4,0x3
    80002124:	00004717          	auipc	a4,0x4
    80002128:	8bc70713          	addi	a4,a4,-1860 # 800059e0 <timer_scratch>
    8000212c:	00b7b023          	sd	a1,0(a5)
    80002130:	00d70733          	add	a4,a4,a3
    80002134:	00f73c23          	sd	a5,24(a4)
    80002138:	02c73023          	sd	a2,32(a4)
    8000213c:	34071073          	csrw	mscratch,a4
    80002140:	00000797          	auipc	a5,0x0
    80002144:	6e078793          	addi	a5,a5,1760 # 80002820 <timervec>
    80002148:	30579073          	csrw	mtvec,a5
    8000214c:	300027f3          	csrr	a5,mstatus
    80002150:	0087e793          	ori	a5,a5,8
    80002154:	30079073          	csrw	mstatus,a5
    80002158:	304027f3          	csrr	a5,mie
    8000215c:	0807e793          	ori	a5,a5,128
    80002160:	30479073          	csrw	mie,a5
    80002164:	f14027f3          	csrr	a5,mhartid
    80002168:	0007879b          	sext.w	a5,a5
    8000216c:	00078213          	mv	tp,a5
    80002170:	30200073          	mret
    80002174:	00813403          	ld	s0,8(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <timerinit>:
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00813423          	sd	s0,8(sp)
    80002188:	01010413          	addi	s0,sp,16
    8000218c:	f14027f3          	csrr	a5,mhartid
    80002190:	0200c737          	lui	a4,0x200c
    80002194:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002198:	0007869b          	sext.w	a3,a5
    8000219c:	00269713          	slli	a4,a3,0x2
    800021a0:	000f4637          	lui	a2,0xf4
    800021a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021a8:	00d70733          	add	a4,a4,a3
    800021ac:	0037979b          	slliw	a5,a5,0x3
    800021b0:	020046b7          	lui	a3,0x2004
    800021b4:	00d787b3          	add	a5,a5,a3
    800021b8:	00c585b3          	add	a1,a1,a2
    800021bc:	00371693          	slli	a3,a4,0x3
    800021c0:	00004717          	auipc	a4,0x4
    800021c4:	82070713          	addi	a4,a4,-2016 # 800059e0 <timer_scratch>
    800021c8:	00b7b023          	sd	a1,0(a5)
    800021cc:	00d70733          	add	a4,a4,a3
    800021d0:	00f73c23          	sd	a5,24(a4)
    800021d4:	02c73023          	sd	a2,32(a4)
    800021d8:	34071073          	csrw	mscratch,a4
    800021dc:	00000797          	auipc	a5,0x0
    800021e0:	64478793          	addi	a5,a5,1604 # 80002820 <timervec>
    800021e4:	30579073          	csrw	mtvec,a5
    800021e8:	300027f3          	csrr	a5,mstatus
    800021ec:	0087e793          	ori	a5,a5,8
    800021f0:	30079073          	csrw	mstatus,a5
    800021f4:	304027f3          	csrr	a5,mie
    800021f8:	0807e793          	ori	a5,a5,128
    800021fc:	30479073          	csrw	mie,a5
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <system_main>:
    8000220c:	fe010113          	addi	sp,sp,-32
    80002210:	00813823          	sd	s0,16(sp)
    80002214:	00913423          	sd	s1,8(sp)
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	02010413          	addi	s0,sp,32
    80002220:	00000097          	auipc	ra,0x0
    80002224:	0c4080e7          	jalr	196(ra) # 800022e4 <cpuid>
    80002228:	00003497          	auipc	s1,0x3
    8000222c:	76848493          	addi	s1,s1,1896 # 80005990 <started>
    80002230:	02050263          	beqz	a0,80002254 <system_main+0x48>
    80002234:	0004a783          	lw	a5,0(s1)
    80002238:	0007879b          	sext.w	a5,a5
    8000223c:	fe078ce3          	beqz	a5,80002234 <system_main+0x28>
    80002240:	0ff0000f          	fence
    80002244:	00003517          	auipc	a0,0x3
    80002248:	e8450513          	addi	a0,a0,-380 # 800050c8 <_ZZ12printIntegermE6digits+0x40>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	a70080e7          	jalr	-1424(ra) # 80002cbc <panic>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	9c4080e7          	jalr	-1596(ra) # 80002c18 <consoleinit>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	150080e7          	jalr	336(ra) # 800033ac <printfinit>
    80002264:	00003517          	auipc	a0,0x3
    80002268:	e1c50513          	addi	a0,a0,-484 # 80005080 <CONSOLE_STATUS+0x70>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	aac080e7          	jalr	-1364(ra) # 80002d18 <__printf>
    80002274:	00003517          	auipc	a0,0x3
    80002278:	e2450513          	addi	a0,a0,-476 # 80005098 <_ZZ12printIntegermE6digits+0x10>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	a9c080e7          	jalr	-1380(ra) # 80002d18 <__printf>
    80002284:	00003517          	auipc	a0,0x3
    80002288:	dfc50513          	addi	a0,a0,-516 # 80005080 <CONSOLE_STATUS+0x70>
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	a8c080e7          	jalr	-1396(ra) # 80002d18 <__printf>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	4a4080e7          	jalr	1188(ra) # 80003738 <kinit>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	148080e7          	jalr	328(ra) # 800023e4 <trapinit>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	16c080e7          	jalr	364(ra) # 80002410 <trapinithart>
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	5b4080e7          	jalr	1460(ra) # 80002860 <plicinit>
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	5d4080e7          	jalr	1492(ra) # 80002888 <plicinithart>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	078080e7          	jalr	120(ra) # 80002334 <userinit>
    800022c4:	0ff0000f          	fence
    800022c8:	00100793          	li	a5,1
    800022cc:	00003517          	auipc	a0,0x3
    800022d0:	de450513          	addi	a0,a0,-540 # 800050b0 <_ZZ12printIntegermE6digits+0x28>
    800022d4:	00f4a023          	sw	a5,0(s1)
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	a40080e7          	jalr	-1472(ra) # 80002d18 <__printf>
    800022e0:	0000006f          	j	800022e0 <system_main+0xd4>

00000000800022e4 <cpuid>:
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    800022f0:	00020513          	mv	a0,tp
    800022f4:	00813403          	ld	s0,8(sp)
    800022f8:	0005051b          	sext.w	a0,a0
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <mycpu>:
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00020793          	mv	a5,tp
    80002314:	00813403          	ld	s0,8(sp)
    80002318:	0007879b          	sext.w	a5,a5
    8000231c:	00779793          	slli	a5,a5,0x7
    80002320:	00004517          	auipc	a0,0x4
    80002324:	6f050513          	addi	a0,a0,1776 # 80006a10 <cpus>
    80002328:	00f50533          	add	a0,a0,a5
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <userinit>:
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	fffff317          	auipc	t1,0xfffff
    8000234c:	79830067          	jr	1944(t1) # 80001ae0 <main>

0000000080002350 <either_copyout>:
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	00113423          	sd	ra,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	02051663          	bnez	a0,8000238c <either_copyout+0x3c>
    80002364:	00058513          	mv	a0,a1
    80002368:	00060593          	mv	a1,a2
    8000236c:	0006861b          	sext.w	a2,a3
    80002370:	00002097          	auipc	ra,0x2
    80002374:	c54080e7          	jalr	-940(ra) # 80003fc4 <__memmove>
    80002378:	00813083          	ld	ra,8(sp)
    8000237c:	00013403          	ld	s0,0(sp)
    80002380:	00000513          	li	a0,0
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret
    8000238c:	00003517          	auipc	a0,0x3
    80002390:	d6450513          	addi	a0,a0,-668 # 800050f0 <_ZZ12printIntegermE6digits+0x68>
    80002394:	00001097          	auipc	ra,0x1
    80002398:	928080e7          	jalr	-1752(ra) # 80002cbc <panic>

000000008000239c <either_copyin>:
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    800023ac:	02059463          	bnez	a1,800023d4 <either_copyin+0x38>
    800023b0:	00060593          	mv	a1,a2
    800023b4:	0006861b          	sext.w	a2,a3
    800023b8:	00002097          	auipc	ra,0x2
    800023bc:	c0c080e7          	jalr	-1012(ra) # 80003fc4 <__memmove>
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	00000513          	li	a0,0
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret
    800023d4:	00003517          	auipc	a0,0x3
    800023d8:	d4450513          	addi	a0,a0,-700 # 80005118 <_ZZ12printIntegermE6digits+0x90>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	8e0080e7          	jalr	-1824(ra) # 80002cbc <panic>

00000000800023e4 <trapinit>:
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    800023f0:	00813403          	ld	s0,8(sp)
    800023f4:	00003597          	auipc	a1,0x3
    800023f8:	d4c58593          	addi	a1,a1,-692 # 80005140 <_ZZ12printIntegermE6digits+0xb8>
    800023fc:	00004517          	auipc	a0,0x4
    80002400:	69450513          	addi	a0,a0,1684 # 80006a90 <tickslock>
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00001317          	auipc	t1,0x1
    8000240c:	5c030067          	jr	1472(t1) # 800039c8 <initlock>

0000000080002410 <trapinithart>:
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    8000241c:	00000797          	auipc	a5,0x0
    80002420:	2f478793          	addi	a5,a5,756 # 80002710 <kernelvec>
    80002424:	10579073          	csrw	stvec,a5
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <usertrap>:
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813423          	sd	s0,8(sp)
    8000243c:	01010413          	addi	s0,sp,16
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <usertrapret>:
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <kerneltrap>:
    80002464:	fe010113          	addi	sp,sp,-32
    80002468:	00813823          	sd	s0,16(sp)
    8000246c:	00113c23          	sd	ra,24(sp)
    80002470:	00913423          	sd	s1,8(sp)
    80002474:	02010413          	addi	s0,sp,32
    80002478:	142025f3          	csrr	a1,scause
    8000247c:	100027f3          	csrr	a5,sstatus
    80002480:	0027f793          	andi	a5,a5,2
    80002484:	10079c63          	bnez	a5,8000259c <kerneltrap+0x138>
    80002488:	142027f3          	csrr	a5,scause
    8000248c:	0207ce63          	bltz	a5,800024c8 <kerneltrap+0x64>
    80002490:	00003517          	auipc	a0,0x3
    80002494:	cf850513          	addi	a0,a0,-776 # 80005188 <_ZZ12printIntegermE6digits+0x100>
    80002498:	00001097          	auipc	ra,0x1
    8000249c:	880080e7          	jalr	-1920(ra) # 80002d18 <__printf>
    800024a0:	141025f3          	csrr	a1,sepc
    800024a4:	14302673          	csrr	a2,stval
    800024a8:	00003517          	auipc	a0,0x3
    800024ac:	cf050513          	addi	a0,a0,-784 # 80005198 <_ZZ12printIntegermE6digits+0x110>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	868080e7          	jalr	-1944(ra) # 80002d18 <__printf>
    800024b8:	00003517          	auipc	a0,0x3
    800024bc:	cf850513          	addi	a0,a0,-776 # 800051b0 <_ZZ12printIntegermE6digits+0x128>
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	7fc080e7          	jalr	2044(ra) # 80002cbc <panic>
    800024c8:	0ff7f713          	andi	a4,a5,255
    800024cc:	00900693          	li	a3,9
    800024d0:	04d70063          	beq	a4,a3,80002510 <kerneltrap+0xac>
    800024d4:	fff00713          	li	a4,-1
    800024d8:	03f71713          	slli	a4,a4,0x3f
    800024dc:	00170713          	addi	a4,a4,1
    800024e0:	fae798e3          	bne	a5,a4,80002490 <kerneltrap+0x2c>
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	e00080e7          	jalr	-512(ra) # 800022e4 <cpuid>
    800024ec:	06050663          	beqz	a0,80002558 <kerneltrap+0xf4>
    800024f0:	144027f3          	csrr	a5,sip
    800024f4:	ffd7f793          	andi	a5,a5,-3
    800024f8:	14479073          	csrw	sip,a5
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret
    80002510:	00000097          	auipc	ra,0x0
    80002514:	3c4080e7          	jalr	964(ra) # 800028d4 <plic_claim>
    80002518:	00a00793          	li	a5,10
    8000251c:	00050493          	mv	s1,a0
    80002520:	06f50863          	beq	a0,a5,80002590 <kerneltrap+0x12c>
    80002524:	fc050ce3          	beqz	a0,800024fc <kerneltrap+0x98>
    80002528:	00050593          	mv	a1,a0
    8000252c:	00003517          	auipc	a0,0x3
    80002530:	c3c50513          	addi	a0,a0,-964 # 80005168 <_ZZ12printIntegermE6digits+0xe0>
    80002534:	00000097          	auipc	ra,0x0
    80002538:	7e4080e7          	jalr	2020(ra) # 80002d18 <__printf>
    8000253c:	01013403          	ld	s0,16(sp)
    80002540:	01813083          	ld	ra,24(sp)
    80002544:	00048513          	mv	a0,s1
    80002548:	00813483          	ld	s1,8(sp)
    8000254c:	02010113          	addi	sp,sp,32
    80002550:	00000317          	auipc	t1,0x0
    80002554:	3bc30067          	jr	956(t1) # 8000290c <plic_complete>
    80002558:	00004517          	auipc	a0,0x4
    8000255c:	53850513          	addi	a0,a0,1336 # 80006a90 <tickslock>
    80002560:	00001097          	auipc	ra,0x1
    80002564:	48c080e7          	jalr	1164(ra) # 800039ec <acquire>
    80002568:	00003717          	auipc	a4,0x3
    8000256c:	42c70713          	addi	a4,a4,1068 # 80005994 <ticks>
    80002570:	00072783          	lw	a5,0(a4)
    80002574:	00004517          	auipc	a0,0x4
    80002578:	51c50513          	addi	a0,a0,1308 # 80006a90 <tickslock>
    8000257c:	0017879b          	addiw	a5,a5,1
    80002580:	00f72023          	sw	a5,0(a4)
    80002584:	00001097          	auipc	ra,0x1
    80002588:	534080e7          	jalr	1332(ra) # 80003ab8 <release>
    8000258c:	f65ff06f          	j	800024f0 <kerneltrap+0x8c>
    80002590:	00001097          	auipc	ra,0x1
    80002594:	090080e7          	jalr	144(ra) # 80003620 <uartintr>
    80002598:	fa5ff06f          	j	8000253c <kerneltrap+0xd8>
    8000259c:	00003517          	auipc	a0,0x3
    800025a0:	bac50513          	addi	a0,a0,-1108 # 80005148 <_ZZ12printIntegermE6digits+0xc0>
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	718080e7          	jalr	1816(ra) # 80002cbc <panic>

00000000800025ac <clockintr>:
    800025ac:	fe010113          	addi	sp,sp,-32
    800025b0:	00813823          	sd	s0,16(sp)
    800025b4:	00913423          	sd	s1,8(sp)
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	02010413          	addi	s0,sp,32
    800025c0:	00004497          	auipc	s1,0x4
    800025c4:	4d048493          	addi	s1,s1,1232 # 80006a90 <tickslock>
    800025c8:	00048513          	mv	a0,s1
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	420080e7          	jalr	1056(ra) # 800039ec <acquire>
    800025d4:	00003717          	auipc	a4,0x3
    800025d8:	3c070713          	addi	a4,a4,960 # 80005994 <ticks>
    800025dc:	00072783          	lw	a5,0(a4)
    800025e0:	01013403          	ld	s0,16(sp)
    800025e4:	01813083          	ld	ra,24(sp)
    800025e8:	00048513          	mv	a0,s1
    800025ec:	0017879b          	addiw	a5,a5,1
    800025f0:	00813483          	ld	s1,8(sp)
    800025f4:	00f72023          	sw	a5,0(a4)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00001317          	auipc	t1,0x1
    80002600:	4bc30067          	jr	1212(t1) # 80003ab8 <release>

0000000080002604 <devintr>:
    80002604:	142027f3          	csrr	a5,scause
    80002608:	00000513          	li	a0,0
    8000260c:	0007c463          	bltz	a5,80002614 <devintr+0x10>
    80002610:	00008067          	ret
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00813823          	sd	s0,16(sp)
    8000261c:	00113c23          	sd	ra,24(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	02010413          	addi	s0,sp,32
    80002628:	0ff7f713          	andi	a4,a5,255
    8000262c:	00900693          	li	a3,9
    80002630:	04d70c63          	beq	a4,a3,80002688 <devintr+0x84>
    80002634:	fff00713          	li	a4,-1
    80002638:	03f71713          	slli	a4,a4,0x3f
    8000263c:	00170713          	addi	a4,a4,1
    80002640:	00e78c63          	beq	a5,a4,80002658 <devintr+0x54>
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	c8c080e7          	jalr	-884(ra) # 800022e4 <cpuid>
    80002660:	06050663          	beqz	a0,800026cc <devintr+0xc8>
    80002664:	144027f3          	csrr	a5,sip
    80002668:	ffd7f793          	andi	a5,a5,-3
    8000266c:	14479073          	csrw	sip,a5
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00813483          	ld	s1,8(sp)
    8000267c:	00200513          	li	a0,2
    80002680:	02010113          	addi	sp,sp,32
    80002684:	00008067          	ret
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	24c080e7          	jalr	588(ra) # 800028d4 <plic_claim>
    80002690:	00a00793          	li	a5,10
    80002694:	00050493          	mv	s1,a0
    80002698:	06f50663          	beq	a0,a5,80002704 <devintr+0x100>
    8000269c:	00100513          	li	a0,1
    800026a0:	fa0482e3          	beqz	s1,80002644 <devintr+0x40>
    800026a4:	00048593          	mv	a1,s1
    800026a8:	00003517          	auipc	a0,0x3
    800026ac:	ac050513          	addi	a0,a0,-1344 # 80005168 <_ZZ12printIntegermE6digits+0xe0>
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	668080e7          	jalr	1640(ra) # 80002d18 <__printf>
    800026b8:	00048513          	mv	a0,s1
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	250080e7          	jalr	592(ra) # 8000290c <plic_complete>
    800026c4:	00100513          	li	a0,1
    800026c8:	f7dff06f          	j	80002644 <devintr+0x40>
    800026cc:	00004517          	auipc	a0,0x4
    800026d0:	3c450513          	addi	a0,a0,964 # 80006a90 <tickslock>
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	318080e7          	jalr	792(ra) # 800039ec <acquire>
    800026dc:	00003717          	auipc	a4,0x3
    800026e0:	2b870713          	addi	a4,a4,696 # 80005994 <ticks>
    800026e4:	00072783          	lw	a5,0(a4)
    800026e8:	00004517          	auipc	a0,0x4
    800026ec:	3a850513          	addi	a0,a0,936 # 80006a90 <tickslock>
    800026f0:	0017879b          	addiw	a5,a5,1
    800026f4:	00f72023          	sw	a5,0(a4)
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	3c0080e7          	jalr	960(ra) # 80003ab8 <release>
    80002700:	f65ff06f          	j	80002664 <devintr+0x60>
    80002704:	00001097          	auipc	ra,0x1
    80002708:	f1c080e7          	jalr	-228(ra) # 80003620 <uartintr>
    8000270c:	fadff06f          	j	800026b8 <devintr+0xb4>

0000000080002710 <kernelvec>:
    80002710:	f0010113          	addi	sp,sp,-256
    80002714:	00113023          	sd	ra,0(sp)
    80002718:	00213423          	sd	sp,8(sp)
    8000271c:	00313823          	sd	gp,16(sp)
    80002720:	00413c23          	sd	tp,24(sp)
    80002724:	02513023          	sd	t0,32(sp)
    80002728:	02613423          	sd	t1,40(sp)
    8000272c:	02713823          	sd	t2,48(sp)
    80002730:	02813c23          	sd	s0,56(sp)
    80002734:	04913023          	sd	s1,64(sp)
    80002738:	04a13423          	sd	a0,72(sp)
    8000273c:	04b13823          	sd	a1,80(sp)
    80002740:	04c13c23          	sd	a2,88(sp)
    80002744:	06d13023          	sd	a3,96(sp)
    80002748:	06e13423          	sd	a4,104(sp)
    8000274c:	06f13823          	sd	a5,112(sp)
    80002750:	07013c23          	sd	a6,120(sp)
    80002754:	09113023          	sd	a7,128(sp)
    80002758:	09213423          	sd	s2,136(sp)
    8000275c:	09313823          	sd	s3,144(sp)
    80002760:	09413c23          	sd	s4,152(sp)
    80002764:	0b513023          	sd	s5,160(sp)
    80002768:	0b613423          	sd	s6,168(sp)
    8000276c:	0b713823          	sd	s7,176(sp)
    80002770:	0b813c23          	sd	s8,184(sp)
    80002774:	0d913023          	sd	s9,192(sp)
    80002778:	0da13423          	sd	s10,200(sp)
    8000277c:	0db13823          	sd	s11,208(sp)
    80002780:	0dc13c23          	sd	t3,216(sp)
    80002784:	0fd13023          	sd	t4,224(sp)
    80002788:	0fe13423          	sd	t5,232(sp)
    8000278c:	0ff13823          	sd	t6,240(sp)
    80002790:	cd5ff0ef          	jal	ra,80002464 <kerneltrap>
    80002794:	00013083          	ld	ra,0(sp)
    80002798:	00813103          	ld	sp,8(sp)
    8000279c:	01013183          	ld	gp,16(sp)
    800027a0:	02013283          	ld	t0,32(sp)
    800027a4:	02813303          	ld	t1,40(sp)
    800027a8:	03013383          	ld	t2,48(sp)
    800027ac:	03813403          	ld	s0,56(sp)
    800027b0:	04013483          	ld	s1,64(sp)
    800027b4:	04813503          	ld	a0,72(sp)
    800027b8:	05013583          	ld	a1,80(sp)
    800027bc:	05813603          	ld	a2,88(sp)
    800027c0:	06013683          	ld	a3,96(sp)
    800027c4:	06813703          	ld	a4,104(sp)
    800027c8:	07013783          	ld	a5,112(sp)
    800027cc:	07813803          	ld	a6,120(sp)
    800027d0:	08013883          	ld	a7,128(sp)
    800027d4:	08813903          	ld	s2,136(sp)
    800027d8:	09013983          	ld	s3,144(sp)
    800027dc:	09813a03          	ld	s4,152(sp)
    800027e0:	0a013a83          	ld	s5,160(sp)
    800027e4:	0a813b03          	ld	s6,168(sp)
    800027e8:	0b013b83          	ld	s7,176(sp)
    800027ec:	0b813c03          	ld	s8,184(sp)
    800027f0:	0c013c83          	ld	s9,192(sp)
    800027f4:	0c813d03          	ld	s10,200(sp)
    800027f8:	0d013d83          	ld	s11,208(sp)
    800027fc:	0d813e03          	ld	t3,216(sp)
    80002800:	0e013e83          	ld	t4,224(sp)
    80002804:	0e813f03          	ld	t5,232(sp)
    80002808:	0f013f83          	ld	t6,240(sp)
    8000280c:	10010113          	addi	sp,sp,256
    80002810:	10200073          	sret
    80002814:	00000013          	nop
    80002818:	00000013          	nop
    8000281c:	00000013          	nop

0000000080002820 <timervec>:
    80002820:	34051573          	csrrw	a0,mscratch,a0
    80002824:	00b53023          	sd	a1,0(a0)
    80002828:	00c53423          	sd	a2,8(a0)
    8000282c:	00d53823          	sd	a3,16(a0)
    80002830:	01853583          	ld	a1,24(a0)
    80002834:	02053603          	ld	a2,32(a0)
    80002838:	0005b683          	ld	a3,0(a1)
    8000283c:	00c686b3          	add	a3,a3,a2
    80002840:	00d5b023          	sd	a3,0(a1)
    80002844:	00200593          	li	a1,2
    80002848:	14459073          	csrw	sip,a1
    8000284c:	01053683          	ld	a3,16(a0)
    80002850:	00853603          	ld	a2,8(a0)
    80002854:	00053583          	ld	a1,0(a0)
    80002858:	34051573          	csrrw	a0,mscratch,a0
    8000285c:	30200073          	mret

0000000080002860 <plicinit>:
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813423          	sd	s0,8(sp)
    80002868:	01010413          	addi	s0,sp,16
    8000286c:	00813403          	ld	s0,8(sp)
    80002870:	0c0007b7          	lui	a5,0xc000
    80002874:	00100713          	li	a4,1
    80002878:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000287c:	00e7a223          	sw	a4,4(a5)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <plicinithart>:
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	a4c080e7          	jalr	-1460(ra) # 800022e4 <cpuid>
    800028a0:	0085171b          	slliw	a4,a0,0x8
    800028a4:	0c0027b7          	lui	a5,0xc002
    800028a8:	00e787b3          	add	a5,a5,a4
    800028ac:	40200713          	li	a4,1026
    800028b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	00d5151b          	slliw	a0,a0,0xd
    800028c0:	0c2017b7          	lui	a5,0xc201
    800028c4:	00a78533          	add	a0,a5,a0
    800028c8:	00052023          	sw	zero,0(a0)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <plic_claim>:
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	a00080e7          	jalr	-1536(ra) # 800022e4 <cpuid>
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	00d5151b          	slliw	a0,a0,0xd
    800028f8:	0c2017b7          	lui	a5,0xc201
    800028fc:	00a78533          	add	a0,a5,a0
    80002900:	00452503          	lw	a0,4(a0)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <plic_complete>:
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    80002924:	00000097          	auipc	ra,0x0
    80002928:	9c0080e7          	jalr	-1600(ra) # 800022e4 <cpuid>
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00d5179b          	slliw	a5,a0,0xd
    80002938:	0c201737          	lui	a4,0xc201
    8000293c:	00f707b3          	add	a5,a4,a5
    80002940:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <consolewrite>:
    80002950:	fb010113          	addi	sp,sp,-80
    80002954:	04813023          	sd	s0,64(sp)
    80002958:	04113423          	sd	ra,72(sp)
    8000295c:	02913c23          	sd	s1,56(sp)
    80002960:	03213823          	sd	s2,48(sp)
    80002964:	03313423          	sd	s3,40(sp)
    80002968:	03413023          	sd	s4,32(sp)
    8000296c:	01513c23          	sd	s5,24(sp)
    80002970:	05010413          	addi	s0,sp,80
    80002974:	06c05c63          	blez	a2,800029ec <consolewrite+0x9c>
    80002978:	00060993          	mv	s3,a2
    8000297c:	00050a13          	mv	s4,a0
    80002980:	00058493          	mv	s1,a1
    80002984:	00000913          	li	s2,0
    80002988:	fff00a93          	li	s5,-1
    8000298c:	01c0006f          	j	800029a8 <consolewrite+0x58>
    80002990:	fbf44503          	lbu	a0,-65(s0)
    80002994:	0019091b          	addiw	s2,s2,1
    80002998:	00148493          	addi	s1,s1,1
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	a9c080e7          	jalr	-1380(ra) # 80003438 <uartputc>
    800029a4:	03298063          	beq	s3,s2,800029c4 <consolewrite+0x74>
    800029a8:	00048613          	mv	a2,s1
    800029ac:	00100693          	li	a3,1
    800029b0:	000a0593          	mv	a1,s4
    800029b4:	fbf40513          	addi	a0,s0,-65
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	9e4080e7          	jalr	-1564(ra) # 8000239c <either_copyin>
    800029c0:	fd5518e3          	bne	a0,s5,80002990 <consolewrite+0x40>
    800029c4:	04813083          	ld	ra,72(sp)
    800029c8:	04013403          	ld	s0,64(sp)
    800029cc:	03813483          	ld	s1,56(sp)
    800029d0:	02813983          	ld	s3,40(sp)
    800029d4:	02013a03          	ld	s4,32(sp)
    800029d8:	01813a83          	ld	s5,24(sp)
    800029dc:	00090513          	mv	a0,s2
    800029e0:	03013903          	ld	s2,48(sp)
    800029e4:	05010113          	addi	sp,sp,80
    800029e8:	00008067          	ret
    800029ec:	00000913          	li	s2,0
    800029f0:	fd5ff06f          	j	800029c4 <consolewrite+0x74>

00000000800029f4 <consoleread>:
    800029f4:	f9010113          	addi	sp,sp,-112
    800029f8:	06813023          	sd	s0,96(sp)
    800029fc:	04913c23          	sd	s1,88(sp)
    80002a00:	05213823          	sd	s2,80(sp)
    80002a04:	05313423          	sd	s3,72(sp)
    80002a08:	05413023          	sd	s4,64(sp)
    80002a0c:	03513c23          	sd	s5,56(sp)
    80002a10:	03613823          	sd	s6,48(sp)
    80002a14:	03713423          	sd	s7,40(sp)
    80002a18:	03813023          	sd	s8,32(sp)
    80002a1c:	06113423          	sd	ra,104(sp)
    80002a20:	01913c23          	sd	s9,24(sp)
    80002a24:	07010413          	addi	s0,sp,112
    80002a28:	00060b93          	mv	s7,a2
    80002a2c:	00050913          	mv	s2,a0
    80002a30:	00058c13          	mv	s8,a1
    80002a34:	00060b1b          	sext.w	s6,a2
    80002a38:	00004497          	auipc	s1,0x4
    80002a3c:	08048493          	addi	s1,s1,128 # 80006ab8 <cons>
    80002a40:	00400993          	li	s3,4
    80002a44:	fff00a13          	li	s4,-1
    80002a48:	00a00a93          	li	s5,10
    80002a4c:	05705e63          	blez	s7,80002aa8 <consoleread+0xb4>
    80002a50:	09c4a703          	lw	a4,156(s1)
    80002a54:	0984a783          	lw	a5,152(s1)
    80002a58:	0007071b          	sext.w	a4,a4
    80002a5c:	08e78463          	beq	a5,a4,80002ae4 <consoleread+0xf0>
    80002a60:	07f7f713          	andi	a4,a5,127
    80002a64:	00e48733          	add	a4,s1,a4
    80002a68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a6c:	0017869b          	addiw	a3,a5,1
    80002a70:	08d4ac23          	sw	a3,152(s1)
    80002a74:	00070c9b          	sext.w	s9,a4
    80002a78:	0b370663          	beq	a4,s3,80002b24 <consoleread+0x130>
    80002a7c:	00100693          	li	a3,1
    80002a80:	f9f40613          	addi	a2,s0,-97
    80002a84:	000c0593          	mv	a1,s8
    80002a88:	00090513          	mv	a0,s2
    80002a8c:	f8e40fa3          	sb	a4,-97(s0)
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	8c0080e7          	jalr	-1856(ra) # 80002350 <either_copyout>
    80002a98:	01450863          	beq	a0,s4,80002aa8 <consoleread+0xb4>
    80002a9c:	001c0c13          	addi	s8,s8,1
    80002aa0:	fffb8b9b          	addiw	s7,s7,-1
    80002aa4:	fb5c94e3          	bne	s9,s5,80002a4c <consoleread+0x58>
    80002aa8:	000b851b          	sext.w	a0,s7
    80002aac:	06813083          	ld	ra,104(sp)
    80002ab0:	06013403          	ld	s0,96(sp)
    80002ab4:	05813483          	ld	s1,88(sp)
    80002ab8:	05013903          	ld	s2,80(sp)
    80002abc:	04813983          	ld	s3,72(sp)
    80002ac0:	04013a03          	ld	s4,64(sp)
    80002ac4:	03813a83          	ld	s5,56(sp)
    80002ac8:	02813b83          	ld	s7,40(sp)
    80002acc:	02013c03          	ld	s8,32(sp)
    80002ad0:	01813c83          	ld	s9,24(sp)
    80002ad4:	40ab053b          	subw	a0,s6,a0
    80002ad8:	03013b03          	ld	s6,48(sp)
    80002adc:	07010113          	addi	sp,sp,112
    80002ae0:	00008067          	ret
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	1d8080e7          	jalr	472(ra) # 80003cbc <push_on>
    80002aec:	0984a703          	lw	a4,152(s1)
    80002af0:	09c4a783          	lw	a5,156(s1)
    80002af4:	0007879b          	sext.w	a5,a5
    80002af8:	fef70ce3          	beq	a4,a5,80002af0 <consoleread+0xfc>
    80002afc:	00001097          	auipc	ra,0x1
    80002b00:	234080e7          	jalr	564(ra) # 80003d30 <pop_on>
    80002b04:	0984a783          	lw	a5,152(s1)
    80002b08:	07f7f713          	andi	a4,a5,127
    80002b0c:	00e48733          	add	a4,s1,a4
    80002b10:	01874703          	lbu	a4,24(a4)
    80002b14:	0017869b          	addiw	a3,a5,1
    80002b18:	08d4ac23          	sw	a3,152(s1)
    80002b1c:	00070c9b          	sext.w	s9,a4
    80002b20:	f5371ee3          	bne	a4,s3,80002a7c <consoleread+0x88>
    80002b24:	000b851b          	sext.w	a0,s7
    80002b28:	f96bf2e3          	bgeu	s7,s6,80002aac <consoleread+0xb8>
    80002b2c:	08f4ac23          	sw	a5,152(s1)
    80002b30:	f7dff06f          	j	80002aac <consoleread+0xb8>

0000000080002b34 <consputc>:
    80002b34:	10000793          	li	a5,256
    80002b38:	00f50663          	beq	a0,a5,80002b44 <consputc+0x10>
    80002b3c:	00001317          	auipc	t1,0x1
    80002b40:	9f430067          	jr	-1548(t1) # 80003530 <uartputc_sync>
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00113423          	sd	ra,8(sp)
    80002b4c:	00813023          	sd	s0,0(sp)
    80002b50:	01010413          	addi	s0,sp,16
    80002b54:	00800513          	li	a0,8
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	9d8080e7          	jalr	-1576(ra) # 80003530 <uartputc_sync>
    80002b60:	02000513          	li	a0,32
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	9cc080e7          	jalr	-1588(ra) # 80003530 <uartputc_sync>
    80002b6c:	00013403          	ld	s0,0(sp)
    80002b70:	00813083          	ld	ra,8(sp)
    80002b74:	00800513          	li	a0,8
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00001317          	auipc	t1,0x1
    80002b80:	9b430067          	jr	-1612(t1) # 80003530 <uartputc_sync>

0000000080002b84 <consoleintr>:
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00813823          	sd	s0,16(sp)
    80002b8c:	00913423          	sd	s1,8(sp)
    80002b90:	01213023          	sd	s2,0(sp)
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	02010413          	addi	s0,sp,32
    80002b9c:	00004917          	auipc	s2,0x4
    80002ba0:	f1c90913          	addi	s2,s2,-228 # 80006ab8 <cons>
    80002ba4:	00050493          	mv	s1,a0
    80002ba8:	00090513          	mv	a0,s2
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	e40080e7          	jalr	-448(ra) # 800039ec <acquire>
    80002bb4:	02048c63          	beqz	s1,80002bec <consoleintr+0x68>
    80002bb8:	0a092783          	lw	a5,160(s2)
    80002bbc:	09892703          	lw	a4,152(s2)
    80002bc0:	07f00693          	li	a3,127
    80002bc4:	40e7873b          	subw	a4,a5,a4
    80002bc8:	02e6e263          	bltu	a3,a4,80002bec <consoleintr+0x68>
    80002bcc:	00d00713          	li	a4,13
    80002bd0:	04e48063          	beq	s1,a4,80002c10 <consoleintr+0x8c>
    80002bd4:	07f7f713          	andi	a4,a5,127
    80002bd8:	00e90733          	add	a4,s2,a4
    80002bdc:	0017879b          	addiw	a5,a5,1
    80002be0:	0af92023          	sw	a5,160(s2)
    80002be4:	00970c23          	sb	s1,24(a4)
    80002be8:	08f92e23          	sw	a5,156(s2)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	01813083          	ld	ra,24(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	00013903          	ld	s2,0(sp)
    80002bfc:	00004517          	auipc	a0,0x4
    80002c00:	ebc50513          	addi	a0,a0,-324 # 80006ab8 <cons>
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00001317          	auipc	t1,0x1
    80002c0c:	eb030067          	jr	-336(t1) # 80003ab8 <release>
    80002c10:	00a00493          	li	s1,10
    80002c14:	fc1ff06f          	j	80002bd4 <consoleintr+0x50>

0000000080002c18 <consoleinit>:
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	02010413          	addi	s0,sp,32
    80002c2c:	00004497          	auipc	s1,0x4
    80002c30:	e8c48493          	addi	s1,s1,-372 # 80006ab8 <cons>
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00002597          	auipc	a1,0x2
    80002c3c:	58858593          	addi	a1,a1,1416 # 800051c0 <_ZZ12printIntegermE6digits+0x138>
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	d88080e7          	jalr	-632(ra) # 800039c8 <initlock>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	7ac080e7          	jalr	1964(ra) # 800033f4 <uartinit>
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00000797          	auipc	a5,0x0
    80002c5c:	d9c78793          	addi	a5,a5,-612 # 800029f4 <consoleread>
    80002c60:	0af4bc23          	sd	a5,184(s1)
    80002c64:	00000797          	auipc	a5,0x0
    80002c68:	cec78793          	addi	a5,a5,-788 # 80002950 <consolewrite>
    80002c6c:	0cf4b023          	sd	a5,192(s1)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret

0000000080002c7c <console_read>:
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00813423          	sd	s0,8(sp)
    80002c84:	01010413          	addi	s0,sp,16
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	00004317          	auipc	t1,0x4
    80002c90:	ee433303          	ld	t1,-284(t1) # 80006b70 <devsw+0x10>
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00030067          	jr	t1

0000000080002c9c <console_write>:
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00813423          	sd	s0,8(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    80002ca8:	00813403          	ld	s0,8(sp)
    80002cac:	00004317          	auipc	t1,0x4
    80002cb0:	ecc33303          	ld	t1,-308(t1) # 80006b78 <devsw+0x18>
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00030067          	jr	t1

0000000080002cbc <panic>:
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00002517          	auipc	a0,0x2
    80002cd8:	4f450513          	addi	a0,a0,1268 # 800051c8 <_ZZ12printIntegermE6digits+0x140>
    80002cdc:	00004797          	auipc	a5,0x4
    80002ce0:	f207ae23          	sw	zero,-196(a5) # 80006c18 <pr+0x18>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	034080e7          	jalr	52(ra) # 80002d18 <__printf>
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	028080e7          	jalr	40(ra) # 80002d18 <__printf>
    80002cf8:	00002517          	auipc	a0,0x2
    80002cfc:	38850513          	addi	a0,a0,904 # 80005080 <CONSOLE_STATUS+0x70>
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	018080e7          	jalr	24(ra) # 80002d18 <__printf>
    80002d08:	00100793          	li	a5,1
    80002d0c:	00003717          	auipc	a4,0x3
    80002d10:	c8f72623          	sw	a5,-884(a4) # 80005998 <panicked>
    80002d14:	0000006f          	j	80002d14 <panic+0x58>

0000000080002d18 <__printf>:
    80002d18:	f3010113          	addi	sp,sp,-208
    80002d1c:	08813023          	sd	s0,128(sp)
    80002d20:	07313423          	sd	s3,104(sp)
    80002d24:	09010413          	addi	s0,sp,144
    80002d28:	05813023          	sd	s8,64(sp)
    80002d2c:	08113423          	sd	ra,136(sp)
    80002d30:	06913c23          	sd	s1,120(sp)
    80002d34:	07213823          	sd	s2,112(sp)
    80002d38:	07413023          	sd	s4,96(sp)
    80002d3c:	05513c23          	sd	s5,88(sp)
    80002d40:	05613823          	sd	s6,80(sp)
    80002d44:	05713423          	sd	s7,72(sp)
    80002d48:	03913c23          	sd	s9,56(sp)
    80002d4c:	03a13823          	sd	s10,48(sp)
    80002d50:	03b13423          	sd	s11,40(sp)
    80002d54:	00004317          	auipc	t1,0x4
    80002d58:	eac30313          	addi	t1,t1,-340 # 80006c00 <pr>
    80002d5c:	01832c03          	lw	s8,24(t1)
    80002d60:	00b43423          	sd	a1,8(s0)
    80002d64:	00c43823          	sd	a2,16(s0)
    80002d68:	00d43c23          	sd	a3,24(s0)
    80002d6c:	02e43023          	sd	a4,32(s0)
    80002d70:	02f43423          	sd	a5,40(s0)
    80002d74:	03043823          	sd	a6,48(s0)
    80002d78:	03143c23          	sd	a7,56(s0)
    80002d7c:	00050993          	mv	s3,a0
    80002d80:	4a0c1663          	bnez	s8,8000322c <__printf+0x514>
    80002d84:	60098c63          	beqz	s3,8000339c <__printf+0x684>
    80002d88:	0009c503          	lbu	a0,0(s3)
    80002d8c:	00840793          	addi	a5,s0,8
    80002d90:	f6f43c23          	sd	a5,-136(s0)
    80002d94:	00000493          	li	s1,0
    80002d98:	22050063          	beqz	a0,80002fb8 <__printf+0x2a0>
    80002d9c:	00002a37          	lui	s4,0x2
    80002da0:	00018ab7          	lui	s5,0x18
    80002da4:	000f4b37          	lui	s6,0xf4
    80002da8:	00989bb7          	lui	s7,0x989
    80002dac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002db0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002db4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002db8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002dbc:	00148c9b          	addiw	s9,s1,1
    80002dc0:	02500793          	li	a5,37
    80002dc4:	01998933          	add	s2,s3,s9
    80002dc8:	38f51263          	bne	a0,a5,8000314c <__printf+0x434>
    80002dcc:	00094783          	lbu	a5,0(s2)
    80002dd0:	00078c9b          	sext.w	s9,a5
    80002dd4:	1e078263          	beqz	a5,80002fb8 <__printf+0x2a0>
    80002dd8:	0024849b          	addiw	s1,s1,2
    80002ddc:	07000713          	li	a4,112
    80002de0:	00998933          	add	s2,s3,s1
    80002de4:	38e78a63          	beq	a5,a4,80003178 <__printf+0x460>
    80002de8:	20f76863          	bltu	a4,a5,80002ff8 <__printf+0x2e0>
    80002dec:	42a78863          	beq	a5,a0,8000321c <__printf+0x504>
    80002df0:	06400713          	li	a4,100
    80002df4:	40e79663          	bne	a5,a4,80003200 <__printf+0x4e8>
    80002df8:	f7843783          	ld	a5,-136(s0)
    80002dfc:	0007a603          	lw	a2,0(a5)
    80002e00:	00878793          	addi	a5,a5,8
    80002e04:	f6f43c23          	sd	a5,-136(s0)
    80002e08:	42064a63          	bltz	a2,8000323c <__printf+0x524>
    80002e0c:	00a00713          	li	a4,10
    80002e10:	02e677bb          	remuw	a5,a2,a4
    80002e14:	00002d97          	auipc	s11,0x2
    80002e18:	3dcd8d93          	addi	s11,s11,988 # 800051f0 <digits>
    80002e1c:	00900593          	li	a1,9
    80002e20:	0006051b          	sext.w	a0,a2
    80002e24:	00000c93          	li	s9,0
    80002e28:	02079793          	slli	a5,a5,0x20
    80002e2c:	0207d793          	srli	a5,a5,0x20
    80002e30:	00fd87b3          	add	a5,s11,a5
    80002e34:	0007c783          	lbu	a5,0(a5)
    80002e38:	02e656bb          	divuw	a3,a2,a4
    80002e3c:	f8f40023          	sb	a5,-128(s0)
    80002e40:	14c5d863          	bge	a1,a2,80002f90 <__printf+0x278>
    80002e44:	06300593          	li	a1,99
    80002e48:	00100c93          	li	s9,1
    80002e4c:	02e6f7bb          	remuw	a5,a3,a4
    80002e50:	02079793          	slli	a5,a5,0x20
    80002e54:	0207d793          	srli	a5,a5,0x20
    80002e58:	00fd87b3          	add	a5,s11,a5
    80002e5c:	0007c783          	lbu	a5,0(a5)
    80002e60:	02e6d73b          	divuw	a4,a3,a4
    80002e64:	f8f400a3          	sb	a5,-127(s0)
    80002e68:	12a5f463          	bgeu	a1,a0,80002f90 <__printf+0x278>
    80002e6c:	00a00693          	li	a3,10
    80002e70:	00900593          	li	a1,9
    80002e74:	02d777bb          	remuw	a5,a4,a3
    80002e78:	02079793          	slli	a5,a5,0x20
    80002e7c:	0207d793          	srli	a5,a5,0x20
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c503          	lbu	a0,0(a5)
    80002e88:	02d757bb          	divuw	a5,a4,a3
    80002e8c:	f8a40123          	sb	a0,-126(s0)
    80002e90:	48e5f263          	bgeu	a1,a4,80003314 <__printf+0x5fc>
    80002e94:	06300513          	li	a0,99
    80002e98:	02d7f5bb          	remuw	a1,a5,a3
    80002e9c:	02059593          	slli	a1,a1,0x20
    80002ea0:	0205d593          	srli	a1,a1,0x20
    80002ea4:	00bd85b3          	add	a1,s11,a1
    80002ea8:	0005c583          	lbu	a1,0(a1)
    80002eac:	02d7d7bb          	divuw	a5,a5,a3
    80002eb0:	f8b401a3          	sb	a1,-125(s0)
    80002eb4:	48e57263          	bgeu	a0,a4,80003338 <__printf+0x620>
    80002eb8:	3e700513          	li	a0,999
    80002ebc:	02d7f5bb          	remuw	a1,a5,a3
    80002ec0:	02059593          	slli	a1,a1,0x20
    80002ec4:	0205d593          	srli	a1,a1,0x20
    80002ec8:	00bd85b3          	add	a1,s11,a1
    80002ecc:	0005c583          	lbu	a1,0(a1)
    80002ed0:	02d7d7bb          	divuw	a5,a5,a3
    80002ed4:	f8b40223          	sb	a1,-124(s0)
    80002ed8:	46e57663          	bgeu	a0,a4,80003344 <__printf+0x62c>
    80002edc:	02d7f5bb          	remuw	a1,a5,a3
    80002ee0:	02059593          	slli	a1,a1,0x20
    80002ee4:	0205d593          	srli	a1,a1,0x20
    80002ee8:	00bd85b3          	add	a1,s11,a1
    80002eec:	0005c583          	lbu	a1,0(a1)
    80002ef0:	02d7d7bb          	divuw	a5,a5,a3
    80002ef4:	f8b402a3          	sb	a1,-123(s0)
    80002ef8:	46ea7863          	bgeu	s4,a4,80003368 <__printf+0x650>
    80002efc:	02d7f5bb          	remuw	a1,a5,a3
    80002f00:	02059593          	slli	a1,a1,0x20
    80002f04:	0205d593          	srli	a1,a1,0x20
    80002f08:	00bd85b3          	add	a1,s11,a1
    80002f0c:	0005c583          	lbu	a1,0(a1)
    80002f10:	02d7d7bb          	divuw	a5,a5,a3
    80002f14:	f8b40323          	sb	a1,-122(s0)
    80002f18:	3eeaf863          	bgeu	s5,a4,80003308 <__printf+0x5f0>
    80002f1c:	02d7f5bb          	remuw	a1,a5,a3
    80002f20:	02059593          	slli	a1,a1,0x20
    80002f24:	0205d593          	srli	a1,a1,0x20
    80002f28:	00bd85b3          	add	a1,s11,a1
    80002f2c:	0005c583          	lbu	a1,0(a1)
    80002f30:	02d7d7bb          	divuw	a5,a5,a3
    80002f34:	f8b403a3          	sb	a1,-121(s0)
    80002f38:	42eb7e63          	bgeu	s6,a4,80003374 <__printf+0x65c>
    80002f3c:	02d7f5bb          	remuw	a1,a5,a3
    80002f40:	02059593          	slli	a1,a1,0x20
    80002f44:	0205d593          	srli	a1,a1,0x20
    80002f48:	00bd85b3          	add	a1,s11,a1
    80002f4c:	0005c583          	lbu	a1,0(a1)
    80002f50:	02d7d7bb          	divuw	a5,a5,a3
    80002f54:	f8b40423          	sb	a1,-120(s0)
    80002f58:	42ebfc63          	bgeu	s7,a4,80003390 <__printf+0x678>
    80002f5c:	02079793          	slli	a5,a5,0x20
    80002f60:	0207d793          	srli	a5,a5,0x20
    80002f64:	00fd8db3          	add	s11,s11,a5
    80002f68:	000dc703          	lbu	a4,0(s11)
    80002f6c:	00a00793          	li	a5,10
    80002f70:	00900c93          	li	s9,9
    80002f74:	f8e404a3          	sb	a4,-119(s0)
    80002f78:	00065c63          	bgez	a2,80002f90 <__printf+0x278>
    80002f7c:	f9040713          	addi	a4,s0,-112
    80002f80:	00f70733          	add	a4,a4,a5
    80002f84:	02d00693          	li	a3,45
    80002f88:	fed70823          	sb	a3,-16(a4)
    80002f8c:	00078c93          	mv	s9,a5
    80002f90:	f8040793          	addi	a5,s0,-128
    80002f94:	01978cb3          	add	s9,a5,s9
    80002f98:	f7f40d13          	addi	s10,s0,-129
    80002f9c:	000cc503          	lbu	a0,0(s9)
    80002fa0:	fffc8c93          	addi	s9,s9,-1
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	b90080e7          	jalr	-1136(ra) # 80002b34 <consputc>
    80002fac:	ffac98e3          	bne	s9,s10,80002f9c <__printf+0x284>
    80002fb0:	00094503          	lbu	a0,0(s2)
    80002fb4:	e00514e3          	bnez	a0,80002dbc <__printf+0xa4>
    80002fb8:	1a0c1663          	bnez	s8,80003164 <__printf+0x44c>
    80002fbc:	08813083          	ld	ra,136(sp)
    80002fc0:	08013403          	ld	s0,128(sp)
    80002fc4:	07813483          	ld	s1,120(sp)
    80002fc8:	07013903          	ld	s2,112(sp)
    80002fcc:	06813983          	ld	s3,104(sp)
    80002fd0:	06013a03          	ld	s4,96(sp)
    80002fd4:	05813a83          	ld	s5,88(sp)
    80002fd8:	05013b03          	ld	s6,80(sp)
    80002fdc:	04813b83          	ld	s7,72(sp)
    80002fe0:	04013c03          	ld	s8,64(sp)
    80002fe4:	03813c83          	ld	s9,56(sp)
    80002fe8:	03013d03          	ld	s10,48(sp)
    80002fec:	02813d83          	ld	s11,40(sp)
    80002ff0:	0d010113          	addi	sp,sp,208
    80002ff4:	00008067          	ret
    80002ff8:	07300713          	li	a4,115
    80002ffc:	1ce78a63          	beq	a5,a4,800031d0 <__printf+0x4b8>
    80003000:	07800713          	li	a4,120
    80003004:	1ee79e63          	bne	a5,a4,80003200 <__printf+0x4e8>
    80003008:	f7843783          	ld	a5,-136(s0)
    8000300c:	0007a703          	lw	a4,0(a5)
    80003010:	00878793          	addi	a5,a5,8
    80003014:	f6f43c23          	sd	a5,-136(s0)
    80003018:	28074263          	bltz	a4,8000329c <__printf+0x584>
    8000301c:	00002d97          	auipc	s11,0x2
    80003020:	1d4d8d93          	addi	s11,s11,468 # 800051f0 <digits>
    80003024:	00f77793          	andi	a5,a4,15
    80003028:	00fd87b3          	add	a5,s11,a5
    8000302c:	0007c683          	lbu	a3,0(a5)
    80003030:	00f00613          	li	a2,15
    80003034:	0007079b          	sext.w	a5,a4
    80003038:	f8d40023          	sb	a3,-128(s0)
    8000303c:	0047559b          	srliw	a1,a4,0x4
    80003040:	0047569b          	srliw	a3,a4,0x4
    80003044:	00000c93          	li	s9,0
    80003048:	0ee65063          	bge	a2,a4,80003128 <__printf+0x410>
    8000304c:	00f6f693          	andi	a3,a3,15
    80003050:	00dd86b3          	add	a3,s11,a3
    80003054:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003058:	0087d79b          	srliw	a5,a5,0x8
    8000305c:	00100c93          	li	s9,1
    80003060:	f8d400a3          	sb	a3,-127(s0)
    80003064:	0cb67263          	bgeu	a2,a1,80003128 <__printf+0x410>
    80003068:	00f7f693          	andi	a3,a5,15
    8000306c:	00dd86b3          	add	a3,s11,a3
    80003070:	0006c583          	lbu	a1,0(a3)
    80003074:	00f00613          	li	a2,15
    80003078:	0047d69b          	srliw	a3,a5,0x4
    8000307c:	f8b40123          	sb	a1,-126(s0)
    80003080:	0047d593          	srli	a1,a5,0x4
    80003084:	28f67e63          	bgeu	a2,a5,80003320 <__printf+0x608>
    80003088:	00f6f693          	andi	a3,a3,15
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c503          	lbu	a0,0(a3)
    80003094:	0087d813          	srli	a6,a5,0x8
    80003098:	0087d69b          	srliw	a3,a5,0x8
    8000309c:	f8a401a3          	sb	a0,-125(s0)
    800030a0:	28b67663          	bgeu	a2,a1,8000332c <__printf+0x614>
    800030a4:	00f6f693          	andi	a3,a3,15
    800030a8:	00dd86b3          	add	a3,s11,a3
    800030ac:	0006c583          	lbu	a1,0(a3)
    800030b0:	00c7d513          	srli	a0,a5,0xc
    800030b4:	00c7d69b          	srliw	a3,a5,0xc
    800030b8:	f8b40223          	sb	a1,-124(s0)
    800030bc:	29067a63          	bgeu	a2,a6,80003350 <__printf+0x638>
    800030c0:	00f6f693          	andi	a3,a3,15
    800030c4:	00dd86b3          	add	a3,s11,a3
    800030c8:	0006c583          	lbu	a1,0(a3)
    800030cc:	0107d813          	srli	a6,a5,0x10
    800030d0:	0107d69b          	srliw	a3,a5,0x10
    800030d4:	f8b402a3          	sb	a1,-123(s0)
    800030d8:	28a67263          	bgeu	a2,a0,8000335c <__printf+0x644>
    800030dc:	00f6f693          	andi	a3,a3,15
    800030e0:	00dd86b3          	add	a3,s11,a3
    800030e4:	0006c683          	lbu	a3,0(a3)
    800030e8:	0147d79b          	srliw	a5,a5,0x14
    800030ec:	f8d40323          	sb	a3,-122(s0)
    800030f0:	21067663          	bgeu	a2,a6,800032fc <__printf+0x5e4>
    800030f4:	02079793          	slli	a5,a5,0x20
    800030f8:	0207d793          	srli	a5,a5,0x20
    800030fc:	00fd8db3          	add	s11,s11,a5
    80003100:	000dc683          	lbu	a3,0(s11)
    80003104:	00800793          	li	a5,8
    80003108:	00700c93          	li	s9,7
    8000310c:	f8d403a3          	sb	a3,-121(s0)
    80003110:	00075c63          	bgez	a4,80003128 <__printf+0x410>
    80003114:	f9040713          	addi	a4,s0,-112
    80003118:	00f70733          	add	a4,a4,a5
    8000311c:	02d00693          	li	a3,45
    80003120:	fed70823          	sb	a3,-16(a4)
    80003124:	00078c93          	mv	s9,a5
    80003128:	f8040793          	addi	a5,s0,-128
    8000312c:	01978cb3          	add	s9,a5,s9
    80003130:	f7f40d13          	addi	s10,s0,-129
    80003134:	000cc503          	lbu	a0,0(s9)
    80003138:	fffc8c93          	addi	s9,s9,-1
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	9f8080e7          	jalr	-1544(ra) # 80002b34 <consputc>
    80003144:	ff9d18e3          	bne	s10,s9,80003134 <__printf+0x41c>
    80003148:	0100006f          	j	80003158 <__printf+0x440>
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	9e8080e7          	jalr	-1560(ra) # 80002b34 <consputc>
    80003154:	000c8493          	mv	s1,s9
    80003158:	00094503          	lbu	a0,0(s2)
    8000315c:	c60510e3          	bnez	a0,80002dbc <__printf+0xa4>
    80003160:	e40c0ee3          	beqz	s8,80002fbc <__printf+0x2a4>
    80003164:	00004517          	auipc	a0,0x4
    80003168:	a9c50513          	addi	a0,a0,-1380 # 80006c00 <pr>
    8000316c:	00001097          	auipc	ra,0x1
    80003170:	94c080e7          	jalr	-1716(ra) # 80003ab8 <release>
    80003174:	e49ff06f          	j	80002fbc <__printf+0x2a4>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	03000513          	li	a0,48
    80003180:	01000d13          	li	s10,16
    80003184:	00878713          	addi	a4,a5,8
    80003188:	0007bc83          	ld	s9,0(a5)
    8000318c:	f6e43c23          	sd	a4,-136(s0)
    80003190:	00000097          	auipc	ra,0x0
    80003194:	9a4080e7          	jalr	-1628(ra) # 80002b34 <consputc>
    80003198:	07800513          	li	a0,120
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	998080e7          	jalr	-1640(ra) # 80002b34 <consputc>
    800031a4:	00002d97          	auipc	s11,0x2
    800031a8:	04cd8d93          	addi	s11,s11,76 # 800051f0 <digits>
    800031ac:	03ccd793          	srli	a5,s9,0x3c
    800031b0:	00fd87b3          	add	a5,s11,a5
    800031b4:	0007c503          	lbu	a0,0(a5)
    800031b8:	fffd0d1b          	addiw	s10,s10,-1
    800031bc:	004c9c93          	slli	s9,s9,0x4
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	974080e7          	jalr	-1676(ra) # 80002b34 <consputc>
    800031c8:	fe0d12e3          	bnez	s10,800031ac <__printf+0x494>
    800031cc:	f8dff06f          	j	80003158 <__printf+0x440>
    800031d0:	f7843783          	ld	a5,-136(s0)
    800031d4:	0007bc83          	ld	s9,0(a5)
    800031d8:	00878793          	addi	a5,a5,8
    800031dc:	f6f43c23          	sd	a5,-136(s0)
    800031e0:	000c9a63          	bnez	s9,800031f4 <__printf+0x4dc>
    800031e4:	1080006f          	j	800032ec <__printf+0x5d4>
    800031e8:	001c8c93          	addi	s9,s9,1
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	948080e7          	jalr	-1720(ra) # 80002b34 <consputc>
    800031f4:	000cc503          	lbu	a0,0(s9)
    800031f8:	fe0518e3          	bnez	a0,800031e8 <__printf+0x4d0>
    800031fc:	f5dff06f          	j	80003158 <__printf+0x440>
    80003200:	02500513          	li	a0,37
    80003204:	00000097          	auipc	ra,0x0
    80003208:	930080e7          	jalr	-1744(ra) # 80002b34 <consputc>
    8000320c:	000c8513          	mv	a0,s9
    80003210:	00000097          	auipc	ra,0x0
    80003214:	924080e7          	jalr	-1756(ra) # 80002b34 <consputc>
    80003218:	f41ff06f          	j	80003158 <__printf+0x440>
    8000321c:	02500513          	li	a0,37
    80003220:	00000097          	auipc	ra,0x0
    80003224:	914080e7          	jalr	-1772(ra) # 80002b34 <consputc>
    80003228:	f31ff06f          	j	80003158 <__printf+0x440>
    8000322c:	00030513          	mv	a0,t1
    80003230:	00000097          	auipc	ra,0x0
    80003234:	7bc080e7          	jalr	1980(ra) # 800039ec <acquire>
    80003238:	b4dff06f          	j	80002d84 <__printf+0x6c>
    8000323c:	40c0053b          	negw	a0,a2
    80003240:	00a00713          	li	a4,10
    80003244:	02e576bb          	remuw	a3,a0,a4
    80003248:	00002d97          	auipc	s11,0x2
    8000324c:	fa8d8d93          	addi	s11,s11,-88 # 800051f0 <digits>
    80003250:	ff700593          	li	a1,-9
    80003254:	02069693          	slli	a3,a3,0x20
    80003258:	0206d693          	srli	a3,a3,0x20
    8000325c:	00dd86b3          	add	a3,s11,a3
    80003260:	0006c683          	lbu	a3,0(a3)
    80003264:	02e557bb          	divuw	a5,a0,a4
    80003268:	f8d40023          	sb	a3,-128(s0)
    8000326c:	10b65e63          	bge	a2,a1,80003388 <__printf+0x670>
    80003270:	06300593          	li	a1,99
    80003274:	02e7f6bb          	remuw	a3,a5,a4
    80003278:	02069693          	slli	a3,a3,0x20
    8000327c:	0206d693          	srli	a3,a3,0x20
    80003280:	00dd86b3          	add	a3,s11,a3
    80003284:	0006c683          	lbu	a3,0(a3)
    80003288:	02e7d73b          	divuw	a4,a5,a4
    8000328c:	00200793          	li	a5,2
    80003290:	f8d400a3          	sb	a3,-127(s0)
    80003294:	bca5ece3          	bltu	a1,a0,80002e6c <__printf+0x154>
    80003298:	ce5ff06f          	j	80002f7c <__printf+0x264>
    8000329c:	40e007bb          	negw	a5,a4
    800032a0:	00002d97          	auipc	s11,0x2
    800032a4:	f50d8d93          	addi	s11,s11,-176 # 800051f0 <digits>
    800032a8:	00f7f693          	andi	a3,a5,15
    800032ac:	00dd86b3          	add	a3,s11,a3
    800032b0:	0006c583          	lbu	a1,0(a3)
    800032b4:	ff100613          	li	a2,-15
    800032b8:	0047d69b          	srliw	a3,a5,0x4
    800032bc:	f8b40023          	sb	a1,-128(s0)
    800032c0:	0047d59b          	srliw	a1,a5,0x4
    800032c4:	0ac75e63          	bge	a4,a2,80003380 <__printf+0x668>
    800032c8:	00f6f693          	andi	a3,a3,15
    800032cc:	00dd86b3          	add	a3,s11,a3
    800032d0:	0006c603          	lbu	a2,0(a3)
    800032d4:	00f00693          	li	a3,15
    800032d8:	0087d79b          	srliw	a5,a5,0x8
    800032dc:	f8c400a3          	sb	a2,-127(s0)
    800032e0:	d8b6e4e3          	bltu	a3,a1,80003068 <__printf+0x350>
    800032e4:	00200793          	li	a5,2
    800032e8:	e2dff06f          	j	80003114 <__printf+0x3fc>
    800032ec:	00002c97          	auipc	s9,0x2
    800032f0:	ee4c8c93          	addi	s9,s9,-284 # 800051d0 <_ZZ12printIntegermE6digits+0x148>
    800032f4:	02800513          	li	a0,40
    800032f8:	ef1ff06f          	j	800031e8 <__printf+0x4d0>
    800032fc:	00700793          	li	a5,7
    80003300:	00600c93          	li	s9,6
    80003304:	e0dff06f          	j	80003110 <__printf+0x3f8>
    80003308:	00700793          	li	a5,7
    8000330c:	00600c93          	li	s9,6
    80003310:	c69ff06f          	j	80002f78 <__printf+0x260>
    80003314:	00300793          	li	a5,3
    80003318:	00200c93          	li	s9,2
    8000331c:	c5dff06f          	j	80002f78 <__printf+0x260>
    80003320:	00300793          	li	a5,3
    80003324:	00200c93          	li	s9,2
    80003328:	de9ff06f          	j	80003110 <__printf+0x3f8>
    8000332c:	00400793          	li	a5,4
    80003330:	00300c93          	li	s9,3
    80003334:	dddff06f          	j	80003110 <__printf+0x3f8>
    80003338:	00400793          	li	a5,4
    8000333c:	00300c93          	li	s9,3
    80003340:	c39ff06f          	j	80002f78 <__printf+0x260>
    80003344:	00500793          	li	a5,5
    80003348:	00400c93          	li	s9,4
    8000334c:	c2dff06f          	j	80002f78 <__printf+0x260>
    80003350:	00500793          	li	a5,5
    80003354:	00400c93          	li	s9,4
    80003358:	db9ff06f          	j	80003110 <__printf+0x3f8>
    8000335c:	00600793          	li	a5,6
    80003360:	00500c93          	li	s9,5
    80003364:	dadff06f          	j	80003110 <__printf+0x3f8>
    80003368:	00600793          	li	a5,6
    8000336c:	00500c93          	li	s9,5
    80003370:	c09ff06f          	j	80002f78 <__printf+0x260>
    80003374:	00800793          	li	a5,8
    80003378:	00700c93          	li	s9,7
    8000337c:	bfdff06f          	j	80002f78 <__printf+0x260>
    80003380:	00100793          	li	a5,1
    80003384:	d91ff06f          	j	80003114 <__printf+0x3fc>
    80003388:	00100793          	li	a5,1
    8000338c:	bf1ff06f          	j	80002f7c <__printf+0x264>
    80003390:	00900793          	li	a5,9
    80003394:	00800c93          	li	s9,8
    80003398:	be1ff06f          	j	80002f78 <__printf+0x260>
    8000339c:	00002517          	auipc	a0,0x2
    800033a0:	e3c50513          	addi	a0,a0,-452 # 800051d8 <_ZZ12printIntegermE6digits+0x150>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	918080e7          	jalr	-1768(ra) # 80002cbc <panic>

00000000800033ac <printfinit>:
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	00113c23          	sd	ra,24(sp)
    800033bc:	02010413          	addi	s0,sp,32
    800033c0:	00004497          	auipc	s1,0x4
    800033c4:	84048493          	addi	s1,s1,-1984 # 80006c00 <pr>
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00002597          	auipc	a1,0x2
    800033d0:	e1c58593          	addi	a1,a1,-484 # 800051e8 <_ZZ12printIntegermE6digits+0x160>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	5f4080e7          	jalr	1524(ra) # 800039c8 <initlock>
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	0004ac23          	sw	zero,24(s1)
    800033e8:	00813483          	ld	s1,8(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret

00000000800033f4 <uartinit>:
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	100007b7          	lui	a5,0x10000
    80003404:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003408:	f8000713          	li	a4,-128
    8000340c:	00e781a3          	sb	a4,3(a5)
    80003410:	00300713          	li	a4,3
    80003414:	00e78023          	sb	a4,0(a5)
    80003418:	000780a3          	sb	zero,1(a5)
    8000341c:	00e781a3          	sb	a4,3(a5)
    80003420:	00700693          	li	a3,7
    80003424:	00d78123          	sb	a3,2(a5)
    80003428:	00e780a3          	sb	a4,1(a5)
    8000342c:	00813403          	ld	s0,8(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <uartputc>:
    80003438:	00002797          	auipc	a5,0x2
    8000343c:	5607a783          	lw	a5,1376(a5) # 80005998 <panicked>
    80003440:	00078463          	beqz	a5,80003448 <uartputc+0x10>
    80003444:	0000006f          	j	80003444 <uartputc+0xc>
    80003448:	fd010113          	addi	sp,sp,-48
    8000344c:	02813023          	sd	s0,32(sp)
    80003450:	00913c23          	sd	s1,24(sp)
    80003454:	01213823          	sd	s2,16(sp)
    80003458:	01313423          	sd	s3,8(sp)
    8000345c:	02113423          	sd	ra,40(sp)
    80003460:	03010413          	addi	s0,sp,48
    80003464:	00002917          	auipc	s2,0x2
    80003468:	53c90913          	addi	s2,s2,1340 # 800059a0 <uart_tx_r>
    8000346c:	00093783          	ld	a5,0(s2)
    80003470:	00002497          	auipc	s1,0x2
    80003474:	53848493          	addi	s1,s1,1336 # 800059a8 <uart_tx_w>
    80003478:	0004b703          	ld	a4,0(s1)
    8000347c:	02078693          	addi	a3,a5,32
    80003480:	00050993          	mv	s3,a0
    80003484:	02e69c63          	bne	a3,a4,800034bc <uartputc+0x84>
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	834080e7          	jalr	-1996(ra) # 80003cbc <push_on>
    80003490:	00093783          	ld	a5,0(s2)
    80003494:	0004b703          	ld	a4,0(s1)
    80003498:	02078793          	addi	a5,a5,32
    8000349c:	00e79463          	bne	a5,a4,800034a4 <uartputc+0x6c>
    800034a0:	0000006f          	j	800034a0 <uartputc+0x68>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	88c080e7          	jalr	-1908(ra) # 80003d30 <pop_on>
    800034ac:	00093783          	ld	a5,0(s2)
    800034b0:	0004b703          	ld	a4,0(s1)
    800034b4:	02078693          	addi	a3,a5,32
    800034b8:	fce688e3          	beq	a3,a4,80003488 <uartputc+0x50>
    800034bc:	01f77693          	andi	a3,a4,31
    800034c0:	00003597          	auipc	a1,0x3
    800034c4:	76058593          	addi	a1,a1,1888 # 80006c20 <uart_tx_buf>
    800034c8:	00d586b3          	add	a3,a1,a3
    800034cc:	00170713          	addi	a4,a4,1
    800034d0:	01368023          	sb	s3,0(a3)
    800034d4:	00e4b023          	sd	a4,0(s1)
    800034d8:	10000637          	lui	a2,0x10000
    800034dc:	02f71063          	bne	a4,a5,800034fc <uartputc+0xc4>
    800034e0:	0340006f          	j	80003514 <uartputc+0xdc>
    800034e4:	00074703          	lbu	a4,0(a4)
    800034e8:	00f93023          	sd	a5,0(s2)
    800034ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034f0:	00093783          	ld	a5,0(s2)
    800034f4:	0004b703          	ld	a4,0(s1)
    800034f8:	00f70e63          	beq	a4,a5,80003514 <uartputc+0xdc>
    800034fc:	00564683          	lbu	a3,5(a2)
    80003500:	01f7f713          	andi	a4,a5,31
    80003504:	00e58733          	add	a4,a1,a4
    80003508:	0206f693          	andi	a3,a3,32
    8000350c:	00178793          	addi	a5,a5,1
    80003510:	fc069ae3          	bnez	a3,800034e4 <uartputc+0xac>
    80003514:	02813083          	ld	ra,40(sp)
    80003518:	02013403          	ld	s0,32(sp)
    8000351c:	01813483          	ld	s1,24(sp)
    80003520:	01013903          	ld	s2,16(sp)
    80003524:	00813983          	ld	s3,8(sp)
    80003528:	03010113          	addi	sp,sp,48
    8000352c:	00008067          	ret

0000000080003530 <uartputc_sync>:
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00813423          	sd	s0,8(sp)
    80003538:	01010413          	addi	s0,sp,16
    8000353c:	00002717          	auipc	a4,0x2
    80003540:	45c72703          	lw	a4,1116(a4) # 80005998 <panicked>
    80003544:	02071663          	bnez	a4,80003570 <uartputc_sync+0x40>
    80003548:	00050793          	mv	a5,a0
    8000354c:	100006b7          	lui	a3,0x10000
    80003550:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003554:	02077713          	andi	a4,a4,32
    80003558:	fe070ce3          	beqz	a4,80003550 <uartputc_sync+0x20>
    8000355c:	0ff7f793          	andi	a5,a5,255
    80003560:	00f68023          	sb	a5,0(a3)
    80003564:	00813403          	ld	s0,8(sp)
    80003568:	01010113          	addi	sp,sp,16
    8000356c:	00008067          	ret
    80003570:	0000006f          	j	80003570 <uartputc_sync+0x40>

0000000080003574 <uartstart>:
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00813423          	sd	s0,8(sp)
    8000357c:	01010413          	addi	s0,sp,16
    80003580:	00002617          	auipc	a2,0x2
    80003584:	42060613          	addi	a2,a2,1056 # 800059a0 <uart_tx_r>
    80003588:	00002517          	auipc	a0,0x2
    8000358c:	42050513          	addi	a0,a0,1056 # 800059a8 <uart_tx_w>
    80003590:	00063783          	ld	a5,0(a2)
    80003594:	00053703          	ld	a4,0(a0)
    80003598:	04f70263          	beq	a4,a5,800035dc <uartstart+0x68>
    8000359c:	100005b7          	lui	a1,0x10000
    800035a0:	00003817          	auipc	a6,0x3
    800035a4:	68080813          	addi	a6,a6,1664 # 80006c20 <uart_tx_buf>
    800035a8:	01c0006f          	j	800035c4 <uartstart+0x50>
    800035ac:	0006c703          	lbu	a4,0(a3)
    800035b0:	00f63023          	sd	a5,0(a2)
    800035b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035b8:	00063783          	ld	a5,0(a2)
    800035bc:	00053703          	ld	a4,0(a0)
    800035c0:	00f70e63          	beq	a4,a5,800035dc <uartstart+0x68>
    800035c4:	01f7f713          	andi	a4,a5,31
    800035c8:	00e806b3          	add	a3,a6,a4
    800035cc:	0055c703          	lbu	a4,5(a1)
    800035d0:	00178793          	addi	a5,a5,1
    800035d4:	02077713          	andi	a4,a4,32
    800035d8:	fc071ae3          	bnez	a4,800035ac <uartstart+0x38>
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret

00000000800035e8 <uartgetc>:
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00813423          	sd	s0,8(sp)
    800035f0:	01010413          	addi	s0,sp,16
    800035f4:	10000737          	lui	a4,0x10000
    800035f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035fc:	0017f793          	andi	a5,a5,1
    80003600:	00078c63          	beqz	a5,80003618 <uartgetc+0x30>
    80003604:	00074503          	lbu	a0,0(a4)
    80003608:	0ff57513          	andi	a0,a0,255
    8000360c:	00813403          	ld	s0,8(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
    80003618:	fff00513          	li	a0,-1
    8000361c:	ff1ff06f          	j	8000360c <uartgetc+0x24>

0000000080003620 <uartintr>:
    80003620:	100007b7          	lui	a5,0x10000
    80003624:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003628:	0017f793          	andi	a5,a5,1
    8000362c:	0a078463          	beqz	a5,800036d4 <uartintr+0xb4>
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	100004b7          	lui	s1,0x10000
    80003648:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000364c:	0ff57513          	andi	a0,a0,255
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	534080e7          	jalr	1332(ra) # 80002b84 <consoleintr>
    80003658:	0054c783          	lbu	a5,5(s1)
    8000365c:	0017f793          	andi	a5,a5,1
    80003660:	fe0794e3          	bnez	a5,80003648 <uartintr+0x28>
    80003664:	00002617          	auipc	a2,0x2
    80003668:	33c60613          	addi	a2,a2,828 # 800059a0 <uart_tx_r>
    8000366c:	00002517          	auipc	a0,0x2
    80003670:	33c50513          	addi	a0,a0,828 # 800059a8 <uart_tx_w>
    80003674:	00063783          	ld	a5,0(a2)
    80003678:	00053703          	ld	a4,0(a0)
    8000367c:	04f70263          	beq	a4,a5,800036c0 <uartintr+0xa0>
    80003680:	100005b7          	lui	a1,0x10000
    80003684:	00003817          	auipc	a6,0x3
    80003688:	59c80813          	addi	a6,a6,1436 # 80006c20 <uart_tx_buf>
    8000368c:	01c0006f          	j	800036a8 <uartintr+0x88>
    80003690:	0006c703          	lbu	a4,0(a3)
    80003694:	00f63023          	sd	a5,0(a2)
    80003698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000369c:	00063783          	ld	a5,0(a2)
    800036a0:	00053703          	ld	a4,0(a0)
    800036a4:	00f70e63          	beq	a4,a5,800036c0 <uartintr+0xa0>
    800036a8:	01f7f713          	andi	a4,a5,31
    800036ac:	00e806b3          	add	a3,a6,a4
    800036b0:	0055c703          	lbu	a4,5(a1)
    800036b4:	00178793          	addi	a5,a5,1
    800036b8:	02077713          	andi	a4,a4,32
    800036bc:	fc071ae3          	bnez	a4,80003690 <uartintr+0x70>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00813483          	ld	s1,8(sp)
    800036cc:	02010113          	addi	sp,sp,32
    800036d0:	00008067          	ret
    800036d4:	00002617          	auipc	a2,0x2
    800036d8:	2cc60613          	addi	a2,a2,716 # 800059a0 <uart_tx_r>
    800036dc:	00002517          	auipc	a0,0x2
    800036e0:	2cc50513          	addi	a0,a0,716 # 800059a8 <uart_tx_w>
    800036e4:	00063783          	ld	a5,0(a2)
    800036e8:	00053703          	ld	a4,0(a0)
    800036ec:	04f70263          	beq	a4,a5,80003730 <uartintr+0x110>
    800036f0:	100005b7          	lui	a1,0x10000
    800036f4:	00003817          	auipc	a6,0x3
    800036f8:	52c80813          	addi	a6,a6,1324 # 80006c20 <uart_tx_buf>
    800036fc:	01c0006f          	j	80003718 <uartintr+0xf8>
    80003700:	0006c703          	lbu	a4,0(a3)
    80003704:	00f63023          	sd	a5,0(a2)
    80003708:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000370c:	00063783          	ld	a5,0(a2)
    80003710:	00053703          	ld	a4,0(a0)
    80003714:	02f70063          	beq	a4,a5,80003734 <uartintr+0x114>
    80003718:	01f7f713          	andi	a4,a5,31
    8000371c:	00e806b3          	add	a3,a6,a4
    80003720:	0055c703          	lbu	a4,5(a1)
    80003724:	00178793          	addi	a5,a5,1
    80003728:	02077713          	andi	a4,a4,32
    8000372c:	fc071ae3          	bnez	a4,80003700 <uartintr+0xe0>
    80003730:	00008067          	ret
    80003734:	00008067          	ret

0000000080003738 <kinit>:
    80003738:	fc010113          	addi	sp,sp,-64
    8000373c:	02913423          	sd	s1,40(sp)
    80003740:	fffff7b7          	lui	a5,0xfffff
    80003744:	00004497          	auipc	s1,0x4
    80003748:	4fb48493          	addi	s1,s1,1275 # 80007c3f <end+0xfff>
    8000374c:	02813823          	sd	s0,48(sp)
    80003750:	01313c23          	sd	s3,24(sp)
    80003754:	00f4f4b3          	and	s1,s1,a5
    80003758:	02113c23          	sd	ra,56(sp)
    8000375c:	03213023          	sd	s2,32(sp)
    80003760:	01413823          	sd	s4,16(sp)
    80003764:	01513423          	sd	s5,8(sp)
    80003768:	04010413          	addi	s0,sp,64
    8000376c:	000017b7          	lui	a5,0x1
    80003770:	01100993          	li	s3,17
    80003774:	00f487b3          	add	a5,s1,a5
    80003778:	01b99993          	slli	s3,s3,0x1b
    8000377c:	06f9e063          	bltu	s3,a5,800037dc <kinit+0xa4>
    80003780:	00003a97          	auipc	s5,0x3
    80003784:	4c0a8a93          	addi	s5,s5,1216 # 80006c40 <end>
    80003788:	0754ec63          	bltu	s1,s5,80003800 <kinit+0xc8>
    8000378c:	0734fa63          	bgeu	s1,s3,80003800 <kinit+0xc8>
    80003790:	00088a37          	lui	s4,0x88
    80003794:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003798:	00002917          	auipc	s2,0x2
    8000379c:	21890913          	addi	s2,s2,536 # 800059b0 <kmem>
    800037a0:	00ca1a13          	slli	s4,s4,0xc
    800037a4:	0140006f          	j	800037b8 <kinit+0x80>
    800037a8:	000017b7          	lui	a5,0x1
    800037ac:	00f484b3          	add	s1,s1,a5
    800037b0:	0554e863          	bltu	s1,s5,80003800 <kinit+0xc8>
    800037b4:	0534f663          	bgeu	s1,s3,80003800 <kinit+0xc8>
    800037b8:	00001637          	lui	a2,0x1
    800037bc:	00100593          	li	a1,1
    800037c0:	00048513          	mv	a0,s1
    800037c4:	00000097          	auipc	ra,0x0
    800037c8:	5e4080e7          	jalr	1508(ra) # 80003da8 <__memset>
    800037cc:	00093783          	ld	a5,0(s2)
    800037d0:	00f4b023          	sd	a5,0(s1)
    800037d4:	00993023          	sd	s1,0(s2)
    800037d8:	fd4498e3          	bne	s1,s4,800037a8 <kinit+0x70>
    800037dc:	03813083          	ld	ra,56(sp)
    800037e0:	03013403          	ld	s0,48(sp)
    800037e4:	02813483          	ld	s1,40(sp)
    800037e8:	02013903          	ld	s2,32(sp)
    800037ec:	01813983          	ld	s3,24(sp)
    800037f0:	01013a03          	ld	s4,16(sp)
    800037f4:	00813a83          	ld	s5,8(sp)
    800037f8:	04010113          	addi	sp,sp,64
    800037fc:	00008067          	ret
    80003800:	00002517          	auipc	a0,0x2
    80003804:	a0850513          	addi	a0,a0,-1528 # 80005208 <digits+0x18>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	4b4080e7          	jalr	1204(ra) # 80002cbc <panic>

0000000080003810 <freerange>:
    80003810:	fc010113          	addi	sp,sp,-64
    80003814:	000017b7          	lui	a5,0x1
    80003818:	02913423          	sd	s1,40(sp)
    8000381c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003820:	009504b3          	add	s1,a0,s1
    80003824:	fffff537          	lui	a0,0xfffff
    80003828:	02813823          	sd	s0,48(sp)
    8000382c:	02113c23          	sd	ra,56(sp)
    80003830:	03213023          	sd	s2,32(sp)
    80003834:	01313c23          	sd	s3,24(sp)
    80003838:	01413823          	sd	s4,16(sp)
    8000383c:	01513423          	sd	s5,8(sp)
    80003840:	01613023          	sd	s6,0(sp)
    80003844:	04010413          	addi	s0,sp,64
    80003848:	00a4f4b3          	and	s1,s1,a0
    8000384c:	00f487b3          	add	a5,s1,a5
    80003850:	06f5e463          	bltu	a1,a5,800038b8 <freerange+0xa8>
    80003854:	00003a97          	auipc	s5,0x3
    80003858:	3eca8a93          	addi	s5,s5,1004 # 80006c40 <end>
    8000385c:	0954e263          	bltu	s1,s5,800038e0 <freerange+0xd0>
    80003860:	01100993          	li	s3,17
    80003864:	01b99993          	slli	s3,s3,0x1b
    80003868:	0734fc63          	bgeu	s1,s3,800038e0 <freerange+0xd0>
    8000386c:	00058a13          	mv	s4,a1
    80003870:	00002917          	auipc	s2,0x2
    80003874:	14090913          	addi	s2,s2,320 # 800059b0 <kmem>
    80003878:	00002b37          	lui	s6,0x2
    8000387c:	0140006f          	j	80003890 <freerange+0x80>
    80003880:	000017b7          	lui	a5,0x1
    80003884:	00f484b3          	add	s1,s1,a5
    80003888:	0554ec63          	bltu	s1,s5,800038e0 <freerange+0xd0>
    8000388c:	0534fa63          	bgeu	s1,s3,800038e0 <freerange+0xd0>
    80003890:	00001637          	lui	a2,0x1
    80003894:	00100593          	li	a1,1
    80003898:	00048513          	mv	a0,s1
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	50c080e7          	jalr	1292(ra) # 80003da8 <__memset>
    800038a4:	00093703          	ld	a4,0(s2)
    800038a8:	016487b3          	add	a5,s1,s6
    800038ac:	00e4b023          	sd	a4,0(s1)
    800038b0:	00993023          	sd	s1,0(s2)
    800038b4:	fcfa76e3          	bgeu	s4,a5,80003880 <freerange+0x70>
    800038b8:	03813083          	ld	ra,56(sp)
    800038bc:	03013403          	ld	s0,48(sp)
    800038c0:	02813483          	ld	s1,40(sp)
    800038c4:	02013903          	ld	s2,32(sp)
    800038c8:	01813983          	ld	s3,24(sp)
    800038cc:	01013a03          	ld	s4,16(sp)
    800038d0:	00813a83          	ld	s5,8(sp)
    800038d4:	00013b03          	ld	s6,0(sp)
    800038d8:	04010113          	addi	sp,sp,64
    800038dc:	00008067          	ret
    800038e0:	00002517          	auipc	a0,0x2
    800038e4:	92850513          	addi	a0,a0,-1752 # 80005208 <digits+0x18>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	3d4080e7          	jalr	980(ra) # 80002cbc <panic>

00000000800038f0 <kfree>:
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	03451793          	slli	a5,a0,0x34
    80003908:	04079c63          	bnez	a5,80003960 <kfree+0x70>
    8000390c:	00003797          	auipc	a5,0x3
    80003910:	33478793          	addi	a5,a5,820 # 80006c40 <end>
    80003914:	00050493          	mv	s1,a0
    80003918:	04f56463          	bltu	a0,a5,80003960 <kfree+0x70>
    8000391c:	01100793          	li	a5,17
    80003920:	01b79793          	slli	a5,a5,0x1b
    80003924:	02f57e63          	bgeu	a0,a5,80003960 <kfree+0x70>
    80003928:	00001637          	lui	a2,0x1
    8000392c:	00100593          	li	a1,1
    80003930:	00000097          	auipc	ra,0x0
    80003934:	478080e7          	jalr	1144(ra) # 80003da8 <__memset>
    80003938:	00002797          	auipc	a5,0x2
    8000393c:	07878793          	addi	a5,a5,120 # 800059b0 <kmem>
    80003940:	0007b703          	ld	a4,0(a5)
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00e4b023          	sd	a4,0(s1)
    80003950:	0097b023          	sd	s1,0(a5)
    80003954:	00813483          	ld	s1,8(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret
    80003960:	00002517          	auipc	a0,0x2
    80003964:	8a850513          	addi	a0,a0,-1880 # 80005208 <digits+0x18>
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	354080e7          	jalr	852(ra) # 80002cbc <panic>

0000000080003970 <kalloc>:
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00913423          	sd	s1,8(sp)
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	00002797          	auipc	a5,0x2
    80003988:	02c78793          	addi	a5,a5,44 # 800059b0 <kmem>
    8000398c:	0007b483          	ld	s1,0(a5)
    80003990:	02048063          	beqz	s1,800039b0 <kalloc+0x40>
    80003994:	0004b703          	ld	a4,0(s1)
    80003998:	00001637          	lui	a2,0x1
    8000399c:	00500593          	li	a1,5
    800039a0:	00048513          	mv	a0,s1
    800039a4:	00e7b023          	sd	a4,0(a5)
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	400080e7          	jalr	1024(ra) # 80003da8 <__memset>
    800039b0:	01813083          	ld	ra,24(sp)
    800039b4:	01013403          	ld	s0,16(sp)
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00813483          	ld	s1,8(sp)
    800039c0:	02010113          	addi	sp,sp,32
    800039c4:	00008067          	ret

00000000800039c8 <initlock>:
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00813423          	sd	s0,8(sp)
    800039d0:	01010413          	addi	s0,sp,16
    800039d4:	00813403          	ld	s0,8(sp)
    800039d8:	00b53423          	sd	a1,8(a0)
    800039dc:	00052023          	sw	zero,0(a0)
    800039e0:	00053823          	sd	zero,16(a0)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret

00000000800039ec <acquire>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00913423          	sd	s1,8(sp)
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	01213023          	sd	s2,0(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	00050493          	mv	s1,a0
    80003a08:	10002973          	csrr	s2,sstatus
    80003a0c:	100027f3          	csrr	a5,sstatus
    80003a10:	ffd7f793          	andi	a5,a5,-3
    80003a14:	10079073          	csrw	sstatus,a5
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	8ec080e7          	jalr	-1812(ra) # 80002304 <mycpu>
    80003a20:	07852783          	lw	a5,120(a0)
    80003a24:	06078e63          	beqz	a5,80003aa0 <acquire+0xb4>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	8dc080e7          	jalr	-1828(ra) # 80002304 <mycpu>
    80003a30:	07852783          	lw	a5,120(a0)
    80003a34:	0004a703          	lw	a4,0(s1)
    80003a38:	0017879b          	addiw	a5,a5,1
    80003a3c:	06f52c23          	sw	a5,120(a0)
    80003a40:	04071063          	bnez	a4,80003a80 <acquire+0x94>
    80003a44:	00100713          	li	a4,1
    80003a48:	00070793          	mv	a5,a4
    80003a4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a50:	0007879b          	sext.w	a5,a5
    80003a54:	fe079ae3          	bnez	a5,80003a48 <acquire+0x5c>
    80003a58:	0ff0000f          	fence
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	8a8080e7          	jalr	-1880(ra) # 80002304 <mycpu>
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00a4b823          	sd	a0,16(s1)
    80003a70:	00013903          	ld	s2,0(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret
    80003a80:	0104b903          	ld	s2,16(s1)
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	880080e7          	jalr	-1920(ra) # 80002304 <mycpu>
    80003a8c:	faa91ce3          	bne	s2,a0,80003a44 <acquire+0x58>
    80003a90:	00001517          	auipc	a0,0x1
    80003a94:	78050513          	addi	a0,a0,1920 # 80005210 <digits+0x20>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	224080e7          	jalr	548(ra) # 80002cbc <panic>
    80003aa0:	00195913          	srli	s2,s2,0x1
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	860080e7          	jalr	-1952(ra) # 80002304 <mycpu>
    80003aac:	00197913          	andi	s2,s2,1
    80003ab0:	07252e23          	sw	s2,124(a0)
    80003ab4:	f75ff06f          	j	80003a28 <acquire+0x3c>

0000000080003ab8 <release>:
    80003ab8:	fe010113          	addi	sp,sp,-32
    80003abc:	00813823          	sd	s0,16(sp)
    80003ac0:	00113c23          	sd	ra,24(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	01213023          	sd	s2,0(sp)
    80003acc:	02010413          	addi	s0,sp,32
    80003ad0:	00052783          	lw	a5,0(a0)
    80003ad4:	00079a63          	bnez	a5,80003ae8 <release+0x30>
    80003ad8:	00001517          	auipc	a0,0x1
    80003adc:	74050513          	addi	a0,a0,1856 # 80005218 <digits+0x28>
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	1dc080e7          	jalr	476(ra) # 80002cbc <panic>
    80003ae8:	01053903          	ld	s2,16(a0)
    80003aec:	00050493          	mv	s1,a0
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	814080e7          	jalr	-2028(ra) # 80002304 <mycpu>
    80003af8:	fea910e3          	bne	s2,a0,80003ad8 <release+0x20>
    80003afc:	0004b823          	sd	zero,16(s1)
    80003b00:	0ff0000f          	fence
    80003b04:	0f50000f          	fence	iorw,ow
    80003b08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	7f8080e7          	jalr	2040(ra) # 80002304 <mycpu>
    80003b14:	100027f3          	csrr	a5,sstatus
    80003b18:	0027f793          	andi	a5,a5,2
    80003b1c:	04079a63          	bnez	a5,80003b70 <release+0xb8>
    80003b20:	07852783          	lw	a5,120(a0)
    80003b24:	02f05e63          	blez	a5,80003b60 <release+0xa8>
    80003b28:	fff7871b          	addiw	a4,a5,-1
    80003b2c:	06e52c23          	sw	a4,120(a0)
    80003b30:	00071c63          	bnez	a4,80003b48 <release+0x90>
    80003b34:	07c52783          	lw	a5,124(a0)
    80003b38:	00078863          	beqz	a5,80003b48 <release+0x90>
    80003b3c:	100027f3          	csrr	a5,sstatus
    80003b40:	0027e793          	ori	a5,a5,2
    80003b44:	10079073          	csrw	sstatus,a5
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	01013403          	ld	s0,16(sp)
    80003b50:	00813483          	ld	s1,8(sp)
    80003b54:	00013903          	ld	s2,0(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret
    80003b60:	00001517          	auipc	a0,0x1
    80003b64:	6d850513          	addi	a0,a0,1752 # 80005238 <digits+0x48>
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	154080e7          	jalr	340(ra) # 80002cbc <panic>
    80003b70:	00001517          	auipc	a0,0x1
    80003b74:	6b050513          	addi	a0,a0,1712 # 80005220 <digits+0x30>
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	144080e7          	jalr	324(ra) # 80002cbc <panic>

0000000080003b80 <holding>:
    80003b80:	00052783          	lw	a5,0(a0)
    80003b84:	00079663          	bnez	a5,80003b90 <holding+0x10>
    80003b88:	00000513          	li	a0,0
    80003b8c:	00008067          	ret
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	01053483          	ld	s1,16(a0)
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	75c080e7          	jalr	1884(ra) # 80002304 <mycpu>
    80003bb0:	01813083          	ld	ra,24(sp)
    80003bb4:	01013403          	ld	s0,16(sp)
    80003bb8:	40a48533          	sub	a0,s1,a0
    80003bbc:	00153513          	seqz	a0,a0
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	02010113          	addi	sp,sp,32
    80003bc8:	00008067          	ret

0000000080003bcc <push_off>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00813823          	sd	s0,16(sp)
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	100024f3          	csrr	s1,sstatus
    80003be4:	100027f3          	csrr	a5,sstatus
    80003be8:	ffd7f793          	andi	a5,a5,-3
    80003bec:	10079073          	csrw	sstatus,a5
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	714080e7          	jalr	1812(ra) # 80002304 <mycpu>
    80003bf8:	07852783          	lw	a5,120(a0)
    80003bfc:	02078663          	beqz	a5,80003c28 <push_off+0x5c>
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	704080e7          	jalr	1796(ra) # 80002304 <mycpu>
    80003c08:	07852783          	lw	a5,120(a0)
    80003c0c:	01813083          	ld	ra,24(sp)
    80003c10:	01013403          	ld	s0,16(sp)
    80003c14:	0017879b          	addiw	a5,a5,1
    80003c18:	06f52c23          	sw	a5,120(a0)
    80003c1c:	00813483          	ld	s1,8(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret
    80003c28:	0014d493          	srli	s1,s1,0x1
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	6d8080e7          	jalr	1752(ra) # 80002304 <mycpu>
    80003c34:	0014f493          	andi	s1,s1,1
    80003c38:	06952e23          	sw	s1,124(a0)
    80003c3c:	fc5ff06f          	j	80003c00 <push_off+0x34>

0000000080003c40 <pop_off>:
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813023          	sd	s0,0(sp)
    80003c48:	00113423          	sd	ra,8(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	6b4080e7          	jalr	1716(ra) # 80002304 <mycpu>
    80003c58:	100027f3          	csrr	a5,sstatus
    80003c5c:	0027f793          	andi	a5,a5,2
    80003c60:	04079663          	bnez	a5,80003cac <pop_off+0x6c>
    80003c64:	07852783          	lw	a5,120(a0)
    80003c68:	02f05a63          	blez	a5,80003c9c <pop_off+0x5c>
    80003c6c:	fff7871b          	addiw	a4,a5,-1
    80003c70:	06e52c23          	sw	a4,120(a0)
    80003c74:	00071c63          	bnez	a4,80003c8c <pop_off+0x4c>
    80003c78:	07c52783          	lw	a5,124(a0)
    80003c7c:	00078863          	beqz	a5,80003c8c <pop_off+0x4c>
    80003c80:	100027f3          	csrr	a5,sstatus
    80003c84:	0027e793          	ori	a5,a5,2
    80003c88:	10079073          	csrw	sstatus,a5
    80003c8c:	00813083          	ld	ra,8(sp)
    80003c90:	00013403          	ld	s0,0(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret
    80003c9c:	00001517          	auipc	a0,0x1
    80003ca0:	59c50513          	addi	a0,a0,1436 # 80005238 <digits+0x48>
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	018080e7          	jalr	24(ra) # 80002cbc <panic>
    80003cac:	00001517          	auipc	a0,0x1
    80003cb0:	57450513          	addi	a0,a0,1396 # 80005220 <digits+0x30>
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	008080e7          	jalr	8(ra) # 80002cbc <panic>

0000000080003cbc <push_on>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	100024f3          	csrr	s1,sstatus
    80003cd4:	100027f3          	csrr	a5,sstatus
    80003cd8:	0027e793          	ori	a5,a5,2
    80003cdc:	10079073          	csrw	sstatus,a5
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	624080e7          	jalr	1572(ra) # 80002304 <mycpu>
    80003ce8:	07852783          	lw	a5,120(a0)
    80003cec:	02078663          	beqz	a5,80003d18 <push_on+0x5c>
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	614080e7          	jalr	1556(ra) # 80002304 <mycpu>
    80003cf8:	07852783          	lw	a5,120(a0)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	01013403          	ld	s0,16(sp)
    80003d04:	0017879b          	addiw	a5,a5,1
    80003d08:	06f52c23          	sw	a5,120(a0)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret
    80003d18:	0014d493          	srli	s1,s1,0x1
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	5e8080e7          	jalr	1512(ra) # 80002304 <mycpu>
    80003d24:	0014f493          	andi	s1,s1,1
    80003d28:	06952e23          	sw	s1,124(a0)
    80003d2c:	fc5ff06f          	j	80003cf0 <push_on+0x34>

0000000080003d30 <pop_on>:
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00813023          	sd	s0,0(sp)
    80003d38:	00113423          	sd	ra,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	5c4080e7          	jalr	1476(ra) # 80002304 <mycpu>
    80003d48:	100027f3          	csrr	a5,sstatus
    80003d4c:	0027f793          	andi	a5,a5,2
    80003d50:	04078463          	beqz	a5,80003d98 <pop_on+0x68>
    80003d54:	07852783          	lw	a5,120(a0)
    80003d58:	02f05863          	blez	a5,80003d88 <pop_on+0x58>
    80003d5c:	fff7879b          	addiw	a5,a5,-1
    80003d60:	06f52c23          	sw	a5,120(a0)
    80003d64:	07853783          	ld	a5,120(a0)
    80003d68:	00079863          	bnez	a5,80003d78 <pop_on+0x48>
    80003d6c:	100027f3          	csrr	a5,sstatus
    80003d70:	ffd7f793          	andi	a5,a5,-3
    80003d74:	10079073          	csrw	sstatus,a5
    80003d78:	00813083          	ld	ra,8(sp)
    80003d7c:	00013403          	ld	s0,0(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret
    80003d88:	00001517          	auipc	a0,0x1
    80003d8c:	4d850513          	addi	a0,a0,1240 # 80005260 <digits+0x70>
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	f2c080e7          	jalr	-212(ra) # 80002cbc <panic>
    80003d98:	00001517          	auipc	a0,0x1
    80003d9c:	4a850513          	addi	a0,a0,1192 # 80005240 <digits+0x50>
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	f1c080e7          	jalr	-228(ra) # 80002cbc <panic>

0000000080003da8 <__memset>:
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	1a060e63          	beqz	a2,80003f70 <__memset+0x1c8>
    80003db8:	40a007b3          	neg	a5,a0
    80003dbc:	0077f793          	andi	a5,a5,7
    80003dc0:	00778693          	addi	a3,a5,7
    80003dc4:	00b00813          	li	a6,11
    80003dc8:	0ff5f593          	andi	a1,a1,255
    80003dcc:	fff6071b          	addiw	a4,a2,-1
    80003dd0:	1b06e663          	bltu	a3,a6,80003f7c <__memset+0x1d4>
    80003dd4:	1cd76463          	bltu	a4,a3,80003f9c <__memset+0x1f4>
    80003dd8:	1a078e63          	beqz	a5,80003f94 <__memset+0x1ec>
    80003ddc:	00b50023          	sb	a1,0(a0)
    80003de0:	00100713          	li	a4,1
    80003de4:	1ae78463          	beq	a5,a4,80003f8c <__memset+0x1e4>
    80003de8:	00b500a3          	sb	a1,1(a0)
    80003dec:	00200713          	li	a4,2
    80003df0:	1ae78a63          	beq	a5,a4,80003fa4 <__memset+0x1fc>
    80003df4:	00b50123          	sb	a1,2(a0)
    80003df8:	00300713          	li	a4,3
    80003dfc:	18e78463          	beq	a5,a4,80003f84 <__memset+0x1dc>
    80003e00:	00b501a3          	sb	a1,3(a0)
    80003e04:	00400713          	li	a4,4
    80003e08:	1ae78263          	beq	a5,a4,80003fac <__memset+0x204>
    80003e0c:	00b50223          	sb	a1,4(a0)
    80003e10:	00500713          	li	a4,5
    80003e14:	1ae78063          	beq	a5,a4,80003fb4 <__memset+0x20c>
    80003e18:	00b502a3          	sb	a1,5(a0)
    80003e1c:	00700713          	li	a4,7
    80003e20:	18e79e63          	bne	a5,a4,80003fbc <__memset+0x214>
    80003e24:	00b50323          	sb	a1,6(a0)
    80003e28:	00700e93          	li	t4,7
    80003e2c:	00859713          	slli	a4,a1,0x8
    80003e30:	00e5e733          	or	a4,a1,a4
    80003e34:	01059e13          	slli	t3,a1,0x10
    80003e38:	01c76e33          	or	t3,a4,t3
    80003e3c:	01859313          	slli	t1,a1,0x18
    80003e40:	006e6333          	or	t1,t3,t1
    80003e44:	02059893          	slli	a7,a1,0x20
    80003e48:	40f60e3b          	subw	t3,a2,a5
    80003e4c:	011368b3          	or	a7,t1,a7
    80003e50:	02859813          	slli	a6,a1,0x28
    80003e54:	0108e833          	or	a6,a7,a6
    80003e58:	03059693          	slli	a3,a1,0x30
    80003e5c:	003e589b          	srliw	a7,t3,0x3
    80003e60:	00d866b3          	or	a3,a6,a3
    80003e64:	03859713          	slli	a4,a1,0x38
    80003e68:	00389813          	slli	a6,a7,0x3
    80003e6c:	00f507b3          	add	a5,a0,a5
    80003e70:	00e6e733          	or	a4,a3,a4
    80003e74:	000e089b          	sext.w	a7,t3
    80003e78:	00f806b3          	add	a3,a6,a5
    80003e7c:	00e7b023          	sd	a4,0(a5)
    80003e80:	00878793          	addi	a5,a5,8
    80003e84:	fed79ce3          	bne	a5,a3,80003e7c <__memset+0xd4>
    80003e88:	ff8e7793          	andi	a5,t3,-8
    80003e8c:	0007871b          	sext.w	a4,a5
    80003e90:	01d787bb          	addw	a5,a5,t4
    80003e94:	0ce88e63          	beq	a7,a4,80003f70 <__memset+0x1c8>
    80003e98:	00f50733          	add	a4,a0,a5
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0017871b          	addiw	a4,a5,1
    80003ea4:	0cc77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0027871b          	addiw	a4,a5,2
    80003eb4:	0ac77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0037871b          	addiw	a4,a5,3
    80003ec4:	0ac77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0047871b          	addiw	a4,a5,4
    80003ed4:	08c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0057871b          	addiw	a4,a5,5
    80003ee4:	08c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0067871b          	addiw	a4,a5,6
    80003ef4:	06c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0077871b          	addiw	a4,a5,7
    80003f04:	06c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0087871b          	addiw	a4,a5,8
    80003f14:	04c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	0097871b          	addiw	a4,a5,9
    80003f24:	04c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	00a7871b          	addiw	a4,a5,10
    80003f34:	02c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	00b7871b          	addiw	a4,a5,11
    80003f44:	02c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	00c7871b          	addiw	a4,a5,12
    80003f54:	00c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f58:	00e50733          	add	a4,a0,a4
    80003f5c:	00b70023          	sb	a1,0(a4)
    80003f60:	00d7879b          	addiw	a5,a5,13
    80003f64:	00c7f663          	bgeu	a5,a2,80003f70 <__memset+0x1c8>
    80003f68:	00f507b3          	add	a5,a0,a5
    80003f6c:	00b78023          	sb	a1,0(a5)
    80003f70:	00813403          	ld	s0,8(sp)
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	00008067          	ret
    80003f7c:	00b00693          	li	a3,11
    80003f80:	e55ff06f          	j	80003dd4 <__memset+0x2c>
    80003f84:	00300e93          	li	t4,3
    80003f88:	ea5ff06f          	j	80003e2c <__memset+0x84>
    80003f8c:	00100e93          	li	t4,1
    80003f90:	e9dff06f          	j	80003e2c <__memset+0x84>
    80003f94:	00000e93          	li	t4,0
    80003f98:	e95ff06f          	j	80003e2c <__memset+0x84>
    80003f9c:	00000793          	li	a5,0
    80003fa0:	ef9ff06f          	j	80003e98 <__memset+0xf0>
    80003fa4:	00200e93          	li	t4,2
    80003fa8:	e85ff06f          	j	80003e2c <__memset+0x84>
    80003fac:	00400e93          	li	t4,4
    80003fb0:	e7dff06f          	j	80003e2c <__memset+0x84>
    80003fb4:	00500e93          	li	t4,5
    80003fb8:	e75ff06f          	j	80003e2c <__memset+0x84>
    80003fbc:	00600e93          	li	t4,6
    80003fc0:	e6dff06f          	j	80003e2c <__memset+0x84>

0000000080003fc4 <__memmove>:
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813423          	sd	s0,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    80003fd0:	0e060863          	beqz	a2,800040c0 <__memmove+0xfc>
    80003fd4:	fff6069b          	addiw	a3,a2,-1
    80003fd8:	0006881b          	sext.w	a6,a3
    80003fdc:	0ea5e863          	bltu	a1,a0,800040cc <__memmove+0x108>
    80003fe0:	00758713          	addi	a4,a1,7
    80003fe4:	00a5e7b3          	or	a5,a1,a0
    80003fe8:	40a70733          	sub	a4,a4,a0
    80003fec:	0077f793          	andi	a5,a5,7
    80003ff0:	00f73713          	sltiu	a4,a4,15
    80003ff4:	00174713          	xori	a4,a4,1
    80003ff8:	0017b793          	seqz	a5,a5
    80003ffc:	00e7f7b3          	and	a5,a5,a4
    80004000:	10078863          	beqz	a5,80004110 <__memmove+0x14c>
    80004004:	00900793          	li	a5,9
    80004008:	1107f463          	bgeu	a5,a6,80004110 <__memmove+0x14c>
    8000400c:	0036581b          	srliw	a6,a2,0x3
    80004010:	fff8081b          	addiw	a6,a6,-1
    80004014:	02081813          	slli	a6,a6,0x20
    80004018:	01d85893          	srli	a7,a6,0x1d
    8000401c:	00858813          	addi	a6,a1,8
    80004020:	00058793          	mv	a5,a1
    80004024:	00050713          	mv	a4,a0
    80004028:	01088833          	add	a6,a7,a6
    8000402c:	0007b883          	ld	a7,0(a5)
    80004030:	00878793          	addi	a5,a5,8
    80004034:	00870713          	addi	a4,a4,8
    80004038:	ff173c23          	sd	a7,-8(a4)
    8000403c:	ff0798e3          	bne	a5,a6,8000402c <__memmove+0x68>
    80004040:	ff867713          	andi	a4,a2,-8
    80004044:	02071793          	slli	a5,a4,0x20
    80004048:	0207d793          	srli	a5,a5,0x20
    8000404c:	00f585b3          	add	a1,a1,a5
    80004050:	40e686bb          	subw	a3,a3,a4
    80004054:	00f507b3          	add	a5,a0,a5
    80004058:	06e60463          	beq	a2,a4,800040c0 <__memmove+0xfc>
    8000405c:	0005c703          	lbu	a4,0(a1)
    80004060:	00e78023          	sb	a4,0(a5)
    80004064:	04068e63          	beqz	a3,800040c0 <__memmove+0xfc>
    80004068:	0015c603          	lbu	a2,1(a1)
    8000406c:	00100713          	li	a4,1
    80004070:	00c780a3          	sb	a2,1(a5)
    80004074:	04e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004078:	0025c603          	lbu	a2,2(a1)
    8000407c:	00200713          	li	a4,2
    80004080:	00c78123          	sb	a2,2(a5)
    80004084:	02e68e63          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004088:	0035c603          	lbu	a2,3(a1)
    8000408c:	00300713          	li	a4,3
    80004090:	00c781a3          	sb	a2,3(a5)
    80004094:	02e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004098:	0045c603          	lbu	a2,4(a1)
    8000409c:	00400713          	li	a4,4
    800040a0:	00c78223          	sb	a2,4(a5)
    800040a4:	00e68e63          	beq	a3,a4,800040c0 <__memmove+0xfc>
    800040a8:	0055c603          	lbu	a2,5(a1)
    800040ac:	00500713          	li	a4,5
    800040b0:	00c782a3          	sb	a2,5(a5)
    800040b4:	00e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    800040b8:	0065c703          	lbu	a4,6(a1)
    800040bc:	00e78323          	sb	a4,6(a5)
    800040c0:	00813403          	ld	s0,8(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret
    800040cc:	02061713          	slli	a4,a2,0x20
    800040d0:	02075713          	srli	a4,a4,0x20
    800040d4:	00e587b3          	add	a5,a1,a4
    800040d8:	f0f574e3          	bgeu	a0,a5,80003fe0 <__memmove+0x1c>
    800040dc:	02069613          	slli	a2,a3,0x20
    800040e0:	02065613          	srli	a2,a2,0x20
    800040e4:	fff64613          	not	a2,a2
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00c78633          	add	a2,a5,a2
    800040f0:	fff7c683          	lbu	a3,-1(a5)
    800040f4:	fff78793          	addi	a5,a5,-1
    800040f8:	fff70713          	addi	a4,a4,-1
    800040fc:	00d70023          	sb	a3,0(a4)
    80004100:	fec798e3          	bne	a5,a2,800040f0 <__memmove+0x12c>
    80004104:	00813403          	ld	s0,8(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret
    80004110:	02069713          	slli	a4,a3,0x20
    80004114:	02075713          	srli	a4,a4,0x20
    80004118:	00170713          	addi	a4,a4,1
    8000411c:	00e50733          	add	a4,a0,a4
    80004120:	00050793          	mv	a5,a0
    80004124:	0005c683          	lbu	a3,0(a1)
    80004128:	00178793          	addi	a5,a5,1
    8000412c:	00158593          	addi	a1,a1,1
    80004130:	fed78fa3          	sb	a3,-1(a5)
    80004134:	fee798e3          	bne	a5,a4,80004124 <__memmove+0x160>
    80004138:	f89ff06f          	j	800040c0 <__memmove+0xfc>

000000008000413c <__putc>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00113c23          	sd	ra,24(sp)
    80004148:	02010413          	addi	s0,sp,32
    8000414c:	00050793          	mv	a5,a0
    80004150:	fef40593          	addi	a1,s0,-17
    80004154:	00100613          	li	a2,1
    80004158:	00000513          	li	a0,0
    8000415c:	fef407a3          	sb	a5,-17(s0)
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	b3c080e7          	jalr	-1220(ra) # 80002c9c <console_write>
    80004168:	01813083          	ld	ra,24(sp)
    8000416c:	01013403          	ld	s0,16(sp)
    80004170:	02010113          	addi	sp,sp,32
    80004174:	00008067          	ret

0000000080004178 <__getc>:
    80004178:	fe010113          	addi	sp,sp,-32
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00113c23          	sd	ra,24(sp)
    80004184:	02010413          	addi	s0,sp,32
    80004188:	fe840593          	addi	a1,s0,-24
    8000418c:	00100613          	li	a2,1
    80004190:	00000513          	li	a0,0
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	ae8080e7          	jalr	-1304(ra) # 80002c7c <console_read>
    8000419c:	fe844503          	lbu	a0,-24(s0)
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	00008067          	ret

00000000800041b0 <console_handler>:
    800041b0:	fe010113          	addi	sp,sp,-32
    800041b4:	00813823          	sd	s0,16(sp)
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	00913423          	sd	s1,8(sp)
    800041c0:	02010413          	addi	s0,sp,32
    800041c4:	14202773          	csrr	a4,scause
    800041c8:	100027f3          	csrr	a5,sstatus
    800041cc:	0027f793          	andi	a5,a5,2
    800041d0:	06079e63          	bnez	a5,8000424c <console_handler+0x9c>
    800041d4:	00074c63          	bltz	a4,800041ec <console_handler+0x3c>
    800041d8:	01813083          	ld	ra,24(sp)
    800041dc:	01013403          	ld	s0,16(sp)
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	02010113          	addi	sp,sp,32
    800041e8:	00008067          	ret
    800041ec:	0ff77713          	andi	a4,a4,255
    800041f0:	00900793          	li	a5,9
    800041f4:	fef712e3          	bne	a4,a5,800041d8 <console_handler+0x28>
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	6dc080e7          	jalr	1756(ra) # 800028d4 <plic_claim>
    80004200:	00a00793          	li	a5,10
    80004204:	00050493          	mv	s1,a0
    80004208:	02f50c63          	beq	a0,a5,80004240 <console_handler+0x90>
    8000420c:	fc0506e3          	beqz	a0,800041d8 <console_handler+0x28>
    80004210:	00050593          	mv	a1,a0
    80004214:	00001517          	auipc	a0,0x1
    80004218:	f5450513          	addi	a0,a0,-172 # 80005168 <_ZZ12printIntegermE6digits+0xe0>
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	afc080e7          	jalr	-1284(ra) # 80002d18 <__printf>
    80004224:	01013403          	ld	s0,16(sp)
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	00048513          	mv	a0,s1
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	ffffe317          	auipc	t1,0xffffe
    8000423c:	6d430067          	jr	1748(t1) # 8000290c <plic_complete>
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	3e0080e7          	jalr	992(ra) # 80003620 <uartintr>
    80004248:	fddff06f          	j	80004224 <console_handler+0x74>
    8000424c:	00001517          	auipc	a0,0x1
    80004250:	01c50513          	addi	a0,a0,28 # 80005268 <digits+0x78>
    80004254:	fffff097          	auipc	ra,0xfffff
    80004258:	a68080e7          	jalr	-1432(ra) # 80002cbc <panic>
	...
