cmd_u-boot.stm32 := ./tools/mkimage -T stm32image -a 0xC0100000 -e 0xC0100000 -d u-boot.bin u-boot.stm32 >u-boot.stm32.log 
