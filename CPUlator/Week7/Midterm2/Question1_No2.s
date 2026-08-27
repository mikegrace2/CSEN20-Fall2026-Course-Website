.global _start
_start:
	LDR R0,=5
	LDR R1,=4
	
	CMP R0,#5
	BEQ sb
	MOV R1,#2
	B stop

sb: MOV R1,#1
	B stop

stop: B stop
	
	