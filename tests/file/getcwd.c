#include "assert.h"
#include "file.h"
#include "string.h"

int main(int argc, char *argv[])
{
	if (argc <= 1) {
		low_print("Usage: ");
		low_print(argv[0]);
		low_print(" $(realpath .)\n");
		return 1;
	}

	char buf[100];
	buf[100]='\0';
	getcwd((char*) &buf, 100);

	assert(!strcmp(argv[1], (char*) &buf));
	return 0;
}
