# Define global variable a in data section
          .data
          .text
  
.globl strlen
strlen:                             # int strlen(char *s) 
          pushq   %rbp              # Save frame pointer
          movq    %rsp, %rbp        # s = %rdi

while1:                             # while(s != '\0') {
          cmpq    (%rdi), $0        
          jae     endWhile1         

          addq    $1, %rdi           # s++;
          addq    $1, %rax           # length++;
          jmp     while1

endWhile1:
          leave                     # pops the frame pointer
          ret                       # }
