# Define global variable a in data section
        .data
        .comm   a,8             # int a;
        .comm   b,8             # int b;
        .comm   max,8           # int max;
        .comm   min,8           # int min;
        .comm   avg,8           # int avg;
        .comm   n,8             # int n;
        .text
format1:
        .string "a="
format2:
        .string "b="
format3:
        .string "max=%d\n"
format4:
        .string "min=%d\n"
format5:
        .string "avg=%d\n"
format6:
        .string "%d"

.globl main
main:                          # main()
        pushq  %rbp            # Save frame pointer
        movq    %rsp, %rbp     #

        movq    $format1, %rdi #   printf("a=");
        movq    $0, %rax       #
        call    printf         #

        movq    $format6, %rdi #   scanf("%d",&a);
        movq    $a, %rsi      #  %r8 = a
        movq    $0, %rax       #
        call    scanf          #

        movq    $format2, %rdi #   printf("b=");
        movq    $0, %rax       #
        call    printf         #

        movq    $format6, %rdi #   scanf("%d",&b);
        movq    $b, %rsi      #  %r9 = b
        movq    $0, %rax       #
        call    scanf          #

        movq    a, %r8
        movq    b, %r9

        cmpq    %r9, %r8       # if (a > b) {
        jle     else_branch
        movq    a, %rcx       # max = a
        movq    b, %r13       # min = b
        jmp     endIf

else_branch:                   # a < b
        movq    b, %rcx       # max = b
        movq    a, %r13       # min = a

endIf:
        
        addq    %rcx, avg       # avg += max
        addq    %r13, avg       # avg += min

        movq    avg, %rax
        movq    $0, %rdx
        movq    $2, n 
        idivq   n              # avg =/ 2

        movq    %rax, %r15     # move avg into temp variable
        
        movq    $format3, %rdi  # printf("Max=%ld\n");
        movq    %rcx, %rsi
        movq    $0, %rax
        call    printf 

        movq    $format4, %rdi  # printf("Min=%ld\n");
        movq    %r13, %rsi
        movq    $0, %rax
        call    printf 

        movq    $format5, %rdi  # printf("Avg=%ld\n");
        movq    %r15, %rsi
        movq    $0, %rax
        call    printf

        leave                  # pops the frame pointer
        ret                    # }
