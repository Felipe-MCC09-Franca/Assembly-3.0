.data
	msg1: .asciiz "Digite um valor inteiro: "
	msg2: .asciiz "Digite um valor inteiro novamente: "
	msg3: .asciiz "\nA diferença entre eles e de: "
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
	
	bgt $t0, $t1, m1
	j m2
	
m1:
	sub $t2, $t0, $t1
	j fim

m2:
	sub $t2, $t1, $t0
	
fim:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	