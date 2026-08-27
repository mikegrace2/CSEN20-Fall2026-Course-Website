.global _start
_start:
		LDR R0,=0			// i variable
		LDR R1,=0xffffff	// stop condition
	
Loop:	CMP	R0,R1			// if (R0 == R1)
		BEQ	stop 			// 		then stop
		
		// Do somethintg
		LDR R2,=0xff200020
		STR R0,[R2]
		
		// Loop
		ADD R0,R0,#1		// Add 1 to R1
		B   Loop			// jump back to loop start

stop: 	B stop
	
	