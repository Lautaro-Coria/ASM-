.text
    #ejercicio 1:carga con addi 
    addi x5,x0,0 
    addi x5, x0, 1 
    addi x5, x0, -2048
    addi x5, x0, 2047
    
    #ejercicio: LUI + ADDI vs LI
    lui x5, 0x87654
    addi x5, x5, 0x321
    
    #carga con pseudoinstruccion LI
    li x5, 0x87654321
    
    #Prueba con LI para valores al limite
    li x5, 2049
    li x5, 2048
    li x5, 2047
    li x5, -2048
    li x5, -2049
    li x5, -2047
    
    