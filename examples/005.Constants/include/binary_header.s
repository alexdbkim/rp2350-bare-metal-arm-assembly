.ifndef INCLUDE_BINARY_HEADER_S
.equ    INCLUDE_BINARY_HEADER_S, 1

.include "include/metadata_block.s"

.syntax unified
.align 4
.cpu cortex-m33
.thumb

@ The following image_def section is required to be a valid program image.

.section .image_def, "a"
image_def:
    .word PICOBIN_BLOCK_MARKER_START
    .word IMAGE_DEF_ARM_RP2350_SECURE_EXE
    .word PICOBIN_BLOCK_ITEM_2BS_LAST | (1 << 8)
    .word 0x00000000
    .word PICOBIN_BLOCK_MARKER_END

@ Vector initialization

.section .vectors, "ax"
.equ STACK_TOP_ADDRESS, 0x20001000
.global vector_initialization
vector_initialization:
    .word STACK_TOP_ADDRESS                         @ Stack top address
    .word stack_initialization                      @ Stack initialization function (Thumb bit set)

@ Stack pointer initialization

.section .text
.global stack_initialization
.thumb_func
stack_initialization:
    ldr     r0, =STACK_TOP_ADDRESS                  @ Define the stack top address
    mov     sp, r0                  
    bl      _start                                  @ Jump to main program

.endif @INCLUDE_BINARY_HEADER_S
