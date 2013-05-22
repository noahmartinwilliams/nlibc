#include "string.h"
#include "assert.h"

int main()
{
	assert(atoi("1")==1);
	assert(atoi("0")==0);
	assert(atoi("10")==10);
	assert(atoi("-1")==-1);
	return 0;
}
