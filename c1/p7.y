%{
#include<stdio.h>
#include<stdlib.h>
int valid=1;
%}
%token digit letter
%%
valid:letter s
s:letter s|digit s|;
%%
int main()
{
    printf("enter expr:");
    yyparse();
    if(valid)
    {
        printf("VALID");
    }
}
int yyerror()
{
    printf("INVALID");
    valid=0;
    return 0;
}
