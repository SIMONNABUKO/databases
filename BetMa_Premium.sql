-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2020 at 01:57 AM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BetMa_Premium`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_access` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `mobile`, `admin_access`, `email_verified_at`, `image`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Supper Admin', 'dbamurike@gmail.com', 'admin', '+256782312849', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\"]', NULL, '5f196b64a9ea51595501412.jpg', 1, '$2y$10$uUOHJQ1Nf2jm.o6v8Y/J9e65ZKaqxwitaexEjdxT9umYzMyNhuJ1q', 'PIQQhpcCDQDmuofvYk9FUvdDcHJpf16leieAfEMsl1LxMOH34oFvku6S1Hly', NULL, '2020-07-23 17:50:12'),
(2, 'staff1', 'staff1@gmail.com', 'staff1', '5846546545', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\"]', NULL, NULL, 0, '$2y$10$G9vkJ4aR8r4P.jSz.QRlSO.zeDOnX0PnDwu6XFiV0IYst202PixCe', NULL, '2020-03-16 07:13:14', '2020-07-20 18:56:45'),
(3, 'Staff33', 'sdsd@ds555ds.com', 'Staff33', '46413134', '[\"0\"]', NULL, NULL, 0, '$2y$10$mY9DmjTequaLurjCVjwJc.tzpi9AQJR0Pfndke4H4Hy/pqNxGdsS2', NULL, '2020-03-16 07:28:39', '2020-07-22 18:22:35'),
(4, 'Idris Shareef', 'blackhatidris@gmail.com', 'api', '+9647709719084', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\"]', NULL, NULL, 1, '$2y$10$DYDC2FMGZ.9w1BA7yrAwjeE6MR0iQfx2a5xfAb7zkLCBuFHyW6iKG', NULL, '2020-07-20 19:26:33', '2020-07-23 16:54:38'),
(5, 'Ibrahim Kezaala', 'kezaala@gmail.com', 'paysms', '+256782 896870', '[\"1\",\"11\",\"12\",\"14\",\"16\",\"17\",\"20\",\"21\"]', NULL, NULL, 1, '$2y$10$pSzEK3YFalaEjpazLIWxJOvkdbtschTktN1Ukp2yvB1nm7DYf.w0m', NULL, '2020-07-22 23:45:21', '2020-07-22 23:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dbamurike@gmail.com', '398893', 1, '2020-07-21 16:26:20', '2020-07-22 22:23:17'),
(2, 'dbamurike@gmail.com', '214049', 1, '2020-07-21 18:16:07', '2020-07-22 22:23:17'),
(3, 'dbamurike@gmail.com', '164998', 1, '2020-07-22 18:25:03', '2020-07-22 22:23:17'),
(4, 'dbamurike@gmail.com', '532387', 1, '2020-07-22 10:22:29', '2020-07-22 22:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `league_id` varchar(191) DEFAULT NULL,
  `match_id` varchar(191) DEFAULT NULL,
  `question_id` varchar(191) DEFAULT NULL,
  `option_id` varchar(191) DEFAULT NULL,
  `ratio` decimal(18,2) DEFAULT '0.00',
  `amount` decimal(16,8) NOT NULL DEFAULT '0.00000000',
  `win_amount` decimal(16,8) NOT NULL DEFAULT '0.00000000',
  `win_status` tinyint(1) DEFAULT '0' COMMENT '0 = pending, 1= win, 2= lose',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Politics', '5f19c07e5f5551595523198.png', 1, '2020-07-23 23:53:18', '2020-07-23 23:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT '0.00000000',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT '0',
  `verify_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci,
  `sms_body` text COLLATE utf8mb4_unicode_ci,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT '1',
  `sms_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message. </font><br></div><br>', 'We have received a request to reset the password for your account on {{time}} .Requested From IP: {{ip}} using {{browser}} on {{operating_system}} .Your account recovery code is:   {{code}}If you do not wish to reset your password, please disregard this message. ', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', '\r\n    You have successfully reset your password.You changed from  IP: {{ip}} using {{browser}} on {{operating_system}}  on {{time}}If you did not changed that, Please contact with us as soon as possible.', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address. <br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Thanks For join with us. Please use below code to verify your email address. Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:11:23'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'You just enabled Google Two Factor Authentication for Your Account.Enabled at {{time}} From IP: {{ip}} using {{browser}} on {{operating_system}} .', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:11:23'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'You just Disabled Google Two Factor Authentication for Your Account.Disabled at {{time}} From IP: {{ip}} using {{browser}} on {{operating_system}} .', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:11:23'),
(7, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', 'Your deposit request of {{amount}} {{currency}} is via  {{method_name}} submitted successfully .Details of your Deposit :Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}Payable : {{method_amount}} {{method_currency}} Pay via :  {{method_name}}Transaction Number : {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(8, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Your deposit request of {{amount}} {{currency}} is via  {{method_name}} is Approved .Details of your Deposit :Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}Payable : {{method_amount}} {{method_currency}} Paid via :  {{method_name}}Transaction Number : {{trx}}Your current Balance is {{post_balance}} {{currency}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(9, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>', 'Your deposit request of {{amount}} {{currency}} is via  {{method_name}} has been rejected.Transaction Number was : {{trx}}if you have any query, feel free to contact us.', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(10, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', 'Your deposit of {{amount}} {{currency}} is via  {{method_name}} has been completed Successfully.Details of your Deposit :Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}Payable : {{method_amount}} {{method_currency}} Paid via :  {{method_name}}Transaction Number : {{trx}}Your current Balance is {{post_balance}} {{currency}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(11, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', 'Your withdraw request of {{amount}} {{currency}}  via  {{method_name}} has been submitted Successfully.Details of your withdraw:Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}You will get: {{method_amount}} {{method_currency}} Via :  {{method_name}}Transaction Number : {{trx}}This may take {{delay}} to process the payment.Your current Balance is {{post_balance}} {{currency}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Your withdraw request of {{amount}} {{currency}}  via  {{method_name}} has been Processed Successfully.Details of your withdraw:Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}You will get: {{method_amount}} {{method_currency}} Via :  {{method_name}}Transaction Number : {{trx}}-----Details of Processed Payment :{{admin_details}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Your withdraw request of {{amount}} {{currency}}  via  {{method_name}} has been Rejected.Details of your withdraw:Amount : {{amount}} {{currency}}Charge: {{charge}} {{currency}}Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}You should get: {{method_amount}} {{method_currency}} Via :  {{method_name}}Transaction Number : {{trx}}---- {{amount}} {{currency}} has been refunded to your account and your current Balance is {{post_balance}} {{currency}}-----Details of Rejection :{{admin_details}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(14, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} has been added to your account .Transaction Number : {{trx}}Your Current Balance is : {{post_balance}}  {{currency}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-09 06:13:00'),
(15, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} has been subtracted from your account .Transaction Number : {{trx}}Your Current Balance is : {{post_balance}}  {{currency}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-03-08 18:00:00', '2020-03-09 06:13:00'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Support Ticket Replied', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><a href=\"{{ticket_url}}\" title=\"\" target=\"_blank\"><b>[Ticket#{{ticket_id}}] {{ticket_subject}}</b></a></p><p><b><br></b></p><p><b>you can view the ticket using below URL :</b></p><p> {{ticket_url}}</p><p>----------------------------------------------</p><p><b>Here is the reply : </b><br></p><p> {{reply}}<br></p></div><div><br></div>', 'A member from our support team has replied to the following ticket:[Ticket#{{ticket_id}}] {{ticket_subject}}\r\n\r\n----------------------------------------------Here is the reply :  {{reply}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"ticket_url\":\"URL for View the Support Ticket\", \"reply\":\"Reply from Staff/Admin\"}', 1, 1, NULL, '2020-03-09 08:18:53'),
(17, 'WELCOME_MESSAGE', 'Welcome Message on Register', 'Welcome To Our Site', '<div>welcome to our site.<br></div><div>You have registered successfully to our portal.<br></div><div><font size=\"4\"><b><br></b></font></div><div><font size=\"4\"><b>Your details: </b></font><br></div><div><br></div><div><b>Username : </b>{{username}}</div><div><b>Full Name:</b> {{name}}</div><div><b>Email:</b> {{email}}</div><div><b>Password:</b> [**********]</div><div><br></div><div><br></div><div><br></div>You Registered&nbsp; on <b>{{time}}&nbsp;</b> From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.<div><br><br></div>', NULL, ' {\"username\":\"username of user\",\"name\":\"Name of User\",\"email\":\"Email address of user\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Registration Time\"}', 1, 1, NULL, '2020-03-09 06:43:17'),
(18, 'LOGIN_ALERT', 'User Login Alert', 'Login Notification', 'You successfully logged in to the system on <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.&nbsp; <br><div><br></div><div><font color=\"#FF0000\"><b>If you did not login,\r\n please contact with us immediately.</b></font></div>', NULL, ' {\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Login Time\"}', 1, 1, NULL, '2020-03-09 06:50:12'),
(19, 'LOGIN_ALERT_ADMIN', 'ADMIN Login Alert', 'ADMIN PANEL LOGIN ALERT', '<div><font size=\"5\">You successfully logged in to the system <b>ADMIN PANEL</b> on&nbsp; <b>{{time}}</b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b> </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>. <br></font></div>', NULL, ' {\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Login Time\"}', 1, 1, NULL, '2020-03-09 06:52:06'),
(20, 'BET_COMPLETE', 'BET COMPLETE', 'Bet Successfully', '<div><br></div><div><br></div><div><div>You bet&nbsp; <b>match name :&nbsp; {{match_name}}, Question : {{question}} and you choose option : {{option}},&nbsp; ratio :</b><b> {{ratio}}<br></b></div><div><b><br></b></div><div><b>Details of your bet:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}. If you win you will get {{win_amount}}  {{currency}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div></div>', 'You bet  match name :  {{match_name}}, Question : {{question}} and you choose option : {{option}},  your ball : {{ball}}\r\n\r\nDetails of your bet:\r\n\r\nAmount : {{amount}} {{currency}}. If you win you will get {{win_amount}} {{currency}}\r\n\r\nTransaction Number : {{trx}}\r\n\r\nYour current Balance is {{post_balance}} {{currency}}', '{\"trx\":\"Transaction Number\",\r\n\"amount\":\"bet Amount By user\",\r\n\"currency\":\"Site Currency\",\r\n\"post_balance\":\"Users Balance After this operation\",\r\n \"match_name\": \"match name\",\r\n  \"question\" : \" match question name\",\r\n  \"option\":  \"question option name\",\r\n\"ratio\":  \"option ratio\",\r\n\"win_amount\":  \"bet win amount\"\r\n}', 1, 1, '2019-09-24 23:04:05', '2020-03-15 02:45:02'),
(21, 'REF_COM', 'Referral commission', 'New Referral commission', '<div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Congratulations you got&nbsp;</span><span style=\"color: rgb(82, 95, 127); font-family: &quot;Open Sans&quot;, sans-serif; text-align: right;\">Level</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;{{reflevel}}</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">commission&nbsp;from&nbsp;</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;{{from_user}}</span></div><div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Commission</span><span style=\"font-weight: bolder;\">:<br></span></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{currency}}</span></font></div><div><br></div><div><br><br></div></div>', 'Congratulations you got {{reflevel}} commission from  {{from_user}}.\r\n\r\nDetails of your Commission:\r\n\r\nAmount : {{amount}} {{currency}}\r\n\r\nTransaction Number : {{trx}}\r\n\r\nYour current Balance is {{post_balance}} {{currency}}', '{\"reflevel\":\"Refer Level\", \"amount\": \"Commission amount\", \"from_user\": \"Commission  from username\", \"post_balance\" : \"User Current balance\", \"currency\": \"site currency\", \"trx\": \"Transaction Number\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-18 03:32:41'),
(22, 'BET_WIN', 'Bet Win', 'New Bet Win', '<div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Congratulations&nbsp; you win a the bet Match: {{match}}, Question: {{question}}, Option: {{option}}</span></div><div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your win amount</span><span style=\"font-weight: bolder;\">:<br></span></div><div><br></div><div>Bet Amount : {{bet_amount}} {{currency}}</div><div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Ratio : {{ratio}}</span><br></div><div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">win Amount: {{win_amount}}&nbsp;</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">{{currency}}</span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\"><br></span></div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{currency}}</span></font></div><div><br></div><div><br><br></div></div>', 'Congratulations  you win a the bet Match: {{match}}, Question: {{question}}, Option: {{option}}\r\n\r\nDetails of your win amount:\r\n\r\nBet Amount : {{bet_amount}} {{currency}}\r\nRatio : {{ratio}}\r\nwin Amount: {{win_amount}}  {{currency}}\r\n\r\nTransaction Number : {{trx}}\r\n\r\nYour current Balance is {{post_balance}} {{currency}}', '{\r\n\"bet_amount\":\"Bet amount\",\r\n\"win_amount\": \"Win amount\",\r\n\"match\": \"Match\",\r\n\"question\": \"Question\",\r\n\"option\": \"option\",\r\n\"ratio\": \"ratio\",\r\n\"post_balance\" : \"User Current balance\",\r\n\"currency\": \"site currency\",\r\n\"trx\": \"Transaction Number\"\r\n}\r\n', 1, 1, '2019-09-24 23:04:05', '2020-03-18 04:43:35'),
(23, 'BET_LOSE', 'Bet LOSE', 'Bet LOST', '<div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">You lost the bet on Match: {{match}}, Question: {{question}}, Option: {{option}}</span></div><div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your bet amount</span><span style=\"font-weight: bolder;\">:<br></span></div><div><br></div><div>Bet Amount : {{bet_amount}} {{currency}}</div><div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Ratio : {{ratio}}</span></div><div><br></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{currency}}</span></font></div><div><br></div><div><br><br></div></div>', 'You lose a the bet on Match: {{match}}, Question: {{question}}, Option: {{option}}\r\n\r\nDetails of your bet amount:\r\n\r\nBet Amount : {{bet_amount}} {{currency}}\r\nRatio : {{ratio}}\r\n\r\nYour current Balance is {{post_balance}} {{currency}}', '{\r\n\"bet_amount\":\"Bet amount\",\r\n\"match\": \"Match\",\r\n\"question\": \"Question\",\r\n\"option\": \"option\",\r\n\"ratio\": \"ratio\",\r\n\"post_balance\" : \"User Current balance\",\r\n\"currency\": \"site currency\"\r\n}\r\n', 1, 1, '2019-09-24 23:04:05', '2020-07-20 19:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(35, 'banner.element', '{\"id\":\"35\",\"has_image\":\"1\",\"title\":\"Novelty Events!\",\"description\":\"Who will be the next Woman MP - Kampala District?\",\"image\":\"5e69041c1392a1583940636.jpg\"}', '2020-03-11 09:30:36', '2020-07-21 01:25:47'),
(36, 'banner.element', '{\"id\":\"36\",\"has_image\":\"1\",\"title\":\"Local Sports!\",\"description\":\"Bet on Local Sports!\",\"image\":\"5e69041fc70741583940639.jpg\"}', '2020-03-11 09:30:39', '2020-07-21 01:24:34'),
(37, 'about.content', '{\"has_image\":\"1\",\"heading\":\"About Us\",\"description\":\"<p style=\\\"margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\\\"><span style=\\\"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;\\r\\ncolor:#777777;border:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;\\r\\npadding:0in\\\"><b>Who are Tom Kunta?<\\/b><\\/span><span style=\\\"font-size:10.0pt;\\r\\nfont-family:&quot;Arial&quot;,sans-serif;color:#777777\\\"><br style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\nTom Kunta is among the leading online sports betting companies in Uganda.<br><\\/span><strong style=\\\"font-family: var(--para-font); -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"font-size:10.0pt;\\r\\nfont-family:&quot;Arial&quot;,sans-serif;color:#777777;border:none windowtext 1.0pt;\\r\\nmso-border-alt:none windowtext 0in;padding:0in\\\"><br>T<b>om Kunta a name you can trust<\\/b><\\/span><\\/strong><\\/p><p style=\\\"margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#777777\\\">\\r\\nTom Kunta is managed by a group of experienced professionals in the betting\\r\\nindustry.<br>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--><\\/span><span style=\\\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\\r\\ncolor:#777777\\\"><o:p><\\/o:p><\\/span><\\/p><p style=\\\"margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"font-size:10.0pt;\\r\\nfont-family:&quot;Arial&quot;,sans-serif;color:#777777;border:none windowtext 1.0pt;\\r\\nmso-border-alt:none windowtext 0in;padding:0in\\\"><b>Tom Kunta\'s one-wallet system<\\/b><\\/span><\\/span><span style=\\\"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#777777\\\"><br style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\nAs well as Sports, We accept bets on local sports and novelty events like\\r\\npolitics and entertainment products. Here at Tom Kunta, we operate a simple\\r\\none-wallet system, meaning you have the same username, password and payment\\r\\nmethod to play at all of the above with the minimum of fuss.<br>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--><\\/span><span style=\\\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\\r\\ncolor:#777777\\\"><o:p><\\/o:p><\\/span><\\/p><p style=\\\"margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"font-size:10.0pt;\\r\\nfont-family:&quot;Arial&quot;,sans-serif;color:#777777;border:none windowtext 1.0pt;\\r\\nmso-border-alt:none windowtext 0in;padding:0in\\\"><b>Online Security<\\/b><\\/span><\\/span><span style=\\\"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#777777\\\"><br style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\nTom Kunta has a Thawte SSL Web Server Certificate. This proves that we offer\\r\\nsecure communications by encrypting all data to and from the site.<br>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--><\\/span><span style=\\\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;\\r\\ncolor:#777777\\\"><o:p><\\/o:p><\\/span><\\/p><p style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(119, 119, 119);\\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p style=\\\"margin: 0in 0in 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit;\\\"><span style=\\\"font-size:10.0pt;\\r\\nfont-family:&quot;Arial&quot;,sans-serif;color:#777777;border:none windowtext 1.0pt;\\r\\nmso-border-alt:none windowtext 0in;padding:0in\\\"><b>Customer Service and Further\\r\\nInformation<\\/b><\\/span><\\/span><span style=\\\"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;\\r\\ncolor:#777777\\\"><br style=\\\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\nYou, the customer, are very important to us and that\\u2019s why we put a great deal\\r\\nof time and energy into customer service. We pride ourselves on our speed,\\r\\nefficiency and friendliness when dealing with any questions or queries that may\\r\\narise.<br>\\r\\n<br>\\r\\n<b>More Information<\\/b><br>\\r\\nIf you need any more information, please hit the contact button and get in\\r\\ntouch. We shall be happy to provide more information.<\\/span><span style=\\\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#777777\\\"><o:p><\\/o:p><\\/span><\\/p>\",\"image\":\"5f1aeb100e1dc1595599632.jpg\"}', '2020-03-11 09:33:34', '2020-07-24 21:10:02'),
(38, 'affiliate.content', '{\"heading\":\"Affiliate\",\"description\":\"<p style=\\\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; position: relative; color: rgb(255, 255, 255);\\\"><font size=\\\"2\\\" style=\\\"\\\" face=\\\"arial\\\">Coming soon!<\\/font><\\/p>\"}', '2020-03-11 09:35:14', '2020-07-24 22:06:49'),
(39, 'faq.element', '{\"id\":\"39\",\"Question\":\"How to play?\",\"answer\":\"Click on any odds of the corresponding bet type of your choice to start creating a bet slip. Do this as many times more if you need to add other bet types. Enter your stake on the bet slip before you can place your bet.\"}', '2020-03-11 09:36:04', '2020-07-24 21:14:54'),
(43, 'faq.element', '{\"id\":\"43\",\"Question\":\"What is a novelty bet?\",\"answer\":\"A novelty bet is a bet on an outcome that is usually not sport-related, such as the winner of a presidential election or whether something happens or not.\"}', '2020-03-11 09:36:19', '2020-07-24 22:03:42'),
(46, 'faq.element', '{\"id\":\"46\",\"Question\":\"Is it legal to play?\",\"answer\":\"Users of our platform MUST be 18+ years of age. Users\' accounts which do not meet this condition will be aggressively banned!\"}', '2020-03-11 09:36:30', '2020-07-24 21:36:53'),
(54, 'footer_menu.element', '{\"id\":\"54\",\"menu_name\":\"Rules & Polices\",\"title\":\"Rules & Polices\",\"description\":\"<h2 style=\\\"margin-bottom: 20px;border: none;outline: none;line-height: 1.2em;font-size: 30px;position: relative;\\/* background: none rgb(24, 33, 55); *\\/font-family: Comfortaa, sans-serif;color: rgb(255, 255, 255);\\\"><p style=\\\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: none; outline: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\\\"><br><\\/p><\\/h2>\"}', '2020-03-11 09:39:48', '2020-07-24 23:57:50'),
(58, 'seo.data', '{\"keywords\":[\"sports betting\",\"soccer betting\",\"local sports\",\"masaza cup\",\"novelty events\",\"uganda elections\",\"mp elections\",\"uganda decides 2021\",\"bobi wine\",\"bobi wine presidency\",\"museveni presidency\",\"live in-play\",\"online betting\",\"football betting\",\"museveni\"],\"description\":\"Among Uganda\'s leading online betting companies. Bet on every local match and novelty events. The most comprehensive In-Play service. Bet on Novelty events like politics and entertainment.\",\"social_title\":\"Tom Kunta\",\"social_description\":\"Among Uganda\'s leading online betting companies. Bet on every local match and novelty events. The most comprehensive In-Play service. Bet on Novelty events like politics and entertainment.\",\"image\":\"5f1591d0290e51595249104.jpg\"}', '2020-03-16 08:41:06', '2020-07-23 22:53:47'),
(59, 'faq.element', '{\"Question\":\"Do you offer bets on Politics?\",\"answer\":\"Yes, our platform will be regularly updated with novelty events related to Politics.\"}', '2020-07-24 21:32:43', '2020-07-24 21:32:43'),
(60, 'footer_menu.element', '{\"id\":\"60\",\"menu_name\":\"Addiction\",\"title\":\"Betting is addictive and can be psychologically harmful. Please bet responsibly.\",\"description\":\"Betting is addictive and can be psychologically harmful. Please bet responsibly.<br>\"}', '2020-07-24 23:34:29', '2020-07-25 00:06:27'),
(61, 'footer_menu.element', '{\"id\":\"61\",\"menu_name\":\"18+\",\"title\":\"Not allowed for persons under 18 years of age\",\"description\":\"Not allowed for persons under 18 years of age.<br>\"}', '2020-07-24 23:36:57', '2020-07-25 00:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `parameter_list` text COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `parameter_list`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Paypal', '5d985257a92911570263639.jpg', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"i@abir.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, 'PayPal allows customers to establish an account on its platform, which is connected to a user\'s credit card or checking account. PayPal is a fast, simple, and secure way to make a payment online.', '2019-09-14 13:14:22', '2020-07-24 03:22:37'),
(2, 102, 'Perfect Money', 'Perfect Money', '5d985267e2ee31570263655.jpg', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551dfgdfhhth\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, 'Paytm is largest mobile payments and commerce platform. It started with online mobile recharge and bill payments and has an online marketplace today. To keep things at ease, you can also use Paytm Wallet.', '2019-09-14 13:14:22', '2020-07-24 03:22:42'),
(3, 103, 'Stripe', 'Stripe', '5d98527da9ede1570263677.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_aat3tzBCCXXBkS4sxY3M8A1B\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_AU3G7doZ1sbdpJLj0NaozPBu\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, 'Stripe is a third-party payments processor built around a simple idea: make it easy for companies to do business online.', '2019-09-14 13:14:22', '2020-07-24 03:22:47'),
(4, 104, 'Skrill', 'Skrill', '5d985288936bd1570263688.jpg', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"TheSoftKing\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, 'Skrill is one of the most popular electronic payment systems in the world. In addition to rapid processing of payments and low commissions, the system’s advantages include the ability to use credit cards. Making a deposit using Skrill is possible through a form in the Personal Account.', '2019-09-14 13:14:22', '2020-07-24 03:22:55'),
(5, 105, 'PayTM', 'PayTM', '5d9852b9c57da1570263737.jpg', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, 'Paytm is largest mobile payments and commerce platform. It started with online mobile recharge and bill payments and has an online marketplace today. To keep things at ease, you can also use Paytm Wallet.', '2019-09-14 13:14:22', '2020-07-24 03:22:59'),
(6, 106, 'Payeer', 'Payeer', '5d9852d61a60d1570263766.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.g106\"}}', 'Payeer is one of the many e-wallets available for use on betting sites. As mentioned, the payment gateway allows deposits through various methods.', '2019-09-14 13:14:22', '2020-07-24 03:23:04'),
(7, 107, 'PayStack', 'PayStack', '5d9852ee227461570263790.jpg', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.g107\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.g107\"}}\r\n', 'Paystack, a widely popular payment gateway for African business, facilitates to accept secure online payments. The payment gateway allows the businesses registered in Africa to accept the payments from global customers.', '2019-09-14 13:14:22', '2020-07-24 03:23:16'),
(8, 108, 'VoguePay', 'VoguePay', '5d9852faa21731570263802.jpg', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, 'VoguePay is an online payment gateway allows site owners to receive payment for their goods and services on their website without any setup fee for both local and International payments', '2019-09-14 13:14:22', '2020-07-24 03:23:23'),
(9, 109, 'Flutterwave', 'Flutterwave', '5d9853f5ce5f61570264053.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"FLWPUBK_TEST-5d9bb05bba2c13aa6c7a1ec7d7526ba2-X\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"FLWSECK_TEST-2ac7b05b6b9fa8a423eb58241fd7bbb6-X\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"FLWSECK_TEST32e13665a95a\"}}', '{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', 0, NULL, 'Its process credit card and local alternative payments, like mobile money and ACH, across Africa. They make it possible for global merchants to process payments like a local African company.', '2019-09-14 13:14:22', '2020-07-24 03:23:09'),
(10, 110, 'RazorPay', 'RazorPay', '5d9854adb0e101570264237.jpg', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, 'Razor’s payment gateway is one of the most ambitious in its sector. Razorpay allows online businesses to accept, process and disburse digital payments through several payment modes like debit cards, credit cards, net banking, UPI and prepaid digital wallets.', '2019-09-14 13:14:22', '2020-07-24 03:23:39'),
(11, 111, 'Stripe JS', 'Stripe JS', '5d9855a3c43381570264483.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_aat3tzBCCXXBkS4sxY3M8A1B\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_AU3G7doZ1sbdpJLj0NaozPBu\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, 'Stripe JS is a third-party payments processor built around a simple idea: make it easy for companies to do business online. It’s not just about processing credit cards. Stripe JS primarily targets developers with a suite of tools that make it nearly effortless to handle everything from in-app payments to marketplace transactions.', '2019-09-14 13:14:22', '2020-07-24 03:24:00'),
(12, 112, 'Instamojo', 'Instamojo', '5d9855d1485701570264529.png', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, 'Instamojo Payment Gateway in PHP As for indian Payment Gateway. It provides many solutions like test environment and signup process also is simple.', '2019-09-14 13:14:22', '2020-07-24 03:23:54'),
(13, 501, 'Blockchain', 'Blockchain', '5d98566ba7b2b1570264683.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"8df2e5a0-3798-4b74-871d-973615b57e7b\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CXLqfWXj1xgXe79nEQb3pv2E7TGD13pZgHceZKrQAxqXdrC2FaKuQhm5CYVGyNcHLhSdWau4eQvq3EDCyayvbKJvXa11MX9i2cHPugpt3G\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, 'Blockchain has been able to give under banked groups access to money, allows people to make cross-border payments and uses smart contracts to act as a means towards faster and safer payment processing', '2019-09-14 13:14:22', '2020-07-24 03:23:46'),
(14, 502, 'Block.io', 'Block.io', '5d98580ee98ed1570265102.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"amarvai202\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.g502\"}}', 'This method provides exponentially higher security for your Wallets and applications than single-signature addresses. This way, you spend coins yourself, without trusting Block.io with your credentials.', '2019-09-14 13:14:22', '2020-07-24 03:23:30'),
(15, 503, 'CoinPayments', 'CoinPayments', '5d985d51661061570266449.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, 'CoinPayments is a cloud wallet solution that offers an easy way to integrate a checkout system for numerous cryptocurrencies. Its website offers payment solutions for multiple crypto-currencies such as bitcoin and litecoin.', '2019-09-14 13:14:22', '2020-07-24 03:22:28'),
(16, 504, 'CoinPayments Fiat', 'CoinPayments Fiat', '5d985d5aef47b1570266458.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, 'This is the same gateway as CoinPayments but we used fiat currency as calculation currency.', '2019-09-14 13:14:22', '2020-07-24 03:24:31'),
(17, 505, 'Coingate', 'Coingate', '5d985d66805591570266470.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, 'CoinGate Bitcoin Payment Processor is an online cryptocurrency platform that provides merchant services to businesses and individuals', '2019-09-14 13:14:22', '2020-07-24 03:24:21'),
(18, 506, 'Coinbase Commerce', 'Coinbase commerce', '5d985d7d8fcc91570266493.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.g506\"}}', 'Coinbase Commerce allows merchants to accept cryptocurrency payments in Bitcoin, Bitcoin Cash, Ethereum and Litecoin.', '2019-09-14 13:14:22', '2020-07-24 03:24:10'),
(19, 1000, 'MTN - +256782312849', 'MTN - +256782312849', '', 1, '[]', '[]', 0, '{\"delay\":\"0\",\"verify_image\":\"No\"}', 'Player should include \"Username\" as the reason for sending.', '2020-07-23 17:07:38', '2020-07-23 17:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(18,8) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'MTN - +256782312849', 'UGX', '', 1000, '1000.00000000', '2000000.00000000', '0.0000', '0.00000000', '1.00000000', '', '[]', '2020-07-23 17:07:38', '2020-07-23 17:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `efrom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email sent from',
  `etemp` text COLLATE utf8mb4_unicode_ci COMMENT 'email template',
  `smsapi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'sms api',
  `bclr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Base Color',
  `sclr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Secondary Color',
  `ev` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `mail_config` text COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sv` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `reg` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'allow registration',
  `alert` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 => none, 1 => iziToast, 2 => toaster',
  `social_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci,
  `active_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'active template folder name',
  `sys_version` text COLLATE utf8mb4_unicode_ci,
  `bet_limit_min` decimal(16,8) NOT NULL,
  `bet_limit_max` decimal(16,8) NOT NULL,
  `ration_format` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = 1:1 , 0 = 1.00',
  `ref_com_deposit` tinyint(1) NOT NULL COMMENT '0 = off, 1 = on',
  `ref_com_bet` tinyint(1) NOT NULL COMMENT '0 = off, 1 = on',
  `ref_com_win` tinyint(1) NOT NULL COMMENT '0 = off, 1 = on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `efrom`, `etemp`, `smsapi`, `bclr`, `sclr`, `ev`, `en`, `mail_config`, `sv`, `sn`, `reg`, `alert`, `social_login`, `social_credential`, `active_template`, `sys_version`, `bet_limit_min`, `bet_limit_max`, `ration_format`, `ref_com_deposit`, `ref_com_bet`, `ref_com_win`, `created_at`, `updated_at`) VALUES
(1, 'Tom Kunta', 'UGX', 'UGX', 'do-not-reply@tomkunta.com', '<br style=\"font-family: Lato, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;\"><br style=\"font-family: Lato, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;\"><div class=\"contents\" style=\"font-family: Lato, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; max-width: 600px; margin: 0px auto; border: 2px solid rgb(0, 0, 54);\"><div class=\"header\" style=\"background-color: rgb(0, 0, 54); padding: 15px; text-align: center;\"><div class=\"logo\" style=\"width: 260px; margin: 0px auto;\"><img src=\"https://i.imgur.com/4NN55uD.png\" alt=\"THESOFTKING\" style=\"width: 260px;\">&nbsp;</div></div><div class=\"mailtext\" style=\"padding: 30px 15px; background-color: rgb(240, 248, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; line-height: 26px;\">Hi {{name}},&nbsp;<br><br>{{message}}&nbsp;<br><br><br></div><div class=\"footer\" style=\"background-color: rgb(0, 0, 54); padding: 15px; text-align: center;\"><a href=\"https://thesoftking.com/\" style=\"color: rgb(255, 255, 255); background-color: rgb(46, 204, 113); padding: 10px 0px; margin: 10px; display: inline-block; width: 100px; text-transform: uppercase; font-weight: 600; border-radius: 4px;\">WEBSITE</a>&nbsp;<a href=\"https://thesoftking.com/products\" style=\"color: rgb(255, 255, 255); background-color: rgb(46, 204, 113); padding: 10px 0px; margin: 10px; display: inline-block; width: 100px; text-transform: uppercase; font-weight: 600; border-radius: 4px;\">PRODUCTS</a>&nbsp;<a href=\"https://thesoftking.com/contact\" style=\"color: rgb(255, 255, 255); background-color: rgb(46, 204, 113); padding: 10px 0px; margin: 10px; display: inline-block; width: 100px; text-transform: uppercase; font-weight: 600; border-radius: 4px;\">CONTACT</a></div><div class=\"footer\" style=\"background-color: rgb(0, 0, 54); padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\"><span style=\"font-weight: bolder; color: rgb(255, 255, 255);\">© 2011 - 2018 THESOFTKING. All Rights Reserved.</span><p style=\"color: rgb(221, 221, 221);\">TheSoftKing\r\n is not partnered with any other company or person. We work as a team \r\nand do not have any reseller, distributor or partner!</p><div><br></div></div></div><table class=\"layout layout--no-gutter\" style=\"border-spacing: 0px; color: rgb(52, 73, 94); table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word;\" align=\"center\"><tbody><tr></tr></tbody></table>', NULL, '0075ff', 'FDD50B', 0, 1, '{\"name\":\"php\"}', 0, 0, 1, 1, 1, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', NULL, '100.00000000', '20000000.00000000', 1, 1, 0, 0, '2019-10-18 23:16:05', '2020-07-25 00:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` int(10) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `short_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) NOT NULL,
  `question_id` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `ratio1` int(11) NOT NULL DEFAULT '1',
  `ratio2` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secs` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"service\"]', '2020-03-02 03:54:15', '2020-03-11 06:48:35'),
(3, 'About', 'about', 'templates.basic.', '[\"about\"]', '2020-03-11 06:50:29', '2020-03-11 06:52:23'),
(4, 'Faq', 'faq', 'templates.basic.', '[\"faq\"]', '2020-03-11 07:19:59', '2020-03-11 07:20:09'),
(5, 'Affiliate', 'affiliate', 'templates.basic.', '[\"affiliate\"]', '2020-03-11 07:26:38', '2020-03-11 07:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci,
  `shortcode` text COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\n                <script>\n                  window.dataLayer = window.dataLayer || [];\n                  function gtag(){dataLayer.push(arguments);}\n                  gtag(\"js\", new Date());\n                \n                  gtag(\"config\", \"{{app_key}}\");\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"Demo\"}}', 'ganalytics.png', 0, NULL, '2019-10-18 23:16:05', '2020-03-11 09:50:34'),
(2, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\n                        (function(){\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\n                        s1.async=true;\n                        s1.src=\"https://embed.tawk.to/{{app_key}}/default\";\n                        s1.charset=\"UTF-8\";\n                        s1.setAttribute(\"crossorigin\",\"*\");\n                        s0.parentNode.insertBefore(s1,s0);\n                        })();\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"5f15c3607258dc118bee98e3\"}}', 'twak.png', 1, NULL, '2019-10-18 23:16:05', '2020-07-20 23:22:24'),
(3, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lf98t0UAAAAADJBPA0d-uSOFsEtY1uZiDGZzw4p\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2020-04-27 12:46:16'),
(4, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2020-07-20 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `match_id` int(10) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1 = waiting, 2 = complete',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `percent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_commissions`
--

CREATE TABLE `referral_commissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `des` varchar(191) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_activates`
--

CREATE TABLE `staff_activates` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `details` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_activates`
--

INSERT INTO `staff_activates` (`id`, `admin_id`, `type`, `details`, `updated_at`, `created_at`) VALUES
(1, 1, 'category_create', 'category: Politics', '2020-07-23 23:53:18', '2020-07-23 23:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `support_message_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `supportticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Hi Innocent,\r\n\r\nThis is a test reply.\r\n\r\nThank you.', '2020-07-23 15:33:40', '2020-07-23 15:33:40'),
(2, '1', 0, 'Thank you too.', '2020-07-23 15:44:05', '2020-07-23 15:44:05'),
(3, '2', 0, '\"Hey! Hope you are doing well & staying safe.\r\n\r\nI wanted to quickly check if you are planning to Get More Website Traffic, Visitors, Leads & Sales. We are Specialized In SEO, PPC, Social Media Marketing and Web Designing. Let our professional explain to you better, How we work to increase traffic to the website/business through Google, Bing, AOL and Yahoo search engines.\r\n\r\nYou can directly call us at : 1-614-245-0400\r\nOr\r\nPlease share your phone number so i can explain it to you better.\r\n\r\nThank you\r\nMarketing Team\r\nSarahBits INC\"', '2020-07-24 02:10:43', '2020-07-24 02:10:43'),
(4, '2', 1, 'Thank you for reaching out to us Sarah.\r\n\r\nPlease send a quote. I will be happy to share it with the relevant person.\r\n\r\nCheers', '2020-07-24 03:29:27', '2020-07-24 03:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `viewpin` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `name`, `email`, `ticket`, `subject`, `status`, `viewpin`, `last_reply`, `created_at`, `updated_at`) VALUES
(1, 2, 'Innocent Bamurike', 'dbamurike@gmail.com', '454337', 'Testing User Account', 3, 'REVAP424BN3W', '2020-07-23 15:44:05', '2020-07-21 17:29:34', '2020-07-23 15:46:33'),
(2, 0, 'Sophia Brown', 'sophiabrown.web@gmail.com', '703632', 'Improve your web traffic and SEO', 1, 'O8JNK3HP1S5Q', '2020-07-24 03:29:27', '2020-07-24 02:10:43', '2020-07-24 03:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `trxes`
--

CREATE TABLE `trxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_balance` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(18,8) DEFAULT '0.00000000',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci COMMENT 'contains full address',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `ev` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ref_id`, `firstname`, `lastname`, `username`, `email`, `mobile`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Ibrahim', 'Kaddu', 'ibrakd', 'ibrakd1@gmail.com', '0777750342', '0.00000000', '$2y$10$6htLp9Hv0y5hVH261ySiFu0rkpTtF5QImC9si0BptQs/6dxSY61PG', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2020-07-21 15:40:27', '2020-07-21 15:40:27'),
(2, 0, 'Innocent', 'Bamurike', 'dbamurike', 'dbamurike@gmail.com', '+256782312849', '0.00000000', '$2y$10$y9Uk4neqn3HcdE5vq.NqF.wN3ull3.MLxCYtzrblugTdye3Hgwghe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2020-07-21 17:25:48', '2020-07-21 17:25:48'),
(3, 0, 'Meilian', 'Jieqwe', 'werqweqwe', 'meiliangjie25@gmail.com', '234', '0.00000000', '$2y$10$FdGvAysMb4qv9HgcQeyc5uqC8WU3obJ38aRhHnvhX0BPZSVf3kOty', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2020-07-22 20:19:23', '2020-07-22 20:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, '41.202.241.9', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-21 15:40:27', '2020-07-21 15:40:27'),
(2, 2, '41.210.155.237', 'Kampala - - Uganda - UG ', 'Firefox', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-21 17:25:48', '2020-07-21 17:25:48'),
(3, 2, '41.210.155.237', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-21 18:34:28', '2020-07-21 18:34:28'),
(4, 2, '41.210.155.237', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-21 18:38:55', '2020-07-21 18:38:55'),
(5, 1, '41.202.241.9', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-21 18:49:18', '2020-07-21 18:49:18'),
(6, 2, '102.167.127.128', 'Nairobi - - Kenya - KE ', 'Firefox', 'Linux', '36.8155', '-1.2841', 'Kenya', 'KE', '2020-07-21 18:55:29', '2020-07-21 18:55:29'),
(7, 2, '41.210.145.94', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-22 18:35:14', '2020-07-22 18:35:14'),
(8, 3, '155.94.198.5', 'Los Angeles - - United States - US ', 'Chrome', 'Windows 10', '-118.2578', '34.0549', 'United States', 'US', '2020-07-22 20:19:24', '2020-07-22 20:19:24'),
(9, 2, '41.210.145.150', 'Kampala - - Uganda - UG ', 'Chrome', 'Windows 10', '32.5657', '0.3162', 'Uganda', 'UG', '2020-07-23 15:34:47', '2020-07-23 15:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `after_charge` decimal(18,8) NOT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `final_amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(18,8) DEFAULT NULL,
  `max_limit` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `delay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(18,8) DEFAULT NULL,
  `rate` decimal(18,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
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
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_sms_templates_act_unique` (`act`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontends_key_index` (`data_keys`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_code_unique` (`code`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_currencies_method_code_index` (`method_code`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_act_unique` (`act`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_commissions`
--
ALTER TABLE `referral_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_activates`
--
ALTER TABLE `staff_activates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trxes`
--
ALTER TABLE `trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `withdrawals_trx_unique` (`trx`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_commissions`
--
ALTER TABLE `referral_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_activates`
--
ALTER TABLE `staff_activates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trxes`
--
ALTER TABLE `trxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
