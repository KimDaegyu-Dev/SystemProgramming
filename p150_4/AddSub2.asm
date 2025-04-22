; TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc

.data
uarray WORD 8h, 80h, 800h, 8000h
sarray SWORD -2, -4, -8, -16

.code
main PROC
    mov eax, OFFSET uarray
    mov ebx, OFFSET uarray + 2
    mov ecx, OFFSET uarray + 4
    mov edx, OFFSET uarray + 6

    call DumpRegs

    mov eax, OFFSET sarray
    mov ebx, OFFSET sarray + 2
    mov ecx, OFFSET sarray + 4
    mov edx, OFFSET sarray + 6

    call DumpRegs

    exit
main ENDP
END main
