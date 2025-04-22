TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.


section .data
    num1 dw 100  ; ù ��° ����
    num2 dw 30   ; �� ��° ����
    num3 dw 20   ; �� ��° ����

section .bss
    result resw 1   ; ����� ������ ����

section .text
    global _start

_start:
    ; num1 - num2 -> ax�� ����
    mov ax, [num1]  ; ax�� num1 ���� �ε�
    sub ax, [num2]  ; ax���� num2 ���� ��
    ; ����� result�� ����
    mov [result], ax

    ; (num1 - num2) - num3 -> ax�� ����
    mov ax, [result]  ; result ���� �ٽ� ax�� �ε�
    sub ax, [num3]    ; ax���� num3 ���� ��
    ; ����� result�� ����
    mov [result], ax

    ; ���α׷� ���� (������ �ý��� ȣ��)
    mov eax, 1        ; �ý��� ȣ�� ��ȣ (exit)
    xor ebx, ebx      ; ��ȯ�� 0
    int 0x80          ; ���ͷ�Ʈ ȣ��� ���α׷� ����
main ENDP
END main