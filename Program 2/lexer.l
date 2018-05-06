%option noyywrap
%{
#include<stdio.h>
int vowels_count = 0;
int consonants_count = 0;
%}

%%
[aeiouAEIOU] {vowels_count++;}
[a-zA-Z] {consonants_count++;}
%%

int main()
{
printf("Enter the string: ");
yylex();
printf("The number of vowels in the string are : %d", vowels_count);
printf("The number of consonants in the string are : %d", consonants_count);
return 0;
}