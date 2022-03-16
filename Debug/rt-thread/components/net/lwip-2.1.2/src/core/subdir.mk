################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/net/lwip-2.1.2/src/core/altcp.c \
../rt-thread/components/net/lwip-2.1.2/src/core/altcp_alloc.c \
../rt-thread/components/net/lwip-2.1.2/src/core/altcp_tcp.c \
../rt-thread/components/net/lwip-2.1.2/src/core/def.c \
../rt-thread/components/net/lwip-2.1.2/src/core/dns.c \
../rt-thread/components/net/lwip-2.1.2/src/core/inet_chksum.c \
../rt-thread/components/net/lwip-2.1.2/src/core/init.c \
../rt-thread/components/net/lwip-2.1.2/src/core/ip.c \
../rt-thread/components/net/lwip-2.1.2/src/core/memp.c \
../rt-thread/components/net/lwip-2.1.2/src/core/netif.c \
../rt-thread/components/net/lwip-2.1.2/src/core/pbuf.c \
../rt-thread/components/net/lwip-2.1.2/src/core/raw.c \
../rt-thread/components/net/lwip-2.1.2/src/core/stats.c \
../rt-thread/components/net/lwip-2.1.2/src/core/sys.c \
../rt-thread/components/net/lwip-2.1.2/src/core/tcp.c \
../rt-thread/components/net/lwip-2.1.2/src/core/tcp_in.c \
../rt-thread/components/net/lwip-2.1.2/src/core/tcp_out.c \
../rt-thread/components/net/lwip-2.1.2/src/core/timeouts.c \
../rt-thread/components/net/lwip-2.1.2/src/core/udp.c 

OBJS += \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp.o \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp_alloc.o \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp_tcp.o \
./rt-thread/components/net/lwip-2.1.2/src/core/def.o \
./rt-thread/components/net/lwip-2.1.2/src/core/dns.o \
./rt-thread/components/net/lwip-2.1.2/src/core/inet_chksum.o \
./rt-thread/components/net/lwip-2.1.2/src/core/init.o \
./rt-thread/components/net/lwip-2.1.2/src/core/ip.o \
./rt-thread/components/net/lwip-2.1.2/src/core/memp.o \
./rt-thread/components/net/lwip-2.1.2/src/core/netif.o \
./rt-thread/components/net/lwip-2.1.2/src/core/pbuf.o \
./rt-thread/components/net/lwip-2.1.2/src/core/raw.o \
./rt-thread/components/net/lwip-2.1.2/src/core/stats.o \
./rt-thread/components/net/lwip-2.1.2/src/core/sys.o \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp.o \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp_in.o \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp_out.o \
./rt-thread/components/net/lwip-2.1.2/src/core/timeouts.o \
./rt-thread/components/net/lwip-2.1.2/src/core/udp.o 

C_DEPS += \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp.d \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp_alloc.d \
./rt-thread/components/net/lwip-2.1.2/src/core/altcp_tcp.d \
./rt-thread/components/net/lwip-2.1.2/src/core/def.d \
./rt-thread/components/net/lwip-2.1.2/src/core/dns.d \
./rt-thread/components/net/lwip-2.1.2/src/core/inet_chksum.d \
./rt-thread/components/net/lwip-2.1.2/src/core/init.d \
./rt-thread/components/net/lwip-2.1.2/src/core/ip.d \
./rt-thread/components/net/lwip-2.1.2/src/core/memp.d \
./rt-thread/components/net/lwip-2.1.2/src/core/netif.d \
./rt-thread/components/net/lwip-2.1.2/src/core/pbuf.d \
./rt-thread/components/net/lwip-2.1.2/src/core/raw.d \
./rt-thread/components/net/lwip-2.1.2/src/core/stats.d \
./rt-thread/components/net/lwip-2.1.2/src/core/sys.d \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp.d \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp_in.d \
./rt-thread/components/net/lwip-2.1.2/src/core/tcp_out.d \
./rt-thread/components/net/lwip-2.1.2/src/core/timeouts.d \
./rt-thread/components/net/lwip-2.1.2/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/net/lwip-2.1.2/src/core/%.o: ../rt-thread/components/net/lwip-2.1.2/src/core/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

