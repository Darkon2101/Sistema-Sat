# Sistema-Sat# SAT Gamificado — Sistema de Aprendizaje Tecnológico (Dark Fantasy DB)

Aplicación web interactiva de preguntas y retos gamificados bajo una estética *Dark Fantasy*, conectada a una base de datos relacional en un entorno local con **XAMPP**. El proyecto combina mecánicas inspiradas en juegos de rol (*RPG*) y de supervivencia —como un sistema de 3 vidas con animación de daño, temporizador de 20 segundos por turno, cartas de respuesta aleatorias, registro de combate en tiempo real y jefes finales de 3 fases— para hacer el repaso y la evaluación de conocimientos mucho más dinámicos.

---

## ¿Qué es SAT?

**SAT** significa **Sistema de Aprendizaje Tecnológico**. En este proyecto funciona como un entorno de aprendizaje gamificado donde el estudio tradicional se transforma en progresión por niveles y combate por turnos. En lugar de avanzar por listas estáticas de preguntas, el usuario asume un rol, administra su tiempo y sus vidas, recibe retroalimentación inmediata al equivocarse y debe superar encuentros de varias fases para completar cada ruta.

---

## Rutas y Jefes Finales

Al iniciar, el jugador elige entre tres clases/rutas temáticas, cada una con **9 niveles normales** y un **Jefe Final dividido en 3 fases** (con pantalla de alerta previa al enfrentamiento):

* **Player 1 — El Tecnomante (`videojuegos`)**: Preguntas sobre cultura e historia de los videojuegos. Jefes finales en 3 fases: **Malenia** (`Malenia.jpg`).
* **Player 2 — El Explorador (`cineAnime`)**: Preguntas sobre cine y anime. Jefes finales en 3 fases: **Darth Vader** (`Darth Vader.jpg`).
* **Player 3 — El Ídolo Pop (`musica`)**: Preguntas sobre música y artistas. Jefes finales en 3 fases: **Michael Jackson** (`Michael.jpg`).

---

## Arquitectura y Herramientas Utilizadas

* **XAMPP (Apache + MySQL/phpMyAdmin)**: Servidor local para alojar los archivos web y administrar la base de datos.
* **PHP (`api.php`)**: Backend encargado de consultar las preguntas filtradas por `tema` y ordenadas por `nivel` desde MySQL, devolviéndolas en formato JSON para que las respuestas y la estructura no queden expuestas directamente en el HTML.
* **MySQL (`sat_gamificado`)**: Base de datos con la tabla `preguntas` (almacenando tema, nivel, nombre del enemigo, URL/archivo de imagen, pregunta, opción correcta, dos opciones falsas y mensaje de retroalimentación ante errores).
* **HTML5, CSS3 y JavaScript (`index.html`)**: Interfaz oscura con efectos visuales, barra de temporizador de 20 segundos, barajado aleatorio de cartas, panel de registro de combate, aviso de aparición de jefe y sistema de 3 vidas con animación de daño.

---

## Estructura del Proyecto

```text
juego_sat/
├── index.html       # Interfaz de selección, combate, temporizador y lógica de juego
├── api.php          # Endpoint en PHP que conecta con MySQL y retorna las preguntas en JSON
├── Michael.jpg      # Imagen del jefe de la ruta de música
├── Malenia.jpg      # Imagen del jefe de la ruta de videojuegos
└── Darth Vader.jpg  # Imagen del jefe de la ruta de cine y anime
