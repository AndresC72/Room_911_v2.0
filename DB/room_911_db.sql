-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2025 a las 13:19:18
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
-- Base de datos: `larav`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin1@ejemplo.com|127.0.0.1', 'i:3;', 1742812916),
('admin1@ejemplo.com|127.0.0.1:timer', 'i:1742812916;', 1742812916),
('empleado1@ejemplo.com|127.0.0.1', 'i:1;', 1742812797),
('empleado1@ejemplo.com|127.0.0.1:timer', 'i:1742812797;', 1742812797),
('empleado420@ejemplo.com|127.0.0.1', 'i:2;', 1742812857),
('empleado420@ejemplo.com|127.0.0.1:timer', 'i:1742812857;', 1742812857),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:8:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"product-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:14:\"product-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:12:\"product-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"product-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"Admin_Room_911\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"Departament1\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"Disable\";s:1:\"c\";s:3:\"web\";}}}', 1742899040);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_10_144003_create_permission_tables', 1),
(5, '2024_05_10_144032_create_products_table', 1),
(6, '2025_03_23_091636_create_user_logins_table', 2),
(7, '2025_03_23_094707_add_timestamps_to_user_logins', 3),
(8, '2025_03_24_100359_add_successful_and_email_to_user_logins_table', 4),
(9, '2025_03_24_100624_add_columns_to_user_logins_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 91),
(3, 'AppModelsUser', 7),
(3, 'AppModelsUser', 8),
(3, 'AppModelsUser', 9),
(3, 'AppModelsUser', 10),
(3, 'AppModelsUser', 11),
(3, 'AppModelsUser', 12),
(3, 'AppModelsUser', 13),
(3, 'AppModelsUser', 14),
(3, 'AppModelsUser', 15),
(3, 'AppModelsUser', 16),
(3, 'AppModelsUser', 17),
(3, 'AppModelsUser', 18),
(3, 'AppModelsUser', 19),
(3, 'AppModelsUser', 20),
(3, 'AppModelsUser', 21),
(3, 'AppModelsUser', 22),
(3, 'AppModelsUser', 23),
(3, 'AppModelsUser', 24),
(3, 'AppModelsUser', 25),
(3, 'AppModelsUser', 26),
(3, 'AppModelsUser', 27),
(3, 'AppModelsUser', 28),
(3, 'AppModelsUser', 29),
(3, 'AppModelsUser', 30),
(3, 'AppModelsUser', 31),
(3, 'AppModelsUser', 32),
(3, 'AppModelsUser', 33),
(3, 'AppModelsUser', 34),
(3, 'AppModelsUser', 35),
(3, 'AppModelsUser', 36),
(3, 'AppModelsUser', 37),
(3, 'AppModelsUser', 38),
(3, 'AppModelsUser', 39),
(3, 'AppModelsUser', 40),
(3, 'AppModelsUser', 41),
(3, 'AppModelsUser', 42),
(3, 'AppModelsUser', 43),
(3, 'AppModelsUser', 44),
(3, 'AppModelsUser', 45),
(3, 'AppModelsUser', 46),
(3, 'AppModelsUser', 47),
(3, 'AppModelsUser', 48),
(3, 'AppModelsUser', 49),
(3, 'AppModelsUser', 50),
(3, 'AppModelsUser', 51),
(3, 'AppModelsUser', 52),
(3, 'AppModelsUser', 53),
(3, 'AppModelsUser', 54),
(3, 'AppModelsUser', 55),
(3, 'AppModelsUser', 56),
(3, 'AppModelsUser', 57),
(3, 'AppModelsUser', 58),
(3, 'AppModelsUser', 59),
(3, 'AppModelsUser', 60),
(3, 'AppModelsUser', 61),
(3, 'AppModelsUser', 62),
(3, 'AppModelsUser', 63),
(3, 'AppModelsUser', 64),
(3, 'AppModelsUser', 65),
(3, 'AppModelsUser', 66),
(3, 'AppModelsUser', 67),
(3, 'AppModelsUser', 68),
(3, 'AppModelsUser', 69),
(3, 'AppModelsUser', 70),
(3, 'AppModelsUser', 71),
(3, 'AppModelsUser', 72),
(3, 'AppModelsUser', 73),
(3, 'AppModelsUser', 74),
(3, 'AppModelsUser', 75),
(3, 'AppModelsUser', 76),
(3, 'AppModelsUser', 77),
(3, 'AppModelsUser', 78),
(3, 'AppModelsUser', 79),
(3, 'AppModelsUser', 80),
(3, 'AppModelsUser', 81),
(3, 'AppModelsUser', 82),
(3, 'AppModelsUser', 83),
(3, 'AppModelsUser', 84),
(3, 'AppModelsUser', 85),
(3, 'AppModelsUser', 86),
(3, 'AppModelsUser', 87),
(3, 'AppModelsUser', 88),
(3, 'AppModelsUser', 89),
(3, 'AppModelsUser', 90),
(3, 'AppModelsUser', 92),
(3, 'AppModelsUser', 93),
(3, 'AppModelsUser', 94),
(3, 'AppModelsUser', 95),
(3, 'AppModelsUser', 96),
(3, 'AppModelsUser', 97),
(3, 'AppModelsUser', 98),
(3, 'AppModelsUser', 99),
(3, 'AppModelsUser', 100),
(3, 'AppModelsUser', 102),
(3, 'AppModelsUser', 103),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 60),
(4, 'App\\Models\\User', 95),
(4, 'App\\Models\\User', 97),
(4, 'App\\Models\\User', 98),
(4, 'App\\Models\\User', 99),
(4, 'App\\Models\\User', 100),
(4, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 102),
(4, 'App\\Models\\User', 103),
(4, 'App\\Models\\User', 104),
(4, 'App\\Models\\User', 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(2, 'role-create', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(3, 'role-edit', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(4, 'role-delete', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(5, 'product-list', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(6, 'product-create', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(7, 'product-edit', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41'),
(8, 'product-delete', 'web', '2025-03-20 15:25:41', '2025-03-20 15:25:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'pils', '399gr', '2025-03-20 15:43:09', '2025-03-20 15:43:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin_Room_911', 'web', '2025-03-20 15:26:42', '2025-03-20 20:18:45'),
(3, 'Departament1', 'web', '2025-03-20 15:39:54', '2025-03-20 19:22:57'),
(4, 'Disable', 'web', '2025-03-20 16:31:09', '2025-03-20 16:31:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(5, 4),
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MYkGN1sg6vwmtjE9JID2HdDcOF15pjd8VpZRJKQU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTFOTW4zMGpJTW9SZW12RGw2Qk9tTU9yS1dhZFpvRVhYSDE5QzhNUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1742812873),
('NvyvQaMjPcLTxbNbPTo015HKZt2EYs3Mx4izA6nw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlE5Qldxekdhd3FlVjhDRWVCb1hrWXR2ZmZ3QlFPbHNPVU93RlR5TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1742818159);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Andy coufax', 'admin@gmail.com', NULL, '$2y$12$1egOUZFXgk4VeUqho8eFbesdbZRsXQtLTXUqTP80LGy3Ogwfjyfua', NULL, '2025-03-20 15:26:42', '2025-03-20 15:26:42'),
(4, 'admin', 'admin1@gmail.com', NULL, '$2y$12$/MrkNl6dY9ynb2k3E0puHuWMwKohhiPQgfTHfi9rGl1GQMA5/A4a.', NULL, '2025-03-20 15:36:02', '2025-03-20 15:36:02'),
(5, 'empleado1', 'empleado1@gmail.com', NULL, '$2y$12$qVR2wFlZWXN3.v55VLQUou2ZbclFgpYvAGqG4Wr.NHN5XeTdzjec.', NULL, '2025-03-20 15:36:49', '2025-03-20 15:36:49'),
(6, 'Aragan', 'empleado21@gmail.com', NULL, '$2y$12$pjTQUEmESSZ6bG4fD35fue2RseUtnOF54uToCQlmvkyaMolOl9i82', NULL, '2025-03-20 19:05:03', '2025-03-20 19:05:03'),
(7, 'empleado420', 'empleado420@ejemplo.com', NULL, '$2y$12$jxzML05dcHyFscAC1jdpDOHspCJjYxchg4UrRn3HOil/UQqXR32SO', NULL, '2025-03-23 12:54:54', '2025-03-23 12:54:54'),
(8, 'empleado421', 'empleado421@ejemplo.com', NULL, '$2y$12$Om3OHtUwOdOTjIX./jdSMeS1PbMFeNPdeT7j0lyL1BlaDfAA2pseu', NULL, '2025-03-23 12:54:55', '2025-03-23 12:54:55'),
(9, 'empleado422', 'empleado422@ejemplo.com', NULL, '$2y$12$c5rKnTSkdRAixuOleqTL.OsxEBVIog7j6lrnMJ0HpA3sy68hHPg8O', NULL, '2025-03-23 12:54:55', '2025-03-23 12:54:55'),
(10, 'empleado423', 'empleado423@ejemplo.com', NULL, '$2y$12$8wi3XpNZBmrXaC9GhYIq8.pZc7jcuUnUc2Drw4RKrsJ19yIC5fbse', NULL, '2025-03-23 12:54:55', '2025-03-23 12:54:55'),
(11, 'empleado424', 'empleado424@ejemplo.com', NULL, '$2y$12$rc.Eed45D/8z4QGMnSpgcu4oys5C4yOltt1z0pTQYL1Fn0pXzxkV.', NULL, '2025-03-23 12:54:56', '2025-03-23 12:54:56'),
(12, 'empleado425', 'empleado425@ejemplo.com', NULL, '$2y$12$z1mkmFJpXymzc8wLyYUE3eY5PT2Ux0ERn1JZG6k.1H6a1wzEKOgAO', NULL, '2025-03-23 12:54:56', '2025-03-23 12:54:56'),
(13, 'empleado426', 'empleado426@ejemplo.com', NULL, '$2y$12$NT2EXSbmSTRfXPZhhioGCeUVMmdkgaMmdiCeYAqH/V3ObBtmtYGQO', NULL, '2025-03-23 12:54:56', '2025-03-23 12:54:56'),
(14, 'empleado427', 'empleado427@ejemplo.com', NULL, '$2y$12$nMHZ05V7zarjc9Z4tF/2tOB20kDjQvItdOTV9NDKcYBUksG6J5RnG', NULL, '2025-03-23 12:54:57', '2025-03-23 12:54:57'),
(15, 'empleado428', 'empleado428@ejemplo.com', NULL, '$2y$12$SGxuHRpPnlG08P9TB8WVqulSygkCkRW4VzWJOtdYwGp.0BNwiZPGS', NULL, '2025-03-23 12:54:57', '2025-03-23 12:54:57'),
(16, 'empleado429', 'empleado429@ejemplo.com', NULL, '$2y$12$W7K6PBE0o/BzMeinkQCBvOkbluVEWpdQm4sbgo7R/zeSJCu2xBdsS', NULL, '2025-03-23 12:54:57', '2025-03-23 12:54:57'),
(17, 'empleado430', 'empleado430@ejemplo.com', NULL, '$2y$12$089OmMw0qZWufvjjdyR4c.LKPMHsWcLmSjclOakcr7aLMjidFhkIu', NULL, '2025-03-23 12:54:57', '2025-03-23 12:54:57'),
(18, 'empleado431', 'empleado431@ejemplo.com', NULL, '$2y$12$3qqBtGQ/Fr.0FMhht944r.Pczr.VmJ2W1.G4qkk27NNbe/KE1zUIi', NULL, '2025-03-23 12:54:58', '2025-03-23 12:54:58'),
(19, 'empleado432', 'empleado432@ejemplo.com', NULL, '$2y$12$imVpAEYB9Kgln5u1tiKWU.JHynWfgWVp68hPFK01iRjXibCuj7xOK', NULL, '2025-03-23 12:54:58', '2025-03-23 12:54:58'),
(20, 'empleado433', 'empleado433@ejemplo.com', NULL, '$2y$12$vzt4rl8xTrBZKEoRn6/MxuLdnhhU6eQFlTuKH6mCt3IKkulDdsB2a', NULL, '2025-03-23 12:54:58', '2025-03-23 12:54:58'),
(21, 'empleado434', 'empleado434@ejemplo.com', NULL, '$2y$12$tSPsmG5ix407lISZNNVJaON4r.z5omYtt2fXUmbjx9RmqqeBHKUhS', NULL, '2025-03-23 12:54:59', '2025-03-23 12:54:59'),
(22, 'empleado435', 'empleado435@ejemplo.com', NULL, '$2y$12$1OBwPZvYQXATBe1V6fzFK.3B0DOuTMxMEhvBv3G5Q4VOHg2Qws0.u', NULL, '2025-03-23 12:54:59', '2025-03-23 12:54:59'),
(23, 'empleado436', 'empleado436@ejemplo.com', NULL, '$2y$12$t9RriyMujfpWjq.OrOZBReG2JkxTmTx3pkQjBAjQQy1WLYLNDjHsy', NULL, '2025-03-23 12:54:59', '2025-03-23 12:54:59'),
(24, 'empleado437', 'empleado437@ejemplo.com', NULL, '$2y$12$R5FHRIMtCWmoqfrrP6p6xOV3TLcH6M6oA6MaNPZpQgeRLB6OBnHJa', NULL, '2025-03-23 12:55:00', '2025-03-23 12:55:00'),
(25, 'empleado438', 'empleado438@ejemplo.com', NULL, '$2y$12$A6lMbfXRx2Jrb2/I/1JeCOrrjXBtwPSLCfDbnN7w.0VwIvJyTJduu', NULL, '2025-03-23 12:55:00', '2025-03-23 12:55:00'),
(26, 'empleado439', 'empleado439@ejemplo.com', NULL, '$2y$12$QVG5d865Bwpqs2SXH63SSernnbLV0fejJznHGiMKibqNv.8UCQRwq', NULL, '2025-03-23 12:55:00', '2025-03-23 12:55:00'),
(27, 'empleado440', 'empleado440@ejemplo.com', NULL, '$2y$12$5otYlZe/DlQThJWlEAxSp.bbAnpRmjBN.X7W3QDTweMA0mmObNlPm', NULL, '2025-03-23 12:55:01', '2025-03-23 12:55:01'),
(28, 'empleado441', 'empleado441@ejemplo.com', NULL, '$2y$12$UZrvHVozGhj8E0WzdELhM.x8//S99ZXDweuzoTPBL7ssdwcjO4fOO', NULL, '2025-03-23 12:55:01', '2025-03-23 12:55:01'),
(29, 'empleado442', 'empleado442@ejemplo.com', NULL, '$2y$12$DrRfUIn1aS.FW6nxQWtu9.rVmFdlmKP38QL6aFId5IL/uEjZ6KUzq', NULL, '2025-03-23 12:55:01', '2025-03-23 12:55:01'),
(30, 'empleado443', 'empleado443@ejemplo.com', NULL, '$2y$12$QFDh4G4BkBjs3najKNd0t.4wYwnz/F9T74kyFEUiB/UH6FuNjLRae', NULL, '2025-03-23 12:55:02', '2025-03-23 12:55:02'),
(31, 'empleado444', 'empleado444@ejemplo.com', NULL, '$2y$12$rRDs36rrnspznn4/8HcMSu77ISjXzmrBvcPa1SeD3wfa9y/cG2tVe', NULL, '2025-03-23 12:55:02', '2025-03-23 12:55:02'),
(32, 'empleado445', 'empleado445@ejemplo.com', NULL, '$2y$12$ReTp7Jq9fED7SqG4WrM4ue5rdLwTcMqS2lFNWO0RUKgZ1ZS9R23cq', NULL, '2025-03-23 12:55:02', '2025-03-23 12:55:02'),
(33, 'empleado446', 'empleado446@ejemplo.com', NULL, '$2y$12$17MLsxTK64cNxP5/OdWbAOHmGOAzPPRFZ3txdCyYQmt3aKa/znIQu', NULL, '2025-03-23 12:55:03', '2025-03-23 12:55:03'),
(34, 'empleado447', 'empleado447@ejemplo.com', NULL, '$2y$12$t9f/BApSCPwViKvbb7u0rOcaTv152QSMhHPvWv3ZTlkLurEQVx7Ki', NULL, '2025-03-23 12:55:03', '2025-03-23 12:55:03'),
(35, 'empleado448', 'empleado448@ejemplo.com', NULL, '$2y$12$xzOr0kDgwaNWC.YnpuAu2.6I0r8X3V6wiJwW2ZR/1vuV6N222Gnb2', NULL, '2025-03-23 12:55:03', '2025-03-23 12:55:03'),
(36, 'empleado449', 'empleado449@ejemplo.com', NULL, '$2y$12$o6ujP.z6UXXR9Co1SRff8uM6hpcs28Tz.XG9W4SbNR4HhSdS1auCq', NULL, '2025-03-23 12:55:04', '2025-03-23 12:55:04'),
(37, 'empleado450', 'empleado450@ejemplo.com', NULL, '$2y$12$WwJU9uz7m/Mub2R8ySdYqONt/Ppf70MwT4dW7muMl9uc.36iNYPM6', NULL, '2025-03-23 12:55:04', '2025-03-23 12:55:04'),
(38, 'empleado451', 'empleado451@ejemplo.com', NULL, '$2y$12$h52jVnNm6aFLkDG3dUVeZexIywJsc5EKu1gIM17/Xd00ATrgC0DMm', NULL, '2025-03-23 12:55:04', '2025-03-23 12:55:04'),
(39, 'empleado452', 'empleado452@ejemplo.com', NULL, '$2y$12$3FM0Q2IGPdqtMpx/JhkBVOuQaQV/8Vwl2zG3gtR.MVUyn6q1tdOlS', NULL, '2025-03-23 12:55:04', '2025-03-23 12:55:04'),
(40, 'empleado453', 'empleado453@ejemplo.com', NULL, '$2y$12$fXsz8YrB2VxB4GazIIaoye9fy98UUU8erbwmKGhislz1YIuENyNE2', NULL, '2025-03-23 12:55:05', '2025-03-23 12:55:05'),
(41, 'empleado454', 'empleado454@ejemplo.com', NULL, '$2y$12$2NKBfPPOiyUb79aN7U2Za.r54767w29m30g6AxPRoqCWduVOGkWFK', NULL, '2025-03-23 12:55:05', '2025-03-23 12:55:05'),
(42, 'empleado455', 'empleado455@ejemplo.com', NULL, '$2y$12$k20eLhq8VDTohc47tt9LHeu87IHqKGP1QCy2CPh.n4K5n.SF/8i3a', NULL, '2025-03-23 12:55:05', '2025-03-23 12:55:05'),
(43, 'empleado456', 'empleado456@ejemplo.com', NULL, '$2y$12$LIkF1J0KkWlKYTi5miX0y.wVdHuxedxtTJ8CtM0vsRCWfviRAmfiC', NULL, '2025-03-23 12:55:06', '2025-03-23 12:55:06'),
(44, 'empleado457', 'empleado457@ejemplo.com', NULL, '$2y$12$F9RTmlf3KvSNSuNU0W268.BUOuYZmM.HcfuZvafS9b8iDDUyzSSfq', NULL, '2025-03-23 12:55:06', '2025-03-23 12:55:06'),
(45, 'empleado458', 'empleado458@ejemplo.com', NULL, '$2y$12$/fhxPWYN3r429v6rlZTugekKfNopb.W5zyxU1qffvc4GyGjrDDqGO', NULL, '2025-03-23 12:55:06', '2025-03-23 12:55:06'),
(46, 'empleado459', 'empleado459@ejemplo.com', NULL, '$2y$12$Q7SStJnBCmm07qFLo2PoEuEaXeXyWwfROeO8SFvqHktGlVrvv6Yxm', NULL, '2025-03-23 12:55:07', '2025-03-23 12:55:07'),
(47, 'empleado460', 'empleado460@ejemplo.com', NULL, '$2y$12$c.fUksO6yKn3dIIhuerHY.xrDziAunLMe2hDc4TfFJgEcjxgiA3HS', NULL, '2025-03-23 12:55:07', '2025-03-23 12:55:07'),
(48, 'empleado461', 'empleado461@ejemplo.com', NULL, '$2y$12$qNfBwrkDSPiXSSR08TOkxufMTomHbYisGuyg30TlfqQuMP4pza9PW', NULL, '2025-03-23 12:55:07', '2025-03-23 12:55:07'),
(49, 'empleado462', 'empleado462@ejemplo.com', NULL, '$2y$12$vcLXGeK4DlnhSkdV.f7d0OwLjSagP.CQMU2BlFyDLW03NTKGUPA2K', NULL, '2025-03-23 12:55:08', '2025-03-23 12:55:08'),
(50, 'empleado463', 'empleado463@ejemplo.com', NULL, '$2y$12$de.x2lWdpCoKywoJJ/1FGeBFP9T.b77uw7NO6C1vx6sVbFgCaDqMi', NULL, '2025-03-23 12:55:08', '2025-03-23 12:55:08'),
(51, 'empleado464', 'empleado464@ejemplo.com', NULL, '$2y$12$UmSKeZqYzyZZrS9hMeewTuaMITaxwzpaBZrZXqOqPHwUkUojBpiye', NULL, '2025-03-23 12:55:08', '2025-03-23 12:55:08'),
(52, 'empleado465', 'empleado465@ejemplo.com', NULL, '$2y$12$zphDfToX94j5qkP.R15mx.mnVDNJcMEoUlVixZP9My4HZrt5ggEEu', NULL, '2025-03-23 12:55:09', '2025-03-23 12:55:09'),
(53, 'empleado466', 'empleado466@ejemplo.com', NULL, '$2y$12$g/5U.PP0zFwB80b1PWqjv.3z.Vp.ezhH.3SwnkXNRVviq0wyqsRhC', NULL, '2025-03-23 12:55:09', '2025-03-23 12:55:09'),
(54, 'empleado467', 'empleado467@ejemplo.com', NULL, '$2y$12$AJPsLZ57QKEpi3FdRK/xyOvQeYqn8deUBtNO07zCZFCGiqekhMyOO', NULL, '2025-03-23 12:55:09', '2025-03-23 12:55:09'),
(55, 'empleado468', 'empleado468@ejemplo.com', NULL, '$2y$12$U3UqG3IhU0QS/DQCx/AZZuuaiGr/4I6eXz2579DhIrv6Tkvc99rUu', NULL, '2025-03-23 12:55:09', '2025-03-23 12:55:09'),
(56, 'empleado469', 'empleado469@ejemplo.com', NULL, '$2y$12$uCN2UXjSAy.BrpmBKzDCZOvaOY32QWefVWvvASVV6j56uboKvTYJ.', NULL, '2025-03-23 12:55:10', '2025-03-23 12:55:10'),
(57, 'empleado470', 'empleado470@ejemplo.com', NULL, '$2y$12$bBQP9gaqSX/QsdC5.9y51uTM3OdVs6W4rNrneYJAk0x6PObpzELvG', NULL, '2025-03-23 12:55:10', '2025-03-23 12:55:10'),
(58, 'empleado471', 'empleado471@ejemplo.com', NULL, '$2y$12$F.HYR/1AESOrbPfRaqu2JuACYrTDp1Bv.9nAVJevaIhx8jJt44KQS', NULL, '2025-03-23 12:55:10', '2025-03-23 12:55:10'),
(59, 'empleado472', 'empleado472@ejemplo.com', NULL, '$2y$12$I/4QWcjxRkYw62TOMYymSeTbLlUeNcOqCaXLVC9LQ7Ho5IZz2qKM.', NULL, '2025-03-23 12:55:11', '2025-03-23 12:55:11'),
(60, 'empleado473', 'empleado473@ejemplo.com', NULL, '$2y$12$2ZTiTKeWIhH7eifHiYuaee6.CJetbl7StLbTasW/TFCIWDyf2JfES', NULL, '2025-03-23 12:55:11', '2025-03-23 12:55:11'),
(61, 'empleado474', 'empleado474@ejemplo.com', NULL, '$2y$12$0hYcAEPKIuxK/vNPX1OeXutGF0G5GyMY5wlFdmmLjeaa9e7FzqIbG', NULL, '2025-03-23 12:55:11', '2025-03-23 12:55:11'),
(62, 'empleado475', 'empleado475@ejemplo.com', NULL, '$2y$12$7nd4AfrjN6cCTwkc09Sy8.JSTei3ldZ2uav2ig4rDDXSaR.M9H7uu', NULL, '2025-03-23 12:55:12', '2025-03-23 12:55:12'),
(63, 'empleado476', 'empleado476@ejemplo.com', NULL, '$2y$12$ZilLCSblpyJuO9MMgNcaee4SCbaRWCAwu1Qmdyj3d2ZCwShlLS.O2', NULL, '2025-03-23 12:55:12', '2025-03-23 12:55:12'),
(64, 'empleado477', 'empleado477@ejemplo.com', NULL, '$2y$12$IZhkzY6qGkhboh46GIo8eO8W0sFqtk32LQoeQVZTJI.WKo5O9DhNm', NULL, '2025-03-23 12:55:12', '2025-03-23 12:55:12'),
(65, 'empleado478', 'empleado478@ejemplo.com', NULL, '$2y$12$OlyROq0phbGZO.1926NUFOETsqlXec2MpHxBfpOfOR/9GCmvCwwdu', NULL, '2025-03-23 12:55:13', '2025-03-23 12:55:13'),
(66, 'empleado479', 'empleado479@ejemplo.com', NULL, '$2y$12$lH2sRHNg7wxpx7ggPOChweQrk2v1zKS53Q8m24mGGpPAjO2t6kdmK', NULL, '2025-03-23 12:55:13', '2025-03-23 12:55:13'),
(67, 'empleado480', 'empleado480@ejemplo.com', NULL, '$2y$12$0nGDuY7O.ReSpMlSu1umFO1PS9zdbLRSiF0/7ZLnXHlHSDalusKLG', NULL, '2025-03-23 12:55:13', '2025-03-23 12:55:13'),
(68, 'empleado481', 'empleado481@ejemplo.com', NULL, '$2y$12$JKsPYrkOb7.3vx.w5dOqPupJzpjHYr1AHhUUdtZpbeb.9z0kxQeOe', NULL, '2025-03-23 12:55:14', '2025-03-23 12:55:14'),
(69, 'empleado482', 'empleado482@ejemplo.com', NULL, '$2y$12$OU58rnL/ik6hF/m9IFWF6eXOFU9dtKJ3T6EU292osJn/qpK.AU4te', NULL, '2025-03-23 12:55:14', '2025-03-23 12:55:14'),
(70, 'empleado483', 'empleado483@ejemplo.com', NULL, '$2y$12$AvL8k9IrHttt6eDBG.5mfuw13aEcEshOxcu.rwiTj6gtg02ICVoDW', NULL, '2025-03-23 12:55:14', '2025-03-23 12:55:14'),
(71, 'empleado484', 'empleado484@ejemplo.com', NULL, '$2y$12$VxVQu5k1ReMfLzM921cFy.NKKDWpuUAXMsA7jd1YiJh4rHUUHFJjW', NULL, '2025-03-23 12:55:15', '2025-03-23 12:55:15'),
(72, 'empleado485', 'empleado485@ejemplo.com', NULL, '$2y$12$/W6e13DClyd8MH7lQxUbRe.xWuKLjbUR2eIXZmmKN2S/w0qrjkjai', NULL, '2025-03-23 12:55:15', '2025-03-23 12:55:15'),
(73, 'empleado486', 'empleado486@ejemplo.com', NULL, '$2y$12$Jbotvr24HdTGnOq55m99c.uHTNr.E/9YW9I7ZJo8ILdZVOq4Tm2vW', NULL, '2025-03-23 12:55:15', '2025-03-23 12:55:15'),
(74, 'empleado487', 'empleado487@ejemplo.com', NULL, '$2y$12$RDVMUN0LAg7mPSAyTC0c0OkP/BGaZzWqrG6cUWjxZIyw5zEKxIPHS', NULL, '2025-03-23 12:55:16', '2025-03-23 12:55:16'),
(75, 'empleado488', 'empleado488@ejemplo.com', NULL, '$2y$12$QAp61QA1NOXK3t2xHXQ0AOXJqxcE4RTX5.JcQQBa59WWpvr0VyRuy', NULL, '2025-03-23 12:55:16', '2025-03-23 12:55:16'),
(76, 'empleado489', 'empleado489@ejemplo.com', NULL, '$2y$12$2smReKmLxvEV9Et/ZPg2QOxaAWxPzg/tCwb9U7AM0dC28b/.VRMnu', NULL, '2025-03-23 12:55:16', '2025-03-23 12:55:16'),
(77, 'empleado490', 'empleado490@ejemplo.com', NULL, '$2y$12$kyHgGpd3O8UanVWLHUsxmuCjT82169cAaGARZp3h3ZlxS8omrvZNm', NULL, '2025-03-23 12:55:17', '2025-03-23 12:55:17'),
(78, 'empleado491', 'empleado491@ejemplo.com', NULL, '$2y$12$/pTjSeRgJguhM3JMZA3dhePpJ6wdON58WoKWmgJT54p3pBkBVxhkO', NULL, '2025-03-23 12:55:17', '2025-03-23 12:55:17'),
(79, 'empleado492', 'empleado492@ejemplo.com', NULL, '$2y$12$X0qay7jQStisZoTaQw15DeD57oTediGTDQRfo47ZcsyBTi.Tv6wx.', NULL, '2025-03-23 12:55:17', '2025-03-23 12:55:17'),
(80, 'empleado493', 'empleado493@ejemplo.com', NULL, '$2y$12$oP4Ymp5JhL1sx0m2m2Yz2.MI8NE5jHr.Y6iyL95x2q2C6LTU6dghO', NULL, '2025-03-23 12:55:18', '2025-03-23 12:55:18'),
(81, 'empleado494', 'empleado494@ejemplo.com', NULL, '$2y$12$f0nlJydw6tnVlM7k.J6ZXOBnt1S6BcZ1qRWBcnZ3HOLss.hloz.8.', NULL, '2025-03-23 12:55:18', '2025-03-23 12:55:18'),
(82, 'empleado495', 'empleado495@ejemplo.com', NULL, '$2y$12$nwIln2u4gSSSgptEdcqJXONnoI/ltaDWUe2idJ8HcDGTwDi/xj51a', NULL, '2025-03-23 12:55:19', '2025-03-23 12:55:19'),
(83, 'empleado496', 'empleado496@ejemplo.com', NULL, '$2y$12$4dsFfEGzhTu0Orew2QUq6OssOuh84LUovRQSW82LBeFm3O2fQjNmu', NULL, '2025-03-23 12:55:19', '2025-03-23 12:55:19'),
(84, 'empleado497', 'empleado497@ejemplo.com', NULL, '$2y$12$Fb1QZmNUIlBpgQQBDOMFL.5NFDfBAUxmXB.Tof1/Roc9FKnju5NR6', NULL, '2025-03-23 12:55:19', '2025-03-23 12:55:19'),
(85, 'empleado498', 'empleado498@ejemplo.com', NULL, '$2y$12$6VaF1rhnY61WS2Ps5VBfm.jFsR.SAcYo1R3hz4JUwoved7eZdRdvS', NULL, '2025-03-23 12:55:20', '2025-03-23 12:55:20'),
(86, 'empleado499', 'empleado499@ejemplo.com', NULL, '$2y$12$LKfPt/WO4bThCKk5Ty43Z.JvPKwWpXdOXe1xm0iNDThTC3Z.2pnaS', NULL, '2025-03-23 12:55:20', '2025-03-23 12:55:20'),
(87, 'empleado500', 'empleado500@ejemplo.com', NULL, '$2y$12$tj1WimLg4abkrRstDYnql.TT9Sg3wds87F6uMobGw/CvgeyARUgmu', NULL, '2025-03-23 12:55:20', '2025-03-23 12:55:20'),
(88, 'empleado501', 'empleado501@ejemplo.com', NULL, '$2y$12$3OlHjAtQ1LHtz3JRzEi7QecKIgh5p9kKsVg3Q3SnwkJbTJTjfrz4C', NULL, '2025-03-23 12:55:21', '2025-03-23 12:55:21'),
(89, 'empleado502', 'empleado502@ejemplo.com', NULL, '$2y$12$VCTLbRcBC/J5u3z.gymkTucGRBnwcqpICAMSKvHeXRJlsI8WtRbN2', NULL, '2025-03-23 12:55:21', '2025-03-23 12:55:21'),
(90, 'empleado503', 'empleado503@ejemplo.com', NULL, '$2y$12$Gw6P5vq/tkK6OLakKD1X..BeHNgkidEdv3UGwqeBZmzjDVKOJXhdO', NULL, '2025-03-23 12:55:21', '2025-03-23 12:55:21'),
(91, 'empleado504', 'empleado504@ejemplo.com', NULL, '$2y$12$jYd8NBAxlVOM96laQ8hoheYeGhO7K26pYNyzFkEOHJ4MI8L3iHuee', NULL, '2025-03-23 12:55:22', '2025-03-23 12:55:22'),
(92, 'empleado505', 'empleado505@ejemplo.com', NULL, '$2y$12$icmbJQMjMqOcC2EYWgxBSe1tRbyXVLBflJaQgw41uDq9Um52VVkj.', NULL, '2025-03-23 12:55:22', '2025-03-23 12:55:22'),
(93, 'empleado506', 'empleado506@ejemplo.com', NULL, '$2y$12$K4vzcc5u2p6prMLBqPJPTe6BU0t/.9J0ViCU1w6ZvYp6ie0QcNj/.', NULL, '2025-03-23 12:55:22', '2025-03-23 12:55:22'),
(94, 'empleado507', 'empleado507@ejemplo.com', NULL, '$2y$12$qs/3OaPT87EhZY2yIrgFR.EJAVB4xEIbYtCodX2XMgq6Pqmg933B6', NULL, '2025-03-23 12:55:22', '2025-03-23 12:55:22'),
(95, 'empleado508', 'empleado508@ejemplo.com', NULL, '$2y$12$ZT3jCp5dF6yebWh1q5vDa.gCxK7IcJ5uuU0ZC93XfwOwu3LyKz69m', NULL, '2025-03-23 12:55:23', '2025-03-23 12:55:23'),
(97, 'empleado510', 'empleado510@ejemplo.com', NULL, '$2y$12$ekdEVhBHe.04u1KXLmpOHuUNAqAXStJV1I7c5ozWHehrQN5E0cDRC', NULL, '2025-03-23 12:55:23', '2025-03-23 12:55:23'),
(98, 'empleado511', 'empleado511@ejemplo.com', NULL, '$2y$12$teEW1vRpGIHnTDTtTbHQ4ObWsDm5Nm0aZVKsR9ivWYmL1LuhATrzG', NULL, '2025-03-23 12:55:24', '2025-03-23 12:55:24'),
(99, 'empleado512', 'empleado512@ejemplo.com', NULL, '$2y$12$Apl5gUXgwPG7.TZ.O3RQ0OX2UtLZ7ZvyTFHX3wz9XJiCjJRMFUsVG', NULL, '2025-03-23 12:55:24', '2025-03-23 12:55:24'),
(100, 'empleado513', 'empleado513@ejemplo.com', NULL, '$2y$12$rJeC47D1.1.EwdKGRl2eouDY8li7lHtMYCfjFoCdk7Q7ZvoqWaJh2', NULL, '2025-03-23 12:55:24', '2025-03-23 12:55:24'),
(101, 'empleado514', 'empleado514@ejemplo.com', NULL, '$2y$12$3E76Fgx3OBsUz6EOCTO8C.wPMJCCjZA90MqzRLh/XU6BbtShI6sHO', NULL, '2025-03-23 12:55:25', '2025-03-23 12:55:25'),
(102, 'empleado515', 'empleado515@ejemplo.com', NULL, '$2y$12$07YhGcuGzZLzv4lzGRkwz.p1A/zewBCIL6jgqZozxudAHS4S7StBq', NULL, '2025-03-23 12:55:25', '2025-03-23 12:55:25'),
(103, 'empleado516', 'empleado516@ejemplo.com', NULL, '$2y$12$qF8a6e5f5pL.oG/zoXZF8uNktCbqo8THt92FnR1IphQg5DrXrDfhO', NULL, '2025-03-23 12:55:25', '2025-03-23 12:55:25'),
(104, 'empleado517', 'empleado517@ejemplo.com', NULL, '$2y$12$d.a07EktR.eNWcByG3L68e/lDGwhE525q9kXRpPkXeKyiNSSVz3dG', NULL, '2025-03-23 12:55:26', '2025-03-23 12:55:26'),
(105, 'empleado518', 'empleado518@ejemplo.com', NULL, '$2y$12$CLXGc8SRBdnSiJ1xDgtQ4eba83RPYj8hgnJAXrZu1K9cuTjlrVVay', NULL, '2025-03-23 12:55:26', '2025-03-23 12:55:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `login_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `login_at`, `created_at`, `updated_at`) VALUES
(1, 3, '2025-03-23 14:53:38', '2025-03-23 14:53:38', '2025-03-23 14:53:38'),
(2, 3, '2025-03-23 15:10:47', '2025-03-23 15:11:21', '2025-03-23 15:11:21'),
(3, 3, '2025-03-23 15:23:27', '2025-03-23 15:23:27', '2025-03-23 15:23:27'),
(4, 5, '2025-03-23 18:22:31', NULL, NULL),
(5, 4, '2025-03-23 18:23:08', NULL, NULL),
(6, 4, '2025-03-24 12:57:37', NULL, NULL),
(7, 4, '2025-03-24 13:02:13', NULL, NULL),
(8, 7, '2025-03-24 15:39:07', NULL, NULL),
(9, 4, '2025-03-24 15:41:44', NULL, NULL),
(10, 4, '2025-03-24 15:45:17', NULL, NULL),
(11, 4, '2025-03-24 15:46:11', NULL, NULL),
(12, 4, '2025-03-24 17:01:45', NULL, NULL),
(13, 104, '2025-03-24 17:06:53', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_logins_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_logins`
--
ALTER TABLE `user_logins`
  ADD CONSTRAINT `user_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
