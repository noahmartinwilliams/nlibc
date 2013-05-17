#ifndef __BITS/SIGSET_H__
#define __BITS/SIGSET_H__

#define _SIGSET_NWORDS (1024 / (8 * sizeof(unsigned long int)))

typedef struct {
	unsigned long int __val[_SIGSET_NWORDS];
} __sigset_t;

#endif

