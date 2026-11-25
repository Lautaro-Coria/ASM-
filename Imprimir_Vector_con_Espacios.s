#split recibe la direccion incial de una cadena de caracteres
#los caracteres estan separados por el caracter | la subrutina debe imprimir cada una de ellas con un espacio. 

.data 
    cadena: .string "Uno|Dos|Tres|Cuatro|Cinco|Seis|Siete"
.text 
    la a0, cadena 
    jal x1, split 
    li a7, 10 
    ecall 

split:
    mv t1, a0 
    li t2, 124 
    li a7, 11 
    
    loop:
    lb t0, 0(t1)
    beq t0, x0, termina
    beq t0, t2, es_barra
    
    mv a0, t0 #mv mueve direcciones de memoria y asigna a otros.  
    ecall
    j siguiente 
    
    es_barra:
        li a0, 32
        ecall
    siguiente:
        addi t1, t1, 1
        j loop
         
    termina: 
    ret 

    
    
    
    
    

