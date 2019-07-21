-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2019 a las 18:53:10
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tesis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'INGENIERIA DE SISTEMAS E INFORMATICA', '2019-07-14 20:31:11', '2019-07-20 21:38:49'),
(2, 'INGENIERIAS CIVIL', '2019-07-14 20:31:19', '2019-07-20 21:39:19'),
(3, 'INGENIERIAS ELECTRICA', '2019-07-14 20:31:29', '2019-07-20 21:39:34'),
(4, 'INGENIERIAS INDUSTRIAL', '2019-07-14 20:31:37', '2019-07-20 21:39:49'),
(5, 'INGENIERIAS MINAS', '2019-07-20 21:40:06', '2019-07-20 21:40:06'),
(6, 'INGENIERIAS AMBIENTAL', '2019-07-20 21:40:22', '2019-07-20 21:40:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expecialidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trabajoact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2013_07_11_072320_create_rols_table', 1),
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_07_13_142847_create_expertos_table', 1),
(20, '2019_07_13_143014_create_carreras_table', 1),
(21, '2019_07_13_143029_create_tpreguntas_table', 1),
(22, '2019_07_13_143039_create_preguntas_table', 1),
(23, '2019_07_14_073333_create_respuestas_table', 1),
(24, '2013_07_11_072320_create_rols_table', 1),
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_07_13_142847_create_expertos_table', 1),
(28, '2019_07_13_143014_create_carreras_table', 1),
(29, '2019_07_13_143029_create_tpreguntas_table', 1),
(30, '2019_07_13_143039_create_preguntas_table', 1),
(31, '2019_07_14_073333_create_respuestas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pregunta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calificacion` int(11) NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpregunta` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `calificacion`, `estado`, `bpregunta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Le gusta caminar por los cerros buscando piedras raras; o', 2, '1', 2, 1, '2019-07-14 20:47:15', '2019-07-20 20:17:42'),
(2, 'Le interesa mucho ser abogado', 3, '1', 3, 2, '2019-07-14 20:47:55', '2019-07-14 20:47:55'),
(3, 'Le agrada estudiar la estructura atómica de los cuerpos; o', 6, '1', 2, 3, '2019-07-14 20:48:08', '2019-07-20 20:17:52'),
(4, 'Preferiría dedicarse a escribir un libro de Física-Matemática.', 1, '1', 2, 4, '2019-07-20 16:41:13', '2019-07-20 16:41:13'),
(5, 'Prefiere el estudio de  las organizaciones sean: campesinas, educativas, laborales, políticas , económicos o religiosas.', 4, '1', 7, 5, '2019-07-20 16:41:38', '2019-07-20 16:41:38'),
(6, 'Prefiere responderse a la pregunta ¿Por qué de los seres y de las cosas?', 3, '1', 1, 6, '2019-07-20 16:43:20', '2019-07-20 20:02:22'),
(7, 'Prefiere asumir la defensa legal de una persona acusada por algún delito.', 34, '1', 7, 7, '2019-07-20 16:43:44', '2019-07-20 19:58:55'),
(8, 'Prefiere conocer las enfermedades que atacan al ganado, aves, perros, etc.', 1, '1', 5, 8, '2019-07-20 20:16:03', '2019-07-20 20:16:03'),
(9, 'Le gusta la idea de estudiar escultura en la escuela de bellas artes ; o', 1, '1', 6, 9, '2019-07-20 20:16:21', '2019-07-20 20:16:21'),
(10, 'Prefiere   hacer mezclas de sustancias  químicas para obtener derivaciones con fines productivos', 3, '1', 4, 10, '2019-07-20 20:16:39', '2019-07-20 20:16:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `identificadortest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificadorpreg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npregunta` int(11) NOT NULL,
  `respuesta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpreguntas`
--

CREATE TABLE `tpreguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acronimo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tpreguntas`
--

INSERT INTO `tpreguntas` (`id`, `descripcion`, `acronimo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'GENERALES', 'GEN', '1', '2019-07-14 20:31:53', '2019-07-20 16:37:51'),
(2, 'Ingenieria de sistemas', 'SIS', '1', '2019-07-14 20:32:06', '2019-07-20 16:38:10'),
(3, 'Ingenieria Civil', 'CIV', '1', '2019-07-14 20:32:19', '2019-07-20 16:38:31'),
(4, 'ingenieria electronica', 'ELE', '1', '2019-07-20 16:38:51', '2019-07-20 16:38:51'),
(5, 'ingenieria industrial', 'IND', '1', '2019-07-20 16:39:06', '2019-07-20 16:39:06'),
(6, 'ingenieria de minas', 'MIN', '1', '2019-07-20 16:39:20', '2019-07-20 16:39:20'),
(7, 'ingenieria ambiental', 'AMB', '1', '2019-07-20 16:39:39', '2019-07-20 16:39:39'),
(8, 'OTROS', 'OTR', '1', '2019-07-20 16:39:57', '2019-07-20 16:39:57'),
(9, 'VERRACIDAD', 'VER', '1', '2019-07-20 16:40:10', '2019-07-20 16:40:10'),
(10, 'CONSTANCIA', 'CON', '1', '2019-07-20 16:40:27', '2019-07-20 16:40:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wilhelm', 'wilhelm1@gmail.com', NULL, '$2y$10$Wj82DoI/0l54dO6WaJOEJuuA8S.wT7jNgo8Q/nfFtbPwNp2vF1M1q', NULL, '2019-07-20 15:47:10', '2019-07-20 15:47:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expertos`
--
ALTER TABLE `expertos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rols_descripcion_unique` (`descripcion`);

--
-- Indices de la tabla `tpreguntas`
--
ALTER TABLE `tpreguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tpreguntas`
--
ALTER TABLE `tpreguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
