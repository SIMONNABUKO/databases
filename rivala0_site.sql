-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2020 at 05:03 PM
-- Server version: 10.2.32-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rivala0_site`
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

--
-- Dumping data for table `bakiye_raporus`
--

INSERT INTO `bakiye_raporus` (`id`, `izin`, `alan_id`, `veren_id`, `miktar`, `alan_eski`, `veren_eski`, `alan_yeni`, `veren_yeni`, `created_at`, `updated_at`) VALUES
(1, '@1@', 2, 1, 10.00, 0.00, 99999.00, 0.00, 99989.00, '2020-05-28 22:22:55', '2020-05-28 22:22:55'),
(2, '@1@', 2, 1, 10.00, 0.00, 99989.00, 0.00, 99979.00, '2020-06-13 17:21:15', '2020-06-13 17:21:15'),
(3, '@1@@2@', 2, 1, 100.00, 0.00, 99979.00, 100.00, 99879.00, '2020-06-21 16:06:04', '2020-06-21 16:06:04'),
(4, '@1@', 2, 1, 10.00, 100.00, 99879.00, 100.00, 99869.00, '2020-06-28 21:59:54', '2020-06-28 21:59:54'),
(5, '@1@', 2, 1, 10.00, 100.00, 99869.00, 100.00, 99859.00, '2020-06-28 23:09:18', '2020-06-28 23:09:18'),
(6, '@1@', 2, 1, 10.00, 100.00, 99859.00, 100.00, 99849.00, '2020-06-29 15:56:10', '2020-06-29 15:56:10'),
(7, '@1@', 2, 1, 15.00, 100.00, 99849.00, 100.00, 99834.00, '2020-06-30 14:36:08', '2020-06-30 14:36:08'),
(8, '@1@', 2, 1, 10.00, 100.00, 99834.00, 100.00, 99824.00, '2020-07-01 10:59:46', '2020-07-01 10:59:46'),
(9, '@1@', 1, 2, 200.00, 100024.00, 100.00, 100024.00, 100.00, '2020-07-06 13:18:37', '2020-07-06 13:18:37'),
(10, '@1@', 1, 2, 10.00, 100034.00, 100.00, 100034.00, 100.00, '2020-07-06 13:18:49', '2020-07-06 13:18:49'),
(11, '@1@@2@', 2, 1, 1000.00, 100.00, 100034.00, 1100.00, 99034.00, '2020-07-07 19:51:55', '2020-07-07 19:51:55'),
(12, '@1@@2@', 2, 1, 10000.00, 1100.00, 99034.00, 11100.00, 89034.00, '2020-07-07 19:54:39', '2020-07-07 19:54:39'),
(13, '@1@@2@', 2, 1, 20000.00, 11100.00, 89034.00, 31100.00, 69034.00, '2020-07-07 20:29:09', '2020-07-07 20:29:09'),
(14, '@1@@2@', 2, 1, 100000.00, 31100.00, 69034.00, 131100.00, -30966.00, '2020-07-07 20:32:07', '2020-07-07 20:32:07'),
(15, '@1@', 1, 1, 100000.00, -30966.00, -30966.00, 69034.00, -130966.00, '2020-07-08 12:27:56', '2020-07-08 12:27:56'),
(16, '@1@@2@', 2, 2, 10.00, 131090.00, 131100.00, 131090.00, 131090.00, '2020-07-13 13:00:24', '2020-07-13 13:00:24'),
(17, '@1@@2@', 2, 2, 10.00, 131080.00, 131090.00, 131080.00, 131080.00, '2020-07-13 13:00:45', '2020-07-13 13:00:45'),
(18, '@1@@2@', 2, 2, 10.00, 131070.00, 131080.00, 131070.00, 131070.00, '2020-07-13 13:01:02', '2020-07-13 13:01:02');

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

--
-- Dumping data for table `kupons`
--

INSERT INTO `kupons` (`id`, `user_id`, `durum`, `misli`, `maclar`, `odenen`, `toplamOran`, `para_yatirildi`, `izin`, `created_at`, `updated_at`, `kontrol_etme`, `sistem`) VALUES
(1, 1, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":23:{s:5:\"label\";s:23:\"Guanacasteca - Coronado\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"3\";s:11:\"period_long\";s:8:\"2. Yarı\";s:8:\"duration\";s:2:\"90\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"2H\";s:12:\"period_short\";s:2:\"2Y\";s:7:\"elapsed\";s:4:\"3660\";}s:14:\"expires_offset\";s:4:\"7200\";s:9:\"odds_line\";s:1:\"0\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:15:\"event_code_live\";s:3:\"389\";s:7:\"expires\";s:5:\"22:00\";s:11:\"betradar_id\";s:8:\"22106479\";s:10:\"event_code\";s:4:\"479F\";s:7:\"markets\";a:38:{i:0;s:8:\"40477877\";i:1;s:8:\"40483126\";i:2;s:8:\"40483128\";i:3;s:8:\"40483127\";i:4;s:8:\"40483119\";i:5;s:8:\"40483129\";i:6;s:8:\"40483124\";i:7;s:8:\"40483121\";i:8;s:8:\"40483120\";i:9;s:8:\"40483123\";i:10;s:8:\"40483122\";i:11;s:8:\"40483117\";i:12;s:8:\"40531610\";i:13;s:8:\"40531611\";i:14;s:8:\"40531613\";i:15;s:8:\"40531615\";i:16;s:8:\"40531616\";i:17;s:8:\"40531617\";i:18;s:8:\"40531621\";i:19;s:8:\"40531624\";i:20;s:8:\"40531625\";i:21;s:8:\"40531626\";i:22;s:8:\"40531627\";i:23;s:8:\"40531628\";i:24;s:8:\"40531629\";i:25;s:8:\"40531631\";i:26;s:8:\"40531632\";i:27;s:8:\"40531639\";i:28;s:8:\"40531640\";i:29;s:8:\"40531863\";i:30;s:8:\"40531865\";i:31;s:8:\"40531867\";i:32;s:8:\"40531868\";i:33;s:8:\"40531869\";i:34;s:8:\"40533326\";i:35;s:8:\"40533328\";i:36;s:8:\"40533331\";i:37;s:8:\"40533332\";}s:11:\"live_status\";s:4:\"open\";s:4:\"date\";s:16:\"Perşembe, 28.05\";s:5:\"score\";O:8:\"stdClass\":4:{s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}s:2:\"2H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}}s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"2\";}s:9:\"score_str\";s:5:\"0 : 2\";}s:10:\"expires_ts\";s:10:\"1590696000\";s:8:\"label_en\";s:23:\"Guanacasteca - Coronado\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:11:\"category_id\";s:5:\"20185\";s:8:\"label_de\";s:23:\"Guanacasteca - Coronado\";s:3:\"key\";s:7:\"3041724\";s:3:\"gun\";s:9:\"Perşembe\";s:4:\"saat\";s:5:\"28.05\";s:9:\"home_name\";s:12:\"Guanacasteca\";s:9:\"away_name\";s:8:\"Coronado\";}s:6:\"market\";O:8:\"stdClass\":14:{s:11:\"period_type\";s:1:\"1\";s:11:\"label_short\";N;s:18:\"minimum_selections\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"live_status\";s:4:\"open\";s:6:\"period\";s:1:\"1\";s:4:\"type\";s:4:\"3WAY\";s:11:\"predictions\";a:3:{i:0;s:9:\"119300400\";i:1;s:9:\"119300401\";i:2;s:9:\"119300402\";}s:13:\"special_value\";N;s:6:\"detail\";N;s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:8:\"event_id\";s:7:\"3041724\";s:5:\"label\";s:10:\"3 Sonuçlu\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:4:\"type\";s:4:\"HOME\";s:11:\"label_short\";s:1:\"1\";s:9:\"market_id\";s:8:\"40477877\";s:5:\"label\";s:12:\"Guanacasteca\";s:4:\"odds\";s:5:\"50.00\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 50.00, 0, '@1@', '2020-05-28 22:22:55', '2020-05-28 22:22:55', 0, 'N;'),
(2, 1, 2, 10, 'a:4:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":24:{s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:5:\"score\";O:8:\"stdClass\":4:{s:9:\"score_str\";N;s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";N;s:2:\"2H\";N;}s:5:\"score\";N;s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";}s:5:\"label\";s:34:\"FC Bayern Munich - Monchengladbach\";s:4:\"date\";s:16:\"Cumartesi, 13.06\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:8:\"label_de\";s:37:\"FC Bayern München - Mönchengladbach\";s:10:\"event_code\";s:5:\"2578A\";s:11:\"betradar_id\";s:8:\"21971273\";s:15:\"event_code_live\";s:3:\"18C\";s:14:\"expires_offset\";s:4:\"7200\";s:9:\"odds_line\";s:1:\"0\";s:5:\"timer\";O:8:\"stdClass\":7:{s:12:\"period_short\";s:2:\"--\";s:11:\"period_long\";s:15:\"Başlatılmadı\";s:7:\"running\";s:1:\"0\";s:10:\"period_idx\";s:1:\"0\";s:8:\"duration\";N;s:9:\"period_id\";s:11:\"NOT_STARTED\";s:7:\"elapsed\";s:1:\"0\";}s:7:\"markets\";a:38:{i:0;s:8:\"40516992\";i:1;s:8:\"40772683\";i:2;s:8:\"40603349\";i:3;s:8:\"40603347\";i:4;s:8:\"40603351\";i:5;s:8:\"40603350\";i:6;s:8:\"40603348\";i:7;s:8:\"40516993\";i:8;s:8:\"40603337\";i:9;s:8:\"40603326\";i:10;s:8:\"40603352\";i:11;s:8:\"40516994\";i:12;s:8:\"40603333\";i:13;s:8:\"40603324\";i:14;s:8:\"40603344\";i:15;s:8:\"40603342\";i:16;s:8:\"40603331\";i:17;s:8:\"40603346\";i:18;s:8:\"40603343\";i:19;s:8:\"40603325\";i:20;s:8:\"40603334\";i:21;s:8:\"40603332\";i:22;s:8:\"40603340\";i:23;s:8:\"40603339\";i:24;s:8:\"40603338\";i:25;s:8:\"40603341\";i:26;s:8:\"40603355\";i:27;s:8:\"40603354\";i:28;s:8:\"40603353\";i:29;s:8:\"40603329\";i:30;s:8:\"40603328\";i:31;s:8:\"40603327\";i:32;s:8:\"40603330\";i:33;s:8:\"40603336\";i:34;s:8:\"40603335\";i:35;s:8:\"40823404\";i:36;s:8:\"40823405\";i:37;s:8:\"40603345\";}s:11:\"category_id\";s:4:\"1876\";s:7:\"expires\";s:5:\"19:30\";s:8:\"label_en\";s:34:\"FC Bayern Munich - Monchengladbach\";s:10:\"expires_ts\";s:10:\"1592065800\";s:11:\"live_status\";s:6:\"future\";s:4:\"diff\";s:3:\"615\";s:3:\"key\";s:7:\"3004691\";s:3:\"gun\";s:9:\"Cumartesi\";s:4:\"saat\";s:5:\"13.06\";s:9:\"home_name\";s:16:\"FC Bayern Munich\";s:9:\"away_name\";s:15:\"Monchengladbach\";}s:6:\"market\";O:8:\"stdClass\":14:{s:18:\"minimum_selections\";s:1:\"1\";s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:8:\"event_id\";s:7:\"3004691\";s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"live_status\";s:6:\"future\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:11:\"predictions\";a:3:{i:0;s:9:\"119403971\";i:1;s:9:\"119403972\";i:2;s:9:\"119403973\";}s:6:\"detail\";N;s:11:\"label_short\";N;s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;s:5:\"label\";s:10:\"3 Sonuçlu\";s:23:\"live_minimum_selections\";s:1:\"1\";}s:4:\"oran\";O:8:\"stdClass\":7:{s:11:\"label_short\";s:1:\"1\";s:4:\"odds\";s:4:\"1.50\";s:9:\"market_id\";s:8:\"40516992\";s:4:\"type\";s:4:\"HOME\";s:5:\"label\";s:16:\"FC Bayern Munich\";s:6:\"pre_id\";s:1:\"0\";s:11:\"market_deep\";O:8:\"stdClass\":14:{s:18:\"minimum_selections\";s:1:\"1\";s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:8:\"event_id\";s:7:\"3004691\";s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"live_status\";s:6:\"future\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:11:\"predictions\";a:3:{i:0;s:9:\"119403971\";i:1;s:9:\"119403972\";i:2;s:9:\"119403973\";}s:6:\"detail\";N;s:11:\"label_short\";N;s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;s:5:\"label\";s:10:\"3 Sonuçlu\";s:23:\"live_minimum_selections\";s:1:\"1\";}}s:4:\"live\";b:0;s:5:\"durum\";i:2;}i:1;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":24:{s:5:\"label\";s:40:\"FC Wacker Innsbruck - FC Blau-Weiss Linz\";s:15:\"event_code_live\";s:1:\"0\";s:14:\"expires_offset\";s:4:\"7200\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:9:\"odds_line\";s:1:\"0\";s:7:\"markets\";a:26:{i:0;s:8:\"40820130\";i:1;s:8:\"40821150\";i:2;s:8:\"40821153\";i:3;s:8:\"40821152\";i:4;s:8:\"40821151\";i:5;s:8:\"40821154\";i:6;s:8:\"40820131\";i:7;s:8:\"40821157\";i:8;s:8:\"40820132\";i:9;s:8:\"40821140\";i:10;s:8:\"40821149\";i:11;s:8:\"40821148\";i:12;s:8:\"40821135\";i:13;s:8:\"40821141\";i:14;s:8:\"40821144\";i:15;s:8:\"40821147\";i:16;s:8:\"40821146\";i:17;s:8:\"40821145\";i:18;s:8:\"40821155\";i:19;s:8:\"40821156\";i:20;s:8:\"40821136\";i:21;s:8:\"40821139\";i:22;s:8:\"40821138\";i:23;s:8:\"40821137\";i:24;s:8:\"40821143\";i:25;s:8:\"40821142\";}s:4:\"date\";s:12:\"Pazar, 14.06\";s:11:\"category_id\";s:4:\"1932\";s:8:\"label_de\";s:26:\"Wacker Innsbruck - BW Linz\";s:7:\"expires\";s:5:\"15:30\";s:8:\"label_en\";s:40:\"FC Wacker Innsbruck - FC Blau-Weiss Linz\";s:10:\"event_code\";s:5:\"36BDE\";s:10:\"expires_ts\";s:10:\"1592137800\";s:11:\"betradar_id\";s:8:\"22055253\";s:11:\"live_status\";s:6:\"future\";s:5:\"cards\";O:8:\"stdClass\":2:{s:3:\"red\";a:2:{i:0;N;i:1;N;}s:6:\"yellow\";a:2:{i:0;N;i:1;N;}}s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"0\";s:11:\"period_long\";s:15:\"Başlatılmadı\";s:8:\"duration\";N;s:7:\"running\";s:1:\"0\";s:9:\"period_id\";s:11:\"NOT_STARTED\";s:12:\"period_short\";s:2:\"--\";s:7:\"elapsed\";s:1:\"0\";}s:5:\"score\";O:8:\"stdClass\":4:{s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";N;s:2:\"2H\";N;}s:5:\"score\";N;s:9:\"score_str\";N;}s:4:\"diff\";s:5:\"72615\";s:3:\"key\";s:7:\"3027254\";s:3:\"gun\";s:5:\"Pazar\";s:4:\"saat\";s:5:\"14.06\";s:9:\"home_name\";s:19:\"FC Wacker Innsbruck\";s:9:\"away_name\";s:18:\"FC Blau-Weiss Linz\";}s:6:\"market\";O:8:\"stdClass\":14:{s:6:\"detail\";N;s:11:\"predictions\";a:3:{i:0;s:9:\"120255426\";i:1;s:9:\"120255427\";i:2;s:9:\"120255428\";}s:14:\"trading_status\";s:7:\"Unknown\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:8:\"event_id\";s:7:\"3027254\";s:11:\"live_status\";s:8:\"disabled\";s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:18:\"minimum_selections\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"label_short\";N;}s:4:\"oran\";O:8:\"stdClass\":7:{s:11:\"label_short\";s:1:\"1\";s:4:\"odds\";s:4:\"2.15\";s:9:\"market_id\";s:8:\"40820130\";s:4:\"type\";s:4:\"HOME\";s:5:\"label\";s:19:\"FC Wacker Innsbruck\";s:6:\"pre_id\";s:1:\"0\";s:11:\"market_deep\";O:8:\"stdClass\":14:{s:6:\"detail\";N;s:11:\"predictions\";a:3:{i:0;s:9:\"120255426\";i:1;s:9:\"120255427\";i:2;s:9:\"120255428\";}s:14:\"trading_status\";s:7:\"Unknown\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:8:\"event_id\";s:7:\"3027254\";s:11:\"live_status\";s:8:\"disabled\";s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:18:\"minimum_selections\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"label_short\";N;}}s:4:\"live\";b:0;s:5:\"durum\";i:2;}i:2;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":24:{s:7:\"expires\";s:5:\"21:25\";s:8:\"label_en\";s:23:\"SV Horn - SKU Amstetten\";s:11:\"category_id\";s:4:\"1932\";s:15:\"event_code_live\";s:3:\"2AF\";s:14:\"expires_offset\";s:4:\"7200\";s:9:\"odds_line\";s:1:\"0\";s:5:\"timer\";O:8:\"stdClass\":7:{s:9:\"period_id\";s:11:\"NOT_STARTED\";s:8:\"duration\";N;s:10:\"period_idx\";s:1:\"0\";s:7:\"elapsed\";s:1:\"0\";s:12:\"period_short\";s:2:\"--\";s:7:\"running\";s:1:\"0\";s:11:\"period_long\";s:15:\"Başlatılmadı\";}s:7:\"markets\";a:26:{i:0;s:8:\"40820118\";i:1;s:8:\"40821197\";i:2;s:8:\"40821200\";i:3;s:8:\"40821199\";i:4;s:8:\"40821198\";i:5;s:8:\"40821201\";i:6;s:8:\"40820119\";i:7;s:8:\"40821204\";i:8;s:8:\"40820120\";i:9;s:8:\"40821187\";i:10;s:8:\"40821196\";i:11;s:8:\"40821195\";i:12;s:8:\"40821182\";i:13;s:8:\"40821188\";i:14;s:8:\"40821191\";i:15;s:8:\"40821194\";i:16;s:8:\"40821193\";i:17;s:8:\"40821192\";i:18;s:8:\"40821202\";i:19;s:8:\"40821203\";i:20;s:8:\"40821183\";i:21;s:8:\"40821186\";i:22;s:8:\"40821185\";i:23;s:8:\"40821184\";i:24;s:8:\"40821190\";i:25;s:8:\"40821189\";}s:11:\"live_status\";s:6:\"future\";s:10:\"expires_ts\";s:10:\"1592072700\";s:8:\"label_de\";s:23:\"SV Horn - SKU Amstetten\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:4:\"date\";s:16:\"Cumartesi, 13.06\";s:5:\"score\";O:8:\"stdClass\":4:{s:9:\"score_str\";N;s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";N;s:2:\"2H\";N;}s:5:\"score\";N;s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";}s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:5:\"label\";s:23:\"SV Horn - SKU Amstetten\";s:11:\"betradar_id\";s:8:\"22055251\";s:10:\"event_code\";s:5:\"367AD\";s:4:\"diff\";s:4:\"7515\";s:3:\"key\";s:7:\"3027259\";s:3:\"gun\";s:9:\"Cumartesi\";s:4:\"saat\";s:5:\"13.06\";s:9:\"home_name\";s:7:\"SV Horn\";s:9:\"away_name\";s:13:\"SKU Amstetten\";}s:6:\"market\";O:8:\"stdClass\":14:{s:23:\"live_minimum_selections\";s:1:\"1\";s:13:\"special_value\";s:3:\"1.5\";s:11:\"period_type\";s:1:\"1\";s:5:\"label\";s:12:\"Üstü/Altı\";s:11:\"label_short\";N;s:6:\"detail\";N;s:6:\"period\";s:1:\"1\";s:4:\"type\";s:10:\"OVER_UNDER\";s:18:\"minimum_selections\";s:1:\"1\";s:11:\"predictions\";a:2:{i:0;s:9:\"120258450\";i:1;s:9:\"120258449\";}s:10:\"type_label\";s:12:\"Üstü/Altı\";s:14:\"trading_status\";s:4:\"Open\";s:8:\"event_id\";s:7:\"3027259\";s:11:\"live_status\";s:8:\"disabled\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:5:\"label\";s:6:\"Üstü\";s:4:\"odds\";s:4:\"1.12\";s:11:\"label_short\";s:1:\"+\";s:9:\"market_id\";s:8:\"40821200\";s:4:\"type\";s:4:\"OVER\";}s:4:\"live\";b:0;s:5:\"durum\";i:2;}i:3;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":24:{s:7:\"markets\";a:36:{i:0;s:8:\"40607803\";i:1;s:8:\"40607833\";i:2;s:8:\"40607831\";i:3;s:8:\"40607829\";i:4;s:8:\"40607828\";i:5;s:8:\"40607832\";i:6;s:8:\"40607830\";i:7;s:8:\"40607816\";i:8;s:8:\"40607818\";i:9;s:8:\"40607806\";i:10;s:8:\"40607838\";i:11;s:8:\"40607827\";i:12;s:8:\"40607813\";i:13;s:8:\"40607804\";i:14;s:8:\"40607825\";i:15;s:8:\"40607823\";i:16;s:8:\"40607811\";i:17;s:8:\"40607834\";i:18;s:8:\"40607824\";i:19;s:8:\"40607805\";i:20;s:8:\"40607814\";i:21;s:8:\"40607812\";i:22;s:8:\"40607822\";i:23;s:8:\"40607821\";i:24;s:8:\"40607820\";i:25;s:8:\"40607819\";i:26;s:8:\"40607837\";i:27;s:8:\"40607836\";i:28;s:8:\"40607835\";i:29;s:8:\"40607810\";i:30;s:8:\"40607809\";i:31;s:8:\"40607808\";i:32;s:8:\"40607807\";i:33;s:8:\"40607817\";i:34;s:8:\"40607815\";i:35;s:8:\"40607826\";}s:9:\"odds_line\";s:1:\"0\";s:5:\"timer\";O:8:\"stdClass\":7:{s:11:\"period_long\";s:15:\"Başlatılmadı\";s:7:\"running\";s:1:\"0\";s:12:\"period_short\";s:2:\"--\";s:7:\"elapsed\";s:1:\"0\";s:9:\"period_id\";s:11:\"NOT_STARTED\";s:8:\"duration\";N;s:10:\"period_idx\";s:1:\"0\";}s:15:\"event_code_live\";s:1:\"0\";s:14:\"expires_offset\";s:4:\"7200\";s:11:\"category_id\";s:4:\"1941\";s:8:\"label_en\";s:29:\"FC St. Pauli - Erzgebirge Aue\";s:7:\"expires\";s:5:\"14:30\";s:10:\"expires_ts\";s:10:\"1592134200\";s:11:\"live_status\";s:6:\"future\";s:5:\"label\";s:29:\"FC St. Pauli - Erzgebirge Aue\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:5:\"score\";O:8:\"stdClass\":4:{s:9:\"score_str\";N;s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";N;s:2:\"2H\";N;}s:5:\"score\";N;s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";}s:4:\"date\";s:12:\"Pazar, 14.06\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:8:\"label_de\";s:29:\"FC St. Pauli - Erzgebirge Aue\";s:10:\"event_code\";s:5:\"28AEF\";s:11:\"betradar_id\";s:8:\"21971263\";s:4:\"diff\";s:5:\"69015\";s:3:\"key\";s:7:\"3004703\";s:3:\"gun\";s:5:\"Pazar\";s:4:\"saat\";s:5:\"14.06\";s:9:\"home_name\";s:12:\"FC St. Pauli\";s:9:\"away_name\";s:14:\"Erzgebirge Aue\";}s:6:\"market\";O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:18:\"minimum_selections\";s:1:\"1\";s:11:\"predictions\";a:3:{i:0;s:9:\"119653138\";i:1;s:9:\"119653139\";i:2;s:9:\"119653140\";}s:14:\"trading_status\";s:7:\"Unknown\";s:8:\"event_id\";s:7:\"3004703\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:11:\"live_status\";s:6:\"future\";s:6:\"detail\";N;s:11:\"label_short\";N;s:23:\"live_minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;}s:4:\"oran\";O:8:\"stdClass\":7:{s:5:\"label\";s:12:\"FC St. Pauli\";s:4:\"odds\";s:4:\"1.95\";s:11:\"label_short\";s:1:\"1\";s:4:\"type\";s:4:\"HOME\";s:9:\"market_id\";s:8:\"40607803\";s:6:\"pre_id\";s:1:\"0\";s:11:\"market_deep\";O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"3WAY\";s:6:\"period\";s:1:\"1\";s:18:\"minimum_selections\";s:1:\"1\";s:11:\"predictions\";a:3:{i:0;s:9:\"119653138\";i:1;s:9:\"119653139\";i:2;s:9:\"119653140\";}s:14:\"trading_status\";s:7:\"Unknown\";s:8:\"event_id\";s:7:\"3004703\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:11:\"live_status\";s:6:\"future\";s:6:\"detail\";N;s:11:\"label_short\";N;s:23:\"live_minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;}}s:4:\"live\";b:0;s:5:\"durum\";i:2;}}', 10.00, 7.04, 0, '@1@', '2020-06-13 17:21:15', '2020-06-13 17:21:15', 0, 'N;'),
(3, 1, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":23:{s:5:\"label\";s:26:\"RCD Espanyol - Real Madrid\";s:11:\"category_id\";s:4:\"1945\";s:9:\"odds_line\";s:1:\"0\";s:10:\"expires_ts\";s:10:\"1593374400\";s:7:\"markets\";a:55:{i:0;s:8:\"41044820\";i:1;s:8:\"41044846\";i:2;s:8:\"41044850\";i:3;s:8:\"41044849\";i:4;s:8:\"41044847\";i:5;s:8:\"41044845\";i:6;s:8:\"41044833\";i:7;s:8:\"41044835\";i:8;s:8:\"41044822\";i:9;s:8:\"41044852\";i:10;s:8:\"41044844\";i:11;s:8:\"41044823\";i:12;s:8:\"41044840\";i:13;s:8:\"41044828\";i:14;s:8:\"41044851\";i:15;s:8:\"41044842\";i:16;s:8:\"41044830\";i:17;s:8:\"41044837\";i:18;s:8:\"41044836\";i:19;s:8:\"41044839\";i:20;s:8:\"41044838\";i:21;s:8:\"41044855\";i:22;s:8:\"41044825\";i:23;s:8:\"41044824\";i:24;s:8:\"41044827\";i:25;s:8:\"41044826\";i:26;s:8:\"41047787\";i:27;s:8:\"41203470\";i:28;s:8:\"41044834\";i:29;s:8:\"41238300\";i:30;s:8:\"41238304\";i:31;s:8:\"41238306\";i:32;s:8:\"41238308\";i:33;s:8:\"41238311\";i:34;s:8:\"41238312\";i:35;s:8:\"41238313\";i:36;s:8:\"41238315\";i:37;s:8:\"41238317\";i:38;s:8:\"41238319\";i:39;s:8:\"41238321\";i:40;s:8:\"41238325\";i:41;s:8:\"41238326\";i:42;s:8:\"41238327\";i:43;s:8:\"41238328\";i:44;s:8:\"41238334\";i:45;s:8:\"41238335\";i:46;s:8:\"41238337\";i:47;s:8:\"41238340\";i:48;s:8:\"41238341\";i:49;s:8:\"41238713\";i:50;s:8:\"41238780\";i:51;s:8:\"41238781\";i:52;s:8:\"41238797\";i:53;s:8:\"41238798\";i:54;s:8:\"41238799\";}s:5:\"score\";O:8:\"stdClass\":4:{s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:9:\"score_str\";s:5:\"0 : 1\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}s:2:\"2H\";N;}s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}}s:11:\"live_status\";s:4:\"open\";s:7:\"expires\";s:5:\"22:00\";s:8:\"label_de\";s:26:\"RCD Espanyol - Real Madrid\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"2\";s:11:\"period_long\";s:10:\"İlk Yarı\";s:8:\"duration\";N;s:7:\"running\";s:1:\"0\";s:9:\"period_id\";s:2:\"HT\";s:12:\"period_short\";s:3:\"İY\";s:7:\"elapsed\";s:4:\"2960\";}s:11:\"betradar_id\";s:8:\"22169327\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:4:\"date\";s:12:\"Pazar, 28.06\";s:15:\"event_code_live\";s:3:\"2DE\";s:10:\"event_code\";s:5:\"29ABE\";s:14:\"expires_offset\";s:4:\"7200\";s:8:\"label_en\";s:26:\"RCD Espanyol - Real Madrid\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:3:\"key\";s:7:\"3056706\";s:3:\"gun\";s:5:\"Pazar\";s:4:\"saat\";s:5:\"28.06\";s:9:\"home_name\";s:12:\"RCD Espanyol\";s:9:\"away_name\";s:11:\"Real Madrid\";}s:6:\"market\";O:8:\"stdClass\":14:{s:6:\"period\";s:1:\"1\";s:11:\"label_short\";N;s:11:\"predictions\";a:3:{i:0;s:9:\"120931207\";i:1;s:9:\"120931208\";i:2;s:9:\"120931209\";}s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"live_status\";s:4:\"open\";s:8:\"event_id\";s:7:\"3056706\";s:6:\"detail\";N;s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"period_type\";s:1:\"1\";s:13:\"special_value\";N;s:18:\"minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:4:\"type\";s:4:\"3WAY\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:11:\"label_short\";s:1:\"X\";s:9:\"market_id\";s:8:\"41044820\";s:4:\"odds\";s:4:\"6.20\";s:4:\"type\";s:4:\"DRAW\";s:5:\"label\";s:8:\"Berabere\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 6.20, 0, '@1@', '2020-06-28 21:59:54', '2020-06-28 21:59:54', 0, 'N;'),
(4, 1, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":23:{s:15:\"event_code_live\";s:3:\"47E\";s:4:\"date\";s:16:\"Pazartesi, 29.06\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:11:\"betradar_id\";s:8:\"22421215\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:8:\"label_en\";s:32:\"Fluminense FC RJ - Volta Redonda\";s:14:\"expires_offset\";s:4:\"7200\";s:10:\"event_code\";s:5:\"69CDE\";s:5:\"score\";O:8:\"stdClass\":4:{s:9:\"score_str\";s:5:\"0 : 1\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}s:2:\"2H\";N;}s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"1\";}}s:7:\"markets\";a:55:{i:0;s:8:\"41177664\";i:1;s:8:\"41177708\";i:2;s:8:\"41177706\";i:3;s:8:\"41177710\";i:4;s:8:\"41177709\";i:5;s:8:\"41177707\";i:6;s:8:\"41177665\";i:7;s:8:\"41177711\";i:8;s:8:\"41177666\";i:9;s:8:\"41177697\";i:10;s:8:\"41177696\";i:11;s:8:\"41177698\";i:12;s:8:\"41177702\";i:13;s:8:\"41177701\";i:14;s:8:\"41177704\";i:15;s:8:\"41177703\";i:16;s:8:\"41177712\";i:17;s:8:\"41177705\";i:18;s:8:\"41177861\";i:19;s:8:\"41239339\";i:20;s:8:\"41239340\";i:21;s:8:\"41239343\";i:22;s:8:\"41239344\";i:23;s:8:\"41239345\";i:24;s:8:\"41239346\";i:25;s:8:\"41239347\";i:26;s:8:\"41239348\";i:27;s:8:\"41239350\";i:28;s:8:\"41239351\";i:29;s:8:\"41239352\";i:30;s:8:\"41239353\";i:31;s:8:\"41239354\";i:32;s:8:\"41239355\";i:33;s:8:\"41239356\";i:34;s:8:\"41239357\";i:35;s:8:\"41239358\";i:36;s:8:\"41239359\";i:37;s:8:\"41239360\";i:38;s:8:\"41239361\";i:39;s:8:\"41239362\";i:40;s:8:\"41239363\";i:41;s:8:\"41239364\";i:42;s:8:\"41239365\";i:43;s:8:\"41239366\";i:44;s:8:\"41239367\";i:45;s:8:\"41239368\";i:46;s:8:\"41239419\";i:47;s:8:\"41239420\";i:48;s:8:\"41239421\";i:49;s:8:\"41239422\";i:50;s:8:\"41239423\";i:51;s:8:\"41239424\";i:52;s:8:\"41239425\";i:53;s:8:\"41239426\";i:54;s:8:\"41239435\";}s:10:\"expires_ts\";s:10:\"1593381600\";s:9:\"odds_line\";s:1:\"0\";s:5:\"label\";s:32:\"Fluminense FC RJ - Volta Redonda\";s:11:\"category_id\";s:5:\"15675\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"1\";s:11:\"period_long\";s:8:\"1. Yarı\";s:8:\"duration\";s:2:\"45\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"1H\";s:12:\"period_short\";s:2:\"1Y\";s:7:\"elapsed\";s:3:\"582\";}s:8:\"label_de\";s:32:\"Fluminense FC RJ - Volta Redonda\";s:7:\"expires\";s:5:\"00:00\";s:11:\"live_status\";s:4:\"open\";s:3:\"key\";s:7:\"3106370\";s:3:\"gun\";s:9:\"Pazartesi\";s:4:\"saat\";s:5:\"29.06\";s:9:\"home_name\";s:16:\"Fluminense FC RJ\";s:9:\"away_name\";s:13:\"Volta Redonda\";}s:6:\"market\";O:8:\"stdClass\":14:{s:11:\"period_type\";s:1:\"1\";s:6:\"detail\";N;s:23:\"live_minimum_selections\";s:1:\"1\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:18:\"minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:13:\"special_value\";N;s:4:\"type\";s:4:\"3WAY\";s:11:\"label_short\";N;s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"predictions\";a:3:{i:0;s:9:\"121324622\";i:1;s:9:\"121324623\";i:2;s:9:\"121324624\";}s:6:\"period\";s:1:\"1\";s:8:\"event_id\";s:7:\"3106370\";s:11:\"live_status\";s:4:\"open\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:4:\"type\";s:7:\"VISITOR\";s:5:\"label\";s:13:\"Volta Redonda\";s:4:\"odds\";s:4:\"3.00\";s:9:\"market_id\";s:8:\"41177664\";s:11:\"label_short\";s:1:\"2\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 3.00, 0, '@1@', '2020-06-28 23:09:18', '2020-06-28 23:09:18', 0, 'N;'),
(5, 1, 3, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":23:{s:14:\"expires_offset\";s:4:\"7200\";s:10:\"event_code\";s:5:\"23459\";s:5:\"cards\";O:8:\"stdClass\":2:{s:3:\"red\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:6:\"yellow\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}}s:8:\"label_en\";s:29:\"FC Khimki - Saturn Ramenskoye\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:4:\"date\";s:16:\"Pazartesi, 29.06\";s:11:\"betradar_id\";s:8:\"22498561\";s:15:\"event_code_live\";s:1:\"0\";s:7:\"expires\";s:5:\"16:00\";s:11:\"live_status\";s:4:\"open\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"2\";s:7:\"elapsed\";s:4:\"2700\";s:9:\"period_id\";s:2:\"HT\";s:11:\"period_long\";s:10:\"İlk Yarı\";s:12:\"period_short\";s:3:\"İY\";s:8:\"duration\";N;s:7:\"running\";s:1:\"0\";}s:8:\"label_de\";s:29:\"FC Khimki - Saturn Ramenskoye\";s:11:\"category_id\";s:4:\"2012\";s:5:\"label\";s:29:\"FC Khimki - Saturn Ramenskoye\";s:5:\"score\";O:8:\"stdClass\":4:{s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"2H\";N;s:2:\"1H\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"0\";}}s:9:\"score_str\";s:5:\"2 : 0\";s:5:\"score\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"0\";}}s:7:\"markets\";a:32:{i:0;s:8:\"41254069\";i:1;s:8:\"41254061\";i:2;s:8:\"41254060\";i:3;s:8:\"41254051\";i:4;s:8:\"41254050\";i:5;s:8:\"41254049\";i:6;s:8:\"41254048\";i:7;s:8:\"41254047\";i:8;s:8:\"41254046\";i:9;s:8:\"41254045\";i:10;s:8:\"41254044\";i:11;s:8:\"41254043\";i:12;s:8:\"41254042\";i:13;s:8:\"41254067\";i:14;s:8:\"41254041\";i:15;s:8:\"41254068\";i:16;s:8:\"41254066\";i:17;s:8:\"41254057\";i:18;s:8:\"41254056\";i:19;s:8:\"41254055\";i:20;s:8:\"41254054\";i:21;s:8:\"41254053\";i:22;s:8:\"41254052\";i:23;s:8:\"41254064\";i:24;s:8:\"41254065\";i:25;s:8:\"41254374\";i:26;s:8:\"41254379\";i:27;s:8:\"41254381\";i:28;s:8:\"41254790\";i:29;s:8:\"41254792\";i:30;s:8:\"41254794\";i:31;s:8:\"41254797\";}s:10:\"expires_ts\";s:10:\"1593439200\";s:9:\"odds_line\";s:1:\"0\";s:3:\"key\";s:7:\"3118886\";s:3:\"gun\";s:9:\"Pazartesi\";s:4:\"saat\";s:5:\"29.06\";s:9:\"home_name\";s:9:\"FC Khimki\";s:9:\"away_name\";s:17:\"Saturn Ramenskoye\";}s:6:\"market\";O:8:\"stdClass\":14:{s:6:\"period\";s:1:\"1\";s:11:\"label_short\";N;s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"predictions\";a:3:{i:0;s:9:\"121573181\";i:1;s:9:\"121573182\";i:2;s:9:\"121573183\";}s:11:\"live_status\";s:4:\"open\";s:8:\"event_id\";s:7:\"3118886\";s:6:\"detail\";N;s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"period_type\";s:1:\"1\";s:18:\"minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:13:\"special_value\";N;s:4:\"type\";s:9:\"3WAY_LIVE\";s:10:\"type_label\";s:10:\"3 Sonuçlu\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:11:\"label_short\";s:1:\"2\";s:9:\"market_id\";s:8:\"41254069\";s:4:\"odds\";s:5:\"50.00\";s:5:\"label\";s:17:\"Saturn Ramenskoye\";s:4:\"type\";s:7:\"VISITOR\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 1.00, 1, '@1@', '2020-06-29 15:56:10', '2020-07-06 13:18:49', 0, 'N;'),
(6, 1, 0, 15, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":23:{s:4:\"date\";s:12:\"Salı, 30.06\";s:11:\"category_id\";s:4:\"2000\";s:8:\"label_en\";s:38:\"Odra Opole - MKS Chojniczanka Chojnice\";s:10:\"expires_ts\";s:10:\"1593522000\";s:14:\"expires_offset\";s:4:\"7200\";s:10:\"event_code\";s:5:\"34CEF\";s:5:\"cards\";O:8:\"stdClass\":2:{s:3:\"red\";a:2:{i:0;N;i:1;N;}s:6:\"yellow\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}}s:5:\"label\";s:38:\"Odra Opole - MKS Chojniczanka Chojnice\";s:8:\"label_de\";s:21:\"Odra Opole - Chojnice\";s:9:\"odds_line\";s:1:\"0\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:7:\"markets\";a:52:{i:0;s:8:\"41218638\";i:1;s:8:\"41249982\";i:2;s:8:\"41249981\";i:3;s:8:\"41249984\";i:4;s:8:\"41249983\";i:5;s:8:\"41218639\";i:6;s:8:\"41249987\";i:7;s:8:\"41218640\";i:8;s:8:\"41249972\";i:9;s:8:\"41249980\";i:10;s:8:\"41249971\";i:11;s:8:\"41249973\";i:12;s:8:\"41249977\";i:13;s:8:\"41249976\";i:14;s:8:\"41249979\";i:15;s:8:\"41249978\";i:16;s:8:\"41249986\";i:17;s:8:\"41249985\";i:18;s:8:\"41249975\";i:19;s:8:\"41249974\";i:20;s:8:\"41285577\";i:21;s:8:\"41285578\";i:22;s:8:\"41285579\";i:23;s:8:\"41285580\";i:24;s:8:\"41285581\";i:25;s:8:\"41285582\";i:26;s:8:\"41285584\";i:27;s:8:\"41285585\";i:28;s:8:\"41285587\";i:29;s:8:\"41285589\";i:30;s:8:\"41285591\";i:31;s:8:\"41285593\";i:32;s:8:\"41285594\";i:33;s:8:\"41285595\";i:34;s:8:\"41285597\";i:35;s:8:\"41285599\";i:36;s:8:\"41285601\";i:37;s:8:\"41285603\";i:38;s:8:\"41285604\";i:39;s:8:\"41285605\";i:40;s:8:\"41285606\";i:41;s:8:\"41285607\";i:42;s:8:\"41285608\";i:43;s:8:\"41285609\";i:44;s:8:\"41285611\";i:45;s:8:\"41285612\";i:46;s:8:\"41285613\";i:47;s:8:\"41285614\";i:48;s:8:\"41285615\";i:49;s:8:\"41285616\";i:50;s:8:\"41285617\";i:51;s:8:\"41286893\";}s:11:\"betradar_id\";s:8:\"22086057\";s:15:\"event_code_live\";s:3:\"2CF\";s:11:\"live_status\";s:4:\"open\";s:5:\"score\";O:8:\"stdClass\":4:{s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:2:\"2H\";N;}s:9:\"score_str\";s:5:\"0 : 0\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";}s:7:\"expires\";s:5:\"15:00\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"1\";s:11:\"period_long\";s:8:\"1. Yarı\";s:8:\"duration\";s:2:\"45\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"1H\";s:12:\"period_short\";s:2:\"1Y\";s:7:\"elapsed\";s:4:\"2168\";}s:3:\"key\";s:7:\"3056801\";s:3:\"gun\";s:5:\"Salı\";s:4:\"saat\";s:5:\"30.06\";s:9:\"home_name\";s:10:\"Odra Opole\";s:9:\"away_name\";s:25:\"MKS Chojniczanka Chojnice\";}s:6:\"market\";O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"3WAY\";s:8:\"event_id\";s:7:\"3056801\";s:11:\"period_type\";s:1:\"1\";s:6:\"period\";s:1:\"1\";s:13:\"special_value\";N;s:14:\"trading_status\";s:7:\"Unknown\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"predictions\";a:3:{i:0;s:9:\"121459501\";i:1;s:9:\"121459502\";i:2;s:9:\"121459503\";}s:6:\"detail\";N;s:18:\"minimum_selections\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"live_status\";s:4:\"open\";s:11:\"label_short\";N;s:10:\"type_label\";s:10:\"3 Sonuçlu\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:5:\"label\";s:10:\"Odra Opole\";s:11:\"label_short\";s:1:\"1\";s:4:\"odds\";s:4:\"2.10\";s:4:\"type\";s:4:\"HOME\";s:9:\"market_id\";s:8:\"41218638\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 15.00, 2.10, 0, '@1@', '2020-06-30 14:36:08', '2020-07-06 13:18:41', 0, 'N;'),
(7, 1, 1, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":19:{s:11:\"betradar_id\";s:8:\"22100797\";s:8:\"label_en\";s:19:\"Dak Lak - Fico Ninh\";s:5:\"timer\";O:8:\"stdClass\":7:{s:10:\"period_idx\";s:1:\"3\";s:11:\"period_long\";s:8:\"2. Yarı\";s:8:\"duration\";s:2:\"90\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"2H\";s:12:\"period_short\";s:2:\"2Y\";s:7:\"elapsed\";s:4:\"4339\";}s:15:\"event_code_live\";s:3:\"19F\";s:11:\"live_status\";s:4:\"open\";s:11:\"category_id\";s:5:\"11173\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:10:\"event_code\";s:4:\"1259\";s:5:\"label\";s:19:\"Dak Lak - Fico Ninh\";s:8:\"label_de\";s:19:\"Dak Lak - Fico Ninh\";s:7:\"expires\";s:5:\"10:30\";s:9:\"odds_line\";s:1:\"0\";s:5:\"cards\";O:8:\"stdClass\":2:{s:3:\"red\";a:2:{i:0;N;i:1;N;}s:6:\"yellow\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"2\";}}s:14:\"expires_offset\";s:4:\"7200\";s:4:\"date\";s:17:\"Çarşamba, 01.07\";s:7:\"markets\";a:37:{i:0;s:8:\"41268872\";i:1;s:8:\"41268919\";i:2;s:8:\"41268918\";i:3;s:8:\"41268917\";i:4;s:8:\"41268873\";i:5;s:8:\"41268920\";i:6;s:8:\"41268874\";i:7;s:8:\"41268911\";i:8;s:8:\"41268914\";i:9;s:8:\"41268913\";i:10;s:8:\"41268912\";i:11;s:8:\"41268910\";i:12;s:8:\"41268909\";i:13;s:8:\"41314413\";i:14;s:8:\"41314415\";i:15;s:8:\"41314417\";i:16;s:8:\"41314418\";i:17;s:8:\"41314419\";i:18;s:8:\"41314421\";i:19;s:8:\"41314422\";i:20;s:8:\"41314424\";i:21;s:8:\"41314425\";i:22;s:8:\"41314426\";i:23;s:8:\"41314430\";i:24;s:8:\"41314432\";i:25;s:8:\"41314435\";i:26;s:8:\"41314436\";i:27;s:8:\"41314437\";i:28;s:8:\"41314438\";i:29;s:8:\"41314476\";i:30;s:8:\"41314992\";i:31;s:8:\"41314994\";i:32;s:8:\"41314995\";i:33;s:8:\"41315166\";i:34;s:8:\"41315167\";i:35;s:8:\"41315171\";i:36;s:8:\"41315172\";}s:5:\"score\";O:8:\"stdClass\":4:{s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"1H\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"0\";}s:2:\"2H\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}}s:9:\"score_str\";s:5:\"1 : 0\";s:5:\"score\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"0\";}}s:10:\"expires_ts\";s:10:\"1593592200\";s:8:\"event_id\";s:7:\"3056336\";}s:6:\"market\";O:8:\"stdClass\":14:{s:23:\"live_minimum_selections\";s:1:\"1\";s:11:\"live_status\";s:4:\"open\";s:6:\"detail\";N;s:11:\"label_short\";N;s:14:\"trading_status\";s:7:\"Unknown\";s:11:\"predictions\";a:3:{i:0;s:9:\"121615632\";i:1;s:9:\"121615633\";i:2;s:9:\"121615634\";}s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:6:\"period\";s:1:\"1\";s:4:\"type\";s:4:\"3WAY\";s:11:\"period_type\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:18:\"minimum_selections\";s:1:\"1\";s:8:\"event_id\";s:7:\"3056336\";s:13:\"special_value\";N;}s:4:\"oran\";O:8:\"stdClass\":6:{s:4:\"type\";s:7:\"VISITOR\";s:11:\"label_short\";s:1:\"2\";s:5:\"label\";s:9:\"Fico Ninh\";s:9:\"market_id\";s:8:\"41268872\";s:4:\"odds\";s:5:\"20.00\";s:7:\"degisim\";s:5:\"sabit\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 20.00, 1, '@1@', '2020-07-01 10:59:46', '2020-07-06 13:18:37', 0, 'N;'),
(8, 2, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":19:{s:15:\"event_code_live\";s:3:\"16C\";s:8:\"label_de\";s:27:\"Kasimpasa - Caykur Rizespor\";s:8:\"label_en\";s:27:\"Kasimpasa - Caykur Rizespor\";s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:10:\"expires_ts\";s:10:\"1594654200\";s:4:\"date\";s:16:\"Pazartesi, 13.07\";s:11:\"live_status\";s:6:\"future\";s:5:\"label\";s:27:\"Kasimpasa - Caykur Rizespor\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:14:\"expires_offset\";s:4:\"7200\";s:11:\"category_id\";s:4:\"1975\";s:9:\"odds_line\";s:1:\"0\";s:7:\"expires\";s:5:\"18:30\";s:5:\"score\";O:8:\"stdClass\":4:{s:9:\"score_str\";N;s:10:\"score_type\";s:15:\"SOCCER/STANDARD\";s:7:\"periods\";O:8:\"stdClass\":2:{s:2:\"2H\";N;s:2:\"1H\";N;}s:5:\"score\";N;}s:5:\"timer\";O:8:\"stdClass\":7:{s:7:\"elapsed\";s:1:\"0\";s:9:\"period_id\";s:11:\"NOT_STARTED\";s:8:\"duration\";N;s:10:\"period_idx\";s:1:\"0\";s:7:\"running\";s:1:\"0\";s:11:\"period_long\";s:15:\"Başlatılmadı\";s:12:\"period_short\";s:2:\"--\";}s:11:\"betradar_id\";s:8:\"22166191\";s:10:\"event_code\";s:5:\"349EF\";s:7:\"markets\";a:36:{i:0;s:8:\"41443159\";i:1;s:8:\"41444818\";i:2;s:8:\"41444822\";i:3;s:8:\"41444820\";i:4;s:8:\"41444819\";i:5;s:8:\"41444823\";i:6;s:8:\"41444821\";i:7;s:8:\"41443160\";i:8;s:8:\"41444810\";i:9;s:8:\"41444797\";i:10;s:8:\"41444828\";i:11;s:8:\"41443161\";i:12;s:8:\"41444805\";i:13;s:8:\"41444798\";i:14;s:8:\"41444816\";i:15;s:8:\"41444815\";i:16;s:8:\"41444804\";i:17;s:8:\"41444824\";i:18;s:8:\"41444833\";i:19;s:8:\"41444799\";i:20;s:8:\"41444807\";i:21;s:8:\"41444806\";i:22;s:8:\"41444811\";i:23;s:8:\"41444814\";i:24;s:8:\"41444813\";i:25;s:8:\"41444812\";i:26;s:8:\"41444825\";i:27;s:8:\"41444827\";i:28;s:8:\"41444826\";i:29;s:8:\"41444800\";i:30;s:8:\"41444803\";i:31;s:8:\"41444802\";i:32;s:8:\"41444801\";i:33;s:8:\"41444809\";i:34;s:8:\"41444808\";i:35;s:8:\"41444817\";}s:4:\"diff\";s:5:\"12594\";}s:6:\"market\";O:8:\"stdClass\":14:{s:18:\"minimum_selections\";s:1:\"1\";s:11:\"predictions\";a:3:{i:0;s:9:\"122134506\";i:1;s:9:\"122134507\";i:2;s:9:\"122134508\";}s:13:\"special_value\";N;s:6:\"period\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:5:\"label\";s:10:\"3 Sonuçlu\";s:11:\"live_status\";s:6:\"future\";s:11:\"label_short\";N;s:10:\"type_label\";s:10:\"3 Sonuçlu\";s:4:\"type\";s:4:\"3WAY\";s:6:\"detail\";N;s:11:\"period_type\";s:1:\"1\";s:8:\"event_id\";s:7:\"3082160\";s:14:\"trading_status\";s:7:\"Unknown\";}s:4:\"oran\";O:8:\"stdClass\":5:{s:4:\"odds\";s:4:\"3.80\";s:4:\"type\";s:4:\"DRAW\";s:5:\"label\";s:8:\"Berabere\";s:9:\"market_id\";s:8:\"41443159\";s:11:\"label_short\";s:1:\"X\";}s:4:\"live\";b:0;s:5:\"durum\";i:2;}}', 10.00, 3.80, 0, '@1@@2@', '2020-07-13 13:00:24', '2020-07-13 13:00:24', 0, 'N;'),
(9, 2, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":19:{s:15:\"event_code_live\";s:2:\"3D\";s:8:\"label_de\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:8:\"label_en\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:9:\"odds_line\";s:1:\"0\";s:7:\"expires\";s:5:\"14:00\";s:5:\"timer\";O:8:\"stdClass\":8:{s:10:\"period_idx\";s:1:\"1\";s:11:\"period_long\";s:10:\"1. Çeyrek\";s:8:\"duration\";s:2:\"10\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"1Q\";s:12:\"period_short\";s:3:\"1Ç\";s:7:\"elapsed\";s:2:\"60\";s:11:\"last_update\";s:13:\"1594641632448\";}s:11:\"betradar_id\";s:8:\"22462761\";s:10:\"event_code\";s:4:\"379D\";s:5:\"score\";O:8:\"stdClass\":5:{s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"periods\";O:8:\"stdClass\":5:{s:2:\"4Q\";N;s:2:\"2Q\";N;s:2:\"1Q\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:2:\"3Q\";N;s:2:\"OT\";N;}s:10:\"score_type\";s:20:\"BASKETBALL/10_MIN_OT\";s:4:\"info\";O:8:\"stdClass\":1:{s:14:\"time_in_period\";s:5:\"11:53\";}s:9:\"score_str\";s:5:\"0 : 0\";}s:7:\"markets\";a:49:{i:0;s:8:\"41606822\";i:1;s:8:\"41606831\";i:2;s:8:\"41606835\";i:3;s:8:\"41606839\";i:4;s:8:\"41619018\";i:5;s:8:\"41606834\";i:6;s:8:\"41606832\";i:7;s:8:\"41606833\";i:8;s:8:\"41618099\";i:9;s:8:\"41615839\";i:10;s:8:\"41620147\";i:11;s:8:\"41620056\";i:12;s:8:\"41606828\";i:13;s:8:\"41615440\";i:14;s:8:\"41606825\";i:15;s:8:\"41607284\";i:16;s:8:\"41617733\";i:17;s:8:\"41606823\";i:18;s:8:\"41620776\";i:19;s:8:\"41620777\";i:20;s:8:\"41620778\";i:21;s:8:\"41620779\";i:22;s:8:\"41620780\";i:23;s:8:\"41620781\";i:24;s:8:\"41620782\";i:25;s:8:\"41620783\";i:26;s:8:\"41620784\";i:27;s:8:\"41620785\";i:28;s:8:\"41620786\";i:29;s:8:\"41620787\";i:30;s:8:\"41620788\";i:31;s:8:\"41620789\";i:32;s:8:\"41620790\";i:33;s:8:\"41620791\";i:34;s:8:\"41620792\";i:35;s:8:\"41620793\";i:36;s:8:\"41620794\";i:37;s:8:\"41620795\";i:38;s:8:\"41620796\";i:39;s:8:\"41620797\";i:40;s:8:\"41620798\";i:41;s:8:\"41620799\";i:42;s:8:\"41620800\";i:43;s:8:\"41620801\";i:44;s:8:\"41620802\";i:45;s:8:\"41620803\";i:46;s:8:\"41620804\";i:47;s:8:\"41620805\";i:48;s:8:\"41620806\";}s:4:\"date\";s:16:\"Pazartesi, 13.07\";s:10:\"expires_ts\";s:10:\"1594641600\";s:10:\"score_type\";s:20:\"BASKETBALL/10_MIN_OT\";s:5:\"label\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:11:\"live_status\";s:4:\"open\";s:14:\"expires_offset\";s:4:\"7200\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:11:\"category_id\";s:4:\"6340\";s:8:\"event_id\";s:7:\"3113019\";}s:6:\"market\";O:8:\"stdClass\":14:{s:18:\"minimum_selections\";s:1:\"1\";s:6:\"period\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:13:\"special_value\";N;s:6:\"detail\";N;s:11:\"label_short\";N;s:4:\"type\";s:4:\"2WAY\";s:5:\"label\";s:10:\"2 Sonuçlu\";s:11:\"live_status\";s:4:\"open\";s:10:\"type_label\";s:10:\"2 Sonuçlu\";s:11:\"period_type\";s:2:\"10\";s:8:\"event_id\";s:7:\"3113019\";s:11:\"predictions\";a:2:{i:0;s:9:\"122668620\";i:1;s:9:\"122668621\";}s:7:\"oranlar\";a:2:{i:0;O:8:\"stdClass\":9:{s:11:\"sonderwette\";N;s:9:\"activated\";s:1:\"1\";s:11:\"probability\";s:12:\"0.8065740883\";s:4:\"odds\";s:4:\"1.10\";s:11:\"label_short\";s:1:\"1\";s:5:\"label\";s:14:\"Qingdao Eagles\";s:4:\"type\";s:4:\"HOME\";s:9:\"market_id\";s:8:\"41620801\";s:7:\"degisim\";s:5:\"sabit\";}i:1;O:8:\"stdClass\":9:{s:11:\"sonderwette\";N;s:9:\"activated\";s:1:\"1\";s:11:\"probability\";s:12:\"0.1934259117\";s:4:\"odds\";s:4:\"3.80\";s:11:\"label_short\";s:1:\"2\";s:5:\"label\";s:15:\"Jiangsu Dragons\";s:4:\"type\";s:7:\"VISITOR\";s:9:\"market_id\";s:8:\"41620801\";s:7:\"degisim\";s:5:\"sabit\";}}}s:4:\"oran\";O:8:\"stdClass\":9:{s:11:\"sonderwette\";N;s:9:\"activated\";s:1:\"1\";s:11:\"probability\";s:12:\"0.1934259117\";s:4:\"odds\";s:4:\"3.80\";s:11:\"label_short\";s:1:\"2\";s:5:\"label\";s:15:\"Jiangsu Dragons\";s:4:\"type\";s:7:\"VISITOR\";s:9:\"market_id\";s:8:\"41620801\";s:7:\"degisim\";s:5:\"sabit\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 3.80, 0, '@1@@2@', '2020-07-13 13:00:45', '2020-07-13 13:00:45', 0, 'N;'),
(10, 2, 2, 10, 'a:1:{i:0;O:8:\"stdClass\":5:{s:3:\"mac\";O:8:\"stdClass\":19:{s:15:\"event_code_live\";s:2:\"3D\";s:8:\"label_de\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:8:\"label_en\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:9:\"odds_line\";s:1:\"0\";s:7:\"expires\";s:5:\"14:00\";s:5:\"timer\";O:8:\"stdClass\":8:{s:10:\"period_idx\";s:1:\"1\";s:11:\"period_long\";s:10:\"1. Çeyrek\";s:8:\"duration\";s:2:\"10\";s:7:\"running\";s:1:\"1\";s:9:\"period_id\";s:2:\"1Q\";s:12:\"period_short\";s:3:\"1Ç\";s:7:\"elapsed\";s:2:\"70\";s:11:\"last_update\";s:13:\"1594641632448\";}s:11:\"betradar_id\";s:8:\"22462761\";s:10:\"event_code\";s:4:\"379D\";s:5:\"score\";O:8:\"stdClass\":5:{s:5:\"score\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:7:\"periods\";O:8:\"stdClass\":5:{s:2:\"4Q\";N;s:2:\"2Q\";N;s:2:\"1Q\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:2:\"3Q\";N;s:2:\"OT\";N;}s:10:\"score_type\";s:20:\"BASKETBALL/10_MIN_OT\";s:4:\"info\";O:8:\"stdClass\":1:{s:14:\"time_in_period\";s:5:\"11:43\";}s:9:\"score_str\";s:5:\"0 : 0\";}s:7:\"markets\";a:53:{i:0;s:8:\"41606822\";i:1;s:8:\"41606831\";i:2;s:8:\"41606835\";i:3;s:8:\"41606839\";i:4;s:8:\"41619018\";i:5;s:8:\"41606834\";i:6;s:8:\"41606832\";i:7;s:8:\"41606833\";i:8;s:8:\"41618099\";i:9;s:8:\"41615839\";i:10;s:8:\"41620147\";i:11;s:8:\"41620056\";i:12;s:8:\"41606828\";i:13;s:8:\"41615440\";i:14;s:8:\"41606825\";i:15;s:8:\"41607284\";i:16;s:8:\"41617733\";i:17;s:8:\"41606823\";i:18;s:8:\"41620776\";i:19;s:8:\"41620777\";i:20;s:8:\"41620778\";i:21;s:8:\"41620779\";i:22;s:8:\"41620780\";i:23;s:8:\"41620781\";i:24;s:8:\"41620782\";i:25;s:8:\"41620783\";i:26;s:8:\"41620784\";i:27;s:8:\"41620785\";i:28;s:8:\"41620786\";i:29;s:8:\"41620787\";i:30;s:8:\"41620788\";i:31;s:8:\"41620789\";i:32;s:8:\"41620790\";i:33;s:8:\"41620791\";i:34;s:8:\"41620792\";i:35;s:8:\"41620793\";i:36;s:8:\"41620794\";i:37;s:8:\"41620795\";i:38;s:8:\"41620796\";i:39;s:8:\"41620797\";i:40;s:8:\"41620798\";i:41;s:8:\"41620799\";i:42;s:8:\"41620800\";i:43;s:8:\"41620801\";i:44;s:8:\"41620802\";i:45;s:8:\"41620803\";i:46;s:8:\"41620804\";i:47;s:8:\"41620805\";i:48;s:8:\"41620806\";i:49;s:8:\"41620824\";i:50;s:8:\"41620825\";i:51;s:8:\"41620826\";i:52;s:8:\"41620827\";}s:4:\"date\";s:16:\"Pazartesi, 13.07\";s:10:\"expires_ts\";s:10:\"1594641600\";s:10:\"score_type\";s:20:\"BASKETBALL/10_MIN_OT\";s:5:\"label\";s:32:\"Qingdao Eagles - Jiangsu Dragons\";s:11:\"live_status\";s:4:\"open\";s:14:\"expires_offset\";s:4:\"7200\";s:5:\"cards\";O:8:\"stdClass\":2:{s:6:\"yellow\";a:2:{i:0;N;i:1;N;}s:3:\"red\";a:2:{i:0;N;i:1;N;}}s:11:\"category_id\";s:4:\"6340\";s:8:\"event_id\";s:7:\"3113019\";}s:6:\"market\";O:8:\"stdClass\":13:{s:18:\"minimum_selections\";s:1:\"1\";s:6:\"period\";s:1:\"1\";s:23:\"live_minimum_selections\";s:1:\"1\";s:13:\"special_value\";s:4:\"93.5\";s:6:\"detail\";N;s:11:\"label_short\";s:5:\"Guest\";s:4:\"type\";s:21:\"TOTALS_AWAY_TEAM_LIVE\";s:5:\"label\";s:18:\"Konuk Üstü/Altı\";s:11:\"live_status\";s:4:\"open\";s:10:\"type_label\";s:18:\"Konuk Üstü/Altı\";s:11:\"period_type\";s:2:\"10\";s:8:\"event_id\";s:7:\"3113019\";s:11:\"predictions\";a:2:{i:0;s:9:\"122668569\";i:1;s:9:\"122668568\";}}s:4:\"oran\";O:8:\"stdClass\":9:{s:11:\"sonderwette\";N;s:9:\"activated\";s:1:\"1\";s:11:\"probability\";s:12:\"0.4808070709\";s:4:\"odds\";s:4:\"1.60\";s:11:\"label_short\";s:1:\"+\";s:5:\"label\";s:6:\"Üstü\";s:4:\"type\";s:4:\"OVER\";s:9:\"market_id\";s:8:\"41620776\";s:7:\"degisim\";s:5:\"sabit\";}s:4:\"live\";b:1;s:5:\"durum\";i:2;}}', 10.00, 1.60, 0, '@1@@2@', '2020-07-13 13:01:02', '2020-07-13 13:01:02', 0, 'N;');

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

--
-- Dumping data for table `kupon_ayaris`
--

INSERT INTO `kupon_ayaris` (`id`, `user_id`, `max_bahis_sayisi`, `min_bahis_miktari`, `max_bahis_miktari`, `max_bahis_miktari_ayni`, `max_oran`, `min_tekli_oran`, `canli_onay_suresi`, `canli_futbol_ms_son`, `canli_futbol_iy_son`, `canli_futbol`, `canli_basket`, `canli_oynat`, `normal_oynat`, `canli_normal_karisik`, `created_at`, `updated_at`, `max_kazanc`, `min_kombine_oran`, `sistem_kupon`) VALUES
(1, 1, 12, 1, 10000, 10000, 300.00, 1.05, 15, 88, 43, 1, 1, 1, 1, 1, '2020-07-06 13:45:02', '2020-07-06 13:45:02', 12000, 1.50, 1);

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
(21, '2019_06_14_170723_create_kupon_odeme_takips_table', 1);

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

INSERT INTO `users` (`id`, `username`, `password`, `pasif`, `bakiye`, `rutbe`, `izin`, `remember_token`, `created_at`, `updated_at`, `kupon_yapabilir`, `canli_kupon_yapabilir`, `canli_futbol_oynayabilir`, `canli_basketbol_oynayabilir`) VALUES
(1, 'Yonetim', '$2y$10$qetgpvebzwOyEDT61FD9Den7ZmNW6r3dchfSJt3xrp5SgwHlhYTKO', 0, -130966.00, 'patron', '@1@', 'o635u3pXZIiN8LvT9VcOm7LwOgWVRezDZIyuyZvN4AvQONqcmJcDdPGwbQ7D', '2017-12-31 23:00:00', '2020-07-08 12:27:56', 1, 1, 1, 1),
(2, 'Kasa', '$2y$10$rMdocV1op23WO/UF9s3GQupDCboVQ961zmI.QvBq6/3ITLvbEy0f.', 0, 131070.00, 'patron', '@1@@2@', 'qrDmOqbjOOmrXrO6NcZDWpYJDKsFNHfI1txCtNIf3fAyIRVNcRMX1WfkzVc6', '2017-12-31 23:00:00', '2020-07-13 13:01:02', 1, 1, 1, 1),
(3, 'Deneme', '$2y$10$dl0NZR5RkbeynpKWlmG6i.tzyGiWhjrIM8UXSznkqk/QxPsS3WoLq', 1, 0.00, 'admin', '@1@@3@', 'lfDmhYGh44z2HjQBwSRYTHHqe0Rrqn2QahIcJYnOiQAFcpuuIdPGcPj01bUB', '2020-06-28 22:41:05', '2020-07-08 13:29:45', 1, 1, 1, 1);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakiye_raporus`
--
ALTER TABLE `bakiye_raporus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kupon_ayaris`
--
ALTER TABLE `kupon_ayaris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oran_degisimis`
--
ALTER TABLE `oran_degisimis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
