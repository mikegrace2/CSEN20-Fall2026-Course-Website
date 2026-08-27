.global _start
_start:
		//              2      2 2       1           0
		//		        9      2 0       2           0
		LDR 	R0,=0b11110000111100001111000011110000
		//		        1100 0011 = 0xc3
		SBFX	R1,R0,#22,#8
			
stop: 	B 		stop	
	
	