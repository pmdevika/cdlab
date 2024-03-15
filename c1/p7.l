%{
    #include "y.tab.h"
    int yyval;
%}
%%
[a-zA-Z][a-zA-Z0-9_]* return letter;
[0-9] return digit;
[\n] return 0;
. return yytext[0];
%%
int yywrap()
{
    return 0;
}