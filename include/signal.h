#ifndef __SIGNAL_H__
#define __SIGNAL_H__
#include "bits/sigset.h"
#include "bits/signum.h"

typedef __sigset_t sigset_t;
typedef void (*__sighandler_t) (int);
typedef __sighandler_t sighandler_t;

#endif

