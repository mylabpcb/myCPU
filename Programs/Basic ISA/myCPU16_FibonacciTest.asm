#include "rules/myCPU16_rules.asm"
#once

;constants
TMP_RESULT_ADDR = 0x0F

start:

reset:
    ldi 1
    out
    sta TMP_RESULT_ADDR
loop:
    add TMP_RESULT_ADDR
    jc reset
    out
    sta TMP_RESULT_ADDR
    mba
    jmp loop
