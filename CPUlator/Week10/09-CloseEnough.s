CloseEnough: 		// S0 = x, S1 = y, S2 = threshold
		VSUB.F32	S0,S0,S1		// S0 = x - y
		VABS.F32	S0,S0			// S0 = | x – y |
		VCMP.F32	S0,S2			// | x – y | < threshold
		VMRS		APSR_nzcv,FPSCR	// Core Flags ? FPU Flags
		ITE	LT
		MOVLT		R0,#1			// Return 1 if LT (close enough)
		MOVGE		R0,#0			// Return 0 if GE (not close enough)
		BX			LR


.global _start
_start:
		LDR 		R12,=one
		VLDR		S0,[R12]
		LDR			R12,=two
		VLDR		S1,[R12]
		LDR			R12,=three
		VLDR		S2,[R12]
		
		BL 			CloseEnough
		
stop:	B			stop

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0