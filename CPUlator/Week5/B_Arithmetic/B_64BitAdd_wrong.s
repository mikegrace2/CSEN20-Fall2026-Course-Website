Add64:
				ADD		R0,R0,R2	// R0 = sum bits 31-0
				ADD		R1,R1,R3	// R1 = sum bits 63-32
				BX		LR			// Return

.global _start
_start:			// Program Starts Here
				PUSH 	{R4-R11}
				
				LDR		R4,=wordArray
				LDRD	R0,R1,[R4,#0]
				LDRD	R2,R3,[R4,#8]
				BL		Add64
				
				LDRD	R0,R1,[R4,#16]
				LDRD	R2,R3,[R4,#24]
				BL		Add64

				POP		{R4-R11}
stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
	
				.data // Data Section of this program simply filled with some arbitrary test data examples
				.align 4
byteArray:		.byte  0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff // byte array 16 bytes
				.align 4
shortArray:		.short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff	// short arrat 8 shorts
				.align 4
wordArray:		.word 0x11223344,0x33445566,0x22334455,0x55667788,0x11112222,0x33334444,0x11112222,0x33334444 // word array 8 32 bit each
				.align 4
stringArray:	.string "ABDferkdhslahd347129837" // some arbitrary string