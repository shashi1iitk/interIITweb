-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 04:03 AM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `privilege` int(10) NOT NULL,
  `college_id` varchar(10) NOT NULL,
  `sports_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `role`, `privilege`, `college_id`, `sports_id`) VALUES
(1, 'IIT@BHU', 'jNesh2^&f2bL4fPQ', 'IIT BHU Admin', 1, '1', ''),
(2, 'IIT@Bhilai', '%6dggukmZWuSscm*', 'IIT Bhilai Admin', 1, '2', ''),
(3, 'IIT@Bhubaneshwar', 'Njm!Ukh7vTVnPX5f', 'IIT Bhubaneshwar Admin', 1, '3', ''),
(4, 'IIT@Bombay', '5!maMtTJwUQP!2E-', 'IIT Bombay Admin', 1, '4', ''),
(5, 'IIT@Delhi', '5!maMtTJwUQP!2E-', 'IIT Delhi Admin', 1, '5', ''),
(6, 'IIT@Dhanbad', 'gYUaXS+RqDD+cq8E', 'IIT Dhanbad Admin', 1, '6', ''),
(7, 'IIT@Dharwad', 'N2bxq_%h8k-&Qz?Q', 'IIT Dharwad Admin', 1, '7', ''),
(8, 'IIT@Gandhinagar', 'A9eTc=6^68*n9VRF', 'IIT Gandhinagar Admin', 1, '8', ''),
(9, 'IIT@Goa', '2^2X66&+v!DUWWwH', 'IIT Goa Admin', 1, '9', ''),
(10, 'IIT@Guwahati', 'c-3BvMek4rv#tX7S', 'IIT Guwahati Admin', 1, '10', ''),
(11, 'IIT@Hyderabad', 'rjY+#K49VKj$MRXM', 'IIT Hyderabad Admin', 1, '11', ''),
(12, 'IIT@Indore', 'e^^GVea&wgMQ6aNs', 'IIT Indore Admin', 1, '12', ''),
(13, 'IIT@Jammu', 'UwS7nncaRbQ_Ua@K', 'IIT Jammu Admin', 1, '13', ''),
(14, 'IIT@Jodhpur', 'CbYU9*Q9SPX?EhD-', 'IIT Jodhpur Admin', 1, '14', ''),
(15, 'IIT@Kanpur', 'CbYU9*Q9SPX?EhD-', 'IIT Kanpur Admin', 1, '15', ''),
(16, '1', '1', 'IIT Kharagpur Admin', 1, '16', ''),
(17, 'IIT@Madras', 'pp!e8wgJr7aUZas@', 'IIT Madras Admin', 1, '17', ''),
(18, 'IIT@Mandi', '3kne8Sd&Vth5Ew%W', 'IIT Mandi Admin', 1, '18', ''),
(19, 'IIT@Palakkad ', 's-XAv!$y9cDA5euV', 'IIT Palakkad  Admin', 1, '19', ''),
(20, 'IIT@Patna ', '7#NJ2nV62_Lr_TuY', 'IIT Patna Admin', 1, '20', ''),
(21, 'IIT@Roorkee', 'D&Xg_5B+GLQ9k2!s', 'IIT Roorkee Admin', 1, '21', ''),
(22, 'IIT@Ropar', 'SzBJh3y-ZC68?rAt', 'IIT Ropar Admin', 1, '22', ''),
(23, 'IIT@Tirupati', '=mUfm$c8Ye2?pwf7', 'IIT Tirupati Admin', 1, '23', '');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `clg_name` varchar(400) NOT NULL,
  `clg_nickname` varchar(200) NOT NULL,
  `logo_url` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `clg_name`, `clg_nickname`, `logo_url`) VALUES
(1, 'IIT BHU', 'BHU', 'img/clg/bhu.jpg'),
(2, 'IIT Bhilai', '', ''),
(3, 'IIT Bhubaneswar', '', ''),
(4, 'IIT Bombay', '', ''),
(5, 'IIT Delhi', '', ''),
(6, 'IIT Dhanbad', '', ''),
(7, 'IIT Dharwad', '', ''),
(8, 'IIT Gandhinagar', '', ''),
(9, 'IIT Goa', '', ''),
(10, 'IIT Guwahati', '', ''),
(11, 'IIT Hyderabad', '', ''),
(12, 'IIT Indore', '', ''),
(13, 'IIT Jammu', '', ''),
(14, 'IIT Jodhpur', '', ''),
(15, 'IIT Kanpur', '', ''),
(16, 'IIT Kharagpur', '', ''),
(17, 'IIT Madras', '', ''),
(18, 'IIT Mandi', '', ''),
(19, 'IIT Palakkad ', '', ''),
(20, 'IIT Patna ', '', ''),
(21, 'IIT Roorkee', '', ''),
(22, 'IIT Ropar', '', ''),
(23, 'IIT Tirupati', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `sports_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participation`
--

INSERT INTO `participation` (`id`, `player_id`, `sports_id`, `college_id`) VALUES
(3, 5, 18, 16),
(4, 5, 19, 16);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `college_id` int(2) NOT NULL,
  `selected_sports` varchar(100) NOT NULL,
  `roll_no` varchar(100) NOT NULL,
  `food` varchar(10) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `profile_image_url` varchar(200) NOT NULL,
  `jursey_name` varchar(50) NOT NULL,
  `special_inst` varchar(1000) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `reg_status` int(1) UNSIGNED ZEROFILL NOT NULL,
  `game_gold` int(3) UNSIGNED ZEROFILL NOT NULL,
  `game_silver` int(3) UNSIGNED ZEROFILL NOT NULL,
  `game_bronze` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `email`, `mobile`, `college_id`, `selected_sports`, `roll_no`, `food`, `blood_group`, `profile_image_url`, `jursey_name`, `special_inst`, `gender`, `reg_status`, `game_gold`, `game_silver`, `game_bronze`) VALUES
(3, 'GTJYFJGHJN', 'shashi1iitk@gmail.com', '45678', 16, 'staff', '16MI33014', 'Veg', 'A+', '3.jpg', 'fghj', 'fghjk', 'M', 0, 000, 000, 000),
(5, 'GFHJKL', 'sh.ashi1iitcvnbmkgp@gmail.com', '3456789', 16, '18,19', 'ghbjkl', 'Veg', 'A+', '5.jpg', 'gfhjk', 'fhgjk', 'M', 0, 000, 000, 000);

-- --------------------------------------------------------

--
-- Table structure for table `point_main`
--

CREATE TABLE `point_main` (
  `id` int(11) NOT NULL,
  `sports_id` int(11) NOT NULL,
  `c_1` int(11) NOT NULL,
  `c_2` int(11) NOT NULL,
  `c_3` int(11) NOT NULL,
  `c_4` int(11) NOT NULL,
  `c_5` int(11) NOT NULL,
  `c_6` int(11) NOT NULL,
  `c_7` int(11) NOT NULL,
  `c_8` int(11) NOT NULL,
  `c_9` int(11) NOT NULL,
  `c_10` int(11) NOT NULL,
  `c_11` int(11) NOT NULL,
  `c_12` int(11) NOT NULL,
  `c_13` int(11) NOT NULL,
  `c_14` int(11) NOT NULL,
  `c_15` int(11) NOT NULL,
  `c_16` int(11) NOT NULL,
  `c_17` int(11) NOT NULL,
  `c_18` int(11) NOT NULL,
  `c_19` int(11) NOT NULL,
  `c_20` int(11) NOT NULL,
  `c_21` int(11) NOT NULL,
  `c_22` int(11) NOT NULL,
  `c_23` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point_main`
--

INSERT INTO `point_main` (`id`, `sports_id`, `c_1`, `c_2`, `c_3`, `c_4`, `c_5`, `c_6`, `c_7`, `c_8`, `c_9`, `c_10`, `c_11`, `c_12`, `c_13`, `c_14`, `c_15`, `c_16`, `c_17`, `c_18`, `c_19`, `c_20`, `c_21`, `c_22`, `c_23`) VALUES
(1, 1, 4000, 0, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 6000),
(2, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `point_master`
--

CREATE TABLE `point_master` (
  `id` int(11) NOT NULL,
  `clg_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point_master`
--

INSERT INTO `point_master` (`id`, `clg_id`, `points`) VALUES
(1, 1, 40),
(2, 2, 40),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_individual`
--

CREATE TABLE `schedule_result_individual` (
  `id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `clgs_playing` varchar(400) NOT NULL,
  `players` varchar(1000) NOT NULL,
  `date_time` varchar(1000) NOT NULL,
  `venue` varchar(400) NOT NULL,
  `level` varchar(400) NOT NULL,
  `clg_1st` varchar(100) NOT NULL,
  `clg_2nd` varchar(100) NOT NULL,
  `clg_3rd` varchar(100) NOT NULL,
  `clg_4th` varchar(100) NOT NULL,
  `clg_1st_player_id` varchar(100) NOT NULL,
  `clg_2nd_player_id` varchar(100) NOT NULL,
  `clg_3rd_player_id` varchar(100) NOT NULL,
  `clg_4th_player_id` varchar(100) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `comments` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_result_individual`
--

INSERT INTO `schedule_result_individual` (`id`, `sport_id`, `clgs_playing`, `players`, `date_time`, `venue`, `level`, `clg_1st`, `clg_2nd`, `clg_3rd`, `clg_4th`, `clg_1st_player_id`, `clg_2nd_player_id`, `clg_3rd_player_id`, `clg_4th_player_id`, `status`, `comments`) VALUES
(1, 14, 'All', '1,12,15,16,12,41,42,48,46', '521642', 'jnan ghosh', 'heats', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_team`
--

CREATE TABLE `schedule_result_team` (
  `id` int(3) NOT NULL,
  `sports_id` int(3) NOT NULL,
  `clg_id1` int(3) NOT NULL,
  `clg_id2` int(3) NOT NULL,
  `date_time` datetime NOT NULL,
  `venue` varchar(400) NOT NULL,
  `level` varchar(400) NOT NULL,
  `score1` varchar(100) DEFAULT NULL,
  `score2` varchar(100) DEFAULT NULL,
  `winner_clg_id` int(2) UNSIGNED ZEROFILL DEFAULT '00',
  `runner_clg_id` int(2) UNSIGNED ZEROFILL DEFAULT '00',
  `status` varchar(2000) DEFAULT NULL,
  `commentry` varchar(10000) DEFAULT NULL,
  `lineup1` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_result_team`
--

INSERT INTO `schedule_result_team` (`id`, `sports_id`, `clg_id1`, `clg_id2`, `date_time`, `venue`, `level`, `score1`, `score2`, `winner_clg_id`, `runner_clg_id`, `status`, `commentry`, `lineup1`) VALUES
(0, 4, 2, 10, '2019-06-10 06:57:32', 'tata steel', 'league', '100', '4000', 02, 00, '', 'fdghjdrtfhgjdrttfgjhdrthfjg', ''),
(1, 1, 5, 10, '2019-06-10 02:57:32', 'JANAN GHOSE', 'final', '216/5', '215/10', 10, 00, 'KGP won by 5 wickets', 'ghhfyhjgmhm', 'img/scorecard/1.jpg'),
(9, 4, 2, 10, '2019-06-09 06:57:32', 'gymkhana', 'final', '1000', '500', 04, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(10, 4, 2, 10, '2019-06-09 06:57:32', 'tata steel', '3rd place', '200', '4000', 00, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(11, 4, 2, 10, '2019-06-09 06:57:32', 'gymkhana', '3rd place', '10', '40', 00, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(12, 4, 2, 10, '2019-06-09 06:57:32', 'Basketball court', 'semi-final', '10', '40', 00, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(13, 4, 2, 10, '2019-06-09 06:57:32', 'tata steel', '3rd place', '10', '4000', 00, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(14, 4, 2, 10, '2019-06-09 06:57:32', 'Basketball court', 'semi-final', '10', '40', 00, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', ''),
(15, 4, 2, 10, '2019-06-09 06:57:32', 'Tennis court', 'semi-final', '10', '40', 04, 00, '', 'iuljknuyhjknmuikjknuykgjhgmhm', '');

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
(1, 'Swimming 50m Freestyle', 'M', 2, 'i'),
(2, 'Swimming 100m Freestyle', 'M', 2, 'i'),
(3, 'Swimming 200m Freestyle', 'M', 2, 'i'),
(4, 'Swimming 400m Freestyle', 'M', 2, 'i'),
(5, 'Swimming 1500m Freestyle', 'M', 2, 'i'),
(6, 'Swimming 50m Backstroke', 'M', 2, 'i'),
(7, 'Swimming 100m Backstroke', 'M', 2, 'i'),
(8, 'Swimming 200m Backstroke', 'M', 2, 'i'),
(9, 'Swimming 50m Breaststroke', 'M', 2, 'i'),
(10, 'Swimming 100m Breaststroke', 'M', 2, 'i'),
(11, 'Swimming 200m Breaststroke', 'M', 2, 'i'),
(12, 'Swimming 50m Butterfly', 'M', 2, 'i'),
(13, 'Swimming 100m Butterfly', 'M', 2, 'i'),
(14, 'Swimming 200m Individual Mixed', 'M', 2, 'i'),
(15, 'Swimming 4x100m Freestyle relay', 'M', 4, 't'),
(16, 'Swimming 4x100m Medley Relay', 'M', 4, 't'),
(17, 'Swimming 50m Freestyle', 'W', 2, 't'),
(18, 'Swimming 100m Freestyle', 'W', 2, 'i'),
(19, 'Swimming 50m Backstroke', 'W', 2, 'i'),
(20, 'Swimming 50m Breaststroke', 'W', 2, 'i'),
(21, 'Swimming 50m Butterfly', 'W', 2, 'i'),
(22, 'Swimming 4x50m Freestyle relay', 'W', 4, 't'),
(23, 'Swimming 4x50m Medley Relay', 'W', 4, 't'),
(24, 'Water Polo', 'M', 13, 't');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `player_id`, `college_id`) VALUES
(3, 3, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `point_main`
--
ALTER TABLE `point_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_master`
--
ALTER TABLE `point_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_result_individual`
--
ALTER TABLE `schedule_result_individual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_result_team`
--
ALTER TABLE `schedule_result_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `point_main`
--
ALTER TABLE `point_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `point_master`
--
ALTER TABLE `point_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `schedule_result_individual`
--
ALTER TABLE `schedule_result_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
