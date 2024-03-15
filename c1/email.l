%{
#include <stdio.h>
int flag=0;
%}

%%
[a-zA-Z0-9_.]+@[a-zA-Z]+(\.[a-zA-Z]+)*$ { printf("accepted\n"); flag=1; }

%%

int main() {
    char inp[100];
    printf("Enter email address: ");
    fgets(inp, sizeof(inp), stdin);
    yy_scan_string(inp);
    yylex();
    if(flag==0)
    {
        printf("invalid");
        
    }
    return 0;
}
