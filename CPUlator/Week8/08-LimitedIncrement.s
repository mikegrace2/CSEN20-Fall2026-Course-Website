LimitedIncrement: 	// S0 = a, S1 = b
		VCMP.F32	S0,S1			// a < b ?
		VMRS		APSR_nzcv,FPSCR	// Core Flags ? FPU Flags
		ITT	LT
		VMOVLT		S1,1.0			// S1 = 1.0
		VADDLT.F32	S0,S0,S1		// S0 = a + 1.0
		BX	LR


.global _start
_start:
		LDR 		R12,=one
		VLDR		S0,[R12]
		LDR			R12,=two
		VLDR		S1,[R12]
		
		BL 			LimitedIncrement

stop:	B			stop

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0