.data 

vector: .byte 40, 50, 30,60, 40, 50, 40, 50 

.text
main: 
    la t0, vector 
    li t1, 0  #contador
    li t2, 0  #acumulador 
    li t3, 8  #contador de elementos. 

ciclo: 
    lbu t4, 0(t0)
    add t2, t2, t4 
    
    addi t0, t0, 1 
    addi t1, t1, 1 
    
    blt t1,t3, ciclo 
    
    srli a0, t2, 3 #dividir por 8 es equivalente a desplazar 3 posiciones los bits a la derecha.
    
    li a7,1 
    ecall 
    
    li a7, 10 
    ecall 
    

