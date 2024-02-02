# Define global variable a in data section
          .data
          .comm   total,8             # long total;
          .text

  
.globl addarray
addarray:                           # long addarray(long n, long* array) 
          pushq   %rbp              # Save frame pointer
          movq    %rsp, %rbp        # n = %rdi array = %rsi

                                    # i = %rcx
          movq    $0, %rcx          # int i = 0

while1:                             # while(i < n) {
          cmpq    %rcx, %rsi        # i < n;
          jle     endWhile1         # If i >= n, exit the loop

          movq    %rcx, %r8         # set array[i] in %r8
          imulq   $8, %r8
          addq    %rsi, %r8

          addq    %r8, total         # total += a[i]

          addq    $1, %rcx           # i++;
          jmp     while1             # }

endWhile1:

          movq    total, %rax       # return total

          leave                     # pops the frame pointer
          ret                       # }
