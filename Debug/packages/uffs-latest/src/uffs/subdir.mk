################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/uffs-latest/src/uffs/uffs_badblock.c \
../packages/uffs-latest/src/uffs/uffs_blockinfo.c \
../packages/uffs-latest/src/uffs/uffs_buf.c \
../packages/uffs-latest/src/uffs/uffs_crc.c \
../packages/uffs-latest/src/uffs/uffs_debug.c \
../packages/uffs-latest/src/uffs/uffs_device.c \
../packages/uffs-latest/src/uffs/uffs_ecc.c \
../packages/uffs-latest/src/uffs/uffs_fd.c \
../packages/uffs-latest/src/uffs/uffs_find.c \
../packages/uffs-latest/src/uffs/uffs_flash.c \
../packages/uffs-latest/src/uffs/uffs_fs.c \
../packages/uffs-latest/src/uffs/uffs_init.c \
../packages/uffs-latest/src/uffs/uffs_mem.c \
../packages/uffs-latest/src/uffs/uffs_mtb.c \
../packages/uffs-latest/src/uffs/uffs_pool.c \
../packages/uffs-latest/src/uffs/uffs_public.c \
../packages/uffs-latest/src/uffs/uffs_tree.c \
../packages/uffs-latest/src/uffs/uffs_utils.c \
../packages/uffs-latest/src/uffs/uffs_version.c 

OBJS += \
./packages/uffs-latest/src/uffs/uffs_badblock.o \
./packages/uffs-latest/src/uffs/uffs_blockinfo.o \
./packages/uffs-latest/src/uffs/uffs_buf.o \
./packages/uffs-latest/src/uffs/uffs_crc.o \
./packages/uffs-latest/src/uffs/uffs_debug.o \
./packages/uffs-latest/src/uffs/uffs_device.o \
./packages/uffs-latest/src/uffs/uffs_ecc.o \
./packages/uffs-latest/src/uffs/uffs_fd.o \
./packages/uffs-latest/src/uffs/uffs_find.o \
./packages/uffs-latest/src/uffs/uffs_flash.o \
./packages/uffs-latest/src/uffs/uffs_fs.o \
./packages/uffs-latest/src/uffs/uffs_init.o \
./packages/uffs-latest/src/uffs/uffs_mem.o \
./packages/uffs-latest/src/uffs/uffs_mtb.o \
./packages/uffs-latest/src/uffs/uffs_pool.o \
./packages/uffs-latest/src/uffs/uffs_public.o \
./packages/uffs-latest/src/uffs/uffs_tree.o \
./packages/uffs-latest/src/uffs/uffs_utils.o \
./packages/uffs-latest/src/uffs/uffs_version.o 

C_DEPS += \
./packages/uffs-latest/src/uffs/uffs_badblock.d \
./packages/uffs-latest/src/uffs/uffs_blockinfo.d \
./packages/uffs-latest/src/uffs/uffs_buf.d \
./packages/uffs-latest/src/uffs/uffs_crc.d \
./packages/uffs-latest/src/uffs/uffs_debug.d \
./packages/uffs-latest/src/uffs/uffs_device.d \
./packages/uffs-latest/src/uffs/uffs_ecc.d \
./packages/uffs-latest/src/uffs/uffs_fd.d \
./packages/uffs-latest/src/uffs/uffs_find.d \
./packages/uffs-latest/src/uffs/uffs_flash.d \
./packages/uffs-latest/src/uffs/uffs_fs.d \
./packages/uffs-latest/src/uffs/uffs_init.d \
./packages/uffs-latest/src/uffs/uffs_mem.d \
./packages/uffs-latest/src/uffs/uffs_mtb.d \
./packages/uffs-latest/src/uffs/uffs_pool.d \
./packages/uffs-latest/src/uffs/uffs_public.d \
./packages/uffs-latest/src/uffs/uffs_tree.d \
./packages/uffs-latest/src/uffs/uffs_utils.d \
./packages/uffs-latest/src/uffs/uffs_version.d 


# Each subdirectory must supply rules for building sources it contributes
packages/uffs-latest/src/uffs/%.o: ../packages/uffs-latest/src/uffs/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

