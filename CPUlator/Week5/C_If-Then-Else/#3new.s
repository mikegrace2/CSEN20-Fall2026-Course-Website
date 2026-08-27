.global _start
_start:
	LDR	R4,=val1
	LDR	R4,[R4]	
	LDR R5,=val2
	LDR R5,[R5]
	
	CMP		R4,R5
	ITTEE	EQ
	ADDEQ	R7,R8,R9
	ASREQ	R7,R7,#1
	ADDNE	R7,R10,R11
	LSLNE	R7,R7,#1
	
stop: 	b stop	

.data
val1: .word 5
val2: .word 5
	