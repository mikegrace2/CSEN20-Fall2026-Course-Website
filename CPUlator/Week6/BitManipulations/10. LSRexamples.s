.global _start
_start:
	PUSH {R4-R11}
	
	LDR R0,=0xffffffff
	LSR	R1,R0,#4
	LSR	R2,R0,#8
	LSR	R3,R0,#12
	LSR	R4,R0,#16
	LSR	R5,R0,#20
	LSR	R6,R0,#24
	LSR	R7,R0,#28
	LSR	R8,R0,#32	

	PUSH {R4-R11}
stop: 	B stop
	
	