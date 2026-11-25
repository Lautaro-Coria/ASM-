.text 
    jal ASCII 
    li a7, 10 
    ecall 
ASCII:
    li t0, 33 
    li t1, 127

    
    loop:
        mv a0, t0 
        bgt a0, t1, termina
        li a7,1  
        ecall #imprime el int.
        
        li a0, 58
        li a7, 11
        ecall #imprime ":".
        
        li a0, 32 
        li a7, 11
        ecall #imprime un " " (espacio).
        
        mv a0, t0 
        li a7, 11 
        ecall #imprime el valor ASCII del int. 
        
        li a0, 10
        li a7, 11 
        ecall #imprime "\n" (nueva linea(10)).
        
        
        addi t0, t0, 1 
        j loop
        
        
        termina:
        ret 
    