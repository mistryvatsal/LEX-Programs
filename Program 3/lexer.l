%option noyywrap
%{
#include<stdio.h>
int num_count = 0;
%}

%%
[0-9] {printf("%s\n", yytext);}
. {;}
%%

int main(void)
{
yyin = fopen("text.txt","r");
yylex();
printf("\n\n");
}