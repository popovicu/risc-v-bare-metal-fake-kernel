MEMORY {
  kernel_space (rwx) : ORIGIN = 0x80200000, LENGTH = 128
}

SECTIONS {
  .text : {
    hello_world_kernel.o(.text.kernel)
  } > kernel_space
}
