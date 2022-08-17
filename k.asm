.data
	vetor:
		.align 2
		.space 20 #5 inteiros no vetor
		
.text
	move $t0, $zero #indice do vetor
	li $t1, 1       #valor inicial do vetor, os próximos serão incrementando +1
	li $t2, 20      #tamanho do vetor
	
	while:
		beq $t0, $t2, saiWhile
		sw $t1, vetor($t0)
		addi $t1, $t1, 1
		addi $t0, $t0, 4
		j while
		
	saiWhile:
		move $a0, $t2 #argumento da função de tamanho
		li $a1, 1     #argumento que contém o valor a ser buscado no vetor
		jal pertence
		
		li $v0, 10
		syscall
		
		
		pertence:
			move $t0, $zero #indice do vetor
			
			for:
				beq $t0, $a0, saiFor
				lw $t3, vetor($t0) #pega o valor do vetor para comparar
				
				if:
					bne $a1, $t3, else
					li $a0, 1
					jr $ra
					
				else:
					addi $t0, $t0, 1
					j for
					
				addi $t0, $t0, 1
				j for
				
			saiFor:
				li $a0, 0
				jr $ra