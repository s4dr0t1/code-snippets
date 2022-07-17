#!/usr/bin/env bash

#Generating shellcode (IA-64)
#Requires: objdump, ld (linker), gcc (compiler) and nasm (assemler)

nasm $1.asm -f elf64 -o $1.o
ld $1.o -o $1.out
rm $1.o
for i in $(objdump -d $1.out -M intel |grep "^ " |cut -f2); do echo -n '\x'$i; done;echo
