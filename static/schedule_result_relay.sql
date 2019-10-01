-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 02:42 AM
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
-- Table structure for table `schedule_result_relay`
--

CREATE TABLE `schedule_result_relay` (
  `id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `clgs_playing` varchar(1000) NOT NULL,
  `players` varchar(4000) NOT NULL,
  `date_time` datetime NOT NULL,
  `venue` varchar(400) NOT NULL,
  `level` varchar(400) NOT NULL,
  `clg_1st` int(5) NOT NULL,
  `clg_2nd` int(5) NOT NULL,
  `clg_3rd` int(5) NOT NULL,
  `clg_4th` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `comments` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule_result_relay`
--
ALTER TABLE `schedule_result_relay`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule_result_relay`
--
ALTER TABLE `schedule_result_relay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
