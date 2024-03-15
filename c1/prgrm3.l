%{
	int word_count=0,line_count=0,char_count=0;
%}

%%
[\n] { line_count++;}
[\t ] {char_count+=yyleng;}
[^\t\n ]+ { word_count++;  char_count+=yyleng; }
%%

int yywrap( ){}

int main()
{
	yyin= fopen("sample.txt","r");
	yylex();
	printf("The number of lines : %d\n",line_count);
	printf("The number of words : %d\n",word_count);
	printf("The number of characters : %d\n",char_count);
	return 0;
}
