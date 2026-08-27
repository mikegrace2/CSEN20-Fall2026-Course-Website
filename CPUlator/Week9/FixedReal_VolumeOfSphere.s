VolumeOfSphere:
	SMULL	R1,R2,R0,R0	// R2.R1 = Q32.32 product r squared
	LSR		R1,R1,#16	// Extract Q16.16 product into R1
	ORR		R1,R1,R2,LSL#16
	SMULL	R0,R1,R1,R0	// R1.R0 = Q32.32 product r cubed
	LSR		R0,R0,#16	// Extract Q16.16 product into R0
	ORR		R0,R0,R1,LSL#16
	LDR		R1,=274516	// R1 = (4*pi)/3  x  65536
	SMULL	R0,R1,R0,R1	// R1.R0 = Q32.32 volume
	LSR		R0,R0,#16	// Extract Q16.16 product into R0
	ORR		R0,R0,R1,LSL#16
	BX		LR

.global _start
_start:
	// this is usually given
	LDR R0,=radius
	LDR R0,[R0]
	BL  VolumeOfSphere
		
stop: B stop

.data
radius: .word 0b00000000000000010100000000000000 // Q16.16 = 1.25