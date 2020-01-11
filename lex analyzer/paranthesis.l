%{ 
#include<stdio.h>
#include<string.h>
%} 
  
/*Rule Section*/
%%
[(] {
      printf("Right paranthesis\n");
    }
[)] {
      printf("Left paranthesis\n");
    }
[{] {
      printf("Left flower bracket\n");
    }
[}] {
      printf("Right flower bracket\n");    
    }
[[] {
      printf("Left box bracket\n");
    }
[]] {
      printf("Right box bracket\n");    
    }
end {return 0;}
%% 

int main()
{
    yylex();
    return 0;
}

int yywrap(){} 