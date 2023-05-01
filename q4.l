%{ 
#include<stdio.h> 
%} 
%% 
if|else|while|break|char|double|bool|return|printf|scanf {printf("identifier");} 
[a-zA-Z_][a-zA-Z0-9_]* {printf("identifier");}
[+-/*/] {printf("operater");}
[{};,] {printf("seprater");} 
.* {printf("other");} 
%% 
int main(){ 
 yylex(); 
return 0;} 
int yywrap(){ 
return 1;}