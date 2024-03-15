%{
#include <stdio.h>
int vowels = 0, cons = 0;
%}

%%

[aeiouAEIOU] { vowels++; }
[a-zA-Z] { cons++; }

%%

int main() {
    char input[1000];  
    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);

    yy_scan_string(input); 
    yylex();

    printf("No. of vowels: %d\n", vowels);
    printf("No. of consonants: %d\n", cons);
    return 0;
}
