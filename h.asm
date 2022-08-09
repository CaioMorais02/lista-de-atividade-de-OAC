.text

	#x = $a0
	#y = $a1
	
	#leitura do inteiro x
	li $v0, 5
	syscall
	move $a0, $v0
	
	#leitura do inteiro y
	li $v0, 5
	syscall
	move $a1, $v0
	
	jal intMenor
	
	li $v0, 1
	syscall
	
	jal encerraPrograma
	
	intMenor:
		if:
			bgt $a0, $a1, else
			jr $ra
		else:
			jr $ra
			
	encerraPrograma:
		li $v0, 10
		syscall