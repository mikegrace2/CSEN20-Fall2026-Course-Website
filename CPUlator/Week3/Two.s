.global _start
_start:
	BL get8
	LDR R0,=save8
	LDRB R1,[R0]
	SXTB R1,R1

stop: B stop

.data
save8: .word 0b11111111 // signed 2's = -1
save9: .word 0xff
save10: .word 077

	