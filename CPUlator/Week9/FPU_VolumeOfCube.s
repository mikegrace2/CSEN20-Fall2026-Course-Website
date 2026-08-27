VolumeOfCube: // S0 = height, S1 = width, S2 = depth
	VMUL.F32	S0,S0,S1	// S0 = height * width
	VMUL.F32	S0,S0,S2	// S0 = height * width * depth
	BX	LR

.global _start
_start:
		LDR 	R0,=height
		VLDR	S0,[R0]
		LDR 	R1,=width
		VLDR	S1,[R1]
		LDR 	R2,=depth
		VLDR	S2,[R2]
		
		BL 			VolumeOfCube

stop:	B stop

.data
height:	.float	1.0
width:	.float	2.0
depth:	.float	3.0