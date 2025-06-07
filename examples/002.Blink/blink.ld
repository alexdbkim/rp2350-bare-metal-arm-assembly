
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x10000000, LENGTH = 512k
    SRAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 512K
}

SECTIONS
{
    .text :
    {
        KEEP(*(.vectors))
        KEEP(*(.image_def))
        *(.text*)
    } > FLASH
    
    .bss :
    {
        *(.bss*)
    } > SRAM
    
    .data :
    {
        *(.data*)
    } > SRAM
}
