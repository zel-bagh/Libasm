section	.text
 global _ft_strcmp
_ft_strcmp:
do:
	mov dl, byte[rdi]
	cmp dl, byte[rsi]
	ja above
	jb below
	je equal
continue :
	inc rdi
	inc rsi
	jmp do
above :
	mov rax, 1
	ret
below :
	mov rax, -1
	ret
equal :
	cmp dl, byte 0
	jne continue
	mov rax, 0
	ret
