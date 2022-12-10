%include 'in_out.asm'
section		.data
   msg1 db "Наименьшее число: ",0h
   A dd 79
   B dd 83
   C dd 41
section .bss
   max resb 10
section .text
   global _start
_start: 

   mov ecx,[A] 
   mov [max],ecx 

   cmp ecx,[C] 
   jb check_B 
   mov ecx,[C] 
   mov [max],ecx 

check_B: 
   
   cmp ecx,[B] 
   jb fin 
   mov ecx,[B] 
   mov [max],ecx

fin:
   mov eax, msg1
   call sprint 
   mov eax,[max]
   call iprintLF 
   call quit
