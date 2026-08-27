#include <stdio.h>
#include <stdint.h>
#include <math.h>

// Secret unknown function. No need to Implement!!!!!
int32_t func2(int32_t one, int32_t two){
    int32_t R0 = one;
    int32_t R1 = two;
    int32_t R2 = one + two;
    int32_t R3 = R2 + 100;
    printf("R0=%d R0=%d R0=%d R0=%d\n", R0, R1,R2,R3);
    return R3 + pow((float)R0, (float)R1);
}

//                    R0           R1           R2
int32_t func1(int32_t uno, int32_t dos, int32_t tres){
        int32_t temp=func2(dos, 10);
        temp = temp + uno;
        return temp;
}

int32_t main(){
    int32_t retu = func1(1, 2, 3);
    printf("retu=%d\n", retu);

    return 0;
}
