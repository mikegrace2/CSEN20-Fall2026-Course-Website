helium:		SMULL 	R0,R1,R0,R1
			LSR   	R0,R0,#16
			LSL   	R1,R1,#16
			ORR   	R0,R0,R1
			SUB		R0,R0,R2
			BX		LR

.global _start
_start:
			LDR 	R0,=gerald
			LDR 	R0,[R0]
			LDR 	R1,=carl
			LDR 	R1,[R1]
			LDR 	R2,=bob
			LDR 	R2,[R2]
			BL		helium
	
stop: 		B stop

.data
gerald: 	.word 0b00000000000000110000000000000000 // Q16.16 = 3.0
carl: 		.word 0b00000000000000101000000000000000 // Q16.16 = 2.5
bob: 		.word 0b00000000000000011000000000000000 // Q16.16 = 1.5