.data
    mensaje: .string "aprobado"
.text 
    la a0, mensaje 
    jal Actualizar 
    li a7, 4 
    ecall 
    li a7, 10 
    ecall 
    
Actualizar:
    mv t1, a0 
    loop:
    lb t0, 0(t1)
    beq t0, x0, termina
    addi t0, t0, -32
    sb t0, 0(t1)
    addi t1, t1, 1 
    j loop
    
    termina:
    ret 