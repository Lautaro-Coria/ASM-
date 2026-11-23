.data 
    var: .half 32769
.text
    la a0, var
    lh a0, 0(a0)
    li a7, 1
    ecall 
    li a7, 10
    ecall 
#rango [-32768, 32767]
#excede el rango por eso se imprime
#-32767