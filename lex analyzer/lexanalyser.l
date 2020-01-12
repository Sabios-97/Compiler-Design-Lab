/*Definition Section*/

%{
#include<stdio.h>
%}

%%
"auto"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"enum"|"register"|"typedef"|"char"|"extern"|"return"|"union"|"continue"|"for"|"signed"|"void"|"do"|"if"|"static"|"while"|"default"|"goto"|"sizeof"|"volatile"|"const"|"float"|"short"  {printf("\nKEYWORD: %s ",yytext);} 												
\+\+|--|==|>=|<=|!=|<<|>>|!=|\+=|-=|\*=|\/=|%=|\+|-|\*|%|=|&&|\|\||!   {printf("\nOPERATOR: %s ",yytext);}						
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("\nIDENTIFIER: %s ",yytext);}
[+-]?[0-9]+ {printf("\nINTEGER: %s ",yytext);}
[+-]?([0-9]*[.])?[0-9]+ {printf("\nFLOAT: %s ",yytext);}
\"(\\.|[^"\\])*\"  {printf("\nSTRING: %s ",yytext);}
[(){}|, ;]  {printf("\nSEPARATOR: %s ",yytext);}    
.|\n ; 															
%%

int yywrap()								
{
return 1;
}


/*Auxiliary function*/
/*Driver function*/

int main(void)
{
/*call the yylex function.*/
yylex();
return 0;
}
