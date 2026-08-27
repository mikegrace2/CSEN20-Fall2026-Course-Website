funk1D15:		SUB		R2,R2,#44
				STRH	R2,[R0,R1,LSL#1]
				BX		LR

.global _start	// Arbitrary main function. DO NOT Implement in midterm/quiz
_start:			// Program Starts Here
				PUSH	{LR}
				
				LDR		R0,=wordArray
				LDR		R1,=1
				LDR		R2,=2
				BL		func15
				
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