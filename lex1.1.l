%{ 
#include<stdio.h> 
int c=0; 
int l=0;
int s=0; 
int t=0;
%} 
%%  
" " {s++;} 
[/n] {l++;} 
[/t] {t++;} 
[^/t/n" "] {c++;}  
%%  
 
int main(){ 
 yyin=fopen("q2.txt","r"); 
yylex(); 
printf("charater=%d\n line=%d\n space=%d\n tab=%d\n",c,l,s,t);
} 
int yywrap(){ 
return 1;}