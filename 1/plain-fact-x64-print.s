global start

section .text

start:
  mov r8, 5

fact:
  mov r9, 1

fact_acc:
  cmp r8, 0
  je fact_done
  imul r9, r8
  dec r8
  jmp fact_acc

fact_done:
  mov r8, msg  ; Move the address of `msg` into `r8`.
  mov [r8], r9 ; move r9 into the 0th index of the address pointed to by r8.

print_msg:
  mov     rax, 1      ; Say, "I'm about to call the OS sys_write function"
  mov     rdi, 1      ; And I want it to write to the standard output port
  mov     rsi, msg    ; The message to print is stored in msg
  mov     rdx, len    ; Length is len.
  syscall

exit:
  mov     rax, 60
  mov     rdi, 0                ; The exit code is 0; normal.
  syscall

section .data

len:   equ   1         ; The constant 1, representing the length of the message.
msg:   times len dw 0  ; A `len` length, in bytes, buffer, initialized to be full of 0.
