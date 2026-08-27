.global _start
_start:
		LDR 	R0,=0x11223344
		UXTB 	R0,R0
		LDR		R1,=0x00000050
		STRB    R0,[R1]

stop: 	b 		stop