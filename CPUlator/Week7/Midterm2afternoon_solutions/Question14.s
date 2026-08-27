.global _start
_start:
	//PUSH {R4}
	
	LDR R0,=z
	LDR R1,=p
	LDR R2,[R1]
	
	LDR R3,=2
	MUL R4,R3,R2
	STR R4,[R0]

	//POP {R4}

stop: 	B stop

.data
z: .word 0
p: .word 2
	
	