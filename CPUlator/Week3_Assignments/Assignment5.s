funcIV:			// Some arbitrary function. DO NOT Implement in midterm/quiz
				ADD		R0,R0,#0x10	// do some arbitrary calculation
				ADD		R1,R0,R0	// do some arbitrary calculation
				ADD		R2,R1,R0	// do some arbitrary calculation
				ADD		R3,R2,R1	// do some arbitrary calculation
				BX		LR


funcIII:		// ret R0                  R0          R1
				// int32_t funcIII(int32_t yi, int32_t er){  
				//     return funcIV(er + yi);
				// }
				PUSH	{LR}		// Because we are calling another function inside our function
				
				ADD		R0,R0,R1	// Add er + yi
				BL		funcIV		// call function
				
				POP		{LR}
				BX		LR

.global _start	// Arbitrary main function. DO NOT Implement in midterm/quiz
_start:			// Program Starts Here
				PUSH	{LR}
				
				LDR		R0,=0x100
				LDR		R1,=0x200
				BL		funcIII				// call form function
				
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