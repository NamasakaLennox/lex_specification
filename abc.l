/* A program that accepts words of the English language */
/* replaces the string "abc" with "ABC" */
/* Definition section */
%{
#include <stdio.h>
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
yyout = fopen("ABC_OUTPUT.txt", "w");

yylex();

fclose(yyin);
fclose(yyout);
return (0);
}
