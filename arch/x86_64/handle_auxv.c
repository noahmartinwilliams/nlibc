#include "auxv.h"
#include "stddef.h"
#include "types.h"

int handle_auxv(Elf32_auxv_t** entries) 
{
	int x;
	for (x=0; entries[x]!=NULL; x++) {
		if (entries[x]->a_type==32) {
			return entries[x]->a_un.a_val;
		}
	}
}
