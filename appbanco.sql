-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2021 a las 22:20:34
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appbanco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_20_044933_create_transacciones_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_transaccion` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `monto` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `tipo_transaccion`, `fecha`, `monto`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-21 00:00:00', 1000000, 3, '2020-09-22 04:13:52', '2020-09-22 04:13:52'),
(2, 2, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:14:05', '2020-09-22 04:14:05'),
(3, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:16:34', '2020-09-22 04:16:34'),
(4, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:18:47', '2020-09-22 04:18:47'),
(5, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:23:03', '2020-09-22 04:23:03'),
(6, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:23:47', '2020-09-22 04:23:47'),
(7, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 04:27:36', '2020-09-22 04:27:36'),
(8, 3, '2020-09-21 00:00:00', 300000, 3, '2020-09-22 04:43:15', '2020-09-22 04:43:15'),
(9, 3, '2020-09-21 00:00:00', 30000, 3, '2020-09-22 06:08:36', '2020-09-22 06:08:36'),
(10, 1, '2020-09-21 19:22:07', 1000000, 3, '2020-09-22 06:22:07', '2020-09-22 06:22:07'),
(11, 2, '2020-09-21 00:00:00', 500000, 3, '2020-09-22 06:22:30', '2020-09-22 06:22:30'),
(12, 3, '2020-09-21 00:00:00', 200000, 3, '2020-09-22 06:23:06', '2020-09-22 06:23:06'),
(13, 1, '2020-09-21 19:24:16', 12000, 3, '2020-09-22 06:24:16', '2020-09-22 06:24:16'),
(14, 2, '2020-09-21 00:00:00', 82000, 3, '2020-09-22 06:24:53', '2020-09-22 06:24:53'),
(15, 1, '2020-09-21 19:25:29', 100000, 3, '2020-09-22 06:25:29', '2020-09-22 06:25:29'),
(16, 3, '2020-09-21 00:00:00', 1234, 3, '2020-09-22 06:41:04', '2020-09-22 06:41:04'),
(17, 3, '2020-09-21 00:00:00', 1234, 3, '2020-09-22 06:41:22', '2020-09-22 06:41:22'),
(18, 3, '2020-09-21 00:00:00', 132, 3, '2020-09-22 06:43:27', '2020-09-22 06:43:27'),
(19, 3, '2020-09-21 00:00:00', 123, 3, '2020-09-22 06:43:49', '2020-09-22 06:43:49'),
(20, 2, '2020-09-21 00:00:00', 97277, 3, '2020-09-22 06:44:47', '2020-09-22 06:44:47'),
(21, 3, '2020-09-21 00:00:00', 12, 3, '2020-09-22 06:46:59', '2020-09-22 06:46:59'),
(22, 1, '2020-09-21 19:48:08', 12, 3, '2020-09-22 06:48:08', '2020-09-22 06:48:08'),
(23, 3, '2020-09-21 00:00:00', 100000, 3, '2020-09-22 06:48:53', '2020-09-22 06:48:53'),
(24, 3, '2020-09-21 00:00:00', 100000, 3, '2020-09-22 06:49:48', '2020-09-22 06:49:48'),
(25, 3, '2020-09-21 00:00:00', 100000, 3, '2020-09-22 06:51:11', '2020-09-22 06:51:11'),
(26, 3, '2020-09-21 00:00:00', 100000, 3, '2020-09-22 06:52:37', '2020-09-22 06:52:37'),
(27, 1, '2020-09-21 19:57:17', 123, 3, '2020-09-22 06:57:17', '2020-09-22 06:57:17'),
(28, 2, '2020-09-21 20:09:29', 3000000, 3, '2020-09-22 07:09:29', '2020-09-22 07:09:29'),
(29, 1, '2020-09-21 20:12:17', 3499877, 3, '2020-09-22 07:12:17', '2020-09-22 07:12:17'),
(30, 3, '2020-09-21 20:23:53', 20000, 3, '2020-09-22 07:23:53', '2020-09-22 07:23:53'),
(31, 3, '2020-09-21 20:28:16', 100000, 3, '2020-09-22 07:28:16', '2020-09-22 07:28:16'),
(32, 3, '2020-09-21 20:33:32', 100000, 3, '2020-09-22 07:33:32', '2020-09-22 07:33:32'),
(33, 3, '2020-09-21 20:43:02', 100, 3, '2020-09-22 07:43:02', '2020-09-22 07:43:02'),
(34, 3, '2020-09-21 20:44:14', 100, 3, '2020-09-22 07:44:14', '2020-09-22 07:44:14'),
(35, 3, '2020-09-21 20:46:00', 122, 3, '2020-09-22 07:46:00', '2020-09-22 07:46:00'),
(36, 3, '2020-09-21 20:46:51', 122, 3, '2020-09-22 07:46:51', '2020-09-22 07:46:51'),
(37, 3, '2020-09-21 20:47:03', 211, 3, '2020-09-22 07:47:03', '2020-09-22 07:47:03'),
(38, 2, '2020-09-21 20:47:22', 779345, 3, '2020-09-22 07:47:22', '2020-09-22 07:47:22'),
(39, 1, '2020-09-21 20:47:34', 1000000, 3, '2020-09-22 07:47:34', '2020-09-22 07:47:34'),
(40, 3, '2020-09-21 20:54:14', 100000, 3, '2020-09-22 07:54:14', '2020-09-22 07:54:14'),
(41, 3, '2020-09-21 20:54:27', 100000, 3, '2020-09-22 07:54:27', '2020-09-22 07:54:27'),
(42, 3, '2020-09-21 20:54:42', 100000, 3, '2020-09-22 07:54:42', '2020-09-22 07:54:42'),
(43, 3, '2020-09-21 20:55:13', 100000, 3, '2020-09-22 07:55:13', '2020-09-22 07:55:13'),
(44, 3, '2020-09-21 20:58:58', 400000, 4, '2020-09-22 07:58:58', '2020-09-22 07:58:58'),
(45, 3, '2020-09-21 20:59:27', 200000, 4, '2020-09-22 07:59:27', '2020-09-22 07:59:27'),
(46, 2, '2020-09-21 21:06:23', 400000, 4, '2020-09-22 08:06:23', '2020-09-22 08:06:23'),
(47, 1, '2020-09-21 21:06:35', 1000000, 4, '2020-09-22 08:06:35', '2020-09-22 08:06:35'),
(48, 3, '2020-09-21 21:10:19', 333, 1, '2020-09-22 08:10:19', '2020-09-22 08:10:19'),
(49, 3, '2020-09-21 21:16:07', 100000, 1, '2020-09-22 08:16:07', '2020-09-22 08:16:07'),
(50, 3, '2020-09-21 21:16:28', 123, 1, '2020-09-22 08:16:28', '2020-09-22 08:16:28'),
(51, 1, '2020-09-21 21:17:40', 100000, 1, '2020-09-22 08:17:40', '2020-09-22 08:17:40'),
(52, 1, '2020-09-21 21:17:53', 133, 1, '2020-09-22 08:17:53', '2020-09-22 08:17:53'),
(53, 2, '2020-09-21 21:18:02', 10, 1, '2020-09-22 08:18:02', '2020-09-22 08:18:02'),
(54, 3, '2020-09-21 21:18:44', 100000, 1, '2020-09-22 08:18:44', '2020-09-22 08:18:44'),
(55, 3, '2020-09-21 21:21:25', 123, 1, '2020-09-22 08:21:25', '2020-09-22 08:21:25'),
(56, 1, '2020-09-21 21:21:54', 123, 1, '2020-09-22 08:21:54', '2020-09-22 08:21:54'),
(57, 3, '2020-09-21 21:22:02', 1, 1, '2020-09-22 08:22:02', '2020-09-22 08:22:02'),
(58, 3, '2020-09-21 21:26:59', 1, 1, '2020-09-22 08:26:59', '2020-09-22 08:26:59'),
(59, 3, '2020-09-21 21:31:56', 1, 1, '2020-09-22 08:31:56', '2020-09-22 08:31:56'),
(60, 3, '2020-09-21 21:38:46', 1, 1, '2020-09-22 08:38:46', '2020-09-22 08:38:46'),
(61, 3, '2020-09-21 21:39:58', 1, 1, '2020-09-22 08:39:58', '2020-09-22 08:39:58'),
(62, 1, '2020-09-21 23:02:32', 5, 1, '2020-09-22 10:02:32', '2020-09-22 10:02:32'),
(63, 2, '2020-09-21 23:02:44', 900000, 1, '2020-09-22 10:02:44', '2020-09-22 10:02:44'),
(64, 3, '2020-09-21 23:03:08', 100000, 1, '2020-09-22 10:03:08', '2020-09-22 10:03:08'),
(65, 3, '2020-09-21 23:03:52', 100000, 1, '2020-09-22 10:03:52', '2020-09-22 10:03:52'),
(66, 1, '2021-03-24 08:30:03', 300000, 6, '2021-03-24 19:30:03', '2021-03-24 19:30:03'),
(67, 2, '2021-03-24 08:30:13', 100000, 6, '2021-03-24 19:30:13', '2021-03-24 19:30:13'),
(68, 3, '2021-03-24 08:43:10', 100000, 5, '2021-03-24 19:43:10', '2021-03-24 19:43:10'),
(69, 3, '2021-03-24 08:50:01', 6, 5, '2021-03-24 19:50:01', '2021-03-24 19:50:01'),
(70, 1, '2021-03-24 08:58:03', 1, 5, '2021-03-24 19:58:03', '2021-03-24 19:58:03'),
(71, 3, '2021-03-24 09:07:59', 3, 5, '2021-03-24 20:07:59', '2021-03-24 20:07:59'),
(72, 2, '2021-03-24 14:50:14', 99990, 5, '2021-03-25 01:50:14', '2021-03-25 01:50:14'),
(73, 1, '2021-03-24 14:50:34', 100000, 5, '2021-03-25 01:50:34', '2021-03-25 01:50:34'),
(74, 3, '2021-03-24 14:50:59', 100000, 5, '2021-03-25 01:50:59', '2021-03-25 01:50:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT 1,
  `num_cuenta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1234567890',
  `saldo_actual` int(11) NOT NULL DEFAULT 1000000,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `identificacion`, `email`, `password`, `habilitado`, `num_cuenta`, `saldo_actual`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ana Maria Perez', '1094581551', 'ana@ufpso.edu.co', '$2y$10$TZ2YL12lBcVR8RsIDwYhe.mgrRo234XSck2ynianw5s.tTczc3/aS', 1, '3144178140', 1000003, NULL, '2020-09-22 03:57:14', '2021-03-25 01:51:00'),
(3, 'Yeini Ortega', '1094581552', 'yeini@ufpso.edu.co', '$2y$10$ujbqHtJAZQq/r1yQc30F.elD15Na7Za5lr3szY1jLmXHnjvb2x/4m', 1, '7335738797', 1100000, NULL, '2020-09-22 04:08:03', '2020-09-22 10:03:52'),
(4, 'disaman', '1094581554', 'yeinii@ufpso.edu.co', '$2y$10$kSfq5fVN0TuL9DMp8cwXEeJkTL7ZUOMlW5766AkApHj0kqLut9fQ6', 1, '3714742230', 1000333, NULL, '2020-09-22 07:58:17', '2020-09-22 08:10:19'),
(5, 'Olga Tarazona', '543234554', 'olga@ufpso.edu.co', '$2y$10$x5dj1nJ4hQM1ZhbptR.3luZa9KOCSIw.O/d78d2K3yHTS7CwgWk3W', 0, '1081382999', 800000, NULL, '2021-03-24 19:19:24', '2021-03-25 01:51:00'),
(6, 'Pedro Vargas', '5432346535', 'pedro@ufpso.edu.co', '$2y$10$GdlPpUbwqvh39e5Abqurje9Fb5S4r.mPmAjpfa4pkLi.5yHLk3ShG', 1, '7121414239', 1300000, NULL, '2021-03-24 19:29:12', '2021-03-24 19:43:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transacciones_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_identificacion_unique` (`identificacion`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
