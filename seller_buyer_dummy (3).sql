-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 01:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seller_buyer_dummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `product` varchar(100) DEFAULT NULL,
  `hsn_code` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `buyer_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `product`, `hsn_code`, `country`, `company_name`, `website`, `created_at`, `buyer_date`) VALUES
(1, 'Spices', '9103010', 'china', 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd', 'https://abc.com/', '2026-05-30 15:46:43', '2025-11-29'),
(2, 'Bedsheet', '6304 1940', 'South Africa', 'HUL International Pty Ltd.', 'https://abc.com/', '2026-05-30 15:46:44', '2025-11-29'),
(3, 'Agarbati', '330741', 'USA', 'Folkhomes Global Inc', 'https://abc.com/', '2026-05-30 15:46:44', '2025-11-29'),
(4, 'MORINGA', '12119029', 'Qatar', 'Vaigai Trading', 'https://abc.com/', '2026-05-30 15:46:44', '2025-11-29'),
(5, 'PERFUME', '33030010 / 90 / 30', 'UAE', 'LATTAFA PERFUMES IND LLC', 'https://abc.com/', '2026-05-30 15:46:44', '2025-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_contacts`
--

CREATE TABLE `buyer_contacts` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `contact_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_contacts`
--

INSERT INTO `buyer_contacts` (`id`, `buyer_id`, `contact_number`) VALUES
(1, 1, '+916301402298'),
(2, 2, '+919160188248'),
(3, 3, '+919290812425'),
(4, 4, '+919391489533'),
(5, 5, '+919390311961');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_emails`
--

CREATE TABLE `buyer_emails` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_emails`
--

INSERT INTO `buyer_emails` (`id`, `buyer_id`, `email`) VALUES
(1, 1, 'bharathsiripuram98@gmail.com'),
(2, 2, 'siripuramlingaiah@gmail.com'),
(3, 3, 'neerajasuresh533@gmail.com'),
(4, 4, 'hopoffoukeze-7952@yopmail.com'),
(5, 5, 'uppalahemanth4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `company_contacts`
--

CREATE TABLE `company_contacts` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_contacts`
--

INSERT INTO `company_contacts` (`id`, `company_name`, `email`) VALUES
(1, 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd.', 'bharathsiripuram98@gmail.com'),
(2, 'HUL International Pty Ltd.', 'siripuramlingaiah@gmail.com'),
(3, 'Folkhomes Global Inc', 'neerajasuresh533@gmail.com'),
(4, 'Vaigai Trading', 'hopoffoukeze-7952@yopmail.com'),
(5, 'LATTAFA PERFUMES IND LLC', 'uppalahemanth4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `email_history`
--

CREATE TABLE `email_history` (
  `id` bigint(20) NOT NULL,
  `product` varchar(255) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `batch_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_history_companies`
--

CREATE TABLE `email_history_companies` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `reply_date` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT current_timestamp(),
  `status` enum('pending','sent','failed') DEFAULT 'pending',
  `template_used` text DEFAULT NULL,
  `response` enum('interested','not_interested') DEFAULT NULL,
  `responded_at` datetime DEFAULT NULL,
  `batch_id` varchar(255) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `multiple_products` tinyint(1) DEFAULT 0,
  `template_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_history_companies`
--

INSERT INTO `email_history_companies` (`id`, `company_name`, `country`, `contact_name`, `email`, `from_email`, `to_email`, `subject`, `message`, `product_name`, `reply_date`, `sent_at`, `status`, `template_used`, `response`, `responded_at`, `batch_id`, `buyer_id`, `multiple_products`, `template_id`) VALUES
(93, 'LATTAFA PERFUMES IND LLC', 'UAE', '+919390311961', 'uppalahemanth4@gmail.com', NULL, NULL, NULL, NULL, 'PERFUME', NULL, '2026-06-12 11:34:16', 'sent', 'Welcome Template', NULL, NULL, '4904c792-0137-443f-b021-fbb69e0a2994', 5, 1, 1),
(94, 'Vaigai Trading', 'Qatar', '+919391489533', 'hopoffoukeze-7952@yopmail.com', NULL, NULL, NULL, NULL, 'MORINGA', NULL, '2026-06-12 11:34:20', 'sent', 'Welcome Template', NULL, NULL, '4904c792-0137-443f-b021-fbb69e0a2994', 4, 1, 1),
(95, 'Folkhomes Global Inc', 'USA', '+919290812425', 'neerajasuresh533@gmail.com', NULL, NULL, NULL, NULL, 'Agarbati', NULL, '2026-06-12 11:34:24', 'sent', 'Welcome Template', NULL, NULL, '4904c792-0137-443f-b021-fbb69e0a2994', 3, 1, 1),
(96, 'HUL International Pty Ltd.', 'South Africa', '+919160188248', 'siripuramlingaiah@gmail.com', NULL, NULL, NULL, NULL, 'Bedsheet', NULL, '2026-06-12 11:34:28', 'sent', 'Welcome Template', NULL, NULL, '4904c792-0137-443f-b021-fbb69e0a2994', 2, 1, 1),
(97, 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd', 'china', '+916301402298', 'bharathsiripuram98@gmail.com', NULL, NULL, NULL, NULL, 'Spices', NULL, '2026-06-12 11:34:32', 'sent', 'Welcome Template', NULL, NULL, '4904c792-0137-443f-b021-fbb69e0a2994', 1, 1, 1),
(98, 'LATTAFA PERFUMES IND LLC', 'UAE', '+919390311961', 'uppalahemanth4@gmail.com', NULL, NULL, NULL, NULL, 'PERFUME', NULL, '2026-06-12 11:35:07', 'sent', 'Follow Up Template', NULL, NULL, '76604555-da02-4f72-a506-bad398dd6982', 5, 1, 2),
(99, 'Vaigai Trading', 'Qatar', '+919391489533', 'hopoffoukeze-7952@yopmail.com', NULL, NULL, NULL, NULL, 'MORINGA', NULL, '2026-06-12 11:35:11', 'sent', 'Follow Up Template', NULL, NULL, '76604555-da02-4f72-a506-bad398dd6982', 4, 1, 2),
(100, 'Folkhomes Global Inc', 'USA', '+919290812425', 'neerajasuresh533@gmail.com', NULL, NULL, NULL, NULL, 'Agarbati', NULL, '2026-06-12 11:35:15', 'sent', 'Follow Up Template', NULL, NULL, '76604555-da02-4f72-a506-bad398dd6982', 3, 1, 2),
(101, 'HUL International Pty Ltd.', 'South Africa', '+919160188248', 'siripuramlingaiah@gmail.com', NULL, NULL, NULL, NULL, 'Bedsheet', NULL, '2026-06-12 11:35:19', 'sent', 'Follow Up Template', NULL, NULL, '76604555-da02-4f72-a506-bad398dd6982', 2, 1, 2),
(102, 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd', 'china', '+916301402298', 'bharathsiripuram98@gmail.com', NULL, NULL, NULL, NULL, 'Spices', NULL, '2026-06-12 11:35:23', 'sent', 'Follow Up Template', NULL, NULL, '76604555-da02-4f72-a506-bad398dd6982', 1, 1, 2),
(103, 'LATTAFA PERFUMES IND LLC', 'UAE', '+919390311961', 'uppalahemanth4@gmail.com', NULL, NULL, NULL, NULL, 'PERFUME', NULL, '2026-06-12 11:35:33', 'sent', 'Reminder Template', NULL, NULL, '61e0697c-0f1d-4aab-bed9-0dc292fe0a0b', 5, 1, 4),
(104, 'Vaigai Trading', 'Qatar', '+919391489533', 'hopoffoukeze-7952@yopmail.com', NULL, NULL, NULL, NULL, 'MORINGA', NULL, '2026-06-12 11:35:37', 'sent', 'Reminder Template', NULL, NULL, '61e0697c-0f1d-4aab-bed9-0dc292fe0a0b', 4, 1, 4),
(105, 'Folkhomes Global Inc', 'USA', '+919290812425', 'neerajasuresh533@gmail.com', NULL, NULL, NULL, NULL, 'Agarbati', NULL, '2026-06-12 11:35:41', 'sent', 'Reminder Template', NULL, NULL, '61e0697c-0f1d-4aab-bed9-0dc292fe0a0b', 3, 1, 4),
(106, 'HUL International Pty Ltd.', 'South Africa', '+919160188248', 'siripuramlingaiah@gmail.com', NULL, NULL, NULL, NULL, 'Bedsheet', NULL, '2026-06-12 11:35:45', 'sent', 'Reminder Template', NULL, NULL, '61e0697c-0f1d-4aab-bed9-0dc292fe0a0b', 2, 1, 4),
(107, 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd', 'china', '+916301402298', 'bharathsiripuram98@gmail.com', NULL, NULL, NULL, NULL, 'Spices', NULL, '2026-06-12 11:35:49', 'sent', 'Reminder Template', NULL, NULL, '61e0697c-0f1d-4aab-bed9-0dc292fe0a0b', 1, 1, 4),
(108, 'LATTAFA PERFUMES IND LLC', 'UAE', '+919390311961', 'uppalahemanth4@gmail.com', NULL, NULL, NULL, NULL, 'PERFUME', NULL, '2026-06-12 11:35:59', 'sent', 'Closing Template', NULL, NULL, 'fda3f3ed-f27b-4fe3-90ee-2cce0b257ef8', 5, 1, 5),
(109, 'Vaigai Trading', 'Qatar', '+919391489533', 'hopoffoukeze-7952@yopmail.com', NULL, NULL, NULL, NULL, 'MORINGA', NULL, '2026-06-12 11:36:02', 'sent', 'Closing Template', NULL, NULL, 'fda3f3ed-f27b-4fe3-90ee-2cce0b257ef8', 4, 1, 5),
(110, 'Folkhomes Global Inc', 'USA', '+919290812425', 'neerajasuresh533@gmail.com', NULL, NULL, NULL, NULL, 'Agarbati', NULL, '2026-06-12 11:36:06', 'sent', 'Closing Template', NULL, NULL, 'fda3f3ed-f27b-4fe3-90ee-2cce0b257ef8', 3, 1, 5),
(111, 'HUL International Pty Ltd.', 'South Africa', '+919160188248', 'siripuramlingaiah@gmail.com', NULL, NULL, NULL, NULL, 'Bedsheet', NULL, '2026-06-12 11:36:10', 'sent', 'Closing Template', NULL, NULL, 'fda3f3ed-f27b-4fe3-90ee-2cce0b257ef8', 2, 1, 5),
(112, 'Guangxi BaiXiangHui Import & Export Trading Co., Ltd', 'china', '+916301402298', 'bharathsiripuram98@gmail.com', NULL, NULL, NULL, NULL, 'Spices', NULL, '2026-06-12 11:36:13', 'sent', 'Closing Template', NULL, NULL, 'fda3f3ed-f27b-4fe3-90ee-2cce0b257ef8', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `email_replies`
--

CREATE TABLE `email_replies` (
  `id` int(11) NOT NULL,
  `batch_id` varchar(255) NOT NULL,
  `history_id` int(11) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `reply_date` datetime DEFAULT NULL,
  `replied_at` datetime DEFAULT NULL,
  `interest` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `body`, `created_at`) VALUES
(1, 'Welcome Template', 'Welcome to {{product}}', 'Hi {{contact_name}},\n\nWelcome to our platform. We are happy to have you.\n\nRegards,\nTeam', '2026-04-07 10:59:46'),
(2, 'Follow Up Template', 'Follow up regarding {{product}}', 'Hi {{contact_name}},\n\nJust checking if you are interested in {{product}}.\n\nThanks', '2026-04-07 10:59:46'),
(3, 'Offer Template', 'Special Offer on {{product}}', 'Hi {{contact_name}},\n\nWe have a special discount for you on {{product}}.\n\nGrab it now!', '2026-04-07 10:59:46'),
(4, 'Reminder Template', 'Reminder for {{product}}', 'Hi {{contact_name}},\n\nThis is a reminder for your interest in {{product}}.\n\nThanks', '2026-04-07 10:59:46'),
(5, 'Closing Template', 'Final Follow-up', 'Hi {{contact_name}},\n\nThis is our final follow-up regarding {{product}}.\n\nLet us know your decision.', '2026-04-07 10:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_contacts`
--
ALTER TABLE `buyer_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_emails`
--
ALTER TABLE `buyer_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_history`
--
ALTER TABLE `email_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batch_id` (`batch_id`),
  ADD KEY `idx_batch_id` (`batch_id`);

--
-- Indexes for table `email_history_companies`
--
ALTER TABLE `email_history_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `idx_buyer_id` (`buyer_id`);

--
-- Indexes for table `email_replies`
--
ALTER TABLE `email_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_batch_email` (`batch_id`,`from_email`),
  ADD KEY `idx_batch` (`batch_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buyer_contacts`
--
ALTER TABLE `buyer_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buyer_emails`
--
ALTER TABLE `buyer_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_contacts`
--
ALTER TABLE `company_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_history`
--
ALTER TABLE `email_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99877471;

--
-- AUTO_INCREMENT for table `email_history_companies`
--
ALTER TABLE `email_history_companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `email_replies`
--
ALTER TABLE `email_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer_contacts`
--
ALTER TABLE `buyer_contacts`
  ADD CONSTRAINT `buyer_contacts_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_emails`
--
ALTER TABLE `buyer_emails`
  ADD CONSTRAINT `buyer_emails_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
