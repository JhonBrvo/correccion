//correccion del examen
//dado el siguiente algoritmo ¿indique que linea se puede modificar para el seudocodigo 
//imprime un triangulo de * tal com se indica en la salida ?
//nota: escribir 'ok Sin saltar // se imprime ok y el curso se queda en la misma linea '
Funcion ejercicio_2
	definir n, i, j Como Entero;
	n <- 5
	para i <- 1 Hasta n
		Para j <- 1 Hasta i
			Escribir '*' Sin Saltar
		FinPara
		Escribir ''
	FinPara
FinFuncion

//analize las siguientes lineas de programa y escriba ¿cual es la respuesta que genera m y n  
funcion ejercicio_4
	definir n, m, r como entero 
	n=20; m=25; r=1
	mientras (r<>0) Hacer
		r = m mod n 
		si(r=0) Entonces
			Escribir 'm= ',m,'n= ',n
		SiNo
			n = m
			m = r
		FinSi
	FinMientras
	
FinFuncion
//realizar un seudocodigo que permita ingresar  una expresion matematicas caracter
//por caracter. a final debera presentar el operador matematico con mayor repeticiones. los 
//operadores matematicos son : (*,+,-,/). el programa finaliza cuando se ingrese una 'F'
//ejemplo: si la expresion= '(4+2) * 5/2 - (5+2+3)'
//presentara 'el cart '+'tiene el mayor repeticiones '

Funcion ejercicio_5
	Definir carac Como Caracter
	Definir ac, acD, acS, acR Como Entero
	Escribir "Ingrese un caracter (Ingrese F para terminar): "
	Leer carac
	ac = 0
	acD = 0
	acS = 0
	acR = 0
	
	Mientras carac <> "F" y carac <> "f" Hacer
		Si carac == "*" Entonces
			ac = ac + 1
		SiNo
			si carac == "/" Entonces
				acD = acD + 1
			SiNo
				si carac == "+" Entonces
					acS = acS + 1
				SiNo
					si carac == "-" Entonces
						acR = acR + 1
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "Ingrese un caracter (Ingrese F para terminar): "
		Leer carac 
	FinMientras
	
	Si ac > acD y ac > acS y ac > acR Entonces
		Escribir "El caracter * tiene mas repeticiones: ", ac
	SiNo
		Si acD > ac y acD > acS y acD > acR Entonces
			Escribir "El caracter / tiene mas repeticiones: ", acD
		SiNo
			Si acS > acD y acS > ac y acS > acR Entonces
				Escribir "El caracter + tiene mas repeticiones: ", acS
			SiNo
				Si acR > acD y acR > acS y acR > ac Entonces
					Escribir "El caracter - tiene mas repeticiones: ", acR
				SiNo
					Escribir "Los caracteres (*. +, -, /) estan repetidos las mismas veces."
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion
//elaborar un algoritmo ta, que dado un nombre y la edad en años. calcule el numero 
//de pulsaciones que debe tener por cada segundo de ejercicio segun la edad de la persona 
//la formula de las pulsaciones es: pulsaciones =(200-edad)/base. el valor de la base=10 
//si la edad esta entre 1-9 años se aplica la formula con base de 10; si es menor 
//de edad a la base se le incrementa un 10%; si es mayor de edad la base se incrementa un 15%
//para todos los casos las pulsaciones= (200-edad)/base. debe presentar la eda y las pulsaciones 
//calculada 
Funcion ejercicio_6
	definir edad, pul como real 
	
	Escribir 'digite su edad: '
	leer edad 
	si edad < 10 Entonces
		pul <- 200 - edad/15
		escribir 'la pulsacion es: ', pul
	SiNo
		si edad < 18 Entonces
			pul <- 220 - edad/15
			Escribir 'la pulsacion es: ',pul
		SiNo
			
			si edad >= 18 Entonces
				pul <- 200 - edad/20
				escribir'la pulsacion es: ',pul
			FinSi
		FinSi
	FinSi
FinFuncion

//elaborar un seudocodigo que deado una serie de numeros presente aquellos numeros positivos 
//que son multiplos de 3 y 4 ; al final presentar la cantidad de los numero negativos que no sean multiplos de 3 y 4? 
funcion ejercicio_7
	Definir num como Entero;
	Definir cN, cP, numP, numN como entero;
	Escribir "Ingrese un numero: ";
	Leer num;
	cP = 0
	cN = 0
	numN = 0
	numP = 0
	Mientras num <> 0 Hacer
		Si num >= 1 y (num MOD 3 = 0) Y (num MOD 4 = 0) Entonces
			cP = cP + 1
			numP = num
		SiNo
			si num <= -1 y (num MOD 3 <> 0) Y (num MOD 4 <> 0)  Entonces
				cN = cN + 1
				numN = num 
			FinSi
		FinSi
		Leer num;
    FinMientras
	Escribir "Cantidad de números positivos múltiplos de 3 y 4: ",cP;
    Escribir "Cantidad de números negativos no múltiplos de 3 y 4: ",cN;
FinFuncion

Algoritmo correccion
	ejercicio_6();
FinAlgoritmo

