FunctionTwo: // Here we know, no other function is called, so no PUSH/POP needed
		MUL		R0,R0,R1	// Multiply R0=R0*R1
		BX 		LR

FunctionOne: // Here we know we call another function
		ADD		R0,R0,R0	// Simply add R0=R0+R0
		B		FunctionTwo	// call FunctionTwo
		BX 		LR

.global _start
_start:	// This is some kind of C-Function simmulation
		LDR R0,=10		// load the value 10 into R0
		LDR R1,=20		// load the value 20 into R1
		
		BL FunctionOne	// call FunctionOne 
		
		LDR R3,=0xff200000	// load the address of the LED into R3
		STR R0,[R3]			// store the value of R0 into what R3 is pointing to

stop: 	b stop	