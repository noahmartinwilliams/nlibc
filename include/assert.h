#ifndef __ASSERT_H__
#define __ASSERT_H__
#include "stddef.h"
#define __STRING2(x) __STRING(x)
extern void __assert_fail(char *expr, char *file, char *line);
# define assert(expr)					\
  ((expr)						\
   ? (void) (0)						\
   : __assert_fail (__STRING(expr), __FILE__, __STRING2(__LINE__)))

#endif
