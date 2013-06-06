#include "file.h"

int main(int argc, char *argv[]) 
{
	int x;
	for (x=0; x<argc; x++) {
		low_print(argv[x]);
		low_print(" ");
	}
	return 0;
}
