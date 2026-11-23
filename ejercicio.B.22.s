.data 
cadena1: .string "Hola Mundo!" 
cadena2: .string "Inserte cadena de texto" 
cadena3: .string "Hola Mundo!"
cadena4: .string "Hola Mundo! mas largo"

.text 
    li a7, 1
    la a4, cadena1
    la a5, cadena2
    jal strCmp 
    ecall 
    la a5, cadena3
    jal strCmp 
    ecall 
    la a5, cadena4
    jal strCmp 
    ecall 
    li a7, 10
    ecall 
    nop
    
strCmp: 
    add a1, a4, x0 
    add a2, a5, x0 

loop: 
    lb a3, 0(a1)
    lb a6, 0(a2)
    beq a3, x0, SalidaIgual 
    bne a3, a6, SalidaDist
    addi a1, a1, 1 
    addi a2, a2, 1
    beq x0, x0, loop 
SalidaDist: 
    li a0, -1
    ret
SalidaIgual: 
    li a0, 0
        ret 
