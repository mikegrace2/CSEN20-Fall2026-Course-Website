Discriminant: // S0 = a, S1 = b, S2 = c
		VMUL.F32	S3,S1,S1	// S1 = b*b
		LDR         R3,=four
		VLDR		S4,[R3]		// S3 = 4.0
		VMUL.F32	S5,S4,S0	// S3 = 4.0*a
		VMUL.F32	S6,S5,S2	// S3 = 4.0*a*c
		VSUB.F32	S7,S3,S6	// S0 = b*b – 4.0*a*c
		BX	LR

ImaginaryRoots: // S0=a, S1=b, S2=c
		PUSH		{LR}
		BL			Discriminant	// S0 = b*b – 4.0*a*c
		
		VCMP.F32	S0,#0			// S0 < 0.0 ? // DOUBLE CHECK AND CHANGE
		VMRS		APSR_nzcv,FPSCR	// Core Flags <-- FPU Flags
		ITE	LT
		MOVLT		R0,#1			// Discriminant < 0:  return 1 (True)
		MOVGE		R0,#0			// Discriminant >= 0: return 0 (False)
		POP			{PC}

.global _start
_start:
		LDR 		R12,=one
		VLDR		S0,[R12]
		LDR			R12,=two
		VLDR		S1,[R12]
		LDR			R12,=three
		VLDR		S2,[R12]
		
		BL 			ImaginaryRoots
		
stop:	B			stop

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0
zero:  .float 0.0