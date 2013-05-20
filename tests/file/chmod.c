#include "file.h"
#include "errno.h"
int main() 
{
	umask(0000);
	chmod("./tmp/txt", 0666);
}
