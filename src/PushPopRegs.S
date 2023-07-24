#sa vezbi 7. sinhrona promena konteksta
.global  _ZN3PCB8pushRegsEv
.type _ZN3PCB8pushRegsEv, @function
_ZN3PCB8pushRegsEv:
    addi sp, sp, -256

    .irp ind, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\ind, \ind * 8(sp)
    .endr

    ret

.global  _ZN3PCB7popRegsEv
.type _ZN3PCB7popRegsEv, @function
_ZN3PCB7popRegsEv:

    .irp ind, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\ind, \ind * 8(sp)
    .endr

    addi sp, sp, 256

    ret