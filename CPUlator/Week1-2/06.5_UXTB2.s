.global _start
_start:	
		PUSH {R4-R9}
		// one version LOAD a 32 bit WORD
		LDR R0, =a
		LDR R1,[R0]
		
		UXTB R2, R1
		UXTH R3, R1
		
		// other version, load 8 BIT or 16 BIT
		LDR  R4,=b
		LDRB R5,[R4]
		UXTB R6,R5
		
		LDR  R7,=c
		LDRH R8,[R7]
		UXTH R9,R8
		
		POP  {R4-R9}

stop: 	b stop	

		// ----------------------------------------------------------------------------
		// Variables in memory --------------------------------------------------------
		.section .data
		.align	4
a:		.word 	0x12345678
		.align	4
b:		.byte 	0xf5
		.align	4
c:		.hword  0xfedc