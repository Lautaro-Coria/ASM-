.data 

letraA: .string "A" 
letraB: .string "b" 

.text 
    li a7, 11
    lb a0, letraA
    jal toLower
    ecall 
    lb a0, letraB
    ecall 
    li a7, 10
    ecall 
    nop 

toLower:
        li x28, 97 
        bge a0, x28, salir 
        addi a0, a0, 0x20 
        salir: 
            ret
toUpper: 
    li x28, 97
    blt a0, x20, hacer 
    hacer: 
        addi a0, a0, -0x20