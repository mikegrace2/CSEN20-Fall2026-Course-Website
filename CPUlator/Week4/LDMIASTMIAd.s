.global _start
_start:
	PUSH {R4-R11}
	
	LDR R0,=0x10   		// load
	LDR R1,=0x2 	// store
	
	.rept 5000
	LDMIA {R2-R12},R0!
	STMIA {R2-R12},R1!
	.endr
	
	POP {R4-R11}
	
stop: 	B stop