#include "file.h"
#include "assert.h"
#include "errno.h"

int main()
{
	char buf[5];
	buf[5]='\0';
	read(0, &buf, 5);
	assert(!strcmp(&buf, "hello"));

	assert(read(42, &buf, 5)==-EBADF);
	return 0;
}
