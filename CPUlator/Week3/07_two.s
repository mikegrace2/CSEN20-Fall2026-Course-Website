.global _start
_start:
	LDR R0,=pps16
	LDR R1,=array4
	STR R1,[R0]
	
	LDR						R0,=pps16
	//                      R0
	//int16_t foo(int16_t **pps16){
	//	return **pps16 ;	// Parsed as *(*pps16)
	//}
	LDR		R0,[R0]			// R0 =  *pps16
	
	LDRH	R1,[R0,#0]		// R1 = **pps16 + 0
	LDRH 	R2,[R0,#2]		// R2 = **pps16 + 1
	LDRH 	R3,[R0,#4]		// R3 = **pps16 + 2
	LDRH 	R4,[R0,#6]		// R4 = **pps16 + 3
	LDRH 	R5,[R0,#8]		// R5 = **pps16 + 4
	LDRH 	R6,[R0,#10]		// R6 = **pps16 + 5
	LDRH 	R7,[R0,#12]		// R7 = **pps16 + 6
	LDRH 	R8,[R0,#14]		// R8 = **pps16 + 7
	
stop: B stop
	
.data
pps16:  .word  0x00000000
array4: .short 0x1122,0x3344,0x5566,0x7788,0x99aa,0xbbcc,0xddee,0xffff