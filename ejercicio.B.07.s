.text 
    li t0, 33
    li t1, 57
    li t2, 91
    li t3, 93 
    
loop:
    li a7, 11
    mv a0,t2
    ecall 
    
    li a7,11
    mv a0, t0
    ecall
    
    li a7,11
    mv a0, t3
    ecall
    
    addi t0, t0, 1
    ble t0, t1, loop
    
    li a0,0
    li a7, 10
    ecall
    
    