#Creating the object file
#gcc -nostdlib -static shellcode.s -o shellcode-elf
#gcc -nostdlib -static-pie shellcode.o -o shellcode-elf (position independent)

#Dumping the shellcode
#objcopy --dump-section .text=shellcode-raw shellcode-elf


.global _start

_start
.intel_syntax noprefix
	#code
