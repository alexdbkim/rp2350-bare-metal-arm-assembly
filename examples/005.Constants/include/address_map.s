@==============================================================================
@
@   RP2350 Internal Hardware Address Map
@
@==============================================================================

.ifndef __ADDRESS_MAP_S__
.equ    __ADDRESS_MAP_S__, 1

.equ ROM_BASE,                               0x00000000
.equ XIP_BASE,                               0x10000000
.equ XIP_SRAM_BASE,                          0x13ffc000
.equ XIP_END,                                0x14000000
.equ XIP_NOCACHE_NOALLOC_BASE,               0x14000000
.equ XIP_SRAM_END,                           0x14000000
.equ XIP_NOCACHE_NOALLOC_END,                0x18000000
.equ XIP_MAINTENANCE_BASE,                   0x18000000
.equ XIP_NOCACHE_NOALLOC_NOTRANSLATE_BASE,   0x1c000000
.equ SRAM0_BASE,                             0x20000000
.equ XIP_NOCACHE_NOALLOC_NOTRANSLATE_END,    0x20000000
.equ SRAM_BASE,                              0x20000000
.equ SRAM_STRIPED_BASE,                      0x20000000
.equ SRAM4_BASE,                             0x20040000
.equ SRAM8_BASE,                             0x20080000
.equ SRAM_STRIPED_END,                       0x20080000
.equ SRAM_SCRATCH_X_BASE,                    0x20080000
.equ SRAM9_BASE,                             0x20081000
.equ SRAM_SCRATCH_Y_BASE,                    0x20081000
.equ SRAM_END,                               0x20082000
.equ SYSINFO_BASE,                           0x40000000
.equ SYSCFG_BASE,                            0x40008000
.equ CLOCKS_BASE,                            0x40010000
.equ PSM_BASE,                               0x40018000
.equ RESETS_BASE,                            0x40020000
.equ IO_BANK0_BASE,                          0x40028000
.equ IO_QSPI_BASE,                           0x40030000
.equ PADS_BANK0_BASE,                        0x40038000
.equ PADS_QSPI_BASE,                         0x40040000
.equ XOSC_BASE,                              0x40048000
.equ PLL_SYS_BASE,                           0x40050000
.equ PLL_USB_BASE,                           0x40058000
.equ ACCESSCTRL_BASE,                        0x40060000
.equ BUSCTRL_BASE,                           0x40068000
.equ UART0_BASE,                             0x40070000
.equ UART1_BASE,                             0x40078000
.equ SPI0_BASE,                              0x40080000
.equ SPI1_BASE,                              0x40088000
.equ I2C0_BASE,                              0x40090000
.equ I2C1_BASE,                              0x40098000
.equ ADC_BASE,                               0x400a0000
.equ PWM_BASE,                               0x400a8000
.equ TIMER0_BASE,                            0x400b0000
.equ TIMER1_BASE,                            0x400b8000
.equ HSTX_CTRL_BASE,                         0x400c0000
.equ XIP_CTRL_BASE,                          0x400c8000
.equ XIP_QMI_BASE,                           0x400d0000
.equ WATCHDOG_BASE,                          0x400d8000
.equ BOOTRAM_BASE,                           0x400e0000
.equ BOOTRAM_END,                            0x400e0400
.equ ROSC_BASE,                              0x400e8000
.equ TRNG_BASE,                              0x400f0000
.equ SHA256_BASE,                            0x400f8000
.equ POWMAN_BASE,                            0x40100000
.equ TICKS_BASE,                             0x40108000
.equ OTP_BASE,                               0x40120000
.equ OTP_DATA_BASE,                          0x40130000
.equ OTP_DATA_RAW_BASE,                      0x40134000
.equ OTP_DATA_GUARDED_BASE,                  0x40138000
.equ OTP_DATA_RAW_GUARDED_BASE,              0x4013c000
.equ CORESIGHT_PERIPH_BASE,                  0x40140000
.equ CORESIGHT_ROMTABLE_BASE,                0x40140000
.equ CORESIGHT_AHB_AP_CORE0_BASE,            0x40142000
.equ CORESIGHT_AHB_AP_CORE1_BASE,            0x40144000
.equ CORESIGHT_TIMESTAMP_GEN_BASE,           0x40146000
.equ CORESIGHT_ATB_FUNNEL_BASE,              0x40147000
.equ CORESIGHT_TPIU_BASE,                    0x40148000
.equ CORESIGHT_CTI_BASE,                     0x40149000
.equ CORESIGHT_APB_AP_RISCV_BASE,            0x4014a000
.equ DFT_BASE,                               0x40150000
.equ GLITCH_DETECTOR_BASE,                   0x40158000
.equ TBMAN_BASE,                             0x40160000
.equ DMA_BASE,                               0x50000000
.equ USBCTRL_BASE,                           0x50100000
.equ USBCTRL_DPRAM_BASE,                     0x50100000
.equ USBCTRL_REGS_BASE,                      0x50110000
.equ PIO0_BASE,                              0x50200000
.equ PIO1_BASE,                              0x50300000
.equ PIO2_BASE,                              0x50400000
.equ XIP_AUX_BASE,                           0x50500000
.equ HSTX_FIFO_BASE,                         0x50600000
.equ CORESIGHT_TRACE_BASE,                   0x50700000
.equ SIO_BASE,                               0xd0000000
.equ SIO_NONSEC_BASE,                        0xd0020000
.equ PPB_BASE,                               0xe0000000
.equ PPB_NONSEC_BASE,                        0xe0020000
.equ EPPB_BASE,                              0xe0080000

.endif @ __ADDRESS_MAP_S__
