#include "io.h"

int low_print(char *msg)
{
	int x;
	for (x=0; msg[x]!='\0'; x++) {
	}

	return write(1, msg, x);
}
