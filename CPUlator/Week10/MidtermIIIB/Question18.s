zauber:		SMULL 	R2,R3,R2,R3
			LSR   	R2,R2,#16
			LSL   	R3,R3,#16
			ORR   	R0,R2,R3
			SUB		R0,R0,R1
			BX		LR

.global _start
_start:
			LDR 	R0,=tim
			LDR 	R0,[R0]
			LDR 	R1,=struppy
			LDR 	R1,[R1]
			LDR 	R2,=daisy
			LDR 	R2,[R2]
			LDR 	R3,=duck
			LDR 	R3,[R3]			
			BL		zauber
	
stop: 		B stop

.data
tim: 		.word 0b00000000000000111100000000000000 // Q16.16 = 3.75
struppy:	.word 0b00000000000000110000000000000000 // Q16.16 = 3.0
daisy: 		.word 0b00000000000000100100000000000000 // Q16.16 = 2.250
duck: 		.word 0b00000000000000100000000000000000 // Q16.16 = 2.0