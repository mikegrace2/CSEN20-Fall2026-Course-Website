.global _start
_start:
	LDR R0,=array1
	
	LDR R1,=2
	LDR R2,[R0,R1,LSL#2]
	LDR R1,=0
	LDR R3,[R0,R1,LSL#2]
	LDR R1,=1
	LDR R4,[R0,R1,LSR#2]

stop: B stop

.data
array1: .word 0x11223344
array2: .word 0x22334455
arraz3: .word 0xffeeccdd
	