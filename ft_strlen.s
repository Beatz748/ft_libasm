section .text

	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	jz _return
	jmp _circle

_circle:
	cmp BYTE[rdi + rax], 0
	jz _return
	inc rax
	jmp _circle

_return:
	ret
