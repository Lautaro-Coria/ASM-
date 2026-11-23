.data         
    texto: .string "Hola mundo!"
.text
    la a1, texto 
    jal printLen
    li a7,10
    ecall 
    nop 

printLen: 
    add x5, a1, x0 
    #inicializacion del contador de longitud
    add x7, x0, x0
    loop: 
        lb x6, 0(x5)
        beq x6, x0, sale 
        addi x5, x5,1 
        #incremente en 1 la longitud
        addi x7, x7, 1
        beq x0, x0, loop 
    sale: 
        li a7, 1 
        add a0, x7, x0 
        ecall 
        ret
