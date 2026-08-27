		//               = bar + (f * g) / h
		//          4.66 =  4  + (1 * 2) / 3
bar:	LDR			R12,=four
		VLDR		S0,[R12]
		BX			LR

foo:	PUSH 		{LR}
		VPUSH		{S16}
		VMUL.F32	S0,S0,S1	// f = f * g
		VDIV.F32	S0,S0,S2	// A = A + B
		
		VMOV 		S16,S0		// preserve S0 to S16
		
		BL			bar
		VADD.F32	S0,S0,S16
		
		VPOP		{S16}
		POP			{PC}
		
.global _start
_start:
		LDR 	R12,=one
		VLDR	S0,[R12]
		LDR		R12,=two
		VLDR	S1,[R12]
		LDR		R12,=three
		VLDR	S2,[R12]
		
		BL 		foo

stop: 	B 		stop

.data
one:   .float 1.0
two:   .float 2.0
three: .float 3.0
four:  .float 4.0