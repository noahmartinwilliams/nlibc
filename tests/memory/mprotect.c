#include "lmemory.h"
#include "errno.h"
#include "lfile.h"
#include "assert.h"

int main()
{
	int* end1=(int*) sbrk(0);
	int* end2=(int*) sbrk(100);
	if (end2==(int*) -1) {
		low_error("Unable to allocate memory\n");
		return 1;
	} else {
		if (mprotect(end1, (size_t) 100, PROT_WRITE)==-1) {
			goto process_error;
		} else {
			*end1=100;
		}

		if (mprotect(end1, (size_t) 100, PROT_READ)==-1) {
			goto process_error;
		} else {
			assert(*end1==100);
		} //TODO: add a test for executable memory
	}

	goto skip_process;
	process_error:
	switch(errno) {
	case EACCES:
		low_error("Unable to get acces\n");
		return 2;
	case EINVAL:
		low_error("Invalid address\n");
		return 3;
	case ENOMEM:
		low_error("Internal kernel error\n");
		return 4;
	}
	skip_process:
	return 0;
}
