.global _start
_start:
		LDR R0,=a	// load address of a
		LDR R1,=0	// set R1 to 0
		STR R1,[R0] // save R1 to a
	
loop: 	ADD R1,R1,#1	// add 1 to R1
		STR R1,[R0]		// save R1 to a

		CMP R1,#100		// compare R1 with 100
		BEQ stop		// if equal stop
		
		B loop			// otherwise continue with next it
		
stop:	B stop
	
.data
a: .word 0xffffffff
	
	