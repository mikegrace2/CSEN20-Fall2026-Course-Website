.global _start
_start:
	LDR R0,=0x87654321
	LDR R1,=0xffffffff
	BFI R0,R1,#8,#4
	
stop: B stop
	
	