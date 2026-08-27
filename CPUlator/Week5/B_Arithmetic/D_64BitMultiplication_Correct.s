Mult64x64:		// R1.R0 = a, R3.R2 = b
				MUL		R1,R1,R2	// R1    = Ahi x Blo
				MLA		R1,R0,R3,R1	// R1   += Alo x Bhi
				UMULL	R0,R2,R0,R2	// R2.R0 = Alo x Blo
				ADDS	R1,R1,R2	// R1   += MSHalf of Alo x Blo
				BX		LR


.global _start
_start:			// Program Starts Here
				PUSH 	{R4-R11,LR}
				
				LDR		R4,=wordArray
				LDRD	R0,R1,[R4,#0]
				LDRD	R2,R3,[R4,#8]
				BL		Mult64x64
				
				LDRD	R0,R1,[R4,#16]
				LDRD	R2,R3,[R4,#24]
				BL		Mult64x64

				POP		{R4-R11,LR}
stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
	
				.data // Data Section of this program simply filled with some arbitrary test data examples
				.align 4
byteArray:		.byte  0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff // byte array 16 bytes
				.align 4
shortArray:		.short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff	// short arrat 8 shorts
				.align 4
wordArray:		.word 0x11111111,0x22222222,0x22222222,0x11111111,     0x11112222,0x22221111,0x11112222,0x22221111 // word array 8 32 bit each
				.align 4
stringArray:	.string "ABDferkdhslahd347129837" // some arbitrary string