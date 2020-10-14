section .text

	global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	cmp rdi, 0
	jz _return_null
	cmp rsi, 0
	jz _return
	mov rdx, 0
	mov rcx, 0
	jmp _circle

_circle:
	mov dl, BYTE[rsi + rcx]
	mov BYTE[rdi + rcx], dl
	cmp dl, 0
	jz _return
	inc rcx
	jmp _circle

_return:
	mov rax, rdi
	ret

_return_null:
	ret
