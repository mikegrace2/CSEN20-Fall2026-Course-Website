.global _start
_start:
	LDR R0,=number0
	LDR R0,[R0]
	LDR R1,=number1
	LDR R1,[R1]
	
	//BFI R1,R0,#24,#8
	ORR R0,R1,#31,#24

stop: B stop

.data
number0: .word 0b10111011
number1: .word 0b00000000001100110011001100110011