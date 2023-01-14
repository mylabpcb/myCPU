#include "mycpu_rules.asm"
#once

_init:
    lda 13
    inc 1
    sta 13
    lda 14
    sub 15
    sta 14
    jz end
    jmp _init
end:
    lda 13
    out
    hlt
    nop