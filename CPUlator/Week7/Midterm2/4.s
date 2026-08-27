.global _start
_start:
	LDR R0,=0
	LDR R1,=100

L1:	ADD R0,R0,#1
	CMP R1,R0
	BHS stop
	
	B L1

stop: B stop
	