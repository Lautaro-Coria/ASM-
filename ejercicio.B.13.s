.data
    var: .word 100, 1000, 65536, 65537, 1000000, 0

.text
    la x5, var       # Dirección de memoria del inicio del vector
    li a0, 0         # Contador de elementos inicializado en 0

loop:
    lw x6, 0(x5)     # Carga el elemento actual en x6
    beq x6, x0, sale # Si el elemento es igual a 0, termina el conteo

    addi a0, a0, 1   # Incrementa en 1 la cantidad de elementos contados
    addi x5, x5, 4   # Avanza 4 bytes al siguiente elemento .word
    j loop           # Salta al inicio del bucle

sale:
    li a7, 1         # Syscall PrintInt para imprimir a0 (que vale 5)
    ecall

    li a0, 0         # Código de retorno 0
    li a7, 10        # Syscall Exit
    ecall
    