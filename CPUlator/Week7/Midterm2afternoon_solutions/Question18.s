.global _start
_start:
	LDR R0,=0b11111111
	MVN R1,#1
	AND R2,R0,R1

stop: B stop
	
	