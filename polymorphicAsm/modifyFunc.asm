

;MySeg segment read execute
;.code

MySeg segment read write execute

modifyCode proc
	mov eax, ecx

	mov dword ptr mylabel, 9005e883h;9000E883h
	
	mylabel:
	add eax, 5
	nop
	ret

modifyCode endp
end
