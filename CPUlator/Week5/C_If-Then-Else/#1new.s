.global _start
_start:
        LDR    R0,=s32  // R0 <-- &s32
        LDR    R1,[R0]  // CMP requires operand to be in a register
    
        CMP    R1,#10   // Compare s32 to 10 and ...
        BLE    stop     // if (s32 <= 10) goto L1
    
        LDR R2,=100     // then part
    
stop:   B stop

        .data
s32:    .word 11
