remainder:		// R0 <-- dividend R1 <-- divisor
				SDIV	R2,R0,R1	// R2=R0/R1
				MLS		R3,R1,R2,R0	// R3 = R0 – R1*R2
				BX		LR
				
.global _start
_start:			// Program Starts Here
				PUSH 	{R4-R11,LR}
				
				LDR		R0,=100
				LDR		R1,=10
				BL		remainder

				POP		{R4-R11,LR}
stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
	
				.data // Data Section of this program simply filled with some arbitrary test data examples
				.align 4
byteArray:		.byte  0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff // byte array 16 bytes
				.align 4
shortArray:		.short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff	// short arrat 8 shorts
				.align 4
wordArray:		.word 0x00001111,0x22222222,0x00002222,0x11111111,     0x11112222,0x22221111,0x11112222,0x22221111 // word array 8 32 bit each
				.align 4
stringArray:	.string "ABDferkdhslahd347129837" // some arbitrary string