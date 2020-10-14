section .text

	global _ft_strdup
	extern _malloc
	extern _ft_strcpy
	extern _ft_strlen

_ft_strdup:
	call _ft_strlen
	push rdi
	inc rax
	mov rdi, rax
	call _malloc
	pop r9
	mov rdi, rax
	mov rsi, r9
	call _ft_strcpy
	ret
