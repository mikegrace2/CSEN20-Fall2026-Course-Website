someFunc:		ADD 	R0,R0,R1
				ADD		R1,R1,R0
				ADD		R2,R1,R0
				ADD		R3,R2,R2
				MOV		R0,R3
				BX		LR
	
				// uint8_t func13(uint8_t one, unit8_t two){
				//     return someFunc(two, one);
				// }
func13:			PUSH	{LR}
				MOV		R2,R0
				MOV 	R0,R1
				MOV		R1,R2
				BL		someFunc
				POP		{LR}
				BX		LR

.global _start	// Arbitrary main function. DO NOT Implement in midterm/quiz
_start:			// Program Starts Here
				PUSH	{LR}
				
				LDR		R0,=0x100
				LDR		R1,=0x200
				BL		func13
				
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