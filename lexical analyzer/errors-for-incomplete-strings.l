%{ 
#include<stdio.h>
#include<string.h>
%} 
  
/*Rule Section*/
%%
["]([^"\\\n]|\\.|\\\n)*["] {}
end {return 0;}
%% 

int main()
{
    yylex();
    return 0;
}

int yywrap(){} 