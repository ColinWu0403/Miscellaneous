#include <stdio.h>


unsigned int bit_range(unsigned int num, unsigned int bits, unsigned int offset) {
    
    return ((num >> offset) & ((1 << bits) - 1));
}
int main()
{
    int x = bit_range(0x3720, 0x3720, 4);
    printf("%d\n", x);

    return 0;
}

