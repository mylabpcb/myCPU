#include "rules/myCPU16_rules.asm"
#once

;set initial value for the loops in 0x0F when no input instruction used

;constants
LOOP_SIZE_ADDR = 0x0F
TMP_ADDR = 0x0E

start:
    ldp LOOP_SIZE_ADDR
init:
    lda LOOP_SIZE_ADDR
    sta TMP_ADDR               
loop1:                      ;begin main loop1
    lda TMP_ADDR
    out          
    dec 1
    jz init                 ;restart main loop1
    sta TMP_ADDR
    lda LOOP_SIZE_ADDR       
loop2:                      ;begin secondary loop2
    dec 1
    jz loop1                ;main loop1 iteration
    jmp loop2               ;secondary loop2 iteration
         

