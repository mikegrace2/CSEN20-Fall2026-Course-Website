AreaOfTriangle:
		// A = (d ^ 2) / 2
		SMULL	R0,R1,R0,R1	// 
		LSR		R0,R0,#16	// Extract middle 32 bits
		ORR		R0,R0,R1,LSL #16
		LSR		R0,R0,#1	// 2
		BX		LR

.global _start
_start:
		MOV		R0,#0b00000000000000111100000000000000 // =  3.75
		        // 0x    0   0   0   3   C   0   0   0     
		MOV		R1,#0b00000000000000011000000000000000 // =  1.50
		        // 0x    0   0   0   1   8   0   0   0     				
		BL 		AreaOfTriangle
				// Return Value
				// 0x    0   0   0   2   D   8   0   0
				//  0b000000000000001011010000000000000 // = 2.8125
		
stop:	B stop