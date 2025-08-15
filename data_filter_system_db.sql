-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 12:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_filter_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gazipur', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(2, 1, 'Narsingdi', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(3, 1, 'Tangail', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(4, 2, 'Comilla', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(5, 2, 'Feni', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(6, 2, 'Cox’s Bazar', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(7, 3, 'Jessore', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(8, 3, 'Satkhira', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(9, 3, 'Bagerhat', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(10, 4, 'Barishal Sadar', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(11, 4, 'Patuakhali', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(12, 4, 'Bhola', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(13, 5, 'Sylhet Sadar', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(14, 5, 'Moulvibazar', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(15, 5, 'Habiganj', '2025-08-13 03:56:54', '2025-08-13 03:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(2, 'Chattogram', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(3, 'Khulna', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(4, 'Barishal', '2025-08-13 03:56:54', '2025-08-13 03:56:54'),
(5, 'Sylhet', '2025-08-13 03:56:54', '2025-08-13 03:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_13_072202_create_divisions_table', 1),
(5, '2025_08_13_072208_create_districts_table', 1),
(6, '2025_08_13_072214_create_thanas_table', 1),
(7, '2025_08_13_075153_add_location_to_users_table', 1),
(8, '2025_08_13_080045_add_age_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0QL9nHGXxIpVFBcAj47Eszz89TZEs8DsQaCBwNwK', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTFuaFNpdzl1cDI3S0t5U2pzQ3ZIdEdvY3h5UW9NakFmd2ptVklxYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbGhvc3QvZGF0YS1maWx0ZXItc3lzdGVtL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1755080736);

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `district_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kaliakoir', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(2, 1, 'Sreepur', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(3, 2, 'Belabo', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(4, 2, 'Raipura', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(5, 3, 'Mirzapur', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(6, 3, 'Gopalpur', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(7, 4, 'Sadar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(8, 4, 'Daudkandi', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(9, 5, 'Parshuram', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(10, 5, 'Chhagalnaiya', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(11, 6, 'Chakaria', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(12, 6, 'Ukhia', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(13, 7, 'Kotwali', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(14, 7, 'Monirampur', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(15, 8, 'Tala', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(16, 8, 'Debhata', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(17, 9, 'Mongla', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(18, 9, 'Fakirhat', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(19, 10, 'Barishal Town', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(20, 10, 'Bakerganj', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(21, 11, 'Dumki', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(22, 11, 'Galachipa', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(23, 12, 'Sadar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(24, 12, 'Charfesson', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(25, 13, 'Ambarkhana', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(26, 13, 'Zindabazar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(27, 14, 'Sadar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(28, 14, 'Rajnagar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(29, 15, 'Sadar', '2025-08-13 03:56:55', '2025-08-13 03:56:55'),
(30, 15, 'Bahubal', '2025-08-13 03:56:55', '2025-08-13 03:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thana_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `division_id`, `district_id`, `thana_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `age`) VALUES
(1, NULL, NULL, NULL, 'Test User', 'test@example.com', '2025-08-13 03:56:54', '$2y$12$luN4c3GgIk7ldWC18N79kO2KZCwTM7lhG1Nry.qOz.5UnX9XkneiO', 'VV2uZV1L6M', '2025-08-13 03:56:54', '2025-08-13 03:56:54', NULL),
(2, 1, 1, 1, 'Shahu Ahmed', 'shahuahmed@test.com', NULL, '$2y$12$0XcMAB8cZ4lG461hEp.0tuhjmBpYrHhJSt6Jayjp/td9gW9/6Ojqm', NULL, '2025-08-13 03:56:55', '2025-08-13 03:56:55', 25),
(3, 1, 2, 3, 'Rakib Hasan', 'rakibhasan@test.com', NULL, '$2y$12$BYu/uoGoc6KgGD4dBDG.NebrDh5fcsHJljCVJ9r1CUtpTfKZSirTm', NULL, '2025-08-13 03:56:56', '2025-08-13 03:56:56', 30),
(4, 1, 1, 2, 'Nayeem Khan', 'nayeemkhan@test.com', NULL, '$2y$12$ZkeXbeO6xUHv4e9u2iTAY.1CFOeBhuw3wZmc80k6qRyynUV8uPJju', NULL, '2025-08-13 03:56:56', '2025-08-13 03:56:56', 28),
(5, 2, 4, 7, 'Mahin Uddin', 'mahinuddin@test.com', NULL, '$2y$12$WJWForigoWs/H19LO.P50e9zSkwd6YGaYof3x35btp2U9EL.pNf5a', NULL, '2025-08-13 03:56:56', '2025-08-13 03:56:56', 22),
(6, 2, 5, 10, 'Saiful Islam', 'saifulislam@test.com', NULL, '$2y$12$FeUzulShV3D/Ira7HkYHcOypU6lvQiYXgTJUz3/3IZscDLQBYSQR6', NULL, '2025-08-13 03:56:56', '2025-08-13 03:56:56', 35),
(7, 2, 4, 8, 'Rifat Hossain', 'rifathossain@test.com', NULL, '$2y$12$G4Vws1/08Pb8i7sdmVmZzOjcs4sfNf1lyNdG5PRKdJ.uj0DGdGEP2', NULL, '2025-08-13 03:56:57', '2025-08-13 03:56:57', 27),
(8, 3, 7, 13, 'Arifur Rahman', 'arifurrahman@test.com', NULL, '$2y$12$dV5S/xbhtMJgXLEdABJQPOYFJYHk2KyLALlPA.UYgBfRrVnDhXn6a', NULL, '2025-08-13 03:56:57', '2025-08-13 03:56:57', 26),
(9, 3, 8, 15, 'Tanvir Alam', 'tanviralam@test.com', NULL, '$2y$12$USCHA.qNLNMCgHGW7T9Ef.bgHbYyt1YrtWLChEal8wsNSg9/LqHki', NULL, '2025-08-13 03:56:57', '2025-08-13 03:56:57', 33),
(10, 3, 7, 14, 'Farhana Akter', 'farhanaakter@test.com', NULL, '$2y$12$.8UkFOqHxTkInKdCnbx2ceTxIiRDXmoUgWxHfQOMPEGDQB7kWi1Zq', NULL, '2025-08-13 03:56:57', '2025-08-13 03:56:57', 24),
(11, 3, 8, 16, 'Jannat Jahan', 'jannatjahan@test.com', NULL, '$2y$12$mkh0JRQ.6xAfOvQDjS574.FhBtcKdLBs7gkPDRT2OEGbh2jqFMweq', NULL, '2025-08-13 03:56:57', '2025-08-13 03:56:57', 29),
(12, 4, 10, 19, 'Rina Sultana', 'rinasultana@test.com', NULL, '$2y$12$LPxQdN3vTwSh4VYOJcQXPu/nD8kbLbq6t04BgJdxqKOt/cGZgIk9C', NULL, '2025-08-13 03:56:58', '2025-08-13 03:56:58', 31),
(13, 4, 11, 21, 'Mizanur Rahman', 'mizanurrahman@test.com', NULL, '$2y$12$1/Ti/sNMTIqLQWVeknQmCuM2d6V5meZBd6/SGMKiuPatM76WZUaHi', NULL, '2025-08-13 03:56:58', '2025-08-13 03:56:58', 23),
(14, 4, 12, 7, 'Tasnim Ahmed', 'tasnimahmed@test.com', NULL, '$2y$12$5dL.JtpY0ngfWi7jUPHk3eB1223x90dKwl21Jrg8L89PoACPK3Sv.', NULL, '2025-08-13 03:56:58', '2025-08-13 03:56:58', 34),
(15, 5, 13, 26, 'Fahim Khan', 'fahimkhan@test.com', NULL, '$2y$12$PDIqePfzS0nuSqrTGKg4ReMk8FP5ArR8nlxN/oynPlHd1N5f4SSAK', NULL, '2025-08-13 03:56:58', '2025-08-13 03:56:58', 28),
(16, 5, 14, 28, 'Nusrat Jahan', 'nusratjahan@test.com', NULL, '$2y$12$TIPKWQjr5GuTHGsVt5Mu0es6ceKtEVib/yynEE9RBsseYQ60M6omO', NULL, '2025-08-13 03:56:59', '2025-08-13 03:56:59', 26),
(17, 5, 15, 30, 'Sabbir Hossain', 'sabbirhossain@test.com', NULL, '$2y$12$od6F4i8oVOp0hxG.VQELs./FAl9oBvSYG7XDoyEyR9e5rKKz6U/Ra', NULL, '2025-08-13 03:56:59', '2025-08-13 03:56:59', 32),
(18, 1, 3, 5, 'Arman Rahman', 'armanrahman@test.com', NULL, '$2y$12$BgCQVuGOwU/ccIKddHPaKOU/SQtKzzMiefc3Yk53bgzf7tYQ52mpS', NULL, '2025-08-13 03:56:59', '2025-08-13 03:56:59', 27),
(19, 1, 3, 6, 'Rokeya Begum', 'rokeyabegum@test.com', NULL, '$2y$12$BD8SKvdxNko72ZBzUg91eOmclYIeWLKw3O3SNmIUWBzaFyhxbb792', NULL, '2025-08-13 03:56:59', '2025-08-13 03:56:59', 24),
(20, 2, 6, 12, 'Hasan Ali', 'hasanali@test.com', NULL, '$2y$12$zNz.mpDErHdXqI4GZ6Jtveiwcz5FWlgAeRdto6uypcE6MnJODR05m', NULL, '2025-08-13 03:56:59', '2025-08-13 03:56:59', 29),
(21, 2, 6, 11, 'Nabila Khan', 'nabilakhan@test.com', NULL, '$2y$12$mdn.ILBt0cuqORgq8i3.3e8jAY6DzcxxqxQqlUemB3OgoJHQign2O', NULL, '2025-08-13 03:57:00', '2025-08-13 03:57:00', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thanas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_division_id_foreign` (`division_id`),
  ADD KEY `users_district_id_foreign` (`district_id`),
  ADD KEY `users_thana_id_foreign` (`thana_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thanas`
--
ALTER TABLE `thanas`
  ADD CONSTRAINT `thanas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_thana_id_foreign` FOREIGN KEY (`thana_id`) REFERENCES `thanas` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
