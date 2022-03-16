################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/nuc980/Driver/Source/nu_can.c \
../libraries/nuc980/Driver/Source/nu_cap.c \
../libraries/nuc980/Driver/Source/nu_crypto.c \
../libraries/nuc980/Driver/Source/nu_ebi.c \
../libraries/nuc980/Driver/Source/nu_emac.c \
../libraries/nuc980/Driver/Source/nu_etimer.c \
../libraries/nuc980/Driver/Source/nu_gpio.c \
../libraries/nuc980/Driver/Source/nu_i2c.c \
../libraries/nuc980/Driver/Source/nu_i2s.c \
../libraries/nuc980/Driver/Source/nu_pdma.c \
../libraries/nuc980/Driver/Source/nu_qspi.c \
../libraries/nuc980/Driver/Source/nu_rtc.c \
../libraries/nuc980/Driver/Source/nu_scuart.c \
../libraries/nuc980/Driver/Source/nu_sdh.c \
../libraries/nuc980/Driver/Source/nu_spi.c \
../libraries/nuc980/Driver/Source/nu_sys.c \
../libraries/nuc980/Driver/Source/nu_uart.c \
../libraries/nuc980/Driver/Source/nu_usbd.c \
../libraries/nuc980/Driver/Source/nu_wdt.c \
../libraries/nuc980/Driver/Source/nu_wwdt.c 

OBJS += \
./libraries/nuc980/Driver/Source/nu_can.o \
./libraries/nuc980/Driver/Source/nu_cap.o \
./libraries/nuc980/Driver/Source/nu_crypto.o \
./libraries/nuc980/Driver/Source/nu_ebi.o \
./libraries/nuc980/Driver/Source/nu_emac.o \
./libraries/nuc980/Driver/Source/nu_etimer.o \
./libraries/nuc980/Driver/Source/nu_gpio.o \
./libraries/nuc980/Driver/Source/nu_i2c.o \
./libraries/nuc980/Driver/Source/nu_i2s.o \
./libraries/nuc980/Driver/Source/nu_pdma.o \
./libraries/nuc980/Driver/Source/nu_qspi.o \
./libraries/nuc980/Driver/Source/nu_rtc.o \
./libraries/nuc980/Driver/Source/nu_scuart.o \
./libraries/nuc980/Driver/Source/nu_sdh.o \
./libraries/nuc980/Driver/Source/nu_spi.o \
./libraries/nuc980/Driver/Source/nu_sys.o \
./libraries/nuc980/Driver/Source/nu_uart.o \
./libraries/nuc980/Driver/Source/nu_usbd.o \
./libraries/nuc980/Driver/Source/nu_wdt.o \
./libraries/nuc980/Driver/Source/nu_wwdt.o 

C_DEPS += \
./libraries/nuc980/Driver/Source/nu_can.d \
./libraries/nuc980/Driver/Source/nu_cap.d \
./libraries/nuc980/Driver/Source/nu_crypto.d \
./libraries/nuc980/Driver/Source/nu_ebi.d \
./libraries/nuc980/Driver/Source/nu_emac.d \
./libraries/nuc980/Driver/Source/nu_etimer.d \
./libraries/nuc980/Driver/Source/nu_gpio.d \
./libraries/nuc980/Driver/Source/nu_i2c.d \
./libraries/nuc980/Driver/Source/nu_i2s.d \
./libraries/nuc980/Driver/Source/nu_pdma.d \
./libraries/nuc980/Driver/Source/nu_qspi.d \
./libraries/nuc980/Driver/Source/nu_rtc.d \
./libraries/nuc980/Driver/Source/nu_scuart.d \
./libraries/nuc980/Driver/Source/nu_sdh.d \
./libraries/nuc980/Driver/Source/nu_spi.d \
./libraries/nuc980/Driver/Source/nu_sys.d \
./libraries/nuc980/Driver/Source/nu_uart.d \
./libraries/nuc980/Driver/Source/nu_usbd.d \
./libraries/nuc980/Driver/Source/nu_wdt.d \
./libraries/nuc980/Driver/Source/nu_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/nuc980/Driver/Source/%.o: ../libraries/nuc980/Driver/Source/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

