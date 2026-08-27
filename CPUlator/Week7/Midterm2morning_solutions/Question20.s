.global _start
_start:

		LDR 	R0,=0b11110000111100001111000011110000
		SBFX	R1,R0,#8,#9
		
stop: b stop