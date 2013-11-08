#include "file.h"
#include "stddef.h"
#include "assert.h"

int main(int argc, char *argv[], char *envp[])
{
	if (argc < 2) {
		low_error("usage: env [vars=values] test-envp [vars=values]\n");
		return 1;
	} else {
		int x;
		for (x=0; x!=argc-1; x++) {
			if ((argv[x+1]==NULL  && envp[x]!=NULL)) {
				low_error("more environment variables than arguments\n");
				return 1;
			} else if (envp[x]==NULL && argv[x+1]!=NULL) {
				low_error("more arguments than environment variables\n");
				return 1;
			} else {
				assert(strcmp(argv[x+1], envp[x])==0);
			}
		}
		return 0;
	}
}
