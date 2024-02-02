#include <stdio.h>

union endian {
    unsigned char a[2];
    unsigned short num_endian;
};

unsigned short endian2_conversion(unsigned short number) {
    union endian lit_end;

    lit_end.num_endian = number;
    
    printf("before:\n");
    printf("un[0] = %02X\n", lit_end.num_endian);
    printf("un[1] = %02X\n", lit_end.a[0]);
    printf("un[2] = %02X\n", lit_end.a[1]);
    
    char c = lit_end.a[0];
    lit_end.a[0] = lit_end.a[1];
    lit_end.a[1] = c;
    
    printf("after:\n");
    printf("un[0] = %02X\n", lit_end.num_endian);
    printf("un[1] = %02X\n", lit_end.a[0]);
    printf("un[2] = %02X\n", lit_end.a[1]);
    
    return lit_end.num_endian;
}

int main()
{
    short val  = 0x1234;
    short result = 0;
    
    result = endian2_conversion(val);
    
    printf("0x%02X to 0x%02X", val, result & 0xffff);

    return 0;
}

