VolumeOfCube: // S0 = height, S1 = width, S2 = depth
		VMUL.F32	S0,S0,S1	// S0 = height * width
		VMUL.F32	S0,S0,S2	// S0 = height * width * depth
		BX	LR

.global _start
_start:
		LDR 	R12,=one
		VLDR	S0,[R12]
		LDR		R12,=two
		VLDR	S1,[R12]
		LDR		R12,=three
		VLDR	S2,[R12]
		
		BL 		VolumeOfCube
		
stop:	B		stop		

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0