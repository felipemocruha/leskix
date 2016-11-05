
/* Exact-width integer types */

typedef int int8_t;
typedef long int16_t;
typedef long int32_t;
typedef unsigned int uint8_t;
typedef unsigned long uint16_t;
typedef unsigned long uint32_t;

/* Minimum-width integer types */

typedef int int_least8_t;
typedef long int_least16_t;
typedef long int_least32_t;
typedef unsigned int uint_least8_t;
typedef unsigned long uint_least16_t;
typedef unsigned long uint_least32_t;

/* Fastest minimum-width integer types */

typedef int int_fast8_t;
typedef long int_fast16_t;
typedef long int_fast32_t;
typedef unsigned int uint_fast8_t;
typedef unsigned long uint_fast16_t;
typedef unsigned long uint_fast32_t; 

/* Integer types capable of holding object pointers */

typedef int intptr_t;
typedef unsigned int uintptr_t;

/* Greatest-width integer types */

typedef int intmax_t;
typedef unsigned int uintmax_t;

/*Limits of exact-width integer types */

#define INT8_MIN -255
#define INT8_MAX 255
#define UINT8_MAX 255

#define INT16_MIN -65535
#define INT16_MAX 65535
#define UINT16_MAX 65535

#define INT32_MIN -4294967295
#define INT32_MAX 4294967295
#define UINT32_MAX 4294967295

/* Limits of minimum-width integer types */

#define INT_LEAST8_MIN -127
#define INT_LEAST8_MAX 127
#define UINT_LEAST8_MAX 255

#define INT_LEAST16_MIN -32767
#define INT_LEAST16_MAX 32767
#define UINT_LEAST16_MAX 65535

#define INT_LEAST32_MIN -2147483647
#define INT_LEAST32_MAX 2147483647
#define UINT_LEAST32_MAX 4294967295

/* Limits of fastest minimum-width integer types */

#define INT_FAST8_MIN -127
#define INT_FAST8_MAX 127
#define UINT_FAST8_MAX 255

#define INT_FAST16_MIN -32767
#define INT_FAST16_MAX 32767
#define UINT_FAST16_MAX 65535

#define INT_FAST32_MIN -2147483647
#define INT_FAST32_MAX 2147483647
#define UINT_FAST32_MAX 4294967295

/* Limits of integer types capable of holding object pointers */

#define INTPTR_MIN -32767
#define INTPTR_MAX 32767
#define UINTPTR_MAX 65535

/* Limits of greatest-width integer types */

#define INTMAX_MIN -9223372036854775807
#define INTMAX_MAX 9223372036854775807
#define UINTMAX_MAX 18446744073709551615

/* Other limits */

#define PTRDIFF_MIN -65535 
#define PTRDIFF_MAX 65535
#define SIZE_MAX 65535
#define WCHAR_MIN -127
#define WCHAR_MAX 127
