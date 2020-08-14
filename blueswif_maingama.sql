-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2020 at 09:42 PM
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
-- Database: `blueswif_maingama`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'info@royalbanknewyork.com', NULL, '$2y$10$5hAFcOUZvXbQhzsQrW/hZ.JgsHsFaRp9l.wLP9a0HNljJJ..kRFUy', 'hXRkrzb41MHDTJfh2bX3FqUrPfMPCvaed4GTR7NYTxr1pirpRWrYhUsHFBMI', '2018-11-12 18:00:00', '2020-08-01 20:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `max_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `percent_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `p_time`, `min_amount`, `max_amount`, `fixed_charge`, `percent_charge`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Soft Bank', '1-3 Days', 10.00, 1000000.00, 5.00, 1.00, '2019-11-04 12:05:56', '2020-04-22 07:59:07', 1),
(2, 'Bank Transfer', '1 - 3 days', 10.00, 1000000.00, 5.00, 1.00, '2020-04-22 07:40:12', '2020-04-22 07:52:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Our website for e-services has been launched.', 'kBh397P0mEhkUpatZYoviDFKrMhr8mAxVdSoBsGN.jpeg', 'Hello dear esteemed customers. We hope this finds you well. As Blue Swift Louisiana Bank, we are happy to announce to you that we have officially launched our website. You are all invited to join our internet baking family. Enjoy!', 1, '2020-03-21 19:00:36', '2020-03-21 19:00:36'),
(4, 'New support feature added!', 'vZzUaANTw3ve1q54987Bj8VeVLLWlAyvXZn5GX98.png', 'Another support feature launched. You can now open a support ticket right from your account. You must be logged then under your account, go to your profile and you will find the support link there. You can report, raise a complaint and send feedback from there. Our team will always get back you the soonest possible.', 1, '2020-03-21 19:14:28', '2020-03-21 19:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `name`, `icon`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Address', '3340 Severn Ave, Metairie, LA 70002, United States', 'fa fa-map-marker', '2020-02-17 21:25:33', '2020-03-20 23:38:22', 0),
(2, 'Phone', '+15852096465', 'fa fa-phone', '2020-02-17 21:26:53', '2020-02-17 21:26:53', 0),
(3, 'Email', 'info@blueswiflouisiana.com', 'fa fa-envelope', '2020-02-17 21:27:47', '2020-03-20 23:22:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `continent`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(2, 'Albania', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(3, 'Algeria', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(4, 'American Samoa', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(5, 'Andorra', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(6, 'Angola', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(7, 'Anguilla', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(8, 'Antarctica', 'Antarctica', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(9, 'Antigua and Barbuda', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(10, 'Argentina', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(11, 'Armenia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(12, 'Aruba', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(13, 'Australia', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(14, 'Austria', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(15, 'Azerbaijan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(16, 'Bahamas', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(17, 'Bahrain', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(18, 'Bangladesh', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(19, 'Barbados', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(20, 'Belarus', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(21, 'Belgium', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(22, 'Belize', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(23, 'Benin', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(24, 'Bermuda', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(25, 'Bhutan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(26, 'Bolivia', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(27, 'Bosnia and Herzegovina', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(28, 'Botswana', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(29, 'Bouvet Island', 'Antarctica', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(30, 'Brazil', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(31, 'British Indian Ocean Territory', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(32, 'Brunei', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(33, 'Bulgaria', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(34, 'Burkina Faso', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(35, 'Burundi', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(36, 'Cambodia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(37, 'Cameroon', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(38, 'Canada', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(39, 'Cape Verde', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(40, 'Cayman Islands', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(41, 'Central African Republic', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(42, 'Chad', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(43, 'Chile', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(44, 'China', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(45, 'Christmas Island', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(46, 'Cocos (Keeling) Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(47, 'Colombia', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(48, 'Comoros', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(49, 'Congo', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(50, 'Cook Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(51, 'Costa Rica', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(52, 'Croatia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(53, 'Cuba', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(54, 'Cyprus', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(55, 'Czech Republic', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(56, 'Denmark', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(57, 'Djibouti', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(58, 'Dominica', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(59, 'Dominican Republic', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(60, 'East Timor', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(61, 'Ecuador', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(62, 'Egypt', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(63, 'El Salvador', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(64, 'England', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(65, 'Equatorial Guinea', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(66, 'Eritrea', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(67, 'Estonia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(68, 'Ethiopia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(69, 'Falkland Islands', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(70, 'Faroe Islands', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(71, 'Fiji Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(72, 'Finland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(73, 'France', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(74, 'French Guiana', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(75, 'French Polynesia', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(76, 'French Southern territories', 'Antarctica', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(77, 'Gabon', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(78, 'Gambia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(79, 'Georgia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(80, 'Germany', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(81, 'Ghana', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(82, 'Gibraltar', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(83, 'Greece', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(84, 'Greenland', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(85, 'Grenada', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(86, 'Guadeloupe', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(87, 'Guam', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(88, 'Guatemala', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(89, 'Guinea', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(90, 'Guinea-Bissau', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(91, 'Guyana', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(92, 'Haiti', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(93, 'Heard Island and McDonald Islands', 'Antarctica', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(94, 'Holy See (Vatican City State)', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(95, 'Honduras', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(96, 'Hong Kong', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(97, 'Hungary', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(98, 'Iceland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(99, 'India', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(100, 'Indonesia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(101, 'Iran', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(102, 'Iraq', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(103, 'Ireland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(104, 'Israel', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(105, 'Italy', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(106, 'Ivory Coast', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(107, 'Jamaica', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(108, 'Japan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(109, 'Jordan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(110, 'Kazakhstan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(111, 'Kenya', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(112, 'Kiribati', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(113, 'Kuwait', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(114, 'Kyrgyzstan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(115, 'Laos', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(116, 'Latvia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(117, 'Lebanon', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(118, 'Lesotho', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(119, 'Liberia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(120, 'Libyan Arab Jamahiriya', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(121, 'Liechtenstein', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(122, 'Lithuania', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(123, 'Luxembourg', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(124, 'Macao', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(125, 'North Macedonia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(126, 'Madagascar', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(127, 'Malawi', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(128, 'Malaysia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(129, 'Maldives', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(130, 'Mali', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(131, 'Malta', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(132, 'Marshall Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(133, 'Martinique', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(134, 'Mauritania', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(135, 'Mauritius', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(136, 'Mayotte', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(137, 'Mexico', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(138, 'Micronesia, Federated States of', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(139, 'Moldova', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(140, 'Monaco', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(141, 'Mongolia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(142, 'Montenegro', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(143, 'Montserrat', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(144, 'Morocco', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(145, 'Mozambique', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(146, 'Myanmar', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(147, 'Namibia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(148, 'Nauru', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(149, 'Nepal', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(150, 'Netherlands', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(151, 'Netherlands Antilles', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(152, 'New Caledonia', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(153, 'New Zealand', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(154, 'Nicaragua', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(155, 'Niger', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(156, 'Nigeria', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(157, 'Niue', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(158, 'Norfolk Island', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(159, 'North Korea', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(160, 'Northern Ireland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(161, 'Northern Mariana Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(162, 'Norway', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(163, 'Oman', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(164, 'Pakistan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(165, 'Palau', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(166, 'Palestine', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(167, 'Panama', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(168, 'Papua New Guinea', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(169, 'Paraguay', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(170, 'Peru', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(171, 'Philippines', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(172, 'Pitcairn', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(173, 'Poland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(174, 'Portugal', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(175, 'Puerto Rico', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(176, 'Qatar', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(177, 'Reunion', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(178, 'Romania', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(179, 'Russian Federation', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(180, 'Rwanda', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(181, 'Saint Helena', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(182, 'Saint Kitts and Nevis', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(183, 'Saint Lucia', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(184, 'Saint Pierre and Miquelon', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(185, 'Saint Vincent and the Grenadines', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(186, 'Samoa', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(187, 'San Marino', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(188, 'Sao Tome and Principe', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(189, 'Saudi Arabia', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(190, 'Scotland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(191, 'Senegal', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(192, 'Seychelles', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(193, 'Sierra Leone', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(194, 'Singapore', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(195, 'Slovakia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(196, 'Slovenia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(197, 'Solomon Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(198, 'Somalia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(199, 'South Africa', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(200, 'South Georgia and the South Sandwich Islands', 'Antarctica', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(201, 'South Korea', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(202, 'South Sudan', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(203, 'Spain', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(204, 'Sri Lanka', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(205, 'Sudan', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(206, 'Suriname', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(207, 'Svalbard and Jan Mayen', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(208, 'Swaziland', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(209, 'Sweden', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(210, 'Switzerland', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(211, 'Syria', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(212, 'Tajikistan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(213, 'Tanzania', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(214, 'Thailand', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(215, 'The Democratic Republic of Congo', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(216, 'Togo', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(217, 'Tokelau', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(218, 'Tonga', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(219, 'Trinidad and Tobago', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(220, 'Tunisia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(221, 'Turkey', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(222, 'Turkmenistan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(223, 'Turks and Caicos Islands', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(224, 'Tuvalu', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(225, 'Uganda', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(226, 'Ukraine', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(227, 'United Arab Emirates', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(228, 'United Kingdom', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(229, 'United States', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(230, 'United States Minor Outlying Islands', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(231, 'Uruguay', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(232, 'Uzbekistan', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(233, 'Vanuatu', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(234, 'Venezuela', 'South America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(235, 'Vietnam', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(236, 'Virgin Islands, British', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(237, 'Virgin Islands, U.S.', 'North America', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(238, 'Wales', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(239, 'Wallis and Futuna', 'Oceania', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(240, 'Western Sahara', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(241, 'Yemen', 'Asia', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(242, 'Yugoslavia', 'Europe', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(243, 'Zambia', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51'),
(244, 'Zimbabwe', 'Africa', '2020-06-11 19:02:51', '2020-06-11 19:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=auto, 0=manual',
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT 0,
  `account` blob DEFAULT NULL,
  `verify_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `type`, `amount`, `charge`, `usd_amo`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `account`, `verify_image`, `created_at`, `updated_at`) VALUES
(1, 30, 1, '0', '10000', '0', '10000', '0', '', 'TZKYihi7IcPLCOXy', '3', 0, 0x416e7469717565207061796d656e74, 'LlAUGeoWLeGhL4sJHLJstuQxaV3D7mIiUwU1lzs6.jpeg', '2020-06-05 17:39:02', '2020-06-05 17:40:46'),
(2, 30, 1, '0', '9000', '0', '9000', '0', '', 'mJrIF0JhOjDCD7vp', '0', 0, NULL, NULL, '2020-06-06 04:09:22', '2020-06-06 04:09:22'),
(3, 40, 1, '0', '900000000', '0', '900000000', '0', '', '0GIS0Ei3cFUV65Vz', '3', 0, 0x53616c617279, 'IjUA0oYyIiq7rbNAlrnnPpPfIH7nx3qjqLLC06YX.jpeg', '2020-07-29 09:56:20', '2020-07-29 09:58:07'),
(4, 40, 1, '0', '900000000', '0', '900000000', '0', '', '4gwjV9kCbmojkN4Q', '3', 0, 0x416e746971756573207061796d656e74, 'quNp0FqIvtotjIEd6H4Cl5hkj5VerZzjVa0Weh4Y.jpeg', '2020-07-29 10:05:00', '2020-07-29 10:08:43'),
(5, 40, 1, '0', '900000000', '0', '900000000', '0', '', 'XNuQKrwZiSCH0KuJ', '0', 0, NULL, NULL, '2020-07-29 10:55:47', '2020-07-29 10:55:47'),
(6, 40, 1, '0', '900000000', '0', '900000000', '0', '', 'msLYZwNyswgHddhe', '0', 0, NULL, NULL, '2020-07-29 11:07:20', '2020-07-29 11:07:20'),
(7, 41, 1, '0', '200', '0', '200', '0', '', '5Mx6YfpdnuU0Hu0r', '0', 0, NULL, NULL, '2020-07-29 22:55:15', '2020-07-29 22:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'How do i join?', 'It is simple! Use the sign up link on the menu, enter your details and you will get a confirmation email with a verification link. Use the verification code to complete the sign up process.', '2020-02-17 21:39:01', '2020-03-20 23:29:34'),
(2, 'Can I be a member without verifying my account?', 'No, you must verify your account in order to complete the registration process. The process is easy and automated.', '2020-02-17 21:40:42', '2020-02-17 21:40:42'),
(3, 'How do I find my account number?', 'Immediately you register and login to your account, the first item is your account number prefixed by pound sign (#)', '2020-02-17 22:54:34', '2020-02-17 22:54:34'),
(4, 'How can I contact you?', 'You can always reach us via the contact us page. You can us well raise a ticket from your account when logged. Open  a ticket and our staff members will get back to you the soonest possible.', '2020-02-17 22:59:18', '2020-02-17 22:59:18'),
(5, 'How do I see my transaction statement?', 'You can always see them under Statements in your account.', '2020-02-17 23:00:35', '2020-02-17 23:00:35'),
(6, 'How will I know if I have been credited or debited?', 'You can login and check your account for a notification and account balance. Also, you will get email notifications any time you have an update.', '2020-02-17 23:01:57', '2020-02-17 23:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `fix_deposits`
--

CREATE TABLE `fix_deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fix_deposit_paks_id` int(11) DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `percent_return` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `return_total` double(8,2) NOT NULL DEFAULT 0.00,
  `return_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fix_deposit_paks`
--

CREATE TABLE `fix_deposit_paks` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `max_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `percent_return` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Website',
  `val4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Industry Type',
  `val5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Channel ID',
  `val6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction URL',
  `val7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction Status URL',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', '5', '1000', '.10', '0', '82', 'rexrifat636@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:08'),
(102, 'PerfectMoney', 'Perfect Money', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:08'),
(103, 'Stripe', 'Credit Card', '10', '50000', '3', '3', '80', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:09'),
(104, 'Skrill', 'Skrill', '10', '50000', '3', '3', '90', 'merchant@skrill', 'TheSoftKing', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:09'),
(105, 'PayTM', 'PayTM', '1', '100', '1', '1', '1', 'PoojaE46324372286132', 'JAKMX9PVoj208dMq', 'WEB_STAGINGb', 'Retail', 'WEB', 'https://pguat.paytm.com/oltp-web/processTransaction', 'https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp', 0, NULL, '2020-02-19 15:22:19'),
(106, 'Payeer', 'Payeer', '1', '100', '1', '1', '1', '627881897', 'Admin727096', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:20'),
(107, 'PayStack', 'PayStack', '1', '100', '1', '1', '1', 'pk_test_c1775454cc81a5ad2d6a31d0b0471585d44c4dcb', 'sk_test_22327c329aa7ea76448cfe279aa1e5d583d306fa', NULL, NULL, NULL, NULL, '0.0028', 0, NULL, '2020-02-19 15:22:20'),
(108, 'VoguePay', 'VoguePay', '1', '100', '1', '1', '1', 'demo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:21'),
(501, 'Blockchain.info', 'BitCoin', '1', '20000', '1', '0.5', '80', '3965f52f-ec19-43af-90ed-d613dc60657eSSS', 'xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:32'),
(502, 'block.io - BTC', 'BitCoin', '1', '99999', '1', '0.5', '80', '1658-8015-2e5e-9afb', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, '2018-01-27 18:00:00', '2020-02-19 15:22:32'),
(503, 'block.io - LTC', 'LiteCoin', '100', '10000', '0.4', '1', '80', 'cb91-a5bc-69d7-1c27', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:33'),
(504, 'block.io - DOGE', 'DogeCoin', '1', '50000', '0.51', '2.52', '80', '2daf-d165-2135-5951', '09876softk', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:34'),
(505, 'CoinPayment - BTC', 'BitCoin', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:58'),
(506, 'CoinPayment - ETH', 'Etherium', '1', '50000', '0.51', '2.52', '79', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:58'),
(507, 'CoinPayment - BCH', 'Bitcoin Cash', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:57'),
(508, 'CoinPayment - DASH', 'DASH', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:57'),
(509, 'CoinPayment - DOGE', 'DOGE', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:22:49'),
(510, 'CoinPayment - LTC', 'LTC', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:55'),
(512, 'CoinGate', 'CoinGate', '10', '1000', '05', '5', '80', 'Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-07-08 18:00:00', '2020-02-19 15:21:56'),
(513, 'CoinPayment-ALL', 'Coin Payment', '10', '1000', '05', '5', '80', 'db1d9f12444e65c921604e289a281c56', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-19 15:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_manuals`
--

CREATE TABLE `gateway_manuals` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `dec` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_cur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_manuals`
--

INSERT INTO `gateway_manuals` (`id`, `name`, `rate`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `status`, `dec`, `method_cur`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Deposit', '1', '10', '9000000000', '0', '0', 1, NULL, '$', '', '2020-04-22 07:57:37', '2020-04-22 07:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pint_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_packages_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `charge` double(8,2) NOT NULL DEFAULT 0.00,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `return_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_packages`
--

CREATE TABLE `loan_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `max_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_packages`
--

INSERT INTO `loan_packages` (`id`, `name`, `min_amount`, `max_amount`, `days`, `fixed_charge`, `percent_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test pack', '210', '10', '10', '10', '10', '1', '2020-02-04 13:21:14', '2020-02-04 13:21:14');

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
(1, '2020_04_24_172849_create_admins_table', 1),
(2, '2020_04_24_172849_create_banks_table', 1),
(3, '2020_04_24_172849_create_blogs_table', 1),
(4, '2020_04_24_172849_create_branches_table', 1),
(5, '2020_04_24_172849_create_contacts_table', 1),
(6, '2020_04_24_172849_create_deposits_table', 1),
(7, '2020_04_24_172849_create_faqs_table', 1),
(8, '2020_04_24_172849_create_fix_deposit_paks_table', 1),
(9, '2020_04_24_172849_create_fix_deposits_table', 1),
(10, '2020_04_24_172849_create_gateway_manuals_table', 1),
(11, '2020_04_24_172849_create_gateways_table', 1),
(12, '2020_04_24_172849_create_investors_table', 1),
(13, '2020_04_24_172849_create_languages_table', 1),
(14, '2020_04_24_172849_create_loan_packages_table', 1),
(15, '2020_04_24_172849_create_loans_table', 1),
(16, '2020_04_24_172849_create_password_resets_table', 1),
(17, '2020_04_24_172849_create_services_table', 1),
(18, '2020_04_24_172849_create_settings_table', 1),
(19, '2020_04_24_172849_create_sliders_table', 1),
(20, '2020_04_24_172849_create_social_icons_table', 1),
(21, '2020_04_24_172849_create_subscribes_table', 1),
(22, '2020_04_24_172849_create_support_tickets_table', 1),
(23, '2020_04_24_172849_create_ticket_comments_table', 1),
(24, '2020_04_24_172849_create_transactions_table', 1),
(25, '2020_04_24_172849_create_users_table', 1),
(26, '2020_04_24_172849_create_withdraws_table', 1),
(27, '2020_04_24_172849_create_wmethods_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(0, 'kidiwa01@gmail.com', 'JN6rbBWPXhpZ3NK1uQY3SBtxMkYsSF', '1', '2020-03-21 06:07:18', '2020-05-24 22:29:58'),
(0, 'mightylogician6@yahoo.com', 'LAnsDDIOYDNIa3QMcHe0JEuD993PP7', '1', '2020-03-21 06:07:18', '2020-05-24 22:29:58'),
(0, 'jammainga@gmail.com', '3rOklSFSIvREq4oYX1kkrzHPS4Bv19', '1', '2020-03-21 06:07:18', '2020-05-24 22:29:58'),
(0, 'wilystar@yahoo.com', 'vZs1J8cXa1P12twPtLIgM2mIZYwAw3', '1', '2020-05-20 19:27:29', '2020-05-24 22:29:58'),
(0, 'wilystar@yahoo.com', 'qfeLYqiuddNjeq57hFWVmOKCA5DXs8', '1', '2020-05-24 10:27:00', '2020-05-24 22:29:58'),
(0, 'wilystar@yahoo.com', 'gmMqnS7LlEFW8ehrIr2P4MxdYqWFCM', '1', '2020-05-24 10:28:37', '2020-05-24 22:29:58'),
(0, 'lemayan2019@yahoo.com', 'JEORWcTQvIrRQrRqLzcrYR3DU5XJgK', '0', '2020-06-18 14:14:22', NULL),
(0, 'lemayan2019@yahoo.com', '5dBBURXxgyzpcSp2DEBpQtRj663P71', '0', '2020-06-18 14:18:25', NULL),
(0, 'bonitanjoki@gmail.com', '8kGm3Ku69sDwDCgezeMMHdvj1XQt5U', '0', '2020-07-29 09:36:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Online Banking', NULL, 'fa fa-globe', '2020-02-17 22:10:15', '2020-02-17 22:47:57'),
(2, 'Online Transfer', NULL, 'fa fa-rocket', '2020-02-17 22:10:33', '2020-02-17 22:10:33'),
(3, 'Loan System', NULL, 'fa fa-money', '2020-02-17 22:10:53', '2020-02-17 22:10:53'),
(4, 'Savings', NULL, 'fa fa-briefcase', '2020-02-17 22:11:34', '2020-02-17 22:11:34'),
(5, 'Deposit', NULL, 'fa fa-download', '2020-02-17 22:35:30', '2020-02-17 22:35:30'),
(6, 'Investment', NULL, 'fa fa-envelope-open', '2020-02-17 22:49:51', '2020-02-17 22:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colortwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_api` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_notification` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 0,
  `registration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_api` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bal_trans_fixed_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `bal_trans_per_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `video_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_dec` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latest_tran_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latest_tran_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `branding`, `color1`, `colortwo`, `email_from`, `email_body`, `email_notification`, `sms_api`, `sms_notification`, `email_verification`, `sms_verification`, `registration`, `script`, `created_at`, `updated_at`, `service_subtitle`, `contact_thumbnail`, `cur`, `cur_symbol`, `facebook_api`, `fag`, `footer_image`, `bal_trans_fixed_charge`, `bal_trans_per_charge`, `video_section_title`, `video_section_dec`, `video_link`, `about_title`, `about_subtitle`, `video_section_banner`, `service_title`, `faq_title`, `faq_subtitle`, `blog_title`, `blog_subtitle`, `investor_title`, `investor_des`, `latest_tran_title`, `latest_tran_des`) VALUES
(1, 'Blue Swift Louisiana B', '© 2020 - BSLB. All rights reserved', '052157', '91039F', 'info@blueswiflouisiana.com', '<br><br>\r\n	<div class=\"contents\" style=\"max-width: 600px; margin: 0 auto; border: 2px solid #000036;\">\r\n\r\n<div class=\"header\" style=\"background-color: #000036; padding: 15px; text-align: center;\"><div class=\"logo\" style=\"width: 260px;text-align: center; margin: 0 auto;\">\r\n		<img style=\"font-size: 0.875rem;\"><img src=\"https://blueswiflouisiana.com/assets/image/logo.png\" alt=\"Blue Swift Louisiana Bank\" style=\"width: 100%;\">\r\n	</div>\r\n</div>\r\n\r\n<div class=\"mailtext\" style=\"padding: 30px 15px; background-color: #f0f8ff; font-family: \'Open Sans\', sans-serif; font-size: 16px; line-height: 26px;\">\r\n\r\nHi {{name}},\r\n<br><br>\r\n{{message}}\r\n<br><br>\r\n<br><br></div>\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n<a href=\"https://blueswiflouisiana.com\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\" title=\"\" target=\"\">Website</a>\r\n<a href=\"https://blueswiflouisiana.com/login\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Sign in</a>\r\n<a href=\"https://blueswiflouisiana.com/contact\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Contact</a>\r\n</div>\r\n\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\">\r\n\r\n<b style=\"color: rgb(255, 255, 255);\">Copyright © 2020 - </b><font color=\"#ffffff\"><b>BSLB</b></font><b style=\"color: rgb(255, 255, 255);\">. All Rights Reserved.</b></div><div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\"><p style=\"color: #ddd;\">The Blue Swift Louisiana B is not partnered with any other \r\ncompany or person. We’re committed to finding local solutions to uniquely local challenges and everything we do is focused on adding value.</p>\r\n\r\n\r\n</div>\r\n\r\n	</div>\r\n<br><br>', 1, 'https://api.infobip.com/api/v3/sendsms/plain?user=blueswift&password=Gucci@1017&sender=BLUESWIFT&SMSText={{message}}&GSM={{number}}&type=longSMS', 1, 1, 0, '1', 'wvvwvwvw', '2018-11-13 18:00:00', '2020-08-03 21:57:12', NULL, '5gvRFEgyWL1vpFTmHg7hz8k0ia9k8pc09Qp5j0N3.jpeg', 'USD', '$', '205856110142667', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>', 'lyW5tX3sqvcUjMg7B5DH1ECYbIxxIc7v6xpV4bt4.jpeg', 2.00, 3.00, 'Profile', 'Blue Swift Louisiana Bank is an American financial services group that aims to be the pride of the continent. Blue Swift Louisiana Bank is one of America’s largest diversified financial services groups with a presence in 12 countries across the continent and around 42, 000 employees.\r\n\r\nWe’re committed to finding local solutions to uniquely local challenges and everything we do is focused on adding value. To this end, we offer our clients a range of retail, business, corporate and investment, and wealth management solutions. We also ensure a positive impact in all the countries where we operate.\r\n\r\nWe’re part of a truly American brand, inspired by the people we serve and determined to always be brave, passionate and ready so that we can make our continent proud.\r\n\r\nWe believe in possibility, in the actions of people who always find a way to get things done. We believe in creating opportunities for all our stakeholders, and to make their possibilities real and supporting them every step of the way. Our group is a future-focused organisation, driven by progress and a desire to thrive in the digital age.\r\n\r\nWe are committed to being: Brave, Passionate and Ready.', '/assets/image/video-banner.jpg', 'About Us', 'Get to know who we are and what we do. Know us better!', 'video-banner.jpg', 'Our Services', 'Frequently Asked Questions', NULL, 'Latest News and Updates', 'Updates and news right from our blog.', 'Our Top Investors', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit adipisci incidunt est, harum eaque laborum omnis, ea odio.', 'Latest Transaction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit adipisci incidunt est, harum eaque laborum omnis, ea odio.');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `banner`, `btn_name`, `btn_link`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Blue Swift Louisiana Bank', 'Get Started Now!', 'qjTb3AQpGz0i4QURtSZe8eFsD5pAOZe2EBzRyFIn.jpeg', 'Join us', 'register', '2019-04-10 05:47:44', '2020-03-20 23:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `name`, `icon`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Email', 'fa fa-envelope', '#', 1, '2020-02-17 21:34:27', '2020-02-17 21:34:27'),
(3, 'Facebook', 'fa fa-facebook', '#', 1, '2020-02-17 21:35:10', '2020-02-17 21:35:10'),
(4, 'Twitter', 'fa fa-twitter', '#', 1, '2020-02-17 21:35:44', '2020-02-17 21:35:44'),
(5, 'LinkedIn', 'fa fa-linkedin', '#', 1, '2020-02-17 21:36:06', '2020-02-17 21:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'jammainga@gmail.com', '2020-03-21 21:00:11', '2020-03-21 21:00:11'),
(3, 'jammainga@yahoo.com', '2020-03-21 21:00:29', '2020-03-21 21:00:29'),
(4, 'nduga41@gmail.com', '2020-04-06 21:15:03', '2020-04-06 21:15:03'),
(5, 'isaacmucira@gmail.com', '2020-04-21 21:48:46', '2020-04-21 21:48:46'),
(6, 'muyusteve@yahoo.com', '2020-04-22 01:47:20', '2020-04-22 01:47:20'),
(7, 'johnjstc@gmail.com', '2020-05-12 02:38:37', '2020-05-12 02:38:37'),
(8, 'beragroupcp@gmail.com', '2020-06-06 06:22:07', '2020-06-06 06:22:07'),
(9, 'leslyknight@gmail.com', '2020-07-14 01:35:08', '2020-07-14 01:35:08'),
(10, 'leobarilcastonguay@gmail.com', '2020-07-20 23:36:42', '2020-07-20 23:36:42'),
(11, 'scottkyle438@gmail.com', '2020-07-29 04:22:45', '2020-07-29 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `ticket`, `subject`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '7DEC8918', 'New ticket', 7, 2, '2020-03-21 19:37:53', '2020-03-21 19:39:39'),
(2, '8C5F55E9', 'Transfer funds', 32, 1, '2020-06-03 06:28:27', '2020-06-03 06:28:27'),
(3, '71B2D098', 'Inquire', 30, 1, '2020-06-07 07:05:31', '2020-06-07 07:05:31'),
(4, '89C18F51', 'a failed tranfer', 37, 9, '2020-07-16 22:51:50', '2020-07-17 09:42:52'),
(5, 'A60556A6', 'Contact', 37, 1, '2020-07-16 23:52:41', '2020-07-16 23:52:41'),
(6, '0349ABA8', 'failed money transfer', 37, 1, '2020-07-17 02:04:53', '2020-07-17 02:04:53'),
(7, '866DF3A0', 'Yes', 40, 9, '2020-07-29 10:13:11', '2020-07-29 11:23:29'),
(8, '0125B435', 'Antique payment', 40, 1, '2020-07-29 11:24:15', '2020-07-29 11:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(111) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `ticket_id`, `type`, `comment`, `created_at`, `updated_at`) VALUES
(1, '7DEC8918', 1, 'New ticket', '2020-03-21 19:37:53', '2020-03-21 19:37:53'),
(2, '7DEC8918', 0, 'Title: 7DEC8918 - New ticket', '2020-03-21 19:39:39', '2020-03-21 19:39:39'),
(3, '8C5F55E9', 1, 'Hi,\r\n\r\nHow do I transfer funds from BSLB to another Bank\'s account or vice versa?', '2020-06-03 06:28:27', '2020-06-03 06:28:27'),
(4, '71B2D098', 1, 'How can I withdraw money from the account', '2020-06-07 07:05:31', '2020-06-07 07:05:31'),
(5, '89C18F51', 1, 'I have attempted transfer $ 1000 to Kenya and it has failed and advised to consult the bank. What could be the problem', '2020-07-16 22:51:50', '2020-07-16 22:51:50'),
(6, 'A60556A6', 1, 'how can I contact the bank. I have written emails with no responce.I have called the phone number on the contacts provided at the website but it does not go through. How can I get assistance on failed transfers', '2020-07-16 23:52:41', '2020-07-16 23:52:41'),
(7, '0349ABA8', 1, 'Kindly I need to know why my money transfers are failing.\r\nkindly respond', '2020-07-17 02:04:53', '2020-07-17 02:04:53'),
(8, '866DF3A0', 1, 'Rf', '2020-07-29 10:13:11', '2020-07-29 10:13:11'),
(9, '866DF3A0', 1, 'Rtr', '2020-07-29 10:13:29', '2020-07-29 10:13:29'),
(10, '0125B435', 1, '5000', '2020-07-29 11:24:15', '2020-07-29 11:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trxid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `p_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `trxid`, `amount`, `balance`, `fee`, `p_time`, `type`, `status`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'nTRDErXgK39EPuy4', '200', '200', '0', NULL, '2', 0, '232', '2020-02-19 15:30:24', '2020-02-19 15:30:24'),
(2, 1, 'LuymF8B0Kt1Uol3y', '20', '180', '0', NULL, '3', 0, 'g', '2020-02-19 15:32:01', '2020-02-19 15:32:01'),
(3, 1, '56EuwBXEoM7z2Yjj', '300', '480', '0', NULL, '2', 0, '300 credited', '2020-02-19 15:34:25', '2020-02-19 15:34:25'),
(4, 1, 'mUaxsaLB6aCAmdAh', '200', '280', '0', NULL, '3', 0, '200 debited from your account.', '2020-02-19 15:37:00', '2020-02-19 15:37:00'),
(5, 1, 'lvJUGixQLJUxdSMv', '100', '180', '0', NULL, '3', 0, '100', '2020-02-19 15:42:19', '2020-02-19 15:42:19'),
(6, 1, 'dJr6zvemhMS7eRsA', '300', '480', '0', NULL, '2', 0, '300', '2020-02-19 15:42:52', '2020-02-19 15:42:52'),
(7, 2, 'NPl3Iiq2ZnmYJmQ1', '650000', '650000', '0', NULL, '2', 0, 'salary', '2020-02-20 18:16:52', '2020-02-20 18:16:52'),
(8, 2, '6aYbCsOfuqvRl8V1', '10000', '640000', '0', NULL, '3', 0, 'charges', '2020-02-20 18:19:40', '2020-02-20 18:19:40'),
(9, 7, 'kxvIRsTg2IOjYrjj', '4000000', '-4000000', '0', NULL, '3', 0, 'antique', '2020-02-20 19:21:33', '2020-02-20 19:21:33'),
(10, 7, 'eaM8yzuqoRnPgFdB', '200000', '-1200000', '0', NULL, '3', 0, 'pays', '2020-02-20 19:22:03', '2020-02-20 19:22:03'),
(11, 3, 'Kbe88kPJpxDqS0sa', '6000', '-6000', '0', NULL, '3', 0, 'cash', '2020-02-20 19:31:44', '2020-02-20 19:31:44'),
(12, 4, 'GgwyfuYQoqYaXX0K', '6000000', '6000000', '0', NULL, '2', 0, 'cash', '2020-02-20 19:32:34', '2020-02-20 19:32:34'),
(13, 2, 'wS5kRcfkTbIXITsS', '4000', '644000', '0', NULL, '2', 0, 'salary', '2020-02-20 19:48:58', '2020-02-20 19:48:58'),
(14, 2, 'TcwHmldwOCIpi08p', '10000', '634000', '0', NULL, '3', 0, 'salary', '2020-02-23 08:38:42', '2020-02-23 08:38:42'),
(15, 9, 'yfBHComLneLF14Ly', '127000000', '127000000', '0', NULL, '2', 0, 'ANTIQUE PROJECT PAYMENTS', '2020-02-24 12:04:46', '2020-02-24 12:04:46'),
(16, 9, 'RcEeD4vb0k4uczuM', '100000', '900000', '0', NULL, '3', 0, 'payment', '2020-02-24 18:07:42', '2020-02-24 18:07:42'),
(17, 2, 'lJEZbDVF0lZgSOcy', '20000', '654000', '0', NULL, '2', 0, 'SALRY', '2020-02-25 13:31:12', '2020-02-25 13:31:12'),
(18, 9, '4k6ODkbKuwBwplQx', '10000', '910000', '0', NULL, '2', 0, 'salary', '2020-02-25 18:52:53', '2020-02-25 18:52:53'),
(19, 12, 'k3QLLNnpKGACCAgK', '10000', '10000', '0', NULL, '2', 0, 'salary', '2020-02-25 20:04:34', '2020-02-25 20:04:34'),
(20, 12, '57Q8LvfnZ1sBUSwH', '10000', '20000', '0', NULL, '2', 0, 'payment', '2020-02-26 15:37:07', '2020-02-26 15:37:07'),
(21, 13, 'GCOKCJ996ePGGuZH', '1000000', '1000000', '0', NULL, '2', 0, 'Ancient antique down payment', '2020-02-26 17:12:12', '2020-02-26 17:12:12'),
(22, 12, 'Xipqc0baKepCTRlh', '20000', '40000', '0', NULL, '2', 0, 'salary', '2020-03-04 12:49:07', '2020-03-04 12:49:07'),
(23, 7, '3nmX6DjEYGSa3Vxv', '10', '-999990', '0', NULL, '2', 0, '10 USD credited to your account', '2020-03-21 00:37:04', '2020-03-21 00:37:04'),
(24, 7, 'Hkjgtt54cVGWsiMb', '5', '-999995', '0', NULL, '3', 0, '5', '2020-03-21 00:39:55', '2020-03-21 00:39:55'),
(25, 7, 'c6oipxBgNJ0AoGjx', '1000', '-998995', '0', NULL, '2', 0, 'We have credited your account. Login to see your new account balance.', '2020-03-21 19:16:17', '2020-03-21 19:16:17'),
(26, 7, 'LNMvnWr2RDUZHC5A', '1000000', '1005', '0', NULL, '2', 0, 'Testing mails', '2020-03-21 19:19:05', '2020-03-21 19:19:05'),
(27, 14, 'xzgoARScDosxdmJy', '10', '10', '0', NULL, '2', 0, 'AC #8864276249916877', '2020-03-21 21:23:34', '2020-03-21 21:23:34'),
(28, 14, 'xecJXlAsoJmC6yv5', '5', '5', '0', NULL, '3', 0, '5 bob', '2020-03-21 21:26:57', '2020-03-21 21:26:57'),
(29, 14, 'yirXUkb27NXPx6Wb', '20', '25', '0', NULL, '2', 0, '20 bob given', '2020-03-21 21:28:38', '2020-03-21 21:28:38'),
(30, 14, 'yl7pUeGz99uUH0Kf', '10', '15', '0', NULL, '3', 0, '10', '2020-03-21 21:32:06', '2020-03-21 21:32:06'),
(31, 13, '0mkngJhsQj9rLSTy', '127000000', '-126000000', '0', NULL, '3', 0, 'payment', '2020-03-25 19:58:07', '2020-03-25 19:58:07'),
(32, 13, 'dEbgyeFY5aDU7y86', '127000000', '126000000', '0', NULL, '2', 0, 'salary', '2020-03-25 19:58:46', '2020-03-25 19:58:46'),
(33, 15, 'fFoTD3jx9kePTwYo', '1000000', '-1000000', '0', NULL, '3', 0, 'ANTIQUE PAYMENT', '2020-04-07 16:45:26', '2020-04-07 16:45:26'),
(34, 15, 'dt2UqOy0VnLitWp9', '100000', '-900000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-07 16:48:36', '2020-04-07 16:48:36'),
(35, 15, '9pcVrGiIMQdhb12R', '100000', '-800000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-07 17:06:09', '2020-04-07 17:06:09'),
(36, 15, '5cwJwatFhdtmiUTY', '200000', '-1000000', '0', NULL, '3', 0, 'ANTIQUE PAYMENT', '2020-04-07 17:08:29', '2020-04-07 17:08:29'),
(37, 15, 'RLKcntrtZoZ96Ozr', '1000000', '0', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-07 17:43:45', '2020-04-07 17:43:45'),
(38, 15, 'NB90Mpg8pW3cJCdl', '1000000', '1000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-07 17:48:57', '2020-04-07 17:48:57'),
(39, 13, 'sKtwOSuBNvw9BqnN', '1000000', '2000000', '0', NULL, '2', 0, 'salary', '2020-04-16 18:58:38', '2020-04-16 18:58:38'),
(40, 16, '57i538jQ7cYIeuyw', '4000', '4000', '0', NULL, '2', 0, 'minimum balance', '2020-04-16 19:29:07', '2020-04-16 19:29:07'),
(41, 17, 'aPUeiO11BkpsxLat', '4000', '4000', '0', NULL, '2', 0, 'Minimum balance', '2020-04-16 20:22:06', '2020-04-16 20:22:06'),
(42, 16, 'UmSMmJJCDlmzLExF', '1000000', '1004000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-21 09:09:43', '2020-04-21 09:09:43'),
(43, 17, 'sI8gn6RwXJlc5cCB', '1000000', '1004000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-21 09:11:50', '2020-04-21 09:11:50'),
(44, 13, 'Fqt3CTEcaRTS1cFH', '1000000', '2000000', '0', NULL, '2', 0, 'PAYMENT', '2020-04-22 18:23:53', '2020-04-22 18:23:53'),
(45, 13, 'NfB4xbWJoy5iiTHF', '1000000', '2000000', '0', NULL, '2', 0, 'payment', '2020-04-24 18:46:54', '2020-04-24 18:46:54'),
(46, 19, 'XB1yWhGLwxIRVKSH', '1000000000', '1000000000', '0', NULL, '2', 0, 'dfdssfd', '2020-04-24 20:29:56', '2020-04-24 20:29:56'),
(47, 19, 'XHmDaYiQfIBlaeoB', '1000000000', '1001000000', '0', NULL, '2', 0, 'cscsd', '2020-04-24 20:30:30', '2020-04-24 20:30:30'),
(48, 19, 'Ld6dHvfKlJrq7Hve', '9000000', '10000000', '0', NULL, '2', 0, 'sdsfsf', '2020-04-24 20:56:34', '2020-04-24 20:56:34'),
(49, 21, 'rFDz9fB89KsY0Okv', '100000000000000', '100000000000000', '0', NULL, '2', 0, 'Loan from bank A', '2020-04-25 01:36:11', '2020-04-25 01:36:11'),
(50, 23, 'KyJe4G3yRaYhuQr3', '10000000', '10000000', '0', NULL, '2', 0, 'scscs', '2020-04-25 02:00:39', '2020-04-25 02:00:39'),
(51, 17, 'g5X4fsmalhPYMSsN', '1000000', '0', '0', NULL, '3', 0, 'salary', '2020-04-26 00:35:21', '2020-04-26 00:35:21'),
(52, 17, 'pzmJsHwJgUUj79BW', '1000000', '1000000', '0', NULL, '2', 0, 'salary', '2020-04-26 00:35:53', '2020-04-26 00:35:53'),
(53, 17, 'Xbb3qByI9qAS329V', '1000000', '2000000', '0', NULL, '2', 0, 'salary', '2020-04-26 00:36:58', '2020-04-26 00:36:58'),
(54, 23, 'ZrXFigyTQYuYJoBf', '20000000', '30000000', '0', NULL, '2', 0, 'dss', '2020-04-26 02:01:04', '2020-04-26 02:01:04'),
(55, 23, '9u1rmkqp7IqHk9P1', '400000000', '430000000', '0', NULL, '2', 0, 'fvdvd', '2020-04-26 02:01:58', '2020-04-26 02:01:58'),
(56, 15, 'vlMs2pMBhw4WQgIY', '4000000', '5000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-26 04:06:32', '2020-04-26 04:06:32'),
(57, 16, 'v2M6q3wzeVu072Id', '4000000', '5000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-28 19:38:22', '2020-04-28 19:38:22'),
(58, 17, 'aPm3OoWZvO2z5T4M', '3000000', '5000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-04-28 19:39:37', '2020-04-28 19:39:37'),
(59, 24, 'Y0wrSAAYQqbmoFIc', '4000', '4000', '0', NULL, '2', 0, 'minimum ballance', '2020-05-12 03:30:03', '2020-05-12 03:30:03'),
(60, 24, 'QBuBclCJCmKQR2Ji', '15000000', '15004000', '0', NULL, '2', 0, 'MINING ALLOCATION FUNDS\r\nCAVEAT BY DEPOSITOR. MR. ANARTOLI', '2020-05-14 06:13:57', '2020-05-14 06:13:57'),
(61, 15, 'Ye1DsJs8ZXL5VmJm', '5000000', '10000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT\r\nCAVEAT BY DEPOSITOR. MR ANARTOLI.', '2020-05-14 06:32:18', '2020-05-14 06:32:18'),
(62, 25, 'QNJinj8xahv9HNFU', '1000000000000', '-1000000000000', '0', NULL, '3', 0, 'paymrnt', '2020-05-18 20:00:38', '2020-05-18 20:00:38'),
(63, 25, 'sJGoqOvFBb7lInyh', '1000000', '-999999000000', '0', NULL, '2', 0, 'payment', '2020-05-18 20:01:43', '2020-05-18 20:01:43'),
(64, 25, 'VkfgwgDhCLe156AE', '1000000000000', '-1999999000000', '0', NULL, '3', 0, 'love', '2020-05-18 20:07:05', '2020-05-18 20:07:05'),
(65, 27, 'oPlBYSyK6G8wBvNF', '200000', '200000', '0', NULL, '2', 0, 'deposit', '2020-05-20 01:19:27', '2020-05-20 01:19:27'),
(66, 26, 'jClJVx9npmezHITa', '5000000', '5000000', '0', NULL, '2', 0, 'DEPOSIT', '2020-05-20 03:24:30', '2020-05-20 03:24:30'),
(67, 31, '1p2PHvpnXwQraOr0', '4000', '4000', '0', NULL, '2', 0, 'MINIMUM BALLANCE', '2020-06-02 03:08:39', '2020-06-02 03:08:39'),
(68, 31, 'O1OHFrtP0ytJ6egq', '4000', '0', '0', NULL, '3', 0, 'MINIMUM BALANCE', '2020-06-02 03:27:33', '2020-06-02 03:27:33'),
(69, 30, 'nsdQjtyXCnyNIThT', '250000000', '250000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-06-02 16:32:14', '2020-06-02 16:32:14'),
(70, 31, 'cLrikxnuMQ6yMgdd', '250000000', '250000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-06-02 16:33:56', '2020-06-02 16:33:56'),
(71, 30, 'oe871iEegiT3OFBM', '250000000', '0', '0', NULL, '3', 0, 'RECALL OF FUNDS', '2020-06-09 03:54:58', '2020-06-09 03:54:58'),
(72, 31, 'Jt4HLZlR2X88T6mz', '250000000', '0', '0', NULL, '3', 0, 'RECALL OF FUNDS', '2020-06-09 03:56:12', '2020-06-09 03:56:12'),
(73, 34, '6kMocxQGwPEAeRYC', '10000000', '10000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-06-23 18:33:17', '2020-06-23 18:33:17'),
(74, 37, 'aPDdxdrw8EXMaX5l', '2000', '2000', '0', NULL, '2', 0, 'MINIMUM BALLANCE', '2020-07-12 07:02:07', '2020-07-12 07:02:07'),
(75, 37, 'SYYLglvuteC6nTVF', '580000', '582000', '0', NULL, '2', 0, 'PAYMENT OF PESTICIDES SUPPLIES.', '2020-07-14 09:10:11', '2020-07-14 09:10:11'),
(76, 38, 'tzYueNh8LuUmBuEq', '5000', '5000', '0', NULL, '2', 0, 'MINIMUM BALANCE', '2020-07-28 19:59:11', '2020-07-28 19:59:11'),
(77, 39, '2ePWVTKEHtt5BwRM', '20000000', '20000000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-07-28 20:36:08', '2020-07-28 20:36:08'),
(78, 38, 'NfQKLywzXZJJPTs3', '5000', '0', '0', NULL, '3', 0, 'antique payment', '2020-07-28 21:06:43', '2020-07-28 21:06:43'),
(79, 38, 'hoUTzzIkY01YrypL', '5000', '5000', '0', NULL, '2', 0, 'MINIMUM BALANCE', '2020-07-28 21:12:12', '2020-07-28 21:12:12'),
(80, 38, 'wto0DquonRUJeS4p', '30000000', '30005000', '0', NULL, '2', 0, 'ANTIQUE PAYMENT', '2020-07-29 20:06:37', '2020-07-29 20:06:37'),
(81, 39, 'Hs6Z8kOVIjxgpqI6', '20000000', '0', '0', NULL, '3', 0, 'ANTIQUE', '2020-07-31 00:20:56', '2020-07-31 00:20:56'),
(82, 37, '2ubdom0NlH9hAei6', '580000', '2000', '0', NULL, '3', 0, 'RECALL OF FUNDS', '2020-07-31 20:26:08', '2020-07-31 20:26:08'),
(83, 43, 'BpId1610jfXCsrTK', '100', '100', '0', NULL, '2', 0, '100', '2020-08-03 21:48:38', '2020-08-03 21:48:38'),
(84, 44, 'vzHulDjiji31BQ0g', '150', '150', '0', NULL, '2', 0, 'Credit', '2020-08-03 23:09:10', '2020-08-03 23:09:10'),
(85, 37, 'emYnQgLgI22IlFJl', '600000', '602000', '0', NULL, '2', 0, 'You have received a bank credit of USD 600000.0 to account ending with 0741 Ref: 26Qr256r89fgi2356m.', '2020-08-04 06:24:20', '2020-08-04 06:24:20'),
(86, 36, 'WZ2tyH0Jx6vEV6IJ', '25000000', '25000000', '0', NULL, '2', 0, 'You have received a bank credit of USD 25000000 to account ending with 445. Ref: 268q00745m453zm', '2020-08-06 09:15:09', '2020-08-06 09:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_time` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_time` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_send` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_banned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `account_number`, `phone`, `avatar`, `country`, `city`, `balance`, `amount`, `password`, `email_verified`, `sms_verified`, `email_code`, `sms_code`, `email_time`, `sms_time`, `verified_send`, `user_banned`, `remember_token`, `created_at`, `updated_at`, `is_approved`) VALUES
(15, 'DANIEL', 'NDUGA', 'nduga41@gmail.com', 'ODHIAMBO', '8836176973682713', '+254722917199', 'JmmIuzNI3AbUDw5kL2rMCbID28RnCl6aNYH8OyGu.jpeg', NULL, NULL, 10000000.00, 5000000.00, '$2y$10$CKSavMhhvrsmWfRIplHGIevY8BoMcLGB1nnL/yTo0k76U1XyGzQnC', '1', '1', NULL, '9DCE37', '2020-04-05 19:31:03', '2020-04-05 19:31:03', NULL, '0', NULL, '2020-04-06 09:28:03', '2020-05-14 06:32:18', 0),
(16, 'JOSEPH', 'LEMAYIAN', 'lemayan2019@yahoo.com', 'NAIGESA', '9706531313355452', '+254793674187', '9lIHbTt1foHji32p57QwaEkY29TfF4uvKIRVIJtf.jpeg', NULL, NULL, 5000000.00, 4000000.00, '$2y$10$3LlTLveG93EDJXwrz39XGeYPO5B8DYSKRjaOd6ggrZnxnMbmWcnzG', '1', '1', '5e97fb', '7FA533', '2020-04-16 12:34:53', '2020-04-16 12:28:23', NULL, '0', NULL, '2020-04-17 02:25:23', '2020-04-28 19:38:22', 0),
(17, 'MUCIRA', 'ISAAC', 'isaacmucira@gmail.com', 'MUCIRA', '6386579244402998', '+254722700119', 'tQt3ShmVzwzZIVkHjLsfbrm9lTIwg3qk6qI2H0C2.jpeg', NULL, NULL, 5000000.00, 3000000.00, '$2y$10$wTZkWmwoTXZ3ad1FA8dXrOwKAtfYWc6KHneBki3RijbHzhZ0aQCHK', '1', '1', '5e9806', '805690', '2020-04-16 13:19:07', '2020-04-16 13:15:41', NULL, '0', NULL, '2020-04-17 03:12:41', '2020-04-28 19:39:37', 0),
(24, 'HAKI MINERALS(K) LIMITED', 'HAKI MINERALS(K) LIMITED', 'johnjstc@gmail.com', 'HAKIMINERALS', '3442188339913492', '+254721560751', NULL, NULL, NULL, 15004000.00, 15000000.00, '$2y$10$XnOcWB8ce0kacmaiF8udKOKa3rXv7ZXjsei/FljgJtspHh8pnp3ji', '1', '1', NULL, '95F543', '2020-05-11 20:24:08', '2020-05-11 20:24:08', NULL, '0', NULL, '2020-05-12 03:21:08', '2020-05-14 06:13:57', 0),
(36, 'HEZEKIAH', 'KAGWATHI', 'githiih@gmail.com', 'GITHII', '6233587894947445', '+254790702673', 'z7kDn7jrMkPpub2af4UNDL2YgnJivEGi0xZLaygR.jpeg', NULL, NULL, 25000000.00, 25000000.00, '$2y$10$2aXO/28i350ot/I/8M1xKOAqs1z/laD.FICdA4AgIfSwS3FGZUI/e', '1', '1', '5f04cb', '4CBAFD', '2020-07-08 01:26:27', '2020-07-08 01:26:27', NULL, '0', NULL, '2020-07-08 08:23:28', '2020-08-06 09:15:51', 1),
(37, 'LYDIA', 'KAMAU', 'lydiakamau09@gmail.com', 'NJERI', '9975655249850741', '+254721726797', 'BT7c90CkInBu54Ders4mIOgzPBZHZEWE0ujdhTWh.jpeg', NULL, NULL, 602000.00, 600000.00, '$2y$10$84L3GtUI/mbxD0NKsrlnU.iISD1zxAWruNGu.k8qq8mRVSZGQAUh.', '1', '1', '5f09ff', '9FDAB0', '2020-07-12 00:07:11', '2020-07-12 00:01:03', NULL, '0', NULL, '2020-07-12 06:58:03', '2020-08-04 06:24:20', 0),
(38, 'PINTARAT', 'SURACHIT', 'pintaratsurachit829@gmail.com', 'SURACHIT', '5724182659060665', '+254792793664', 'w53cNWONIoHR4Hy9OdtMv1GjT3MVmrph9OI3tH3b.jpeg', NULL, NULL, 30005000.00, 30000000.00, '$2y$10$IcuLjEPUdLphecDAg.QqyOrBD07nJ7lcAQnwUmKaR8epwKj8g4pZO', '0', '0', '5f1fca', 'FCAF1C', '2020-07-28 12:54:29', '2020-07-28 12:54:29', NULL, '1', NULL, '2020-07-28 19:51:30', '2020-08-03 19:41:51', 0),
(39, 'PERIS', 'OWALA', 'achiengperis61@gmail.com', 'ACHIENG', '4087887377605253', '+254722948645', 'MYBSqSQkoJqOLAkdUuspjhXaTeON8HWpWc7ller8.jpeg', NULL, NULL, 0.00, 20000000.00, '$2y$10$K9sPfMNH0jjGZnSyZzkQ6eL2D0Lfo0gzNt2mU07BRHAzKb15c1kMe', '0', '0', '5f1fd2', 'FD24EE', '2020-07-28 13:25:54', '2020-07-28 13:25:54', NULL, '1', NULL, '2020-07-28 20:22:55', '2020-07-31 00:22:08', 0),
(44, 'Jemo', 'Jemo', 'jemowebs@gmail.com', 'jemoh', '1752844468811955', '+254704927502', NULL, NULL, NULL, 150.00, 150.00, '$2y$10$0gi7PLL1FNjruRELZL39OePTfFImlKxpxL4Zq9Vd9QOeeQ4iLlvb6', '1', '1', NULL, NULL, '2020-08-03 15:33:55', '2020-08-03 16:04:40', NULL, '0', NULL, '2020-08-03 22:30:55', '2020-08-03 23:09:10', 0),
(46, 'OSCAR', 'OLWANDE', 'okiamayo@gmail.com', 'Olwande', '4416221842002225', '+254719764896', NULL, NULL, NULL, 0.00, 0.00, '$2y$10$j.SBsCmyb8HzcReaIhAkSuQfJMXwy/rn2ycm2tYf.yTAEGjDPtUF6', '0', '1', '5f2990', '990EEF', '2020-08-04 22:49:38', '2020-08-04 22:49:38', NULL, '0', NULL, '2020-08-05 05:46:39', '2020-08-05 05:46:39', 0),
(48, 'Simon', 'Angatia', 'simoncastingwords@gmail.com', 'SimonA', '9655144871369271', '0785608538', NULL, NULL, NULL, 0.00, 0.00, '$2y$10$rfQBwzuHmak6FE5h7HO1be71coK00PNaiIS6SmvHD076M46oXul.G', '1', '1', '5f2af3', 'AF3A47', '2020-08-06 00:03:04', '2020-08-06 00:03:04', NULL, '0', NULL, '2020-08-06 07:00:05', '2020-08-06 07:33:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `wmethod_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wmethods`
--

CREATE TABLE `wmethods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fix_deposits`
--
ALTER TABLE `fix_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fix_deposit_paks`
--
ALTER TABLE `fix_deposit_paks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_manuals`
--
ALTER TABLE `gateway_manuals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_packages`
--
ALTER TABLE `loan_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wmethods`
--
ALTER TABLE `wmethods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fix_deposits`
--
ALTER TABLE `fix_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fix_deposit_paks`
--
ALTER TABLE `fix_deposit_paks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `gateway_manuals`
--
ALTER TABLE `gateway_manuals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_packages`
--
ALTER TABLE `loan_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wmethods`
--
ALTER TABLE `wmethods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
