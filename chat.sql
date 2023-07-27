-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 12:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `frinds`
--

CREATE TABLE `frinds` (
  `id` int(11) NOT NULL,
  `myid` text NOT NULL,
  `fphone` text NOT NULL,
  `fname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `frinds`
--

INSERT INTO `frinds` (`id`, `myid`, `fphone`, `fname`) VALUES
(13, '3', '+20 128 219 8282', '6. Be اسلام ناجي'),
(14, '3', '+20 101 324 4938', 'Ahmed Mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `pass` text NOT NULL,
  `photo` text NOT NULL,
  `age` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `pass`, `photo`, `age`) VALUES
(3, 'mohamed', '01140374362', '123qw123qw', 'm', '21'),
(4, 'saif', '01149308251', '123qw123qw', 'm', '6'),
(5, 'hanafy', '01158037836', '123qw123qw', 'm', '50'),
(6, '', '', '', 'm', ''),
(7, 'yggvv', '88', 'vv', 'm', '98'),
(8, 'ybb', '999', 'bb', 'm', '9'),
(9, 'gh', '88', 'vv', 'm', '8'),
(10, 'ysgw', '9494', 'gqgq', 'm', '8'),
(11, 'ush', '979', 'gsg', 'm', '676'),
(12, 'ygc', '88', 'ff', 'm', '5'),
(13, 'gfggvv', '5880', 'tvv', 'm', '66'),
(14, 'gfc', '98', 'ff', 'm', '88'),
(15, 'yahya', '2507391', 'gqgwy7', 'm', '25'),
(16, 'ali', '01123456789', '123', 'm', '25'),
(17, 'ali', '01123456789', '123', 'm', '25'),
(18, 'ali', '01123456789', '123', 'm', '25'),
(19, 'mohamed', '0114802789', 'gaghag', 'm', '9494'),
(20, 'gfc', '855', 'ddf', 'm', '888'),
(21, 'fxsd', '88', 'ddz', 'm', '2'),
(22, '', '', '', 'm', ''),
(23, 'ياسو', '123456', '123456', 'm', '25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frinds`
--
ALTER TABLE `frinds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_id` (`myid`(1024));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frinds`
--
ALTER TABLE `frinds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
