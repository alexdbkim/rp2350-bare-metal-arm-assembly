@------------------------------------------------------------------------------
@ Example 001. Minimalist
@------------------------------------------------------------------------------

.syntax unified
.cpu cortex-m33
.thumb

@ The following image_def section is required to be a valid program image.

.section .image_def, "a"
image_def:
    .word 0xffffded3
    .word 0x10210142
    .word 0x000001ff
    .word 0x00000000
    .word 0xab123579

@ Vector initialization

.section .vectors, "ax"
.equ STACK_TOP_ADDRESS, 0x20001000
.global vector_initialization
vector_initialization:
    .word STACK_TOP_ADDRESS                         @ Stack top address
    .word stack_initialization                      @ Stack initialization function

@ Stack pointer initialization

.section .text
.global stack_initialization
.thumb_func
stack_initialization:
    ldr     r0, =STACK_TOP_ADDRESS                  @ Define the stack top address
    mov     sp, r0                  
    bl      _start                                  @ Jump to main program

@ Program entry

.thumb_func
.global _start
_start:

loop:
    b loop
