-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 12:20 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.3.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcip`
--

-- --------------------------------------------------------

--
-- Table structure for table `dcip_categories`
--

CREATE TABLE `dcip_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcip_categories`
--

INSERT INTO `dcip_categories` (`id`, `name`, `parent`, `position`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Certification', 0, 1, '', '2020-03-11 14:19:16', '2020-03-11 14:19:16', 1),
(2, 'Hiring', 0, 2, '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(3, 'Community', 0, 3, '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dcip_employees`
--

CREATE TABLE `dcip_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `employeeid` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `designation` varchar(150) NOT NULL,
  `employee_branch` varchar(150) DEFAULT NULL,
  `employee_doj` datetime DEFAULT NULL,
  `employee_dob` datetime DEFAULT NULL,
  `is_admin` int(11) NOT NULL,
  `employee_type` varchar(255) NOT NULL,
  `employee_photo` varchar(255) NOT NULL,
  `total_points` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcip_employees`
--

INSERT INTO `dcip_employees` (`id`, `name`, `employeeid`, `password`, `designation`, `employee_branch`, `employee_doj`, `employee_dob`, `is_admin`, `employee_type`, `employee_photo`, `total_points`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Abbas Ali S', 'DCKAPIN632', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Technical Architect', NULL, NULL, NULL, 1, 'DCKAPIN632', 'DCKAPIN632', 0, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(2, 'Vijayashanthi', 'DCKAPIN123', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Software Engineer', NULL, NULL, NULL, 1, 'DCKAPIN123', 'DCKAPIN123', 1000, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(3, 'Vigmeswaran', 'DCKAPIN124', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Senior Software Engineer', NULL, NULL, NULL, 1, 'DCKAPIN124', 'DCKAPIN124', 1500, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(4, 'Jayashree', 'DCKAPIN125', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Software Engineer', NULL, NULL, NULL, 1, 'DCKAPIN125', 'DCKAPIN125', 500, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(5, 'Edmund', 'DCKAPIN126', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Marketing', NULL, NULL, NULL, 1, 'DCKAPIN126', 'DCKAPIN126', 500, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(6, 'Gowtham', 'DCKAPIN127', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Account Manager', NULL, NULL, NULL, 1, 'DCKAPIN127', 'DCKAPIN127', 50, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1),
(7, 'Yuvanesh', 'DCKAPIN128', 'fd3e10a1af60c64fabf4de1b81fc73ea633015dc5534be86eab7ad4ea160f5b9', 'Software Engineer', NULL, NULL, NULL, 1, 'DCKAPIN128', 'DCKAPIN128', 50, '2020-03-11 14:17:07', '2020-03-11 14:17:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dcip_items`
--

CREATE TABLE `dcip_items` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcip_items`
--

INSERT INTO `dcip_items` (`id`, `category_id`, `Item_name`, `description`, `point`, `created_at`, `status`) VALUES
(1, 1, 'M2 Associate Developer', '', 1000, '2020-03-12 00:00:00', 1),
(2, 1, 'M2 Professional Developer', '', 1500, '2020-03-12 00:00:00', 1),
(3, 3, 'Cricket Club', '', 50, '2020-03-12 00:00:00', 1),
(4, 3, 'Rhino Foot ball', '', 50, '2020-03-12 00:00:00', 1),
(5, 2, 'Hire a star', '', 500, '2020-03-12 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dcip_transactions`
--

CREATE TABLE `dcip_transactions` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `Item_id` int(11) NOT NULL,
  `asssigned_point` int(11) NOT NULL,
  `description` text NOT NULL,
  `reference_image` varchar(255) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `karma_time` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcip_transactions`
--

INSERT INTO `dcip_transactions` (`id`, `employee_id`, `Item_id`, `asssigned_point`, `description`, `reference_image`, `reference_url`, `karma_time`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 1, 1000, 'M2 Associate Developer', '', 'https://u.magento.com/certification/directory/dev/3357592/', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(2, 3, 2, 1000, 'M2 Professional Developer', '', 'https://u.magento.com/certification/directory/dev/3228867/', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(3, 4, 5, 500, 'Hire a star', '', '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(4, 5, 5, 500, 'Hire a star', '', '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(5, 6, 4, 50, 'Rhino Foot ball', '', '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1),
(6, 7, 3, 50, 'Cricket Club', '', '', '2020-03-12 00:00:00', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dcip_categories`
--
ALTER TABLE `dcip_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcip_employees`
--
ALTER TABLE `dcip_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcip_items`
--
ALTER TABLE `dcip_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcip_transactions`
--
ALTER TABLE `dcip_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dcip_categories`
--
ALTER TABLE `dcip_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dcip_employees`
--
ALTER TABLE `dcip_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dcip_items`
--
ALTER TABLE `dcip_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dcip_transactions`
--
ALTER TABLE `dcip_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
