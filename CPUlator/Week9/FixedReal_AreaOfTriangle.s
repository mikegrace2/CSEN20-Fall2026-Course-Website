AreaOfTriangle:
	SMULL	R0,R1,R0,R1		// R1.R0 = Q32.32 product b x h
	LSR		R0,R0,#16		// Extract middle 32 bits 
	ORR		R0,R0,R1,LSL#16
	LSR		R0,R0,#1		// Divide by 2
	BX		LR

.global _start
_start:
	// this is usually given
	LDR R0,=b
	LDR R0,[R0]
	LDR R1,=h
	LDR R1,[R1]
	BL  AreaOfTriangle
		
stop: B stop

.data
b: .word 0b00000000000000011000000000000000 // Q16.16 = 1.5
h: .word 0b00000000000000101000000000000000 // Q16.16 = 2.5