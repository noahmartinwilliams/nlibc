#ifndef __AUXV_H__
#define __AUXV_H__
#include "types.h"

typedef struct {
	uint32_t a_type;
	union {
		uint32_t a_val;
	} a_un;
} Elf32_auxv_t;

#endif
