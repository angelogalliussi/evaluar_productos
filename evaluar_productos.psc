Algoritmo evaluar_productos
    Definir condiciones_nutricionales Como Caracter;
	energia_min <- 100;
	energia_max <- 200;
	carbohidratos_max <- 15;
	grasas_min <- 1;
	grasas_max <- 13;
	fibra_max <- 15;
	sodio_max <- 2;
	
    productos_descartados <- 0;
    productos_aprobados <- 0;
	
    Repetir
        Escribir "Ingrese los valores nutricional de Energia:";
        Leer energia;
		Escribir "Ingrese los valores nutricional de Carbohidratos:";
        Leer carbohidratos;
		Escribir "Ingrese los valores nutricional de Grasas:";
        Leer grasas;
		Escribir "Ingrese los valores nutricional de Fibra:";
        Leer fibra;
		Escribir "Ingrese los valores nutricional de Sodio:";
        Leer sodio;
		
        porcentaje_carbohidratos <- (carbohidratos);
        porcentaje_grasas <- (grasas);
        porcentaje_fibra <- (fibra);
        porcentaje_sodio <- (sodio);
		
        Si (energia >= energia_min Y energia <= energia_max Y porcentaje_carbohidratos <= carbohidratos_max Y porcentaje_grasas >= grasas_min Y porcentaje_grasas <= grasas_max Y porcentaje_fibra <= fibra_max Y porcentaje_sodio <= sodio_max) Entonces
            Escribir "Puedes comer este producto.";
            productos_aprobados <- productos_aprobados + 1;
        Sino
            Escribir "No puedes comer este producto.";
            productos_descartados <- productos_descartados + 1;
        FinSi
		
        Escribir "¿Deseas evaluar otro producto? (S/N)";
        Leer respuesta;
    Hasta Que respuesta = "N" O respuesta = "n";
	
    Escribir "Número de productos descartados: ", productos_descartados;
    Escribir "Número de productos aprobados: ", productos_aprobados;
FinAlgoritmo