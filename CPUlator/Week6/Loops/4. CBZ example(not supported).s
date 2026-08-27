.global _start
_start:
		LDR R0,=0xffffff	// start from here and count down
	
Loop:	CBZ R0,stop			// if (R0 == R1)
		
		// Do somethintg
		LDR R2,=0xff200000
		LDR R3,=(512+128+32+8+2+256+64+16+4+1)
		STR R3,[R2]
		
		// Do something
		LDR R2,=0xff200000
		LDR R3,=0
		STR R3,[R2]
		
		// Loop
		SUB R0,R0,#1		// Add 1 to R1
		B   Loop			// jump back to loop start

stop: 	B stop
	
	