%{ 
#include<stdio.h> 
#include<string.h> 
int i=0, valid=0, year=0;
%} 

%% 

([0-2][0-9]|[3][0-1])\/((0(1|3|5|7|8))|(10|12))\/([1-2][0-9][0-9][-0-9]) {valid=1;} 
([0-2][0-9]|30)\/((0(4|6|9))|11)\/([1-2][0-9][0-9][0-9]) {valid=1;} 
([0-1][0-9]|2[0-8])\/02\/([1-2][0-9][0-9][0-9]) {valid=1;} 
29\/02\/([1-2][0-9][0-9][0-9]) { while(yytext[i]!='/')
                                    i++; 
                                 i++; 
                                 while(yytext[i]!='/')
                                    i++;
                                 i++; 
                                 while(i<yyleng)
                                    year=(10*year)+(yytext[i++]-'0'); 
                                 if(year%4==0||(year%100==0&&year%400!=0))
                                    valid=1;
                                }
end {return 0;}
%% 

int main(){ 

yylex(); 

if (valid == 0) {
    printf("\nInvalid date\n");
}

else {
    printf("\nValid date\n");
}

return 0; 
} 
  
int yywrap(){} 