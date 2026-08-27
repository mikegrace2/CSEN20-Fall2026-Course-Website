.global _start
_start:
	LDR R0,=0x87654321
	BFC R0,#8,#4
	
stop: B stop
	
	