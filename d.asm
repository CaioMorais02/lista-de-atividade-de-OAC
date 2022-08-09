.data
	espaco: .asciiz " "

.text
	move $t0, $zero #indice do laço
	
	while:
		bgt $t0, 100, foraWhile
		
		#Passa o indice do laço para um novo registrador que possa somar mais 4
		addi $t1, $t0, 0
		addi $t1, $t1, 4
		
		#Mostra na tela o resultado
		li $v0, 1
		move $a0, $t1
		syscall
		
		#Mostra um espaço na tela
		la $a0, espaco
		li $v0, 4
		syscall
		
		#Incrementa o indice
		addi $t0, $t0, 1
		j while
		
	foraWhile:
		li $v0, 10
		syscall