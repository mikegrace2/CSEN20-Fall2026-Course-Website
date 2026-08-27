func4: // example DO NOT IMPLEMENT
	PUSH {LR,R4-R11}
	MOV R4,R0
	ADD R0,R0,R1
	ADD R1,R0,R2
	ADD R2,R1,R3
	//BL  func10
	ADD R3,R2,R3
	LDR R0,=1
	LDR R1,=2
	LDR R2,=3
	LDR R3,=4
	POP {PC,R4-R11}

func3:
	PUSH {LR}
	MOV R1,R0
	LDR R0,=5
	BL func4
	ADD R0,R0,R1
	POP {PC}

.global _start
_start:
	LDR R0,=3
	BL	func3
	
stop: B stop