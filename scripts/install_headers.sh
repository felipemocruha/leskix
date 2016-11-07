PROJECT_ROOTDIR=$HOME/Projetos/SO/leskix

rm -rf $PROJECT_ROOTDIR/sysroot

echo "Creating system root"
mkdir -p $PROJECT_ROOTDIR/sysroot
mkdir -p $PROJECT_ROOTDIR/sysroot/usr/include
mkdir -p $PROJECT_ROOTDIR/sysroot/usr/kernel
mkdir -p $PROJECT_ROOTDIR/sysroot/usr/lib
echo "Installing headers"
cp -Rf $PROJECT_ROOTDIR/libc/include/* $PROJECT_ROOTDIR/sysroot/usr/include
cp -Rf $PROJECT_ROOTDIR/kernel/include/ $PROJECT_ROOTDIR/sysroot/usr/include/kernel/
