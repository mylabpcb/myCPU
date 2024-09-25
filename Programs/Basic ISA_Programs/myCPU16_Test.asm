#include "rules/myCPU16_rules.asm"
#once

; set initial count value in 0x0F to 1
; set initial value in 0x0E to 255
; set initial result value 0 in 0x0D

; constants
RESULT_ADDR = 0x0D
COUNTER_ADDR = 0x0E
STEP_VALUE_ADDR = 0x0F

start:

loop:
    lda RESULT_ADDR
    inc 1
    sta RESULT_ADDR
    lda COUNTER_ADDR
    sub STEP_VALUE_ADDR
    sta COUNTER_ADDR
    jz end
    jmp loop
end:
    lda RESULT_ADDR
    out
    hlt