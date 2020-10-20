	section	.text
	extern	___error
	global	_ft_write
	SYS_WRITE_MAC equ 0x2000004
	SYS_WRITE_LINUX equ 4

_ft_write:
	mov rax, SYS_WRITE_MAC
	syscall
		jc _error
	ret

_error:
	push rax
	call ___error
	pop rdx
	mov [rax], rdx
	mov rax, -1
	ret
