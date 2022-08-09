.data
	a: .word 18
	b: .word 20
	c: .word 0
	d: .word 0
.text
	lw $t0, a
	lw $t1, b
	lw $t2, c
	lw $t3, d
	
	if:
		beq $t0, $t1, else	#Compara se a e b são iguais
		addi $t2, $t1, 2	#c = 2 + b
		
		sw $t2, c
		
		li $v0, 10
		syscall
		
	else:				#Caso sejam, entra aqui
		addi $t3, $t0, 3	#d = 3 + a
		
		sw $t3, d
		
		li $v0, 10
		syscall	