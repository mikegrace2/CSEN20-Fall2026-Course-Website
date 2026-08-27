.global _start
_start:
		LDR R0,=a
		LDR R1,[R0]
		LDR R2,=b
		LDR R3,[R2]
	
		CMP R1,#5
		BNE else
		
then:	LDR R3,=1
		STR R3,[R2]
		B stop
		
else:	LDR R3,=2
		STR R3,[R2]

stop:	B stop
.data
a: .word 10
b: .word 4
	
	