cmd_arch/arm/cpu/armv7/smccc-call.o := /usr/bin/arm-linux-gnueabi-gcc -Wp,-MD,arch/arm/cpu/armv7/.smccc-call.o.d  -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/7/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-stm32mp/include   -c -o arch/arm/cpu/armv7/smccc-call.o arch/arm/cpu/armv7/smccc-call.S

source_arch/arm/cpu/armv7/smccc-call.o := arch/arm/cpu/armv7/smccc-call.S

deps_arch/arm/cpu/armv7/smccc-call.o := \
    $(wildcard include/config/efi/loader.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  arch/arm/include/asm/opcodes-sec.h \
  arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/cpu/endian/be32.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/stringify.h \
  arch/arm/include/asm/opcodes-virt.h \

arch/arm/cpu/armv7/smccc-call.o: $(deps_arch/arm/cpu/armv7/smccc-call.o)

$(deps_arch/arm/cpu/armv7/smccc-call.o):
