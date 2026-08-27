funcIV:	ADD	R3,R0,#0x10
		ADD	R5,R4,R0
		BL	FuncIII
		ADD	R6,R5,R0
		ADD	R12,R2,R1
		BL	FuncII
		ADD	R0,R12,R6
		BX	LR


funcV:			// ret R0                 R0
				// int32_t funcV(int32_t kirk){    
				//     return kirk + funcVI(3, kirk);
				// }
				PUSH	{LR,R4}		// Because we are using R4 and we are calling another function inside our function
				
				MOV		R4,R0		// save original R0 somewhere save
				MOV		R1,R0		// Move R0 to R1
				LDR		R0,=3		// Load #3 into R0
				
				BL		funcIV		// call function
				ADD		R0,R0,R4	// Add result together with R4 (kirk)
				
				POP		{LR,R4}
				BX		LR

.global _start	// Arbitrary main function. DO NOT Implement in midterm/quiz
_start:			// Program Starts Here
				PUSH	{LR}
				
				LDR		R0,=0x100
				BL		funcV				// call form function
				
				POP		{LR}				
stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
	
				.data // Data Section of this program simply filled with some arbitrary test data examples
				.align 4
byteArray:		.byte  0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff // byte array 16 bytes
				.align 4
shortArray:		.short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff	// short arrat 8 shorts
				.align 4
wordArray:		.word 0x11223344,0x55667788,0xaabbccdd,0xaabbccdd,0x11112222,0x33334444,0x11112222,0x33334444 // word array 8 32 bit each
				.align 4
stringArray:	.string "ABDferkdhslahd347129837" // some arbitrary string