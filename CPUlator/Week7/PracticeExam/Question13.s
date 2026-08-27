.global _start
_start:
	//z = r + 10
	LDR R1,=z
	LDR R2,[R1]
	
	LDR R3,=r
	LDR R4,[R3]
	
	LDR R5,=10
	ADD R6,R4,R5
	STR R6,[R1]

stop: B stop

.data
z: .word 0
r: .word 20
	
	
	