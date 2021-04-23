%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B
%%
str: s'\n' {return 1;}
s: A s B ;
| ;
%%
int main()
{
    printf("type the string (anbn) \n");
    if(yyparse())
        printf("valid string\n");
    return 0;
}
int yyerror()
{
printf("invalid string.\n");
exit(0);
}