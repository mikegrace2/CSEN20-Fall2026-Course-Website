.global _start
_start:		// load addresses into R2 and R3
			LDR R2,=x
			LDR R3,=y
			
			LDR R0,=0			// initialize x and y
			STR R0,[R2]
			LDR R0,=1
			STR R0,[R3]

Top:		LDR R0,[R3]			// load n from memory
			CMP	R0,#1000		// compare
			BGE stop			// stop if greater or equal
			
			// Loop Body
			LDR R1,[R2]
			ADD R1,R1,R0
			
			LSL R0,R0,#1			
			STR R0,[R3]
			B   Top

stop: 		B stop

.data
x: .word    0xffff
y: .word    0xffff
	