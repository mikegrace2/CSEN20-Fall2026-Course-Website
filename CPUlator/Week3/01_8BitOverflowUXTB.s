.global _start
_start:
		MOV R0,#255
		ADD R0,R0,#1
		UXTB R0,R0
	
stop: 	B stop	

.data
myWord:	.word 0x12344321

	
	