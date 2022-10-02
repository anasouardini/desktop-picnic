.code

EXTERN getsysnum: PROC

NtAccessCheck PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00C521DE9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheck ENDP

NtWorkerFactoryWorkerReady PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 093B975A3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWorkerFactoryWorkerReady ENDP

NtAcceptConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 060F64954h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAcceptConnectPort ENDP

NtMapUserPhysicalPagesScatter PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E763CFF9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMapUserPhysicalPagesScatter ENDP

NtWaitForSingleObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 008B0787Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForSingleObject ENDP

NtCallbackReturn PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05E8D591Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCallbackReturn ENDP

NtReadFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 046F54056h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReadFile ENDP

NtDeviceIoControlFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02C255236h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeviceIoControlFile ENDP

NtWriteFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AA3CA4A8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWriteFile ENDP

NtRemoveIoCompletion PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01AB31C2Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRemoveIoCompletion ENDP

NtReleaseSemaphore PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 040AA2A26h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReleaseSemaphore ENDP

NtReplyWaitReceivePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 024313BA2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplyWaitReceivePort ENDP

NtReplyPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A7379A97h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplyPort ENDP

NtSetInformationThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0974093E8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationThread ENDP

NtSetEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0013C22EBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetEvent ENDP

NtClose PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C011F35Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtClose ENDP

NtQueryObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03A650AC9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryObject ENDP

NtQueryInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07CC53063h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationFile ENDP

NtOpenKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FE179FCFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenKey ENDP

NtEnumerateValueKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A392B60Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateValueKey ENDP

NtFindAtom PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CD67F6F1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFindAtom ENDP

NtQueryDefaultLocale PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0652A6BB9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDefaultLocale ENDP

NtQueryKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02B8AB088h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryKey ENDP

NtQueryValueKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AB1BF6CCh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryValueKey ENDP

NtAllocateVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 005893307h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateVirtualMemory ENDP

NtQueryInformationProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E458CC05h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationProcess ENDP

NtWaitForMultipleObjects32 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00EDA4E45h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForMultipleObjects32 ENDP

NtWriteFileGather PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02CB5161Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWriteFileGather ENDP

NtCreateKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07F99661Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateKey ENDP

NtFreeVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08211777Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFreeVirtualMemory ENDP

NtImpersonateClientOfPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 068F36B6Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtImpersonateClientOfPort ENDP

NtReleaseMutant PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C89B35F2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReleaseMutant ENDP

NtQueryInformationToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 008917C1Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationToken ENDP

NtRequestWaitReplyPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E273EBEEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRequestWaitReplyPort ENDP

NtQueryVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 003912F05h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryVirtualMemory ENDP

NtOpenThreadToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D386C705h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenThreadToken ENDP

NtQueryInformationThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B49CB226h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationThread ENDP

NtOpenProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D687FF1Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenProcess ENDP

NtSetInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 026BC502Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationFile ENDP

NtMapViewOfSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C259E2CBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMapViewOfSection ENDP

NtAccessCheckAndAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FEB2E01Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckAndAuditAlarm ENDP

NtUnmapViewOfSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C803CA93h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnmapViewOfSection ENDP

NtReplyWaitReceivePortEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09D93CB4Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplyWaitReceivePortEx ENDP

NtTerminateProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FBA2123Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTerminateProcess ENDP

NtSetEventBoostPriority PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06CB94210h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetEventBoostPriority ENDP

NtReadFileScatter PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FD6FD737h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReadFileScatter ENDP

NtOpenThreadTokenEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01283D73Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenThreadTokenEx ENDP

NtOpenProcessTokenEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07489483Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenProcessTokenEx ENDP

NtQueryPerformanceCounter PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FDE80680h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryPerformanceCounter ENDP

NtEnumerateKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BDAA9608h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateKey ENDP

NtOpenFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 002D90C4Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenFile ENDP

NtDelayExecution PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 005034DD9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDelayExecution ENDP

NtQueryDirectoryFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 064A386E6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDirectoryFile ENDP

NtQuerySystemInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CC442ED4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySystemInformation ENDP

NtOpenSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00D4A2819h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenSection ENDP

NtQueryTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 075169B46h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryTimer ENDP

NtFsControlFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02C9F7E28h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFsControlFile ENDP

NtWriteVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C150EFF7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWriteVirtualMemory ENDP

NtCloseObjectAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03E99DED6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCloseObjectAuditAlarm ENDP

NtDuplicateObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AEB466BFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDuplicateObject ENDP

NtQueryAttributesFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FA74F8D0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryAttributesFile ENDP

NtClearEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0685157D2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtClearEvent ENDP

NtReadVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01F8C756Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReadVirtualMemory ENDP

NtOpenEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 078E27F78h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenEvent ENDP

NtAdjustPrivilegesToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03797070Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAdjustPrivilegesToken ENDP

NtDuplicateToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 083148B8Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDuplicateToken ENDP

NtContinue PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04CD71B1Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtContinue ENDP

NtQueryDefaultUILanguage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06C4F6BD4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDefaultUILanguage ENDP

NtQueueApcThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B49206B3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueueApcThread ENDP

NtYieldExecution PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 080DA6F86h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtYieldExecution ENDP

NtAddAtom PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E13D0571h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAddAtom ENDP

NtCreateEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03EB40710h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateEvent ENDP

NtQueryVolumeInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D94FBE53h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryVolumeInformationFile ENDP

NtCreateSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03AAC1431h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateSection ENDP

NtFlushBuffersFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A5BDDCA9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushBuffersFile ENDP

NtApphelpCacheControl PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C58A2B08h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtApphelpCacheControl ENDP

NtCreateProcessEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0319BF0E3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateProcessEx ENDP

NtCreateThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03E9E3437h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateThread ENDP

NtIsProcessInJob PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0761B4649h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtIsProcessInJob ENDP

NtProtectVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 003912903h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtProtectVirtualMemory ENDP

NtQuerySection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D04CF4C7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySection ENDP

NtResumeThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09C360315h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtResumeThread ENDP

NtTerminateThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0120BCC31h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTerminateThread ENDP

NtReadRequestData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01707780Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReadRequestData ENDP

NtCreateFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05AF984B8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateFile ENDP

NtQueryEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0783B986Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryEvent ENDP

NtWriteRequestData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 064C8874Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWriteRequestData ENDP

NtOpenDirectoryObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 014B0FCD4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenDirectoryObject ENDP

NtAccessCheckByTypeAndAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 000AE0C30h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckByTypeAndAuditAlarm ENDP

NtWaitForMultipleObjects PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B129D9F3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForMultipleObjects ENDP

NtSetInformationObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 007074DD8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationObject ENDP

NtCancelIoFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BEFAAC4Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelIoFile ENDP

NtTraceEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02EAE3428h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTraceEvent ENDP

NtPowerInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07DDCFCEBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPowerInformation ENDP

NtSetValueKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03E3F0D85h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetValueKey ENDP

NtCancelTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09B5AE5D2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelTimer ENDP

NtSetTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08B8F8712h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetTimer ENDP

NtAccessCheckByType PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D04EDEEEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckByType ENDP

NtAccessCheckByTypeResultList PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B631BCAFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckByTypeResultList ENDP

NtAccessCheckByTypeResultListAndAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CE42CE2Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckByTypeResultListAndAuditAlarm ENDP

NtAccessCheckByTypeResultListAndAuditAlarmByHandle PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 019B5070Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAccessCheckByTypeResultListAndAuditAlarmByHandle ENDP

NtAcquireProcessActivityReference PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08EBA951Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAcquireProcessActivityReference ENDP

NtAddAtomEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EC4DA089h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAddAtomEx ENDP

NtAddBootEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 009A40124h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAddBootEntry ENDP

NtAddDriverEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00F9838D4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAddDriverEntry ENDP

NtAdjustGroupsToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 079CE3316h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAdjustGroupsToken ENDP

NtAdjustTokenClaimsAndDeviceGroups PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07BF75527h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAdjustTokenClaimsAndDeviceGroups ENDP

NtAlertResumeThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F44FEEF9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlertResumeThread ENDP

NtAlertThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06A4C249Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlertThread ENDP

NtAlertThreadByThreadId PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EEB2B880h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlertThreadByThreadId ENDP

NtAllocateLocallyUniqueId PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09784C32Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateLocallyUniqueId ENDP

NtAllocateReserveObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 082A1B2EDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateReserveObject ENDP

NtAllocateUserPhysicalPages PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 095ACAA00h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateUserPhysicalPages ENDP

NtAllocateUuids PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F26BFAF4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateUuids ENDP

NtAllocateVirtualMemoryEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03C8E7A51h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAllocateVirtualMemoryEx ENDP

NtAlpcAcceptConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 018C82762h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcAcceptConnectPort ENDP

NtAlpcCancelMessage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0491D7C82h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCancelMessage ENDP

NtAlpcConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 066B62764h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcConnectPort ENDP

NtAlpcConnectPortEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C9D39577h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcConnectPortEx ENDP

NtAlpcCreatePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E6B219D0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCreatePort ENDP

NtAlpcCreatePortSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B420BCBBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCreatePortSection ENDP

NtAlpcCreateResourceReserve PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 050DC644Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCreateResourceReserve ENDP

NtAlpcCreateSectionView PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02AB72D29h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCreateSectionView ENDP

NtAlpcCreateSecurityContext PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04E905178h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcCreateSecurityContext ENDP

NtAlpcDeletePortSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 052865C1Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcDeletePortSection ENDP

NtAlpcDeleteResourceReserve PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06AC53E0Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcDeleteResourceReserve ENDP

NtAlpcDeleteSectionView PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 013282093h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcDeleteSectionView ENDP

NtAlpcDeleteSecurityContext PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B62A4A42h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcDeleteSecurityContext ENDP

NtAlpcDisconnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 016BF0D30h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcDisconnectPort ENDP

NtAlpcImpersonateClientContainerOfPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E471FBE2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcImpersonateClientContainerOfPort ENDP

NtAlpcImpersonateClientOfPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 060F44D6Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcImpersonateClientOfPort ENDP

NtAlpcOpenSenderProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00658824Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcOpenSenderProcess ENDP

NtAlpcOpenSenderThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03C1720B6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcOpenSenderThread ENDP

NtAlpcQueryInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 036A914F9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcQueryInformation ENDP

NtAlpcQueryInformationMessage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 098394519h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcQueryInformationMessage ENDP

NtAlpcRevokeSecurityContext PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A1BFB61Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcRevokeSecurityContext ENDP

NtAlpcSendWaitReceivePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E477FFF8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcSendWaitReceivePort ENDP

NtAlpcSetInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0828BA41Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAlpcSetInformation ENDP

NtAreMappedFilesTheSame PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E9D6DA82h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAreMappedFilesTheSame ENDP

NtAssignProcessToJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 068B46A29h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAssignProcessToJobObject ENDP

NtAssociateWaitCompletionPacket PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08F9DF750h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAssociateWaitCompletionPacket ENDP

NtCallEnclave PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EBB5CB38h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCallEnclave ENDP

NtCancelIoFileEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 098B5D462h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelIoFileEx ENDP

NtCancelSynchronousIoFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09D3D0C09h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelSynchronousIoFile ENDP

NtCancelTimer2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 049C1C11Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelTimer2 ENDP

NtCancelWaitCompletionPacket PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A19C8107h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelWaitCompletionPacket ENDP

NtCommitComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0069D5656h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCommitComplete ENDP

NtCommitEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0898341D0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCommitEnlistment ENDP

NtCommitRegistryTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0041442A1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCommitRegistryTransaction ENDP

NtCommitTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0197AFDECh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCommitTransaction ENDP

NtCompactKeys PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 053B45646h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompactKeys ENDP

NtCompareObjects PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C6ADD8C6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompareObjects ENDP

NtCompareSigningLevels PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02CFF5414h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompareSigningLevels ENDP

NtCompareTokens PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03DA01973h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompareTokens ENDP

NtCompleteConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 066F37960h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompleteConnectPort ENDP

NtCompressKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0540D7BBAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCompressKey ENDP

NtConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 064F06162h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtConnectPort ENDP

NtConvertBetweenAuxiliaryCounterAndPerformanceCounter PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 073AA1731h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtConvertBetweenAuxiliaryCounterAndPerformanceCounter ENDP

NtCreateDebugObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00836216Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateDebugObject ENDP

NtCreateDirectoryObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B896169Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateDirectoryObject ENDP

NtCreateDirectoryObjectEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0200C72D6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateDirectoryObjectEx ENDP

NtCreateEnclave PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08295A814h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateEnclave ENDP

NtCreateEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00FA30A29h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateEnlistment ENDP

NtCreateEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 084B1DC1Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateEventPair ENDP

NtCreateIRTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D38EDD12h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateIRTimer ENDP

NtCreateIoCompletion PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0948DB61Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateIoCompletion ENDP

NtCreateJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FB59CDDBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateJobObject ENDP

NtCreateJobSet PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0168A2627h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateJobSet ENDP

NtCreateKeyTransacted PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AE1DEEA0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateKeyTransacted ENDP

NtCreateKeyedEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0902AD5FAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateKeyedEvent ENDP

NtCreateLowBoxToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FC59DCCBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateLowBoxToken ENDP

NtCreateMailslotFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 043DAD5E3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateMailslotFile ENDP

NtCreateMutant PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0128B8BAEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateMutant ENDP

NtCreateNamedPipeFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EC7DA256h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateNamedPipeFile ENDP

NtCreatePagingFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C4559662h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreatePagingFile ENDP

NtCreatePartition PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FCA33DF0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreatePartition ENDP

NtCreatePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07EF26B7Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreatePort ENDP

NtCreatePrivateNamespace PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 018B0131Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreatePrivateNamespace ENDP

NtCreateProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C396E20Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateProcess ENDP

NtCreateProfile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CC9A34C8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateProfile ENDP

NtCreateProfileEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 008533AE9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateProfileEx ENDP

NtCreateRegistryTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 092C97891h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateRegistryTransaction ENDP

NtCreateResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00BA36358h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateResourceManager ENDP

NtCreateSemaphore PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 072983BB4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateSemaphore ENDP

NtCreateSymbolicLinkObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08A26500Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateSymbolicLinkObject ENDP

NtCreateThreadEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 090A8DE6Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateThreadEx ENDP

NtCreateTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 017A6E1DEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateTimer ENDP

NtCreateTimer2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C9B088BFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateTimer2 ENDP

NtCreateToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EBA8E130h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateToken ENDP

NtCreateTokenEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09A9E48C4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateTokenEx ENDP

NtCreateTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01C9AECD9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateTransaction ENDP

NtCreateTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08A32B499h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateTransactionManager ENDP

NtCreateUserProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CD27D2A4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateUserProcess ENDP

NtCreateWaitCompletionPacket PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00D397DD5h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateWaitCompletionPacket ENDP

NtCreateWaitablePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 066E84B78h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateWaitablePort ENDP

NtCreateWnfStateName PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06ED0B36Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateWnfStateName ENDP

NtCreateWorkerFactory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01B4C31EFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateWorkerFactory ENDP

NtDebugActiveProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05F85400Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDebugActiveProcess ENDP

NtDebugContinue PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0089CD3A0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDebugContinue ENDP

NtDeleteAtom PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0144B11DEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteAtom ENDP

NtDeleteBootEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00B168510h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteBootEntry ENDP

NtDeleteDriverEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01B951502h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteDriverEntry ENDP

NtDeleteFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0045C04FEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteFile ENDP

NtDeleteKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BEEA61BDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteKey ENDP

NtDeleteObjectAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 004B82436h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteObjectAuditAlarm ENDP

NtDeletePrivateNamespace PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0775368D2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeletePrivateNamespace ENDP

NtDeleteValueKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0631B50A6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteValueKey ENDP

NtDeleteWnfStateData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F44B1A06h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteWnfStateData ENDP

NtDeleteWnfStateName PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07EB1F399h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDeleteWnfStateName ENDP

NtDisableLastKnownGood PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0642F52F6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDisableLastKnownGood ENDP

NtDisplayString PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F0A7A817h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDisplayString ENDP

NtDrawText PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01EA90942h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtDrawText ENDP

NtEnableLastKnownGood PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F9AFF504h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnableLastKnownGood ENDP

NtEnumerateBootEntries PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05B0A5491h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateBootEntries ENDP

NtEnumerateDriverEntries PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 014340D9Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateDriverEntries ENDP

NtEnumerateSystemEnvironmentValuesEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 053DF9F9Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateSystemEnvironmentValuesEx ENDP

NtEnumerateTransactionObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01B372B7Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtEnumerateTransactionObject ENDP

NtExtendSection PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FC33DCEDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtExtendSection ENDP

NtFilterBootOption PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00AA2322Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFilterBootOption ENDP

NtFilterToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 075D1A66Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFilterToken ENDP

NtFilterTokenEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 047BE0F41h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFilterTokenEx ENDP

NtFlushBuffersFileEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FB173753h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushBuffersFileEx ENDP

NtFlushInstallUILanguage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F45B797Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushInstallUILanguage ENDP

NtFlushInstructionCache PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 085A1C897h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushInstructionCache ENDP

NtFlushKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00CB8939Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushKey ENDP

NtFlushProcessWriteBuffers PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0215D5B52h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushProcessWriteBuffers ENDP

NtFlushVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00192171Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushVirtualMemory ENDP

NtFlushWriteBuffer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A79A74C6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFlushWriteBuffer ENDP

NtFreeUserPhysicalPages PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08BA1F22Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFreeUserPhysicalPages ENDP

NtFreezeRegistry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C06DC6E1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFreezeRegistry ENDP

NtFreezeTransactions PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 033AB072Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtFreezeTransactions ENDP

NtGetCachedSigningLevel PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0965DAAF6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetCachedSigningLevel ENDP

NtGetCompleteWnfStateSubscription PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 034ADEAE1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetCompleteWnfStateSubscription ENDP

NtGetContextThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 090ABD609h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetContextThread ENDP

NtGetCurrentProcessorNumber PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BA94A23Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetCurrentProcessorNumber ENDP

NtGetCurrentProcessorNumberEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 084ABC46Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetCurrentProcessorNumberEx ENDP

NtGetDevicePowerState PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 052D0027Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetDevicePowerState ENDP

NtGetMUIRegistryInfo PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02AB5002Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetMUIRegistryInfo ENDP

NtGetNextProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0863B9FB7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetNextProcess ENDP

NtGetNextThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09ABAC27Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetNextThread ENDP

NtGetNlsSectionPtr PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 039122099h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetNlsSectionPtr ENDP

NtGetNotificationResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FF9F0EFFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetNotificationResourceManager ENDP

NtGetWriteWatch PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01C802622h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetWriteWatch ENDP

NtImpersonateAnonymousToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 037A5030Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtImpersonateAnonymousToken ENDP

NtImpersonateThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00EA1D11Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtImpersonateThread ENDP

NtInitializeEnclave PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 029370BB8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtInitializeEnclave ENDP

NtInitializeNlsFiles PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 084B70DACh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtInitializeNlsFiles ENDP

NtInitializeRegistry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 074F3607Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtInitializeRegistry ENDP

NtInitiatePowerAction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01AB0F9E5h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtInitiatePowerAction ENDP

NtIsSystemResumeAutomatic PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01458D976h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtIsSystemResumeAutomatic ENDP

NtIsUILanguageComitted PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0DDD3C66Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtIsUILanguageComitted ENDP

NtListenPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06CF7697Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtListenPort ENDP

NtLoadDriver PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00A7BF91Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadDriver ENDP

NtLoadEnclaveData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00089F51Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadEnclaveData ENDP

NtLoadHotPatch PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FD433AFCh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadHotPatch ENDP

NtLoadKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0381DDC7Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadKey ENDP

NtLoadKey2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0462597C2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadKey2 ENDP

NtLoadKeyEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D4631738h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLoadKeyEx ENDP

NtLockFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01F011B60h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLockFile ENDP

NtLockProductActivationKeys PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0473748ACh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLockProductActivationKeys ENDP

NtLockRegistryKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D7ECC270h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLockRegistryKey ENDP

NtLockVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0933187ADh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtLockVirtualMemory ENDP

NtMakePermanentObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B280C07Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMakePermanentObject ENDP

NtMakeTemporaryObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08AB4BA08h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMakeTemporaryObject ENDP

NtManagePartition PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 039A0D9B2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtManagePartition ENDP

NtMapCMFModule PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 032A9241Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMapCMFModule ENDP

NtMapUserPhysicalPages PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 029B77618h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMapUserPhysicalPages ENDP

NtMapViewOfSectionEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04093762Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMapViewOfSectionEx ENDP

NtModifyBootEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 069F85950h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtModifyBootEntry ENDP

NtModifyDriverEntry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 049987920h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtModifyDriverEntry ENDP

NtNotifyChangeDirectoryFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F9A26894h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtNotifyChangeDirectoryFile ENDP

NtNotifyChangeDirectoryFileEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00D35EC4Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtNotifyChangeDirectoryFileEx ENDP

NtNotifyChangeKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0065A2BEEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtNotifyChangeKey ENDP

NtNotifyChangeMultipleKeys PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 053885618h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtNotifyChangeMultipleKeys ENDP

NtNotifyChangeSession PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04B974F0Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtNotifyChangeSession ENDP

NtOpenEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F960FFF2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenEnlistment ENDP

NtOpenEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0DF5FF5C0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenEventPair ENDP

NtOpenIoCompletion PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05CC25C51h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenIoCompletion ENDP

NtOpenJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 005B53F3Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenJobObject ENDP

NtOpenKeyEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 097D94384h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenKeyEx ENDP

NtOpenKeyTransacted PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A0BCEA12h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenKeyTransacted ENDP

NtOpenKeyTransactedEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 056AF9819h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenKeyTransactedEx ENDP

NtOpenKeyedEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B82D7978h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenKeyedEvent ENDP

NtOpenMutant PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D2522A1Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenMutant ENDP

NtOpenObjectAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 082AC4201h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenObjectAuditAlarm ENDP

NtOpenPartition PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BDB1DD27h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenPartition ENDP

NtOpenPrivateNamespace PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07CDE0ACDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenPrivateNamespace ENDP

NtOpenProcessToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00385770Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenProcessToken ENDP

NtOpenRegistryTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09B08F7D2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenRegistryTransaction ENDP

NtOpenResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04F2937C0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenResourceManager ENDP

NtOpenSemaphore PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05CD56A44h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenSemaphore ENDP

NtOpenSession PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00A8DC8D8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenSession ENDP

NtOpenSymbolicLinkObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FCD7D46Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenSymbolicLinkObject ENDP

NtOpenThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E840F2FEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenThread ENDP

NtOpenTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08BD96A4Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenTimer ENDP

NtOpenTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09843FA57h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenTransaction ENDP

NtOpenTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01E3F7ECDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtOpenTransactionManager ENDP

NtPlugPlayControl PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01D89FBC3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPlugPlayControl ENDP

NtPrePrepareComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03A92C99Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrePrepareComplete ENDP

NtPrePrepareEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 093BAAC09h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrePrepareEnlistment ENDP

NtPrepareComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 035185D90h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrepareComplete ENDP

NtPrepareEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 007DE385Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrepareEnlistment ENDP

NtPrivilegeCheck PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EA45F7CFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrivilegeCheck ENDP

NtPrivilegeObjectAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 038B73428h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrivilegeObjectAuditAlarm ENDP

NtPrivilegedServiceAuditAlarm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0882F88B2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPrivilegedServiceAuditAlarm ENDP

NtPropagationComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02F53C91Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPropagationComplete ENDP

NtPropagationFailed PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08E97F845h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPropagationFailed ENDP

NtPulseEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 002401BA5h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPulseEvent ENDP

NtQueryAuxiliaryCounterFrequency PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03B9D3E03h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryAuxiliaryCounterFrequency ENDP

NtQueryBootEntryOrder PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03B8BF7D9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryBootEntryOrder ENDP

NtQueryBootOptions PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BE8DC668h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryBootOptions ENDP

NtQueryDebugFilterState PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02C0B3AB8h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDebugFilterState ENDP

NtQueryDirectoryFileEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0464406FDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDirectoryFileEx ENDP

NtQueryDirectoryObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08C3D84A1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDirectoryObject ENDP

NtQueryDriverEntryOrder PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01709800Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryDriverEntryOrder ENDP

NtQueryEaFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04FDEB14Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryEaFile ENDP

NtQueryFullAttributesFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08A18A68Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryFullAttributesFile ENDP

NtQueryInformationAtom PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02D7252A3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationAtom ENDP

NtQueryInformationByName PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0752B2099h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationByName ENDP

NtQueryInformationEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F044D192h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationEnlistment ENDP

NtQueryInformationJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01A9F2455h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationJobObject ENDP

NtQueryInformationPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A130A0AAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationPort ENDP

NtQueryInformationResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EAB3BE91h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationResourceManager ENDP

NtQueryInformationTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D78FD11Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationTransaction ENDP

NtQueryInformationTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00E3576DFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationTransactionManager ENDP

NtQueryInformationWorkerFactory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02CAE2A2Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInformationWorkerFactory ENDP

NtQueryInstallUILanguage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 008BB4513h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryInstallUILanguage ENDP

NtQueryIntervalProfile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00681FBD0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryIntervalProfile ENDP

NtQueryIoCompletion PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 048E94E7Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryIoCompletion ENDP

NtQueryLicenseValue PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08E5AA716h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryLicenseValue ENDP

NtQueryMultipleValueKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0801DFDE7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryMultipleValueKey ENDP

NtQueryMutant PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0705335EAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryMutant ENDP

NtQueryOpenSubKeys PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02D94220Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryOpenSubKeys ENDP

NtQueryOpenSubKeysEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F3992EDDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryOpenSubKeysEx ENDP

NtQueryPortInformationProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0853F9B56h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryPortInformationProcess ENDP

NtQueryQuotaInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A034AF5Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryQuotaInformationFile ENDP

NtQuerySecurityAttributesToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 084AEF075h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySecurityAttributesToken ENDP

NtQuerySecurityObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B4A45EB9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySecurityObject ENDP

NtQuerySecurityPolicy PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09E45A3F1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySecurityPolicy ENDP

NtQuerySemaphore PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C8981520h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySemaphore ENDP

NtQuerySymbolicLinkObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AA998AC5h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySymbolicLinkObject ENDP

NtQuerySystemEnvironmentValue PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C83DAA32h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySystemEnvironmentValue ENDP

NtQuerySystemEnvironmentValueEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F40FB4B7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySystemEnvironmentValueEx ENDP

NtQuerySystemInformationEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07C905E2Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySystemInformationEx ENDP

NtQueryTimerResolution PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0134C11D9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryTimerResolution ENDP

NtQueryWnfStateData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A23CCD30h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryWnfStateData ENDP

NtQueryWnfStateNameInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05CDE6613h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueryWnfStateNameInformation ENDP

NtQueueApcThreadEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03C206EFAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQueueApcThreadEx ENDP

NtRaiseException PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E64205D3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRaiseException ENDP

NtRaiseHardError PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C1A126B4h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRaiseHardError ENDP

NtReadOnlyEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0134418D3h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReadOnlyEnlistment ENDP

NtRecoverEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 044205BABh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRecoverEnlistment ENDP

NtRecoverResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06B534BE2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRecoverResourceManager ENDP

NtRecoverTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 012367AACh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRecoverTransactionManager ENDP

NtRegisterProtocolAddressInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09E0FB89Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRegisterProtocolAddressInformation ENDP

NtRegisterThreadTerminatePort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E576FCFBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRegisterThreadTerminatePort ENDP

NtReleaseKeyedEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AFAFD65Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReleaseKeyedEvent ENDP

NtReleaseWorkerFactoryWorker PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 018EF3055h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReleaseWorkerFactoryWorker ENDP

NtRemoveIoCompletionEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00C995448h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRemoveIoCompletionEx ENDP

NtRemoveProcessDebug PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03EA110F6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRemoveProcessDebug ENDP

NtRenameKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 069E2998Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRenameKey ENDP

NtRenameTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00EAED604h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRenameTransactionManager ENDP

NtReplaceKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 086F39968h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplaceKey ENDP

NtReplacePartitionUnit PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07AA81CB2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplacePartitionUnit ENDP

NtReplyWaitReplyPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A03DA7AEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReplyWaitReplyPort ENDP

NtRequestPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0648D4D10h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRequestPort ENDP

NtResetEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 088B20FA0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtResetEvent ENDP

NtResetWriteWatch PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03CA10602h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtResetWriteWatch ENDP

NtRestoreKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 019A2F2C0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRestoreKey ENDP

NtResumeProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0723C8151h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtResumeProcess ENDP

NtRevertContainerImpersonation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C64CE71Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRevertContainerImpersonation ENDP

NtRollbackComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00AB8EAB2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollbackComplete ENDP

NtRollbackEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00882CFD1h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollbackEnlistment ENDP

NtRollbackRegistryTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00CA92433h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollbackRegistryTransaction ENDP

NtRollbackTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CEE2EC77h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollbackTransaction ENDP

NtRollforwardTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08B349598h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollforwardTransactionManager ENDP

NtSaveKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06ED25377h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSaveKey ENDP

NtSaveKeyEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08FA56AD9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSaveKeyEx ENDP

NtSaveMergedKeys PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 019875264h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSaveMergedKeys ENDP

NtSecureConnectPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06EF47B7Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSecureConnectPort ENDP

NtSerializeBoot PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0DD4CC3C6h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSerializeBoot ENDP

NtSetBootEntryOrder PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A789910Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetBootEntryOrder ENDP

NtSetBootOptions PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 05B0B9D5Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetBootOptions ENDP

NtSetCachedSigningLevel PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E0A2E630h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetCachedSigningLevel ENDP

NtSetCachedSigningLevel2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D0439756h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetCachedSigningLevel2 ENDP

NtSetContextThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B29D7DB7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetContextThread ENDP

NtSetDebugFilterState PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 012B2E1BEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetDebugFilterState ENDP

NtSetDefaultHardErrorPort PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07ACE5890h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetDefaultHardErrorPort ENDP

NtSetDefaultLocale PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0613F6B99h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetDefaultLocale ENDP

NtSetDefaultUILanguage PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02BBBA592h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetDefaultUILanguage ENDP

NtSetDriverEntryOrder PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02EBC1E12h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetDriverEntryOrder ENDP

NtSetEaFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02EB05252h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetEaFile ENDP

NtSetHighEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0735609A2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetHighEventPair ENDP

NtSetHighWaitLowEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 010B43425h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetHighWaitLowEventPair ENDP

NtSetIRTimer PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0025F2B04h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetIRTimer ENDP

NtSetInformationDebugObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02DBF2926h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationDebugObject ENDP

NtSetInformationEnlistment PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BB25D933h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationEnlistment ENDP

NtSetInformationJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A03DB891h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationJobObject ENDP

NtSetInformationKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02391C7EDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationKey ENDP

NtSetInformationResourceManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AC34F69Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationResourceManager ENDP

NtSetInformationSymbolicLink PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B2A649B7h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationSymbolicLink ENDP

NtSetInformationToken PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0A7FDDD31h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationToken ENDP

NtSetInformationTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 002AB0037h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationTransaction ENDP

NtSetInformationTransactionManager PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08922DFFAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationTransactionManager ENDP

NtSetInformationVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 027AD392Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationVirtualMemory ENDP

NtSetInformationWorkerFactory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08E9FF853h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationWorkerFactory ENDP

NtSetIntervalProfile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 099580B6Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetIntervalProfile ENDP

NtSetIoCompletion PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 036AC363Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetIoCompletion ENDP

NtSetIoCompletionEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07497402Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetIoCompletionEx ENDP

NtSetLdtEntries PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0704E01B0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetLdtEntries ENDP

NtSetLowEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 067D61156h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetLowEventPair ENDP

NtSetLowWaitHighEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AC8D5403h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetLowWaitHighEventPair ENDP

NtSetQuotaInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 024B1D2A2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetQuotaInformationFile ENDP

NtSetSecurityObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0039D20C2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSecurityObject ENDP

NtSetSystemEnvironmentValue PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02CAF731Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSystemEnvironmentValue ENDP

NtSetSystemEnvironmentValueEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0AFB29B0Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSystemEnvironmentValueEx ENDP

NtSetSystemInformation PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E24C9EDFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSystemInformation ENDP

NtSetSystemPowerState PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B49764DDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSystemPowerState ENDP

NtSetSystemTime PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02E8B2F2Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetSystemTime ENDP

NtSetThreadExecutionState PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08E0C160Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetThreadExecutionState ENDP

NtSetTimer2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 099044515h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetTimer2 ENDP

NtSetTimerEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0849AC627h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetTimerEx ENDP

NtSetTimerResolution PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 007B136F2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetTimerResolution ENDP

NtSetUuidSeed PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E9B2609Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetUuidSeed ENDP

NtSetVolumeInformationFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 018A39A84h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetVolumeInformationFile ENDP

NtSetWnfProcessNotificationEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EAE9EB7Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetWnfProcessNotificationEvent ENDP

NtShutdownSystem PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0724D0250h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtShutdownSystem ENDP

NtShutdownWorkerFactory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00811009Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtShutdownWorkerFactory ENDP

NtSignalAndWaitForSingleObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08AB36ECBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSignalAndWaitForSingleObject ENDP

NtSinglePhaseReject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06AD59AA9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSinglePhaseReject ENDP

NtStartProfile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 034A43E34h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtStartProfile ENDP

NtStopProfile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0051FCE3Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtStopProfile ENDP

NtSubscribeWnfStateChange PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0B62793BEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSubscribeWnfStateChange ENDP

NtSuspendProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 02D833200h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSuspendProcess ENDP

NtSuspendThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 086B6D400h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSuspendThread ENDP

NtSystemDebugControl PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0BB955C86h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSystemDebugControl ENDP

NtTerminateEnclave PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 004AA39FAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTerminateEnclave ENDP

NtTerminateJobObject PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0EAB2E22Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTerminateJobObject ENDP

NtTestAlert PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04C88A9D2h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTestAlert ENDP

NtThawRegistry PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03AAA2037h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtThawRegistry ENDP

NtThawTransactions PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0105AEB5Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtThawTransactions ENDP

NtTraceControl PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FF69D9F0h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTraceControl ENDP

NtTranslateFilePath PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0C03ECA5Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtTranslateFilePath ENDP

NtUmsThreadYield PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F9A52810h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUmsThreadYield ENDP

NtUnloadDriver PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0769DFC84h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnloadDriver ENDP

NtUnloadKey PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08BDCB06Dh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnloadKey ENDP

NtUnloadKey2 PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0E6573F79h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnloadKey2 ENDP

NtUnloadKeyEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0DFB60BEAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnloadKeyEx ENDP

NtUnlockFile PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0CD5CE3DFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnlockFile ENDP

NtUnlockVirtualMemory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01B901517h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnlockVirtualMemory ENDP

NtUnmapViewOfSectionEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03290022Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnmapViewOfSectionEx ENDP

NtUnsubscribeWnfStateChange PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01CA1293Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUnsubscribeWnfStateChange ENDP

NtUpdateWnfStateData PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 06EDE5046h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtUpdateWnfStateData ENDP

NtVdmControl PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0018DDF2Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtVdmControl ENDP

NtWaitForAlertByThreadId PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F7201B68h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForAlertByThreadId ENDP

NtWaitForDebugEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 03089E3CEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForDebugEvent ENDP

NtWaitForKeyedEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01094161Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForKeyedEvent ENDP

NtWaitForWorkViaWorkerFactory PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0081D1488h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForWorkViaWorkerFactory ENDP

NtWaitHighEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 020C84419h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitHighEventPair ENDP

NtWaitLowEventPair PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08619BE97h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitLowEventPair ENDP

NtAcquireCMFViewOwnership PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01C87161Eh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtAcquireCMFViewOwnership ENDP

NtCancelDeviceWakeupRequest PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 013CF3362h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCancelDeviceWakeupRequest ENDP

NtClearAllSavepointsTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 04E92143Bh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtClearAllSavepointsTransaction ENDP

NtClearSavepointTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0D64ED6DBh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtClearSavepointTransaction ENDP

NtRollbackSavepointTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00B0C0998h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRollbackSavepointTransaction ENDP

NtSavepointTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FCBE37EAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSavepointTransaction ENDP

NtSavepointComplete PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 054A85244h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSavepointComplete ENDP

NtCreateSectionEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 09E9CEC66h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateSectionEx ENDP

NtCreateCrossVmEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 006AC0F28h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtCreateCrossVmEvent ENDP

NtGetPlugPlayEvent PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0694C16BEh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtGetPlugPlayEvent ENDP

NtListTransactions PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0F36AE1CDh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtListTransactions ENDP

NtMarshallTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00A6E38CFh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtMarshallTransaction ENDP

NtPullTransaction PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 00ED62E05h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtPullTransaction ENDP

NtReleaseCMFViewOwnership PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0FF44D79Ch        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtReleaseCMFViewOwnership ENDP

NtWaitForWnfNotifications PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 0392B41D9h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtWaitForWnfNotifications ENDP

NtStartTm PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 055987554h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtStartTm ENDP

NtSetInformationProcess PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 08F2A82AAh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtSetInformationProcess ENDP

NtRequestDeviceWakeup PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 041B16B6Ah        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRequestDeviceWakeup ENDP

NtRequestWakeupLatency PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 042EA5976h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtRequestWakeupLatency ENDP

NtQuerySystemTime PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 01E8A6F5Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtQuerySystemTime ENDP

NtManageHotPatch PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 07E40F97Fh        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtManageHotPatch ENDP

NtContinueEx PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 057CB0516h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
NtContinueEx ENDP

RtlCreateUserThread PROC
	mov [rsp +8], rcx          ; Save registers.
	push rdx
	pop [rsp+16]
	NOP
	mov [rsp+24], r8
	mov [rsp+32], r9
	sub rsp, 28h
	mov ecx, 054EE5E47h        ; Load function hash into ECX.
	NOP
	call getsysnum  ; Resolve function hash into syscall number.
	add rsp, 28h
	mov rcx, [rsp +8]          ; Restore registers.
	mov rdx, [rsp+16]
	mov r8, [rsp+24]
	mov r9, [rsp+32]
	mov r10, rcx
	NOP
	NOP
	syscall                    ; Invoke system call.
	ret
RtlCreateUserThread ENDP

end