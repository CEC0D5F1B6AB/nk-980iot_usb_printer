################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/device.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/mem.c \
../rt-thread/src/memheap.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/signal.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/device.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/mem.o \
./rt-thread/src/memheap.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/signal.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/device.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/mem.d \
./rt-thread/src/memheap.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/signal.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

