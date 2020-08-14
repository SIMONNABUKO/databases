-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2020 at 05:09 PM
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
