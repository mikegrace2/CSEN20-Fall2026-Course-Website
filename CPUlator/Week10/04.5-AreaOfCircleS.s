AreaOfCircleS: 		// S0 = radius
		LDR 		R1,=0		// i = 0
		LDR			R12,=pi		// Load constant: S1 = 3.14159
		VLDR     	S1,[R12]	
		LDR			R12,=two	// Load constant: S2 = 2.0
		VLDR		S2,[R12]		
		
Loop:	CMP			R1,#10		// if (i <10) return
		BEQ			return

		VLDR		S0,[R0]		// load first float into R0
		ADD			R0,R0,#4	// update to the next farray pointer element
		
		VMUL.F32	S0,S0,S0	// S0 = radius  * radius
		VMUL.F32	S0,S0,S1	// S0 = 3.14159 * radius * radius
		VMUL.F32	S0,S0,S2	// S0 = 3.14159 * radius * radius * 2
		
		ADD			R1,R1,#1	// i=i+1
		B			Loop

return:	BX			LR

.global _start
_start:		
		LDR			R0,=farray
		BL 			AreaOfCircleS

stop:	B stop

.data
pi:	   	.float	3.14159	
two:    .float  2.0
farray:	.float  1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
