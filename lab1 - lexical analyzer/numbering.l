%{
	#include<stdio.h>
	#include<stdlib.h>
	int line_no = 1;
%}

line .*\n

%%

{line} {printf("%d %s",line_no++,yytext);}
%%
int yywrap(){
}

int main(int argc, char* argv[]){
	if(argc != 2){
		printf("invalid arguments\n");
		exit(0);
	}
	yyin = fopen(argv[1],"r");
	yylex();
	return 1;

}
