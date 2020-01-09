%{
	#include<stdio.h>
	#include<stdlib.h>
%}


%%

[\t] {printf("");} 
\/\/(.*) ;
\/\*(.*\n)*.*\*\/  ;
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
