.global _start
_start:
			LDRSB	R0,=-1
			LDRB	R1,=-1
			LDRB	R2,=0xff
			UXTB	R2,R2

stop: 		B 		stop
	
	