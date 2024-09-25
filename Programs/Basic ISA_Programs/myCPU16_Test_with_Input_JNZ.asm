#include "rules/myCPU16_rules.asm"
#once

; set initial step value in 0x0F
; set initial result value 0 in 0x0F

; constants
RESULT_ADDR = 0xFD
COUNTER_ADDR = 0xFE
STEP_VALUE_ADDR = 0xFF

start:
    ldp COUNTER_ADDR
loop:
    lda RESULT_ADDR
    inc 1
    sta RESULT_ADDR
    lda COUNTER_ADDR
    sub STEP_VALUE_ADDR
    sta COUNTER_ADDR
    jnz loop
end:
    lda RESULT_ADDR
    out
    hlt