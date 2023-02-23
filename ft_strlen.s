section .text
	global _ft_strlen
_ft_strlen :
mov rax, 0
do :
	cmp byte[rdi], byte 0
	je end
	inc rax
	inc rdi
	jmp do
end :
	ret

