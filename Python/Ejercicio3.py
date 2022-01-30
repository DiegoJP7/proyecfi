def esprimo(num):
    primo = True
    k = 2
    while primo and k < num:
        if num % k == 0:
            primo = False
        k = k + 1
    return primo


def contar(A):
    may = 0
    conta = 0
    for i in range(3):
        for j in range(4):
            if esprimo(A[i][j]):
                if A[i][j] > may:
                    may = A[i][j]
    print("Mayor numero primo es: ",may)
    for i in range(3):
        for j in range(4):
            if A[i][j] == may:
                conta = conta + 1
    print("Resultado :", conta)

# Ingrese los elementos de la matriz
A = []
for i in range(3):
    a = [0] * 4
    A.append(a)
for i in range(3):
    for j in range(4):
        print("A[", i, "][", j, "] :", end="")
        A[i][j] = int(input())
print("La matriz A es:")
for i in range(3):
    for j in range(4):
        print(A[i][j], "  ", end="")
    print("")
contar(A)
