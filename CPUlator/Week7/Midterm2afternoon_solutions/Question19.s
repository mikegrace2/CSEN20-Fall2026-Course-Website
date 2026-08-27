.global _start
_start:
		LDR R0,=1		// load 1
		LDR R1,=a		// load address of a
		LDR R2,[R1]		// save 1 to a
	
loop: 	CMP R2,#55		// a <= 55?
		BEQ stop		// mope then stop
		
		ADD R2,R2,#1	// a++
		STR R2,[R1]		// a++
		
		B loop			// continue loop
		
stop:	B stop
	
.data
a: .word 0
	
	