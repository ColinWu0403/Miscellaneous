#include <stdio.h>

long array[] = {6, 7, 2, 11, 1, 9, 4, 5, 0, -9, 8};
long n = (sizeof(array) / sizeof(long));

void selectionsort(long ascending, long n, long *a) {
    for (int i = 0; i < n - 1; i++) {
        long index = i;
        for (int j = i + 1; j < n; j++) {
            if (ascending) {
                if (array[j] < array[index]) {
                    index = j;
                }
            } 
            // else { // Moved the else block here
            //     if (array[j] > array[index]) {
            //         index = j;
            //     }
            // }se
        }
        long temp = array[i];
        array[i] = array[index];
        array[index] = temp;
    }
}

void printArray(long n, long *a) {
    for (int i = 0; i < n; i++) {
        printf("%ld ", a[i]);
    }
    printf("\n");
}

int main(int argc, char **argv) {
    printf("Before Ascending:\n");
    printArray(n, array);
    selectionsort(1, n, array);
    printf("After Ascending:\n");
    printArray(n, array);

    // printf("Before Descending:\n");
    // printArray(n, array);
    // selectionsort(0, n, array);
    // printf("After Descending:\n");
    // printArray(n, array);

    return 0; // Added return statement at the end of main
}

