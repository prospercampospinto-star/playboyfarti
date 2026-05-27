.intel_syntax noprefix
.section .text
.global fun

fun:
    push rbp
    mov  rbp, rsp

    add edi, esi
    mov eax, edi

    pop  rbp
    ret