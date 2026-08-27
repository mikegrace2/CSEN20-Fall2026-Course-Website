Factorial:				// uint32_t Factorial(uint32_t n) {
						// R0=n, R1=result	    //     uint32_t result;

		LDR	R1,=1	    //     result = 1;	// initialization
top:	CMP	R0,#0	    //     while (n != 0) { // condition
		BEQ	done		//		

 		MUL	R1,R1,R0 	//         result *= n ;	// loopBody
		SUB	R0,R0,#1  	//         n = n – 1 ;	// update
		B	top			//     }

done:	MOV 	R0,R1	// 	return result ;
		BX	LR			// }


.global _start
_start:
		LDR R0,=5
		BL Factorial

stop: 	B stop

	
	