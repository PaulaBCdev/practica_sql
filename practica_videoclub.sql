create schema if not exists paulabc_practica;

set schema 'paulabc_practica';

create table socio(
	id serial primary key,
	nombre varchar(10) not null,
	apellido_1 varchar(10) not null,
	apellido_2 varchar(10),
	fecha_nacimiento date not null,
	telefono varchar(10) not null, 
	dni char(9) not null
);

create table direccion(
	id serial primary key,
	id_socio integer not null,
	codigo_postal integer not null,
	calle varchar(50) not null,
	numero varchar(10) not null,
	piso varchar(5) not null,
	constraint direccion_socio_fk foreign key (id_socio) references socio(id)
);

create table pelicula(
	id serial primary key,
	titulo varchar(50) not null,
	genero varchar(50) not null,
	director varchar(30) not null,
	sinopsis varchar(100) not null
);

create table copia_pelicula(
	id serial primary key,
	id_pelicula integer not null,
	prestado bool not null,
	constraint copia_p_pelicula foreign key (id_pelicula) references pelicula(id)
);

create table alquiler(
	id serial primary key,
	id_socio integer not null, 
	id_pelicula integer not null,
	id_copia integer not null,
	fecha_prestamo date not null,
	fecha_devolucion date,
	constraint alquiler_socio_fk foreign key (id_socio) references socio(id),
	constraint alquiler_pelicula_fk foreign key (id_pelicula) references pelicula(id),
	constraint alquiler_copia_fk foreign key (id_copia) references copia_pelicula(id)
);