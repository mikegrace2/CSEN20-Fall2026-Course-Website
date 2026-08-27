.global _start
_start:
		LDR	R0,=x
		LDR	R1,=y
		
		LDR	R2,[R0]		
		ADD	R2,R2,#5
		
		STR	R2,[R1]
	
stop: B stop
	
.data
x: .word 4
y: .word 0
	