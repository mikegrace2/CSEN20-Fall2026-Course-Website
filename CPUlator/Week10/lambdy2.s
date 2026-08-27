cami:	// do NOT implement it is given
		VMOV S0,1.0
		VMOV S1,1.25
		VMOV S2,1.5
		VMOV S3,2.0
		VMOV S4,2.5
		VMOV S5,3.0
		VMOV S6,3.25
		VMOV S7,3.5
		VMOV S8,1.0
		VMOV S9,1.25
		VMOV S10,1.5
		VMOV S11,2.0
		VMOV S12,2.5
		VMOV S13,3.0
		VMOV S14,3.25
		VMOV S15,3.5		
		BX   LR
	
lambdy:
		PUSH  	 {R4,LR}
		VMOV  	 R4,S0
		LDR   	 R0,=number1
		VLDR  	 S0,[R0]
		BL    	 cami
		VMOV	 S1,R4
		VADD.F32 S0,S0,S1
		POP      {R4,PC}
	
.global _start // do NOT implement it is given
_start:
		LDR		 R0,=number0
		VLDR	 S0,[R0]
		BL		 lambdy

stop: B stop

.data
number0: .float 10.0
number1: .float 17.67

