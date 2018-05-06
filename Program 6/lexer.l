%option noyywrap
%{
#include<stdio.h>
int comments_count = 0;
%}

%%
"/*"[^\n]*"*/" {comments_count++, fprintf(yyout, "");}
%%

int main(void)
{
yyin = fopen("text.txt", "r");
yyout = fopen("output.txt", "w");
yylex();
printf("The number of comments present in the program are : %d.", comments_count);
}