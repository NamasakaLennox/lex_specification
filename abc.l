/* A program that accepts words of the English language */
/* replaces the string "abc" with "ABC" */
/* Definition section */
%{
#include <stdio.h>
#include <string.h>
%}

/* rule section */
%%
"abc" fprintf(yyout, "ABC");
. fprintf(yyout, "%s", yytext);
%%

/* user subroutines */
int yywrap(void) {}

int main()
{
extern FILE *yyin, *yyout;
yyin = fopen("abc.txt", "r");
yyout = fopen("ABC.txt", "w");

yylex();
return (0);
}