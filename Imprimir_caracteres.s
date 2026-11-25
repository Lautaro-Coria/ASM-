.#imprimir las letras de A a la Z con ; entre medio 
.text 

main: 
    li t0, 65 
    li t1, 90
    
    loop: 
    mv a0, t0
    li a7, 11
    ecall 
    
    beq t0, t1, fin
    
    li a0, 59
    li a7, 11 
    ecall 
    
    addi t0, t0, 1 
    j loop
    
    fin:
    li a7, 10 
    ecall 