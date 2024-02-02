#include <stdio.h>

void swap(int *x, int *y) {
    int temp = *x;
    *x = *y;
    *y = temp;
}

struct s {
    int x;
    struct s *next;
};

void clear_it(int *p, int size) {
    for (int i = 0; i < size; i++) {
        *(p + i) = 0;
        // p = p + i;
    }
    
}

void add_vectors(int *a, int *b, int *c, int size) {
   for (int i = 0; i < size; i++) {
      *(c + i) = *a + *b;
   }
}

// void do_allocate(struct block **head) {
    
// }
int num = 0;

int main()
{
    // printf("%d\n", num);
    // num++;
    // printf("%d\n", num);
    int z = 12321;
    int *x = &z;
    int y = x;
    // float y = x;
    
    // float a = 103.1241;
    // char b = a;
    
    printf("%d", y);
    // printf("%c", b);
    
    return 0;
}
