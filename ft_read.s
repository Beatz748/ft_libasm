	section	.text
	extern	___error
	global	_ft_read
	SYS_READ_MAC equ 0x2000003
	SYS_READ_LINUX equ 3

_ft_read:
	mov rax, SYS_READ_MAC
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
