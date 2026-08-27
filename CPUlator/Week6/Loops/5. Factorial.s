.global _start
_start:
				LDR 	R0,=5  // Factorial(5) = 5! = 5 * 4 * 3 * 2 * 1 = 120
				LDR		R1,=1  // start with 1

fact:			CMP		R0,#0
				BEQ		stop

 				MUL		R1,R1,R0	// multiply: R1*R0
				
				SUB		R0,R0, #1 	// loop condition: R0-1
				B		fact

stop: 			B stop
	