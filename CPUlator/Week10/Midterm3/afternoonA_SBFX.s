.global _start
_start:
	LDR R0,=number
	LDR R0,[R0]
	
	//SBFX R1,R0,#8,#8
	LSR R0,R0,R0
	AND R0,R0,#0xff

stop: B stop

.data
number: .word 0b11001100110011001010001111001100