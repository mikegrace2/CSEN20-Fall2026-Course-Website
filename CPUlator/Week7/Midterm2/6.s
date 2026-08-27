.global _start
_start:
	LDR R0,=a
	LDR R0,[R0]
	LDR R1,=b
	LDR R1,[R1]
	
	CMP R0,#5
	ITE EQ
	SUBEQ R1,R1,#4
	SUBNE R1,R1,#3
	
stop: B stop
	
.data
a: .word 10
b: .word 4
	