#ifndef __IO_H__
#define __IO_H__
#include "types.h"

extern int write(int fd, char *buf, int count);
extern int close(int fd);
extern int creat(const char* name, int mode);
extern mode_t umask(mode_t newmask);
#endif

