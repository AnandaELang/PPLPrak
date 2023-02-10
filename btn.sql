-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 05:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btn`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atm_location` varchar(255) NOT NULL,
  `atm_deadline` varchar(255) NOT NULL,
  `atm_note` varchar(255) NOT NULL,
  `atm_status` varchar(255) NOT NULL,
  `kantor_cabang_id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `item_atms`
--

CREATE TABLE `item_atms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `itematm_name` varchar(255) NOT NULL,
  `itematm_note` varchar(255) NOT NULL,
  `atm_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_outlets`
--

CREATE TABLE `item_outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `itemoutlet_name` varchar(255) NOT NULL,
  `itemoutlet_note` varchar(255) NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kantor_cabangs`
--

CREATE TABLE `kantor_cabangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantor_cabang_name` varchar(255) NOT NULL,
  `kantor_cabang_location` varchar(255) NOT NULL,
  `jumlah_mesin` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kantor_cabangs`
--

INSERT INTO `kantor_cabangs` (`id`, `kantor_cabang_name`, `kantor_cabang_location`, `jumlah_mesin`, `status`, `catatan`) VALUES
(1, 'KC Mekel', 'Solo', '5', 'Sewa', 'bersihin oyy'),
(2, 'MC Mekel', 'solo', '1', 'Sewa', 'kerja yg bnr blokk');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_16_140327_create_kantor_cabangs_table', 1),
(6, '2023_01_16_141001_create_outlet_btns_table', 1),
(7, '2023_01_20_011446_create_atms_table', 1),
(8, '2023_01_20_011954_create_item_outlets_table', 1),
(9, '2023_01_20_012022_create_item_atms_table', 1),
(10, '2023_01_20_013903_create_penilaian_item_atms_table', 1),
(11, '2023_01_20_014447_create_penilaian_item_outlets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlet_btns`
--

CREATE TABLE `outlet_btns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_name` varchar(255) NOT NULL,
  `outlet_location` varchar(255) NOT NULL,
  `outlet_deadline` varchar(255) NOT NULL,
  `outlet_note` varchar(255) NOT NULL,
  `outlet_status` varchar(255) NOT NULL,
  `kantor_cabang_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_item_atms`
--

CREATE TABLE `penilaian_item_atms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penilaianitematm_name` varchar(255) NOT NULL,
  `penilaianitematm_score` varchar(255) NOT NULL,
  `penilaianitematm_gambar` varchar(255) NOT NULL,
  `itematm_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_item_outlets`
--

CREATE TABLE `penilaian_item_outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penilaianitemoutlet_name` varchar(255) NOT NULL,
  `penilaianitemoutlet_score` varchar(255) NOT NULL,
  `penilaianitemoutlet_gambar` varchar(255) NOT NULL,
  `itemoutlet_id` bigint(20) UNSIGNED NOT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `frist_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `kantor_cabang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `frist_name`, `last_name`, `user_email`, `email_verified_at`, `password`, `nip`, `role`, `remember_token`, `last_login`, `kantor_cabang`) VALUES
(1, 'mekel', 'okta', 'upii@gmail.com', NULL, '$2y$10$Lbf9bgm7YX8QldLsI3d9J.PT5QpIMK077v0AIwXijJ.OeIJmYjEOW', '1231231232', 'User', NULL, NULL, 'Solo'),
(3, 'upii', 'blitar', 'upii23@gmail.com', NULL, '$2y$10$ZOKopjWfluiL05OSywVfpuLnzh1/p.8DpbPRqQUzQXgFAs6XbR4f2', '41233123310982', 'Super Admin', NULL, NULL, 'Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `item_atms`
--
ALTER TABLE `item_atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_outlets`
--
ALTER TABLE `item_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kantor_cabangs`
--
ALTER TABLE `kantor_cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlet_btns`
--
ALTER TABLE `outlet_btns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penilaian_item_atms`
--
ALTER TABLE `penilaian_item_atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penilaian_item_outlets`
--
ALTER TABLE `penilaian_item_outlets`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_atms`
--
ALTER TABLE `item_atms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_outlets`
--
ALTER TABLE `item_outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kantor_cabangs`
--
ALTER TABLE `kantor_cabangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `outlet_btns`
--
ALTER TABLE `outlet_btns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian_item_atms`
--
ALTER TABLE `penilaian_item_atms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian_item_outlets`
--
ALTER TABLE `penilaian_item_outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
