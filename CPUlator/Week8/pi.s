.global _start
_start:
	LDR R0,=pi
	VLDR S0,[R0]
	
	// Or
	//LDR R0,=pi
	//LDR R1,[R0]	
	//VMOV S0,R1
	
stop: B stop

.data
pi: .float 3.14159
	