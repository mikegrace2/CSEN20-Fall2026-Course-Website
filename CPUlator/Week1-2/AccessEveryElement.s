vgaex:
	ldr r0,=0xc8000000 	// vga address
	mov r1,#0x33 		// fill with what
	ldr r2,=0x2fff0		// how many times
	mov r3,#1			// number 1
	
loop1:
	strb 	r1,[r0]
	add  	r0,r0,r3
	sub  	r2,r2,r3
	
	cmp 	r2,#0
	bne 	loop1
	bx 		lr

print:
	ldr r1, =0xff200020
	mov  r0,#2
	strb r0,[r1]
	
	mov  r0,#3
	strb r0,[r1]
	
	mov  r0,#0xff
	strb r0,[r1]	
	bx lr

readSomething:
loop:
	ldr r1, =0xff201000
	ldrb r0,[r1]
	strb r0,[r1]
	cmp r0,#0
	bne loop
	bx lr

addOne:
	mov R1, #1
	add R0,R0,R1
	bx lr

led:
	ldr r1,=0xff200000
	mov r0,#0xffffffff
	str r0,[r1]
	bx lr

.global _start
_start:
	mov r0, #1
	mov r1, #1
	mov r2, #2
	//bl addOne
	//bl readSomething
	//bl led
	//bl print
	bl vgaex

stop: b stop

.data
memory: .asciz "Memory is allocated here somehow"