%{
    #include<string.h>
    char replace[]="devika";
    char replace_with[]="Devika";
    int comment=0;
%}
%%
"\*"    {comment=1;}
"*/"    {comment=0;}
.       {if(!comment){fprintf(yyout,"%s",yytext);}}
%%
int main()
{
    extern FILE *yyin,*yyout;
    yyin=fopen("output.txt","r");
    yyout=fopen("input.txt","w");   
    yylex();

    
}
int yywrap()
{
    return 1;
}