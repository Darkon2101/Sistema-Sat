-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2026 a las 03:34:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sat_gamificado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nombre_enemigo` varchar(100) DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `pregunta` text NOT NULL,
  `opcion_correcta` varchar(255) NOT NULL,
  `opcion_falsa1` varchar(255) NOT NULL,
  `opcion_falsa2` varchar(255) NOT NULL,
  `feedback_error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `nivel`, `nombre_enemigo`, `imagen_url`, `pregunta`, `opcion_correcta`, `opcion_falsa1`, `opcion_falsa2`, `feedback_error`) VALUES
(1, 'musica', 1, 'Nota Desafinada', 'https://robohash.org/m1?set=set2', '¿Qué cantante es conocida como la intérprete de \"Shake It Off\" y \"Blank Space\"?', 'Taylor Swift', 'Katy Perry', 'Ariana Grande', 'Ha regrabado sus primeros álbumes como \"Taylor\'s Version\".'),
(2, 'musica', 2, 'Ritmo Perdido', 'https://robohash.org/m2?set=set2', '¿Qué artista puertorriqueño lanzó el exitoso álbum \"Un Verano Sin Ti\"?', 'Bad Bunny', 'Rauw Alejandro', 'Daddy Yankee', 'Es conocido como el Conejo Malo.'),
(3, 'musica', 3, 'Eco Constante', 'https://robohash.org/m3?set=set2', '¿Qué cantante canadiense interpreta \"Blinding Lights\"?', 'The Weeknd', 'Justin Bieber', 'Shawn Mendes', 'Se presentó en el show de medio tiempo del Super Bowl en 2021.'),
(4, 'musica', 4, 'Acorde Roto', 'https://robohash.org/m4?set=set2', '¿Qué artista femenina británica canta \"Levitating\" y \"Don\'t Start Now\"?', 'Dua Lipa', 'Adele', 'Charli XCX', 'Su álbum \"Future Nostalgia\" revivió el sonido disco.'),
(5, 'musica', 5, 'Bajo Profundo', 'https://robohash.org/m5?set=set2', '¿Quién es la creadora del éxito \"Flowers\", lanzado en 2023?', 'Miley Cyrus', 'Selena Gomez', 'Demi Lovato', 'Protagonizó una famosa serie de Disney Channel en su infancia.'),
(6, 'musica', 6, 'Sintetizador', 'https://robohash.org/m6?set=set2', '¿Qué banda surcoreana tiene un fandom llamado \"ARMY\"?', 'BTS', 'BLACKPINK', 'Stray Kids', 'Son un grupo de siete integrantes bajo la agencia HYBE.'),
(7, 'musica', 7, 'DJ Fantasma', 'https://robohash.org/m7?set=set2', '¿Qué famosa artista lanzó el disco \"Renaissance\" en 2022?', 'Beyoncé', 'Rihanna', 'Nicki Minaj', 'Formó parte del grupo Destiny\'s Child.'),
(8, 'musica', 8, 'Vocalista Solitario', 'https://robohash.org/m8?set=set2', '¿Qué joven artista ganó múltiples Grammys por su álbum \"When We All Fall Asleep, Where Do We Go?\"?', 'Billie Eilish', 'Olivia Rodrigo', 'Lorde', 'Canta \"Bad Guy\" junto a su hermano Finneas.'),
(9, 'musica', 9, 'Productor Estrella', 'https://robohash.org/m9?set=set2', '¿De quién es el éxito mundial \"As It Was\"?', 'Harry Styles', 'Ed Sheeran', 'Zayn Malik', 'Fue miembro de la boyband One Direction.'),
(11, 'videojuegos', 1, 'Slime Tutorial', 'https://robohash.org/v1?set=set2', '¿Cuál es el bloque más duro de romper en Minecraft en modo supervivencia?', 'Obsidiana', 'Bedrock', 'Diamante', 'La bedrock no se puede romper en supervivencia.'),
(12, 'videojuegos', 2, 'Champiñón Molesto', 'https://robohash.org/v2?set=set2', '¿Cómo se llama el hermano de Mario?', 'Luigi', 'Wario', 'Waluigi', 'Viste de color verde y es más alto.'),
(13, 'videojuegos', 3, 'Creeper', 'https://robohash.org/v3?set=set2', '¿Qué enemigo explota al acercarse en Minecraft?', 'Creeper', 'Zombie', 'Esqueleto', 'Es verde, silencioso y no tiene brazos.'),
(14, 'videojuegos', 4, 'Espartan', 'https://robohash.org/v4?set=set2', '¿Cuál es el arma icónica original de Kratos en God of War?', 'Espadas del Caos', 'Hacha Leviatán', 'Lanza de Draupnir', 'Están atadas a sus brazos con cadenas calientes.'),
(15, 'videojuegos', 5, 'Cazador', 'https://robohash.org/v5?set=set2', '¿En qué ciudad se desarrolla Bloodborne?', 'Yharnam', 'Lordran', 'Lothric', 'Es una ciudad de estilo victoriano gótico asolada por una plaga.'),
(16, 'videojuegos', 6, 'Hyliano', 'https://robohash.org/v6?set=set2', '¿Cuál es el nombre de la princesa que debes rescatar en The Legend of Zelda?', 'Zelda', 'Peach', 'Samus', 'El nombre está en el título del juego.'),
(17, 'videojuegos', 7, 'Sombra', 'https://robohash.org/v7?set=set2', '¿De qué compañía es la consola PlayStation?', 'Sony', 'Microsoft', 'Nintendo', 'Es una multinacional japonesa tecnológica.'),
(18, 'videojuegos', 8, 'Buscador de la Bóveda', 'https://robohash.org/v8?set=set2', '¿Cuál de estos juegos es considerado un \"Hero Shooter\"?', 'Overwatch', 'Call of Duty', 'Battlefield', 'Fue desarrollado por Blizzard.'),
(19, 'videojuegos', 9, 'Guardián', 'https://robohash.org/v9?set=set2', '¿En qué franquicia de disparos aparece Master Chief?', 'Halo', 'Gears of War', 'Doom', 'Es el Spartan 117 y lo acompaña Cortana.'),
(21, 'cineAnime', 1, 'Guardián de la Puerta', 'https://robohash.org/1?set=set2', '¿Cuál es el rango más alto que un cazador puede alcanzar originalmente en \"Solo Leveling\" (excluyendo Monarcas)?', 'Rango Nacional', 'Rango SSS', 'Rango Divino', 'Recuerda a los cazadores de élite que representan a un país entero.'),
(22, 'cineAnime', 2, 'Espíritu del Bosque', 'https://robohash.org/2?set=set2', 'En \"Hotarubi no Mori e\", ¿qué le sucede a Gin si es tocado por un humano?', 'Desaparece para siempre', 'Pierde sus recuerdos', 'Se vuelve humano', 'Es una regla trágica impuesta por el Dios de la Montaña.'),
(23, 'cineAnime', 3, 'Director Fantasma', 'https://robohash.org/3?set=set2', '¿Qué director es conocido por la película \"Inception\" (El Origen)?', 'Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino', 'Es un director británico conocido por jugar con el tiempo.'),
(24, 'cineAnime', 4, 'Mecha Roto', 'https://robohash.org/4?set=set2', '¿Cuál es el nombre del EVA que pilota Shinji Ikari en Evangelion?', 'EVA Unidad 01', 'EVA Unidad 00', 'EVA Unidad 02', 'Es la unidad de color morado y verde.'),
(25, 'cineAnime', 5, 'El Elegido', 'https://robohash.org/5?set=set2', '¿Qué pastilla toma Neo en The Matrix para despertar en el mundo real?', 'La Roja', 'La Azul', 'La Verde', 'Representa la dura verdad de la realidad, frente a la dulce ignorancia.'),
(26, 'cineAnime', 6, 'Troll de las Cavernas', 'https://robohash.org/6?set=set2', 'En El Señor de los Anillos, ¿quién es el portador designado para destruir el Anillo Único?', 'Frodo Bolsón', 'Aragorn', 'Gandalf', 'Es un Hobbit de la Comarca, sobrino de Bilbo.'),
(27, 'cineAnime', 7, 'Espectro Ninja', 'https://robohash.org/7?set=set2', '¿Cuál es el gran sueño de Naruto Uzumaki desde el inicio de la serie?', 'Ser Hokage', 'Destruir Konoha', 'Ser un ANBU', 'Quiere ser el líder de su aldea para que todos lo reconozcan.'),
(28, 'cineAnime', 8, 'Animador Cansado', 'https://robohash.org/8?set=set2', '¿Qué aclamado estudio de animación japonés creó \"El Viaje de Chihiro\"?', 'Studio Ghibli', 'Madhouse', 'Ufotable', 'Fue co-fundado por el legendario Hayao Miyazaki.'),
(29, 'cineAnime', 9, 'Cazarrecompensas', 'https://robohash.org/9?set=set2', '¿En qué icónica franquicia se dice frecuentemente la frase \"Que la Fuerza te acompañe\"?', 'Star Wars', 'Star Trek', 'Dune', 'Es la franquicia galáctica creada por George Lucas.'),
(31, 'musica', 10, 'Michael Jackson', 'Michael.jpg', 'FASE 1: ¿Qué famoso paso de baile popularicé caminando hacia atrás?', 'Moonwalk', 'Breakdance', 'Robot', 'Es el icónico paso lunar.'),
(32, 'musica', 11, 'Michael Jackson', 'Michael.jpg', 'FASE 2: ¿Cuál es mi álbum más vendido con temática de zombies?', 'Thriller', 'Bad', 'Dangerous', 'El video musical es un clásico del terror.'),
(33, 'musica', 12, 'Michael Jackson', 'Michael.jpg', 'FASE 3: ¿En qué grupo cantaba de niño junto a mis hermanos?', 'The Jackson 5', 'The Temptations', 'Boyz II Men', 'Éramos cinco hermanos de la familia Jackson.'),
(34, 'videojuegos', 10, 'Malenia', 'Malenia.jpg', 'FASE 1: ¿De qué juego soy considerada el jefe más difícil?', 'Elden Ring', 'Dark Souls 3', 'Bloodborne', 'Fui creada por Hidetaka Miyazaki y George R.R. Martin.'),
(35, 'videojuegos', 11, 'Malenia', 'Malenia.jpg', 'FASE 2: Soy conocida como la Espada de...', 'Miquella', 'Radahn', 'Marika', 'Lucho para proteger a mi hermano gemelo.'),
(36, 'videojuegos', 12, 'Malenia', 'Malenia.jpg', 'FASE 3: ¿Qué aflicción incurable pudre mi cuerpo?', 'Putrefacción Roja', 'Maldición del Omen', 'Llama Frenética', 'Es una enfermedad escarlata que lo consume todo.'),
(37, 'cineAnime', 10, 'Darth Vader', 'Darth Vader.jpg', 'FASE 1: ¿Quién es mi verdadero hijo?', 'Luke Skywalker', 'Kylo Ren', 'Han Solo', 'Yo soy tu padre...'),
(38, 'cineAnime', 11, 'Darth Vader', 'Darth Vader.jpg', 'FASE 2: ¿Cómo se llama la estación espacial destructora de planetas que comando?', 'Estrella de la Muerte', 'Base Starkiller', 'El Halcón Milenario', 'Es una luna artificial inmensa.'),
(39, 'cineAnime', 12, 'Darth Vader', 'Darth Vader.jpg', 'FASE 3: ¿Quién es mi maestro en el lado oscuro?', 'Darth Sidious', 'Darth Maul', 'Conde Dooku', 'También es conocido como el Emperador Palpatine.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
