brum:		// First Version
	LSR		R0,R0,#3
	SMULL 	R0,R1,R0,R1
	LSR		R0,R0,#16
	ORR		R0,R0,R1,LSL#16
	BX		LR
	
brum2:
	SMULL 	R2,R3,R0,R1
	MOV		R2,R3,LSR#19
	MOV		R0,R2
	BX		LR	

data: .word 0b00000000000010000000000000000000

.global _start	// 1.5    / 8.0 = 0.1875
_start:			// 0.1875 * 2.5 = 0.46875
				//             25 = 0b 0001 1001 = 0x 0019 0000
	LDR  			R0,=no1
	LDR             R0,[R0]
	LDR  			R1,=no2
	LDR             R1,[R1]
	BL              brum2

stop: B stop
	
.data
no1: .word 0b00000000000000011000000000000000 // = 1.5
no2: .word 0b00000000000000101000000000000000 // = 2.5	