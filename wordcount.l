/* A lex program to count the number of words in an input file */
/* definition section */
%{
#include <stdio.h>
#include <string.h>
int count = 0;
int size = 0;
%}

/* rule section */
%%
([a-zA-Z0-9])+ {count++; size += yyleng;}
.
%%

/* user subroutines */
int yywrap(void) {}

int main(void)
{
yyin = fopen("input.txt", "r");
yylex();

printf("Total number of words is: %d\n", count);
printf("The size of the text is: %d\n", size);
return (0);
}
