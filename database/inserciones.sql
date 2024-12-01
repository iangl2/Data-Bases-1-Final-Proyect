INSERT INTO locaciones (nombre, descripcion, tipo) VALUES ("Nueva York", "Ciudad principal donde ocurren varios eventos de Marvel", "Ciudad");
INSERT INTO locaciones (nombre, descripcion, tipo) VALUES ("Asgard", "Reino mítico de los dioses nórdicos", "Dimension");
INSERT INTO locaciones (nombre, descripcion, tipo) VALUES ("Wakanda", "Nación avanzada en África y hogar de Black Panther", "Ciudad");
INSERT INTO locaciones (nombre, descripcion, tipo) VALUES ("Titan", "Planeta natal de Thanos", "Planeta");

INSERT INTO equipos (nombre, fecha_creacion, id_locacion, objetivo) VALUES ("Avengers", "1963-09-01", 1, "Proteger el mundo de amenazas globales");
INSERT INTO equipos (nombre, fecha_creacion, id_locacion, objetivo) VALUES ("Guardians of the Galaxy", "2008-05-01", 4, "Proteger la galaxia");
INSERT INTO equipos (nombre, fecha_creacion, id_locacion, objetivo) VALUES ("X-Men", "1963-09-01", 1, "Proteger a los mutantes y defender la paz");
INSERT INTO equipos (nombre, fecha_creacion, id_locacion, objetivo) VALUES ("Asgardian Army", "2011-05-06", 2, "Defender Asgard y sus reinos");

INSERT INTO peliculas_series (nombre, fecha_estreno, director_creador, sinopsis, duracion) VALUES ("Avengers", "2012-04-11", "Joss Whedon", "Los héroes se reúnen para detener la invasión de Loki.", 143);
INSERT INTO peliculas_series (nombre, fecha_estreno, director_creador, sinopsis, duracion) VALUES ("Guardians of the Galaxy", "2014-07-31", "James Gunn", "Grupo de forasteros protegiendo la galaxia.", 121);
INSERT INTO peliculas_series (nombre, fecha_estreno, director_creador, sinopsis, duracion) VALUES ("Black Panther", "2018-02-16", "Ryan Coogler", "La historia de T'Challa y Wakanda.", 134);
INSERT INTO peliculas_series (nombre, fecha_estreno, director_creador, sinopsis, duracion) VALUES ("Thor: Ragnarok", "2017-10-10", "Taika Waititi", "Thor debe escapar de Sakaar para salvar Asgard.", 130);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) VALUES ("Iron Man", "Tony Stark", "Tecnología avanzada, traje de poder", "1963-03-01", "Marvel", "Tony Stark es un genio millonario que construyó el traje de Iron Man.", "Heroe", "https://www.akiracomics.com/imagenes/poridentidad?identidad=486d4740-0c4d-43c9-9cd1-d695f7185445&ancho=850&alto=", 1);
INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) VALUES ("Captain America", "Steve Rogers", "Fuerza sobrehumana, habilidades tácticas", "1941-03-01", "Marvel", "Steve Rogers es un super soldado de la Segunda Guerra Mundial.", "Heroe", "https://i.blogs.es/f391c6/captain-america-main/840_560.jpeg", 1);
INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) VALUES ("Thor", "Thor Odinson", "Fuerza, control sobre el trueno", "1962-08-01", "Marvel", "Dios del trueno de Asgard.", "Heroe", "https://www.mundodeportivo.com/alfabeta/hero/2023/06/template-54_3j4t.jpg?width=768&aspect_ratio=16:9&format=nowebp", 4);
INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) VALUES ("Black Panther", "T'Challa", "Habilidades sobrehumanas, sentidos agudos", "1966-07-01", "Marvel", "Rey de Wakanda y portador del traje de Black Panther.", "Heroe", "https://pyxis.nymag.com/v1/imgs/fae/425/58c79341af156913d20677dcf16cbe05fe-lede-.rsquare.w400.jpg", 1);
INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) VALUES ("Star-Lord", "Peter Quill", "Experto en armas y combate, medio-celestial", "1976-01-01", "Marvel", "Líder de los Guardianes de la Galaxia.", "Heroe", "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2014/04/318392-star-lord-guardianes-galaxia-tendra-comic-propio.jpg?tf=3840x", 2);

INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Escudo del Capitán América", "Escudo indestructible de vibranium usado en combate", 2);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Mjolnir", "Martillo de Thor, solo los dignos pueden levantarlo", 3);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Traje de Iron Man", "Traje avanzado de Tony Stark con armamento", 1);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Dagas de Vibranium", "Armas usadas por Black Panther", 4);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Element Gun", "Pistola de Star-Lord que dispara diversos elementos", 5);

INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 1, "Líder de los Avengers, juega un papel central en la defensa contra Loki.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 2, "El primer vengador, lucha junto a los Avengers contra Loki.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (4, 3, "Thor regresa a Asgard y lucha para salvar a su pueblo.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (3, 4, "Defiende Wakanda y su legado contra el desafío de Killmonger.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (2, 5, "Líder de los Guardianes, se enfrenta a Ronan y otros villanos.");



INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Spider-Man", "Peter Parker", "Reflejos, fuerza sobrehumana, lanzar telarañas", "1962-08-01", "Marvel", "Joven que adquiere poderes arácnidos y protege a Nueva York.", "Heroe", "https://wallpapers.com/images/hd/spiderman-background-oycfyb1ksermw921.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Doctor Strange", "Stephen Strange", "Magia, manipulación de realidades", "1963-07-01", "Marvel", "Hechicero Supremo que protege al mundo de amenazas místicas.", "Heroe", "https://images.comicbooktreasury.com/wp-content/uploads/2022/02/Doctor-Strange-Reading-Order-705x470.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Scarlet Witch", "Wanda Maximoff", "Manipulación de la realidad, magia del caos", "1964-03-01", "Marvel", "Ex-miembro de Hydra y poderosa hechicera con habilidades inusuales.", "Antiheroe", "https://upload.wikimedia.org/wikipedia/en/thumb/7/73/ScarletWitch.jpg/220px-ScarletWitch.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Vision", "N/A", "Fuerza, volar, manipulación de densidad", "1968-10-01", "Marvel", "Androide con mente artificial creado para ser una herramienta de paz.", "Heroe", "https://img.europapress.es/fotoweb/fotonoticia_20150315113916_1200.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Hulk", "Bruce Banner", "Fuerza inmensa, resistencia extrema", "1962-05-01", "Marvel", "Científico que se convierte en Hulk debido a exposición a radiación gamma.", "Heroe", "https://www.mundodeportivo.com/alfabeta/hero/2024/08/hulk-bruce-banner-marvel-studios-ucm.jpg?width=768&aspect_ratio=16:9&format=nowebp", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Black Widow", "Natasha Romanoff", "Habilidades de espionaje, combate mano a mano", "1964-04-01", "Marvel", "Espía y agente de SHIELD entrenada en combate.", "Heroe", "https://www.akiracomics.com/imagenes/poridentidad?identidad=a94c1740-2085-48dc-8f30-a7337901fad1&ancho=850&alto=", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Falcon", "Sam Wilson", "Experto en combate aéreo, habilidades con traje alado", "1969-09-01", "Marvel", "Aliado de Capitán América con traje alado avanzado.", "Heroe", "https://upload.wikimedia.org/wikipedia/en/2/2e/TheFalcon.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Ant-Man", "Scott Lang", "Capacidad de cambiar de tamaño, comunicación con insectos", "1979-02-01", "Marvel", "Ex-ladrón que utiliza un traje especial para reducir su tamaño.", "Heroe", "https://comicvine.gamespot.com/a/uploads/scale_medium/14/149570/4153676-ant-man-samnee-variant-a2299.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Wasp", "Hope Van Dyne", "Cambio de tamaño, alas y aguijones de energía", "1963-06-01", "Marvel", "Hija de la Wasp original, combate junto a Ant-Man.", "Heroe", "https://comicvine.gamespot.com/a/uploads/scale_small/10/100647/6039335-wasp.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Drax the Destroyer", "N/A", "Fuerza y resistencia sobrehumanas", "1973-02-01", "Marvel", "Miembro de los Guardianes de la Galaxia que busca vengarse de Thanos.", "Heroe", "https://upload.wikimedia.org/wikipedia/en/0/02/Drax-cover.jpg", 2);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Gamora", "N/A", "Fuerza, agilidad, habilidades en combate", "1975-06-01", "Marvel", "Hija adoptiva de Thanos, lucha por redimir sus actos pasados.", "Heroe", "https://i.pinimg.com/736x/80/5b/ff/805bff7f268c2f275b74741709b8a3d9.jpg", 2);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Rocket Raccoon", "N/A", "Experto en armas y tácticas, genio mecánico", "1976-07-01", "Marvel", "Mapache antropomorfo y miembro de los Guardianes de la Galaxia.", "Heroe", "https://upload.wikimedia.org/wikipedia/en/1/1b/Rocketraccoon.png", 2);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Groot", "N/A", "Regeneración, control vegetal", "1960-11-01", "Marvel", "Ser extraterrestre que puede crecer y regenerarse a voluntad.", "Heroe", "https://i0.wp.com/www.tomosygrapas.com/wp-content/uploads/2023/01/Groot.jpg?resize=747%2C421&ssl=1", 2);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Nick Fury", "N/A", "Estrategia militar, liderazgo", "1963-05-01", "Marvel", "Director de SHIELD, organizador de los Avengers.", "Heroe", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhCqjdn-gISpdiBc8UbTidYVQQDM-fz6-Y1OU5wqncSwYsSEKi02WV2G8mhQkcumzF0e2PMmpK09h7Ehc8EmKgwAxthK-A6lEYR7BwJfquIDs-SE-_tI2Nqk3B_DDQZrttrsnq1bX9966HS-1rGMjNNvKCc59FBLyUJjPrm6iC0KRA07ojuIIBob5yTyIoY/s960/nickfuryjr.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("War Machine", "James Rhodes", "Fuerza sobrehumana gracias a armadura de combate", "1979-03-01", "Marvel", "Amigo y aliado de Tony Stark, utiliza una versión militarizada del traje de Iron Man.", "Heroe", "https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/05/war-machine.jpg", 1);

INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Web Shooters", "Lanza telarañas desarrollados por Peter Parker", 6);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Cloak of Levitation", "Capa mágica que permite volar a Doctor Strange", 7);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Widow's Bite", "Arma de choque eléctrico usada por Black Widow", 11);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Wingsuit", "Traje alado utilizado por Falcon para volar", 12);
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Blasters", "Armas de fuego utilizadas por Star-Lord en combate", 5);

INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 6, "Spider-Man se une a los Avengers para enfrentar amenazas globales.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 7, "Doctor Strange ayuda a los Avengers en sus luchas cósmicas.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 8, "Scarlet Witch demuestra sus habilidades en las batallas.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (1, 9, "Vision lucha junto a los Avengers para proteger la Tierra.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (2, 15, "War Machine se une a las batallas de los Avengers.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (2, 10, "Drax lucha con los Guardianes para salvar la galaxia.");
INSERT INTO heroe_pelicula (id_pelicula, id_heroe, descripcion_participacion) VALUES (2, 11, "Gamora combate junto a los Guardianes para derrotar a Ronan.");




INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Deadpool", "Wade Wilson", "Regeneración avanzada, habilidades en combate", "1991-02-01", "Marvel", "Mercenario con un humor único y habilidades regenerativas extremas.", "Antiheroe", "https://sm.ign.com/t/ign_ap/review/d/deadpool-r/deadpool-review_36q1.1280.jpg", 1);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Wolverine", "Logan", "Regeneración, garras de adamantium, sentidos agudos", "1974-10-01", "Marvel", "Mutante con un pasado oscuro, miembro frecuente de los X-Men.", "Heroe", "https://duet-cdn.vox-cdn.com/thumbor/0x0:828x1200/2400x1600/filters:focal(593x154:594x155):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23009397/FEAcf4dUcAET6lR.jpg", 3);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Cyclops", "Scott Summers", "Rayo láser ocular, líder táctico", "1963-09-01", "Marvel", "Líder de campo de los X-Men con una visión clara del objetivo.", "Heroe", "https://preview.redd.it/what-you-guys-would-had-done-differently-with-cyclops-james-v0-j42li9uormca1.jpg?width=1080&crop=smart&auto=webp&s=4fcdb2919976af2717c1e3dd3c3df108052f08b1", 3);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Jean Grey", "Jean Grey", "Telepatía, telequinesis", "1963-09-01", "Marvel", "Mutante poderosa con la capacidad de controlar mentes y objetos.", "Heroe", "https://xmenthefanficseries.com/wp-content/uploads/2013/06/x3-jean-grey.jpg", 3);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Green Goblin", "Norman Osborn", "Fuerza mejorada, inteligencia, arsenal avanzado", "1964-07-01", "Marvel", "Villano icónico de Spider-Man, con tecnología avanzada.", "Villano", "https://imgix.ranker.com/list_img_v2/2287/2802287/original/best-green-goblin-comics-storylines?fit=crop&fm=pjpg&q=80&dpr=2&w=1200&h=720", NULL);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Daredevil", "Matt Murdock", "Sentidos aumentados, habilidades acrobáticas", "1964-04-01", "Marvel", "Abogado de día, vigilante de noche, protege Hell's Kitchen.", "Heroe", "https://townsquare.media/site/442/files/2016/02/daredevil-netflix-series-costume-concept-art-by-ryan-meinerding.jpg", NULL);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Elektra", "Elektra Natchios", "Habilidades de combate, sigilo", "1981-01-01", "Marvel", "Asesina entrenada con una relación cercana a Daredevil.", "Antiheroe", "https://img1.hulu.com/user/v3/artwork/66ba7a65-9a3b-41ae-9353-e00262fd19f8?base_image_bucket_name=image_manager&base_image=e26a39e0-9de3-458b-99e0-69afff16c293&size=458x687&format=webp", NULL);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Silver Surfer", "Norrin Radd", "Manipulación cósmica, velocidad interestelar", "1966-03-01", "Marvel", "Heraldo de Galactus que busca redimirse de su pasado.", "Heroe", "https://d2ycltig8jwwee.cloudfront.net/features/813/fullwidth.dd6bac1d.jpg", NULL);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Jessica Jones", "Jessica Campbell", "Fuerza sobrehumana, resistencia", "2001-10-01", "Marvel", "Detective privada con un pasado traumático y habilidades sobrehumanas.", "Antiheroe", "https://www.crushingkrisis.com/assets/Jessica_Jones_Vol_1_1_Maleev_Variant_Textless-400x607.jpg", NULL);

INSERT INTO heroes (nombre, identidad_secreta, poderes, primera_aparicion, universo, biografia, alineacion, url_imagen, equipo) 
VALUES ("Moon Knight", "Marc Spector", "Fuerza aumentada por la luna, habilidades de combate", "1975-08-01", "Marvel", "Vigilante con múltiples personalidades y habilidades mejoradas.", "Antiheroe", "https://i.pinimg.com/474x/e0/ca/79/e0ca7913e7b45d4f82de98e17ebc0407.jpg", NULL);


INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Katanas de Deadpool", "Espadas utilizadas en combate cuerpo a cuerpo.", (SELECT id FROM heroes WHERE nombre = "Deadpool")); 
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Garras de adamantium", "Garras indestructibles implantadas en Wolverine.", (SELECT id FROM heroes WHERE nombre = "Wolverine")); 
INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Bastón de Daredevil", "Herramienta multiuso utilizada por Daredevil.", (SELECT id FROM heroes WHERE nombre = "Daredevil"));
 INSERT INTO armas (nombre, descripcion, id_poseedor) VALUES ("Sai de Elektra", "Armas cuerpo a cuerpo de Elektra.", (SELECT id FROM heroes WHERE nombre = "Daredevil"));

INSERT INTO locaciones (nombre, descripcion, tipo) VALUES ("Hell's Kitchen", "Barrio protegido por Daredevil.", "Ciudad");

