%{
#include<stdio.h>
%}
%%
[\t" "]+ {fprintf(yyout," ");}
%%
int main(){
yyin=fopen("input6.txt","r");
yyout=fopen("output6.txt","w");
yylex();
return 0;
}
int yywrap(){
return 1;
}
