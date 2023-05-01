%{
#include<stdio.h>
int l=0;
int c=0;
int s=0;
int t=0;
%}
%%
" " {s++;}
[\t] {t++;}
[\n] {l++;}
[^\t\n" "] {c++;}
%%
int main(){
yyin=fopen("q1.txt","r");
yylex();
printf(" lines=%d\n characters=%d\n spaces=%d\n tab=%d\n",l,c,s,t);
}
int yywrap(){
return 1;
}