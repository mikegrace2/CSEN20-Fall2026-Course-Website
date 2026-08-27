.global _start
_start:
			LDR R0,=30
			LDR R1,=24
			
gcd:		// uint32_t gcd(uint32_t u1, uint32_t u2) {
 			CMP	R0,R1			//	while (u1 != u2) {
			BEQ	done
			
			ITE	HI				//		if (u1 > u2)
			SUBHI	R0,R0,R1	//			u1 = u1 – u2;
								//		else
			SUBLS	R1,R1,R0	//			u2 = u2 – u1;
			B	gcd				//	}

done: 		B stop
								// }
stop: 		B stop
	