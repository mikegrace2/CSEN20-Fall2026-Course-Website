.global _start
_start:
	LDR R0,=0b11110000
	EOR R1,R0,#1		// switch first bit
	
stop: B stop
	