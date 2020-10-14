section .text

	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	jz return
	jmp circle

circle:
	cmp BYTE[rdi + rax], 0
	jz return
	inc rax
	jmp circle

return:
	ret
