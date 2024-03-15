%{
    #include "y.tab.h"
    int yylval;
%}

%%
[a-zA-Z]+    {return letter;}
[0-9]+      {return num;}
[\t]+       
.           {return yytext[0];}
[\n]       { return nl;}
%%
int yywrap()
{
    return 0;
}
