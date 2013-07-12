#include "file.h"
#include "string.h"
#include "assert.h"

int main(int argc, char *argv[])
{
	gid_t gid=getgid();
	if (argc < 2) {
		low_print("usage: ");
		low_print(argv[0]);
		low_print(" gid\n");
		return 1;
	} else {
		assert(gid==(gid_t) atoi(argv[1]));
	}
	return 0;
}
