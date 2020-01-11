%{ 
#include<stdio.h>
#include<string.h>
%} 
  
/*Rule Section*/
%%
["]([^"\\\n]|\\.|\\\n)*["] { 
                                printf("Valid string\n");
                           }

end {return 0;}
%% 

int main()
{
    yylex();
    return 0;
}

int yywrap(){} 