
.include "include/binary_header.s"

.syntax unified
.align 4
.cpu cortex-m33
.thumb

@ Program

.equ LED_PIN, 15
.equ LED_PIN_MASK, (1 << LED_PIN)
.equ LED_PAD_SETUP, 0x56                            @ 4mA pull-down Schmitt input

.thumb_func
.global _start
_start:

    bl gpio_initialize

blink_pattern:

    bl led_on
    bl delay

    bl led_off
    bl delay

    b blink_pattern

.thumb_func
led_on:
    ldr r0, =0xd0000000                             @ SIO register base address
    ldr r1, =LED_PIN_MASK
    str r1, [r0, #0x018]                            @ GPIO OUT SET
    bx lr

.thumb_func
led_off:
    ldr r0, =0xd0000000                             @ SIO register base address
    ldr r1, =LED_PIN_MASK
    str r1, [r0, #0x020]                            @ GPIO OUT CLEAR
    bx lr

.thumb_func
delay:
    ldr r0, =2000000

delay_loop:
    subs r0, r0, #1
    bne delay_loop

    bx lr

.thumb_func
gpio_initialize:
    push {lr}

    @ Release GPIO and Pads from reset (they start in reset state)
    @ First clear the reset bits to release peripherals from reset

    ldr r0, =0x40020000                             @ Resets register base address
    ldr r1, =(1 << 6)                               @ Resets IO bank 0
    ldr r2, =(1 << 9)                               @ Resets Pads bank 0
    orrs r1, r1, r2                                 @ Combining reset bits
    
    @ Clear reset bits to release from reset (NOT set them)

    ldr r3, [r0, #0x0]                              @ Read current reset register
    bics r3, r3, r1                                 @ Clear the reset bits for IO_BANK0 and PADS_BANK0
    str r3, [r0, #0x0]                              @ Write back to release from reset

    @ Wait until the GPIO and Pads reset release is completed

reset_wait:
    ldr r3, [r0, #0x8]                              @ Load reset done register into r3
    tst r3, r1                                      @ Test if reset done bits are set
    beq reset_wait                                  @ Wait until reset is complete (bits become 1)

    @ Setup a pad for LED pin

setup_pad:
    ldr r0, =0x40038000
    adds r0, r0, #0x04                              @ Skip PAD_CONTROL_VOLTAGE_SELECT
    movs r1, #LED_PIN                   
    lsls r1, r1, #2                                 @ Multiply LED_PIN number by 4 to get offset
    adds r0, r0, r1                                 @ Now r0 points to specific pad control register

    ldr r1, =LED_PAD_SETUP                  
    str r1, [r0]                                    @ Configure pad settings

    @ Setup GPIO function to SIO

setup_GPIO:
    ldr r0, =0x40028000
    movs r1, #LED_PIN
    lsls r1, r1, #3                                 @ Each GPIO offset is 8 so 3 left shifts
    adds r0, r0, r1             
    adds r0, r0, #0x04                              @ adds 4 to point CTRL not STATUS

    movs r1, #5                                     @ selects SIO (F5)
    str r1, [r0]

    @ Setup SIO - Enable GPIO as output

setup_SIO:
    ldr r0, =0xd0000000
    ldr r1, =LED_PIN_MASK
    str r1, [r0, #0x038]       @ Set output enable for LED pin

    pop {pc}
