.global _start
_start:
		LDR R0,=a
		LDR R1,[R0]
		LDR R2,=b
		LDR R3,[R2]
		
gcd:	CMP	R1,#10
		BLS else
		
then:	LDR R3,=-1
		STR R3,[R2]
		B stop

else:	LDR R3,=-2
		STR R3,[R2]
	
stop: 	B	stop

.data
a: .word 22
b: .word -4