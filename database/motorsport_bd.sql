-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2022 a las 01:31:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motorsport_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `id` int(200) NOT NULL,
  `nombres` varchar(2000) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `id_categorias` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id`, `nombres`, `descripcion`, `modelo`, `marca`, `id_categorias`) VALUES
(1, 'Audi R8 LMS Evo II', 'Este R8 LMS GT3 Evo II incorpora diferentes mejoras en muchos aspectos, desde componentes aerodinámicos o cambios en el chasis, hasta nuevas especificaciones para el motor o una puesta a punto específica para el control de tracción o el sistema de climatización.la suspensión del R8 LMS GT3 cuenta con amortiguadores ajustables (4 ajustes) y, además, el control de tracción ahora ofrece más opciones de configuración que antes. Todas estas mejoras, además, se adoptarán en los coches de nueva fabricación pero también se podrán equipar a posteriori en modelos previos.', 'GT3', 'AUDI', 1),
(2, 'Bentley Continental GT3', 'Se llama Bentley Continental GT3 2018 y es la segunda generación del bólido de la casa de Crewe destinado a las carreras de resistencia, especialmente a las Blancpain GT Series Endurance Cup donde su antecesor ha logrado ya 120 podios y 45 victorias en las 528 carreras disputadas en todo el mundo.\r\n\r\nLa nueva carrocería no puede presentar un aspecto mejor y es que luce numerosos componentes aerodinámicos de fibra de carbono como el splitter frontal, el difusor de aire trasero, los faldones y aletines laterales así como el imponente alerón posterior de tres piezas firmado por Bentley tanto en su parte superior como en la inferior. Con estas modificaciones, la longitud total del GT ha ascendido a los 4,86 metros y la anchura a los 2,05 metros, mientras que la altura se limita a los 1,35 metros.', 'GT3', 'Bentley', 1),
(3, 'RB18', 'El RB18 es un monoplaza que abre un nuevo ciclo reglamentario y, junto con el F1-75, que seguía un concepto aerodinámico diferente, es el coche de referencia del Gran Circo, aunque en prestaciones puras el coche rojo suele mostrar picos superiores.\r\n\r\nEl coche de Adrian Newey tuvo un difícil comienzo de temporada, pero luego el equipo campeón del mundo pudo jugar con Ferrari como el gato y el ratón, consiguiendo nueve victorias (ocho de Vestappen y una de Pérez) frente a las tres de la Scuderia (dos de Leclerc y una de Sainz).\r\n\r\nLa suspensión tiene un diseño inusual: barra de tracción delantera y barra de empuje trasera. Se trata de elecciones dictadas por los requisitos aerodinámicos, pero también van en la dirección de un buen aprovechamiento de los neumáticos. En el RB16B, Newey había introducido un único brazo que unía los dos triángulos inferiores, mientras que en el RB18 propuso esta solución para el triángulo superior, introduciendo, en cambio, brazos multibrazo en la parte inferior.', 'Monoplaza', 'Red Bull (FABRICANTE)', 2),
(6, 'W13', 'El Mercedes-AMG F1 W13 E Performance es un monoplaza de Fórmula 1 diseñado por Mercedes para disputar la temporada 2022. Es manejado por Lewis Hamilton y George Russell, quien hizo su debut en la escudería tras estar tres años con Williams Racing.\r\n\r\nEl chasis fue presentado oficialmente el 18 de febrero de 2022,2​ y probado por primera vez durante un filming-day en el circuito de Silverstone.', 'MONOPLZA', 'Mercedes AMG', 2),
(7, '911 RSR GTE', 'El modelo, creado con el objetivo de revalidar el título del Mundial de Resistencia de la FIA (WEC) en la categoría GTE, es de nuevo desarrollo y viene a sustituir al exitoso 911 RSR saliente, que en 2019 ha ganado el título WEC de constructores y pilotos, o carreras del IMSA en Sebring y Road Atlanta', 'GTE', 'Porsche', 4),
(8, 'GR010 Hybrid', 'El Toyota GR010 Hybrid es un super deportivo de monocasco cerrado construido por el fabricante japonés Toyota para participar en la categoría Le Mans Hypercar del Campeonato Mundial de Resistencia de la FIA.1​\r\n\r\nEl coche es el sucesor directo del exitoso Toyota TS050 Hybrid que compitió en el WEC de 2016 a 2019-20, logrando 2 títulos mundiales de pilotos y dos de equipos, además de 3 victorias consecutivas en las 24 Horas de Le Mans de 2018 a 2020. El GR010 Hybrid fue presentado en línea el 15 de enero de 2021.', 'Hypercar', 'Toyota', 4),
(9, 'Valkyrie', 'El Aston Martin Valkyrie es un próximo automóvil deportivo de producción construido de manera colaborativa por Aston Martin, Red Bull Racing y varios otros fabricantes.\r\n\r\nEl coche deportivo es un producto de la colaboración entre Aston Martin y Red Bull Racing para crear un coche totalmente utilizable y agradable como un coche de carretera. Los fabricantes del coche reclaman el título de coche más rápido de conducción legal en carretera en el mundo. Su diseño fue ayudado por Adrian Newey, director técnico de Red Bull Racing y uno de los diseñadores más exitosos de la Fórmula 1.', 'Hypercar', 'Aston Martin', 4),
(10, 'TRD Camry', 'Toyota, TRD (Toyota Racing Development, EE. UU.) y Calty Design han trabajado juntos para garantizar que se incorporen tantas características de estilo de carrocería como sea posible en el Toyota TRD Camry Next Gen para que se parezca lo más posible a su contraparte de producción. Desde la parrilla hasta el alerón y todo lo demás, el auto de carrera Next Gen TRD Camry tiene la mayor cantidad de atributos de estilo de carrocería para su contraparte de producción que nunca antes en un NCS Camry. Esta es una práctica que Toyota y TRD han empleado desde el desarrollo del Camry 2013 en la competencia NCS.', 'Turismo', 'Toyota', 5),
(11, ' All New Civic 1.6', 'Honda Motor de Argentina presentó en Argentina la décima generación del Civic. El nuevo sedán se destacada por ser un modelo más sofisticado, seguro, tecnológico, con mejor desempeño y mayor eficiencia. Esta nueva generación del Civic se comercializará en tres versiones: EX, EX-L y EX-T.', 'Turismo', 'Honda', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorias`, `nombre`, `descripcion`, `tipo`) VALUES
(1, 'BlancPain Series', 'Blancpain GT Series, es una serie de campeonatos de automovilismo de velocidad que se disputan en Europa desde el año 2011. Participan gran turismos de los reglamentos GT3.', 'CONTINENTAL'),
(2, 'F1', 'El Campeonato Mundial de Fórmula 1 de la FIA, más conocido como Fórmula 1, F1 o Fórmula Uno, es la principal competición de automovilismo internacional y el campeonato de deportes de motor más popular y prestigioso del mundo. La entidad que la dirige es la Federación Internacional del Automóvil.', 'INTERNACIONAL'),
(4, 'WEC', 'El Campeonato Mundial de Resistencia de la FIA es una competición de automovilismo de velocidad que se disputa entre sport prototipos y gran turismos. A lo largo de su historia ha cambiado numerosas veces de nombre y reglamentos', 'INTERNACIONAL'),
(5, 'Nascar', 'La National Association for Stock Car Auto Racing, más conocida simplemente por sus siglas NASCAR, es la categoría automovilística más comercial y popular de los Estados Unidos, y la competición de stock cars más importante del mundo. Es miembro del Automobile Competition Committee for the United States', 'NACIONAL'),
(6, 'Turismo Nacional', 'El Turismo Nacional, conocido popularmente por sus siglas TN, es un campeonato argentino de automovilismo de velocidad que se desarrolla desde el año 1961. La misma está organizada por la Asociación de Pilotos de Automóviles de Turismo y es regida por la Comisión Deportiva Automovilística del Automóvil Club Argentino', 'NACIONAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `nombre` varchar(2000) NOT NULL DEFAULT 'NOT NULL',
  `password` varchar(2000) DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categorias`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autos`
--
ALTER TABLE `autos`
  ADD CONSTRAINT `autos_ibfk_1` FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id_categorias`) ON UPDATE CASCADE;
COMMIT;


ALTER TABLE categorias
ADD COLUMN id_usuario INT;

ALTER TABLE categorias
ADD CONSTRAINT fk_id_usuario
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
ON DELETE CASCADE;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
