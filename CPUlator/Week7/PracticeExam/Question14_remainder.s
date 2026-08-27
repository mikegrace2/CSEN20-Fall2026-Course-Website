.global _start
_start:
	LDR	 R0,=100		// R0 <-- dividend
	LDR	 R1,=9			// R1 <-- divisor
	UDIV R2,R0,R1		// R2=R0/R1
	MLS	 R3,R1,R2,R0	// R3 = R0 – R1*R2
	
stop: B stop

	
	