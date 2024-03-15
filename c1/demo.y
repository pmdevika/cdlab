%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
char x[10];

void bd(char *x);
int i=0,p=1,b,j,sum=0;
int n;
int valid=1;
int flag=1;

%}
%token D;
%%
valid:D    {bd(yytext);}
;
%%
int main()
{
    printf("enter:");
    yyparse();
   
}
void bd(char *x)
{
    int n=strlen(x);
  for(i=0;i<n;i++)
  {
    if(x[i]!=x[n-i-1])
    {
        flag=0;
        break;
    }
  }
  if(flag==1)
  {
    printf("PALINDROME");

  }
  else printf("NOT");
}
yyerror()
{
    if(!valid)
    {
    printf("INVALID");
    }
    exit(0);
}