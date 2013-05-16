#include "lfile.h"
#include "proc.h"
/*assert: assert.c:5: main: Assertion `0==1' failed.
Aborted
134: noah@hal-9000 ~/tmp/info$*/
void __assert_fail(char *expr, char *file, char *line)
{
	low_print("assert: ");
	low_print(file);
	low_print(":");
	low_print(line);
	low_print(" Assertion `");
	low_print(expr);
	low_print("' failed\n");
	low_print("\n");
	exit(135);
}
