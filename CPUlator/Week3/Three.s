.global _start
_start:
	LDR R0,=10
	LDR R1,=0
	
	BX LR

stop: B stop

.data
var: .word 0xfffff