CROSS_COMPILE=riscv64-linux-gnu-

infinite_loop: infinite_loop.o infinite_loop.ld
	${CROSS_COMPILE}ld -T infinite_loop.ld --no-dynamic-linker -m elf64lriscv -static -nostdlib -s -o infinite_loop infinite_loop.o

infinite_loop.o: infinite_loop.s
	${CROSS_COMPILE}as -march=rv64i -mabi=lp64 -o infinite_loop.o -c infinite_loop.s

hello_world_kernel: hello_world_kernel.o hello_world_kernel.ld
	${CROSS_COMPILE}ld -T hello_world_kernel.ld --no-dynamic-linker -m elf64lriscv -static -nostdlib -s -o hello_world_kernel hello_world_kernel.o

hello_world_kernel.o: hello_world_kernel.s
	${CROSS_COMPILE}as -march=rv64i -mabi=lp64 -o hello_world_kernel.o -c hello_world_kernel.s
