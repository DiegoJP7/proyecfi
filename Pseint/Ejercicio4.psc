Algoritmo Ejercicio4
	Definir n, i, j, k, conta, conta1 como Entero;
	Definir M, vec, aux Como Entero;
	//La matriz no se puede definir como "A" debido a que pseint no diferencia "A" de "a"
	Escribir "Ingrese el tamaño de la matriz :";
	Leer n;
	Dimension M[n,n];
	Dimension vec[n * n];
	Dimension aux[n * n];
	
	Para i=0 hasta n-1 Con Paso 1 hacer
		Para j=0 hasta n-1 Con Paso 1 hacer
			Escribir Sin Saltar "A[",i,"][",j ,"] :";
			Leer M[i,j];
		FinPara
	FinPara
	Escribir "La matriz A es:";
	k = 0;
	Para i=0 hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta n-1 Con Paso 1 Hacer
			Escribir sin saltar M[i,j],"  ";
			vec[k] = M[i,j];
			k=k+1;			
		FinPara
		Escribir "";
	FinPara
	
	conta1 = 0;
	conta = 0;
	Definir existe Como Logico;
	Para i=0 hasta k-1 Con Paso 1 Hacer
		existe = Falso;
		Para j=0 hasta i-1 Con Paso 1 Hacer
			Si vec[i] = vec[j] Entonces
				existe = Verdadero;
			FinSi
		FinPara
		Si existe=Falso Entonces
			aux[conta1] = vec[i];
			conta1=conta1+1;
		FinSi
	FinPara
	//Salida
	Escribir "Los elementos que no se repiten son:";
	Para i=0 hasta conta1-1 Con Paso 1 Hacer
		conta = 0;
		Para j=0 hasta k-1 Con Paso 1 Hacer
			Si aux[i] = vec[j] Entonces
				conta=conta+1;
			FinSi
		FinPara
		Si conta = 1 Entonces
			Escribir Sin Saltar aux[i],", " ;
		FinSi
	FinPara
FinAlgoritmo
