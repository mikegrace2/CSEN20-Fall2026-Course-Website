.global _start
_start:
	LDR R0,=x+5

stop: B stop
	
.data
x: .word 100