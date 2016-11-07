PROJECT_ROOTDIR=$HOME/Projetos/SO/leskix

echo "Cleaning..."
rm -rf $PROJECT_ROOTDIR/sysroot
rm -rf $PROJECT_ROOTDIR/build_tmp
rm -f $PROJECT_ROOTDIR/kernel.bin

mkdir -p  $PROJECT_ROOTDIR/build_tmp
sh $PROJECT_ROOTDIR/scripts/install_headers.sh

echo "Building libc..."
sh $PROJECT_ROOTDIR/libc/build_libc.sh

echo "Building the kernel..."
sh $PROJECT_ROOTDIR/kernel/build_kernel.sh

rm -rf $PROJECT_ROOTDIR/build_tmp
echo "leskix built."
