VolumeOfSphere: // S0 = radius
		VMUL.F32	S1,S0,S0	// S1 = radius * radius
		VMUL.F32	S0,S0,S1	// S0 = radius * radius * radius
		LDR			R0,=factor
		VLDR		S1,[R0]	// S1 = (4.0/3.0)*3.14159
		VMUL.F32	S0,S0,S1	// S0 = ((4.0*3.14159)/3.0)*radius^3
		BX	LR


.global _start
_start:
		LDR 	R0,=one
		VLDR 	S0,[R0]
		BL 		VolumeOfSphere

stop:	B stop

.data
one:   	.float 1.0
factor:	.float	4.18879	// (4.0/3.0)*3.14159
