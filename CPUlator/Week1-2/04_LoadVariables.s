.global _start
_start:	
		PUSH	{R4-R9}

		LDR 	R0,=a		// load the address of variable a into R0
		LDRB 	R1,[R0]		// load the value, of what R0 as [address] is pointing to in memory, into R1
		
		LDR 	R2,=b
		LDRH	R3,[R2]
		
		LDR		R4,=c
		LDR		R5,[R4]
		
		LDR		R7,=d
		LDRD	R8,R9,[R7]
		
		//LDR R3,=0xff200000	// load the address of the LED into R3
		//STR R1,[R3]			// store the value of R0 into what R3 is pointing to
		
		POP		{R4-R9}

stop: 	b stop	

		// ----------------------------------------------------------------------------
		// Variables in memory --------------------------------------------------------
		.section .data
		.align	4
a:      .byte   0xaa		// 8 bit byte "unsigned int a=0xaa;"
		.align	4
b:		.hword	0xbbbb		// 16 bit half word "unsigned int b=0xbbbb;"
		.align	4
c:		.word 	0xcccccccc	// 32 bit word - this represents in c "int c=0xcccccccc;"
		.align	4
d:		.quad 	0xEEEEEEEEDDDDDDDD // 64 bit double word "unsigned long int d=0xEEEEEEEEDDDDDDDD;"
