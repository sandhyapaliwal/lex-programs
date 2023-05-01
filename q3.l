%{ 
#include<stdio.h> 
%} 
%% 
[a-zA-Z_][a-zA-Z0-9_]* {printf("valid");} 
.* {printf("invalid");}
%% 
int main(){ 
yylex(); 
} 
int yywrap(){ 
return 1;}