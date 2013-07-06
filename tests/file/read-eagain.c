#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd=open("./tmp/read-eagain.txt", O_NONBLOCK, 6);
	char a[50];
	int ret=read(fd, (char*) &a, 5);
	assert(ret==-EAGAIN);
	close(fd);
	return 0;
}
