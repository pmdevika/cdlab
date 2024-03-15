%{
#include<stdio.h>
#include<stdlib.h>
void bd(int x);
int i,sum=0,p=1,b;
%}
%token D
%%
valid:D{bd(yylval);}
;
%%
int main()
{
    yyparse();
}
void bd(int x)
{
    while(x)
    {
        b=x%10;
        x=x/10;
        sum=sum+b*p;
        p=p*2;
    }
    printf("%d",sum);
}
int yyerror()
{
    printf("invalid");
    exit(0);
}