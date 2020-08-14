-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 06:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rivalao`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakiye_raporus`
--

CREATE TABLE `bakiye_raporus` (
  `id` int(10) UNSIGNED NOT NULL,
  `izin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alan_id` int(11) NOT NULL,
  `veren_id` int(11) NOT NULL,
  `miktar` decimal(12,2) NOT NULL,
  `alan_eski` decimal(12,2) NOT NULL,
  `veren_eski` decimal(12,2) NOT NULL,
  `alan_yeni` decimal(12,2) NOT NULL,
  `veren_yeni` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulten_engelles`
--

CREATE TABLE `bulten_engelles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulten_market_engelles`
--

CREATE TABLE `bulten_market_engelles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulten_oran_duzenle_coguls`
--

CREATE TABLE `bulten_oran_duzenle_coguls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miktar` double(8,2) NOT NULL,
  `islem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canli_market_engelles`
--

CREATE TABLE `canli_market_engelles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canli_oran_duzenle_coguls`
--

CREATE TABLE `canli_oran_duzenle_coguls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miktar` double(8,2) NOT NULL,
  `islem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duyurus`
--

CREATE TABLE `duyurus` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `etki` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupons`
--

CREATE TABLE `kupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `durum` int(11) NOT NULL DEFAULT 2,
  `misli` int(11) NOT NULL,
  `maclar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `odenen` double(8,2) NOT NULL,
  `toplamOran` decimal(12,2) NOT NULL DEFAULT 0.00,
  `para_yatirildi` int(11) NOT NULL DEFAULT 0,
  `izin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kontrol_etme` tinyint(1) NOT NULL DEFAULT 0,
  `sistem` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_ayaris`
--

CREATE TABLE `kupon_ayaris` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `max_bahis_sayisi` int(11) NOT NULL,
  `min_bahis_miktari` int(11) NOT NULL,
  `max_bahis_miktari` int(11) NOT NULL,
  `max_bahis_miktari_ayni` int(11) NOT NULL,
  `max_oran` double(8,2) NOT NULL,
  `min_tekli_oran` double(8,2) NOT NULL,
  `canli_onay_suresi` int(11) NOT NULL,
  `canli_futbol_ms_son` int(11) NOT NULL,
  `canli_futbol_iy_son` int(11) NOT NULL,
  `canli_futbol` tinyint(1) NOT NULL,
  `canli_basket` tinyint(1) NOT NULL,
  `canli_oynat` tinyint(1) NOT NULL,
  `normal_oynat` tinyint(1) NOT NULL,
  `canli_normal_karisik` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `max_kazanc` int(11) NOT NULL DEFAULT 10000,
  `min_kombine_oran` double(8,2) NOT NULL,
  `sistem_kupon` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_odeme_takips`
--

CREATE TABLE `kupon_odeme_takips` (
  `id` int(10) UNSIGNED NOT NULL,
  `kupon_id` int(11) NOT NULL,
  `miktar` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL DEFAULT 0,
  `spor_id` int(11) NOT NULL,
  `sp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `period_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_01_232219_create_kupons_table', 1),
(4, '2018_09_10_215932_create_oran_degisimis_table', 1),
(5, '2018_09_11_234441_create_markets_table', 1),
(6, '2018_09_13_220143_create_bakiye_raporus_table', 1),
(7, '2018_09_15_232854_create_bulten_engelles_table', 1),
(8, '2018_09_18_065709_add_period_type_to_markets', 1),
(9, '2018_09_21_182946_create_kupon_ayaris_table', 1),
(10, '2018_09_22_082924_create_bulten_market_engelles_table', 1),
(11, '2018_09_22_091945_create_bulten_oran_duzenle_coguls_table', 1),
(12, '2018_09_22_093417_create_canli_oran_duzenle_coguls_table', 1),
(13, '2018_09_22_104245_create_canli_market_engelles_table', 1),
(14, '2018_09_22_192444_add_ayars_to_users', 1),
(15, '2018_09_22_225412_add_kontrol_etme_to_kupons', 1),
(16, '2018_09_24_194339_create_duyurus_table', 1),
(17, '2018_10_05_223637_add_max_kazanc_to_kupon_ayaris', 1),
(18, '2018_12_02_020709_add_min_kombine_oran_to_kupon_ayaris', 1),
(19, '2018_12_05_053941_add_sistem_to_kupons', 1),
(20, '2018_12_05_103316_add_sistem_kupon_to_kupon_ayaris', 1),
(21, '2019_06_14_170723_create_kupon_odeme_takips_table', 1),
(22, '2020_07_27_162717_create_xpgtransactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oran_degisimis`
--

CREATE TABLE `oran_degisimis` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `betradar_id` int(11) DEFAULT NULL,
  `prediction_id` int(11) NOT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `etki` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasif` tinyint(1) NOT NULL DEFAULT 0,
  `bakiye` decimal(12,2) NOT NULL DEFAULT 0.00,
  `xpg_bakiye` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tvbet_bakiye` decimal(12,2) NOT NULL DEFAULT 0.00,
  `can_play_xpg` tinyint(1) NOT NULL DEFAULT 0,
  `can_play_tvbet` tinyint(1) NOT NULL DEFAULT 0,
  `rutbe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kupon_yapabilir` tinyint(1) NOT NULL DEFAULT 1,
  `canli_kupon_yapabilir` tinyint(1) NOT NULL DEFAULT 1,
  `canli_futbol_oynayabilir` tinyint(1) NOT NULL DEFAULT 1,
  `canli_basketbol_oynayabilir` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `pasif`, `bakiye`, `xpg_bakiye`, `tvbet_bakiye`, `can_play_xpg`, `can_play_tvbet`, `rutbe`, `izin`, `remember_token`, `created_at`, `updated_at`, `kupon_yapabilir`, `canli_kupon_yapabilir`, `canli_futbol_oynayabilir`, `canli_basketbol_oynayabilir`) VALUES
(1, 'Yonetim', '$2y$10$gmSo7ecttwvMElP/yz40qesBPk8DYtpjiRxuL2jneCrIbvGKPDfp2', 0, '99895.00', '291.00', '0.00', 0, 0, 'patron', '@1@', NULL, '2017-12-31 21:00:00', '2020-07-28 07:03:21', 1, 1, 1, 1),
(2, 'Kasa', '$2y$10$HKjTYGCQImiajkOUWyRTSOLLCOaxiU4FYvMGxKNzbsIwvukAmsJ8u', 0, '23.00', '600.00', '0.00', 0, 0, 'patron', '@1@@2@', NULL, '2017-12-31 21:00:00', '2020-07-28 12:42:59', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xpgtransactions`
--

CREATE TABLE `xpgtransactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xpgtransactions`
--

INSERT INTO `xpgtransactions` (`id`, `transaction`, `type`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'A08C79C01336481B8B20CE779B870B8D', 'deposit', '340.00', 1, '2020-07-27 15:29:33', '2020-07-27 15:29:33'),
(2, '19303C80B1E5B188F4AB3BF22393BA7C', 'deposit', '500.00', 2, '2020-07-27 15:31:15', '2020-07-27 15:31:15'),
(3, 'F0D0FD4AD12B38B8FCCAEFAEC5A6192A', 'deposit', '45.00', 1, '2020-07-27 15:52:51', '2020-07-27 15:52:51'),
(4, '8BBF96C788AD3316EBE12ECAF1378ADC', 'deposit', '45.00', 2, '2020-07-27 15:54:46', '2020-07-27 15:54:46'),
(5, '07F3DD68711E12791896390CFF1531E2', 'deposit', '32.00', 2, '2020-07-27 15:57:50', '2020-07-27 15:57:50'),
(6, '78A9597D8DA2E362DB49C2ED7E6950EC', 'deposit', '10.00', 1, '2020-07-28 01:12:04', '2020-07-28 01:12:04'),
(7, 'B0B09288393CFDFF28B6E7FD202D74DA', 'Çekil', '44.00', 1, '2020-07-28 03:09:47', '2020-07-28 03:09:47'),
(8, '7A4B5C121D9C625141F690233E374B58', 'Çekil', '60.00', 1, '2020-07-28 07:03:21', '2020-07-28 07:03:21'),
(9, '5474D2A726896F560A2A3F3D39503D8D', 'Depozito', '23.00', 2, '2020-07-28 12:42:59', '2020-07-28 12:42:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakiye_raporus`
--
ALTER TABLE `bakiye_raporus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulten_engelles`
--
ALTER TABLE `bulten_engelles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulten_market_engelles`
--
ALTER TABLE `bulten_market_engelles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulten_oran_duzenle_coguls`
--
ALTER TABLE `bulten_oran_duzenle_coguls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canli_market_engelles`
--
ALTER TABLE `canli_market_engelles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canli_oran_duzenle_coguls`
--
ALTER TABLE `canli_oran_duzenle_coguls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duyurus`
--
ALTER TABLE `duyurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupons`
--
ALTER TABLE `kupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_ayaris`
--
ALTER TABLE `kupon_ayaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_odeme_takips`
--
ALTER TABLE `kupon_odeme_takips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oran_degisimis`
--
ALTER TABLE `oran_degisimis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `xpgtransactions`
--
ALTER TABLE `xpgtransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xpgtransactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakiye_raporus`
--
ALTER TABLE `bakiye_raporus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulten_engelles`
--
ALTER TABLE `bulten_engelles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulten_market_engelles`
--
ALTER TABLE `bulten_market_engelles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulten_oran_duzenle_coguls`
--
ALTER TABLE `bulten_oran_duzenle_coguls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canli_market_engelles`
--
ALTER TABLE `canli_market_engelles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canli_oran_duzenle_coguls`
--
ALTER TABLE `canli_oran_duzenle_coguls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duyurus`
--
ALTER TABLE `duyurus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kupons`
--
ALTER TABLE `kupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kupon_ayaris`
--
ALTER TABLE `kupon_ayaris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kupon_odeme_takips`
--
ALTER TABLE `kupon_odeme_takips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oran_degisimis`
--
ALTER TABLE `oran_degisimis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xpgtransactions`
--
ALTER TABLE `xpgtransactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `xpgtransactions`
--
ALTER TABLE `xpgtransactions`
  ADD CONSTRAINT `xpgtransactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
