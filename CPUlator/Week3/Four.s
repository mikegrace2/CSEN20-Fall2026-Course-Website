.global _start
_start:
		//                                                  R0          R1
		//uint32_t __attribute__((weak)) FactSum32(uint32_t x, uint32_t y){
    	//	return (uint32_t) Factorial(x + y) ;
    	//}
	
		ADD R0,R0,R1
		BL Factorial
		BX LR
	
stop:	B stop	