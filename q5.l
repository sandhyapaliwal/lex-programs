
%{
#include<stdio.h>

int tchar=0,tword=0,tspace=0;		
%}


%%


" " {tspace++;tword++;}				
[\t\n] {tword++;}						
[^\n\t] {tchar++;}

%%


int yywrap()
{
return 1;
}

int main()
{

yyin=fopen("ans.txt","r");

yylex();							
printf("Number of character:: %d\nNumber of words:: 
%d\nNumber of spaces:: %d\n" ,tchar,tword,tspace);

return 0;
}
