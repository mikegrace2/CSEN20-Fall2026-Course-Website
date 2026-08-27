.global _start
_start:
		LDR R0,=x
		LDR	R0,[R0]
	
		CMP	R0,#0
		BEQ	L1 
		CMP	R0,#9
		BNE	L1
		
		// THEN - all LED's on
		LDR R0,=0xff200000
		LDR R1,=(512+128+32+8+2+256+64+16+4+1)
		STR R1,[R0]
		B   stop		
		
L1: 	// ELSE - all LED's off
		LDR R0,=0xff200000
		LDR R1,=0
		STR R1,[R0]

stop: 	B stop

.data
x: .word 9
	
	