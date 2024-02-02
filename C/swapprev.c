#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct next {
    int val;    
    struct next * next_ptr;
};

typedef struct next node;

node *swap_with_previous(node * head, int value) {
    
    node *swp_prev, *swp, *p, *p_next = NULL;
    
    assert(head != NULL);
    
    p = head;
    
    while (p != NULL) {
        
        if (p->val == value) {
            swp->next_ptr = p;
            swp_prev->next_ptr = swp;
            p->next_ptr = p_next;
            
            assert(swp != NULL);
            
            swp->next_ptr = p_next;
            p->next_ptr = swp;
            swp_prev->next_ptr = p;
            
            return head;
        }
        
        p = p->next_ptr;
    }
    
    return NULL;
}

int main()
{
    printf("Hello World");

    return 0;
}

