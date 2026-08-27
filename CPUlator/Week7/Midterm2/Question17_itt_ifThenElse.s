.global _start
_start:
		LDR R0,=a
		LDR R1,[R0]
		LDR R2,=b
		LDR R3,[R2]
		
gcd:	CMP	R1,#10
		ITTT GT
		LDRGT R3,=-1
		STRGT R3,[R2]
		LDRLS R3,=-2
		STRLS R3,[R2]
	
stop: 	B	stop

.data
a: .word 2
b: .word -4