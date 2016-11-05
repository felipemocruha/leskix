typedef unsigned long size_t;

#ifndef NULL
#define NULL ((void *)0)
#endif

void *memcpy(void *restrict, const void *restrict, size_t);
char *strcpy(char *restrict, const char *restrict);
size_t strlen(const char *);
int strcmp(const char *, const char *);
void *memset(void *s, int c, size_t n);
