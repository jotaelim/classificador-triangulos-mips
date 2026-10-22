
.data
    msgA:       .asciiz "\nDigite o valor do lado A: "
    msgB:       .asciiz "Digite o valor do lado B: "
    msgC:       .asciiz "Digite o valor do lado C: "

    msgInvalido: .asciiz "\nOs lados nao formam um triangulo.\n"
    msgValido:   .asciiz "\nOs lados formam um triangulo.\n"
    msgEquilatero: .asciiz "Classificacao: Equilatero.\n"
    msgIsosceles:  .asciiz "Classificacao: Isosceles.\n"
    msgEscaleno:   .asciiz "Classificacao: Escaleno.\n"

    msgContinuar: .asciiz "\nDeseja verificar outro triangulo?\n1 - Sim\n0 - Nao\nOpcao: "
    msgEncerrar:  .asciiz "\nPrograma encerrado. Obrigado!\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, msgA
    syscall

    li $v0, 5
    syscall
    move $s0, $v0

    li $v0, 4
    la $a0, msgB
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    li $v0, 4
    la $a0, msgC
    syscall

    li $v0, 5
    syscall
    move $s2, $v0

    blez $s0, nao_triangulo
    blez $s1, nao_triangulo
    blez $s2, nao_triangulo

    addu $t0, $s0, $s1
    ble $t0, $s2, nao_triangulo

    addu $t0, $s0, $s2
    ble $t0, $s1, nao_triangulo

    addu $t0, $s1, $s2
    ble $t0, $s0, nao_triangulo

    li $v0, 4
    la $a0, msgValido
    syscall

    beq $s0, $s1, verifica_terceiro

    beq $s0, $s2, classifica_isosceles
    beq $s1, $s2, classifica_isosceles

    j classifica_escaleno

verifica_terceiro:
    beq $s1, $s2, classifica_equilatero
    j classifica_isosceles

classifica_equilatero:
    li $v0, 4
    la $a0, msgEquilatero
    syscall
    j perguntar

classifica_isosceles:
    li $v0, 4
    la $a0, msgIsosceles
    syscall
    j perguntar

classifica_escaleno:
    li $v0, 4
    la $a0, msgEscaleno
    syscall
    j perguntar

nao_triangulo:
    li $v0, 4
    la $a0, msgInvalido
    syscall

perguntar:
    li $v0, 4
    la $a0, msgContinuar
    syscall

    li $v0, 5
    syscall

    li $t0, 1
    beq $v0, $t0, main

    li $v0, 4
    la $a0, msgEncerrar
    syscall

    li $v0, 10
    syscall