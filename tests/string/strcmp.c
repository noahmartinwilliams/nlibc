#include "string.h"

int main()
{
	char a[]={"hello"};
	char b[]={"hello"};
	char c[]={"not hello"};

	if (strcmp(a, b)==1) {
		return 1;
	} else {
		return 0;
	}
}
