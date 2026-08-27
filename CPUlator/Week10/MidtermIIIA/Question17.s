remidemi:	SMULL 	R0,R1,R0,R1
			LSR   	R0,R0,#16
			LSL   	R1,R1,#16
			ORR   	R0,R0,R1
			ADD		R0,R0,R2
			BX		LR

.global _start
_start:
			LDR 	R0,=number1
			LDR 	R0,[R0]
			LDR 	R1,=number2
			LDR 	R1,[R1]
			LDR 	R2,=number3
			LDR 	R2,[R2]
			BL		remidemi
	
stop: 		B stop

.data
number1: .word 0b00000000000000110000000000000000 // Q16.16 = 3.0
number2: .word 0b00000000000000100000000000000000 // Q16.16 = 2.0
number3: .word 0b00000000000000011000000000000000 // Q16.16 = 1.5