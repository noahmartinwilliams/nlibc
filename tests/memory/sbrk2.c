#include "lmemory.h"
#include "string.h"
#include "assert.h"
#include "file.h"

int main()
{
	int end=(int) sbrk2((intptr_t) 0);
	while (1) {}
	return 0;
}
