.global _start
_start: // C function parameter in R0, R1, R2, R3
		LDR R4,=100
		LDR R5,=100
		LDR R6,=100
		LDR R7,=100
		LDR R8,=100
		LDR R9,=100
		
		BL SquareRoot
	
		BX LR
	
stop: b stop