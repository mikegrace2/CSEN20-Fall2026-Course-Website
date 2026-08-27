.global _start
_start:			// Program Starts Here
				LDR		R0,=shortArray	// get the address from the shortArray
				LDR		R1,=0			// i=0;

Loop:			CMP		R1,#16			// if (i == 16) 
				BEQ		stop			// 		break loop;
				
				LDRH 	R2,[R0,R1]		// get the next element from the short array
				
				ADD		R1,R1,#2		// updated index i=i+2
				B		Loop

stop: B stop	// Program stops here ------------------------------------------------------------------------------------------------------
	
				.data // Data Section of this program simply filled with some arbitrary test data examples
				.align 4 // align addresses to 64 bits
byteArray:		.byte  0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff // byte array 16 bytes
				.align 4 // align addresses to 64 bits
shortArray:		.short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff	// short arrat 8 shorts
				.align 4 // align addresses to 64 bits
wordArray:		.word 0x11223344,0x55667788,0xaabbccdd,0xaabbccdd,0x11112222,0x33334444,0x11112222,0x33334444 // word array 8 32 bit each
				.align 4 // align addresses to 64 bits
stringArray:	.string "ABDferkdhslahd347129837" // some arbitrary string