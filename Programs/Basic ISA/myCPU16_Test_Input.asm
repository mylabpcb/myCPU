#include "myCPU16_rules_ldp.asm"
#once

;set initial value 1 in 0xFF
;set initial value 0 in 0xFD
RESULT_ADDR = 0xFD
COUNT_ADDR = 0xFE

start:
    ldp COUNT_ADDR
loop:
    lda RESULT_ADDR
    inc 1
    sta RESULT_ADDR
    lda COUNT_ADDR
    sub 15
    sta COUNT_ADDR
    jz end
    jmp loop
end:
    lda RESULT_ADDR
    out
    hlt