-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 08:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campaigners_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(128) NOT NULL,
  `percentage` varchar(4) NOT NULL,
  `valid_till` varchar(128) NOT NULL,
  `image` text NOT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `code`, `percentage`, `valid_till`, `image`, `is_deleted`) VALUES
(1, 'Subway', 'CampaignersXsub21', '20', 'for 1 month', 'subway.jpg', 0),
(2, 'Uncle Tonny', 'CampaignersXuncletonny', '10', 'for 2 weeks', 'uncle.jpg', 0),
(3, 'Gelato Mio', 'GelatoMioXCampaigners', '20', 'till 30/4', 'gelato.jpg', 0),
(4, 'Cue games', 'CuegamesXCampaigners', '15', 'for 2 weeks', 'def.jpg', 0),
(5, 'Tricycle Burger', 'CampaignersXtricycleburger', '15', 'for 1 month', 'tricycle.jpg', 0),
(6, 'Shopella', 'shopellaXcampaigners', '10', 'for 1 month', 'shopella.jpg', 0),
(7, 'Cuts&nuts', 'CampaignersXcutsandnuts', '15', 'till the end of ramadan', 'Cuts&nuts.jpg', 0),
(8, 'Asteria gift shop', 'AsteriaXCampaigners', '20', 'for 2 weeks', 'asteria.jpg', 0),
(9, 'Sparkle store', 'SparkleXCampaigners', '10', 'for 2 weeks', 'Sparkle.jpg', 0),
(10, 'Shakshak', 'ShakshakXCampaigners', '15', 'for 1 week', 'shakshak.png', 0),
(11, 'Twinkles-accessories', 'TwinklesXCampaigners', '15', 'for 1 month', 'Twinkles.jpg', 0),
(12, 'Kaza loon', 'CampaignersXkazaloon', '20', 'for 2 weeks', 'kaza.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
