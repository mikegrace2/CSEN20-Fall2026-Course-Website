.global _start
_start:
	LDR	R0,=s32	// R0 <-- &s32
	LDR	R1,[R0]	// CMP requires operand to be in a register
	
	LDRLE 	R2,=0xff200000 // load the address 
	
	CMP		R1,#10	// Compare s32 to 10 and ...
	
	ITTEE	LE
	
	LDRLE 	R3,=0xffffffff
	STRLE 	R3,[R2]	
	
	LDRGT 	R3,=0x0
	STRGT 	R3,[R2]
	
stop: 	b stop	

.data
s32: .word 5
	