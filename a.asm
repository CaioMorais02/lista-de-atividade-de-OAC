.data
	a: .word 10
	b: .word 15
	c: .word 35
	d: .word 25
.text
	#Atribui os conte�dos da mem�ria principal nos registradores
	lw $a0, a
	lw $a1, b
	lw $a2, c
	lw $a3, d
	
	#Aciona o c�lculo de a = (a+b) - (c-d)
	add $a0, $a0, $a1
	sub $a2, $a2, $a3
	sub $a0, $a0, $a2
	
	li $v0, 1
	syscall
	
	sw $a0, a
	