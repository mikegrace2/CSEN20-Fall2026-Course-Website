.global _start
_start:			// Program Starts Here
		
				LDR	R0,=x		// R0 <-- &x        (get the address of x)
				LDR	R0,[R0]		// R0 <-- x       	(load the value of what R0 points)
				ADD	R0,R0,#5	// R0 <-- R0 + 5  	(add 5)
				LDR	R1,=y		// R1 <-- &y        (get the address of y) 
				STR	R0,[R1]		// R0 --> y         (store R0 to address of y)
		
stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
				.align 4
x: 				.word 0x1000
y:				.word 0x0