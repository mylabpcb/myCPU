#include "myCPU16_rules.asm"
#once

;set initial count value in 0xFF for example 1
;set initial value in 0xFE for example 255
;set initial value 0 in 0xFD
RESULT_ADDR = 0xFD
COUNT_ADDR = 0xFE

_init:
    lda RESULT_ADDR
    inc 1
    sta RESULT_ADDR
    lda COUNT_ADDR
    sub 15
    sta COUNT_ADDR
    jz end
    jmp _init
end:
    lda RESULT_ADDR
    out
    hlt