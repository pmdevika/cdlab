%{
    #include "y.tab.h"
    extern int yylval;
%}
%%
[a-bA-B0-9]+ {yylval=*yytext; return A;}
[\n]    {return nl;}
.   ;
%%
int yywrap()
{
    return 1;
} 
