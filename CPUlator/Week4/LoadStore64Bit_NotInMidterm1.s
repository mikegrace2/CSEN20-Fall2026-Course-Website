.global _start
_start:
	LDR 	R0,=one
	LDR 	R1,=one + 8
	LDRD 	R2,R3,[R0]
	STRD    R2,R3,[R1]
	
stop: B stop

.data
one: .word 0x11223344
two: .word 0x55667788