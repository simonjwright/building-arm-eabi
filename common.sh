# This contains variable declarations for the components to be used
# for this build. Some may be as distributed as part of GCC ARM
# Embedded in Launchpad (https://launchpad.net/gcc-arm-embedded)

# I didn't use their GMP (6.1.0), MPFR (3.1.4), MPC (1.0.3) as my GCC
# source tree already had these versions installed via
# contrib/download_prerequisites.

PATH=/Volumes/Miscellaneous/tmp/opt/gcc-10.1.0/bin:$PATH
TOP=/Volumes/Miscellaneous
PREFIX=$TOP/arm/gcc-10.1.0
BUILD=x86_64-apple-darwin15

SRC_PATH=$TOP/tmp
BINUTILS_PATH=$SRC_PATH/binutils-2.34
GCC_PATH=$SRC_PATH/gcc-10.1.0
NEWLIB_PATH=$SRC_PATH/newlib-3.3.0
GDB_PATH=$SRC_PATH/gdb-9.1

GCC_STAGE1_LDFLAGS="-static-libstdc++ -static-libgcc -Wl,-headerpad_max_install_names"

# This is present in GCC 7; it says
#                                            It should not be used in
# conjunction with another make file fragment and assumes --with-arch,
# --with-cpu, --with-fpu, --with-float, --with-mode have their default
# values during the configure step.
MULTILIB_LIST="--with-multilib-list=rmprofile"
