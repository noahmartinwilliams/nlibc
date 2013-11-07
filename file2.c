#include "io.h"

int low_print(char *msg)
{
	int x;
	for (x=0; msg[x]!='\0'; x++) {
	}

	return write(1, msg, x);
}

int low_error(char *msg)
{
	int x;
	for (x=0; msg[x]!='\0'; x++) {
	}
	return write(2, msg, x);
}
