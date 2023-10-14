;-------------------------------------------------------------------------------------
;	Rules for myCPU256
;-------------------------------------------------------------------------------------
#ruledef
{
	nop         => 0x00
	lda {addr}  => 0x01 @ addr`8
	add {addr}  => 0x02 @ addr`8 
	sub {addr}  => 0x03 @ addr`8
	sta {addr}  => 0x04 @ addr`8
	ldi {value} => 0x05 @ value`8
	jmp {addr}  => 0x06 @ addr`8
	jc	{addr}  => 0x07 @ addr`8
	jz  {addr}  => 0x08 @ addr`8
	mro {addr}  => 0x09 @ addr`8
	mba         => 0x0A
	inc {value} => 0x0B @ value`8
	dec {value} => 0x0C @ value`8
	mrm         => 0x0D
	out			=> 0x0E
	hlt			=> 0x0F
	
}

