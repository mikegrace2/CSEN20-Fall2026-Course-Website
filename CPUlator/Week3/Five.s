.global _start
_start:
		//                                                 R0          R1          R2
		//uint32_t __attribute__((weak)) XPlusGCD(uint32_t x, uint32_t y, uint32_t z){
    	//	return x + gcd(y, z);
    	//}
	
		PUSH {R4,LR}
		MOV	R4,R0
	
		MOV R0,R1
		MOV R1,R2
		BL gcd
	
		ADD R0,R0,R4
	
		POP {R4,LR}
		BX LR
	
stop: 	B stop	
	