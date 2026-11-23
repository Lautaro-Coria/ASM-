.data

    var: .word 123456

.text 

    lw a0, var
    
    li a7, 1
    ecall 
    
    li a0, 0
    li a7, 10
    ecall 