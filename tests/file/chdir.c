#include "file.h"

int main()
{
	char buf[50];
	read(0, &buf, 1);
	chdir("..");
	return 0;
}
