#include "stddef.h"
#include "file.h"
int main(int argc, char *argv[])
{
	int x;
	for (x=0; x<=argc-1; x++) {
		if (argv[x]==NULL) {
			low_error("argv size does not match argv size\n");
			return 1;
		}
	}
}
