Algoritmo sin_titulo
	//Leer n números enteros, almacenarlos en un vector y determinar cuantas veces en el vector se encuentra el digito 2. 
	//No se olvide que el digito 2 puede estar varias veces en un mismo numero
	Definir n,i,conta,num,digito Como Entero
	Definir A Como Entero
	Escribir 'Ingrese el tamaño del vector :'
	Leer n
	Dimension A[n]
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir 'Ingrese numero del vector A:'
		Leer A[i]
	FinPara
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		num <- A[i]
		Mientras (num>0) Hacer
			digito <- num MOD 10
			Si (digito==2) Entonces
				conta <- conta+1
			FinSi
		num <- trunc(num/10)
		FinMientras
	FinPara
	Escribir 'El 2 se repite ',conta,' veces'
FinAlgoritmo
