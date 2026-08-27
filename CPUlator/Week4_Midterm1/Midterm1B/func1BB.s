someOtherFunc:	ADD 	R0,R0,R1
				ADD		R1,R1,R0
				ADD		R2,R1,R0
				ADD		R3,R2,R2
				MOV		R0,R3
				BX		LR
	
				//                         R0          R1             R2            R3
				// int16_t func14(int16_t one, int16_t two, int16_t three, int16_t four){
				//    return someOtherFunc(three, four) – two;
				//}
func1BB:		PUSH	{LR,R4}
				MOV		R4,R0
				MOV 	R0,R1
				MOV		R1,R3
				BL		someFuncB
				SUB		R0,R0,R4
				POP		{LR,R4}
				BX		LR

.global _start	// Arbitrary main function. DO NOT Implement in midterm/quiz
_start:			// Program Starts Here
				PUSH	{LR}
				
				LDR		R0,=0x100
				LDR		R1,=0x200
				LDR		R2,=0x300
				LDR		R3,=0x400
				BL		func14
				
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