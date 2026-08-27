hammer:		// First Version
	LSL		R1,R1,#2
	SMULL 	R0,R1,R0,R1
	LSR		R0,R0,#16
	ORR		R0,R0,R1,LSL#16
	BX		LR

.global _start	// 2.5 * 4   = 10.0
_start:			// 10  * 2.5 = 25.0
				//             25 = 0b 0001 1001 = 0x 0019 0000
	LDR  			R0,=no2
	LDR             R0,[R0]
	LDR  			R1,=no2
	LDR             R1,[R1]
	BL              hammer

stop: B stop
	
.data
no1: .word 0b00000000000000011000000000000000 // = 1.5
no2: .word 0b00000000000000101000000000000000 // = 2.5	