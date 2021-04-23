%{
int cc=0;
%}
%x CMNT CMNTL

%%
"/*" {BEGIN CMNT; cc++;}
<CMNT>. ;
<CMNT>\n ;
<CMNT>"*/" {BEGIN 0;}
"//" {BEGIN CMNTL;cc++;}
<CMNTL>. ;
<CMNTL>\n {BEGIN 0;}
%%

int main(int argc,char* argv[])
{
    if(argc !=3)
    {
        printf("usage:%s<src file><dst file>\n",argv[0]);
        return 0;
    }
    yyin=fopen(argv[1],"r");
    yyout=fopen(argv[2],"w");
    yylex();
    printf(" No of comment lines:%d\n",cc);
}