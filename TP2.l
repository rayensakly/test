%{
#include<stdio.h>
%}
%option noyywrap
%%
[A-Z][A-Z a-z]* { printf("Mot qui commence par une majuscule : %s\n", yytext); }
[A-Z a-z]*er { printf("Mot qui se termine par er : %s\n", yytext); }
j[A-Z a-z]* { printf("Mot qui commence par j et se termine par une lettre minuscule : %s\n", yytext); }
.|\n { /* ignore other characters */ }
%%
int main() {
    yylex();
    return 0;
}