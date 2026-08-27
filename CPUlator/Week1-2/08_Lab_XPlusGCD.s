gcd:		// Only a simmulation Secret function
			ADD		R0,R0,R1
			BX		LR

			// uint32_t XPlusGCD(uint32_t x, uint32_t y, uint32_t z) { 
			//    return (uint32_t) (x + gcd(y, z)) ; 
			//}
XPlusGCD: 	// OUR Function to implement - calls gcd
			// We will call another function and we need to copy one parameter to R4
			PUSH	{R4,LR}
        	MOV		R4,R0	// we need R0 later again
         	MOV		R0,R1   // move it to the right register
         	MOV		R1,R2	//   "         "    "      "
			BL 		gcd
			ADD		R0,R0,R4

			POP		{R4,LR}
			BX		LR

.global _start // main CCCCCCC-program main
_start:		LDR 	R0,=x
			LDR 	R0,[R0]
			
			LDR 	R1,=y
			LDR 	R1,[R1]
			
			LDR 	R2,=z
			LDR 	R2,[R2]
			
			BL		XPlusGCD
	
stop: 		b stop			// End program

		// ----------------------------------------------------------------------------
		// Variables in memory --------------------------------------------------------
		.section .data
		.align	4
x:      .word   0x1
y:		.word	0x2
z:		.word 	0x3
