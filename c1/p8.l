%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}
%%
[0-1]*  {yylval=atoi(yytext);
return D;}
%%
int yywrap()
{
    return 1;
}