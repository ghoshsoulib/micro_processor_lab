
lda 2500h
mvi B,00h
mvi C,08h	;assuming the number to be 8 bit 
l1: rrc
	jnc skip
	inr B
	skip: dcr C
	jnz l1
mov A,B
sta 2510h
mvi A,08h
sub B
sta 2511h
hlt