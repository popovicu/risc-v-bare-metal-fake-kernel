CROSS_COMPILE=riscv64-linux-gnu-

infinite_loop: infinite_loop.o infinite_loop.ld
	${CROSS_COMPILE}ld -T infinite_loop.ld --no-dynamic-linker -m elf64lriscv -static -notstdlib -s -o infinite_loop infinite_loop.o

infinite_loop.o: infinite_loop.s
	${CROSS_COMPILE}as -march=rv64i -mabi=lp64 -o infinite_loop.o -c infinite_loop.s
