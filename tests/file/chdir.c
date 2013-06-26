#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	char buf[50];
	read(0, &buf, 1);
	assert(chdir("..")==0);
	read(0, &buf, 1);
	assert(chdir("/")==0);
	while (1) {}
	return 0;
}
