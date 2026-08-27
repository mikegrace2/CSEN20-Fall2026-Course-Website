.global _start
_start:
	LDR R0,=number0
	LDR R0,[R0]
	LDR R1,=number1
	LDR R1,[R1]
	
	//BFI R1,R0,#20,#8
	BIC R1,R1,#0x00ff0000
	LSL R0,R0,#20
	ORR R1,R1,R0

stop: B stop

.data
number0: .word 0b10111011
number1: .word 0b00110011001100110011001100110011