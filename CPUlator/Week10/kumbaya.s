kumbaya:
	VMOV 			S0,R0
	VCVT.F32.U32	S0,S0
	VMUL.F32		S0,S0,S0
	BX              LR

.global _start
_start:
	LDR  			R0,=1000
	BL              kumbaya
	
stop: B stop