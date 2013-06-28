#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	char buf[5];
	buf[5]='\0';
	read(0, (void*) &buf, 5);
	assert(!strcmp((char*) &buf, "hello"));

	assert(read(42, (char*) &buf, 5)==-EBADF);
	int fd=open("tmp/read-mode.txt", O_WRONLY|O_APPEND|O_CREAT, 0200);
	assert(fd!=-1);
	assert(read(fd, (char*) &buf, 5)==-EBADF);
	close(fd);
	return 0;
}
