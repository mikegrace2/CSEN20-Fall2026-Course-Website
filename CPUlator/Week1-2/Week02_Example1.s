.global _start
_start:

	// int x=10;
	LDR R0,=x
	LDR R1,=10
	STR R1,[R0]
	
    //x=x+10;
	LDR R1,[R0]
	ADD R2,R1,#10
	
    //x=x*10;
    //x=x/30;
	
stop: B stop

.data
x: .word 0	// unsigned int
.end