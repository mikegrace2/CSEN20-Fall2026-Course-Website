.global _start
_start:
			LDR 	R0,=0x00000011
			LDR 	R1,=0x00000022
			LDR 	R2,=0x00000033
			LDR 	R3,=0x00000044
			
			LDR 	R4,=0x00000055
			LDR 	R5,=0x00000066
			LDR 	R6,=0x00000077
			LDR 	R7,=0x00000088
			
		
RealStart:	PUSH 	{R4-R7}
			ADD		R4,R0,R0
			ADD		R5,R0,R0
			ADD		R6,R0,R0
			
			ADD		R7,R0,R0
			POP		{R4-R7}
			BX		LR
			
stop: 		B 		stop