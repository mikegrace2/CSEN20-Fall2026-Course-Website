rambazamba:		VADD.F32 	S0,S0,S0
				BX			LR

halucination:	PUSH		{LR}
				VPUSH		{S16}
				VMOV		S16,S0
				VMOV		S0,S1
				BL			rambazamba
				VSUB.F32	S0,S0,S16
				VPOP		{S16}
				POP			{PC}

.global _start
_start:
				LDR 	R12,=tor
				VLDR	S0,[R12]
				LDR		R12,=toise
				VLDR	S1,[R12]
			
				BL 		halucination
		
stop:			B		stop		

.data
tor:   			.float 1.0
toise: 			.float 2.0