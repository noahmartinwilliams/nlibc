#include "memory.h"
#include "file.h"

int main()
{
	int end=(int) sbrk((intptr_t) 0);
	char i[2];
	read(0, &i, 2);
	end=(int) sbrk((intptr_t) 100);
	read(0, &i, 2);
	return 0;
}
