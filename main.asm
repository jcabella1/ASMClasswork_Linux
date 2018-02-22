; Assembler Linux Template
; Program Description: Add/Inc/Dec/Sub Practice

; Author: Jenny Abella

; Creation Date: 21/02/2018

; Revisions: 0

; Date: 21/02/2018       Modified by: 21/02/2018

; Operating System: Linux Mint 64-bit 18 Mate

; IDE/Compiler: Geany / NASM

%include "./functions.inc"

bits 32

section .data

  ;Initialized data definitions go here
	
	openPrompt	db	"Welcome to my program", 0ah, 0dh, 0h
	closePrompt	db	"Program ending, have a nice day.", 0ah, 0dh, 0h
	
section .bss
  ;Uninitialized memory reservations go here
  
	byte1	resb	1		;Allocate 1 byte
	wrd1	resw	1		;Allocate 2 bytes
	dbl1	resd	1		;Allocate 4 bytes

section .text

global _start
_start:
  nop

	push	openPrompt		;Print the opening/welcome prompt
	call	PrintString		;
	call	Printendl		;

	;Code starts here
	
	;add
	add eax, 5h
	add [byte1], BYTE 5h
	
	;sub
	sub eax, 5h
	sub [byte1], BYTE 5h
	
	;negate eax
	inc eax
	neg eax
	neg eax
	neg BYTE [byte1]
	neg WORD [wrd1]

	;increment
	dec		eax
	inc		eax
	inc		ax
	inc		al
	inc		ah
	
	mov	[byte1], BYTE 0h	;Zero out byte1 memoruy location
	inc BYTE [byte1]		;Add one to it
	
	mov	[wrd1], WORD 0h		;Zero out a word variable
	inc WORD [wrd1]			;Add one to it
	
	mov	[dbl1], DWORD 0h	;Zero out a Double word variable
	inc DWORD	[dbl1]		;Add one to it
	
	;decrement
	dec 	BYTE [byte1]	;Subtract one to it
	
	dec		WORD [wrd1]		;Subtract one to it
	
	dec 	DWORD [dbl1]	;Subtract one to it
	
	push	closePrompt		;Print the closing/ending prompt
	call	PrintString		;
	call	Printendl		;
		
	;Code ends here	
	nop
	mov eax,1 ; Exit system call value
	mov ebx,0 ; Exit return code
	int 80h ; Call the kernel
