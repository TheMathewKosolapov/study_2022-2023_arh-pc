; Вариант 6 Косолапов Матвей НММбд-01-22
%include   'in_out.asm'
 SECTION .data
 name: DB 'Косолапов Матвей',0
 group: DB 'НММбд-01-22',0
 var: DB 'Вариант №6',0
 que: DB 'Введите значение x: ',0
 usl: DB 'f(x) = 𝑥^3/2 + 1', 0
 end: DB 'Ответ: ',0
 rem: DB 'Остаток: ',0
 SECTION .bss
 x:   RESB 80
 
 SECTION .text
 GLOBAL _start
 _start:
 
; Приветствие

 mov eax, name
 call sprintLF
 
 mov eax, group
 call sprintLF
 
 mov eax, var
 call sprintLF

; Выводим условие
 
 mov eax, usl
 call sprintLF
 
; Запрашиваем ввод x
 
 mov eax, que
 call sprintLF

;Считываем значение x

 mov ecx, x
 mov edx, 80
 call sread
 
; Преобразуем x в число
 
 mov eax, x
 call atoi
 
; Проводим вычисления
 
 xor edx, edx
 mov ebx, eax
 mul ebx 
 mul ebx
 mov ebx,2
 div ebx
 inc eax
 mov edi, eax
 
 mov eax, end
 call sprint
 mov eax, edi
 call iprintLF
 
 mov eax, rem
 call sprint
 mov eax, edx
 call iprintLF
 
 call quit
 
