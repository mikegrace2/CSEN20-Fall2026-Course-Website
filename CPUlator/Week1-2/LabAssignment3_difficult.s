.global _start
			//                     R0
			//int32_t Last(int32_t x ){
			//	return x + SquareRoot(x);
			//}

_start:		PUSH {}

			BL SquareRoot

			POP {}
			
stop: b stop	