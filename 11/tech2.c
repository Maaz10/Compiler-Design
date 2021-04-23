#include<stdio.h>
#include<time.h>
int fact(int n)
{
if(n == 1)
return 1;
else
return n*fact(n-1);
}
int main()
{
clock_t beg,end;
beg = clock();
int n,i,f;
f = 1;
printf("Enter the number to find the factorial: ");
scanf("%d",&n);
f = fact(n);
printf("Factorial is %d \n",f);
end = clock();
double time = (double)(end - beg) / CLOCKS_PER_SEC;
printf("Execution time is for finding factorial using for loop: %f \n",
time);
return 0;
}