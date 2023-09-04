Algoritmo Ilustrador
	
	//Para saber si sus gastos siguen siendo fijos
	Definir respuesta como caracter
	respuesta<-respuesta
	gastomensuales<-250000
	nuevogastomensuales<-0

	
	Escribir "+--------------------------------------------------------------------+"
	Escribir "| Tus Gastos mensuales son: $250.000. Que equivale a :               "
	escribir "| *Casa: $120.000				                                    "
	Escribir "| *Luz, agua, gas, ABL, expensas: $50.000                          "
	Escribir "| *Comida: $80.0000                                                "
	Escribir "| Deseas modificar este importe? Si (S) o No (N)                     "
	Escribir "+--------------------------------------------------------------------+"
	Leer respuesta
	
		Segun respuesta Hacer
			"s" o "S":
				Escribir "Ingresa el nuevo valor de tus gastos fijos mensuales"
				leer nuevogastomensuales
				gastomensuales<-nuevogastomensuales
				Mostrar  "Tus gastos mensuales ahora son: ", nuevogastomensuales
				
				
				//Para calculo de monto  ganado
				gastomensuales<-250000
				cuadrospequenos<-0
				cuadrosgrandes<-0
				gananciadepequenos<-0
				gananciadegrandes<-0
				montofaltante<-0
				montoganancia<-0
				montototal<-gananciadegrandes+gananciadepequenos
				totalencomendados<-cuadrosgrandes+cuadrospequenos
				
				
				Escribir "¿cuantos cuadros encomendaron de tamaño:  (1) cuadro de 1.00x1.00 ?"
				leer cuadrospequenos
				Escribir "¿cuantos cuadros encomendaron de tamaño:   (2) cuadro de 1.50x1.50?"
				leer cuadrosgrandes
				
				Si cuadrospequenos>=0 o cuadrosgrandes>=0 Entonces
					gananciadepequenos<-cuadrospequenos*25000
					gananciadegrandes<-cuadrosgrandes*35000
					totalencomendados<-cuadrosgrandes+cuadrospequenos
					montototal<-gananciadegrandes+gananciadepequenos
				SiNo
				Fin Si
				
				Escribir "+--------------------------------------------------------------------+"
				Escribir "| Cuadros totales encomendados: " , totalencomendados
				escribir "| Cuadros pequeños encomendados: " , cuadrospequenos, " por un monto total de " ,  gananciadepequenos 
				Escribir "| Cuadros grandes encomendados: " , cuadrosgrandes, " por un monto total de " ,  gananciadegrandes
				Escribir "| Monto total de " ,  montototal
				Escribir "| Cuadros faltantes por hacer: " cuadrospequenos " de 1.00x1.00 y " cuadrosgrandes " de 1.50x1.50"
				Escribir "+--------------------------------------------------------------------+"
				
				//Para saber si cubre ganancias BIEN HECHO!
				Si montototal<nuevogastomensuales Entonces
					montofaltante<-nuevogastomensuales-montototal
					escribir "No has cubierto tus gastos"
					Escribir "Tus gastos mensuales son de: ", nuevogastomensuales
					Escribir "El monto faltante para cubrirlos es: $" ,  montofaltante
				SiNo
					montoganancia<-montototal-nuevogastomensuales
					escribir "Si has cubierto tus gastos. El monto sobrante de ganancia es: $" ,  montoganancia
					
				Fin Si
				
				
				
			"n" o "N":
				Mostrar  "Tus gastos mensuales ahora son: ", gastomensuales
							
				//Para calculo de monto  ganado
				Escribir "¿cuantos cuadros encomendaron de tamaño:  (1) cuadro de 1.00x1.00 ?"
				leer cuadrospequenos
				Escribir "¿cuantos cuadros encomendaron de tamaño:   (2) cuadro de 1.50x1.50?"
				leer cuadrosgrandes
						
						Si cuadrospequenos>=0 o cuadrosgrandes>=0 Entonces
							gananciadepequenos<-cuadrospequenos*25000
							gananciadegrandes<-cuadrosgrandes*35000
							totalencomendados<-cuadrosgrandes+cuadrospequenos
							montototal<-gananciadegrandes+gananciadepequenos
						SiNo
						Fin Si
						
						Escribir "+--------------------------------------------------------------------+"
						Escribir "| Cuadros totales encomendados: " , totalencomendados
						escribir "| Cuadros pequeños encomendados: " , cuadrospequenos, " por un monto total de " ,  gananciadepequenos 
						Escribir "| Cuadros grandes encomendados: " , cuadrosgrandes, " por un monto total de " ,  gananciadegrandes
						Escribir "| Monto total de " ,  montototal
						Escribir "| Cuadros faltantes por hacer: " cuadrospequenos " de 1.00x1.00 y " cuadrosgrandes " de 1.50x1.50"
						Escribir "+--------------------------------------------------------------------+"
						
						//Para saber si cubre ganancias
						
						Si montototal<gastomensuales Entonces
							gastomensuales<-250000
							montofaltante<-gastomensuales-montototal
							escribir "No has cubierto tus gastos"
							Escribir "Tus gastos mensuales son de: ", gastomensuales
							Escribir "El monto faltante para cubrirlos es: $" ,  montofaltante
						SiNo
							gastomensuales<-250000
							montoganancia<-montototal-gastomensuales
							escribir "Si has cubierto tus gastos. El monto sobrante de ganancia es: $" ,  montoganancia
							
						Fin Si
					
					
		De Otro Modo:
			escribir "opcion no valida"
	
		Fin Segun
	
FinAlgoritmo
