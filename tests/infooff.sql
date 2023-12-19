-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 01:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infooff`
--

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_12_18_231620_create_todos_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `name`, `images`, `tags`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Lea Morar', '[\"todos-images\\/01HHZP76CS05XFC83JJEEY2V9G.jpg\"]', '[\"Sport\",\"Entertainment\"]', 1, '2023-12-18 16:51:43', '2023-12-18 17:04:43'),
(2, 'Sydnee Sipes', '[\"todos-images\\/01HHZPNYY28ZHS399S6FC8Z56N.jpg\"]', '[]', 0, '2023-12-18 16:51:43', '2023-12-18 17:12:46'),
(3, 'Kristin Abernathy', NULL, '\"entertainment\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(4, 'Mr. Cale Johnston', NULL, '\"home\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(5, 'Mr. Vince Auer', '[\"todos-images\\/01HHZPTQ5MMDP46RGG8NKFMWBJ.jpg\",\"todos-images\\/01HHZPTQ63TFJRZPX0XY81KMZ4.webp\",\"todos-images\\/01HHZPTQ65S4Z8WC86SD3KDWB2.png\"]', '[\"Sport\"]', 0, '2023-12-18 16:51:43', '2023-12-18 17:15:22'),
(6, 'Carolina Schultz', NULL, '\"sport\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(7, 'Johnny Hyatt', NULL, '\"entertainment\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(8, 'Mrs. Tabitha Deckow II', NULL, '\"it\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(9, 'Blake Hane Jr.', NULL, '\"entertainment\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(10, 'Dr. Brandt Lowe DVM', NULL, '\"home\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(11, 'Lucas Mann', NULL, '\"it\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(12, 'Vince Nikolaus', NULL, '\"home\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(13, 'Ludwig Harber', NULL, '\"it\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(14, 'Florence VonRueden', NULL, '\"sport\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(15, 'Cathryn Waters', NULL, '\"garden\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(16, 'Dr. Merl Dach III', NULL, '\"it\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(17, 'Rodolfo Mosciski', NULL, '\"it\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(18, 'Dr. Kamren Larkin PhD', NULL, '\"sport\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(19, 'Brad Crist I', NULL, '\"garden\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(20, 'Raymond Treutel', NULL, '\"home\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(31, 'Dr. Aron Smitham', NULL, '\"garden\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(32, 'Dr. Madisen Shields', NULL, '\"entertainment\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(33, 'Dr. Rowland Ryan', NULL, '\"sport\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(34, 'Alysson Rosenbaum', NULL, '\"garden\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(35, 'Dr. Myrna Considine', NULL, '\"home\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(36, 'Aurelio Batz Jr.', NULL, '\"garden\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(37, 'Ryann Grady', NULL, '\"garden\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(38, 'Prof. Giovanny Ferry DDS', NULL, '\"it\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(39, 'Jackie Medhurst', NULL, '\"garden\"', 1, '2023-12-18 16:51:43', '2023-12-18 16:51:43'),
(40, 'Isai Jaskolski', NULL, '\"entertainment\"', 0, '2023-12-18 16:51:43', '2023-12-18 16:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Korn.S', 'sirikorn.s@outlook.com', NULL, '$2y$12$oXXMMavyFW2VOovEAdDs5O/BfnyxMds.PjAhj64iltIHXZHYiol5W', 'kTVvSwlLcBq4VbToDb3mJ3pLHTMC0WJEJzEOXz2SPsA2gh9b961rS79OIbnU', '2023-12-18 16:54:40', '2023-12-18 16:54:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
