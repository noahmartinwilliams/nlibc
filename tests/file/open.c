#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd=open("./tmp/xyzzy",  O_RDONLY, 00);
	while (1) {}
	return 0;
}
