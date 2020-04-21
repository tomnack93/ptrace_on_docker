global _start

section .data
message: db 'hello world', 0x0a ; Output string and 0x0a = LF

section .text
_start:
    mov rax, 1              ; Set system call to write=4.
    mov rdi, 1              ; Set output to stdout.
    mov rsi, message        ; Set output data.
    mov rdx, 13             ; Set output data size.
    syscall

    mov rax, 60             ; Set system call to exit=1.
    mov rdi, 0              ; Set success value of exit.
    syscall
