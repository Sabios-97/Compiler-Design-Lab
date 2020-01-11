%{
	#include<stdio.h>
	#include<stdlib.h>
	/* "printf(".*",".*");\n" {printf("print statement recd \n %s \n",yytext);} code for printing statements*/
%}



%%

\/\/(.*) ;
\/\*(.*\n)*.*\*\/  ;
^\n ;

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

