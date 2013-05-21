#include "file.h"
#include "assert.h"

int main()
{
	char buf[5];
	buf[5]='\0';
	read(0, &buf, 5);
	assert(!strcmp(&buf, "hello"));
	return 0;
}
