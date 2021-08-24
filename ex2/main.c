#include <stdio.h>
#include "input.h"
#include "calcu.h"

int main(int argc, char **argv){
    int a, b, num;

    input_int(&a, &b);
    num = calcu(a, b);

    #ifdef _MULTP_
        printf("%d x %d = %d\n", a, b, num);
    #else
        printf("%d + %d = %d\n", a, b, num);
    #endif
    
    return 0;
}
