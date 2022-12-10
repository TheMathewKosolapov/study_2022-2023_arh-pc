%include 'in_out.asm'
section .data
  msg1  DB 'Введите значение x: ',0h
  msg2  DB 'Введите значение a: ',0h
  msg3  DB 'Результат: ', 0h
section .bss
  x resb 10
  a resb 10
section		.text
  global _start
_start:
;-----
  mov eax, msg1
  call sprint
  mov ecx,x
  mov edx,10
  call sread
;-----
  mov eax, x
  call atoi
  mov [x], eax
;-----  
  mov eax, msg2
  call sprint
  mov ecx,a
  mov edx,10
  call sread
;-----  
  mov eax, a
  call atoi
  mov [a], eax
;-----
  mov eax, [x]
  cmp eax, [a]
  jne cond2
  add eax, [a]
  call iprintLF
  call quit
cond2:
  mov ecx, 5
  mul ecx
  call iprintLF
  call quit

  
