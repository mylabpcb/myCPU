#include "myCPU256_rules.asm"
#once


; Initialization
; set mem 0xFF to 1
; set mem 0xFE to 255
; set mem 0xFD to 0


_init:
    ldi 1
    sta 0xFF    ;initialize step
    ldi 255
    sta 0xFE    ;initialize loop value
    ldi 0
    sta 0xFD    ;initilize result counter
_loop:    
    lda 0xFD    ;load counter
    inc 1       ;increment counter
    sta 0xFD    ;save counter
    lda 0xFE    ;load loop value
    sub 0xFF    ;substract step
    sta 0xFE    ;save loop value
    jz end      ;jmp on zero
    jmp _loop   ;loop
end:
    lda 0xFD    ;load current counter value
    out
    hlt