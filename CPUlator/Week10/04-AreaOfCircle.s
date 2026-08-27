AreaOfCircle: // S0 = radius 
		VMUL.F32	S0,S0,S0	// S0 = radius*radius
		LDR			R0,=pi		// S1 = 3.14159
		VLDR     	S1,[R0]
		VMUL.F32	S0,S0,S1	// S0 = 3.14159*radius*radius
		LDR			R12,=two
		VLDR		S2,[R12]
		VMUL.F32	S0,S0,S2
		BX			LR

.global _start
_start:
		LDR			R12,=five
		VLDR		S0,[R12]
		//VMOV		S0,5.0
		BL 			AreaOfCircle

stop:	B stop

.data
pi:	   .float	3.14159	
two:   .float   2.0
five:  .float 	5.0