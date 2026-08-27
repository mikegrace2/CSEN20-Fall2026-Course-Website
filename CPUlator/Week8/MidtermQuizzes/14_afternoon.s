AreaOfASquareByDiagonal:
		// A = (d ^ 2) / 2
		SMULL	R0,R1,R0,R0	// 
		LSR		R0,R0,#16	// Extract middle 32 bits
		ORR		R0,R0,R1,LSL #16
		LSR		R0,R0,#1	// 2
		BX		LR

.global _start
_start:
		MOV		R0,#0b00000000000000111100000000000000 // =  3.75
		        // 0x    0   0   0   3   C   0   0   0     
		BL 		AreaOfASquareByDiagonal
				// Return Value
				// 0x    0   0   0   7   0   8   0   0
				//  0b00000000000001110000100000000000 // = 7.03125 which is correct
		
stop:	B stop