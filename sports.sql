-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:53 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interiit2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(10) NOT NULL,
  `sports_name` varchar(200) NOT NULL,
  `category` varchar(1) NOT NULL,
  `max_player` int(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `sports_name`, `category`, `max_player`, `type`) VALUES
(1, 'Athletics 100 M', 'M', 2, 'i'),
(2, 'Athletics 200 M', 'M', 2, 'i'),
(3, 'Athletics 400 M', 'M', 2, 'i'),
(4, 'Athletics 800 M', 'M', 2, 'i'),
(5, 'Athletics 1500 M', 'M', 2, 'i'),
(6, 'Athletics 5000 M', 'M', 2, 'i'),
(7, 'Athletics 110 M Hurdles', 'M', 2, 'i'),
(8, 'Athletics 400 M Hurdles', 'M', 2, 'i'),
(9, 'Athletics 4X100 M Relay', 'M', 2, 't'),
(10, 'Athletics 4X400 M Relay', 'M', 2, 't'),
(11, 'Athletics High Jump', 'M', 2, 'i'),
(12, 'Athletics Long Jump', 'M', 2, 'i'),
(13, 'Athletics Triple Jump', 'M', 2, 'i'),
(14, 'Athletics Pole Vault', 'M', 2, 'i'),
(15, 'Athletics Shot Put', 'M', 2, 'i'),
(16, 'Athletics Discus Throw', 'M', 2, 'i'),
(17, 'Athletics Javelin Throw', 'M', 2, 'i'),
(18, 'Athletics Hammer Throw', 'M', 2, 'i'),
(19, 'Athletics 100 M', 'W', 2, 'i'),
(20, 'Athletics 200 M', 'W', 2, 'i'),
(21, 'Athletics 400 M', 'W', 2, 'i'),
(22, 'Athletics 800 M', 'W', 2, 'i'),
(23, 'Athletics 1500 M', 'W', 2, 'i'),
(24, 'Athletics Long Jump', 'W', 2, 'i'),
(25, 'Athletics High Jump', 'W', 2, 'i'),
(26, 'Athletics Shotput', 'W', 2, 'i'),
(27, 'Athletics Discus Throw', 'W', 2, 'i'),
(28, 'Athletics 4 X 100M Relay', 'W', 2, 't'),
(29, 'Athletics 4 X 400M Relay', 'W', 2, 't'),
(30, 'Badminton', 'M', 5, 't'),
(31, 'Badminton', 'W', 3, 't'),
(32, 'Basketball', 'M', 12, 't'),
(33, 'Basketball', 'W', 11, 't'),
(34, 'Cricket', 'M', 15, 't'),
(35, 'Football', 'M', 16, 't'),
(36, 'Hockey', 'M', 16, 't'),
(37, 'Squash', 'M', 4, 't'),
(38, 'Squash', 'W', 3, 't'),
(40, 'Table Tennis', 'M', 4, 't'),
(41, 'Table Tennis', 'W', 3, 't'),
(42, 'Tennis', 'M', 4, 't'),
(43, 'Tennis', 'W', 4, 't'),
(44, 'Volleyball', 'M', 12, 't'),
(45, 'Volleyball', 'W', 12, 't'),
(47, 'Weightlifting Up to 56 Kg', 'M', 2, 'i'),
(48, 'Weightlifting Up to 62 Kg', 'M', 2, 'i'),
(49, 'Weightlifting Up to 69 Kg', 'M', 2, 'i'),
(50, 'Weightlifting Up to 77 Kg', 'M', 2, 'i'),
(51, 'Weightlifting Above 77 Kg\r\n', 'M', 2, 'i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
