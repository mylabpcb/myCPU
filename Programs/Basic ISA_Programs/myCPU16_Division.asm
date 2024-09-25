#include "rules/myCPU16_rules.asm"
#once

; The dividend must be divisible by divisor exactly
; set initial divisor value in 0x0F for example 3
; set initial dividend value  in 0x0E for example 81
; set initial value for quotient result 0 in 0x0D

; constants
RESULT_ADDR = 0x0D
DIVIDEND_ADDR = 0x0E
DIVISOR_ADDR = 0x0F

start:

loop:
    lda RESULT_ADDR
    inc 1
    sta RESULT_ADDR
    lda DIVIDEND_ADDR
    sub DIVISOR_ADDR
    sta DIVIDEND_ADDR
    jnz loop
end:
    lda RESULT_ADDR
    out
    hlt