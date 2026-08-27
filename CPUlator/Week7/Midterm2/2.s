.global _start
_start:
		LDR R0,=0
		LDR R1,=100

loop: 	CMP R0,R1
		BHI stop
		ADD R0,R0,#1
		B loop
		
stop:	B stop
	
	