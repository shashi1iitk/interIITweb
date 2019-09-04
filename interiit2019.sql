-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2019 at 01:26 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 'iiitjgp_representative', 'hjhgjgjm', 'IITKGP Representative', 2, '16', ''),
(2, 'kgp staff', 'ghjghgjg', 'Cricket score updater', 3, '', '35'),
(3, 'IITKGP', 'IITKGP', 'IIT Kharagpur Coach', 1, '16', '');

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
(3, 'IIT Bhubaneshwar', '', ''),
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
(1, 1, 26, 16),
(2, 1, 27, 16),
(3, 2, 29, 16);

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
  `password` varchar(50) NOT NULL,
  `food` varchar(10) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `profile_image_url` varchar(200) NOT NULL,
  `jursey_name` varchar(50) NOT NULL,
  `biggest_motivator` varchar(400) NOT NULL,
  `fav_athelete` varchar(100) NOT NULL,
  `fitness_mantra` varchar(400) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `reg_status` int(1) UNSIGNED ZEROFILL NOT NULL,
  `game_gold` int(3) UNSIGNED ZEROFILL NOT NULL,
  `game_silver` int(3) UNSIGNED ZEROFILL NOT NULL,
  `game_bronze` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `email`, `mobile`, `college_id`, `selected_sports`, `password`, `food`, `blood_group`, `profile_image_url`, `jursey_name`, `biggest_motivator`, `fav_athelete`, `fitness_mantra`, `gender`, `reg_status`, `game_gold`, `game_silver`, `game_bronze`) VALUES
(1, 'Aadi', 'adsf@dfd.in', '1234567896', 16, '26,27', '17E34CC66DA88B7E', 'Non-Veg', 'B+', '1.jpg', 'vhjvhj', 'mvhjv', 'nbvjhv', 'mnvhj', 'M', 0, 000, 000, 000),
(2, 'Shashi', 'adsf@dfd.inj', '123456965', 16, '29', '533F85D4AE9A5ACA', 'Non-Veg', 'A-', '2.jpg', 'hjvjhv', 'mvhjv', 'nbvjhv', 'nm k ', 'M', 0, 000, 000, 000);

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
  `winner_clg_id` int(2) UNSIGNED ZEROFILL DEFAULT 00,
  `runner_clg_id` int(2) UNSIGNED ZEROFILL DEFAULT 00,
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
(1, 'Athletics 100 M', 'M', 2, 'individual'),
(2, 'Athletics 200 M', 'M', 2, 'individual'),
(3, 'Athletics 400 M', 'M', 2, 'individual'),
(4, 'Athletics 800 M', 'M', 2, 'individual'),
(5, 'Athletics 1500 M', 'M', 2, 'individual'),
(6, 'Athletics 5000 M', 'M', 2, 'individual'),
(7, 'Athletics 110 M Hurdles', 'M', 2, 'individual'),
(8, 'Athletics 400 M Hurdles', 'M', 2, 'individual'),
(9, 'Athletics 4X100 M Relay', 'M', 2, 'team'),
(10, 'Athletics 4X400 M Relay', 'M', 2, 'team'),
(11, 'Athletics High Jump', 'M', 2, 'individual'),
(12, 'Athletics Long Jump', 'M', 2, 'individual'),
(13, 'Athletics Triple Jump', 'M', 2, 'individual'),
(14, 'Athletics Pole Vault', 'M', 2, 'individual'),
(15, 'Athletics Shot Put', 'M', 2, 'individual'),
(16, 'Athletics Discus Throw', 'M', 2, 'individual'),
(17, 'Athletics Javelin Throw', 'M', 2, 'individual'),
(18, 'Athletics Hammer Throw', 'M', 2, 'individual'),
(19, 'Athletics 100 M', 'W', 2, 'individual'),
(20, 'Athletics 200 M', 'W', 2, 'individual'),
(21, 'Athletics 400 M', 'W', 2, 'individual'),
(22, 'Athletics 800 M', 'W', 2, 'individual'),
(23, 'Athletics 1500 M', 'W', 2, 'individual'),
(24, 'Athletics Long Jump', 'W', 2, 'individual'),
(25, 'Athletics High Jump', 'W', 2, 'individual'),
(26, 'Athletics Shotput', 'W', 2, 'individual'),
(27, 'Athletics Discus Throw', 'W', 2, 'individual'),
(28, 'Athletics 4 X 100M Relay', 'W', 2, 'team'),
(29, 'Athletics 4 X 400M Relay', 'W', 2, 'team'),
(30, 'Badminton', 'M', 5, 'team'),
(31, 'Badminton', 'W', 3, 'team'),
(32, 'Basketball', 'M', 12, 'team'),
(33, 'Basketball', 'W', 11, 'team'),
(34, 'Cricket', 'M', 15, 'team'),
(35, 'Football', 'M', 16, 'team'),
(36, 'Hockey', 'M', 16, 'team'),
(37, 'Squash', 'M', 4, 'team'),
(38, 'Swimming', 'M', 2, 'individual'),
(39, 'Swimming', 'W', 2, 'individual'),
(40, 'Table Tennis', 'M', 3, 'team'),
(41, 'Table Tennis', 'W', 3, 'team'),
(42, 'Tennis', 'M', 4, 'team'),
(43, 'Tennis', 'W', 4, 'team'),
(44, 'Volleyball', 'M', 12, 'team'),
(45, 'Volleyball', 'W', 12, 'team'),
(46, 'Water Polo', 'M', 13, 'team'),
(47, 'Weightlifting Up to 56 Kg', 'M', 1, 'individual'),
(48, 'Weightlifting Up to 62 Kg', 'M', 1, 'individual'),
(49, 'Weightlifting Up to 69 Kg', 'M', 1, 'individual'),
(50, 'Weightlifting Up to 77 Kg', 'M', 1, 'individual'),
(51, 'Weightlifting Above 77 Kg\r\n', 'M', 1, 'Individual');

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
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
