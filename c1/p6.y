%{
    #include<stdio.h>
    #include<stdlib.h>

%}
%token letter nl num
%left '+' '-'
%left '*' '/'
%%
valid: expr nl {printf("valid exprsn");}
expr :expr '+' expr
        |expr '-' expr
        |expr '*' expr
        |expr '/' expr
        |letter
        |num
        ;
%%
int main()
{
    printf("enter exprsn:");
    yyparse();
    return 0;
}
yyerror()
{
    printf("invalid");
    exit(1);
}
