@==============================================================================
@
@   RP2350 Address Map
@
@==============================================================================

.ifndef __ADDRESS_MAP_INC_S__
.equ    __ADDRESS_MAP_INC_S__, 1

.equ ROM_BASE,                    0x00000000
.equ XIP_BASE,                    0x10000000
.equ XIP_MAIN_BASE,               0x10000000
.equ XIP_NOALLOC_BASE,            0x11000000
.equ XIP_NOCACHE_BASE,            0x12000000
.equ XIP_NOCACHE_NOALLOC_BASE,    0x13000000
.equ XIP_CTRL_BASE,               0x14000000
.equ XIP_SRAM_BASE,               0x15000000
.equ XIP_SRAM_END,                0x15004000
.equ XIP_SSI_BASE,                0x18000000
.equ SRAM_BASE,                   0x20000000
.equ SRAM_STRIPED_BASE,           0x20000000
.equ SRAM_STRIPED_END,            0x20040000
.equ SRAM4_BASE,                  0x20040000
.equ SRAM5_BASE,                  0x20041000
.equ SRAM_END,                    0x20042000
.equ SRAM0_BASE,                  0x21000000
.equ SRAM1_BASE,                  0x21010000
.equ SRAM2_BASE,                  0x21020000
.equ SRAM3_BASE,                  0x21030000
.equ SYSINFO_BASE,                0x40000000
.equ SYSCFG_BASE,                 0x40004000
.equ CLOCKS_BASE,                 0x40008000
.equ RESETS_BASE,                 0x4000c000
.equ PSM_BASE,                    0x40010000
.equ IO_BANK0_BASE,               0x40014000
.equ IO_QSPI_BASE,                0x40018000
.equ PADS_BANK0_BASE,             0x4001c000
.equ PADS_QSPI_BASE,              0x40020000
.equ XOSC_BASE,                   0x40024000
.equ PLL_SYS_BASE,                0x40028000
.equ PLL_USB_BASE,                0x4002c000
.equ BUSCTRL_BASE,                0x40030000
.equ UART0_BASE,                  0x40034000
.equ UART1_BASE,                  0x40038000
.equ SPI0_BASE,                   0x4003c000
.equ SPI1_BASE,                   0x40040000
.equ I2C0_BASE,                   0x40044000
.equ I2C1_BASE,                   0x40048000
.equ ADC_BASE,                    0x4004c000
.equ PWM_BASE,                    0x40050000
.equ TIMER_BASE,                  0x40054000
.equ WATCHDOG_BASE,               0x40058000
.equ RTC_BASE,                    0x4005c000
.equ ROSC_BASE,                   0x40060000
.equ VREG_AND_CHIP_RESET_BASE,    0x40064000
.equ TBMAN_BASE,                  0x4006c000
.equ DMA_BASE,                    0x50000000
.equ USBCTRL_DPRAM_BASE,          0x50100000
.equ USBCTRL_BASE,                0x50100000
.equ USBCTRL_REGS_BASE,           0x50110000
.equ PIO0_BASE,                   0x50200000
.equ PIO1_BASE,                   0x50300000
.equ XIP_AUX_BASE,                0x50400000
.equ SIO_BASE,                    0xd0000000
.equ PPB_BASE,                    0xe0000000

.endif @ __ADDRESS_MAP_INC_S__