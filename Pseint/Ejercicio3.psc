Algoritmo Ejercicio3
	Definir i,j Como Entero;
	Definir A Como Entero;
	//Ingrese los elementos de la matriz
	Dimension A[3,4];
	Para i=0 hasta 2 Con Paso 1 hacer
		Para j=0 hasta 3 Con Paso 1 hacer
			Escribir Sin Saltar "A[",i,"][",j ,"] :";
			Leer A[i,j];
		FinPara
	FinPara
	Escribir "La matriz A es:";
	Para i=0 hasta 2 Con Paso 1 Hacer
		Para j=0 hasta 3 Con Paso 1 Hacer
			Escribir sin saltar A[i,j],"  ";
		FinPara
		Escribir "";
	FinPara
	contar(A);
FinAlgoritmo

Funcion res=esPrimo(num)
	Definir k como Entero;
	Definir primo,res Como Logico;
	primo=Verdadero;
	k=2;
	Mientras primo y k<num Hacer
		Si num Mod k = 0 Entonces
			primo=Falso;
		FinSi
		k=k+1;
	FinMientras
	res=primo;
FinFuncion

SubProceso contar(A)
	Definir i, j, conta,mayo Como Entero;
	mayo = 0;
	conta=0;
	Para i=0 hasta 2 Con Paso 1 hacer
		Para j=0 hasta 3 Con Paso 1 hacer
			Si esPrimo(A[i,j]) Entonces
				Si A[i,j] > mayo Entonces
					mayo = A[i,j];
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir "Mayor numero primo es " , mayo;
	Para i=0 hasta 2 Con Paso 1 hacer
		Para j=0 hasta 3 Con Paso 1 hacer
			Si A[i,j]=mayo Entonces
				conta=conta+1;
			FinSi
		FinPara
	FinPara
	Escribir "Resultado :" , conta;
FinSubProceso


