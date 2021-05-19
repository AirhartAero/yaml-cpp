set(CMAKE_SYSTEM_NAME Linux)

set(llvm "/usr/local/opt/llvm/bin")
set(sysroot "/opt/l4t-gcc/gcc-aarch64-linux-gnu")

set(target_ops "--target=aarch64-arm-linux-gnueabihf -march=armv8-a -mcpu=cortex-a57 --sysroot=${sysroot}/aarch64-linux-gnu/libc --gcc-toolchain=${sysroot}")

set(CMAKE_SYSROOT ${sysroot})
set(CMAKE_CXX_FLAGS "${target_ops} -Os -ffunction-sections -fdata-sections" CACHE STRING "" FORCE)
set(CMAKE_CXX_LINK_FLAGS "${target_ops} -fuse-ld=${llvm}/ld.lld -Wl,--gc-sections")
set(CMAKE_CXX_COMPILER ${llvm}/clang++)