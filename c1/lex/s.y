%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B nl
%%
expr:A s B  {printf("VALID");}
    ;
s:A s B
    |
    ;
%%
int main()
{
    printf("enter expression:");
    yyparse();
    return 1;
}
int yyerror()
{
    printf("INVALID");
    return 0;
}