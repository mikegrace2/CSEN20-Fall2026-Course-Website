.global _start
_start:
	LDR R0,=0x00000060 // initial address
	ADD R0,R0,#4
	LDR R1,[R0,#4] // add 4
	LDR R2,[R0],#4 // add 4
	
stop: b stop