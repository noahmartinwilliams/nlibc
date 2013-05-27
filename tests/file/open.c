#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd=open("./tmp/xyzzy",  O_RDONLY, 00);
	int fd2=open("./tmp/xyzzy2", O_RDONLY, 00);
	assert(fd2==-ENOENT);
	while (1) {}
	return 0;
}
