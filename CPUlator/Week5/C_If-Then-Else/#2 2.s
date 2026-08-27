.global _start
_start:

	LDR 	R0,=s32  // R0 <-- &s32
	LDR		R0,[R0]	 // Is s32 > 0 ?
	CMP		R0,#1
	BNE		L2

	// statement #1
	LDR 	R2,=0xff200000
	LDR 	R3,=0x0000000f
	STR 	R3,[R2]	
	B		stop	// skip to end!
	
L2: CMP	R0,#2
	BNE	L3

	// statement #2
	LDR 	R2,=0xff200000
	LDR 	R3,=0x000000ff
	STR 	R3,[R2]		
	B		stop	// skip to end!
	
L3: CMP	R0,#3
	BNE	stop

	// statement #3
	LDR 	R2,=0xff200000
	LDR 	R3,=0x00000fff
	STR 	R3,[R2]
	B		stop	
		
stop: 	b stop	

.data
s32: .word 10