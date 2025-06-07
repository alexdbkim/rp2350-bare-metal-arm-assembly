
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x10000000, LENGTH = 512
    SRAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 512
}

SECTIONS
{
    .text :
    {
        KEEP(*(.vectors))
        KEEP(*(.image_def))
        *(.text*)
    } > SRAM
}
