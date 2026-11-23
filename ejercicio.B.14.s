.data
    var: .word 100, 1000, 65536, 65537, 1000000, 0, 33
finvar:
.text
    la a1, var
    la a2, finvar
    #a2= finvar-var= 24 bytes
    sub a2, a2, a1
    #a2= 6 => cantidad de elementos=cantidad de bytes/ 4
    srai a2, a2, 2
    #subrutina
    jal x1, printVector
    li a7, 10
    ecall
    nop
printVector:
    li a7, 1
    lw a0, 0(a1)
    ecall
    addi a2, a2, -1
    addi a1, a1, 4
    beq a2, x0, termina
    li a7, 11
    li a0, 59
    ecall
    beq x0, x0, printVector
termina:
ret
    
    