@==============================================================================
@
@   MCU     : Raspberry Pi RP2305A
@   CPU     : ARM Cortex-M33 (32-bit)
@   Cores   : 2
@   Date    : June 5, 2025
@
@   RP2350 Resets (7.)
@
@==============================================================================

@ [Resets Registers]
@ The reset controller registers start at a base address of RESETS_BASE (0x40020000).

.equ RESETS_REG_OFFSET_RESET, 0x0
.equ RESETS_REG_OFFSET_WDSEL, 0x4
.equ RESETS_REG_OFFSET_RESET_DONE, 0x8

@ [Resets Register Bits]

.equ RESETS_BIT_USBCTRL, 1 << 28
.equ RESETS_BIT_UART1, 1 << 27
.equ RESETS_BIT_UART0, 1 << 26
.equ RESETS_BIT_TRNG, 1 << 25
.equ RESETS_BIT_TIMER1, 1 << 24
.equ RESETS_BIT_TIMER0, 1 << 23
.equ RESETS_BIT_TBMAN, 1 << 22
.equ RESETS_BIT_SYSINFO, 1 << 21
.equ RESETS_BIT_SYSCFG, 1 << 20
.equ RESETS_BIT_SPI1, 1 << 19
.equ RESETS_BIT_SPI0, 1 << 18
.equ RESETS_BIT_SHA256, 1 << 17
.equ RESETS_BIT_PWM, 1 << 16
.equ RESETS_BIT_PLL_USB, 1 << 15
.equ RESETS_BIT_PLL_SYS, 1 << 14
.equ RESETS_BIT_PIO2, 1 << 13
.equ RESETS_BIT_PIO1, 1 << 12
.equ RESETS_BIT_PIO0, 1 << 11
.equ RESETS_BIT_PADS_QSPI, 1 << 10
.equ RESETS_BIT_PADS_BANK0, 1 << 9
.equ RESETS_BIT_JTAG, 1 << 8
.equ RESETS_BIT_IO_QSPI, 1 << 7
.equ RESETS_BIT_IO_BANK0, 1 << 6
.equ RESETS_BIT_I2C1, 1 << 5
.equ RESETS_BIT_I2C0, 1 << 4
.equ RESETS_BIT_HSTX, 1 << 3
.equ RESETS_BIT_DMA, 1 << 2
.equ RESETS_BIT_BUSCTRL, 1 << 1
.equ RESETS_BIT_ADC, 1 << 0
