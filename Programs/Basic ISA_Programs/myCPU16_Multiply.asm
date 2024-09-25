#include "rules/myCPU16_rules.asm"
#once

; set initial multiplier in 0x0F for example 8
; set initial multiplicand in 0x0E to 9
; set initial result value 0 in 0x0D

; constants
RESULT_ADDR = 0x0D
MULTID_ADDR = 0x0E
MULTIP_ADDR = 0x0F

start:

loop:
    lda RESULT_ADDR
    add MULTID_ADDR
    sta RESULT_ADDR
    lda MULTIP_ADDR
    dec 1
    sta MULTIP_ADDR
    jnz loop
end:
    lda RESULT_ADDR
    out
    hlt