        .global _start
        .section .text.kernel

_start: li a7, 0x4442434E
        li a6, 0x00
1:      auipc a3, %pcrel_hi(debug_string)
        addi a3, a3, %pcrel_lo(1b)
        li a4, 0x00000000FFFFFFFF
        li a5, 0xFFFFFFFF00000000
        li a0, 12
        and a1, a3, a4
        and a2, a3, a5
        ecall

        li a7, 0x01
        mv a6, a0
        ecall

loop:   j loop

        .section .rodata
debug_string:
        .string "Hello world\n"
