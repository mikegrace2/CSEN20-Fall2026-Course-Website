kusalik:
	LSL		R1,R1,#1
	SMULL 	R0,R1,R0,R1
	LSR		R0,R0,#16
	ORR		R0,R0,R1,LSL#16
	BX		LR
	
kusalik2:
	LDR		R2,=2
	SMULL 	R1,R0,R1,R2
	LSR		R1,R1,#16
	ORR		R1,R1,R0
	SMULL	R0,R1,R0,R1
	LSR		R0,R0,#16
	ORR		R0,R0,R1

	BX		LR	

.global _start 	// Result = 2.5 * 2 = 5  
_start:        	// Result = 1.5 * 5 = 7.5  
               	// Result = 00078000
				// Result = 0001 1110 // 0.5 + 0.25 + 0.125

	LDR  			R0,=no1
	LDR             R0,[R0]
	LDR  			R1,=no2
	LDR             R1,[R1]
	BL              kusalik2
	
stop: B stop

.data
no1: .word 0b00000000000000011000000000000000 // = 1.5
no2: .word 0b00000000000000101000000000000000 // = 2.5