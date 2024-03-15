%{
#include<stdio.h>
int comment=0;
%}
%%
"\*"    {comment=1;}
"*/"    {comment=0;}
.       {if(!comment){fprintf(yyout,"%s",yytext);}}
%%
int main()
{
    extern FILE *yyin,*yyout;
    yyin=fopen("input.txt","r");
    yyout=fopen("out.txt","w");
    yylex();
}
int yywrap()
{
    return 1;
}