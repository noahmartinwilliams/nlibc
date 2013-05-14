#ifndef __ASSERT_H__
#define __ASSERT_H__
#include "stddef.h"
extern void __assert_fail(char *expr, char *file);
# define assert(expr)					\
  ((expr)						\
   ? (void) (0)						\
   : __assert_fail (__STRING(expr), __FILE__))

#endif
