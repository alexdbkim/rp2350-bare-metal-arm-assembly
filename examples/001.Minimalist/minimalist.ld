
MEMORY
{
    SRAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 252
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
