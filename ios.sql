-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2021 at 07:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myIosApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ios`
--

CREATE TABLE `ios` (
  `id` int(255) NOT NULL,
  `year` int(255) NOT NULL,
  `month` int(255) NOT NULL,
  `day` int(255) NOT NULL,
  `hour` int(255) NOT NULL,
  `minute` int(255) NOT NULL,
  `second` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ios`
--

INSERT INTO `ios` (`id`, `year`, `month`, `day`, `hour`, `minute`, `second`) VALUES
(1, 2021, 4, 9, 9, 53, 0),
(2, 2021, 4, 9, 9, 55, 0),
(3, 2021, 4, 9, 9, 56, 0),
(4, 2021, 4, 9, 10, 6, 0),
(6, 2021, 4, 9, 10, 33, 0),
(7, 2021, 4, 9, 10, 50, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ios`
--
ALTER TABLE `ios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ios`
--
ALTER TABLE `ios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
