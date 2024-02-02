# Define global variable a in data section, Finds the average in a loop
           .data
           .comm   n,4             # int n;
           .comm   total,8             # long total;
           .comm   curr,8            # long total;
           .comm   i,4            # int i;
           .text
format1:
           .string "n?="
format2:
          .string "%d"
format3:
          .string "SUM=%ld\n"
format4:
          .string "AVG=%ld\n"
format5:
          .string "n=%d\n"

  .globl main
  main:                          # main()
          pushq  %rbp            # Save frame pointer
          movq    %rsp, %rbp     #

          movq    $format1, %rdi #   printf("n?=");
          movq    $0, %rax       #
          call    printf         #

          movq    $format2, %rdi #   scanf("%d",&n);
          movq    $n, %rsi       #
          movq    $0, %rax       #
          call    scanf          #

          movq   $format5, %rdi
          movq   $0, %rax
          movq   n, %rsi
          call   printf


                                # while (i < n) {
 while:
         movq    i, %rdx       # int i = 0
         cmpq    %rdx, n        # i < n;
         jle     afterwhile

         movq    $format2, %rdi #   scanf("%d",&curr);
         movq    $curr, %rsi    #
         movq    $0, %rax       #
         call    scanf          #

         # add curr to total
         movq    curr, %rsi     #
         addq    %rsi, total    # total += curr;

         addq    $1, i       # i++;
         jmp     while          # }

 afterwhile:

          movq    $format3, %rdi #   printf("SUM=%d");
          movq    $0, %rax       #
          movq    total, %rsi   #
          call    printf         #   similar to `bl printf` in ARM

          movq    total, %rax
          movq    $0, %rdx
          idivl   n      # total / n
          
          movq    $format4, %rdi  # printf("Avg=%ld\n");
          movq    %rax, %rsi
          movq    $0, %rax
          call    printf

         leave                  # pops the frame pointer
         ret                    # }

