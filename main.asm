; Assembler Linux Template
; Program Description:

; Author:

; Creation Date:

; Revisions: 

; Date:              Modified by:

; Operating System:

; IDE/Compiler:

%include "./functions.inc"

bits 32

section .data

  ;Initialized data definitions go here
	
	openPrompt	db	"Welcome to my program", 0ah, 0dh, 0h
	closePrompt	db	"Program ending, have a nice day.", 0ah, 0dh, 0h
	
section .bss
  ;Uninitialized memory reservations go here

section .text

global _start
_start:
  nop

	push	openPrompt		;Print the opening/welcome prompt
	call	PrintString		;
	call	Printendl		;

	;Code starts here
	
	push	closePrompt		;Print the closing/ending prompt
	call	PrintString		;
	call	Printendl		;

	;Code ends here	
	nop
	mov eax,1 ; Exit system call value
	mov ebx,0 ; Exit return code
	int 80h ; Call the kernel
