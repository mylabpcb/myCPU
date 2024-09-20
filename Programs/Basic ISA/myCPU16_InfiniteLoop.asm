#include "myCPU16_rules.asm"
#once

;set initial value 255 in 0xFF
INIT_VAL_ADDR = 0xFF
TMP_ADDR = 0xFE

_init:
    lda INIT_VAL_ADDR
    sta TMP_ADDR               
loop1:
    lda TMP_ADDR            ;begin first loop
    out
    dec 1
    jz _init            ;restart main loopº
    sta TMP_ADDR
    lda INIT_VAL_ADDR  ;begin second loop
loop2:
    dec 1
    jz loop1            ;iteration to main loop
    jmp loop2           ;loop2 iteration
         

