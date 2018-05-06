%option noyywrap
%{
#include<stdio.h>
int lines_count = 1;
%}

line .*\n

%%
{line} {printf("%10d. %s", lines_count++, yytext);}
%%

int main(void)
{
yyin = fopen("text.txt", "r");
yylex();
}