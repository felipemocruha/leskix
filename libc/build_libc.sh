PROJECT_ROOTDIR=$HOME/Projetos/SO/leskix
BUILD_DIR=$PROJECT_ROOTDIR/build_tmp
LIBC_DIR=$PROJECT_ROOTDIR/libc

STDIO=$LIBC_DIR/stdio/
STDLIB=$LIBC_DIR/stdlib/
STRING=$LIBC_DIR/string/

#arch:
cd $LIBC_DIR/arch/
i686-leskix-as --32 crti.s -o $BUILD_DIR/crti.o
i686-leskix-as --32 crtn.s -o $BUILD_DIR/crtn.o
i686-leskix-as --32 crt0.s -o $BUILD_DIR/crt0.o
sh $PROJECT_ROOTDIR/scripts/install_objs.sh
echo '    - arch assembled'

#main:
cd $LIBC_DIR
i686-leskix-gcc -c main.c -o $BUILD_DIR/main.o
echo '    - main compiled'

#stdio:
cd $STDIO
i686-leskix-gcc -c puts.c -o $BUILD_DIR/puts.o 
i686-leskix-gcc -c putchar.c -o $BUILD_DIR/putchar.o
i686-leskix-gcc -c printf.c -o $BUILD_DIR/printf.o
echo '    - stdio compiled'

#stdlib:
cd $STDLIB
i686-leskix-gcc -c abort.c -o $BUILD_DIR/abort.o -w
echo '    - stdlib compiled'

#string:
cd $STRING
i686-leskix-gcc -c memcpy.c -o $BUILD_DIR/memcpy.o
i686-leskix-gcc -c strlen.c -o $BUILD_DIR/strlen.o
i686-leskix-gcc -c strcpy.c -o $BUILD_DIR/strcpy.o
i686-leskix-gcc -c strcmp.c -o $BUILD_DIR/strcmp.o
echo '    - string compiled'

#libc.a:
cd $BUILD_DIR
i686-leskix-ar rcs libc.a abort.o memcpy.o printf.o putchar.o puts.o strcmp.o strcpy.o strlen.o crt0.o
echo '    - libc built'

echo "Installing objects"
sh $PROJECT_ROOTDIR/scripts/install_objs.sh
