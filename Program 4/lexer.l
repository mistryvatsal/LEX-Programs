%option noyywrap
%{
#include<stdio.h>
%}

%%
"<"[^>]*> {printf("%s\n", yytext);}
. ;
%%

int main(void)
{
yyin = fopen("tags.txt","r");
yylex();
}