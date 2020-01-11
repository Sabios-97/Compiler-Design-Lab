## Lexical analyzer problems :
1. Three programs have to be run, one to add numbers, one to remove spaces and another to validate a date (dd/mm/yyyy).
2. It cannot remove tabs in between key words
	solution to which is you need to identify each token and identifier separately
	and then remove all possible tabs and before printing each token or identifier
	print a space before ever token and identifier
		resultant problem : what about the spaces in print statement?
