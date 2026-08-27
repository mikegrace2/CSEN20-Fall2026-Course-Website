func4: // example DO NOT IMPLEMENT
	PUSH {LR,R4-R11}
	MOV R4,R0
	ADD R0,R0,R1
	ADD R1,R0,R2
	ADD R2,R1,R3
	BL  func10
	ADD R3,R2,R3
	MOV R0,R3
	POP {LR,R4-R11}
	
	BX LR

.global _start
_start:
		//                         R0          R1           R2
		//	int32_t func1(int32_t uno, int32_t dos, int32_t tres){
        //		int32_t temp = func2(dos, 10);
		//      temp = temp + uno;
		// 		return temp;
		//}
		PUSH {R4, LR}
		MOV R4,R0
		MOV R0,R1
		LDR R1,=10
		BL func2
		ADD R0,R0,R4
		POP {R4,PC}	
		
stop: B stop