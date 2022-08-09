.data
	a: .word 18
	b: .word 18
	c: .word 0
	d: .word 15
	e: .word 40
	f: .word 0
	g: .word 24
	h: .word 12
	j: .word 0
	k: .word 55
	l: .word 22
.text
	lw $t0, a
	lw $t1, b
	lw $t2, c
	lw $t3, d
	lw $t4, e
	
	if:
		bne $t0, $t1, else	#Compara se a e b são diferentes
		add $t2, $t3, $t4
		li $v0, 1
		move $a0, $t2
		syscall
		sw $a0, c
		
	lw $t0, j
	lw $t1, k
	lw $t2, l
	
	mul $t0, $t1, $t2
	li $v0, 1
	move $a0, $t0
	syscall
	sw $a0, j
	
	li $v0, 10
	syscall
	
	else:				#Caso seja, entra nesta condição
		lw $t5, f
		lw $t6, g
		lw $t7, h
		
		sub $t5, $t6, $t7
		li $v0, 1
		move $a0, $t5
		syscall
		sw $a0, f