.data 

palabra: .string "una"
frase: .string "Esto es una frase de prueba" 
palabra2: .string "no"

.text 
    la a2, palabra 
    la a3, frase 
    jal contiene 
    li a7, 1 
    ecall 
    la a2, palabra2 
    la a3, frase 
    jal contiene 
    ecall 
    li a7, 10 
    ecall 
    nop 

contiene: 
    addi a4, a2, 0
    addi a5, a3, 0 
    add a6, x1, x0 
    loop: 
        jal x1, strCmp 
        add x1, a6, x0 
        beq a0, x0, si 
        addi a5, a5, 1 
        lb x31, 0(a5)
        bne x31, x0, loop 
        li a0, 0 
        ret 
    si: 
        addi a0, a0, 1 
        ret
    
strCmp:
    add x28, a4, x0
    add x29, a5, x0
    loop1:
        lb a1,0(x28)
        lb a0,0(x29)
        beq a0, x0, salidaDist
        beq a1, x0, salidaIgual
        bne a1, a0, salidaDist
        addi x28, x28, 1
        addi x29, x29, 1
        beq x0, x0, loop1
    salidaDist:
        li a0, -1
        ret
    salidaIgual:
        li a0, 0
        ret