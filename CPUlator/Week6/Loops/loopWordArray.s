.global _start
_start:
	LDR	R0,=array4
	LDR R1,=0
loop:
	CMP R1,#6
	BEQ stop
	
	LDR R2,[R0,R1,LSL#2]
	
	ADD R1,R1,#1
	B loop
	
stop: B stop
	
.data
array4: .word 0x11223344,0x55667788,0x99aabbccdd,0xaabbccdd,0x11112222,0x33334444
	
	