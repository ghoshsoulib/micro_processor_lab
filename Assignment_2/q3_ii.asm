LDA 204FH
MOV E,A
LXI H,2050H
MOV C,M
DCR E
L1: INX H
    MOV B,M
    MOV A,M
    SUB C
    JP L2
    MOV C,B
    L2: DCR E
    JNZ L1
MOV A,C
STA 204EH
HLT