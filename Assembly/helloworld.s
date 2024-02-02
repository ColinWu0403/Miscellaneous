        .text
format1:
        .string "Hello World\n"

.globl main
main:                          # main()
        pushq  %rbp            # Save frame pointer
        movq    %rsp, %rbp     #

        movq    $format1, %rdi #   printf("Hello World\n");
        movq    $0, %rax       #
        call    printf         #

        leave                  # pops the frame pointer
        ret                    # }
