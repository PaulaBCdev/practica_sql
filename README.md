# Práctica de Modelado de datos y SQL - Videoclub

## Requisitos funcionales
- Registrar los **socios** del videoclub. Necesitamos:
	* Nombre
	* Apellidos
	* Fecha de nacimiento
	* Teléfono
	* DNI
	* Número de socio

- Registrar la **direccion de correspondencia** del socio. No es requisito obligatorio. Necesitamos:
	* Código postal
	* Calle
	* Número
	* Piso
	
- Registrar las **películas**. Puedo tener más de una copia de cada una. Necesito:
	* Título
	* Género
	* Director
	* Sinopsis

- A qué socio se le presta qué copia y cuándo. Es decir, registrar la fecha en la que se ha llevado la película y la fecha de devolución. Si no hay fecha de devolución es que está prestada.


		
## Modelado de los datos
Después de muchos cambios del diseño a lo largo de la realización de la práctica, el modelo final consta de 7 tablas:
1. Direccion
2. Socio
3. Genero
4. Director
5. Pelicula
6. Copia_pelicula
7. Alquiler

En todas se incluye lo que se pide en el enunciado de la práctica, así que solamente mencionaré los cambios y atributos extra que creo más interesantes.
- En la tabla *socio* se ha añadido un atributo id_direccion null, ya que no es obligatori que un socio tenga una direccion registrada, por lo que ese campo puede estar vacío.
- En esta misma tabla se ha añadido un apartado num_socio autoincremental que sustituye a una antigua tabla *carnet*. Este atributo tiene el mismo numero que el id del socio, pero evitando que, en caso de que ese campo sufra modificaciones, los cambios se tuviesen que hacer en el identificador del cosio.
- Se han creado dos tablas, una para *director* y otra para *genero* imitando a la tabla provincia del ejercicio de clase. Asi se evita que sea el usuario el que escriba a mano estos datos, quedando asi registrados diferentes nombres para las mismas cosas. \


## Creación de las tablas y consultas a la base de datos
Si bien las tablas se han creado sin mayor problema, sí es verdad que han ido sufriendo alteraciones a lo largo de la realización de la práctica para ir amoldándolas a los datos que se querían insertar y los cambios que iba sufriendo el diagrama del modelado de datos.

Como último comentario añadir que en la última consulta en la que se pide una tabla con las copias que quedan disponibles de cada película he creado una vista para tener guardada esa consulkta concreta, ya que en la práctica se comenta que van a ser datos muy necesarios en el dia a dia del videoclub.
