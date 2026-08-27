.global _start
_start:
			MOV		R0,#1		// R0 = 1;
			MOV		R1,#2		// R1 = 2;
			MOV 	R2,#3		// R2 = 3;
			
			LDR 	R3,=-0xfffff// R3 = 4;
			LDR		R4,=5		// R4 = 5;
			LDR 	R5,=6		// R5 = 6;
			
			ADD 	R6,R0,R1	// R6 = R0 + R1
			MUL		R7,R1,R2	// R7 = R1 * R2
			SUB 	R8,R5,R4	// R8 = R5 - R4
			//SDIV	R9,R5,R2	// R9 = R5 / R2		// SDIV does not work with CPULator	

stop: 		b stop
	
	