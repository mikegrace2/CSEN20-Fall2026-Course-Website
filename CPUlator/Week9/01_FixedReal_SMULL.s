.global _start
_start:
	// this is usually given
	LDR R0,=number1
	LDR R0,[R0]
	LDR R1,=number2
	LDR R1,[R1]
	
	//   LSW,MSW
	SMULL R0,R1,R0,R1   // R0 = c0000000 R1 = 0000000c 
	LSR   R0,R0,#16     // right shift c000000 by 16 => 0000c000
	LSL   R1,R1,#16		// left shift  0000003 by 16 => 00030000
	ORR   R2,R0,R1		// ORR R0 and R1 together
	
stop: B stop

.data
number1: .word 0b00000000000000011000000000000000 // Q16.16 = 1.5
number2: .word 0b00000000000000101000000000000000 // Q16.16 = 2.5