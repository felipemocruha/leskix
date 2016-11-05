/* TYPES */ 

typedef long ptrdiff_t;
typedef long wchar_t;
typedef unsigned long size_t;

/* MACROS */

#ifndef NULL
#define NULL ((void *)0)
#endif

#define offsetof(type, member) ((size_t) &((type *)0)->member)



