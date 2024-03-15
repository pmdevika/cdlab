
#include<stdio.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
#include<stdlib.h>
char a[10][10],f[10],c;
int n,m;
void first(char c)
{
if(!isupper)
{
    f[m++]=c;
}
for(int i=0;i<n;i++)
{
    if(a[i][0]==c)
    {
        if(a[i][2]=='$')
        follow(c);
        else if (islower(a[i][2]))
        f[m++]=a[i][2];
        else
        first(a[i][2]);
    }
}
}
void follow(char c)
{
    if (a[0][0]==c)
    {
        f[m++]='$';
    }
    for(int i=0;i<n;i++)
    {
        for(int j=2;j<strlen(a[i]);j++)
        {
            if(a[i][j]==c)
            {
            if(a[i][j+1]!='\0')
            {
                first(a[i][j+1]);
            }
            else if(a[i][j+1]=='\0' && a[i][0]!=c)
            {
                follow(a[i][0]);
            }
            }
        }
    }
}
void main()
{
    printf("enter number of:");
    scanf("%d",&n);
    printf("enter");
    for(int i=0;i<n;i++)
    {
        scanf("%s",a[i]);
    }
    c=a[1][0];
    first(c);
    printf("first(%c){",c);
    for(int i=0;i<m;i++)
    {
        printf("%c",f[i]);
    }
    printf("}\n");
    strcpy(f," ");
    follow(c);
    printf("follow(%c){",c);
    for(int i=0;i<m;i++)
    {
        printf("%c",f[i]);
    }
    printf("}\n");


}