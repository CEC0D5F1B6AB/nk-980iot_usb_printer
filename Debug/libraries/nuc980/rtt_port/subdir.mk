################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/nuc980/rtt_port/drv_adc.c \
../libraries/nuc980/rtt_port/drv_adc_touch.c \
../libraries/nuc980/rtt_port/drv_can.c \
../libraries/nuc980/rtt_port/drv_common.c \
../libraries/nuc980/rtt_port/drv_crypto.c \
../libraries/nuc980/rtt_port/drv_ebi.c \
../libraries/nuc980/rtt_port/drv_emac.c \
../libraries/nuc980/rtt_port/drv_etimer.c \
../libraries/nuc980/rtt_port/drv_etimer_capture.c \
../libraries/nuc980/rtt_port/drv_gpio.c \
../libraries/nuc980/rtt_port/drv_i2c.c \
../libraries/nuc980/rtt_port/drv_i2s.c \
../libraries/nuc980/rtt_port/drv_pdma.c \
../libraries/nuc980/rtt_port/drv_pwm.c \
../libraries/nuc980/rtt_port/drv_qspi.c \
../libraries/nuc980/rtt_port/drv_rtc.c \
../libraries/nuc980/rtt_port/drv_scuart.c \
../libraries/nuc980/rtt_port/drv_sdh.c \
../libraries/nuc980/rtt_port/drv_softi2c.c \
../libraries/nuc980/rtt_port/drv_spi.c \
../libraries/nuc980/rtt_port/drv_sys.c \
../libraries/nuc980/rtt_port/drv_systick.c \
../libraries/nuc980/rtt_port/drv_uart.c \
../libraries/nuc980/rtt_port/drv_usbd.c \
../libraries/nuc980/rtt_port/drv_usbhost.c \
../libraries/nuc980/rtt_port/drv_wdt.c 

OBJS += \
./libraries/nuc980/rtt_port/drv_adc.o \
./libraries/nuc980/rtt_port/drv_adc_touch.o \
./libraries/nuc980/rtt_port/drv_can.o \
./libraries/nuc980/rtt_port/drv_common.o \
./libraries/nuc980/rtt_port/drv_crypto.o \
./libraries/nuc980/rtt_port/drv_ebi.o \
./libraries/nuc980/rtt_port/drv_emac.o \
./libraries/nuc980/rtt_port/drv_etimer.o \
./libraries/nuc980/rtt_port/drv_etimer_capture.o \
./libraries/nuc980/rtt_port/drv_gpio.o \
./libraries/nuc980/rtt_port/drv_i2c.o \
./libraries/nuc980/rtt_port/drv_i2s.o \
./libraries/nuc980/rtt_port/drv_pdma.o \
./libraries/nuc980/rtt_port/drv_pwm.o \
./libraries/nuc980/rtt_port/drv_qspi.o \
./libraries/nuc980/rtt_port/drv_rtc.o \
./libraries/nuc980/rtt_port/drv_scuart.o \
./libraries/nuc980/rtt_port/drv_sdh.o \
./libraries/nuc980/rtt_port/drv_softi2c.o \
./libraries/nuc980/rtt_port/drv_spi.o \
./libraries/nuc980/rtt_port/drv_sys.o \
./libraries/nuc980/rtt_port/drv_systick.o \
./libraries/nuc980/rtt_port/drv_uart.o \
./libraries/nuc980/rtt_port/drv_usbd.o \
./libraries/nuc980/rtt_port/drv_usbhost.o \
./libraries/nuc980/rtt_port/drv_wdt.o 

C_DEPS += \
./libraries/nuc980/rtt_port/drv_adc.d \
./libraries/nuc980/rtt_port/drv_adc_touch.d \
./libraries/nuc980/rtt_port/drv_can.d \
./libraries/nuc980/rtt_port/drv_common.d \
./libraries/nuc980/rtt_port/drv_crypto.d \
./libraries/nuc980/rtt_port/drv_ebi.d \
./libraries/nuc980/rtt_port/drv_emac.d \
./libraries/nuc980/rtt_port/drv_etimer.d \
./libraries/nuc980/rtt_port/drv_etimer_capture.d \
./libraries/nuc980/rtt_port/drv_gpio.d \
./libraries/nuc980/rtt_port/drv_i2c.d \
./libraries/nuc980/rtt_port/drv_i2s.d \
./libraries/nuc980/rtt_port/drv_pdma.d \
./libraries/nuc980/rtt_port/drv_pwm.d \
./libraries/nuc980/rtt_port/drv_qspi.d \
./libraries/nuc980/rtt_port/drv_rtc.d \
./libraries/nuc980/rtt_port/drv_scuart.d \
./libraries/nuc980/rtt_port/drv_sdh.d \
./libraries/nuc980/rtt_port/drv_softi2c.d \
./libraries/nuc980/rtt_port/drv_spi.d \
./libraries/nuc980/rtt_port/drv_sys.d \
./libraries/nuc980/rtt_port/drv_systick.d \
./libraries/nuc980/rtt_port/drv_uart.d \
./libraries/nuc980/rtt_port/drv_usbd.d \
./libraries/nuc980/rtt_port/drv_usbhost.d \
./libraries/nuc980/rtt_port/drv_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/nuc980/rtt_port/%.o: ../libraries/nuc980/rtt_port/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

