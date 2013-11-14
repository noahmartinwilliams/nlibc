#include "memory.h"

void* sbrk(intptr_t increment)
{
	intptr_t end=(intptr_t) sbrk2((intptr_t) 0);
	return (void*) sbrk2(increment+end);
}
