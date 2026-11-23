.data
    frase: .string "YVAN EHT NIOJ"
.text
    la a1, frase
    jal reverseStr
    li a7,10, 
    ecall 
    nop
    
reverseStr: 
    addi a5, x1, 0
    jal strLen
    add a4, a0, x0 
    add a6, a1, x0
    add a6, a6, a0
    addi a6, a6, -1 
    loop1: 
        beq a4, x0, sale1
        li a7,11 
        lb a0, 0(a6)
        ecall 
        addi a4, a4, -1 
        addi a6, a6, -1 
        beq x0, x0, loop1
    sale1: 
        add x1, a5, x0
        ret 
    
strLen:
    add x5, a1, x0
    add a0, x0, x0
     
    loop:
        lb x6, 0(x5)
        beq x6, x0, sale
        addi x5, x5, 1 
        addi a0, a0, 1
        beq x0, x0, loop
    sale: 
        ret 
    
    