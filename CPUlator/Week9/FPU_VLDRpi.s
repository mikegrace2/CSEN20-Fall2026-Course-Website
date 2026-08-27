.global _start
_start:
	LDR R0,=pi
	VLDR S0,[R0]
	
	// Or (long)
	LDR R0,=pi
	LDR R1,[R0]	
	VMOV S0,R1
	
	// Does not work!
	VLDR S0,=pi
	VLDR S0,[S0] // need an R register
	
stop: B stop

.data
pi: .float 3.14159