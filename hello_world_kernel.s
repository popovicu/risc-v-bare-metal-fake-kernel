        .global _start
        .section .text.kernel

_start: li a7, 0x4442434E
        li a6, 0x00
        li a0, 12
	lla a1, debug_string
        li a2, 0
        ecall

loop:   j loop

        .section .rodata
debug_string:
        .string "Hello world\n"
