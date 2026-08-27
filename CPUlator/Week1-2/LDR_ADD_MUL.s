.global _start

_start:
	LDR   R0,=0x00000060
	LDR   R1,[R0]
	//LDRB  R1,[R0]
	//LDRSB  R1,[R0]
	//SXTB  R1,R1
	
	ADD   R1,R1,#1
	MUL	  R1,R1,R1
	
	LDR   R0,=0x00000070
	//STRB  R1,[r0]
	STR   R1,[r0]
	
stop: b stop
	