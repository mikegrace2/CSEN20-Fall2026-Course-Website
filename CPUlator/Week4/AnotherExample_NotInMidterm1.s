.global _start
_start:
	LDR R0,=one
	LDRB R1,[R0]
	ADD R0,R0,#4
	LDRB R2,[R0]
	
stop: b stop

.data
one: .word 0xff
two: .word 0x11
	
	
