#include <stdio.h>
void main()
{
    int size = 5;
    int a[5];
    int i;
    for(i=0; i<=5; i++){
       scanf("%d", &a[i]);
    }
    printf("Here are your array elemnts");
    for(i =0; i<=5; i++){
        printf("your ", a[i])
    }
}