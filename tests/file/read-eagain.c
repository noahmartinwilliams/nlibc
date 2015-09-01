#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd=open("./tmp/read-eagain.txt", O_NONBLOCK, 6);
	assert(fd>2);
	char a[50];
	int ret=read(fd, (char*) &a, 50);
	assert(ret==0);
	close(fd);
	return 0;
}
