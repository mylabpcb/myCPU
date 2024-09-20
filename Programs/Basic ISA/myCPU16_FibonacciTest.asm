#include "myCPU16_rules.asm"
#once

# Set initial value on 0xfe to 1

_init:
    lda 14
    sta 15
    add 15
    jc _init
    out
    sta 15
    mba
    jmp 2
