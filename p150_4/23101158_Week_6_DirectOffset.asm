; Practice No.4
; 23101158 김대규
; 직접 오프셋 주소 지정

INCLUDE Irvine32.inc

.data
uarray WORD 8h, 80h, 800h, 8000h
sarray SWORD -2, -4, -8, -16

.code
main PROC
    movzx eax, uarray
    movzx ebx, uarray + 2
    movzx ecx, uarray + 4
    movzx edx, uarray + 6

    call DumpRegs

    movsx eax, sarray
    movsx ebx, sarray + 2
    movsx ecx, sarray + 4
    movsx edx, sarray + 6

    call DumpRegs

    exit
main ENDP
END main
