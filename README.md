# OSDev Template
A starter template for the OSDev Bare Bones kernel. Includes example compiler invocation and preinstalled tools useful for development. Uses clang as a C compiler and NASM as the assembler.
# Usage
The source code is stored in the directory `src/`. The code for booting and the Multiboot header can be found in `src/boot.asm`, and the main kernel code is in `src/kernel.c`.

Right now, the build.sh script will compile all C files in the src directory and `boot.asm`. To compile additional assembly files, you can add lines in `build.sh` to compile them into object files, then link with those object files in the final linking stage.

It's also possible to use a different build method by copying the build commands into whatever build system you want to use, like a Makefile.

# OSDev Resources
The [OSDev wiki](https://wiki.osdev.org/) is an excellent resource for OSDev, and the sample code that is in this template by default is taken from the [Bare Bones Tutorial](https://wiki.osdev.org/Bare_Bones), which is also worth reading if you are new to OSDev.

The [Getting Started](https://wiki.osdev.org/Getting_Started) page on the OSDev wiki is also essential reading if you are a new OS developer.

