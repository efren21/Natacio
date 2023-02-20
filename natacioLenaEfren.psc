//Efren Lena Roselló

Algoritmo Natació_Sincronitzada
	Escribir "Quants jutges hi ha?"
	Leer jutges
	
	ContadorPaisos = 0
	PuntuacioTotalPaisos = 0
	PuntuacioGuanyador = 0
	
	Repetir
		Escribir "Nom del país"
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
			
			//comprovació del vot
			Si vots_pais<=10 Entonces
				Escribir""
			SiNo
				Escribir "Les notes deuen tindre un valor de entre 0 i 10"
				Repetir
					Escribir "Nota o vot que dona el jutge " i " a " pais
					Leer vots_pais
				Hasta Que vots_pais<=10
			FinSi
			
			//calcul puntuació mitja pais
			Nota_acumulada = vots_pais + Nota_acumulada
			Mitja_pais = Nota_acumulada/jutges			
		FinPara
		
		//comprovació 10
		si deus = Verdadero Entonces
			Escribir "Si que hi han deus"
		SiNo
			Escribir "No hi han deus"
		FinSi
		
		Escribir "La nota mitja de " pais " es " Mitja_pais
		PuntuacioTotalPaisos = Mitja_pais + PuntuacioTotalPaisos
		
		//comprovació guanyador
		si Mitja_pais > PuntuacioGuanyador Entonces
			PuntuacioGuanyador = Mitja_pais
			NomGuanyador = pais
		FinSi
		
		Escribir "Es desitja introduïr les dades de altre país?"
		Leer altre_pais
		si	altre_pais = "si" Entonces
			Escribir ""
		FinSi
		
		ContadorPaisos = ContadorPaisos + 1
	Hasta Que altre_pais='no'
	
	MitjaTotalPaisos = PuntuacioTotalPaisos / ContadorPaisos //calcul mitja de tots els paisos
	
	//mostrar per pantalla els resultats
	Escribir "Han participat " ContadorPaisos " paísos"
	Escribir "El pais guanyador es  " NomGuanyador " amb una mitja de "	PuntuacioGuanyador
	Escribir "La mitja de tots els paisos es " MitjaTotalPaisos
	
FinAlgoritmo
