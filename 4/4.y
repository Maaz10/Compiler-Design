%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token NUM
%left '+''-'
%left '*''/'
%%
expr: e { printf("Result:%d\n",$1); return 0;}
e: e'+'e {$$=$1+$3;}
| e'-'e {$$=$1-$3;}
| e'*'e {$$=$1*$3;}
| e'/'e {$$=$1/$3;}
| '('e')' {$$=$2;}
| NUM {$$=$1;};
%%
int main()
{
printf("enter the expression\n"); yyparse();
printf("valid expression \n");
return 0;
}
int yyerror()
{ printf("invalid expression !!!!\n");
exit(0);
}