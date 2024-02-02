.data
.text
string0:
	.string "Fibonacci = %d\n"

.globl fibonnaci
fibonnaci:
	# Save Frame pointer
	pushq %rbp
	movq  %rsp,%rbp

if_start_0:

  cmpq $0, %rdi
  je if_end_0

  cmpq $1, %rdi
  je if_end_0

  jmp if_else_0

if_else_0:
  # return fib(n - 1)
  decq %rdi
  pushq %rdi
  pushq %rsi
  call fibonnaci

  popq %rsi
  popq %rdi

  movq %rax, %rsi

  # return fib(n - 2)
  decq %rdi
  pushq %rdi
  pushq %rsi
  call fibonnaci

  popq %rsi
  popq %rdi

  addq %rsi, %rax

  leave
  ret

if_end_0:
  movq %rdi, %rax

  leave
  ret

.globl main
main:
	# Save Frame pointer
	pushq %rbp
	movq %rsp,%rbp

  movq $12, %rdi
  call fibonnaci

  movq %rax, %rsi
  movq $string0, %rdi
  movq $0, %rax
  call printf

	leave
	ret


