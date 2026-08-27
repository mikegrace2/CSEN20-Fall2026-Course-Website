.global _start
_start:
	LDR R0,=x
	LDRB R1,[R0]
	SXTB R1,R1

stop: B stop

.data
x: .word 0b11111111 // signed 2's = -1
