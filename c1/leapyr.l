%{
#include<stdio.h>
#include<string.h>
int year;

%}
%%
[a-zA-Z0-9]+  {
    year=atoi(yytext);
    if(year%400==0 )
        printf("LEAP YEAR");
    else if (year%100==0)
        printf("NOTBA LEAP YEAR");
    else if(year%4==0)
        printf("LEAP year");
    else
    printf("NOT A LEAP YEAR");

}
%%
int main()
{
    printf("enter a year:");
    yylex();
    return 0;
}