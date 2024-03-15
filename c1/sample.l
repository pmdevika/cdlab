%{
#include "y.tab.h"
%}
%%
[0-9]+  {yylval=atoi(yytext); return num;}
[-+*/\(\)\n]    {return yytext[0];}
[\t]    ;
.           {yyerror();}
%%
int yywrap()
{
    return 1;
}