%include 'in_out.asm'
section		.data
    a dd 15
section .text
 global _start

_start:
 mov eax, [a]
 call iprintLF
 call quit 

