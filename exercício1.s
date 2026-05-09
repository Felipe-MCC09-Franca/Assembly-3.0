.data
	msg1: .asciiz "Digite o comprimento do paralelepipedo: "
	msg2: .asciiz "Digite a largura do paralelepipedo: "
	msg3: .asciiz "Digite a altura do paralelepipedo: "
	msg4: .asciiz "\nO volume e de "
	msg0: .asciiz "\n"

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	mul $t3, $t1, $t0
	mul $t3, $t3, $t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall