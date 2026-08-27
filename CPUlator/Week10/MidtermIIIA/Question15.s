car:		VADD.F32 	S0,S0,S0
			BX			LR

propane:	PUSH		{LR}
			VPUSH		{S16}
			VMOV		S16,S0
			VMOV		S0,S1
			BL			car
			VADD.F32	S0,S0,S16
			VPOP		{S16}
			POP			{PC}

.global _start
_start:
			LDR 	R12,=one
			VLDR	S0,[R12]
			LDR		R12,=two
			VLDR	S1,[R12]
		
			BL 		propane
		
stop:		B		stop		

.data
one:   		.float 1.0
two:   		.float 2.0