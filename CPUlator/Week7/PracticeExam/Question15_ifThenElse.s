.global _start
_start:
		LDR R0,=a
		LDR R1,[R0]		// int a=10;
		LDR R2,=b
		LDR R3,[R2]		// int b=0;

		CMP R1,#5		// if (a>=5){ // inverse (a<5) "Less Than"
		BLO else

then:	LDR R3,=5		//     b=5;
		STR R3,[R2]
		B stop
	
else:	LDR R3,=12		// }else{
		STR R3,[R2]		//    b=12;
						// }

stop: 	B stop

.data
a: .word 10
b: .word 0
	
	