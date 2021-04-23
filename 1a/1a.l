%{
	int wc=0, cc=0, lc=0, bc=0;
char infile[25];
%}

%%
\n {lc++;cc++;}
[^ \t\n]+ {wc++;cc+=yyleng;}
[ ] {bc++;cc++;}
. {cc++;}
%%

int main()
{
printf("record the input file name \n");
scanf("%s",infile);
yyin=fopen(infile,"r");
yylex();
fclose(yyin);
printf("No of chars:%d\n",cc);
printf("No of words:%d\n",wc);
printf("No of lines:%d\n",lc);
printf("No of blanks:%d\n",bc);
}
