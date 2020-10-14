section .text

SYS_WRITE_MAC equ 0x2000004
SYS_WRITE_LINUX equ 4
	extern  ___error
	global _ft_write

_ft_write:
	mov rdx, rdx
    mov rax, SYS_WRITE_MAC
    syscall
	;jc _error
    ret

_error:
    mov r15, rax
    call ___error
    mov [rax], r15
    mov rax, -1
    ret
