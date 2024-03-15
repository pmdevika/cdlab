%{

%}
%%
(https):\/\/[a-zA-Z0-9]+    {printf("VALID");}
%%
int main()
{
    printf("enter:");
    yylex();
}