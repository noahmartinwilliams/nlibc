#include "math.h"
#include "file.h"
#include "assert.h"

int main()
{
	assert(5.0==fabs(-5.0));
	assert(0.0==fabs(-0.0));
	return 0;
}
