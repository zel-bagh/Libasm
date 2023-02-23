section .text
 global _ft_strcpy
_ft_strcpy:
mov rcx,0
do:
	cmp byte[rsi + rcx],0
	je end
	mov al,byte[rsi + rcx]
	mov [rdi + rcx], al
	inc rcx
	jmp do
end:
	mov [rdi + rcx], byte 0
	mov rax, rdi
	ret
