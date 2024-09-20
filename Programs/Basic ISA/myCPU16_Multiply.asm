#include "myCPU16_rules.asm"
#once

_init:
    lda 13
    add 14
    sta 13
    lda 15
    dec  1
    sta 15
    jz _end
    jmp _init
_end:
    lda 13
    out
    hlt
