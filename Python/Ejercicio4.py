n = int(input("Ingrese el tamano de la matriz :"))
A = []
vec = [0] * (n*n)
aux = [0] * (n*n)
for i in range(n):
    a = [0] * n
    A.append(a)
for i in range(n):
    for j in range(n):
        print("A[", i, "][", j, "] :", end="")
        A[i][j] = int(input())

print("La matriz A es:")
k = 0
for i in range(n):
    for j in range(n):
        print(A[i][j], "  ", end="")
        vec[k] = A[i][j]
        k = k + 1
    print("")

conta1 = 0
conta = 0
for i in range(k):
    existe = False
    for j in range(i):
        if vec[i] == vec[j]:
            existe = True
    if existe == False:
        aux[conta1] = vec[i]
        conta1 = conta1 + 1
#Salida
print("Elementos que no se repiten ")
for i in range(conta1):
    conta = 0
    for j in range(k):
        if aux[i] == vec[j]:
            conta = conta + 1
    if conta == 1:
        print(aux[i], ", ", end="")
