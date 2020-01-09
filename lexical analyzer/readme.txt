Lexical analyzer problems :
1. 2 programs have to be run , 1 to add  numbers and another to remove spaces
2. it cannot remove tabs in between key words
	solution to which is you need to identify each token and identifier separately
	and then remove all possible tabs and before printing each token or identifier
	print a space before ever token and identifier
		resultant problem : what abput the spaces in print statement?
