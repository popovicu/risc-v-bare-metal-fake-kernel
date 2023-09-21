# RISC-V bare metal "fake kernel"

This code is meant to accompany the website article: https://popovicu.com/posts/risc-v-sbi-and-full-boot-process/

*You may want to change your cross compile make prefix with `CROSS_COMPILE`*

There are 2 versions of the fake kernel:
1. The infinite loop one, which does nothing except running an empty infinite loop
2. The "hello world" one, which uses the OpenSBI calls to print to the UART

To build the first kernel, just run `make infinite_loop`. For the second kernel, run `make hello_world_kernel`.