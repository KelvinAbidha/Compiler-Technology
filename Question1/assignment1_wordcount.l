%{
#include <stdio.h>
int word_count = 0;
int total_size = 0;
%}

%%
[a-zA-Z]+   { word_count++; total_size += yyleng; }
.|\n        { /* Ignore all other characters */ }
%%

int main() {
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    printf("\nNumber of words: %d\n", word_count);
    printf("Total size of words (characters): %d\n", total_size);
    return 0;
}

int yywrap() {
    return 1;
}
