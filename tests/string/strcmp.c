#include "string.h"

int main()
{
	char a[]={"hello"};
	char b[]={"hello"};
	char c[]={"not hello"};

	if (strcmp(a, b)) {
		return 1;
	} else {
		if (strcmp(a, c)< 0) {
			return 0;
		} else {
			return 1;
		}
	}
}
