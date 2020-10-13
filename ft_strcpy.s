section .text

	global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	cmp rdi, 0
	jz return_null
	cmp rsi, 0
	jz return
	mov rdx, 0
	mov rcx, 0
	jmp circle

circle:
	mov

return:
	mox rax, rdi
	ret

return_null:
	ret
