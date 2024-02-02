#include <stdio.h>

int main()
{
    char buf[10] = "Hello!";
    short my_short = 12;
    long my_long = 0xffffffffffffffff;
    char my_char = 'A';
    int my_int = 256;
    
    printf("%s %hd %ld %c %d\n", buf, my_short, my_long, my_char, my_int);
    printf("Buf:%p Short:%p Long:%p Char:%p Int:%p\n", &buf, &my_short, &my_long, &my_char, &my_int);
    printf("%ld %ld\n", sizeof(my_long), my_long);
    return 0;
}
