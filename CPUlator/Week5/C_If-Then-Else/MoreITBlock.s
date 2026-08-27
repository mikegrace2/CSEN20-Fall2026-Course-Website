.global _start
_start:
	// R0=one, R1=two
	CMP 	R0,#19
	BEQ		end
	// do something
	// do something
	
end: BX LR
	
	
	PUSH {R4}
	ITTT	EQ
	LDREQ	R2,=100
	MULEQ	R1,R1,R2
	SDIV	R0,R1,R0
	
	SMULL R1,R0,R3,R4
	UMULL R1,R0,R3,R4
	
	ADD 
	MUL  R0,R1,R2
	SDIV R0,R1,R2
	UDIV R0,R1,R2
	POP {R4}

	

	
	
	SDIV
	
	