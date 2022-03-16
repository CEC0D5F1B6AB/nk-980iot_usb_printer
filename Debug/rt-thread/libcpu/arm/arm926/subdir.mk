################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/arm/arm926/cpuport.c \
../rt-thread/libcpu/arm/arm926/machine.c \
../rt-thread/libcpu/arm/arm926/mmu.c \
../rt-thread/libcpu/arm/arm926/stack.c \
../rt-thread/libcpu/arm/arm926/trap.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/arm/arm926/context_gcc.S \
../rt-thread/libcpu/arm/arm926/start_gcc.S 

OBJS += \
./rt-thread/libcpu/arm/arm926/context_gcc.o \
./rt-thread/libcpu/arm/arm926/cpuport.o \
./rt-thread/libcpu/arm/arm926/machine.o \
./rt-thread/libcpu/arm/arm926/mmu.o \
./rt-thread/libcpu/arm/arm926/stack.o \
./rt-thread/libcpu/arm/arm926/start_gcc.o \
./rt-thread/libcpu/arm/arm926/trap.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/arm/arm926/context_gcc.d \
./rt-thread/libcpu/arm/arm926/start_gcc.d 

C_DEPS += \
./rt-thread/libcpu/arm/arm926/cpuport.d \
./rt-thread/libcpu/arm/arm926/machine.d \
./rt-thread/libcpu/arm/arm926/mmu.d \
./rt-thread/libcpu/arm/arm926/stack.d \
./rt-thread/libcpu/arm/arm926/trap.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/arm/arm926/%.o: ../rt-thread/libcpu/arm/arm926/%.S
	arm-none-eabi-gcc -x assembler-with-cpp -Xassembler -mimplicit-it=thumb -c -mcpu=arm926ej-s -x assembler-with-cpp -Iplatform -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/arm/arm926/%.o: ../rt-thread/libcpu/arm/arm926/%.c
	arm-none-eabi-gcc -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\applications" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\board" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\AudioCodec" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\Demo" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\NuUtils\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nu_packages\SPINAND" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\Driver\Include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\UsbHostLib\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\libraries\nuc980\rtt_port" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\ntp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\netutils-v1.3.1\tftp" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\optparse-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\ramdisk-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest\src\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\uffs-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest\inc" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\packages\wavplayer-latest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\devfs" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\filesystems\elmfat" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\dfs\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\audio" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\hwcrypto" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\spi" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbdevice" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\class" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost\core" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\drivers\usb\usbhost" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\finsh" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\common" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\libc\compilers\gcc\newlib" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\arch\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include\netif" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\lwip-2.1.2\src" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\netdev\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\impl" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\dfs_net" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket\sys_socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include\socket" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\net\sal_socket\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\components\utilities\utest" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\include" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\arm926" -I"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rt-thread\libcpu\arm\common" -include"C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\rtconfig_preinc.h" -std=gnu11 -mcpu=arm926ej-s -O2 -gdwarf-2 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

