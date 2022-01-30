# Ingrese los elementos de la matriz

A = []
for i in range(4):
    a = [0] * 6
    A.append(a)
for i in range(4):
    for j in range(6):
        print("A[",i,"][",j,"] :", end="")
        A[i][j] = int(input())

print("La matriz A es:")
for i in range(4):
    for j in range(6):
        print(A[i][j],"  ", end="")
    print("")

# Verifica si pertenece fibonacci
conta = 0
for i in range(4):
    for j in range(6):
        a = 0
        b = 1
        sw = 0
        while True:
            c = a+b
            if A[i][j]<=3:
                sw = 1
            else:
                if c==A[i][j]:
                    sw = 1
            a = b
            b = c
            if c>=A[i][j] or sw==1:
                break
        if sw==1:
            conta = conta+1
print("Total encontrados ",conta)

