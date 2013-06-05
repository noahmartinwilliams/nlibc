#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd=open("./tmp/xyzzy",  O_RDONLY, 00);
	int fd2=open("./tmp/xyzzy2", O_RDONLY, 00);
	int fd3=open("./tmp/xyzzy3", O_RDONLY, 00);
	int fd4=open("./tmp/xyzzy4", O_WRONLY, 00);
	assert(fd2==-ENOENT);
	assert(fd3==-EACCES);
	assert(fd4==-EISDIR);
	while (1) {}
	return 0;
}
