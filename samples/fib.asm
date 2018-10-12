global _main
extern _printf
extern _atoi

section .text

_main:
  push rbx
  push r12
  push r13

  mov r12, rsi; argv
  mov rdi, [r12 + 8]; argv[0]
  call _atoi;
  mov  r13d, eax;

  mov ecx, r13d
  xor rax, rax ; current number, set 0
  xor rbx, rbx ; next number, set 0
  inc rbx

print:
  push rax;
  push rcx;

  lea rdi, [rel format];
  mov rsi, rax;
  xor rax, rax;

  call _printf;

  pop rcx;
  pop rax;

  mov rdx, rax
  mov rax, rbx
  add rbx, rdx
  dec ecx
  jnz print

  pop r13
  pop r12
  pop rbx
  ret

section .data
format: db '%20ld', 10, 0 ; 10 is new line
