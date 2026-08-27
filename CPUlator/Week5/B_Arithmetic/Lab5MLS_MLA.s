.global _start
_start:
		LDR R0,=10
		LDR R1,=5
		LDR R2,=1000
		LDR R3,=0
		MLS R3,R0,R1,R2 // R3=R2-(R0*R1)
		
		LDR R0,=10
		LDR R1,=5
		LDR R2,=1000
		LDR R3,=0
		MLA R3,R0,R1,R2 // R3=R2+(R0*R1)
		
stop: 	B stop			