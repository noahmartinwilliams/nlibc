#ifndef __MEMORY_H__
#define __MEMORY_H__
#include "types.h"
#include "stddef.h"

extern void* mmap2(void *addr, size_t len, int prot, int flags, int fd, off_t offset);

#endif

