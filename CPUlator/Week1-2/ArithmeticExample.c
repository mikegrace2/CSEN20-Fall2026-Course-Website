/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <stdio.h>

int main()
{
    int num1=0;
    int num2=1;
    int num3=2;
    int returnVal=(num1*num2+num3)/10*(num2*num1/3)*1000-10.34+3.14;
    printf("returnVal=%d\n",returnVal);

    return returnVal;
}
