#include "file.h"

int main()
{
	creat("./tmp/a", 0700);
	creat("./tmp/b", 0600);
	creat("./tmp/c", 0500);
	creat("./tmp/d", 0400);
	creat("./tmp/e", 0300);
	creat("./tmp/f", 0200);
	creat("./tmp/g", 0050);
	return 0;
}
