# Define global variable a in data section
        .data
        .comm   a,8             # int a;
        .comm   b,8             # int b;
        .text
format1:
        .string "Type a b:\n"
format2:
        .string "%ld %ld"
format3:
        .string "a+b=%d\n"

.globl main
main: 
        pushq   %rbp
        movq    %rsp, %rbp

        movq    $format1, %rdi
        movq    $0, %rax
        call    printf

        movq    $format2, %rdi
        movq    $a, %rsi
        movq    $b, %rdx
        movq    $0, %rax
        call    scanf

        movq    $format3, %rdi
        movq    a, %rsi
        addq    b, %rsi
        movq    $0, %rax
        call    printf
        
        leave                  # pops the frame pointer
        ret                    # }



