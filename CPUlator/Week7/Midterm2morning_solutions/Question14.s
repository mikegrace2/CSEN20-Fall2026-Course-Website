.global _start
_start:
	//PUSH {R4}
	
	LDR R0,=k
	LDR R1,=t
	LDR R2,[R1]
	
	LDR R3,=2
	MUL R4,R2,R3
	STR R4,[R0]

	//POP {R4}

stop: 	B stop

.data
k: .word 0
t: .word 2
	
	