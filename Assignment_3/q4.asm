LDA 201EH
MOV D,A
LDA 201FH
MOV E,A
LXI H,3000H	;IT IS THE LOCATION1
LXI B,3010H	;IT IS LOCATION2
DCR D
LOOOP1: INX H
	INX B
	DCR D
	JNZ LOOOP1
LDA 201EH
MOV D,A
LOOOP2: MOV A,M
	STAX B
	DCX B
	DCX H
	DCR D
	JNZ LOOOP2
HLT