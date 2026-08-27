.global _start
_start:
		PUSH {R4-R11}
		LDR R0,=0xc8000000 	// vga address
		LDR R1,=0xffffffff	// fill with???
		LDR R2,=0x0000Efff	// SIZE
		LDR R3,=0			// index start 0
		LDR R4,=0x00000000	// copy from address
		
		// Short "Variable" example
		LDR R5,=myWord
		LDR R5,[R5]
		//LDR R5,myWord		// Offset issue
loop1:
		//LDR		R1,[R4, R3, LSL #2]
		//ADD     R1,R1,#1
		STR 	R1,[R0, R3, LSL #2]
		
		ADD		R3,R3,#1 // Current index
	
		CMP 	R2,R3
		BNE 	loop1
		
		POP {R4-R11}

stop: 	b stop

.data
myWord: .word 0x12345678
memory: .asciz "Memory is allocated here somehow"