%{
    #include<stdio.h>
    #include<string.h>
    
%}
%%
[a-zA-Z]+ {int i;
                char inp[19];
                strcpy(inp,yytext);
                int n=strlen(inp);
                int valid=1;
               for(i=0;i<n/2;i++)
               {
                if(inp[i]!=inp[n-i-1])
                {
                    valid=0;
                    break;
                }
               }
               if(valid==1)
               {
                printf("VALID");

               }
               else printf("INVALID"); }
%%
int main()
{
    
    printf("enter string:");
    
    yylex();
    return 0;
}