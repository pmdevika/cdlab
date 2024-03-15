%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num
%left '+' '-'
%left '*' '/'
%%
valid:expr '\n' {printf("result:%d",$1); exit(0);}
expr:num    {$$=$1;}
    |expr '+' expr {$$=$1+$3;}
    |expr '-' expr {$$=$1-$3;}
    |expr '*' expr {$$=$1*$3;}
    |expr '/' expr {$$=$1/$3;}
    | '(' expr ')' {$$=$2;}
    ;
%%
int main()
{
    yyparse();
    return 0;
}
void yyerror()
{
    printf("invalid");
    exit(1);
}