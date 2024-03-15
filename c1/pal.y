%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int isPalindrome(char *inp);
%}
%token A nl;
%%

input:A nl { if (isPalindrome(yylval)) printf("Palindrome\n"); else printf("Not Palindrome\n"); }
;     


%%
int main() {

    yyparse();
    return 0;
}
int isPalindrome(char *inp){ 
    int n=strlen(inp);
                int valid=1;
               for(int i=0;i<n/2;i++)
               {
                if(inp[i]!=inp[n-i-1])
                {
                    valid=0;
                    break;
                }
               }
               if(valid==1)
               {
                return 1;

               }
               else return 0;}
int yyerror()
{
   
    return 1;
}
