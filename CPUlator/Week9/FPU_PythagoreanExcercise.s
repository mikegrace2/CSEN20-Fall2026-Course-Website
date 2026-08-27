.global _start
_start:
	LDR  R0,=side1
	VLDR S0,[R0]
	LDR  R0,=side2
	VLDR S1,[R0]

	VMUL.F32 S0,S0,S0
	VMUL.F32 S1,S1,S1
	VADD.F32 S0,S0,S1
	VSQRT.F32 S0,S0
	
stop: B stop

.data
side1: .float 3.0
side2: .float 5.0
