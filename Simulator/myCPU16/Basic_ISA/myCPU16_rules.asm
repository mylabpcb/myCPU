;-------------------------------------------------------------------------------------
;	Rules for myCPU16
;-------------------------------------------------------------------------------------
#ruledef
{
	nop         => 0x00
	lda {addr}  => 0x1 @ addr`4
	add {addr}  => 0x2 @ addr`4 
	sub {addr}  => 0x3 @ addr`4
	sta {addr}  => 0x4 @ addr`4
	ldi {value} => 0x5 @ value`4
	jmp {addr}  => 0x6 @ addr`4
	jc	{addr}  => 0x7 @ addr`4
	jz  {addr}  => 0x8 @ addr`4
	ldb {value} => 0x9 @ value`4
	mba         => 0xA0
	inc {value} => 0xB @ value`4
	dec {value} => 0xC @ value`4
	out			=> 0xE0
	hlt			=> 0xF0
	
}

