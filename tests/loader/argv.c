#include "stddef.h"
#include "file.h"
int main(int argc, char *argv[])
{
	int x;
	for (x=0; x<=argc-1; x++) {
		low_print(argv[x]);
		if (argv[x]==NULL) {
			return 1;
		}
	}
	return 0;
}
