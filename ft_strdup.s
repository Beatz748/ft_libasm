section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push rdi
	call _ft_strlen
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je _exit
	pop rsi
	mov rdi, rax
	sub rsp, 8
	call _ft_strcpy
	add rsp, 8
	jmp _exit

_exit:
	ret
