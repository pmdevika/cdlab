%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
    int ac=0,bc=0;

%}
%token A B ;
%%
expr: A s A {printf("valid"); exit(0);}
|B s B {printf("valid"); exit(0);}
s:s A 
| s B 
|A
|B
    ;
%%
void main()
{
    printf("enter expr:");
    yyparse();

}
int yyerror()
{
    printf("INVALID");
    exit(0);
}