# Define global variable a in data section
          .data
          .comm   j,8               # long j;
          .text

  
.globl selectionsort
selectionsort:                      # selectionsort(long ascending, long n, long * a)
          pushq   %rbp              # Save frame pointer
          movq    %rsp, %rbp        # ascending = %rdi n = %rsi a = %rdx

                                    # i = %rcx
          movq    $0, %rcx          # int i = 0
          movq    %rdx, %r13         # store pointer to a[0] in %r13

while1:                             # while(i < (n-1)) or for(int i = 0; i < n- 1; i++)
          cmpq    %rcx, %rsi        # i < n;
          jle     endWhile1         # If i >= n, exit the loop
          movq    %rcx, j           # j = i
          movq    %r13, %rax        # index = i, the value of i is in %r13

while2:                             # while(j < n) or for(int j = i + 1; j < n; j++)
          cmpq    j, %rsi           # i < n;
          jle     endWhile2

          movq    j, %r8            # set a[j] in %r8
          imulq   $8, %r8
          addq    %rdx, %r8

          cmpq    $0, %rdi          # if (ascending) {
          jle     descending        # Jump to else, ascending != 0

          movq    (%rax), %r11      # a[i] = %rax
          cmpq    (%r8), %r11       # If (a[i] > a[j])
          jle     afterascending    # jump out of if statement

          movq    %r8, %rax         # index = j
          jmp     afterascending    # jump out of if statement

descending:
          movq    (%rax), %r11      # a[i] = %rax
          cmpq    %r11, (%r8)       # if (a[i] < a[j]) {
          jle     afterascending    # jump out of if statement

          movq    %r8, %rax         # index = j
          jmp     while2            # jump back to beginnning of while2
        
afterascending:
          addq    $1, j            # j++;
          jmp     while2           # jump back to beginnning of while2

endWhile2:                         # Swap array indices:
          movq    (%rax), %r8      # long temp = a[i];
          movq    (%r13), %r11     # long temp1 = a[index]
          movq    %r11, (%rax)     # a[i] = temp
          movq    %r8, (%r13)      # a[index] = temp;

          addq    $1, %rcx         # i++;
          addq    $8, %r13         # j++;
          jmp     while1           # jump back to beginning of while1

endWhile1:
          leave                    # pops the frame pointer
          ret                      # }
