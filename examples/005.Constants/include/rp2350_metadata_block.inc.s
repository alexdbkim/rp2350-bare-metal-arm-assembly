@==============================================================================
@
@   MCU     : Raspberry Pi RP2305A
@   CPU     : ARM Cortex-M33 (32-bit)
@   Cores   : 2
@   Date    : June 4, 2025
@
@   RP2350 Metadata Block
@
@==============================================================================

@------------------------------------------------------------------------------
@ Block Markers (RP2350 Datasheet 5.1.5)
@------------------------------------------------------------------------------

@ To be considered valid, a block must have the following properties. These
@ start and end markers are chosen to be unlikely to appear in executable ARM.
@ For more information about the block format, see Section 5.9.1.

@ Given a region of memory or flash, blocks are found by searching the first
@ 4 KB of that given region.

.equ PICOBIN_BLOCK_MARKER_START,            0xffffded3
.equ PICOBIN_BLOCK_MARKER_END,              0xab123579

@------------------------------------------------------------------------------
@ IMAGE_DEF item (5.9.3.1)
@------------------------------------------------------------------------------
@
@ WORD (4 bytes)
@   +--------+--------+--------+--------+
@   | 4th    | 3rd    | 2nd    | 1st    |
@   +--------+--------+--------+--------+
@   |76543210|76543210|76543210|76543210|
@   |      Flags      |  0x01  |  0x42  |
@   +--------+--------+--------+--------+

@ 1st Byte : IMAGE_DEF item identifier
.equ PICOBIN_BLOCK_ITEM_1BS_IMAGE_TYPE,     0x42              @ IMAGE_DEF item indeitifier 

@ 2nd Byte : IMAGE_DEF item size
.equ PICOBIN_BLOCK_ITEM_SIZE_1_WORD,        0x01              @ Item is always 1 word

@ 3rd-4th Byte : IMAGE_DEF Flags (IDF)

@ (0b0000 0000 0000 XXXX) IDF Image Type 

.equ IMAGE_TYPE_INVALID,                    0                 @ Invalid image type
.equ IMAGE_TYPE_EXE,                        1 << 0            @ Executable image type
.equ IMAGE_TYPE_DATA,                       1 << 1            @ Data image type

@ (0b0000 0000 00XX 0000) IDF Executable Security 

.equ EXE_SECURITY_UNSPECIFIED,              0                 @ Unspecified security
.equ EXE_SECURITY_NS,                       1 << 4            @ Image runs in Non-secure mode
.equ EXE_SECURITY_S,                        1 << 5            @ Image runs in Securesecure mode

@ (0b0000 0000 XX00 0000) IDF Reserved (not in use) 0b00

@ (0b0000 00XX 0000 0000) IDF Target CPU Architecture

.equ EXE_CPU_ARM,                           0                 @ ARM Architecture
.equ EXE_CPU_RISCV,                         1 << 7            @ RISC-V Architecture

@ (0b0000 0X00 0000 0000) IDF Reserved (not in use) 0b0

@ (0b0XXX 0000 0000 0000) IDF Target CPU Chip 

.equ EXE_CHIP_RP2040,                       0                 @ RP2040
.equ EXE_CHIP_RP2350,                       1 << 12           @ RP2350

@ (0bX000 0000 0000 0000) IDF Target CPU Chip 

.equ EXE_TBYB_DISABLED,                     0                 @ TBYB Disabled
.equ EXE_TBYB_ENABLED,                      1 << 15           @ TBYB Enabled

@ Predefined Flags value for RP2350 Executable image
.equ EXE_SECURE_ARM_RP2350, IMAGE_TYPE_EXE | EXE_SECURITY_S | EXE_CPU_ARM | EXE_CHIP_RP2350 | EXE_TBYB_DISABLED

@ Predefined IMAGE_DEF value for RP2350 Secure Executable image
.equ IMAGE_DEF_ARM_RP2350_SECURE_EXE, PICOBIN_BLOCK_ITEM_1BS_IMAGE_TYPE | (PICOBIN_BLOCK_ITEM_SIZE_1_WORD << 8) | (EXE_SECURE_ARM_RP2350 << 16)

@------------------------------------------------------------------------------
@ Last item (5.1.5.1.)
@------------------------------------------------------------------------------
@ The last item must have type PICOBIN_BLOCK_ITEM_2BS_LAST and specify
@ the correct full length of the entire block.

.equ PICOBIN_BLOCK_ITEM_2BS_LAST, 0xff
