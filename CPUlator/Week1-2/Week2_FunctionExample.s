.global _start

myfunction2:
	PUSH {R4}
	MUL R0,R1,R2
	MUL R1,R1,R2
	MUL R3,R2,R2
	MUL R4,R1,R2
	POP {R4}
	BX LR

myfunction:
	PUSH {LR,R4}
	ADD R0,R0,R1
	ADD R0,R0,R2
	ADD R0,R0,R3
	SUB R4,R2,R1
	BL myfunction2
	POP {PC,R4}

_start: // simmulates the main C program
	LDR R0,=x
	LDR R0,[R0] // is 65
	LDR R1,=10
	LDR R2,=5
	LDR R3,=20
	
	BL myfunction
	// End of main C program
	
stop: B stop

.data
x: .word 65	// unsigned int
.end