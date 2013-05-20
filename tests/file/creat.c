#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	int fd1=creat("./tmp/a", 0700);
	int fd2=creat("./tmp/b", 0600);
	int fd3=creat("./tmp/c", 0500);
	int fd4=creat("./tmp/d", 0400);
	int fd5=creat("./tmp/e", 0300);
	int fd6=creat("./tmp/f", 0200);
	int fd7=creat("./tmp/g", 0100);
	int fd8=creat("./tmp/h", 0050);
	close(fd1);
	close(fd2);
	close(fd3);
	close(fd4);
	close(fd5);
	close(fd6);
	close(fd7);
	close(fd8);
	return 0;
}
