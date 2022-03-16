################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include rt-thread/src/subdir.mk
-include rt-thread/libcpu/arm/common/subdir.mk
-include rt-thread/libcpu/arm/arm926/subdir.mk
-include rt-thread/components/utilities/utest/subdir.mk
-include rt-thread/components/net/sal_socket/src/subdir.mk
-include rt-thread/components/net/sal_socket/socket/subdir.mk
-include rt-thread/components/net/sal_socket/impl/subdir.mk
-include rt-thread/components/net/sal_socket/dfs_net/subdir.mk
-include rt-thread/components/net/netdev/src/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/netif/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/core/ipv4/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/core/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/arch/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/apps/ping/subdir.mk
-include rt-thread/components/net/lwip-2.1.2/src/api/subdir.mk
-include rt-thread/components/libc/compilers/gcc/newlib/subdir.mk
-include rt-thread/components/libc/compilers/common/subdir.mk
-include rt-thread/components/finsh/subdir.mk
-include rt-thread/components/drivers/watchdog/subdir.mk
-include rt-thread/components/drivers/usb/usbhost/core/subdir.mk
-include rt-thread/components/drivers/usb/usbhost/class/subdir.mk
-include rt-thread/components/drivers/usb/usbdevice/core/subdir.mk
-include rt-thread/components/drivers/src/subdir.mk
-include rt-thread/components/drivers/spi/subdir.mk
-include rt-thread/components/drivers/serial/subdir.mk
-include rt-thread/components/drivers/rtc/subdir.mk
-include rt-thread/components/drivers/mtd/subdir.mk
-include rt-thread/components/drivers/misc/subdir.mk
-include rt-thread/components/drivers/i2c/subdir.mk
-include rt-thread/components/drivers/hwtimer/subdir.mk
-include rt-thread/components/drivers/hwcrypto/subdir.mk
-include rt-thread/components/drivers/cputime/subdir.mk
-include rt-thread/components/drivers/can/subdir.mk
-include rt-thread/components/drivers/audio/subdir.mk
-include rt-thread/components/dfs/src/subdir.mk
-include rt-thread/components/dfs/filesystems/elmfat/subdir.mk
-include rt-thread/components/dfs/filesystems/devfs/subdir.mk
-include packages/wavplayer-latest/src/subdir.mk
-include packages/uffs-latest/src/uffs/subdir.mk
-include packages/uffs-latest/subdir.mk
-include packages/ramdisk-latest/src/subdir.mk
-include packages/optparse-latest/subdir.mk
-include packages/netutils-v1.3.1/tftp/subdir.mk
-include packages/netutils-v1.3.1/ntp/subdir.mk
-include packages/netutils-v1.3.1/iperf/subdir.mk
-include libraries/nuc980/rtt_port/subdir.mk
-include libraries/nuc980/UsbHostLib/src/subdir.mk
-include libraries/nuc980/Driver/Source/subdir.mk
-include libraries/nu_packages/SPINAND/subdir.mk
-include libraries/nu_packages/Demo/subdir.mk
-include libraries/nu_packages/AudioCodec/subdir.mk
-include board/subdir.mk
-include applications/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
rtthread.bin \

SECONDARY_SIZE += \
rtthread.siz \


# 所有目标
all: rtthread.elf secondary-outputs

# 工具调用
rtthread.elf: $(OBJS) $(USER_OBJS)
	arm-none-eabi-gcc -T "C:\RT-ThreadStudio\workspace\tcp_to_usb_printer\linking_scripts\nuc980.ld" -Xlinker --gc-sections -Wl,-Map,"rtthread.map" -Xlinker --cref -mcpu=arm926ej-s -Wl,--gc-sections,-cref,-Map=rtthread_nuc980.map -o "rtthread.elf" $(OBJS) $(USER_OBJS) $(LIBS)

rtthread.bin: rtthread.elf
	arm-none-eabi-objcopy -O binary "rtthread.elf"  "rtthread.bin"

rtthread.siz: rtthread.elf
	arm-none-eabi-size --format=berkeley "rtthread.elf"

# 其他目标
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) rtthread.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
