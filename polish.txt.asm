.586
.model flat, stdcall
includelib libucrt.lib
includelib kernel32.lib
includelib "E:\PAA-2018\PAA-2018\Debug\standlib.lib"
ExitProcess PROTO:DWORD 
.stack 4096


 outnum PROTO : DWORD

 outstr PROTO : DWORD

 concat PROTO : DWORD, : DWORD, : DWORD

 lenght PROTO : DWORD, : DWORD

.const
		newline byte 13, 10, 0
		LTRL1 sdword 9
		LTRL2 sdword 16
		LTRL3 sdword 3
		LTRL4 sdword 2
		LTRL5 sdword 10
		LTRL6 sdword 5
.data
		temp sdword ?
		buffer byte 256 dup(0)
		mainx sdword 0
		mainy sdword 0
		mainz sdword 0
.code

;----------- MAIN ------------
main PROC
push LTRL1

pop ebx
mov mainx, ebx

push LTRL2
push LTRL3
pop ebx
pop eax
add eax, ebx
push eax
push mainx
pop ebx
pop eax
sub eax, ebx
push eax
push LTRL4
pop ebx
pop eax
imul eax, ebx
push eax
push LTRL5
pop ebx
pop eax
cdq
idiv ebx
push eax
push LTRL6
pop ebx
pop eax
imul eax, ebx
push eax

pop ebx
mov mainy, ebx


push mainy
call outnum

push LTRL2
push LTRL3
pop ebx
pop eax
add eax, ebx
push eax
push mainx
pop ebx
pop eax
sub eax, ebx
push eax
push LTRL4
pop ebx
pop eax
imul eax, ebx
push eax

pop ebx
mov mainz, ebx


push mainz
call outnum

push 0
call ExitProcess
main ENDP
end main
