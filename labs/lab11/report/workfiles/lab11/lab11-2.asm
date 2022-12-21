%include 'in_out.asm'
SECTION .data
	msg1 db 'Как Вас зовут?',0
	file db 'name.txt',0
	msg2 db 'Меня зовут ',0
SECTION .bss
	name resb 255

SECTION .text
	global _start
_start:
	mov eax, msg1
	call sprintLF
	
	mov ecx,name
	mov edx,255
	call sread
	
	mov ecx, 0777o 
	mov ebx, file
	mov eax, 8 
	int 80h
	
	mov ecx, 2 
	mov ebx, file
	mov eax, 5
	int 80h
	
	mov esi, eax
	
	mov eax,msg2
	call slen
	
	mov edx, eax
	mov ecx, msg2
	mov ebx, esi
	mov eax, 4
	int 80h
	
	mov eax,name
	call slen
	
	mov edx, eax
	mov ecx, name
	mov ebx, esi
	mov eax, 4
	int 80h
	
	mov ebx,esi
	mov eax, 6
	int 80h
	
	call quit

