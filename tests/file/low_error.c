#include "file.h"

int main(int argc, char *argv[])
{
	if (argc<2) {
		auto char *mesg={"usage: test-low_error string\n"};
		auto int len=0;
		for (len=0; mesg[len]!='\0'; len++) {
		}
		len++;
		write(2, (char*) mesg, len);
		return 1;
	} else {
		low_error(argv[1]);
		return 0;
	}
}
