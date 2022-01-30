Algoritmo Ejercicio2
	Definir n, i, j Como Entero
	Definir conta, a, b, c, sw Como Entero
	Definir M Como Entero;
	//La matriz no se puede definir como "A" debido a que pseint no diferencia "A" de "a"
	//Ingrese los elementos de la matriz
	Dimension M[4,6];
	Para i=0 hasta 3 Con Paso 1 hacer
		Para j=0 hasta 5 Con Paso 1 hacer
			Escribir Sin Saltar "A[",i,"][",j ,"] :"
			Leer M[i,j]
		FinPara
	FinPara
	Escribir "La matriz A es:"
	Para i=0 hasta 3 Con Paso 1 Hacer
		Para j=0 hasta 5 Con Paso 1 Hacer
			Escribir sin saltar M[i,j],"  "
		FinPara
		Escribir ""
	FinPara
	//Verifica si pertenece fibonacci
	conta = 0;
	Para i=0 hasta 3 Con Paso 1 Hacer
		Para j=0 hasta 5 Con Paso 1 Hacer
			a = 0;
			b = 1;
			sw = 0;
			Repetir
				c = a + b;
				Si M[i,j] <= 3 Entonces
					sw = 1;
				SiNo
					Si  c = M[i,j] Entonces
					sw = 1;
					FinSi
				FinSi
				a = b;
				b = c;
			Hasta Que c >= M[i,j] o sw = 1;
			Si sw = 1 Entonces
				conta=conta+1;
			FinSi
		FinPara
	FinPara
	Escribir "Total encontrados " , conta;
FinAlgoritmo

