make mrproper
rm -rf out
export ARCH=arm64
export SUBARCH=arm64
CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=/home/mo9/tc/gcc644.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=/home/mo9/tc/gcc4.9/bin/arm-linux-androideabi-
make O=out sirius_defconfig
make -j$(nproc --all) O=out \
ARCH=arm64 \
SUBARCH=arm64 \
CC=/home/mo9/tc/android_prebuilts_clang_host_linux-x86_clang-6364210/bin/clang \
CLANG_TRIPLE=aarch64-linux-gnu-
