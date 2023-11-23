#!/bin/bash
set -e
# This is a build script for the current setup.
# For larger projects, you may want to consider using GNU Make

# Compile boot.asm with NASM
echo Building boot.asm
nasm -f elf32 src/boot.asm -o boot.o

# Compile the kernel with clang. (Getting a GCC compiler on Replit is difficult, but clang supports many binary formats out of the box.)
echo Building kernel sources
clang -c -target i686-none-elf -o kernel.o -ffreestanding -mno-sse -Wall src/*.c -o kernel.o

# Link
echo Linking
ld.lld -T linker.ld -o os.bin -static -nostdlib boot.o kernel.o


# Clean
echo Clean
rm *.o

# Make an ISO out of the kernel with grub-mkrescue
echo Making a bootable ISO
cp os.bin iso/boot/os.bin
grub-mkrescue -o os.iso iso

# Boot it with QEMU
echo Booting os.iso
qemu-system-i386 -cdrom os.iso