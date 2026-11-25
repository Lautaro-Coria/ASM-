.data 
texto: .string "Texto de Prueba1" 
.text
li a7, 4 
la a0, texto 
jal x1, normalizar 
ecall 
li a7, 10 
ecall 

normalizar:
    mv t0, a0 # Puntero/cursor para recorrer el string (preserva a0)
    mv t1, a0 # Copia de la dirección inicial para restaurar a0 al final
    mv t2, a7 # Resguardamos el valor original de a7 (= 4)
    mv t3, x1  # Resguardamos la dirección de retorno al main (x1)

    li t4, 97  # Límite inferior de minúsculas: 'a' (ASCII 97)
    li t5, 122 # Límite superior de minúsculas: 'z' (ASCII 122)

bucle:
    lb t6, 0(t0)   # Leemos el byte actual
    beq t6, x0, fin_norm  # Si es '\0' (0), terminamos el recorrido

    blt t6, t4, avanzar # Si t6 < 'a', no es minúscula -> avanzamos
    bgt t6, t5, avanzar # Si t6 > 'z', no es minúscula -> avanzamos

    mv a0, t6          # Pasamos el carácter en a0 a la subrutina aMay
    jal x1, aMay       # Llamada anidada a aMay (sobrescribe x1, pero lo tenemos en t3)
    sb a0, 0(t0)       # Guardamos el carácter ya en mayúscula en memoria

avanzar:
    addi t0, t0, 1 # Avanzamos el cursor al siguiente carácter
    j bucle

fin_norm:
    mv a0, t1              # Restauramos a0 con la dirección original de 'texto'
    mv a7, t2              # Restauramos a7 con su valor original (4)
    mv x1, t3              # Restauramos x1 para volver al main
    ret

aMay:
    addi a0, a0, -32       # Convierte de minúscula a mayúscula restando 32 en ASCII
    ret
    