%{
#include<stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Identifier");}
.* {printf("Not a Valid Identifier");}
%%
int main(){
yylex();
}
int yywrap(){
return 1;
}
