; hello_world.asm
;

global _start 							; set program start

section .text:							; section for code
_start:									; define "main"
	mov eax, 0x4 						; use the write syscall
	mov ebx, 0x1	 					; file descriptor to 1(STDOUT)
	mov ecx, message 					; use message as 2nd arg
	mov edx, message_length 			; supply message length
	int 0x80							; call syscall
	mov eax, 0x1						; set exit as syscall
	mov ebx, 0x0						; return 0
	int 0x80							; call syscall

section .data:							; section data for variables
	message: db "Hello World!", 0xA		; the string to output with newline at the end
	message_length equ $-message		; message length

