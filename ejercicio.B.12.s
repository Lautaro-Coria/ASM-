.data 
    var: .word 100, 1000,65536, 65537,1000000
.text
    la a0, var
    lw a0, 16(a0)
    li a7, 1 
    ecall 
    li a7, 10 
    ecall 