/* a lex program to recognize any verb from a given set */
/* Definition section */
%{
#include <stdio.h>
%}

/* Rules section */

%%
([\t ])+ /* ignore whitespace and tabs */
is|am|are|were|was|be|being|been|do|does|did|will|should|would|can|could|has|have|had|go {printf("%s: is a verb!\n", yytext);}
([a-zA-Z0-9])+ {printf("%s: is not a verb!\n", yytext);} /* any other token that's not a verb */
\n {ECHO;} /* Display text on new line */
. /* ignores any other characters */
%%

/* user subroutines */
int yywrap(void) {}

int main(void)
{
printf("Enter sample input text:\n");
yylex();
return (0);
}
