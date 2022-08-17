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
		jal maximo
		
		li $v0, 10
		syscall
		
		
		maximo:
			move $t0, $zero #indice do vetor
			lw $t1, vetor($t0) #maior começa com o primeiro conteúdo do vetor
			
			for:
				beq $t0, $a0, saiFor
				lw $t3, vetor($t0) #pega o valor do vetor para comparar
				
				if:
					blt $t3, $t1, else
					move $t1, $t3
				else:
					addi $t0, $t0, 1
					j for
					
				addi $t0, $t0, 1
				j for
				
			saiFor:
				move $a0, $t1
				jr $ra  