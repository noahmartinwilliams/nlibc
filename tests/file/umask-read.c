#include "file.h"
#include "assert.h"
#include "types.h"

int main()
{
	mode_t mode=umask(0000);
	assert(mode==0777);
	return 0;
}
