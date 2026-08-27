Discriminant: // S0 = a, S1 = b, S2 = c
	VMUL.F32	S3,S1,S1	// S1 = b*b
	LDR         R3,=four
	VLDR		S4,[R3]		// S3 = 4.0
	VMUL.F32	S5,S4,S0	// S3 = 4.0*a
	VMUL.F32	S6,S5,S2	// S3 = 4.0*a*c
	VSUB.F32	S7,S3,S6	// S0 = b*b – 4.0*a*c
	BX	LR


.global _start
_start:
	LDR R0,=one
	VLDR S0,[R0]
	LDR R1,=two
	VLDR S1,[R1]
	LDR R2,=three
	VLDR S2,[R2]
	
	BL Discriminant
	
stop: B stop

.data
one: 	.float 1.0
two: 	.float 2.0
three:	.float 3.0
four: 	.float 4.0
	