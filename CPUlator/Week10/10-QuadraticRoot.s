Discriminant: // S0 = a, S1 = b, S2 = c
		VMUL.F32	S3,S1,S1		// S1 = b*b
		LDR         R3,=four	
		VLDR		S4,[R3]			// S3 = 4.0
		VMUL.F32	S5,S4,S0		// S3 = 4.0*a
		VMUL.F32	S6,S5,S2		// S3 = 4.0*a*c
		VSUB.F32	S7,S3,S6		// S0 = b*b ? 4.0*a*c
		BX	LR

QuadraticRoot: 		// S0 = a, S1 = b, S2 = c, R0 = minus
		PUSH		{R4-R6,LR}		// Preserve R4, R5, R6, LR
		VMOV		R4,S0			// Save S0 = a
		VMOV		R5,S1			// Save S1 = b
		MOV			R6,R0			// Save R0 = minus
		BL			Discriminant	// S0 = b*b ? 4*a*c
		VSQRT.F32	S0,S0			// S0 = sqrt(b*b ? 4*a*c)
		VMOV		S1,R5			// S1 = b
		VNEG.F32	S1,S1			// S1 = -b
		CMP			R6,#0			// minus? If minus = 0 then x+ root is returned 
		BEQ			Divide			// S0 = +sqrt(b*b ? 4*a*c)
		VNEG.F32	S0,S0			// S0 = -sqrt(b*b ? 4*a*c)
		
Divide:	VADD.F32	S1,S1,S0		// S1 = -b +/- sqrt(b*b ? 4*a*c)
		VMOV		S0,R4			// S0 = a
		LDR			R12,=two
		VLDR		S2,[R12]		// S2 = 2.0
		VMUL.F32	S0,S0,S2		// S0 = 2*a
		VDIV.F32	S0,S1,S0		// S0 = (-b +/- sqrt(b*b?4*a*c))/2*a
		POP			{R4-R6,PC}

.global _start
_start:
		LDR 		R12,=one
		VLDR		S0,[R12]
		LDR			R12,=two
		VLDR		S1,[R12]
		LDR			R12,=three
		VLDR		S2,[R12]
		LDR			R0,=1
		
		BL 			QuadraticRoot
		
stop:	B			stop		

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0