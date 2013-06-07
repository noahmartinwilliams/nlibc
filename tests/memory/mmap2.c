#include "memory.h"
#include "assert.h"
#include "string.h"
#include "file.h"

int main()
{
	int fd=open("tmp/mmap2.txt", O_RDONLY, 00);
	char *msg=mmap2(NULL, 6, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
	msg[5]='\0';

	assert(!strcmp(msg, "hello"));
	return 0;
}

