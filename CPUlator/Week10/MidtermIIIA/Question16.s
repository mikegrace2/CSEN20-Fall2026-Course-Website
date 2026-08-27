torn:		VADD.F32		S0,S0,S1
			VCVT.U32.F32 	S0,S0
			VMOV			R0,S0
			BX				LR

.global _start
_start:
			LDR 	R12,=one
			VLDR	S0,[R12]
			LDR		R12,=two
			VLDR	S1,[R12]
		
			BL 		torn
		
stop:		B		stop		

.data
one:   		.float 1.0
two:   		.float 2.0