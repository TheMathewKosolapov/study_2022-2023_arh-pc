%include 'in_out.asm'
section .data
  msg1 db 'Функция: f(x) = 4x - 3',0h
  msg2 db 'Результат: '
  res dd 0
section .text
  global _start
_start:
  pop ecx
  
  pop edx
  
  sub ecx, 1
  mov eax, msg1
  call sprintLF
  
next:
  cmp ecx, 0h
  jz _end
  
  pop eax
  call atoi
  call _function
  loop next

_end:
   mov eax, msg2
   call sprintLF
   
   mov eax, [res]
   call iprintLF
   call quit
_function:
;----Cама функция
  mov ebx, 4
  mul ebx
  add eax, -3
  add [res],eax 
  
  ret
