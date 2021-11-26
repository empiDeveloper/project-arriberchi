-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2021 a las 15:44:12
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestor_gastos`
--
CREATE DATABASE IF NOT EXISTS `gestor_gastos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestor_gastos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Oyola', 'daniel.oyola@body.com', NULL, '$2y$10$lJlFg5KxsxJVrUTfAGQVie5pwSg3peUBZDN4CDCFc39cok.iiPQky', NULL, '2021-11-21 23:37:41', '2021-11-21 23:37:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `laravel_desde_cero`
--
CREATE DATABASE IF NOT EXISTS `laravel_desde_cero` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_desde_cero`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`) VALUES
(21, '2021-10-07 05:06:26', '2021-10-12 08:08:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `path`, `created_at`, `updated_at`, `imageable_type`, `imageable_id`) VALUES
(1, 'img/users/4.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 1),
(2, 'img/users/3.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 2),
(3, 'img/users/5.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 3),
(4, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 4),
(5, 'img/users/5.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 5),
(6, 'img/users/3.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 6),
(7, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 7),
(8, 'img/users/1.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 8),
(9, 'img/users/4.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 9),
(10, 'img/users/4.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 10),
(11, 'img/users/3.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 11),
(12, 'img/users/4.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 12),
(13, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 13),
(14, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 14),
(15, 'img/users/1.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 15),
(16, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 16),
(17, 'img/users/2.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 17),
(18, 'img/users/1.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 18),
(19, 'img/users/4.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 19),
(20, 'img/users/1.jpg', '2021-10-07 04:58:39', '2021-10-07 04:58:39', 'App\\Models\\User', 20),
(21, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 1),
(22, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 1),
(23, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 1),
(24, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 1),
(25, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 2),
(26, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 2),
(27, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 3),
(28, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 3),
(29, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 3),
(30, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 4),
(31, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 4),
(32, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 4),
(33, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 4),
(34, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 5),
(35, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 5),
(36, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 5),
(37, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 6),
(38, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 6),
(39, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 6),
(40, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 6),
(41, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 7),
(42, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 7),
(43, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 7),
(44, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 7),
(45, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 8),
(46, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 8),
(47, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 9),
(48, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 9),
(49, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 9),
(50, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 10),
(51, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 10),
(52, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 10),
(53, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 10),
(54, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 11),
(55, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 11),
(56, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 12),
(57, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 12),
(58, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 12),
(59, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 12),
(60, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 13),
(61, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 13),
(62, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 13),
(63, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 13),
(64, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 14),
(65, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 14),
(66, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 14),
(67, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 15),
(68, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 15),
(69, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 16),
(70, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 16),
(71, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 16),
(72, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 16),
(73, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 17),
(74, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 17),
(75, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 17),
(76, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 18),
(77, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 18),
(78, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 19),
(79, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 19),
(80, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 20),
(81, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 20),
(82, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 20),
(83, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 21),
(84, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 21),
(85, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 21),
(86, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 22),
(87, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 22),
(88, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 22),
(89, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 22),
(90, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 23),
(91, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 23),
(92, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 24),
(93, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 24),
(94, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 24),
(95, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 25),
(96, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 25),
(97, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 25),
(98, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 25),
(99, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 26),
(100, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 26),
(101, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 26),
(102, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 27),
(103, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 27),
(104, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 27),
(105, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 28),
(106, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 28),
(107, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 28),
(108, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 29),
(109, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 29),
(110, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 29),
(111, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 29),
(112, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 30),
(113, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 30),
(114, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 31),
(115, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 31),
(116, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 31),
(117, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 31),
(118, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 32),
(119, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 32),
(120, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 32),
(121, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 32),
(122, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 33),
(123, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 33),
(124, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 33),
(125, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 33),
(126, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 34),
(127, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 34),
(128, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 34),
(129, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 35),
(130, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 35),
(131, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 36),
(132, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 36),
(133, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 36),
(134, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 36),
(135, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 37),
(136, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 37),
(137, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 37),
(138, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 37),
(139, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 38),
(140, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 38),
(141, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 38),
(142, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 38),
(143, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 39),
(144, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 39),
(145, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 40),
(146, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 40),
(147, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 41),
(148, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 41),
(149, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 41),
(150, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 42),
(151, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 42),
(152, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 43),
(153, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 43),
(154, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 43),
(155, 'img/products/4.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 43),
(156, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 44),
(157, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 44),
(158, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 45),
(159, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 45),
(160, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 45),
(161, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 46),
(162, 'img/products/8.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 46),
(163, 'img/products/6.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 46),
(164, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 46),
(165, 'img/products/7.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 47),
(166, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 47),
(167, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 47),
(168, 'img/products/3.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 48),
(169, 'img/products/2.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 48),
(170, 'img/products/10.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 48),
(171, 'img/products/5.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 48),
(172, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 49),
(173, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 49),
(174, 'img/products/1.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 50),
(175, 'img/products/9.jpg', '2021-10-07 04:58:40', '2021-10-07 04:58:40', 'App\\Models\\Product', 50);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_11_201915_create_products_table', 1),
(6, '2021_09_23_024323_create_images_table', 1),
(7, '2021_09_23_024722_create_carts_table', 1),
(8, '2021_09_23_024756_create_orders_table', 1),
(9, '2021_09_23_024815_create_payments_table', 1),
(10, '2021_09_25_202337_create_productables_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `status`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'paid', 2, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(2, 'paid', 11, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(3, 'paid', 13, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(4, 'shipped', 15, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(5, 'paid', 9, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(6, 'shipped', 14, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(7, 'shipped', 13, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(8, 'pending', 14, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(9, 'shipped', 9, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(10, 'paid', 10, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(11, 'payed', 21, '2021-10-07 05:58:26', '2021-10-07 06:00:32'),
(12, 'pending', 22, '2021-10-12 08:10:16', '2021-10-12 08:10:16');

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
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) UNSIGNED NOT NULL,
  `payed_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payed_at`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 494.10, '2021-02-14 03:06:25', 1, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(2, 485.06, '2021-09-25 04:32:40', 2, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(3, 338.61, '2021-01-05 06:33:57', 3, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(4, 380.85, '2021-03-23 09:32:39', 4, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(5, 384.13, '2021-04-06 10:01:45', 5, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(6, 486.84, '2021-09-19 21:06:43', 6, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(7, 316.15, '2021-02-26 09:56:04', 7, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(8, 387.06, '2021-08-06 07:10:48', 8, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(9, 132.06, '2021-08-16 20:40:21', 9, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(10, 380.25, '2021-06-28 05:09:29', 10, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(11, 139.26, '2021-10-07 06:00:32', 11, '2021-10-07 06:00:32', '2021-10-07 06:00:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productables`
--

CREATE TABLE `productables` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productables`
--

INSERT INTO `productables` (`product_id`, `quantity`, `productable_type`, `productable_id`) VALUES
(1, 2, 'App\\Models\\Order', 8),
(1, 1, 'App\\Models\\Cart', 10),
(2, 3, 'App\\Models\\Order', 1),
(2, 3, 'App\\Models\\Cart', 11),
(3, 2, 'App\\Models\\Order', 8),
(3, 1, 'App\\Models\\Cart', 7),
(4, 1, 'App\\Models\\Order', 7),
(4, 2, 'App\\Models\\Cart', 4),
(5, 2, 'App\\Models\\Order', 9),
(5, 2, 'App\\Models\\Cart', 7),
(6, 1, 'App\\Models\\Order', 4),
(6, 1, 'App\\Models\\Cart', 13),
(7, 1, 'App\\Models\\Order', 5),
(7, 3, 'App\\Models\\Cart', 10),
(8, 3, 'App\\Models\\Order', 2),
(8, 3, 'App\\Models\\Cart', 16),
(9, 3, 'App\\Models\\Order', 3),
(9, 1, 'App\\Models\\Cart', 11),
(10, 2, 'App\\Models\\Order', 7),
(10, 1, 'App\\Models\\Cart', 1),
(11, 3, 'App\\Models\\Order', 4),
(11, 3, 'App\\Models\\Cart', 9),
(12, 2, 'App\\Models\\Order', 7),
(12, 2, 'App\\Models\\Cart', 14),
(13, 3, 'App\\Models\\Order', 3),
(13, 1, 'App\\Models\\Cart', 15),
(14, 1, 'App\\Models\\Order', 5),
(14, 3, 'App\\Models\\Cart', 6),
(15, 3, 'App\\Models\\Order', 1),
(15, 3, 'App\\Models\\Cart', 5),
(16, 3, 'App\\Models\\Order', 9),
(16, 2, 'App\\Models\\Cart', 12),
(17, 1, 'App\\Models\\Order', 9),
(17, 2, 'App\\Models\\Cart', 17),
(18, 3, 'App\\Models\\Order', 2),
(18, 1, 'App\\Models\\Cart', 11),
(19, 3, 'App\\Models\\Order', 1),
(19, 1, 'App\\Models\\Cart', 20),
(20, 2, 'App\\Models\\Order', 8),
(20, 2, 'App\\Models\\Cart', 4),
(21, 2, 'App\\Models\\Order', 10),
(21, 1, 'App\\Models\\Cart', 19),
(22, 2, 'App\\Models\\Order', 1),
(22, 3, 'App\\Models\\Cart', 16),
(23, 2, 'App\\Models\\Order', 3),
(23, 3, 'App\\Models\\Cart', 17),
(24, 1, 'App\\Models\\Order', 3),
(24, 1, 'App\\Models\\Cart', 19),
(25, 3, 'App\\Models\\Order', 2),
(25, 1, 'App\\Models\\Cart', 9),
(26, 2, 'App\\Models\\Order', 8),
(26, 3, 'App\\Models\\Cart', 11),
(27, 3, 'App\\Models\\Order', 5),
(27, 3, 'App\\Models\\Cart', 17),
(28, 1, 'App\\Models\\Order', 7),
(28, 3, 'App\\Models\\Cart', 8),
(29, 3, 'App\\Models\\Order', 10),
(29, 3, 'App\\Models\\Cart', 9),
(30, 2, 'App\\Models\\Order', 9),
(30, 3, 'App\\Models\\Cart', 13),
(31, 1, 'App\\Models\\Order', 3),
(31, 3, 'App\\Models\\Cart', 12),
(32, 2, 'App\\Models\\Order', 7),
(32, 2, 'App\\Models\\Cart', 18),
(33, 2, 'App\\Models\\Order', 10),
(33, 3, 'App\\Models\\Cart', 11),
(34, 1, 'App\\Models\\Order', 9),
(34, 1, 'App\\Models\\Cart', 6),
(35, 2, 'App\\Models\\Order', 10),
(35, 3, 'App\\Models\\Cart', 8),
(36, 1, 'App\\Models\\Order', 5),
(36, 2, 'App\\Models\\Cart', 6),
(37, 1, 'App\\Models\\Order', 4),
(37, 3, 'App\\Models\\Cart', 20),
(38, 3, 'App\\Models\\Order', 7),
(38, 2, 'App\\Models\\Cart', 1),
(39, 2, 'App\\Models\\Order', 5),
(39, 1, 'App\\Models\\Cart', 7),
(40, 1, 'App\\Models\\Order', 4),
(40, 1, 'App\\Models\\Cart', 4),
(41, 1, 'App\\Models\\Order', 1),
(41, 3, 'App\\Models\\Cart', 16),
(42, 3, 'App\\Models\\Order', 2),
(42, 1, 'App\\Models\\Cart', 15),
(43, 2, 'App\\Models\\Order', 6),
(43, 2, 'App\\Models\\Cart', 15),
(44, 3, 'App\\Models\\Order', 6),
(44, 3, 'App\\Models\\Cart', 5),
(45, 3, 'App\\Models\\Order', 10),
(45, 1, 'App\\Models\\Cart', 10),
(46, 3, 'App\\Models\\Order', 5),
(46, 1, 'App\\Models\\Cart', 9),
(47, 1, 'App\\Models\\Order', 3),
(47, 1, 'App\\Models\\Cart', 7),
(48, 1, 'App\\Models\\Order', 9),
(48, 3, 'App\\Models\\Cart', 2),
(49, 3, 'App\\Models\\Order', 6),
(49, 1, 'App\\Models\\Cart', 17),
(50, 1, 'App\\Models\\Order', 4),
(50, 1, 'App\\Models\\Cart', 15),
(5, 2, 'App\\Models\\Order', 11),
(7, 1, 'App\\Models\\Cart', 21),
(9, 2, 'App\\Models\\Cart', 21),
(7, 1, 'App\\Models\\Order', 12),
(9, 2, 'App\\Models\\Order', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `stock`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Autem a perspiciatis voluptas.', 'Nisi rerum sunt repellat voluptas. Est cupiditate illum deserunt vel voluptas officiis.', 54.02, 4, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(2, 'Est veritatis exercitationem.', 'Ut assumenda officia nobis voluptates.', 68.82, 3, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(3, 'Pariatur ut fugiat.', 'Assumenda nostrum sint perspiciatis exercitationem et quo qui consequatur. Deserunt quos consequuntur qui eligendi et.', 82.27, 3, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(4, 'Earum a voluptas illum.', 'Dolorem laudantium corporis nulla officiis cum.', 93.26, 6, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(5, 'Adipisci neque rerum.', 'Voluptatibus rerum ratione rerum sed quo hic reiciendis. Magni deleniti ea cumque voluptatum.', 69.63, 0, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 05:58:26'),
(6, 'Sed excepturi recusandae autem.', 'Dicta velit quod cupiditate molestiae dolores ipsam velit.', 53.73, 6, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(7, 'Id optio nemo rem.', 'Velit aperiam iure pariatur quaerat non.', 95.60, 3, 'available', NULL, '2021-10-07 04:58:39', '2021-10-12 08:10:16'),
(8, 'Quia non aut.', 'Dolor animi provident excepturi ut veniam.', 80.11, 9, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(9, 'Atque ad dignissimos est.', 'Qui cumque illum ullam ab.', 44.47, 0, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-12 08:10:16'),
(10, 'Maiores quas beatae provident.', 'Quia minus dolorem sit delectus corporis tempora quisquam.', 43.00, 5, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(11, 'Eum ullam nam.', 'Doloremque iste ut non dolorum harum. Enim incidunt qui autem pariatur.', 17.14, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(12, 'Rerum nihil qui iste ipsum.', 'Voluptatem sint aut quasi nihil. Rerum voluptatem ut dolore quod soluta rerum exercitationem.', 46.35, 3, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(13, 'Nobis quis illo totam maxime.', 'Quae voluptatem nihil mollitia sint.', 89.12, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(14, 'Ullam dolore optio sapiente.', 'Aut praesentium voluptas quasi voluptatem et inventore nobis distinctio.', 31.66, 2, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(15, 'Repudiandae repellat molestiae id tenetur.', 'Consequuntur dolorum qui dolorem exercitationem. Odio vel sint voluptas enim.', 73.29, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(16, 'Dolores dolorem porro.', 'Voluptatem inventore perferendis nesciunt ut id.', 79.80, 9, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(17, 'Sed vero odit dolor.', 'Explicabo cumque quia fugiat natus. Ipsa est sint id ab possimus maiores nostrum molestias.', 34.63, 9, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(18, 'Voluptatibus voluptatum sed pariatur.', 'Commodi alias et labore numquam.', 6.44, 1, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(19, 'Totam id rem quia quisquam.', 'Ab quisquam doloribus non.', 95.80, 10, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(20, 'Autem impedit quam enim.', 'Aut eum porro iusto iure repellat reiciendis corrupti distinctio. Repudiandae sunt quia quas quia.', 9.21, 5, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(21, 'Rerum provident dolorem.', 'Molestias voluptatem libero quisquam voluptatum adipisci ea aut neque.', 91.01, 7, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(22, 'Repellat quod accusamus est.', 'Odit itaque alias aliquid tempora. Odit dolores quam sit.', 79.76, 4, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(23, 'Aut tempora modi.', 'Velit dignissimos nulla consequuntur cumque quam ea. Accusamus odit earum rerum dolorem suscipit qui dignissimos.', 25.95, 10, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(24, 'Temporibus sunt qui et.', 'Enim beatae quos quis quam nam. Quos nam aperiam incidunt nisi quibusdam.', 78.00, 4, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(25, 'Cumque occaecati sunt minus nostrum.', 'Voluptatem quod saepe sint deserunt.', 96.60, 4, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(26, 'Voluptatem quibusdam neque dolor eos.', 'Sint praesentium praesentium tempora ut ullam ad voluptas.', 27.93, 6, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(27, 'Harum et.', 'Dolore dolores aspernatur totam minus. Voluptates omnis ut et distinctio quasi unde.', 48.04, 6, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(28, 'Sapiente officia officia incidunt.', 'Aut sit eius itaque omnis. Ipsum in officia libero itaque aliquam voluptatem.', 10.18, 3, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(29, 'Ratione veniam dolorem architecto.', 'Reprehenderit illum eum officia.', 5.46, 7, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(30, 'Possimus corrupti laboriosam doloremque.', 'Et quia veritatis enim praesentium aut.', 90.96, 8, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(31, 'Deleniti fugit mollitia et.', 'Enim a et illo eum quasi.', 96.23, 3, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(32, 'Minima vel nulla.', 'Libero quia eius assumenda facere iure.', 9.13, 7, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(33, 'Sed nam sit.', 'Et ut error molestiae et. Aut amet non ut est dolores aliquid praesentium.', 45.32, 8, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(34, 'Mollitia vero quidem enim aut.', 'Molestias consequatur non reprehenderit. Et fuga quae hic dolorem voluptate laboriosam.', 97.47, 1, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(35, 'Modi delectus iure.', 'Vero doloribus sequi illo mollitia nobis consectetur.', 89.57, 8, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(36, 'Quia neque.', 'Non rem saepe sed atque. Labore id sint quisquam.', 70.00, 8, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(37, 'Repudiandae et quam.', 'Vitae sapiente et et incidunt id amet excepturi sint.', 16.06, 5, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(38, 'Possimus et consectetur id.', 'Molestiae provident quo perferendis nihil culpa praesentium suscipit necessitatibus.', 53.52, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(39, 'Aut error ut corporis.', 'Quas placeat labore eum totam nesciunt laborum. Quaerat temporibus sequi enim nisi pariatur praesentium eos.', 54.10, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(40, 'Similique sunt nihil.', 'Aliquid a dolorem facilis rem accusantium odit quas.', 61.49, 8, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(41, 'Tempora qui et.', 'Tempora quos assumenda in est.', 77.82, 7, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(42, 'Reprehenderit et ipsa est et.', 'Molestiae vero exercitationem incidunt et aut.', 77.24, 1, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(43, 'Voluptatem omnis ut voluptatem.', 'Distinctio asperiores fugiat rerum quibusdam. Impedit officia voluptatem maxime eos et aut.', 34.28, 6, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(44, 'Non et.', 'Et commodi vel asperiores voluptatem.', 94.03, 2, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(45, 'Excepturi ut unde.', 'Ad officia quibusdam vel qui aut rerum tempore quam.', 43.70, 5, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(46, 'Et corporis animi cumque.', 'Doloribus fuga quis sit quia eum voluptas.', 45.39, 7, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(47, 'Et voluptas mollitia.', 'Ex ratione quis reprehenderit quia quia eos.', 40.57, 10, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(48, 'Est dignissimos reprehenderit non.', 'Id dolorem laboriosam quia ea voluptatem.', 4.33, 10, 'unavailable', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(49, 'Soluta sint error mollitia.', 'Ipsum voluptatum distinctio omnis neque aut est.', 16.45, 2, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(50, 'Perferendis praesentium error.', 'Eveniet doloremque veniam consectetur beatae ut.', 41.44, 3, 'available', NULL, '2021-10-07 04:58:39', '2021-10-07 04:58:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_since` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin_since`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Gerson Labadie V', 'myriam87@example.com', '2021-10-07 04:58:37', '$2y$10$MwgEAnfkY90tVIEBkvuRj.mKLcKldOYPBoTa5zXzgYlZo4AXT74A6', NULL, 'BsYXxY1cxr', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(2, 'Sabrina Green I', 'cmccullough@example.com', '2021-10-07 04:58:37', '$2y$10$Dnh8Oe0LNgSkm.tcd2m1puSAgo6cd44miBeaRuHo8PX5TUHC/FhVK', NULL, 'C7sRouVBRJ', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(3, 'Penelope Deckow PhD', 'lemmerich@example.net', '2021-10-07 04:58:37', '$2y$10$uwfCsI288ra9qP/dgG.4Du5KhANyPyIH0uYok85tgrzlsVKW7AXpy', '2021-10-07 04:58:37', 'kdLrkE95FM', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(4, 'Elva Kuhic', 'koch.jacky@example.com', '2021-10-07 04:58:38', '$2y$10$MWtjHZsFmnh5QlGT.wh5YesciAqO32dJAdt4w/yTGmUX7RXOtT6rC', NULL, 'KDGYTbcYOI', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(5, 'Golda Mills', 'nellie48@example.net', '2021-10-07 04:58:38', '$2y$10$UB3/F0dxvSrwEZIIHzpJMOwK3HW5OvTm6/RULDifMQYOFMery9Os.', '2021-10-07 04:58:38', 'ejY97kciJR', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(6, 'Osbaldo Paucek', 'virgie60@example.org', '2021-10-07 04:58:38', '$2y$10$csVQplG2lxQCeTEbdPNBK.rj.yeNJekhz4ayIXZsG6cLTe6YItXsu', NULL, '2MCxb1zdsS', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(7, 'Prof. Timmothy Carroll Jr.', 'bhoppe@example.com', '2021-10-07 04:58:38', '$2y$10$WIpgRrSwKrNI4WS.xIp0dO0f4qRGVCqci/TuMk2dfagv/A9Ll/Ypi', NULL, 'pecKO2R04G', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(8, 'Mr. Haley Green DDS', 'millie18@example.com', '2021-10-07 04:58:38', '$2y$10$lflPp8.19OY1/JKKTMEPAunenSGgeFHh8rbb6x/mq.WAZ5C/rDhlG', '2021-10-07 04:58:38', '9YCRmYpwnq', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(9, 'Savanna Lockman', 'dubuque.cassandre@example.org', '2021-10-07 04:58:38', '$2y$10$AiLZOmxF6FMik0dC9.I7LesYAX5ECm..KauqJQn3dM3G.O6BcC5Xq', '2021-10-07 04:58:38', 'KjqaNlQiEL', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(10, 'Hertha Erdman', 'shad09@example.org', '2021-10-07 04:58:38', '$2y$10$RNkSItypsJkmG3x/WyA44OnY0NvzRk0Hg1fbyPQ9aWY03i7mOuRkK', '2021-10-07 04:58:38', 'V0O1L60ZiN', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(11, 'Prof. Moriah Yost Sr.', 'dhamill@example.net', '2021-10-07 04:58:38', '$2y$10$G68emEcKBBElweQZ83e5ZOGf4EoTU9.BC76na7liTYI5wQ5/Z9AM.', '2021-10-07 04:58:38', 'VBcgqzoQAZ', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(12, 'Brooklyn Lehner', 'ytowne@example.net', '2021-10-07 04:58:38', '$2y$10$YdQcM1gpxf9R92Et0dWTzeg4UvPobPYJUofq.NJnbbT730tj98IQC', NULL, 'wtcdhZXPH0', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(13, 'Eulah Wintheiser', 'naomie.cole@example.com', '2021-10-07 04:58:38', '$2y$10$KvjVVZ99nmXIV7aWbYCdguYgyH9mFh6INzpqssGLfMahnSgKSUF..', NULL, '4JFg1BOh6b', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(14, 'Dr. Kianna Torp I', 'gaylord.arlo@example.com', '2021-10-07 04:58:38', '$2y$10$SsLhzwq0eslXXuM6tU152OL/0cwyWDYtYiWkJsmC0k1X9oZwVrShK', NULL, 'XDuI27wasY', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(15, 'Josie Rice', 'zemlak.darby@example.com', '2021-10-07 04:58:38', '$2y$10$Thsy2M4pD3/OqIh8bLmggO.dP4KD8sR4IuZ4Mfy72HQPclEDtL9v.', NULL, 'SeNEoP0oLh', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(16, 'Ms. Ima Vandervort', 'roselyn98@example.org', '2021-10-07 04:58:38', '$2y$10$G7B7rEHLG9iSbX7uAzjjHOBvvdXm9Yw61OpcZ4THfzYJqwpRaeEvO', '2021-10-07 04:58:38', 'hFHCUssxWL', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(17, 'Ivy Purdy', 'maxie.quitzon@example.com', '2021-10-07 04:58:38', '$2y$10$JTvF5LkZL6.OzgsR/kyDjOkjNU1uZN4nxuwAQgEy1tGb5yQle/lJ2', '2021-10-07 04:58:38', 'lPRYBMTf7Y', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(18, 'Mr. Janick Kozey', 'kuvalis.delfina@example.net', '2021-10-07 04:58:38', '$2y$10$wYrJ38cD4tdX64T.bDN8W.uPsbhnJiwRGCSYj8hnNbPo9Uj9p7kFy', '2021-10-07 04:58:38', 'YAv8QLT4CL', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(19, 'Dr. Dashawn Johnson', 'aniyah.quigley@example.com', '2021-10-07 04:58:39', '$2y$10$4Fo9EpOGmSD5v7bXX3AxdumDZQ2/EhIvV3TSCQhoWUs/chziqhNKy', '2021-10-07 04:58:39', 'mLJoBqhlxQ', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(20, 'Mary Kuhic', 'jacinthe.lowe@example.org', '2021-10-07 04:58:39', '$2y$10$9UJujLYvpvZMT1XvjQldlePxoo1l3QwfRAyJ.sA8f49f55/PYZAHC', NULL, 'Jlt5klopZh', '2021-10-07 04:58:39', '2021-10-07 04:58:39'),
(21, 'Test', 'test@test.com', '2021-10-07 04:59:59', '$2y$10$zYLRUXXQaKZkjaBXUQajd.6o5nKt5Kbq4PSdO2jaIP5WDGKZvmLdy', '2021-10-07 04:59:29', NULL, '2021-10-07 04:58:58', '2021-10-07 04:59:59'),
(22, 'Daniel Oyola', 'daniel.oyola@body.com', '2021-10-12 08:04:27', '$2y$10$hyevSBYhs9MMzf.XHnuQtu.gf6ZbeZpZ/b5Bc5VmjJyzgSOXJOMDW', NULL, NULL, '2021-10-12 08:02:09', '2021-10-12 08:04:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productables`
--
ALTER TABLE `productables`
  ADD KEY `productables_productable_type_productable_id_index` (`productable_type`,`productable_id`),
  ADD KEY `productables_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `productables`
--
ALTER TABLE `productables`
  ADD CONSTRAINT `productables_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"proyecto_viajes\",\"table\":\"users\"},{\"db\":\"gestor_gastos\",\"table\":\"users\"},{\"db\":\"proyecto_viajes\",\"table\":\"images\"},{\"db\":\"proyecto_viajes\",\"table\":\"products\"},{\"db\":\"proyecto_viajes\",\"table\":\"product_features\"},{\"db\":\"proyecto_viajes\",\"table\":\"orders\"},{\"db\":\"laravel_desde_cero\",\"table\":\"products\"},{\"db\":\"laravel_desde_cero\",\"table\":\"users\"},{\"db\":\"laravel_desde_cero\",\"table\":\"productables\"},{\"db\":\"laravel_desde_cero\",\"table\":\"carts\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-26 00:24:35', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `proyecto_viajes`
--
CREATE DATABASE IF NOT EXISTS `proyecto_viajes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proyecto_viajes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `path`, `created_at`, `updated_at`, `imageable_type`, `imageable_id`) VALUES
(1, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 1),
(2, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 1),
(3, 'img/products/7.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(4, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(5, 'img/products/1.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(6, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(7, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(8, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(9, 'img/products/7.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(10, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(11, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(12, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(13, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(14, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(15, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(16, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(17, 'img/products/9.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(18, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(19, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(20, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(21, 'img/products/1.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(22, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(23, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(24, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(25, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(26, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(27, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(28, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(29, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(30, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(31, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(32, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(33, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(34, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(35, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(36, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(37, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(38, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(39, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(40, 'img/products/7.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(41, 'img/products/7.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(42, 'img/products/9.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(43, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(44, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(45, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(46, 'img/products/7.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(47, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(48, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(49, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(50, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(51, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(52, 'img/products/10.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(53, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(54, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(55, 'img/products/9.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(56, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(57, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(58, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(59, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(60, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(61, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(62, 'img/products/1.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(63, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(64, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(65, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(66, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(67, 'img/products/9.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(68, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(69, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(70, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(71, 'img/products/2.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(72, 'img/products/5.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(73, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(74, 'img/products/4.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(75, 'img/products/8.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(76, 'img/products/6.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 26),
(77, 'img/products/3.jpg', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 26),
(78, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(79, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(80, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(81, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(82, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(83, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(84, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(85, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(86, 'img/products/4.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(87, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(88, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(89, 'img/products/1.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(90, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(91, 'img/products/4.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(92, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(93, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(94, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(95, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(96, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(97, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(98, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(99, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(100, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(101, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(102, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(103, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(104, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(105, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(106, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(107, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(108, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(109, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(110, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(111, 'img/products/4.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(112, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(113, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(114, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(115, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(116, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(117, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(118, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(119, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(120, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(121, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(122, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(123, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(124, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(125, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(126, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(127, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(128, 'img/products/1.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(129, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(130, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(131, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(132, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(133, 'img/products/4.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(134, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(135, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(136, 'img/products/10.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(137, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(138, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(139, 'img/products/9.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(140, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(141, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(142, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(143, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(144, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(145, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(146, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(147, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(148, 'img/products/4.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(149, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(150, 'img/products/8.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(151, 'img/products/7.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(152, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(153, 'img/products/6.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(154, 'img/products/3.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(155, 'img/products/2.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50),
(156, 'img/products/5.jpg', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_07_173242_create_products_table', 1),
(6, '2021_10_07_193319_create_images_table', 1),
(7, '2021_10_08_012739_create_orders_table', 1),
(8, '2021_10_08_013104_create_payments_table', 1),
(9, '2021_10_09_211512_create_product_features_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_contacto` bigint(20) NOT NULL,
  `identificacion` bigint(20) NOT NULL,
  `metodo_pago` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `contacto`, `email`, `numero_contacto`, `identificacion`, `metodo_pago`, `estado`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Oyola', 'daniel.oyola@body.com', 3177054077, 1098802133, 'bancos', 'pendiente', 2, '2021-11-26 05:46:56', '2021-11-26 05:46:56');

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
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monto` double(8,2) UNSIGNED NOT NULL,
  `pagado_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) UNSIGNED NOT NULL,
  `disponible` int(10) UNSIGNED NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nodisponible',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `titulo`, `descripcion`, `precio`, `disponible`, `estado`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Animi fugiat quia....', 'Omnis recusandae dolorum libero maiores.', 84.96, 5, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-29 06:54:03'),
(2, 'Veniam voluptatem repudiandae quibusdam.', 'Eum sed eligendi officia aspernatur est rerum.', 93.45, 3, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(3, 'Temporibus nesciunt quia eveniet.', 'Natus sit qui odio sunt dolores.', 69.39, 10, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(4, 'Sunt harum deleniti qui.', 'Necessitatibus quidem nulla ut error non.', 20.47, 8, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(5, 'Ea in temporibus dolorem.', 'Ea dicta rerum sint dolor dolor eum nihil.', 65.40, 4, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(6, 'Est sint est similique aut.', 'Quas eius ut et autem qui.', 74.89, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(7, 'Alias deserunt voluptatem.', 'Itaque dolor voluptate alias sunt delectus iste.', 68.38, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(8, 'Esse voluptatem minima dolor perferendis.', 'Quo at in et. Fugit temporibus eligendi sint possimus consequatur occaecati.', 31.96, 9, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(9, 'Nihil asperiores dolorum quo.', 'Id reprehenderit voluptatum quae quidem id.', 71.85, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(10, 'Consequatur sunt iusto.', 'Voluptas et vel eius quis.', 4.52, 2, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(11, 'Eos consectetur qui reiciendis.', 'Cum adipisci repudiandae odit necessitatibus omnis ut nihil omnis. Vel et explicabo aut rerum nobis possimus.', 85.17, 8, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(12, 'Aut laborum qui repellat.', 'Officia aut quia eos expedita. Accusamus possimus quod explicabo itaque.', 50.25, 9, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(13, 'Neque natus dolorem iure.', 'Id ducimus facere et corporis. Qui repudiandae incidunt enim quia.', 9.36, 8, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(14, 'Id repudiandae sint.', 'Odio magnam ut voluptas quod architecto commodi et. Possimus sed aut rem ex.', 55.36, 3, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(15, 'Ab maxime possimus eum consequatur.', 'Aut repellat pariatur omnis. Facilis debitis animi enim atque dolor deleniti aut enim.', 36.78, 6, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(16, 'Dolorem consequatur esse dolores.', 'Dolorem est explicabo ut et ducimus ut rerum placeat.', 44.43, 4, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(17, 'Assumenda fugit porro.', 'Eos quo temporibus rerum blanditiis eaque.', 66.17, 3, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(18, 'Repudiandae est totam.', 'Magni exercitationem beatae quidem. Ab quod tenetur quia doloremque ab corporis sint nihil.', 76.79, 10, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(19, 'Officia dolorem voluptatem.', 'Vel aut velit voluptate minima ad. Eaque sunt harum est ea.', 90.37, 5, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(20, 'Non facilis veritatis itaque.', 'Alias excepturi veritatis illum tenetur vel sunt.', 95.35, 3, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(21, 'Minima dolorem voluptatem numquam.', 'Ducimus consequuntur reprehenderit voluptate.', 36.18, 4, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(22, 'Iste quisquam explicabo eos.', 'Sit aperiam unde laboriosam.', 89.57, 8, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(23, 'Voluptatem eveniet voluptas quia.', 'Nostrum consequatur quia labore qui accusamus.', 66.86, 2, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(24, 'Asperiores repellendus ea quia.', 'Atque perferendis ab et adipisci ut qui.', 70.51, 8, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(25, 'Et aut temporibus nihil.', 'Doloribus illum beatae ad veritatis qui. Sed voluptatem et sit.', 63.68, 3, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(26, 'Ut autem.', 'Commodi magni et et sapiente non velit ea culpa. Odit quia in labore ut id reprehenderit.', 83.78, 4, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(27, 'Expedita et autem.', 'In iure quia maxime eveniet qui eos. Assumenda odio id et sint esse rem.', 10.32, 4, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(28, 'Inventore aperiam rem doloremque.', 'Facere omnis similique soluta id totam qui consectetur ut.', 54.57, 2, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(29, 'Quis voluptas est.', 'Cupiditate consequatur quo ut necessitatibus vel maxime quo sed. Eos illum odit dicta qui vitae ratione.', 39.92, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(30, 'Vel voluptate necessitatibus.', 'Voluptatem culpa ducimus consequatur consequatur illum molestias consequatur. Quam quas accusamus quasi eos quia.', 3.38, 8, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(31, 'Blanditiis voluptatem quia.', 'Necessitatibus ut ea velit sint quos. Omnis quasi quia blanditiis dolor eos perferendis.', 60.11, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(32, 'Perferendis et perspiciatis.', 'Fugit debitis eligendi maiores repudiandae rerum dolorem vero. Qui alias corrupti quis vitae laboriosam minus magni.', 98.03, 6, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(33, 'Qui et repellendus omnis in.', 'Est doloremque delectus debitis modi itaque est aliquam.', 63.99, 9, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(34, 'Debitis ad non laudantium ad.', 'Inventore ipsam repudiandae provident et.', 53.61, 1, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(35, 'Quia sunt ea.', 'Natus sunt eum facere perspiciatis deserunt sed.', 11.53, 5, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(36, 'Quod hic sunt.', 'Laborum voluptatibus debitis ea maxime nihil animi.', 75.12, 2, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(37, 'Et maxime ipsum.', 'Vel laudantium sit quo maiores vel rerum vero culpa.', 71.04, 8, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(38, 'Est dolorem natus voluptatem.', 'Pariatur error neque iure harum omnis illo omnis. Eligendi ipsa quam est rerum sed rerum magni.', 80.55, 10, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(39, 'Maiores aut ducimus.', 'Molestiae perspiciatis quia amet dolor sunt dicta. Dolore necessitatibus sed iusto et molestiae quis non.', 82.83, 10, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(40, 'Odio distinctio dolores iure sint.', 'Perspiciatis recusandae aut qui rem. Architecto temporibus sit exercitationem minima iste quia voluptatem.', 60.39, 5, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(41, 'Voluptas quasi veritatis laudantium.', 'Beatae eum exercitationem quo optio at.', 79.08, 10, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(42, 'Aliquid consectetur beatae recusandae.', 'Id excepturi rem tempora temporibus esse ea quos.', 57.76, 2, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(43, 'Molestias possimus modi ut.', 'Est quos ab maxime inventore est.', 19.74, 2, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(44, 'Ex cupiditate.', 'Rerum voluptatem omnis iusto.', 28.87, 6, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(45, 'Minima occaecati quibusdam animi.', 'Et molestias sunt numquam ducimus. Maxime dolores nobis accusamus rem quia excepturi dolores.', 82.28, 5, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(46, 'Ex dolorem neque.', 'Eaque ad magni qui. Aliquid repellendus perferendis velit placeat consequatur dolorem.', 22.46, 7, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(47, 'Est similique blanditiis.', 'Eligendi maxime aliquid reprehenderit aut molestias nihil.', 93.66, 6, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(48, 'Atque pariatur consectetur alias.', 'Nihil officia repellat dolorum et.', 49.51, 1, 'nodisponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(49, 'Minus quisquam.', 'Delectus inventore consequuntur quod nihil.', 78.53, 1, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43'),
(50, 'Quam harum sed.', 'Ut maxime sit in voluptatem corporis.', 48.48, 1, 'disponible', NULL, '2021-10-17 04:42:43', '2021-10-17 04:42:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `features_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_features`
--

INSERT INTO `product_features` (`id`, `caracteristica`, `created_at`, `updated_at`, `features_type`, `features_id`) VALUES
(1, 'Laboriosam eum repudiandae nemo.', '2021-10-17 04:42:43', '2021-10-29 06:54:03', 'App\\Models\\Product', 1),
(2, 'Dolorem distinctio cumque.', '2021-10-17 04:42:43', '2021-10-29 06:54:03', 'App\\Models\\Product', 1),
(3, 'Unde eos occaecati.', '2021-10-17 04:42:43', '2021-10-29 06:54:03', 'App\\Models\\Product', 1),
(4, 'Dolorem et modi.', '2021-10-17 04:42:43', '2021-10-29 06:54:03', 'App\\Models\\Product', 1),
(5, 'Eius impedit fugiat.', '2021-10-17 04:42:43', '2021-10-29 06:54:03', 'App\\Models\\Product', 1),
(6, 'Quia dolores ut.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(7, 'Dolorem sit laborum expedita.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(8, 'Dolorem in non et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(9, 'A laudantium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(10, 'Praesentium natus nihil dolore.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 2),
(11, 'Enim voluptas et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(12, 'Repellendus et quia dolorem.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(13, 'At qui similique.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(14, 'Dolorum ut laudantium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(15, 'Id nesciunt id.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 3),
(16, 'Iure iste aspernatur molestias.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(17, 'Est quaerat est.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(18, 'Reprehenderit qui et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(19, 'Cumque doloribus sequi quis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(20, 'Odit repellendus sit.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 4),
(21, 'Sed placeat quis ut.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(22, 'Et natus fuga.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(23, 'Ipsam tenetur veritatis consequatur et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(24, 'Voluptates dolorum iste id.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(25, 'Iure veniam autem laudantium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 5),
(26, 'Eos laborum ab non.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(27, 'Est harum enim dignissimos et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(28, 'Suscipit enim et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(29, 'Alias in omnis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(30, 'Ab nihil odio.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 6),
(31, 'Enim officia et dolor.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(32, 'Aut nemo nobis vel dicta.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(33, 'Quod est sint ipsum.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(34, 'Quasi facere consectetur repudiandae.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(35, 'Dolore accusamus id.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 7),
(36, 'Voluptatem sint.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(37, 'Dignissimos suscipit adipisci.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(38, 'Reiciendis voluptas ipsa totam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(39, 'Similique qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(40, 'Distinctio molestias.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 8),
(41, 'Assumenda sequi dolorum.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(42, 'Qui facere inventore ducimus.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(43, 'Illo dignissimos cumque.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(44, 'Quis eos natus.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(45, 'Eius iste explicabo.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 9),
(46, 'Doloribus eos ex.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(47, 'Ipsa incidunt qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(48, 'Recusandae maxime quisquam deserunt.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(49, 'Dolorem odit eum.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(50, 'Id perspiciatis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 10),
(51, 'Ratione adipisci necessitatibus nihil.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(52, 'Omnis nesciunt.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(53, 'Temporibus ut tempore reprehenderit.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(54, 'Repellendus molestiae quis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(55, 'Odio quia dolorem.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 11),
(56, 'Nihil sunt recusandae.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(57, 'Dignissimos consequatur exercitationem.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(58, 'Provident veniam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(59, 'Voluptas sed sed.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(60, 'Non non perferendis sit.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 12),
(61, 'Dolore qui voluptatem ut.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(62, 'Dolores quasi ducimus aut.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(63, 'Fugit aut consequuntur ad.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(64, 'Eos a eveniet.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(65, 'Aut quibusdam provident.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 13),
(66, 'Reiciendis aut itaque in sunt.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(67, 'Dicta sed ducimus ea.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(68, 'Incidunt temporibus earum et ut.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(69, 'Voluptatem quis deserunt.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(70, 'Totam beatae unde.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 14),
(71, 'Quasi mollitia voluptas vero.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(72, 'Fuga aut quidem.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(73, 'Ut magnam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(74, 'Sit ea.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(75, 'Nisi et.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 15),
(76, 'Accusantium qui quod laboriosam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(77, 'Ratione est fugit sapiente.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(78, 'Ipsa excepturi laborum.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(79, 'Libero molestias perferendis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(80, 'Consectetur sed.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 16),
(81, 'Quae quisquam enim quas.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(82, 'Architecto illum qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(83, 'Dolores minus ut et magnam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(84, 'Autem sunt unde.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(85, 'Accusantium ipsum voluptatem placeat praesentium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 17),
(86, 'Est laudantium culpa quo.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(87, 'Ad sed consequatur sed.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(88, 'Doloribus quia aut sapiente.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(89, 'Ab libero quae.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(90, 'Nihil ratione distinctio quo.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 18),
(91, 'Et sed similique numquam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(92, 'Quia perferendis commodi.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(93, 'Blanditiis et amet praesentium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(94, 'Labore dignissimos nisi dolor.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(95, 'Esse quo.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 19),
(96, 'Expedita et quibusdam asperiores.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(97, 'Earum id sunt corporis quisquam.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(98, 'Mollitia assumenda quas nulla.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(99, 'Officiis assumenda quos.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(100, 'Aliquam dolores est.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 20),
(101, 'Aut modi qui consectetur.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(102, 'Et voluptatem quod laudantium.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(103, 'Eaque dolores consequatur ipsa inventore.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(104, 'Debitis est voluptates distinctio.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(105, 'Et neque modi fuga.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 21),
(106, 'Nesciunt tempora est.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(107, 'Ut aut ducimus.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(108, 'Non minima numquam aperiam qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(109, 'Ea omnis esse reprehenderit consequatur.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(110, 'Harum molestiae sunt maxime quis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 22),
(111, 'Delectus consequatur eos.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(112, 'Provident in exercitationem temporibus.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(113, 'Fuga qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(114, 'Id quia consequatur.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(115, 'Culpa provident veritatis corporis.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 23),
(116, 'Exercitationem commodi id.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(117, 'Nulla ipsam qui.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(118, 'Accusantium illum laudantium tempora.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(119, 'Ratione distinctio qui eos.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(120, 'Quod in ut earum.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 24),
(121, 'Aliquid est sunt dolor.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(122, 'Sed eos corrupti eos.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(123, 'Cumque praesentium voluptatem autem.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(124, 'Et voluptatem et nulla.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(125, 'Sed velit officia.', '2021-10-17 04:42:43', '2021-10-17 04:42:43', 'App\\Models\\Product', 25),
(126, 'Dolor sed.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 26),
(127, 'Aspernatur aliquid incidunt maxime.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 26),
(128, 'Fuga est.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 26),
(129, 'Nihil totam sequi quia.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 26),
(130, 'Laudantium eos dolorem nihil.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 26),
(131, 'Provident id qui dolorem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(132, 'Sed aliquid ut et.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(133, 'Similique voluptatem atque.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(134, 'Illo eaque et perspiciatis doloremque.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(135, 'Error doloremque voluptatem qui.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 27),
(136, 'Delectus velit nostrum quos.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(137, 'Culpa reprehenderit exercitationem vitae.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(138, 'Porro odit eligendi dolor.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(139, 'Neque nihil quasi.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(140, 'Sed qui omnis deleniti.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 28),
(141, 'Harum earum aut facere.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(142, 'Perferendis libero consequuntur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(143, 'Sapiente consequatur at quis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(144, 'Nemo cupiditate aut iure quidem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(145, 'Eveniet dolor dolorem quo porro.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 29),
(146, 'Voluptate numquam deleniti blanditiis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(147, 'Iure sit aut natus eos.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(148, 'Neque nihil ut dolorem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(149, 'Necessitatibus sint tenetur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(150, 'Sit qui debitis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 30),
(151, 'Qui autem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(152, 'Omnis temporibus labore earum.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(153, 'Est architecto aut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(154, 'Sapiente ratione facere nostrum.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(155, 'Iste aut veritatis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 31),
(156, 'Eum magni aspernatur ad hic.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(157, 'Earum dolorem molestiae similique.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(158, 'Tempore beatae ipsam.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(159, 'Fugit eos non.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(160, 'Omnis nihil commodi et.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 32),
(161, 'Nostrum tempore enim ipsam.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(162, 'Ut nulla facilis aut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(163, 'Reiciendis earum velit ex.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(164, 'Facilis dignissimos mollitia.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(165, 'Hic tenetur doloribus esse voluptas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 33),
(166, 'Quos itaque ab.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(167, 'Iusto doloribus est reiciendis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(168, 'Impedit quas dolores nobis suscipit.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(169, 'Adipisci sequi laborum soluta.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(170, 'Et sunt.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 34),
(171, 'Ut placeat est corporis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(172, 'Voluptatem qui deleniti blanditiis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(173, 'Sequi dolor alias nesciunt.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(174, 'Voluptatem magnam temporibus saepe.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(175, 'Sapiente rem laudantium cupiditate.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 35),
(176, 'Ut amet ut earum.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(177, 'Illo et pariatur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(178, 'Quidem aperiam dolorum.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(179, 'Quis est.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(180, 'Repellendus eveniet voluptatem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 36),
(181, 'Et labore sit reprehenderit.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(182, 'Et ipsa et ex aspernatur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(183, 'Modi sint optio sit.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(184, 'Ratione porro eum voluptatem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(185, 'Et nam aut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 37),
(186, 'Rerum rerum magni.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(187, 'Tenetur consequatur ex.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(188, 'Ullam debitis dolorem impedit qui.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(189, 'Pariatur excepturi optio dolorem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(190, 'Dignissimos nisi mollitia dignissimos.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 38),
(191, 'Nihil eos quibusdam autem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(192, 'Et repudiandae ut voluptas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(193, 'Eum excepturi ab sint.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(194, 'Odit est laudantium.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(195, 'Debitis consequatur explicabo voluptas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 39),
(196, 'Ut illo vero.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(197, 'Aperiam et ut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(198, 'Dignissimos suscipit molestias.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(199, 'Perferendis voluptas ipsa.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(200, 'Velit rerum vel quae.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 40),
(201, 'Provident nihil ut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(202, 'Cumque eos aliquam.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(203, 'Voluptate ipsam consectetur non.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(204, 'Maiores similique fugiat aut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(205, 'Et rem enim voluptatibus.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 41),
(206, 'Dolores deserunt nihil.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(207, 'Qui vitae sed est.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(208, 'Ex provident qui.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(209, 'Ut similique vero.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(210, 'Incidunt laudantium saepe repudiandae.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 42),
(211, 'Provident ab qui quas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(212, 'Assumenda unde molestiae voluptate.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(213, 'Esse doloremque sit ab.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(214, 'Voluptas et dolores.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(215, 'Rerum quo libero quas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 43),
(216, 'Est fugiat molestiae in.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(217, 'Recusandae reiciendis et.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(218, 'Consequatur ullam enim.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(219, 'Nobis quis omnis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(220, 'Non consequatur adipisci fuga.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 44),
(221, 'Eaque rerum temporibus et.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(222, 'Sunt omnis officiis aliquid.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(223, 'Placeat eum voluptates eveniet vel.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(224, 'Et quibusdam maiores quidem officia.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(225, 'Ad temporibus sit aut.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 45),
(226, 'Magni qui id.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(227, 'Provident eum eos veritatis.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(228, 'Tempore quaerat architecto.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(229, 'Quis esse excepturi aliquid.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(230, 'Quia id consequatur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 46),
(231, 'Sunt dolor velit corrupti.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(232, 'Praesentium quis impedit quidem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(233, 'Nulla voluptatem dicta.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(234, 'Accusantium laborum sunt sint.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(235, 'Sed corporis id placeat est.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 47),
(236, 'Quas in.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(237, 'Cum quia voluptatem pariatur.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(238, 'Nemo quia qui.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(239, 'Incidunt et cum.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(240, 'Perferendis at porro.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 48),
(241, 'Mollitia ad voluptas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(242, 'Quod officia et nemo.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(243, 'Rerum voluptatum sed voluptate.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(244, 'Qui quam voluptas.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(245, 'Sit sit sed.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 49),
(246, 'Voluptatem consequatur fugit.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50),
(247, 'Doloribus aut et ipsam.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50),
(248, 'Sed debitis qui magnam.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50),
(249, 'Nemo voluptatem eaque fuga.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50),
(250, 'Harum qui nemo voluptatem.', '2021-10-17 04:42:44', '2021-10-17 04:42:44', 'App\\Models\\Product', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Oyola', 'daniel.oyola@body.com', NULL, '$2y$10$mVYy39Daxs2djD66jCYiOeejiGEhadpIgWx5/5Br2gWv3Wmqi0Xai', 'I1tAlnLjOZQCzChz73R6aXG1dBn6Q1Pia9XU9KHPO8soRqQu42csa4Fcfhvg', '2021-10-20 06:16:29', '2021-10-20 06:16:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_features_type_features_id_index` (`features_type`,`features_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
