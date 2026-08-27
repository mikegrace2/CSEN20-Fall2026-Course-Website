.global _start
_start:
	LDR R0,=0b11110000
	EOR R0,R0,#1
	
stop: B stop

	