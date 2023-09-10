MEMORY {
  kernel_space (rwx) : ORIGIN = 0x80200000, LENGTH = 128
}

SECTIONS {
  .text : {
    infinite_loop.o(.text.kernel)
  } > kernel_space
}
