section .text

SYS_READ_MAC equ 0x2000003
SYS_READ_LINUX equ 3
	global _ft_read
	extern  ___error
_ft_read:
	mov rdx, rdx
	mov rax, SYS_READ_MAC
	syscall
	;jc _error
	ret

_error:
	mov r15, rax
	call ___error
	mov [rax], r15
	mov rax, -1
	ret
