.global _start
_start:
		LDR R0,=a
		LDR R1,[R0]
		LDR R2,=b
	
		CMP R1,#5
		ITTEE EQ
		LDREQ R3,=1
		STREQ R3,[R2]
		LDRNE R3,=2
		STRNE R3,[R2]

stop:	B stop

.data
a: .word 5
b: .word 4
	
	