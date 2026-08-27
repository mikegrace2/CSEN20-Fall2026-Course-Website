.global _start
_start:
		//        33222222222211111111110000000000
        //        10987654321098765432109876543210
		LDR R0,=0b11110000111100001111000011110000
		// extract       ^^^^^^^^^^
		//             | 1|| E|| 1|
		UBFX R1,R0,#15,#10 // bit 15 to bit 24 is actually 10 bits
		
stop: 	B stop

	
	