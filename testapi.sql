-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 04:56 PM
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
-- Database: `testapi`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobileno` varchar(155) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `referal_code` varchar(155) DEFAULT NULL,
  `refered_by` varchar(55) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `secreat_code` varchar(55) DEFAULT NULL,
  `wallet_amount` int(11) DEFAULT NULL,
  `downloadable` int(1) DEFAULT NULL,
  `no_of_referal` varchar(55) DEFAULT NULL,
  `is_prime_member` varchar(55) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `village` varchar(155) DEFAULT NULL,
  `village_post` varchar(155) DEFAULT NULL,
  `district` varchar(55) DEFAULT NULL,
  `tahsil` varchar(55) DEFAULT NULL,
  `pin_code` int(6) DEFAULT NULL,
  `land_mark` varchar(155) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobileno`, `age`, `gender`, `fathers_name`, `is_active`, `location`, `referal_code`, `refered_by`, `otp`, `secreat_code`, `wallet_amount`, `downloadable`, `no_of_referal`, `is_prime_member`, `device_id`, `village`, `village_post`, `district`, `tahsil`, `pin_code`, `land_mark`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aman', 'test@gmail.com', '75653443', 24, 'male', 'tdff', 1, 'dsfdfsfas', 'dsfs', '', 1331, 'dfsfs', 3434, 34, 'fdgdsg', 'fdgds', 'fgdgdsg', 'fdgd', 'gfdgf  gfg', 'ggfsg', 'gfsdg', 534342, 'fgsdgdg', NULL, '73b25522615dac9cfd289ee35faef4ef', NULL, NULL, NULL),
(2, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, '3464532', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:25:46', '2024-01-21 03:25:46'),
(3, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, 'ZFHA9YNYLXM0SHAK', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:32:37', '2024-01-21 03:32:37'),
(4, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, 'JKI7MVOUD57XAMJS', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:33:16', '2024-01-21 03:33:16'),
(5, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, 'OE4GI0GW', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:34:28', '2024-01-21 03:34:28'),
(6, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, 'BLXDKZKZ', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:35:04', '2024-01-21 03:35:04'),
(7, NULL, NULL, '7653453674', NULL, NULL, NULL, NULL, NULL, 'XNTGSDLE', '18635364', 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:44:56', '2024-01-21 03:44:56'),
(8, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'EBVTMESM', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:48:57', '2024-01-21 05:40:34'),
(9, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'NI98A1KL', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 03:51:20', '2024-01-21 03:51:20'),
(10, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, '9RLHBUIG', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 04:13:54', '2024-01-21 04:13:54'),
(11, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'CSKODADZ', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 04:14:42', '2024-01-21 04:14:42'),
(12, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'SBPAGI4I', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 04:15:24', '2024-01-21 04:15:24'),
(13, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'I3LKLGVE', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 04:58:15', '2024-01-21 04:58:15'),
(14, NULL, NULL, '874873248', NULL, NULL, NULL, NULL, NULL, 'INXW9WVT', NULL, 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 04:58:51', '2024-01-21 04:58:51'),
(15, NULL, NULL, '7867564556', NULL, NULL, NULL, NULL, NULL, 'Z9TQAEWW', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 05:42:19', '2024-01-21 05:53:54'),
(16, NULL, NULL, '7867564551', NULL, NULL, NULL, NULL, NULL, '#SBM7867564551', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 05:54:00', '2024-01-21 05:54:00'),
(17, NULL, NULL, '7867564552', NULL, NULL, NULL, NULL, NULL, '217', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 06:05:59', '2024-01-21 06:05:59'),
(18, NULL, NULL, '7867564553', NULL, NULL, NULL, NULL, NULL, '20000017', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 06:06:32', '2024-01-21 06:06:32'),
(19, NULL, NULL, '7867564554', NULL, NULL, NULL, NULL, NULL, 'SBM-20000018', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 06:07:08', '2024-01-21 06:07:08'),
(20, NULL, NULL, '7867564555', NULL, NULL, NULL, NULL, NULL, '#SBM-20000019', NULL, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 06:08:41', '2024-01-21 06:10:03');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
