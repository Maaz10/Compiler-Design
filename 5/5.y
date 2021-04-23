%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token L D
%%
s: id { return 1; }
id: l n
| l {;}
;
n: l n
| d n

| l
| d {;}
;
l: L {;}
;
d: D {;}
;
%%
void main()
{printf("type the variable \n");
if(yyparse())
printf("valid");
}
int yyerror()
{
printf("invaalid variable !!!\n");
exit(0);
}