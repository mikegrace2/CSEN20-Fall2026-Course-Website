.global _start
_start:
        LDR     R0,=s32     // R0 <-- &s32
        LDR     R1,[R0]     // CMP requires operand to be in a register
    
        CMP     R1,#10      // Compare s32 to 10 and ...
        BGT     then        // if (s32 > 10) goto then
        B       stop
    
then:   LDR R2,=100

stop:   b stop

        .data
s32:    .word 11
