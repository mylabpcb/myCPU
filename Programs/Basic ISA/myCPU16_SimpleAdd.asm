#include "rules/myCPU16_rules.asm"
#once

_init:
    lda 15
    add 14
    out
    hlt
