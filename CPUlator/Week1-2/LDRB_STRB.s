.global _start
_start:
		LDR 	R0,=0x00000060
		LDR     R1,=0xffffffff
		LDRB	R1,[R0]
		
		LDR 	R0,=0x00000080
		LDR		R1,=0x11223344
		STRB    R1,[R0]

stop: 	b 		stop
	
	