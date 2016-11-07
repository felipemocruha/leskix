PROJECT_ROOTDIR=$HOME/Projetos/SO/leskix
CFLAGS="-O2 -ffreestanding -m32"
KERNEL_DIR=$PROJECT_ROOTDIR/kernel
BUILD_DIR=$PROJECT_ROOTDIR/build_tmp


#tty:
i686-leskix-gcc $CFLAGS -c $KERNEL_DIR/arch/tty.c -o $BUILD_DIR/tty.o

#kernel:
i686-leskix-gcc $CFLAGS -c $KERNEL_DIR/kernel.c -o $BUILD_DIR/kernel.o

#asemb:
i686-leskix-gcc $CFLAGS -T $KERNEL_DIR/arch/linker.ld $BUILD_DIR/tty.o $BUILD_DIR/kernel.o -o $PROJECT_ROOTDIR/kernel.bin 
