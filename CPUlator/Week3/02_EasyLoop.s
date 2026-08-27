.global _start
_start:
		MOV	R0,#3
		LDR R1,=0x00000060
Loop:
		LDR R2,[R1,#4]!
	
		SUB R0,R0,#1
		CMP R0,#0
		BNE Loop
	
stop: 	b 		stop	
	
	
	
	
	
	
	
	
	
	
	
	