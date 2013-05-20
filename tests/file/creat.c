#include "file.h"

int main()
{
	creat("./tmp/a", 0700);
	creat("./tmp/b", 0050);
	return 0;
}
