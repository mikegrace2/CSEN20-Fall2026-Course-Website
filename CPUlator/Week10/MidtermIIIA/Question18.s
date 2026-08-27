zorn:		SMULL 	R2,R3,R2,R3
			LSR   	R2,R2,#16
			LSL   	R3,R3,#16
			ORR   	R0,R2,R3
			ADD		R0,R0,R1
			BX		LR

.global _start
_start:
			LDR 	R0,=alpha
			LDR 	R0,[R0]
			LDR 	R1,=beta
			LDR 	R1,[R1]
			LDR 	R2,=gamma
			LDR 	R2,[R2]
			LDR 	R3,=delta
			LDR 	R3,[R3]			
			BL		zorn
	
stop: 		B stop

.data
alpha: 		.word 0b00000000000000111100000000000000 // Q16.16 = 3.75
beta: 		.word 0b00000000000000100000000000000000 // Q16.16 = 2.0
gamma: 		.word 0b00000000000000100100000000000000 // Q16.16 = 2.25
delta: 		.word 0b00000000000000100000000000000000 // Q16.16 = 2.0