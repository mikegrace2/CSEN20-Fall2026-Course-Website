.global _start
_start:
	LDR	R0,=array4
	LDR	R1,=arrayT

	LDMIA R0!,{R2-R7}
	STMIA R1!,{R2-R7}
	
stop: B stop
	
.data
.align 4
array4: .word 0x11111111,0x55667788,0xaabbccdd,0xaabbccdd,0x11112222,0x33334444
.align 4
arrayT: .word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	
	