.global _start
_start:
		//RSB R2,R0,R1, LSL #1 // R2=(R1*2) - R0 
		// 30 = 40 - 10
		
		LDR R0,=0x80
		LDR R1,=0x20
		SUB R2,R0,R1, LSL #1 // R2 = R0 - (R1*2)
		//  40 = 80 - (2*20)

stop: 	b stop

.data
myWord: .word 0x12345678
memory: .asciz "Memory is allocated here somehow"