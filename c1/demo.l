%{
#include "y.tab.h"
extern char *yytext;
%}
%%
[a-zA-Z0-9]+ { return D;}
. ;
%%
int yywrap()
{
    return 1;
}