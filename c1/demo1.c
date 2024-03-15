#include <stdio.h>  
#include <string.h>  
#define success 1
#define failed 0
int E(),Eprime(),T(),Tprime(),F();
const char *cursor;
char string[100];
int main()
{
    printf("enter string:");
    scanf("%s",string);
    cursor=string;
    if(E() && *cursor=='\0')
    {
        printf("ACCEPTED");
    }
    else
    {
        printf("REJECTED");
    }
}
int E()
{
    printf("%s\t E->TE'\n",cursor);
    if(T())
    {
        if(Eprime())
            return success;
        else
            return failed;
    }
    else return failed;
}
int T()
{
    printf("%s\t T->FT'\n");
    if(F())
    {
        if(Tprime())
        return success;
        else return failed;

    }
    else return failed;
}
int Eprime()
{
    if(*cursor=='+')
    {
        printf("%s\t E'->+TE'\n",cursor);
        cursor++;
        if(T())
    {
        if(Eprime())
            return success;
        else
            return failed;
    }
    else return failed;
    }
    else 
    {
        printf("%s \t E->$\n",cursor);
        return success;
    }
}
int Tprime()
{
    if(*cursor=='*')
    {
        printf("%s\t T'->*FT'\n");
        cursor++;
        if(F())
    {
        if(Tprime())
        return success;
        else return failed;

    }
    else return failed;



    }
    else {
        printf("%s\t T'->$\n");
        return success;
    }
}
int F()
{
    if(*cursor=='(')
    {
        printf("%s\t F->(E)\n");
        cursor++;
        if(E())
        {
            if((*cursor==')'))
            {
                cursor++;
                return success;
            }
            else return failed;

        }
        else return failed;

    }
    else if(*cursor=='i')
    {
        cursor++;
        printf("%s\t F->i\n",cursor);
        return success;
    }
    else return failed;
}