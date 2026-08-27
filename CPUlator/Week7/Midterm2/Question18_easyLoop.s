.global _start
_start:
	LDR R0,=55
	LDR R1,=a
	LDR R1,[R1]
	
loop: 	CMN R0,#1
		BEQ stop
		
		ADD R1,R1,#1
		
		SUB R0,R0,#1
		B loop
		
stop:	B stop
	
.data
a: .word 1