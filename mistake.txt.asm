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
		LTRL1 sdword 3
		LTRL2 sdword 5
		LTRL3 sdword 4
.data
		temp sdword ?
		buffer byte 256 dup(0)
		maina sdword 0
.code

;----------- MAIN ------------
main PROC
push LTRL1
push LTRL2
pop ebx
pop eax
add eax, ebx
push eax
push LTRL3
pop ebx
pop eax
cdq
idiv ebx
push eax

pop ebx
mov maina, ebx

push 0
call ExitProcess
main ENDP
end main
