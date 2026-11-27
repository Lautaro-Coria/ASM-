.data
vector: .half -10, -20, 10, -5

.text
main:
    la a0, vector
    jal ra, promedio

    li a7, 1
    ecall

    li a7, 10
    ecall


promedio:
    mv t0, a0
    li t1, 4
    li t2, 0

loop:
    lh t3, 0(t0)
    add t2, t2, t3
    
    addi t0, t0, 2
    addi t1, t1, -1 
    
    bne t1, x0, loop
    
    blt t2, x0, negativo
    
    srai a0,t2, 2 
    ret
    
    negativo: 
    addi t2, t2, 3 
    srai a0, t2, 2
    
    termina: 
    ret