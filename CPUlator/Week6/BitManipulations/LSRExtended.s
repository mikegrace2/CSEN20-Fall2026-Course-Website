.global _start
_start:
	LDR R0,=0xff007fff
	LSR R2,R0,=0x22
	LSR R2,R2,#8
	ORR R1,R1,R2
	
stop:	B stop