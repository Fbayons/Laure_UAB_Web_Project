-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2019 a las 22:09:37
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `harmony`
--
CREATE DATABASE IF NOT EXISTS `harmony` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `harmony`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_login`, `id_user`, `login_date`) VALUES
(1, 1, '2019-05-10 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `select_value`
--

CREATE TABLE `select_value` (
  `id_select_value` int(11) NOT NULL,
  `tabla_name` varchar(50) NOT NULL,
  `tabla_column` varchar(50) NOT NULL,
  `id_value` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `select_value`
--

INSERT INTO `select_value` (`id_select_value`, `tabla_name`, `tabla_column`, `id_value`, `value`) VALUES
(1, 'user', 'gender', 1, 'woman'),
(2, 'user', 'gender', 2, 'man');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sleep`
--

CREATE TABLE `sleep` (
  `id_sleep` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sleep_date` datetime NOT NULL,
  `sleep_value` int(11) NOT NULL,
  `sleep_hour` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sleep`
--

INSERT INTO `sleep` (`id_sleep`, `id_user`, `sleep_date`, `sleep_value`, `sleep_hour`) VALUES
(1, 1, '2019-05-10 00:00:00', 100, '10.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sleep_exercise`
--

CREATE TABLE `sleep_exercise` (
  `id_sleep_exercise` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sleep_exercise`
--

INSERT INTO `sleep_exercise` (`id_sleep_exercise`, `name`, `description`) VALUES
(1, 'Sleep_Test_1', 'Sleep_Test_1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sleep_result`
--

CREATE TABLE `sleep_result` (
  `id_sleep_result` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sleep_exercise` int(11) NOT NULL,
  `id_sleep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sleep_result`
--

INSERT INTO `sleep_result` (`id_sleep_result`, `id_user`, `id_sleep_exercise`, `id_sleep`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stress`
--

CREATE TABLE `stress` (
  `id_stress` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `stress_date` datetime NOT NULL,
  `stress_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stress`
--

INSERT INTO `stress` (`id_stress`, `id_user`, `stress_date`, `stress_value`) VALUES
(1, 1, '2019-05-10 00:00:00', 56),
(2, 1, '2019-05-10 12:00:00', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stress_exercise`
--

CREATE TABLE `stress_exercise` (
  `id_stress_exercise` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stress_exercise`
--

INSERT INTO `stress_exercise` (`id_stress_exercise`, `name`, `description`) VALUES
(1, 'Stress_Test_1', 'Stress_Test_1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stress_result`
--

CREATE TABLE `stress_result` (
  `id_stress_result` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_stress_exercise` int(11) NOT NULL,
  `init_stress` int(11) NOT NULL,
  `end_stress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stress_result`
--

INSERT INTO `stress_result` (`id_stress_result`, `id_user`, `id_stress_exercise`, `init_stress`, `end_stress`) VALUES
(1, 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `signin_date` datetime NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `exercise_week_frequency` int(11) NOT NULL,
  `sleep_goal` int(11) NOT NULL,
  `sensor_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `user_pass`, `signin_date`, `gender`, `age`, `exercise_week_frequency`, `sleep_goal`, `sensor_type`) VALUES
(1, 'qiangchen_995@hotmail.com', 'pass', '2019-05-10 00:00:00', 1, 25, 1, 7, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `select_value`
--
ALTER TABLE `select_value`
  ADD PRIMARY KEY (`id_select_value`),
  ADD UNIQUE KEY `tabla_name` (`tabla_name`,`tabla_column`,`id_value`);

--
-- Indices de la tabla `sleep`
--
ALTER TABLE `sleep`
  ADD PRIMARY KEY (`id_sleep`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `sleep_exercise`
--
ALTER TABLE `sleep_exercise`
  ADD PRIMARY KEY (`id_sleep_exercise`);

--
-- Indices de la tabla `sleep_result`
--
ALTER TABLE `sleep_result`
  ADD PRIMARY KEY (`id_sleep_result`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `init_sleep` (`id_sleep`),
  ADD KEY `id_sleep_exercise` (`id_sleep_exercise`);

--
-- Indices de la tabla `stress`
--
ALTER TABLE `stress`
  ADD PRIMARY KEY (`id_stress`),
  ADD KEY `stress_ibfk_1` (`id_user`);

--
-- Indices de la tabla `stress_exercise`
--
ALTER TABLE `stress_exercise`
  ADD PRIMARY KEY (`id_stress_exercise`);

--
-- Indices de la tabla `stress_result`
--
ALTER TABLE `stress_result`
  ADD PRIMARY KEY (`id_stress_result`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `init_stress` (`init_stress`),
  ADD KEY `end_stress` (`end_stress`),
  ADD KEY `id_stress_exercise` (`id_stress_exercise`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `select_value`
--
ALTER TABLE `select_value`
  MODIFY `id_select_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sleep`
--
ALTER TABLE `sleep`
  MODIFY `id_sleep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sleep_exercise`
--
ALTER TABLE `sleep_exercise`
  MODIFY `id_sleep_exercise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sleep_result`
--
ALTER TABLE `sleep_result`
  MODIFY `id_sleep_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `stress`
--
ALTER TABLE `stress`
  MODIFY `id_stress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `stress_exercise`
--
ALTER TABLE `stress_exercise`
  MODIFY `id_stress_exercise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `stress_result`
--
ALTER TABLE `stress_result`
  MODIFY `id_stress_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `sleep`
--
ALTER TABLE `sleep`
  ADD CONSTRAINT `sleep_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `sleep_result`
--
ALTER TABLE `sleep_result`
  ADD CONSTRAINT `sleep_result_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sleep_result_ibfk_2` FOREIGN KEY (`id_sleep`) REFERENCES `sleep` (`id_sleep`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sleep_result_ibfk_3` FOREIGN KEY (`id_sleep_exercise`) REFERENCES `sleep_exercise` (`id_sleep_exercise`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `stress`
--
ALTER TABLE `stress`
  ADD CONSTRAINT `stress_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `stress_result`
--
ALTER TABLE `stress_result`
  ADD CONSTRAINT `stress_result_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `stress_result_ibfk_2` FOREIGN KEY (`init_stress`) REFERENCES `stress` (`id_stress`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `stress_result_ibfk_3` FOREIGN KEY (`end_stress`) REFERENCES `stress` (`id_stress`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `stress_result_ibfk_4` FOREIGN KEY (`id_stress_exercise`) REFERENCES `stress_exercise` (`id_stress_exercise`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
