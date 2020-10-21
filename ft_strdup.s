section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	cmp	rdi, 0
	jz _ret_null
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	cmp rax, 0
	jz _malloc_error
	pop	rsi
	mov	rdi, rax
	call _ft_strcpy
	ret

_malloc_error:
	pop	rdi
	ret

_ret_null:
	ret
