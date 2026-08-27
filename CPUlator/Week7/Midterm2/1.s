.global _start
_start:
		LDR R0,=a
		LDR R0,[R0]
		
		LDR R1,=100 // do something
	
loop:	CMP R0,#100
		BEQ stop
		
		SUB R1,R1,#1 // do something
		
		ADD R0,R0,#1
		B loop

stop: 	b stop


.data
a: .word 0
	
	