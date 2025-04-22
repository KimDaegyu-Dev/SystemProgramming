TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.


section .data
    num1 dw 100  ; 첫 번째 정수
    num2 dw 30   ; 두 번째 정수
    num3 dw 20   ; 세 번째 정수

section .bss
    result resw 1   ; 결과를 저장할 공간

section .text
    global _start

_start:
    ; num1 - num2 -> ax에 저장
    mov ax, [num1]  ; ax에 num1 값을 로드
    sub ax, [num2]  ; ax에서 num2 값을 뺌
    ; 결과를 result에 저장
    mov [result], ax

    ; (num1 - num2) - num3 -> ax에 저장
    mov ax, [result]  ; result 값을 다시 ax로 로드
    sub ax, [num3]    ; ax에서 num3 값을 뺌
    ; 결과를 result에 저장
    mov [result], ax

    ; 프로그램 종료 (리눅스 시스템 호출)
    mov eax, 1        ; 시스템 호출 번호 (exit)
    xor ebx, ebx      ; 반환값 0
    int 0x80          ; 인터럽트 호출로 프로그램 종료
main ENDP
END main