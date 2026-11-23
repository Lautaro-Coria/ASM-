.data 

    var: .half 32769

.text 
    la a0, var
    lhu a0, 0(a0)
    li a7, 1
    ecall 
    li a7, 10
    ecall 
    