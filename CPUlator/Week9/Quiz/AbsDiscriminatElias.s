absDiscriminant:
	VMUL.F32 	S1,S1,S1
	VMUL.F32 	S0,S0,S2
	VADD.F32 	S0,S0,S0
	VADD.F32 	S0,S0,S0
	
	VSUB.F32 	S1,S1,S0
	VABS.F32 	S0,S1
	BX 			LR

.global _start
_start:
	LDR R0,=a
	VLDR S0,[R0]
	LDR R1,=b
	VLDR S1,[R1]
	LDR R2,=c
	VLDR S2,[R2]
	BL absDiscriminant
	
stop: B stop
	
.data
a: .float 1.0
b: .float 2.0
c: .float 3.0