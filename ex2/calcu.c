#include "calcu.h"

int calcu(int a, int b){
    #ifdef _MULTP_
        return (a * b);
    #else
        return (a + b);
    #endif
}
