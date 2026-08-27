.global _start
_start:	
		PUSH	{R4,R5}
		
		LDR 	R0,=a
		LDRB 	R1,[R0]
		UXTB	R1,R1		
		
		LDR 	R2,=b
		LDRH	R3,[R2]
		UXTH	R3,R3
		
		LDR		R4,=c
		LDR		R5,[R4]
		
		POP		{R4,R5}

stop: 	b stop	

		// ----------------------------------------------------------------------------
		// Variables in memory --------------------------------------------------------
		.section .data
		.align	4
a:      .byte   0xaa
		.align	4
b:		.hword	0xbbbb
		.align	4
c:		.word 	0xcccccccc