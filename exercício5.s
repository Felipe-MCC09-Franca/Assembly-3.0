.data
	msg1: .asciiz "Digite um numero inteiro: "
	msg2: .asciiz "Digite um numero inteiro novamente: "
	msg3: .asciiz "\nO somatorio dos impares entre esses numeros e de "
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
	sub $t2, $t0, 0
	add $t3, $t1, 0
	j v1
	
m2: 
	sub $t2, $t1, 0
	add $t3, $t0, 0

v1: 
	rem $t4, $t3, 2
	
	beq $t4, 0, par
	j impar
	
par:
	add $t5, $t3, 1
	j v2
	
impar:
	add $t5, $t3, 2
	
v2:
	ble $t5, $t2, soma
	j fim

soma:
	add $t6, $t6, $t5
	add $t5, $t5, 2
	j v2

fim:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall	