.data 

texto1: .string "UnA"
texto2: .string "una frase" 

.text 
    li a7,1 
    la a4, texto1
    la a5, texto2
    jal strCmpi
    ecall 
    li a7, 10 
    ecall 
    nop 
    
strCmpi: 
    addi a6, x1, 0
    add a1, a4, x0
    add a2, a5, x0 
    loop:
        #cargamos 1 letra y la pasamos a minuscula 
        lb a0, 0(a1)
        jal x1, toLower
        add x29, a0, x0 
        lb a0, 0(a2)
        jal x1, toLower 
        add x30, a0, x0 
        #hasta aca, cargamos 1 letra de c/u
        beq x29, x30, mover
        bne x29, x30, distintas 
    mover: 
        addi a1, a1, 1 
        addi a2, a2, 1 
        lb a0, 0(a2)
        beq a0, x0, iguales 
        lb a0, 0(a1)
        beq a0, x0, iguales 
        beq x0, x0, loop 
    iguales: 
        li a0, 0
        add x1, a6, x0 
        ret 
    distintas: 
        li a0, -1 
        add x1, a6, x0 
        ret    

toLower: 
    li x28, 97 
    bge a0, x28, salir 
    addi a0, a0, 0x20 
    salir: 
    ret 