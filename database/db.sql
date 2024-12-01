
DROP DATABASE IF EXISTS superheroes;

CREATE DATABASE superheroes;
USE superheroes;
CREATE  TABLE peliculas_series ( 
	id                   INT    NOT NULL AUTO_INCREMENT ,
	nombre               CHAR(255)    NOT NULL   ,
	fecha_estreno        DATE    NOT NULL   ,
	director_creador   CHAR(255)       ,
	sinopsis             TEXT       ,
	duracion             INT   ,
    PRIMARY KEY ( id )
 );



CREATE  TABLE locaciones ( 
	id                   INT    NOT NULL AUTO_INCREMENT ,
	nombre               CHAR(255)       ,
	descripcion          TEXT       ,
	tipo                 ENUM("Dimension", "Planeta", "Ciudad"),
    PRIMARY KEY (id)      
 );

CREATE  TABLE equipos ( 
	id                   INT    NOT NULL   AUTO_INCREMENT,
	nombre               CHAR(255)       ,
	fecha_creacion       DATE       ,
	id_locacion          INT    NOT NULL   ,
	objetivo             TEXT    NOT NULL   ,
	PRIMARY KEY ( id ),
    FOREIGN KEY ( id_locacion ) REFERENCES locaciones ( id )
 );

CREATE  TABLE heroes ( 
	id                   INT    NOT NULL AUTO_INCREMENT  ,
	nombre               CHAR(255)    NOT NULL  UNIQUE ,
	identidad_secreta    CHAR(255)       ,
	poderes              TEXT       ,
	primera_aparicion    DATE       ,
	universo             CHAR(255)    NOT NULL   ,
	biografia            TEXT       ,
	alineacion           ENUM("Villano", "Heroe", "Antiheroe")       ,
	url_imagen           VARCHAR(1023)    NOT NULL   ,
	equipo               INT      ,
	PRIMARY KEY ( id ),
    FOREIGN KEY ( equipo ) REFERENCES equipos ( id )
 );


CREATE  TABLE armas ( 
	id                   INT    NOT NULL AUTO_INCREMENT  ,
	nombre               CHAR(255)       ,
	descripcion          TEXT       ,
	id_poseedor          INT    NOT NULL   ,
	PRIMARY KEY ( id ),
    FOREIGN KEY ( id_poseedor ) REFERENCES heroes ( id )
 );


CREATE  TABLE heroe_pelicula ( 
	id_pelicula          INT    NOT NULL   ,
	id_heroe             INT    NOT NULL   ,
	descripcion_participacion TEXT       ,
    PRIMARY KEY ( id_pelicula, id_heroe ),
    FOREIGN KEY ( id_pelicula ) REFERENCES peliculas_series ( id ),
    FOREIGN KEY ( id_heroe ) REFERENCES heroes ( id )
 );







