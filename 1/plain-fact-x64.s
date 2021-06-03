global start   ; Declare starting block for linker.

section .text                   ; Start of the "code"

;; Compute (fact 5)
start:
  mov r8, 5

;; Compute the factorial of the value in r8.
;; Expects  r8 : Positive int64
;; Produces r9 : Positive int64, the result of the factorial of r8.
fact:
  mov r9, 1                     ; Initialize accumulator to (fact 0).

;; Computes the factorial of r8 with accumulator r9
fact_acc:
  cmp r8, 0                     ; compare r8 and 0, i.e., (zero? r8)
  je fact_done                  ; jump if last comparison was equal
  imul r9, r8                   ; (set! r9 (* r9 r8))
  dec r8                        ; (set! r8 (sub1 r8))
  jmp fact_acc                  ; (fact r8)

fact_done:
exit:
    mov     rax, 60         ; I'm about to call the OS sys_exit function
    mov     rdi, r9         ; The exit code is the value from r9.
    syscall                 ; Perform the system call operation; Done. The result is in r9.

section .data ; The data section. This is where we declare initialized memory locations.

dummy: db 0
