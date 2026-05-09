.data
	msg1: .asciiz "Digite um numero inteiro real: "
	msg2: .asciiz "\nO maior valor e de "
	msg3: .asciiz "\nO menor valor e de "
	msg0: .asciiz "\n"
.text
main:
	li $t9, 0
	li $t1, 0
	li $t2, 696969696969696969

loop:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 0, loop
	add $t9, $t9, 1
	beq $t2, 696969696969696969, menor
	bgt $t0, $t1, maior
	blt $t0, $t2, menor
	bgt $t9, 9, fim
	j loop

maior:
	add $t1, $t0, 0
	blt $t0, $t2, menor
	j loop
	
menor:
	add $t2, $t0, 0
	bgt $t0, $t1, maior
	j loop
	
fim:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	