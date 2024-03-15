%{
    #include<string.h>
    #include<stdio.h>
    int cnt=0;
    
%}
%%
"abc"  {cnt++;}
.  {;}
%%
int main()
{
    yyin=fopen("input.txt","r");
   
    yylex();
    fclose(yyin);

    printf("\ncount:%d",cnt);
    
}
int yyerror(){
    return 1;
}
