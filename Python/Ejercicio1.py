conta = 0
n = int(input("Ingrese el tamaño del vector :"))
A = []
#Ingresar datos al vector
for i in range(n):
    num = int(input("Ingrese numero del vector A:"))
    A.append(num)

#Encontrar el numero 2 y contarlo
conta=0
for i in range(n):
    num = A[i]
    while (num > 0):
        digito = num % 10
        if (digito == 2):
            conta=conta+1
        num=num // 10

print("El 2 se repite ", conta," veces")
