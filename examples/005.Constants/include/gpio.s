@==============================================================================
@
@   RP2350 Internal Hardware GPIO (General Purpose Input/Output)
@
@==============================================================================

.ifndef __GPIO_S__
.equ    __GPIO_S__, 1

.equ GPIO0_STATUS,                         0x000
.equ GPIO0_CTRL,                           0x004
.equ GPIO1_STATUS,                         0x008
.equ GPIO1_CTRL,                           0x00c
.equ GPIO2_STATUS,                         0x010
.equ GPIO2_CTRL,                           0x014
.equ GPIO3_STATUS,                         0x018
.equ GPIO3_CTRL,                           0x01c
.equ GPIO4_STATUS,                         0x020
.equ GPIO4_CTRL,                           0x024
.equ GPIO5_STATUS,                         0x028
.equ GPIO5_CTRL,                           0x02c
.equ GPIO6_STATUS,                         0x030
.equ GPIO6_CTRL,                           0x034
.equ GPIO7_STATUS,                         0x038
.equ GPIO7_CTRL,                           0x03c
.equ GPIO8_STATUS,                         0x040
.equ GPIO8_CTRL,                           0x044
.equ GPIO9_STATUS,                         0x048
.equ GPIO9_CTRL,                           0x04c
.equ GPIO10_STATUS,                        0x050
.equ GPIO10_CTRL,                          0x054
.equ GPIO11_STATUS,                        0x058
.equ GPIO11_CTRL,                          0x05c
.equ GPIO12_STATUS,                        0x060
.equ GPIO12_CTRL,                          0x064
.equ GPIO13_STATUS,                        0x068
.equ GPIO13_CTRL,                          0x06c
.equ GPIO14_STATUS,                        0x070
.equ GPIO14_CTRL,                          0x074
.equ GPIO15_STATUS,                        0x078
.equ GPIO15_CTRL,                          0x07c
.equ GPIO16_STATUS,                        0x080
.equ GPIO16_CTRL,                          0x084
.equ GPIO17_STATUS,                        0x088
.equ GPIO17_CTRL,                          0x08c
.equ GPIO18_STATUS,                        0x090
.equ GPIO18_CTRL,                          0x094
.equ GPIO19_STATUS,                        0x098
.equ GPIO19_CTRL,                          0x09c
.equ GPIO20_STATUS,                        0x0a0
.equ GPIO20_CTRL,                          0x0a4
.equ GPIO21_STATUS,                        0x0a8
.equ GPIO21_CTRL,                          0x0ac
.equ GPIO22_STATUS,                        0x0b0
.equ GPIO22_CTRL,                          0x0b4
.equ GPIO23_STATUS,                        0x0b8
.equ GPIO23_CTRL,                          0x0bc
.equ GPIO24_STATUS,                        0x0c0
.equ GPIO24_CTRL,                          0x0c4
.equ GPIO25_STATUS,                        0x0c8
.equ GPIO25_CTRL,                          0x0cc
.equ GPIO26_STATUS,                        0x0d0
.equ GPIO26_CTRL,                          0x0d4
.equ GPIO27_STATUS,                        0x0d8
.equ GPIO27_CTRL,                          0x0dc
.equ GPIO28_STATUS,                        0x0e0
.equ GPIO28_CTRL,                          0x0e4
.equ GPIO29_STATUS,                        0x0e8
.equ GPIO29_CTRL,                          0x0ec
.equ GPIO30_STATUS,                        0x0f0
.equ GPIO30_CTRL,                          0x0f4
.equ GPIO31_STATUS,                        0x0f8
.equ GPIO31_CTRL,                          0x0fc
.equ GPIO32_STATUS,                        0x100
.equ GPIO32_CTRL,                          0x104
.equ GPIO33_STATUS,                        0x108
.equ GPIO33_CTRL,                          0x10c
.equ GPIO34_STATUS,                        0x110
.equ GPIO34_CTRL,                          0x114
.equ GPIO35_STATUS,                        0x118
.equ GPIO35_CTRL,                          0x11c
.equ GPIO36_STATUS,                        0x120
.equ GPIO36_CTRL,                          0x124
.equ GPIO37_STATUS,                        0x128
.equ GPIO37_CTRL,                          0x12c
.equ GPIO38_STATUS,                        0x130
.equ GPIO38_CTRL,                          0x134
.equ GPIO39_STATUS,                        0x138
.equ GPIO39_CTRL,                          0x13c
.equ GPIO40_STATUS,                        0x140
.equ GPIO40_CTRL,                          0x144
.equ GPIO41_STATUS,                        0x148
.equ GPIO41_CTRL,                          0x14c
.equ GPIO42_STATUS,                        0x150
.equ GPIO42_CTRL,                          0x154
.equ GPIO43_STATUS,                        0x158
.equ GPIO43_CTRL,                          0x15c
.equ GPIO44_STATUS,                        0x160
.equ GPIO44_CTRL,                          0x164
.equ GPIO45_STATUS,                        0x168
.equ GPIO45_CTRL,                          0x16c
.equ GPIO46_STATUS,                        0x170
.equ GPIO46_CTRL,                          0x174
.equ GPIO47_STATUS,                        0x178
.equ GPIO47_CTRL,                          0x17c

.equ IRQSUMMARY_PROC0_SECURE0,             0x200
.equ IRQSUMMARY_PROC0_SECURE1,             0x204
.equ IRQSUMMARY_PROC0_NONSECURE0,          0x208
.equ IRQSUMMARY_PROC0_NONSECURE1,          0x20c
.equ IRQSUMMARY_PROC1_SECURE0,             0x210
.equ IRQSUMMARY_PROC1_SECURE1,             0x214
.equ IRQSUMMARY_PROC1_NONSECURE0,          0x218
.equ IRQSUMMARY_PROC1_NONSECURE1,          0x21c
.equ IRQSUMMARY_COMA_WAKE_SECURE0,         0x220
.equ IRQSUMMARY_COMA_WAKE_SECURE1,         0x224
.equ IRQSUMMARY_COMA_WAKE_NONSECURE0,      0x228
.equ IRQSUMMARY_COMA_WAKE_NONSECURE1,      0x22c

.equ INTR0,                                0x230 @ Raw Interrupts
.equ INTR1,                                0x234 @ Raw Interrupts
.equ INTR2,                                0x238 @ Raw Interrupts
.equ INTR3,                                0x23c @ Raw Interrupts
.equ INTR4,                                0x240 @ Raw Interrupts
.equ INTR5,                                0x244 @ Raw Interrupts

.equ PROC0_INTE0,                          0x248 @ Interrupt Enable for proc0
.equ PROC0_INTE1,                          0x24c @ Interrupt Enable for proc0
.equ PROC0_INTE2,                          0x250 @ Interrupt Enable for proc0
.equ PROC0_INTE3,                          0x254 @ Interrupt Enable for proc0
.equ PROC0_INTE4,                          0x258 @ Interrupt Enable for proc0
.equ PROC0_INTE5,                          0x25c @ Interrupt Enable for proc0
.equ PROC0_INTF0,                          0x260 @ Interrupt Force for proc0
.equ PROC0_INTF1,                          0x264 @ Interrupt Force for proc0
.equ PROC0_INTF2,                          0x268 @ Interrupt Force for proc0
.equ PROC0_INTF3,                          0x26c @ Interrupt Force for proc0
.equ PROC0_INTF4,                          0x270 @ Interrupt Force for proc0
.equ PROC0_INTF5,                          0x274 @ Interrupt Force for proc0
.equ PROC0_INTS0,                          0x278 @ Interrupt status after masking & forcing for proc0
.equ PROC0_INTS1,                          0x27c @ Interrupt status after masking & forcing for proc0
.equ PROC0_INTS2,                          0x280 @ Interrupt status after masking & forcing for proc0
.equ PROC0_INTS3,                          0x284 @ Interrupt status after masking & forcing for proc0
.equ PROC0_INTS4,                          0x288 @ Interrupt status after masking & forcing for proc0
.equ PROC0_INTS5,                          0x28c @ Interrupt status after masking & forcing for proc0
.equ PROC1_INTE0,                          0x290 @ Interrupt Enable for proc1
.equ PROC1_INTE1,                          0x294 @ Interrupt Enable for proc1
.equ PROC1_INTE2,                          0x298 @ Interrupt Enable for proc1
.equ PROC1_INTE3,                          0x29c @ Interrupt Enable for proc1
.equ PROC1_INTE4,                          0x2a0 @ Interrupt Enable for proc1
.equ PROC1_INTE5,                          0x2a4 @ Interrupt Enable for proc1
.equ PROC1_INTF0,                          0x2a8 @ Interrupt Force for proc1
.equ PROC1_INTF1,                          0x2ac @ Interrupt Force for proc1
.equ PROC1_INTF2,                          0x2b0 @ Interrupt Force for proc1
.equ PROC1_INTF3,                          0x2b4 @ Interrupt Force for proc1
.equ PROC1_INTF4,                          0x2b8 @ Interrupt Force for proc1
.equ PROC1_INTF5,                          0x2bc @ Interrupt Force for proc1
.equ PROC1_INTS0,                          0x2c0 @ Interrupt status after masking & forcing for proc1
.equ PROC1_INTS1,                          0x2c4 @ Interrupt status after masking & forcing for proc1
.equ PROC1_INTS2,                          0x2c8 @ Interrupt status after masking & forcing for proc1
.equ PROC1_INTS3,                          0x2cc @ Interrupt status after masking & forcing for proc1
.equ PROC1_INTS4,                          0x2d0 @ Interrupt status after masking & forcing for proc1
.equ PROC1_INTS5,                          0x2d4 @ Interrupt status after masking & forcing for proc1

.equ DORMANT_WAKE_INTE0,                   0x2d8 @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTE1,                   0x2dc @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTE2,                   0x2e0 @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTE3,                   0x2e4 @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTE4,                   0x2e8 @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTE5,                   0x2ec @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTF0,                   0x2f0 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTF1,                   0x2f4 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTF2,                   0x2f8 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTF3,                   0x2fc @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTF4,                   0x300 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTF5,                   0x304 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTS0,                   0x308 @ Interrupt status after masking & forcing for dormant_wake
.equ DORMANT_WAKE_INTS1,                   0x30c @ Interrupt status after masking & forcing for dormant_wake
.equ DORMANT_WAKE_INTS2,                   0x310 @ Interrupt status after masking & forcing for dormant_wake
.equ DORMANT_WAKE_INTS3,                   0x314 @ Interrupt status after masking & forcing for dormant_wake
.equ DORMANT_WAKE_INTS4,                   0x318 @ Interrupt status after masking & forcing for dormant_wake
.equ DORMANT_WAKE_INTS5,                   0x31c @ Interrupt status after masking & forcing for dormant_wake

.equ GPIO_FUNCTION_HSTX,                   0
.equ GPIO_FUNCTION_SPI0,                   1
.equ GPIO_FUNCTION_UART,                   2
.equ GPIO_FUNCTION_I2C,                    3
.equ GPIO_FUNCTION_PWM,                    4
.equ GPIO_FUNCTION_SIO,                    5
.equ GPIO_FUNCTION_PIO1,                   6
.equ GPIO_FUNCTION_PIO2,                   7
.equ GPIO_FUNCTION_PIO3,                   8
.equ GPIO_FUNCTION_QMI,                    9
.equ GPIO_FUNCTION_USB,                    10
.equ GPIO_FUNCTION_UART_TRX,               11

.equ USBPHY_DP_STATUS,                     0x000
.equ USBPHY_DP_CTRL,                       0x004
.equ USBPHY_DM_STATUS,                     0x008
.equ USBPHY_DM_CTRL,                       0x00c

.equ GPIO_QSPI_SCLK_STATUS,                0x010
.equ GPIO_QSPI_SCLK_CTRL,                  0x014
.equ GPIO_QSPI_SS_STATUS,                  0x018
.equ GPIO_QSPI_SS_CTRL,                    0x01c
.equ GPIO_QSPI_SD0_STATUS,                 0x020
.equ GPIO_QSPI_SD0_CTRL,                   0x024
.equ GPIO_QSPI_SD1_STATUS,                 0x028
.equ GPIO_QSPI_SD1_CTRL,                   0x02c
.equ GPIO_QSPI_SD2_STATUS,                 0x030
.equ GPIO_QSPI_SD2_CTRL,                   0x034
.equ GPIO_QSPI_SD3_STATUS,                 0x038
.equ GPIO_QSPI_SD3_CTRL,                   0x03c

.equ IRQSUMMARY_PROC0_SECURE,              0x200
.equ IRQSUMMARY_PROC0_NONSECURE,           0x204
.equ IRQSUMMARY_PROC1_SECURE,              0x208
.equ IRQSUMMARY_PROC1_NONSECURE,           0x20c
.equ IRQSUMMARY_COMA_WAKE_SECURE,          0x210
.equ IRQSUMMARY_COMA_WAKE_NONSECURE,       0x214

.equ INTR,                                 0x218 @ Raw Interrupts

.equ PROC0_INTE,                           0x21c @ Interrupt Enable for proc0
.equ PROC0_INTF,                           0x220 @ Interrupt Force for proc0
.equ PROC0_INTS,                           0x224 @ Interrupt status after masking & forcing for proc0
.equ PROC1_INTE,                           0x228 @ Interrupt Enable for proc1
.equ PROC1_INTF,                           0x22c @ Interrupt Force for proc1
.equ PROC1_INTS,                           0x230 @ Interrupt status after masking & forcing for proc1

.equ DORMANT_WAKE_INTE,                    0x234 @ Interrupt Enable for dormant_wake
.equ DORMANT_WAKE_INTF,                    0x238 @ Interrupt Force for dormant_wake
.equ DORMANT_WAKE_INTS,                    0x23c @ Interrupt status after masking & forcing for dormant_wake

.equ PAD_CONTROL_VOLTAGE_SELECT,           0x00 @ Voltage select. Per bank control
.equ PAD_CONTROL_GPIO0,                    0x04
.equ PAD_CONTROL_GPIO1,                    0x08
.equ PAD_CONTROL_GPIO2,                    0x0c
.equ PAD_CONTROL_GPIO3,                    0x10
.equ PAD_CONTROL_GPIO4,                    0x14
.equ PAD_CONTROL_GPIO5,                    0x18
.equ PAD_CONTROL_GPIO6,                    0x1c
.equ PAD_CONTROL_GPIO7,                    0x20
.equ PAD_CONTROL_GPIO8,                    0x24
.equ PAD_CONTROL_GPIO9,                    0x28
.equ PAD_CONTROL_GPIO10,                   0x2c
.equ PAD_CONTROL_GPIO11,                   0x30
.equ PAD_CONTROL_GPIO12,                   0x34
.equ PAD_CONTROL_GPIO13,                   0x38
.equ PAD_CONTROL_GPIO14,                   0x3c
.equ PAD_CONTROL_GPIO15,                   0x40
.equ PAD_CONTROL_GPIO16,                   0x44
.equ PAD_CONTROL_GPIO17,                   0x48
.equ PAD_CONTROL_GPIO18,                   0x4c
.equ PAD_CONTROL_GPIO19,                   0x50
.equ PAD_CONTROL_GPIO20,                   0x54
.equ PAD_CONTROL_GPIO21,                   0x58
.equ PAD_CONTROL_GPIO22,                   0x5c
.equ PAD_CONTROL_GPIO23,                   0x60
.equ PAD_CONTROL_GPIO24,                   0x64
.equ PAD_CONTROL_GPIO25,                   0x68
.equ PAD_CONTROL_GPIO26,                   0x6c
.equ PAD_CONTROL_GPIO27,                   0x70
.equ PAD_CONTROL_GPIO28,                   0x74
.equ PAD_CONTROL_GPIO29,                   0x78
.equ PAD_CONTROL_GPIO30,                   0x7c
.equ PAD_CONTROL_GPIO31,                   0x80
.equ PAD_CONTROL_GPIO32,                   0x84
.equ PAD_CONTROL_GPIO33,                   0x88
.equ PAD_CONTROL_GPIO34,                   0x8c
.equ PAD_CONTROL_GPIO35,                   0x90
.equ PAD_CONTROL_GPIO36,                   0x94
.equ PAD_CONTROL_GPIO37,                   0x98
.equ PAD_CONTROL_GPIO38,                   0x9c
.equ PAD_CONTROL_GPIO39,                   0xa0
.equ PAD_CONTROL_GPIO40,                   0xa4
.equ PAD_CONTROL_GPIO41,                   0xa8
.equ PAD_CONTROL_GPIO42,                   0xac
.equ PAD_CONTROL_GPIO43,                   0xb0
.equ PAD_CONTROL_GPIO44,                   0xb4
.equ PAD_CONTROL_GPIO45,                   0xb8
.equ PAD_CONTROL_GPIO46,                   0xbc
.equ PAD_CONTROL_GPIO47,                   0xc0
.equ PAD_CONTROL_SWCLK,                    0xc4
.equ PAD_CONTROL_SWD,                      0xc8

.equ PADS_CONTROL_BIT_ISO,                 1 << 8
.equ PADS_CONTROL_BIT_OUTPUT_DISABLE,      1 << 7
.equ PADS_CONTROL_BIT_INPUT_ENABLE,        1 << 6
.equ PADS_CONTROL_BIT_DRIVE_2mA,           0 << 4
.equ PADS_CONTROL_BIT_DRIVE_4mA,           1 << 4
.equ PADS_CONTROL_BIT_DRIVE_6mA,           2 << 4
.equ PADS_CONTROL_BIT_DRIVE_12mA,          3 << 4
.equ PADS_CONTROL_BIT_PULLUP_ENABLE,       1 << 3
.equ PADS_CONTROL_BIT_PULLDOWN_ENABLE,     1 << 2
.equ PADS_CONTROL_BIT_SCHMITT_ENABLE,      1 << 1
.equ PADS_CONTROL_BIT_SLEWFAST,            1 << 0

.endif @ __GPIO_S__
