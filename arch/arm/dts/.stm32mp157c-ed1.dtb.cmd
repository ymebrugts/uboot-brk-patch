cmd_arch/arm/dts/stm32mp157c-ed1.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/stm32mp157c-ed1.dts; echo '$(pound)include "stm32mp157c-ed1-u-boot.dtsi"') > arch/arm/dts/.stm32mp157c-ed1.dtb.pre.tmp; /usr/bin/arm-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/dts/.stm32mp157c-ed1.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.stm32mp157c-ed1.dtb.dts.tmp arch/arm/dts/.stm32mp157c-ed1.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/stm32mp157c-ed1.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths  -d arch/arm/dts/.stm32mp157c-ed1.dtb.d.dtc.tmp arch/arm/dts/.stm32mp157c-ed1.dtb.dts.tmp ; cat arch/arm/dts/.stm32mp157c-ed1.dtb.d.pre.tmp arch/arm/dts/.stm32mp157c-ed1.dtb.d.dtc.tmp > arch/arm/dts/.stm32mp157c-ed1.dtb.d ; sed -i "s:arch/arm/dts/.stm32mp157c-ed1.dtb.pre.tmp:arch/arm/dts/stm32mp157c-ed1.dts:" arch/arm/dts/.stm32mp157c-ed1.dtb.d

source_arch/arm/dts/stm32mp157c-ed1.dtb := arch/arm/dts/stm32mp157c-ed1.dts

deps_arch/arm/dts/stm32mp157c-ed1.dtb := \
  arch/arm/dts/stm32mp157.dtsi \
  arch/arm/dts/stm32mp153.dtsi \
  arch/arm/dts/stm32mp151.dtsi \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/clock/stm32mp1-clks.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/reset/stm32mp1-resets.h \
  arch/arm/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm/dts/stm32mp15xc.dtsi \
  arch/arm/dts/stm32mp15xa.dtsi \
  arch/arm/dts/stm32mp15-pinctrl.dtsi \
  arch/arm/dts/include/dt-bindings/pinctrl/stm32-pinfunc.h \
  arch/arm/dts/stm32mp15xxaa-pinctrl.dtsi \
  arch/arm/dts/stm32mp157-m4-srm.dtsi \
  arch/arm/dts/stm32mp157-m4-srm-pinctrl.dtsi \
  arch/arm/dts/stm32mp15xx-edx.dtsi \
  arch/arm/dts/include/dt-bindings/mfd/st,stpmic1.h \
  arch/arm/dts/stm32mp157c-ed1-u-boot.dtsi \
  arch/arm/dts/stm32mp157a-ed1-u-boot.dtsi \
    $(wildcard include/config/stm32mp1/trusted.h) \
  arch/arm/dts/include/dt-bindings/clock/stm32mp1-clksrc.h \
  arch/arm/dts/stm32mp15-u-boot.dtsi \
  arch/arm/dts/stm32mp15-ddr3-2x4Gb-1066-binG.dtsi \
  arch/arm/dts/stm32mp15-ddr.dtsi \

arch/arm/dts/stm32mp157c-ed1.dtb: $(deps_arch/arm/dts/stm32mp157c-ed1.dtb)

$(deps_arch/arm/dts/stm32mp157c-ed1.dtb):
