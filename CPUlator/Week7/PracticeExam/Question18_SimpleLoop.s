.global _start
_start:
		LDR R0,=100
		LDR R1,=0    // do something
		
Loop:	CMP R0,#0
		BEQ stop
		
		ADD R1,R1,#1  // do something
		
		SUB R0,R0,#1
		B Loop

stop: 	B stop

	
	