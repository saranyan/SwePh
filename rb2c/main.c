#include <stdio.h>
#include "mylibrary.h"

int main(){
    
    char x[10];
    double d = 10.0;
    double *dp = &d;
    double dd[3];
    printf("tf0 - %lf\n",calculate_something(1,2.33));
    printf("tf1 - %s\n", test_function_1("hello"));
    printf("tf2 - %d\n", test_function_2(10.0,dp,x));
    test_function_3();
    test_function_4(dd);
    printf("tf4 - %lf, %lf, %lf", dd[0], dd[1], dd[2]);
    return 1;
}
