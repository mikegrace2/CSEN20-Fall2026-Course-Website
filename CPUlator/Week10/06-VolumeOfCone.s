AreaOfCircle: // S0 = radius 
		VMUL.F32	S0,S0,S0	// S0 = radius*radius
		LDR			R0,=pi		// S1 = 3.14159
		VLDR     	S1,[R0]
		VMUL.F32	S0,S0,S1	// S0 = 3.14159*radius*radius
		VMOV		S2,#2.0
		VMUL.F32	S0,S0,S2
		BX			LR

VolumeOfCone: 	// S0 = radius, S1 = height
		PUSH		{R4,LR}			// Preserve R4 and LR
		VMOV		R4,S1			// R4 = height (S1 could be used 
		BL			AreaOfCircle	// S0 = area of base of cone
		VMOV		S1,R4			// S1 = height
		VMUL.F32	S0,S0,S1		// S0 = height * (area of base)
		VMOV		S1,3.0			// S1 = 3.0
		VDIV.F32	S0,S0,S1		// S0 = (height * (area of base))/3.0
		POP			{R4,PC}			// Restore R4 and return

.global _start
_start:
		LDR 	R12,=one
		VLDR	S0,[R12]
		LDR		R12,=two
		VLDR	S1,[R12]
		
		BL 		VolumeOfCone
		
stop:	B		stop

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0
pi:    .float 3.14159