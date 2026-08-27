.global _start
_start:
	LDR                    R0,=array4
	//                     R0
	//int16_t foo(int16_t *ps16){ // pass a pointer
	//	return *ps16;	// dereference the pointer get the first element
	//}

	LDRH R1,[R0,#0]
	LDRH R2,[R0,#2]
	LDRH R3,[R0,#4]
	LDRH R4,[R0,#6]
	LDRH R5,[R0,#8]
	LDRH R6,[R0,#10]
	LDRH R7,[R0,#12]
	LDRH R7,[R0,#14]
	
stop: B stop
	
.data
array4: .short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff