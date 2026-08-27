.global _start
_start:
		LDR R0,=a		//
		LDR R1,[R0]		// int a=10;
		LDR R2,=b		//
		LDR R3,[R2]		// int b=0;

		CMP R1,#5		// if (a>=5)
		ITTEE HS		//
		LDRHS R3,=5		//     b=5;
		STRHS R3,[R2]	// 
		LDRLO R3,=12	// else
		STRLO R3,[R2]	//    b=12;
		
stop: 	B stop

.data
a: .word 5
b: .word 0
	
	