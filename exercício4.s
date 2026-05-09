.data
	msg1: .asciiz "Digite a primeira nota: "
	msg2: .asciiz "Digite a segunda nota: "
	msg3: .asciiz "Digite a terceira nota: "
	msg4: .asciiz "Digite a quarta nota: "
	msg5: .asciiz "\nA media aritmetica e de "
	msg6: .asciiz "\nAPROVADO"
	msg7: .asciiz "\nEXAME"
	msg8: .asciiz "\nRETIDO"
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
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	add $t4, $t0, $t1
	add $t4, $t4, $t2
	add $t4, $t4, $t3
	div $t4, $t4, 4
	
	bge $t4, 6, a
	blt $t4, 3, r
	j e
a:
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	
	j fim
e:
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	li $v0, 4
	la $a0, msg7
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	
	j fim
r:
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	li $v0, 4
	la $a0, msg8
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	
	j fim
fim: