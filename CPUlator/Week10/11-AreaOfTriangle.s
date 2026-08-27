areaOfTriangle:		// S0 = base, S1 = height
		VMUL.F32 	S0, S0, S1   	// Multiply base * height    
		LDR			R12,=half
		VLDR		S2,[R12]		  
		VMUL.F32 	S0, S0, S2   	// Multiply result by 0.5 (divide by 2)    
		BX 			LR				// Return (result is in S0)


.global _start
_start:
		LDR			R12,=two
		VLDR		S0,[R12]
		LDR			R12,=five
		VLDR		S1,[R12]
		BL 			areaOfTriangle

stop:	B 			stop

.data
half:	.float  0.5
two:   	.float  2.0
five:  	.float 	5.0