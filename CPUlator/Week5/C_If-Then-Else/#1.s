.global _start
_start:
	LDR	R0,=s32	// R0 <-- &s32
	LDR	R1,[R0]	// CMP requires operand to be in a register
	
	CMP	R1,#10	// Compare s32 to 10 and ...
	BLE	L1		// if (s32 <= 10) goto L1
	
	LDR R2,=0xff200000	// if it is bigger 10
	LDR R3,=0xffffffff
	STR R3,[R2]
	B   stop

L1: LDR R2,=0xff200000	// if it is less or equal 10
	LDR R3,=0x0
	STR R3,[R2]
	
stop: 	b stop	

.data
s32: .word 11
	