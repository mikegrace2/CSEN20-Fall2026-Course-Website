.global _start
_start:
			LDR R0,=0			// initialize n
			LDR R1,=n
			STR R0,[R1]

top:		LDR R0,[R1]			// load n from memory
			CMP	R0,#100			// compare
			BGE stop			// stop if greater or equal
			
			// Loop Body
			LDR R2,=0xff200020 // do something with the display
			STR R0,[R2]
			
			LDR	R0,[R1]			// load n
			ADD R0,R0,#1		// add one to n
			STR R0,[R1]			// store it back to memory
			B   top
						
stop: 		B stop

.data
n: .word    0xffff
	