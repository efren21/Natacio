//Efren Lena Rosell�

Algoritmo Nataci�_Sincronitzada
	Escribir "Quants jutges hi ha?"
	Leer jutges
	
	ContadorPaisos = 0
	PuntuacioTotalPaisos = 0
	PuntuacioGuanyador = 0
	
	Repetir
		Escribir "Nom del pa�s"
		Leer pais
		Nota_acumulada = 0
		deus = Falso
		
		//votacions
		Para i<-1 Hasta jutges Con Paso 1 Hacer
			Escribir "Nota o vot que dona el jutge " i " a " pais
			Leer vots_pais
			si	vots_pais == 10 Entonces
				deus = Verdadero
			FinSi
			
			//comprovaci� del vot
			Si vots_pais<=10 Entonces
				Escribir""
			SiNo
				Escribir "Les notes deuen tindre un valor de entre 0 i 10"
				Repetir
					Escribir "Nota o vot que dona el jutge " i " a " pais
					Leer vots_pais
				Hasta Que vots_pais<=10
			FinSi
			
			//calcul puntuaci� mitja pais
			Nota_acumulada = vots_pais + Nota_acumulada
			Mitja_pais = Nota_acumulada/jutges			
		FinPara
		
		//comprovaci� 10
		si deus = Verdadero Entonces
			Escribir "Si que hi han deus"
		SiNo
			Escribir "No hi han deus"
		FinSi
		
		Escribir "La nota mitja de " pais " es " Mitja_pais
		PuntuacioTotalPaisos = Mitja_pais + PuntuacioTotalPaisos
		
		//comprovaci� guanyador
		si Mitja_pais > PuntuacioGuanyador Entonces
			PuntuacioGuanyador = Mitja_pais
			NomGuanyador = pais
		FinSi
		
		Escribir "Es desitja introdu�r les dades de altre pa�s?"
		Leer altre_pais
		si	altre_pais = "si" Entonces
			Escribir ""
		FinSi
		
		ContadorPaisos = ContadorPaisos + 1
	Hasta Que altre_pais='no'
	
	MitjaTotalPaisos = PuntuacioTotalPaisos / ContadorPaisos //calcul mitja de tots els paisos
	
	//mostrar per pantalla els resultats
	Escribir "Han participat " ContadorPaisos " pa�sos"
	Escribir "El pais guanyador es  " NomGuanyador " amb una mitja de "	PuntuacioGuanyador
	Escribir "La mitja de tots els paisos es " MitjaTotalPaisos
	
FinAlgoritmo
