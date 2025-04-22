; Practice No.7
; 23101158 ±è´ë±Ô
; EAX = -val2 + 7 - val3 + val1

INCLUDE Irvine32.inc

.data
val1 SDWORD 8
val2 SDWORD -25
val3 SDWORD 10

.code
main PROC
    mov eax, val2
    neg eax            ; -val2 = 25, 19h
    add eax, 7         ; -val2 + 7 = 32, 20h
    sub eax, val3      ; -val2 + 7 - val3 = 22, 16h
    add eax, val1      ; -val2 + 7 - val3 + val1 = 30, 1Eh

    call DumpRegs

    exit
main ENDP
END main
