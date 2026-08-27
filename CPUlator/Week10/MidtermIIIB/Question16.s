camel:		VSUB.F32		S0,S1,S0
			VCVT.S32.F32 	S0,S0
			VMOV			R0,S0
			BX				LR

.global _start
_start:
			LDR 	R12,=fox
			VLDR	S0,[R12]
			LDR		R12,=lion
			VLDR	S1,[R12]
		
			BL 		camel
		
stop:		B		stop		

.data
fox:   		.float 1.0
lion:   	.float 2.0