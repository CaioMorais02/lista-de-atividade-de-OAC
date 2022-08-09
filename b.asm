.data
	a: .word 10
	b: .word 10
	c: .word 14
	d: .word 12
.text
	lw $a0, a
	lw $a1, b
	lw $a2, c
	lw $a3, d
	
	sub $a0, $a0, $a1
	sub $a2, $a2, $a3
	sub $a0, $a0, $a2
	
	li $v0, 1
	syscall
	
	sw $a0, a