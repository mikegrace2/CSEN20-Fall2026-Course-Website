.global _start
_start:
		LDR R0,=9
		LDR R1,=12
		
gcd:	CMP	R0,R1
		BEQ	stop
	
		ITE	HI
		SUBHI	R0,R0,R1
		SUBLS	R1,R1,R0

		B	gcd	

stop: 	B	stop
	
	