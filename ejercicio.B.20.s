.data
    texto: .string "Hola Mundo!"
.text
    la a1, texto
    #StrLen devuelve en A0
    #el largo del string
    jal StrLen
    li a7,1
    ecall 
    li a7,10
    ecall 
    nop

StrLen:
    add x5, a1, x0
    add a0, x0 , x0
    loop: 
        lb x6, 0(x5)
        beq x6, x0, sale
        addi x5, x5, 1 
        addi a0, a0, 1 
        beq x0, x0, loop
    sale:
        ret