#include "lfile.h"
#include "proc.h"

void __assert_fail(char *expr, char *file, char *line)
{
	low_print("assertion failed in ");
	low_print(file);
	low_print(" expression: ");
	low_print(expr);
	low_print(" line: ");
	low_print(line);
	low_print("\n");
	exit(1);
}
