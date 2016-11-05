#include <stdarg.h>
#include <stddef.h>

#define EOF (-1)
#define SEEK_SET 0

typedef unsigned long size_t;
struct _IO_FILE;
typedef struct _IO_FILE FILE;

extern struct _IO_FILE* stderr;
#define stderr stderr

int putchar(int);
int puts(const char *);
int printf(const char *restrict, ...);
int fflush(FILE *);
int fprintf(FILE *restrict, const char *restrict, ...);
int fclose(FILE*);
FILE* fopen(const char*, const char*);
size_t fread(void*, size_t, size_t, FILE*);
int fseek(FILE*, long, int);
long ftell(FILE*);
size_t fwrite(const void*, size_t, size_t, FILE*);
void setbuf(FILE*, char*);
int vfprintf(FILE*, const char*, va_list);
