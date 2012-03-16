
#include "mylibrary.h"
#include <stdio.h>

double calculate_something(int a, float b)
{
 return a+b;
}

const char* test_function_1(const char *w)
{
    return w;
}

int test_function_2(double w,double *x, char *y) {
    
    return ((int) w + (int) *x);
}
void test_function_3(){
    printf("printing...x\n");
}

void test_function_4(double *x){
    x[0] = 1.0;
    x[1] = 2.0;
    x[3] = 3.0;
}