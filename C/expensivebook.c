#include <stdio.h>

struct book_data {
    int quantity;
    float value;
    char title[MAX_TITLE_LEN];
    char isbn[MAX_ISBN_LEN];
};

typedef struct book_data book_t;

book_t g_books[g_book_count] = {0};

float least_exepnsive() {
    float least_exp = g_books[0].quantity * g_books[0].value;
    
    for (int i = 1; i < g_book_count; i++) {
        float curr_cost = g_books[i].quantity * g_books[i].value;
        
        if (curr_cost < least_exp) {
            least_exp = curr_cost;
        }
        
        printf("%s %s\n", g_books[i].title, g_books[i].isbn);
    }
    
    return least_exp;
}


int main()
{
    typedef book_t;
    
    
    return 0;
}

