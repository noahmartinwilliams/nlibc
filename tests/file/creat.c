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
	int fd8=creat("./tmp/h", 0000);
	int fd9=creat("./tmp/i", 0070);
	int fd10=creat("./tmp/j", 0060);
	int fd11=creat("./tmp/k", 0050);
	int fd12=creat("./tmp/l", 0040);
	int fd13=creat("./tmp/m", 0030);
	int fd14=creat("./tmp/n", 0020);
	int fd15=creat("./tmp/o", 0010);
	int fd16=creat("./tmp/p", 0007);
	int fd17=creat("./tmp/q", 0006);
	int fd18=creat("./tmp/r", 0005);
	int fd19=creat("./tmp/s", 0004);
	int fd20=creat("./tmp/t", 0003);
	int fd21=creat("./tmp/u", 0002);
	int fd22=creat("./tmp/v", 0001);
	int fd23=creat("./tmp/z/a", 0777);
	assert(fd23==-20);
	close(fd1);
	close(fd2);
	close(fd3);
	close(fd4);
	close(fd5);
	close(fd6);
	close(fd7);
	close(fd8);
	close(fd9);
	close(fd10);
	close(fd11);
	close(fd12);
	close(fd13);
	close(fd14);
	close(fd15);
	close(fd16);
	close(fd17);
	close(fd18);
	close(fd19);
	close(fd20);
	close(fd21);
	close(fd22);
	return 0;
}
