peng:
	SMULL 	R0,R1,R0,R1
	LSR		R0,R0,#16
	ORR		R0,R0,R1,LSL#16
	LSR		R0,R0,#3
	BX		LR
	
peng2:
	SMULL 	R2,R3,R0,R1
	MOV		R2,R3,LSR#19
	MOV		R0,R2
	BX		LR

.global _start 	// Result = 1.5  * 2.5 = 3.75  
_start:        	// Result = 3.75 / 8.0 = 0.46875  
               	// Result = 
				// Result = 

	LDR  			R0,=no1
	LDR             R0,[R0]
	LDR  			R1,=no2
	LDR             R1,[R1]
	BL              peng2
	
stop: B stop

.data
no1: .word 0b00000000000000011000000000000000 // = 1.5
no2: .word 0b00000000000000101000000000000000 // = 2.5