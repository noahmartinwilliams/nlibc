#ifndef __IO_H__
#define __IO_H__
#include "types.h"

extern int write(int fd, char *buf, int count);
extern int close(int fd);
extern int creat(const char* name, int mode);
extern mode_t umask(mode_t newmask);
extern int chmod(char *name, mode_t mode);
extern int read(int fd, char *buf, size_t count);
extern int open(char *name, int flags, mode_t mode);
#endif

