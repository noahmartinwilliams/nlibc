#include "file.h"
#include "errno.h"

int main()
{
	int fd1=open("./tmp/o_append", O_WRONLY|O_APPEND, 00);
	write(fd1, "\nextra_data\n", 12);
	return 0;
}
