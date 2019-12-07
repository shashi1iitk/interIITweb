-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2019 at 07:47 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

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
(16, 'IIT@Kharagpur', 'kljgoidjohn58445j', 'IIT Kharagpur Admin', 1, '16', ''),
(17, 'IIT@Madras', 'pp!e8wgJr7aUZas@', 'IIT Madras Admin', 1, '17', ''),
(18, 'IIT@Mandi', '3kne8Sd&Vth5Ew%W', 'IIT Mandi Admin', 1, '18', ''),
(19, 'IIT@Palakkad ', 's-XAv!$y9cDA5euV', 'IIT Palakkad  Admin', 1, '19', ''),
(20, 'IIT@Patna ', '7#NJ2nV62_Lr_TuY', 'IIT Patna Admin', 1, '20', ''),
(21, 'IIT@Roorkee', 'D&Xg_5B+GLQ9k2!s', 'IIT Roorkee Admin', 1, '21', ''),
(22, 'IIT@Ropar', 'SzBJh3y-ZC68?rAt', 'IIT Ropar Admin', 1, '22', ''),
(23, 'IIT@Tirupati', '=mUfm$c8Ye2?pwf7', 'IIT Tirupati Admin', 1, '23', ''),
(24, 'IIT@KGP', 'qr@scanner', 'QR Scanner', 2, '', ''),
(25, 'IIT@KGP1', 'score@update', 'Score Updater', 3, '', ''),
(26, 'IIT@KGP2', 'match@update', 'Match Updater', 4, '', '');

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
(1, 'IIT BHU', 'BHU', 'IIT_BHU.png'),
(2, 'IIT Bhilai', '', 'IIT_Bhilai.png'),
(3, 'IIT Bhubaneswar', '', 'IIT_Bhubhaneshwar.jpg'),
(4, 'IIT Bombay', '', 'IIT_Bombay.png'),
(5, 'IIT Delhi', '', 'IIT_Delhi.png'),
(6, 'IIT Dhanbad', '', 'IIT_Dhanbad.png'),
(7, 'IIT Dharwad', '', 'IIT_Dharwad.png'),
(8, 'IIT Gandhinagar', '', 'IIT_Ghandhinagar.png'),
(9, 'IIT Goa', '', 'IIT_Goa.png'),
(10, 'IIT Guwahati', '', 'IIT_Gawhati.png'),
(11, 'IIT Hyderabad', '', 'IIT_Hyderabad.png'),
(12, 'IIT Indore', '', 'IIT_Indore.png'),
(13, 'IIT Jammu', '', 'IIT_Jammu.png'),
(14, 'IIT Jodhpur', '', 'IIT_Jodhpur.jpg'),
(15, 'IIT Kanpur', '', 'IIT_Kanpur.jpg'),
(16, 'IIT Kharagpur', '', 'IIT_Kharagpur.png'),
(17, 'IIT Madras', '', 'IIT_Madras.png'),
(18, 'IIT Mandi', '', 'IIT_Mandi.png'),
(19, 'IIT Palakkad ', '', 'IIT_Pakkad.jpg'),
(20, 'IIT Patna ', '', 'IIT_Patna.jpg'),
(21, 'IIT Roorkee', '', 'IIT_Roorkee.jpg'),
(22, 'IIT Ropar', '', 'IIT_Ropar.png'),
(23, 'IIT Tirupati', '', 'IIT_Tirupati.jpg');

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
(24, 1, 9, 4),
(25, 1, 15, 4),
(26, 1, 16, 4),
(27, 1, 24, 4),
(28, 2, 2, 8),
(29, 2, 6, 8),
(30, 2, 9, 8),
(31, 3, 24, 15),
(33, 4, 1, 8),
(34, 4, 6, 8),
(35, 5, 1, 8),
(36, 6, 2, 9),
(37, 6, 3, 9),
(38, 6, 9, 9),
(44, 9, 1, 9),
(45, 9, 2, 9),
(46, 9, 6, 9),
(47, 10, 5, 15),
(48, 10, 12, 15),
(49, 10, 13, 15),
(50, 10, 15, 15),
(51, 10, 16, 15),
(52, 10, 24, 15),
(53, 11, 1, 9),
(54, 11, 3, 9),
(55, 11, 12, 9),
(56, 12, 24, 6),
(57, 14, 1, 6),
(58, 14, 2, 6),
(59, 14, 15, 6),
(60, 14, 24, 6),
(61, 15, 6, 15),
(62, 15, 7, 15),
(63, 15, 8, 15),
(64, 15, 15, 15),
(65, 15, 16, 15),
(66, 15, 24, 15),
(67, 16, 1, 6),
(68, 16, 5, 6),
(69, 16, 24, 6),
(70, 17, 6, 6),
(71, 17, 24, 6),
(72, 18, 1, 5),
(73, 18, 2, 5),
(74, 18, 3, 5),
(75, 18, 4, 5),
(76, 18, 12, 5),
(77, 18, 15, 5),
(78, 18, 16, 5),
(79, 18, 24, 5),
(80, 19, 24, 6),
(81, 20, 3, 5),
(82, 20, 4, 5),
(83, 20, 5, 5),
(84, 20, 15, 5),
(85, 20, 16, 5),
(86, 20, 24, 5),
(87, 21, 24, 6),
(88, 22, 9, 5),
(89, 22, 10, 5),
(90, 22, 11, 5),
(91, 22, 24, 5),
(92, 23, 1, 15),
(93, 23, 2, 15),
(94, 23, 15, 15),
(95, 23, 16, 15),
(96, 23, 24, 15),
(97, 24, 15, 6),
(98, 24, 24, 6),
(99, 25, 15, 6),
(100, 25, 24, 6),
(101, 26, 24, 15),
(102, 27, 24, 6),
(103, 28, 2, 5),
(104, 28, 9, 5),
(105, 28, 10, 5),
(106, 28, 13, 5),
(107, 28, 14, 5),
(108, 28, 15, 5),
(109, 28, 16, 5),
(110, 28, 24, 5),
(111, 29, 10, 15),
(112, 29, 11, 15),
(113, 29, 24, 15),
(114, 30, 24, 15),
(115, 31, 24, 6),
(116, 32, 1, 5),
(117, 32, 2, 5),
(118, 32, 3, 5),
(119, 32, 11, 5),
(120, 32, 12, 5),
(121, 32, 15, 5),
(122, 32, 16, 5),
(123, 33, 4, 5),
(124, 33, 5, 5),
(125, 33, 24, 5),
(126, 34, 1, 15),
(127, 34, 2, 15),
(128, 34, 15, 15),
(129, 34, 16, 15),
(130, 34, 24, 15),
(131, 35, 1, 6),
(132, 35, 15, 6),
(133, 35, 24, 6),
(134, 36, 24, 6),
(135, 37, 9, 5),
(136, 37, 11, 5),
(137, 37, 24, 5),
(138, 38, 24, 15),
(139, 39, 14, 5),
(140, 39, 24, 5),
(141, 40, 1, 6),
(142, 40, 3, 6),
(143, 40, 5, 6),
(144, 40, 15, 6),
(145, 40, 24, 6),
(146, 41, 3, 15),
(147, 41, 4, 15),
(148, 41, 5, 15),
(149, 41, 15, 15),
(150, 41, 24, 15),
(151, 42, 5, 5),
(152, 42, 11, 5),
(153, 42, 24, 5),
(154, 43, 17, 6),
(155, 43, 18, 6),
(156, 43, 20, 6),
(157, 46, 6, 5),
(158, 46, 7, 5),
(159, 46, 8, 5),
(160, 46, 16, 5),
(161, 46, 24, 5),
(162, 47, 9, 15),
(163, 47, 24, 15),
(164, 48, 24, 5),
(165, 49, 10, 5),
(166, 49, 13, 5),
(167, 49, 24, 5),
(168, 50, 1, 5),
(169, 50, 6, 5),
(170, 50, 7, 5),
(171, 50, 8, 5),
(172, 50, 15, 5),
(173, 50, 16, 5),
(174, 50, 24, 5),
(175, 51, 6, 5),
(176, 51, 7, 5),
(177, 51, 8, 5),
(178, 51, 12, 5),
(179, 51, 14, 5),
(180, 51, 15, 5),
(181, 51, 24, 5),
(182, 52, 18, 5),
(183, 52, 19, 5),
(184, 52, 20, 5),
(185, 52, 21, 5),
(186, 52, 22, 5),
(187, 52, 23, 5),
(188, 53, 9, 15),
(189, 53, 10, 15),
(190, 53, 11, 15),
(191, 53, 15, 15),
(192, 53, 16, 15),
(193, 53, 24, 15),
(194, 54, 9, 15),
(195, 54, 10, 15),
(196, 54, 11, 15),
(197, 54, 16, 15),
(198, 54, 24, 15),
(199, 55, 17, 5),
(200, 55, 18, 5),
(201, 55, 19, 5),
(202, 55, 21, 5),
(203, 55, 22, 5),
(204, 55, 23, 5),
(205, 56, 17, 5),
(206, 56, 18, 5),
(207, 56, 19, 5),
(208, 56, 20, 5),
(209, 56, 22, 5),
(210, 56, 23, 5),
(211, 57, 17, 5),
(212, 57, 20, 5),
(213, 57, 21, 5),
(214, 57, 22, 5),
(215, 57, 23, 5),
(216, 58, 19, 15),
(217, 58, 20, 15),
(218, 58, 21, 15),
(219, 58, 22, 15),
(220, 58, 23, 15),
(221, 59, 19, 15),
(222, 59, 20, 15),
(223, 59, 21, 15),
(224, 59, 22, 15),
(225, 59, 23, 15),
(226, 60, 17, 15),
(227, 60, 18, 15),
(228, 60, 22, 15),
(229, 60, 23, 15),
(230, 61, 17, 15),
(231, 61, 18, 15),
(232, 61, 22, 15),
(233, 61, 23, 15),
(234, 62, 17, 15),
(235, 62, 18, 15),
(236, 62, 19, 15),
(237, 62, 20, 15),
(238, 62, 22, 15),
(239, 62, 23, 15),
(245, 66, 1, 11),
(246, 66, 2, 11),
(247, 66, 12, 11),
(248, 67, 1, 11),
(249, 67, 2, 11),
(250, 67, 3, 11),
(252, 71, 24, 21),
(253, 72, 24, 21),
(254, 73, 24, 21),
(255, 74, 24, 21),
(256, 75, 24, 21),
(257, 76, 24, 21),
(258, 77, 24, 21),
(259, 78, 24, 21),
(260, 79, 24, 21),
(261, 80, 24, 21),
(262, 81, 21, 21),
(263, 82, 21, 21),
(268, 84, 24, 10),
(269, 85, 4, 10),
(270, 85, 5, 10),
(271, 85, 15, 10),
(272, 85, 16, 10),
(275, 86, 24, 10),
(278, 87, 15, 10),
(279, 88, 5, 10),
(280, 88, 8, 10),
(281, 88, 14, 10),
(282, 88, 15, 10),
(283, 88, 16, 10),
(288, 90, 24, 10),
(289, 91, 24, 10),
(293, 93, 24, 10),
(294, 94, 24, 4),
(297, 96, 24, 4),
(298, 97, 1, 10),
(299, 97, 2, 10),
(300, 97, 15, 10),
(301, 97, 16, 10),
(309, 98, 1, 10),
(310, 98, 9, 10),
(311, 98, 10, 10),
(312, 98, 15, 10),
(313, 98, 16, 10),
(314, 99, 1, 4),
(315, 99, 2, 4),
(316, 99, 5, 4),
(317, 99, 15, 4),
(318, 99, 16, 4),
(319, 99, 24, 4),
(320, 100, 2, 4),
(321, 100, 4, 4),
(322, 100, 5, 4),
(323, 100, 15, 4),
(324, 100, 16, 4),
(325, 100, 24, 4),
(326, 101, 17, 10),
(327, 101, 18, 10),
(328, 101, 22, 10),
(329, 101, 23, 10),
(339, 103, 22, 10),
(340, 103, 23, 10),
(341, 104, 4, 4),
(342, 104, 5, 4),
(343, 104, 15, 4),
(344, 104, 16, 4),
(345, 104, 24, 4),
(346, 105, 22, 10),
(347, 105, 23, 10),
(348, 106, 9, 4),
(349, 106, 24, 4),
(350, 108, 24, 4),
(357, 111, 3, 4),
(358, 111, 4, 4),
(359, 111, 13, 4),
(360, 111, 14, 4),
(361, 111, 15, 4),
(362, 111, 24, 4),
(363, 112, 12, 4),
(364, 112, 13, 4),
(365, 112, 14, 4),
(366, 112, 15, 4),
(367, 112, 16, 4),
(368, 112, 24, 4),
(369, 113, 6, 1),
(370, 113, 7, 1),
(371, 113, 8, 1),
(372, 113, 15, 1),
(373, 113, 16, 1),
(374, 114, 6, 4),
(375, 114, 7, 4),
(376, 114, 8, 4),
(377, 114, 15, 4),
(378, 114, 16, 4),
(379, 114, 24, 4),
(380, 115, 1, 1),
(381, 115, 9, 1),
(382, 115, 15, 1),
(383, 115, 16, 1),
(384, 116, 1, 4),
(385, 116, 2, 4),
(386, 116, 15, 4),
(387, 116, 16, 4),
(388, 116, 24, 4),
(389, 117, 9, 4),
(390, 117, 10, 4),
(391, 117, 11, 4),
(392, 117, 24, 4),
(393, 118, 17, 4),
(394, 118, 19, 4),
(395, 118, 21, 4),
(396, 118, 22, 4),
(397, 118, 23, 4),
(398, 119, 6, 1),
(399, 119, 7, 1),
(400, 119, 12, 1),
(401, 119, 15, 1),
(402, 119, 16, 1),
(419, 122, 17, 4),
(420, 122, 18, 4),
(421, 122, 19, 4),
(422, 122, 21, 4),
(423, 122, 22, 4),
(424, 122, 23, 4),
(425, 123, 20, 4),
(426, 123, 22, 4),
(427, 123, 23, 4),
(428, 124, 10, 1),
(429, 124, 12, 1),
(430, 124, 13, 1),
(431, 125, 17, 4),
(432, 125, 22, 4),
(433, 125, 23, 4),
(434, 126, 17, 4),
(435, 126, 22, 4),
(436, 126, 23, 4),
(437, 127, 17, 1),
(438, 127, 19, 1),
(439, 127, 20, 1),
(440, 130, 1, 4),
(441, 130, 2, 4),
(442, 130, 3, 4),
(443, 130, 4, 4),
(444, 130, 5, 4),
(445, 130, 6, 4),
(446, 130, 24, 4),
(447, 132, 18, 10),
(448, 132, 20, 10),
(449, 132, 22, 10),
(450, 132, 23, 10),
(451, 133, 9, 10),
(452, 133, 16, 10),
(453, 134, 6, 10),
(454, 134, 9, 10),
(455, 135, 24, 10),
(456, 138, 3, 1),
(457, 138, 9, 1),
(458, 138, 10, 1),
(459, 138, 15, 1),
(460, 138, 16, 1),
(471, 140, 6, 16),
(472, 140, 7, 16),
(473, 140, 8, 16),
(474, 140, 16, 16),
(475, 140, 24, 16),
(476, 141, 1, 16),
(477, 141, 6, 16),
(478, 141, 7, 16),
(479, 141, 8, 16),
(480, 141, 14, 16),
(481, 141, 15, 16),
(482, 141, 16, 16),
(483, 141, 24, 16),
(484, 142, 9, 16),
(485, 142, 10, 16),
(486, 142, 11, 16),
(487, 142, 15, 16),
(488, 142, 16, 16),
(489, 142, 24, 16),
(490, 143, 2, 16),
(491, 143, 3, 16),
(492, 143, 4, 16),
(493, 143, 5, 16),
(494, 143, 15, 16),
(495, 143, 16, 16),
(496, 143, 24, 16),
(497, 144, 24, 16),
(498, 145, 15, 16),
(499, 145, 16, 16),
(500, 145, 24, 16),
(501, 146, 2, 16),
(502, 146, 4, 16),
(503, 146, 24, 16),
(504, 147, 24, 16),
(511, 152, 24, 16),
(512, 153, 24, 16),
(513, 154, 1, 16),
(514, 154, 3, 16),
(515, 154, 24, 16),
(516, 155, 2, 16),
(517, 155, 3, 16),
(518, 155, 5, 16),
(519, 155, 9, 16),
(520, 155, 10, 16),
(521, 155, 15, 16),
(522, 155, 16, 16),
(523, 155, 24, 16),
(524, 156, 4, 16),
(525, 156, 5, 16),
(526, 156, 15, 16),
(547, 161, 2, 17),
(548, 161, 12, 17),
(549, 161, 13, 17),
(550, 161, 14, 17),
(551, 161, 15, 17),
(552, 161, 16, 17),
(553, 161, 24, 17),
(560, 163, 1, 17),
(561, 163, 2, 17),
(562, 163, 3, 17),
(563, 163, 4, 17),
(564, 163, 5, 17),
(565, 163, 15, 17),
(566, 163, 16, 17),
(567, 163, 24, 17),
(574, 164, 3, 17),
(575, 164, 4, 17),
(576, 164, 8, 17),
(577, 164, 15, 17),
(578, 164, 16, 17),
(579, 164, 24, 17),
(580, 165, 9, 17),
(581, 165, 10, 17),
(582, 165, 11, 17),
(583, 165, 15, 17),
(584, 165, 16, 17),
(585, 165, 24, 17),
(586, 166, 1, 17),
(587, 166, 6, 17),
(588, 166, 7, 17),
(589, 166, 24, 17),
(590, 167, 20, 17),
(591, 167, 21, 17),
(592, 167, 22, 17),
(593, 167, 23, 17),
(594, 168, 19, 17),
(595, 168, 20, 17),
(596, 168, 21, 17),
(597, 168, 22, 17),
(598, 168, 23, 17),
(599, 169, 17, 17),
(600, 169, 18, 17),
(601, 169, 19, 17),
(602, 169, 22, 17),
(603, 169, 23, 17),
(604, 170, 24, 17),
(605, 171, 3, 17),
(606, 171, 5, 17),
(607, 171, 11, 17),
(608, 171, 24, 17),
(609, 172, 17, 17),
(610, 172, 18, 17),
(611, 172, 19, 17),
(612, 172, 22, 17),
(613, 172, 23, 17),
(614, 173, 1, 17),
(615, 173, 10, 17),
(616, 173, 11, 17),
(617, 173, 15, 17),
(618, 173, 16, 17),
(619, 173, 24, 17),
(620, 174, 17, 17),
(621, 174, 18, 17),
(622, 174, 20, 17),
(623, 174, 21, 17),
(624, 174, 22, 17),
(625, 174, 23, 17),
(626, 175, 24, 17),
(627, 176, 24, 17),
(628, 177, 6, 17),
(629, 177, 24, 17),
(630, 178, 24, 17),
(631, 179, 9, 17),
(632, 179, 24, 17),
(633, 181, 6, 17),
(634, 181, 7, 17),
(635, 181, 8, 17),
(636, 181, 13, 17),
(637, 181, 14, 17),
(638, 181, 15, 17),
(639, 181, 16, 17),
(640, 181, 24, 17),
(649, 185, 17, 16),
(650, 185, 20, 16),
(651, 185, 22, 16),
(652, 185, 23, 16),
(653, 186, 17, 16),
(654, 186, 18, 16),
(655, 186, 19, 16),
(656, 186, 22, 16),
(657, 186, 23, 16),
(658, 187, 18, 16),
(659, 187, 19, 16),
(660, 187, 21, 16),
(661, 187, 22, 16),
(662, 187, 23, 16),
(663, 188, 17, 16),
(664, 188, 18, 16),
(665, 188, 20, 16),
(666, 188, 21, 16),
(667, 188, 22, 16),
(668, 188, 23, 16),
(669, 277, 17, 1),
(670, 278, 24, 21),
(671, 279, 24, 21),
(672, 280, 15, 10),
(673, 281, 24, 21),
(674, 282, 24, 16),
(675, 283, 24, 15),
(676, 284, 24, 15),
(678, 312, 24, 15),
(679, 360, 24, 16);

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
  `game_bronze` int(3) UNSIGNED ZEROFILL NOT NULL,
  `feeded` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `email`, `mobile`, `college_id`, `selected_sports`, `roll_no`, `food`, `blood_group`, `profile_image_url`, `jursey_name`, `special_inst`, `gender`, `reg_status`, `game_gold`, `game_silver`, `game_bronze`, `feeded`) VALUES
(1, 'DIVYANSHU CHAHAL', 'sac.incharge@iitb.ac.in', '7389582408', 4, '9,15,16,24', '160110037', 'Non-Veg', 'B+', '1.jpg', '1', 'Nil', 'M', 0, 000, 000, 000, 0),
(2, 'DHYANESH BASKARAN', 'b.dhyanesh@iitgn.ac.in', '9500970794', 8, '2,6,9', '17110033', 'Non-Veg', 'B+', '2.jpg', 'DHYANESH', 'Nil', 'M', 0, 000, 000, 000, 0),
(3, 'PALLAV KULHARI', 'pallavk@iitk.ac.in', '7568590005', 15, '24', '160468', 'Non-Veg', 'B+', '3.jpg', '1', 'Nil', 'M', 0, 000, 000, 000, 0),
(4, 'AMIT KUMAR SINGH', 'amit.si@iitgn.ac.in', '7405612290', 8, '1,6', '14210066', 'Non-Veg', 'B+', '4.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(5, 'RANJIT KUMAR DEHURY', 'ranjit.dehury@iitgn.ac.in', '8327772707', 8, '1', '16310025', 'Non-Veg', 'B+', '5.jpg', '10', 'Nil', 'M', 0, 000, 000, 000, 0),
(6, 'ANIMESH SHARMA', 'animesh.sharma17003@iitgoa.ac.in', '8178490807', 9, '2,3,9', '170030011', 'Veg', 'B+', '6.jpg', '1', 'Nil', 'M', 0, 000, 000, 000, 0),
(8, 'DINESH PARMAR', 'dparmar@iitgn.ac.in', '9898754279', 8, 'staff', '0142', 'Non-Veg', 'B+', '8.jpg', '1', 'Nil', 'M', 0, 000, 000, 000, 0),
(9, 'ANMOL PALIWAL', 'anmol.paliwal.18001@iitgoa.ac.in', '9650082798', 9, '1,2,6', '180010006', 'Veg', 'B+', '9.jpg', '2', 'Nil', 'M', 0, 000, 000, 000, 0),
(10, 'AMIT BADONI', 'amitbad@iitk.ac.in', '9811303469', 15, '5,12,13,15,16,24', '170091', 'Non-Veg', 'B+', '10.jpg', '3', 'Nil', 'M', 0, 000, 000, 000, 0),
(11, 'ADWAIT AGESHE', 'adwait.ageshe.19031@iitgoa.ac.in', '9172924602', 9, '1,3,12', '190310.3', 'Non-Veg', 'B+', '11.jpg', '3', 'Nil', 'M', 0, 000, 000, 000, 0),
(12, 'AKSHIT AGARWAL', 'akshitagarwal44@gmail.com', '7999793202', 6, '24', '18MT0056', 'Veg', 'B+', '12.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(13, 'SANTOSH UPADHYAY', 'aso@iitgoa.ac.in', '9839449191', 9, 'staff', 'C -044', 'Veg', 'B+', '13.jpg', '4', 'Nil', 'M', 0, 000, 000, 000, 0),
(14, 'BHARAT N BHARADWAJ', 'nkbaradwaj@gmail.com', '9481815776', 6, '1,2,15,24', '18JE0218', 'Veg', 'B+', '14.jpg', '18', 'Nil', 'M', 0, 000, 000, 000, 0),
(15, 'S POONKUNDRAN', 'poonkun@iitk.ac.in', '9444360014', 15, '6,7,8,15,16,24', '150602', 'Non-Veg', 'B+', '15.jpg', '4', 'Nil', 'M', 0, 000, 000, 000, 0),
(16, 'ANSHUMAN SINGH', 'ansshu.sin@gmail.com', '919906708', 6, '1,5,24', '18JE002804', 'Non-Veg', 'B+', '16.jpg', '5', 'Nil', 'M', 0, 000, 000, 000, 0),
(17, 'RAVISH KUMAR SAHANI', 'ravish2561@gmail.com', '7654965903', 6, '6,24', '16JE002561', 'Non-Veg', 'B+', '17.jpg', '99', 'Nil', 'M', 0, 000, 000, 000, 0),
(18, 'PARTH BHARADWAJ', 'bharadwajparth126@gmail.com', '9560871369', 5, '1,2,3,4,12,15,16,24', '2016BB50007', 'Veg', 'B+', '18.jpg', '1', 'Nil', 'M', 0, 000, 000, 000, 0),
(19, 'VOOTKURU SAI BHARGAV REDDY', 'saibhargav.vootkuru@gmail.com', '8186027290', 6, '24', '18JE0942', 'Non-Veg', 'B+', '19.jpg', '22', 'Nil', 'M', 0, 000, 000, 000, 0),
(20, 'YASH GUPTA', 'yash.iitd21@gmail.com', '8800946972', 5, '3,4,5,15,16,24', '2017EE10504', 'Veg', 'B+', '20.jpg', '2', 'Nil', 'M', 0, 000, 000, 000, 0),
(21, 'ANIMESH SHUKLA', 'animeshshukla0904@gmail.com', '9753998563', 6, '24', '18JE0114', 'Non-Veg', 'B+', '21.jpg', '3', 'Nil', 'M', 0, 000, 000, 000, 0),
(22, 'NIHAR PATEL', 'nihar5733@gmail.com', '9427007282', 5, '9,10,11,24', '2017MT60782', 'Non-Veg', 'B+', '22.jpg', '3', 'Nil', 'M', 0, 000, 000, 000, 0),
(23, 'HARSH NARANG', 'harshn@iitk.ac.in', '7388728344', 15, '1,2,15,16,24', '15807267', 'Non-Veg', 'B+', '23.jpg', '2', 'Nil', 'M', 0, 000, 000, 000, 0),
(24, 'ANKIT KUMAR', 'sankyism@yahoo.com', '7979938243', 6, '15,24', '16JE002382', 'Non-Veg', 'B+', '24.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(25, 'KARTIN SAREEN', 'ksareen1107@gmail.com', '9873343999', 6, '15,24', '18JE0400', 'Non-Veg', 'B+', '25.jpg', '9', 'Nil', 'M', 0, 000, 000, 000, 0),
(26, 'KULWANT SINGH', 'kulwants@iitk.ac.in', '8308523629', 15, '24', '18101049', 'Non-Veg', 'B+', '26.jpg', '5', 'Nil', 'M', 0, 000, 000, 000, 0),
(27, 'SAMEER JAIN', 'sameer2000jain12@gmail.com', '9893636504', 6, '24', '18JE0716', 'Veg', 'B+', '27.jpg', '2', 'Nil', 'M', 0, 000, 000, 000, 0),
(28, 'AKASH SURYAWANSHI', 'suryaakash7799@gmail.com', '8448407829', 5, '2,9,10,13,14,15,16,24', '2019CS50416', 'Veg', 'B+', '28.jpg', '4', 'Nil', 'M', 0, 000, 000, 000, 0),
(29, 'KRISHNA KUMAR', 'kkmeena@iitk.ac.in', '9785061492', 15, '10,11,24', '160342', 'Non-Veg', 'B+', '29.jpg', '6', 'Nil', 'M', 0, 000, 000, 000, 0),
(30, 'SATYAM RALHAN', 'satyamr@iitk.ac.in', '8400198022', 15, '24', '170641', 'Non-Veg', 'B+', '30.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(31, 'VANGA SREEKAR GOUD', 'vangasreekar17@gmail.com', '9010193888', 6, '24', '18JE0902', 'Veg', 'B+', '31.jpg', '11', 'Nil', 'M', 0, 000, 000, 000, 0),
(32, 'SANAZ AGARWAL', 'sanazagarwal99@gmail.com', '8502805050', 5, '1,2,3,11,12,15,16', '2018BB10040', 'Veg', 'B+', '32.jpg', '5', 'Nil', 'M', 0, 000, 000, 000, 0),
(33, 'DIVYAM GUPTA', 'divyam227227@gmail.com', '9079235665', 5, '4,5,24', '2017MT10287', 'Non-Veg', 'B+', '33.jpg', '6', 'Nil', 'M', 0, 000, 000, 000, 0),
(34, 'RAVI MALIK', 'rmalik@iitk.ac.in', '9650453695', 15, '1,2,15,16,24', '18107279', 'Non-Veg', 'B+', '34.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(35, 'SURAJ KUMAR MAHATO', 'skm481507@gmail.com', '9572295585', 6, '1,15,24', '16JE002052', 'Non-Veg', 'B+', '35.jpg', '6', 'Nil', 'M', 0, 000, 000, 000, 0),
(36, 'KESHAV GUPTA', 'guptakeshav694@gmail.com', '9592315333', 6, '24', '17JE002998', 'Veg', 'B+', '36.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(37, 'JATIN AHUJA', 'ja321867@gmail.com', '8448750259', 5, '9,11,24', '2017CE10110', 'Veg', 'B+', '37.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(38, 'AMAN POONIA', 'apoonia@iitk.ac.in', '9793616777', 15, '24', '160091', 'Non-Veg', 'B+', '38.jpg', '8', 'Nil', 'M', 0, 000, 000, 000, 0),
(39, 'RAVIRAJ DHAKAD', 'ravirajdhakad@gmail.com', '8827600485', 5, '14,24', '2017CS10367', 'Veg', 'B+', '39.jpg', '8', 'Nil', 'M', 0, 000, 000, 000, 0),
(40, 'RAJAK KUMAR JHALENDRA', 'jhalendra.ismud@gmail.com', '7004424209', 6, '1,3,5,15,24', '16DR00189', 'Non-Veg', 'B+', '40.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(41, 'SAFA MUSTAFA SHEICK', 'safa@iitk.ac.in', '9677682366', 15, '3,4,5,15,24', '170603', 'Non-Veg', 'B+', '41.jpg', '9', 'Nil', 'M', 0, 000, 000, 000, 0),
(42, 'MANISH SHUKLA', 'manish.shukla@civil.iitd.ac.in', '9473695125', 5, '5,11,24', '2016CEZ8428', 'Veg', 'B+', '42.jpg', '9', 'Nil', 'M', 0, 000, 000, 000, 0),
(43, 'SRIJITA PAL', 'srijitapal1297@gmail.com', '9205549669', 6, '17,18,20', '19MS0115', 'Non-Veg', 'B+', '43.jpg', '18', 'Nil', 'F', 0, 000, 000, 000, 0),
(44, 'ANINDYA HAZRA', 'anin16dya@gmail.com', '8910068140', 6, 'staff', 'SPEC/DW-259', 'Non-Veg', 'B+', '44.jpg', '9', 'Nil', 'M', 0, 000, 000, 000, 0),
(45, 'ANISH MUKHERJEE', 'mukherjeeanish99@gmail.com', '8337013238', 6, 'staff', 'NO ID', 'Non-Veg', 'B+', '45.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(46, 'SHREYANSH CHANANI', 'shreyanshchanani123@gmail.com', '8777688535', 5, '6,7,8,16,24', '2017ME20696', 'Veg', 'B+', '46.jpg', '10', 'Nil', 'M', 0, 000, 000, 000, 0),
(47, 'MOHAMMAD NIYAS P', 'niyasp@iitk.ac.in', '9198966176', 15, '9,24', '170394', 'Non-Veg', 'B+', '47.jpg', '10', 'Nil', 'M', 0, 000, 000, 000, 0),
(48, 'PARTH CHOPRA', 'parth007chopra@gmail.com', '9910509003', 5, '24', '2016ME10829', 'Veg', 'B+', '48.jpg', '11', 'Nil', 'M', 0, 000, 000, 000, 0),
(49, 'CHARAWAN DIA DEEPAK', 'charawandiadeepak@gmail.com', '9549262892', 5, '10,13,24', '2019TT10965', 'Veg', 'B+', '49.jpg', '12', 'Nil', 'M', 0, 000, 000, 000, 0),
(50, 'ABHINAV KUMAR SINGH ', 'aks55.tomar@gmail.com', '9205710938', 5, '1,6,7,8,15,16,24', '2019BB10003', 'Non-Veg', 'B+', '50.jpg', '13', 'Nil', 'M', 0, 000, 000, 000, 0),
(51, 'GAJJALA SAI MADHU RISHIKESH REDDY', 'gsmrishi@gmail.com', '9000963400', 5, '6,7,8,12,14,15,24', '2016CS10338', 'Veg', 'B+', '51.jpg', '14', 'Nil', 'M', 0, 000, 000, 000, 0),
(52, 'YASHASVI GHADALE', 'yashasvughadale@gmail.com', '8770332029', 5, '18,19,20,21,22,23', '2019PH10666', 'Non-Veg', 'B+', '52.jpg', '15', 'Nil', 'F', 0, 000, 000, 000, 0),
(53, 'VISVESH SUBRAMANI', 'viveshsubramani@gmail.com', '8940348130', 15, '9,10,11,15,16,24', '190984', 'Non-Veg', 'B+', '53.jpg', '11', 'Nil', 'M', 0, 000, 000, 000, 0),
(54, 'PRIYADARSHI SINGH', 'darshi@iitk.ac.in', '7318301507', 15, '9,10,11,16,24', '180561', 'Non-Veg', 'B+', '54.jpg', '12', 'Nil', 'M', 0, 000, 000, 000, 0),
(55, 'ANANYA CHOUDHARY', 'ananyachoudhary2158@gmail.com', '8319314583', 5, '17,18,19,21,22,23', '2019CE10217', 'Veg', 'B+', '55.jpg', '16', 'Nil', 'F', 0, 000, 000, 000, 0),
(56, 'SAKSHI BHANDARI', 'bsak2222@gmail.com', '9586597182', 5, '17,18,19,20,22,23', '2018MT60792', 'Non-Veg', 'B+', '56.jpg', '17', 'Nil', 'F', 0, 000, 000, 000, 0),
(57, 'RHYTHM', 'rhythmjangra20@gmail.com', '8826525802', 5, '17,20,21,22,23', '2018TT10943', 'Veg', 'B+', '57.jpg', '18', 'Nil', 'F', 0, 000, 000, 000, 0),
(58, 'RACHITA BHATTACHARYA', 'rachitab@iitk.ac.in', '9460053691', 15, '19,20,21,22,23', '16118268', 'Non-Veg', 'O-', '58.jpg', '1', 'Nil', 'F', 0, 000, 000, 000, 0),
(59, 'IRENE GRACE KAROT POLSON', 'irenegracekp@gmail.com', '9495939273', 15, '19,20,21,22,23', '180308', 'Non-Veg', 'O-', '59.jpg', '13', 'Nil', 'F', 0, 000, 000, 000, 0),
(60, 'SHIVANGI SINGH', 'shivis@iitk.ac.in', '8920138234', 15, '17,18,22,23', '180726', 'Non-Veg', 'O-', '60.jpg', '15', 'Nil', 'F', 0, 000, 000, 000, 0),
(61, 'KHUSHI SINGH', 'khushi@iitk.ac.in', '7618664011', 15, '17,18,22,23', '190431', 'Non-Veg', 'O-', '61.jpg', '16', 'Nil', 'F', 0, 000, 000, 000, 0),
(62, 'T SHIVA SHRUTHI', 'shruthis@iitk.ac.in', '8374718897', 15, '17,18,19,20,22,23', '190890', 'Non-Veg', 'O-', '62.jpg', '20', 'Nil', 'F', 0, 000, 000, 000, 0),
(63, 'VIVEK RAO VADI', 'vrvadi@iitk.ac.in', '9651969591', 15, 'staff', '5058', 'Veg', 'B+', '63.jpg', '5', 'Nil', 'M', 0, 000, 000, 000, 0),
(64, 'SANTOSH KUMAR JOSHI', 'skjoshi@iitk.ac.in', '7668043117', 15, 'staff', '5829', 'Non-Veg', 'B+', '64.jpg', '18', 'Nil', 'M', 0, 000, 000, 000, 0),
(65, 'MUNNALAL MAURYA', 'xyz@gmail.com', '7985612367', 15, 'staff', '123456', 'Veg', 'B+', '65.jpg', '555', 'Nil', 'M', 0, 000, 000, 000, 0),
(66, 'DEVAJITH V S', 'devajith@gmail.com', '9080797867', 11, '1,2,12', 'ch16btech11009', 'Non-Veg', 'B+', '66.jpg', 'Deva', 'Nil', 'M', 0, 000, 000, 000, 0),
(67, 'ADVAITH P', 'advaith@gmail.com', '8907896789', 11, '1,2,3', 'er19btech11004', 'Non-Veg', 'A+', '67.jpg', 'Advaith', 'Nil', 'M', 0, 000, 000, 000, 0),
(68, 'SURENDRA PRASAD', 'surendra@gmail.com', '9878975678', 5, 'staff', 'delhi1', 'Non-Veg', 'O+', '68.jpg', 'Prasad', 'Nil', 'M', 0, 000, 000, 000, 0),
(69, 'ANIL KUMAR', 'kumaran@gmail.com', '7657898901', 5, 'staff', 'delhi2', 'Non-Veg', 'AB+', '69.jpg', 'kumar', 'Nil', 'M', 0, 000, 000, 000, 0),
(70, 'T SATYANARAYANA', 'satya@iith.ac.in', '9440912679', 11, 'staff', 'P016', 'Non-Veg', 'B+', '70.jpg', 'Satya', 'Nil', 'M', 0, 000, 000, 000, 0),
(71, 'ABY JOSE', 'ajose@me.iitr.ac.in', '8308456212', 21, '24', '16117039', 'Non-Veg', 'O-', '71.jpg', 'Aby', 'Nil', 'M', 0, 000, 000, 000, 0),
(72, 'DILKUSH MALAV', 'dmalav@me.iitr.ac.in', '8529578337', 21, '24', '17113034', 'Veg', 'O-', '72.jpg', 'Dilkush', 'Nil', 'M', 0, 000, 000, 000, 0),
(73, 'SURAJ K S', 'kssuraj28@me.iir.ac.in', '9080865598', 21, '24', '18117106', 'Non-Veg', 'O-', '73.jpg', 'Suraj', 'Nil', 'M', 0, 000, 000, 000, 0),
(74, 'MANIK MUNJAL', 'mmunjal@me.iitr.ac.in', '8570948547', 21, '24', '18119017', 'Non-Veg', 'O-', '74.jpg', 'Manik', 'Nil', 'M', 0, 000, 000, 000, 0),
(75, 'RITESH CHHETRI', 'riteshchhetri10@gmail.com', '8332897169', 21, '24', '17118057', 'Non-Veg', 'O-', '75.jpg', 'Chhetri', 'Nil', 'M', 0, 000, 000, 000, 0),
(76, 'AYUSH DEWANGAN', 'ayushdewangan12@gmail.com', '8223987067', 21, '24', '19115038', 'Non-Veg', 'O-', '76.jpg', 'Ayush', 'Nil', 'M', 0, 000, 000, 000, 0),
(77, 'ABHAY SANJAY DEORE', 'mail12abhay25@gmail.com', '9405153168', 21, '24', '19610001', 'Non-Veg', 'O-', '77.jpg', 'Abhay', 'Nil', 'M', 0, 000, 000, 000, 0),
(78, 'ABHINAV SINGH', 'asingh1@ar.iitr.ac.in', '8171615214', 21, '24', '15110001', 'Veg', 'O-', '78.jpg', 'Abhinav', 'Nil', 'M', 0, 000, 000, 000, 0),
(79, 'JAPJEET SINGH', 'japjeet20@gmail.com', '9557605557', 21, '24', '19522004', 'Non-Veg', 'O-', '79.jpg', 'japjeet', 'Nil', 'M', 0, 000, 000, 000, 0),
(80, 'ROMAN ABHAYKUMAR DEORE', 'romandeore@gmail.com', '7588462829', 21, '24', '19121010', 'Non-Veg', 'O-', '80.jpg', 'Roman', 'Nil', 'M', 0, 000, 000, 000, 0),
(81, 'YASHVI AGRAWAL', 'yagrawal@me.iit.ac.in', '8959896226', 21, '21', '17119039', 'Veg', 'O-', '81.jpg', 'Yashvi', 'Nil', 'F', 0, 000, 000, 000, 0),
(82, 'SEJAL AGRAWAL', 'agrawalsejal123@gnail.com', '9587043367', 21, '21', '19115116', 'Veg', 'O-', '82.jpg', 'Sejal', 'Nil', 'F', 0, 000, 000, 000, 0),
(83, 'HEMANT SHARMA', 'h.sharma1609.@gmail.com', '9760100968', 21, 'staff', '100014', 'Veg', 'O-', '83.jpg', 'Hemant', 'Nil', 'M', 0, 000, 000, 000, 0),
(84, 'KARTHIK.J', 'bclap170121008@iitg.ac.in', '9404678414', 10, '24', '160106018', 'Non-Veg', 'A+', '84.jpg', 'Karthik', 'Nil', 'M', 0, 000, 000, 000, 0),
(85, 'ATHARVA BELAPURKER', 'atharva@iitg.ac.in', '1234567891', 10, '4,5,15,16', '170121008', 'Non-Veg', 'A+', '85.jpg', 'Atharva', 'Nil', 'M', 0, 000, 000, 000, 0),
(86, 'RAYAPU SAI PRANAV REDDY', 'rayapu@iitg.ac.in', '1234567892', 10, '24', '160102055', 'Veg', 'A+', '86.jpg', 'Rayapu', 'Nil', 'M', 0, 000, 000, 000, 0),
(87, 'DHIREN PRAJAPATI', 'dhiren@iitg.ac.in', '1234567893', 10, '15', '180121029', 'Non-Veg', 'A+', '87.jpg', 'Dhiren', 'Nil', 'M', 0, 000, 000, 000, 0),
(88, 'KARTIK GUPTA', 'kartik@iitg.ac.in', '1234567894', 10, '5,8,14,15,16', '170103084', 'Non-Veg', 'A+', '88.jpg', 'kartik', 'Nil', 'M', 0, 000, 000, 000, 0),
(90, 'SACHIN', 'sachin@iitg.ac.in', '1234567896', 10, '24', '180102061', 'Non-Veg', 'A+', '90.jpg', 'sachin', 'Nil', 'M', 0, 000, 000, 000, 0),
(91, 'ATHARVA DEORE', 'atharvad@iitg.ac.in', '1234567897', 10, '24', '170103015', 'Non-Veg', 'A+', '91.jpg', 'Atharva', 'Nil', 'M', 0, 000, 000, 000, 0),
(93, 'PARTH BAKARE', 'partg@iitg.ac.in', '1234567899', 10, '24', '180101056', 'Non-Veg', 'A+', '93.jpg', 'parth', 'Nil', 'M', 0, 000, 000, 000, 0),
(94, 'ANIKET RANADE', 'aniket@iitb.ac.in', '7389582406', 4, '24', '160110035', 'Non-Veg', 'O-', '94.jpg', 'aniket', 'Nil', 'M', 0, 000, 000, 000, 0),
(96, 'VIHANG WAGH', 'VIHANG@IITB.AC.IN', '7389582407', 4, '24', '160100033', 'Non-Veg', 'O-', '96.jpg', 'VIHANG', 'Nil', 'M', 0, 000, 000, 000, 0),
(97, 'ARYAN RATHEE', 'aryan@iitg.ac.in', '234567892', 10, '1,2,15,16', '190123013', 'Non-Veg', 'A+', '97.jpg', 'aryan', 'Nil', 'M', 0, 000, 000, 000, 0),
(98, 'RAJIB MODAK', 'rajib@iitg.ac.in', '234567893', 10, '1,9,10,15,16', '196104016', 'Non-Veg', 'A+', '98.jpg', 'Rajib', 'Nil', 'M', 0, 000, 000, 000, 0),
(99, 'SHUBHANKAR SETH', 'SHUBHANKAR@IITB.AC.IN', '7389582409', 4, '1,2,5,15,16,24', '160100116', 'Non-Veg', 'O-', '99.jpg', 'SETH', 'Nil', 'M', 0, 000, 000, 000, 0),
(100, 'KUSHAL DHINOJA', 'KUSHAL@IITB.AC.IN', '7389582401', 4, '2,4,5,15,16,24', '170020007', 'Non-Veg', 'O-', '100.jpg', 'KUSHAL', 'Nil', 'M', 0, 000, 000, 000, 0),
(101, 'DYUTI MANGAL', 'dyuti@iitg.ac.in', '234567894', 10, '17,18,22,23', '190101035', 'Non-Veg', 'A+', '101.jpg', 'dyuti', 'Nil', 'F', 0, 000, 000, 000, 0),
(103, 'SASWATI RABHA', 'saswati@iitg.ac.in', '234567896', 10, '22,23', '156302013', 'Non-Veg', 'A+', '103.jpg', 'Saswati', 'Nil', 'F', 0, 000, 000, 000, 0),
(104, 'YOGENDER SINGH', 'YOGENDWER@IITB.AC.IN', '7389584202', 4, '4,5,15,16,24', '170100028', 'Non-Veg', 'O-', '104.jpg', 'SINGH', 'Nil', 'M', 0, 000, 000, 000, 0),
(105, 'AISHANI MITRA', 'Aishani@iitg.ac.in', '234567897', 10, '22,23', '190104009', 'Non-Veg', 'A+', '105.jpg', 'aishani', 'Nil', 'F', 0, 000, 000, 000, 0),
(106, 'HRITVIJ SAXENA', 'SAXENA@IITB.AC.IN', '7389582403', 4, '9,24', '18B080010', 'Non-Veg', 'O-', '106.jpg', 'HRITVIJ', 'Nil', 'M', 0, 000, 000, 000, 0),
(108, 'ARINDAM JANA', 'JANA@IITB.AC.IN', '7389582411', 4, '24', '134093003', 'Non-Veg', 'O-', '108.jpg', 'JANA', 'Nil', 'M', 0, 000, 000, 000, 0),
(111, 'MADHAV JOSHI', 'JOSHI@IITB.AC.IN', '7389582413', 4, '3,4,13,14,15,24', '190110034', 'Non-Veg', 'O-', '111.jpg', 'JOSHI', 'Nil', 'M', 0, 000, 000, 000, 0),
(112, 'VAISHNAV V RAO', 'RAO@IITB.AC.IN', '7389582414', 4, '12,13,14,15,16,24', '190260045', 'Non-Veg', 'O-', '112.jpg', 'RAO', 'Nil', 'M', 0, 000, 000, 000, 0),
(113, 'GUNDA YUGA RAJU', 'gungayugaraju.rs.min14@iitbhu.ac.in', '8419026686', 1, '6,7,8,15,16', '17151004', 'Veg', 'A+', '113.jpg', 'gunda', 'Nil', 'M', 0, 000, 000, 000, 0),
(114, 'SYANTAN C.', 'SYANTAN@IITB.AC.IN', '7389582041', 4, '6,7,8,15,16,24', '144040008', 'Non-Veg', 'O-', '114.jpg', 'SYANTAN', 'Nil', 'M', 0, 000, 000, 000, 0),
(115, 'VAIBHAV DIXIT', 'vaibhavk.dixit.mat16@iitbhu.ac.in', '7666807602', 1, '1,9,15,16', '16123018', 'Non-Veg', 'A+', '115.jpg', 'vaibhav', 'Nil', 'M', 0, 000, 000, 000, 0),
(116, 'AKHIL', 'AKHIL@IITB.AC.IN', '7389582422', 4, '1,2,15,16,24', '134076014', 'Non-Veg', 'B+', '116.jpg', 'AKHIL', 'Nil', 'M', 0, 000, 000, 000, 0),
(117, 'ROHAN', 'ROHAN@IITB.AC.IN', '7389458200', 4, '9,10,11,24', '180070046', 'Non-Veg', 'B-', '117.jpg', 'ROHAN', 'Nil', 'M', 0, 000, 000, 000, 0),
(118, 'MANSI KHEDEKAR', 'MANSI@IITB.AC.IN', '738945288', 4, '17,19,21,22,23', '160110005', 'Non-Veg', 'A-', '118.jpg', 'MANSI', 'Nil', 'F', 0, 000, 000, 000, 0),
(119, 'G V KARTHIK REDDY', 'gajjala.vkreddyeee17@iitbhu.ac.in', '9517270672', 1, '6,7,12,15,16', '17085034', 'Non-Veg', 'A+', '119.jpg', 'G V', 'Nil', 'M', 0, 000, 000, 000, 0),
(122, 'NARAYANI KELKAR', 'NARAYANI@IITB.AC.IN', '7389582455', 4, '17,18,19,21,22,23', '173020059', 'Non-Veg', 'B+', '122.jpg', 'NARANYI', 'Nil', 'F', 0, 000, 000, 000, 0),
(123, 'RUCHA PASALKAR', 'RUCHA@IITB.AC.IN', '7389584259', 4, '20,22,23', '160040031', 'Non-Veg', 'B-', '123.jpg', 'RUCHA', 'Nil', 'F', 0, 000, 000, 000, 0),
(124, 'VIBHU VARDHAN SINGH', 'vibhu.vsingh.met17@iitbhu.ac.in', '9460122112', 1, '10,12,13', '17145064', 'Non-Veg', 'A+', '124.jpg', 'Vibhu', 'Nil', 'M', 0, 000, 000, 000, 0),
(125, 'VRINDA JINDAL', 'VRINDA@IITB.AC.IN', '738956889', 4, '17,22,23', '180050120', 'Non-Veg', 'A-', '125.jpg', 'VRINDA', 'Nil', 'F', 0, 000, 000, 000, 0),
(126, 'AARUSHI CHAUDHARY', 'AARUSHI@IITB.AC.IN', '73894526854', 4, '17,22,23', '19D110001', 'Non-Veg', 'A-', '126.jpg', 'AARUSHI', 'Nil', 'F', 0, 000, 000, 000, 0),
(127, 'DIVYANSHI PARASHER', 'divyanshi.parasher.met17@iitbhu.ac.in', '8462038505', 1, '17,19,20', '17145022', 'Veg', 'A+', '127.jpg', 'Divyanshi', 'Nil', 'F', 0, 000, 000, 000, 0),
(128, 'RITESH GUCHAIT', '10001855@IITB.AC.IN', '73895852455', 4, 'staff', '10001855', 'Non-Veg', 'AB-', '128.jpg', 'RITESH', 'Nil', 'M', 0, 000, 000, 000, 0),
(129, 'SACHIN KAMBLE', 'SACHIN@IITB.AC.IN', '73789582459', 4, 'staff', 'ATTENDANT', 'Non-Veg', 'A-', '129.jpg', 'SACHIN', 'Nil', 'M', 0, 000, 000, 000, 0),
(130, 'HARDIK SHAH', 'shahardik01@gmail.com', '7240208867', 4, '1,2,3,4,5,6,24', '18AG30016', 'Non-Veg', 'A-', '130.jpg', 'VIHANG', 'Nil', 'M', 0, 000, 000, 000, 0),
(131, 'RAMA SHANKAR', 'RAMA@ME.IITR.AC.IN', '7456962794', 21, 'staff', 'ROORKEE01', 'Veg', 'A+', '131.jpg', 'RAMA', 'Nil', 'M', 0, 000, 000, 000, 0),
(132, 'KASTURI THAKRE', 'kasturi@iitg.ac.in', '8976564523', 10, '18,20,22,23', '194205034', 'Non-Veg', 'O+', '132.jpg', 'Thakre', 'Nil', 'F', 0, 000, 000, 000, 0),
(133, 'AJINKYA SHIVSHANKAR', 'ajinkya@iitg.ac.in', '7896784567', 10, '9,16', '170101004', 'Non-Veg', 'A+', '133.jpg', 'Jinkya', 'Nil', 'M', 0, 000, 000, 000, 0),
(134, 'UTKARSH GUPTA', 'uttkarsh1@iitg.ac.in', '6789987600', 10, '6,9', '180122017', 'Non-Veg', 'A+', '134.jpg', 'Gupta', 'Nil', 'M', 0, 000, 000, 000, 0),
(135, 'PARTH SHAH', 'parth@iitg.ac.in', '9812436512', 10, '24', '180122030', 'Non-Veg', 'A+', '135.jpg', 'Shah', 'Nil', 'M', 0, 000, 000, 000, 0),
(136, 'SUDIPTA SHARMA', 'sudi@iitg.ac.in', '6785645231', 10, 'staff', '8098', 'Non-Veg', 'A+', '136.jpg', 'Sudipta', 'Nil', 'F', 0, 000, 000, 000, 0),
(137, 'RAJIB DEY', 'dey@iitg.ac.in', '8676567452', 10, 'staff', '7016', 'Non-Veg', 'A+', '137.jpg', 'Dey', 'Nil', 'M', 0, 000, 000, 000, 0),
(138, 'PAVAN M G', 'pavan.mg.eee17@itbhu.ac.in', '9483875897', 1, '3,9,10,15,16', '17085052', 'Non-Veg', 'A+', '138.jpg', 'Pavan', 'Nil', 'M', 0, 000, 000, 000, 0),
(140, 'INDRESH', 'indresh.kry@gmail.com', '8436959997', 16, '6,7,8,16,24', '15BT30008', 'Non-Veg', 'B+', '140.jpg', 'INDRESH', 'Nil', 'M', 0, 000, 000, 000, 0),
(141, 'PUSHPAK ROY', 'nyn05091998@gmail.com', '7430922555', 16, '1,6,7,8,14,15,16,24', '16IM30015', 'Non-Veg', 'B+', '141.jpg', 'PUSHPAK', 'Nil', 'M', 0, 000, 000, 000, 0),
(142, 'ARPAN DEY', 'arpan.dey1996@gmail.com', '7059916102', 16, '9,10,11,15,16,24', '16AG63R03', 'Non-Veg', 'O+', '142.jpg', 'ARPAN', 'Nil', 'M', 0, 000, 000, 000, 0),
(143, 'SHUBHAM PANDEY', 'pndshubh14@gmail.com', '9998736227', 16, '2,3,4,5,15,16,24', '17IP62011', 'Non-Veg', 'O+', '143.jpg', 'SHUBHAM', 'Nil', 'M', 0, 000, 000, 000, 0),
(144, 'SOHAM CHANDORKAR', 'chandorkarsoham@gmail.com', '9619112965', 16, '24', '15HS20013', 'Non-Veg', 'B+', '144.jpg', 'SOHAM', 'Nil', 'M', 0, 000, 000, 000, 0),
(145, 'RAJ PRABHU', 'raj.mprabhu@gmail.com', '9800422444', 16, '15,16,24', '15IE33001', 'Non-Veg', 'AB+', '145.jpg', 'PRABHU', 'Nil', 'M', 0, 000, 000, 000, 0),
(146, 'ASHISH SHAH', 'shahashish1998@gmail.com', '8888454797', 16, '2,4,24', '17NA10007', 'Veg', 'AB+', '146.jpg', 'ASHISH', 'Nil', 'M', 0, 000, 000, 000, 0),
(147, 'ADITYA KACHAVE', 'kachaveaditya8998@gmail.com', '7477714999', 16, '24', '7477714999', 'Non-Veg', 'AB+', '147.jpg', 'KACHAVE', 'Nil', 'M', 0, 000, 000, 000, 0),
(152, 'UTKARSH SAH', 'sahutkarsh@gmail.com', '8116205474', 16, '24', '15MI31029', 'Non-Veg', 'AB+', '152.jpg', 'UTKARSH', 'Nil', 'M', 0, 000, 000, 000, 0),
(153, 'SUBHAM KUMAR SAHU', 'subhamsahu972@gmail.com', '8637275065', 16, '24', '16AG36018', 'Veg', 'A-', '153.jpg', 'SUBHAM SAHU', 'Nil', 'M', 0, 000, 000, 000, 0),
(154, 'SRIJAN BANSAL', 'srijanbansal97@gmail.com', '7478050888', 16, '1,3,24', '16EC10068', 'Non-Veg', 'A-', '154.jpg', 'SRIJAN', 'Nil', 'M', 0, 000, 000, 000, 0),
(155, 'RAGHAV SURYAN', 'suryanraghav@gmail.com', '9667290420', 16, '2,3,5,9,10,15,16,24', '18PH20019', 'Non-Veg', 'O+', '155.jpg', 'RAGHAV', 'Nil', 'M', 0, 000, 000, 000, 0),
(156, 'KEERTI PRAKASH SONGA', 'keerthiprakashs18@gmail.com', '9381565089', 16, '4,5,15', '18NA10012', 'Non-Veg', 'B-', '156.jpg', 'KEERTI PRAKASH', 'Nil', 'M', 0, 000, 000, 000, 0),
(161, 'RUCHIR KUMAR KAUL', 'kaulruchir@gmail.com', '8169137126', 17, '2,12,13,14,15,16,24', 'CE16B113', 'Non-Veg', 'B+', '161.jpg', 'RUCHIR', 'Nil', 'M', 0, 000, 000, 000, 0),
(163, 'HARSH LADANI', 'ae17b027@smail.iitm.ac.in', '9726793407', 17, '1,2,3,4,5,15,16,24', 'AE17B027', 'Non-Veg', 'B+', '163.jpg', 'HARSH', 'Nil', 'M', 0, 000, 000, 000, 0),
(164, ' KALASH VERMA', 'kalashverma1212@gmail.com', '7471117800', 17, '3,4,8,15,16,24', 'ME18B052', 'Non-Veg', 'A+', '164.jpg', 'Kalash', 'Nil', 'M', 0, 000, 000, 000, 0),
(165, ' ANUJ SINDGI', 'sindgi.anuj@gmail.com', '8806005500', 17, '9,10,11,15,16,24', 'ED16B030', 'Non-Veg', 'O+', '165.jpg', 'Anuj', 'Nil', 'M', 0, 000, 000, 000, 0),
(166, 'SHREENIWAS MAHESH JAGDALE', 'me17b115@smail.iitm.ac.in', '9422022520', 17, '1,6,7,24', 'ME17B115', 'Non-Veg', 'A+', '166.jpg', 'MAHESH', 'Nil', 'M', 0, 000, 000, 000, 0),
(167, 'MAHIMA RAUT', 'cs17b112@smail.iitm.ac.in', '9497491800', 17, '20,21,22,23', 'CS17B112', 'Non-Veg', 'B-', '167.jpg', 'MAHIMA', 'Nil', 'F', 0, 000, 000, 000, 0),
(168, 'BREASHA GUPTA', 'be17b015@smail.iitm.ac.in', '9137932713', 17, '19,20,21,22,23', 'BE17B015', 'Non-Veg', 'A+', '168.jpg', 'BREASHA', 'Nil', 'F', 0, 000, 000, 000, 0),
(169, 'DEV PRIYA KRISHNAKUMAR', 'me17b106@smail.iitm.ac.in', '9840933858', 17, '17,18,19,22,23', 'ME17B106', 'Non-Veg', 'B+', '169.jpg', 'DEV PRIYA', 'Nil', 'F', 0, 000, 000, 000, 0),
(170, 'OMKAR SATPUTE', 'ed17b049@smail.iitm.ac.in', '8408906388', 17, '24', 'ED17B049', 'Non-Veg', 'A+', '170.jpg', 'Om', 'Nil', 'M', 0, 000, 000, 000, 0),
(171, 'VIBHU KRISHNA', 'hs18h044@smail.iitm.ac.in', '9446538584', 17, '3,5,11,24', 'HS18H044', 'Non-Veg', 'A+', '171.jpg', 'Vibhu', 'Nil', 'M', 0, 000, 000, 000, 0),
(172, 'SPHURTI AGARWAL', 'sphurti13agarwal@gmail.com', '9940320498', 17, '17,18,19,22,23', 'CH16B066', 'Veg', 'B+', '172.jpg', 'SPHURTI', 'Nil', 'F', 0, 000, 000, 000, 0),
(173, 'JAI KEDIA', 'ce17b037@smail.iitm.ac.in', '8500030953', 17, '1,10,11,15,16,24', 'CE17B037', 'Veg', 'A+', '173.jpg', 'Jai', 'Nil', 'M', 0, 000, 000, 000, 0),
(174, 'L R KAMALA DEVI', 'Hs15h016@smail.iitm.ac.in', '9176494315', 17, '17,18,20,21,22,23', 'HS15H016', 'Non-Veg', 'B+', '174.jpg', 'KAMALA', 'Nil', 'F', 0, 000, 000, 000, 0),
(175, 'SHAGNIK PAL', 'ee17b147@smail.iitm.ac.in', '9869249831', 17, '24', 'EE17B147', 'Non-Veg', 'A+', '175.jpg', 'Pal', 'Nil', 'M', 0, 000, 000, 000, 0),
(176, 'GAURAV MILIND VAIDYA', 'gvaidya.m@gmail.com', '9513331386', 17, '24', 'PH18B008', 'Non-Veg', 'A+', '176.jpg', 'Gaurav', 'Nil', 'M', 0, 000, 000, 000, 0),
(177, 'B SREERAM', 'mm18b014@smail.iitm.ac.in', '8593833390', 17, '6,24', 'MM18B014', 'Veg', 'B+', '177.jpg', 'SREERAM', 'Nil', 'M', 0, 000, 000, 000, 0),
(178, 'PALASH PANTAWANE', 'Ae17b105@smail.iitm.ac.in', '9840898150', 17, '24', 'AE17B105', 'Non-Veg', 'B+', '178.jpg', 'PALASH', 'Nil', 'M', 0, 000, 000, 000, 0),
(179, 'VARAD JOSHI', 'Me17b038@smail.iitm.ac.in', '9511639134', 17, '9,24', 'ME17B038', 'Non-Veg', 'A+', '179.jpg', 'varad', 'Nil', 'M', 0, 000, 000, 000, 0),
(181, 'ANIRUDDHA KISHOR KAWADE', 'cs18b002@smail.iitm.ac.in', '9869423830', 17, '6,7,8,13,14,15,16,24', 'CS18B002', 'Non-Veg', 'O+', '181.jpg', 'KISHOR', 'Nil', 'M', 0, 000, 000, 000, 0),
(182, 'PRATAP KUMAR ', 'pratap@iitm.ac.in', '8979564562', 17, 'staff', 'Coach', 'Non-Veg', 'A+', '182.jpg', 'Kumar', 'Nil', 'M', 0, 000, 000, 000, 0),
(183, 'P. RAJU', 'raju_p@iitm.ac.in', '8979568765', 17, 'staff', '0675', 'Non-Veg', 'A+', '183.jpg', 'Raju', 'Nil', 'M', 0, 000, 000, 000, 0),
(184, 'DILLIBABU', 'babu@iitm.ac.in', '8979765456', 17, 'staff', 'madras1', 'Non-Veg', 'O+', '184.jpg', 'babu', 'Nil', 'M', 0, 000, 000, 000, 0),
(185, 'ADITI SEN', 'senaditti@gmail.com', '8017600751', 16, '17,20,22,23', '16AT92R01', 'Non-Veg', 'O+', '185.jpg', 'ADITI SEN', 'Nil', 'F', 0, 000, 000, 000, 0),
(186, 'KALYANI INGLE', 'kalyaniingle@gmail.com', '9609783443', 16, '17,18,19,22,23', '17AR91R03', 'Veg', 'B+', '186.jpg', 'KALYANI', 'Nil', 'F', 0, 000, 000, 000, 0),
(187, 'SUPRITI SEN', 'supritisen.c@gmail.com', '9674538057', 16, '18,19,21,22,23', '16MS92R02', 'Non-Veg', 'B+', '187.jpg', 'SUPRITI SEN', 'Nil', 'F', 0, 000, 000, 000, 0),
(188, 'AMRUTA NAGPURE', 'anaghaarchi14@gmail.com', '8378089944', 16, '17,18,20,21,22,23', '19ID60R09', 'Non-Veg', 'B+', '188.jpg', 'AMRUTA', 'Nil', 'F', 0, 000, 000, 000, 0),
(189, 'ISHAAN AHAMAD', 'Ishaanahmed90@gmail.com', '9647083364', 16, 'staff', '17172', 'Non-Veg', 'O+', '189.jpg', 'Ishaan', 'Nil', 'M', 0, 000, 000, 000, 0),
(190, 'DR. SUSANTA KUMAR PANDA', 'susanta_panda@iitkgp.ac.in', '8232943493', 16, 'staff', '17176', 'Non-Veg', 'B+', '190.jpg', 'Panda', 'Nil', 'M', 0, 000, 000, 000, 0),
(191, 'SOUMEN MONDAL', 'soumen@iitkgp.ac.in', '9231233433', 16, 'staff', '96010', 'Non-Veg', 'A+', '191.jpg', 'Soumen', 'Nil', 'M', 0, 000, 000, 000, 0),
(192, 'MRS. PRIYANKS', 'priyanka@iitkgp.ac.in', '9123473843', 16, 'staff', '17030', 'Non-Veg', 'A+', '192.jpg', 'Priyanks', 'Nil', 'F', 0, 000, 000, 000, 0),
(193, 'RAJIB DAS', 'rajib@iitkgp.ac.in', '9213232212', 16, 'staff', '17173', 'Non-Veg', 'A+', '193.jpg', 'Rajib', 'Nil', 'M', 0, 000, 000, 000, 0),
(194, 'SUDHIR KUMAR', 'sudhir@iitkgp.ac.in', '9090990909', 16, 'staff', '11003', 'Non-Veg', 'A+', '194.jpg', 'Sudhir', 'Nil', 'M', 0, 000, 000, 000, 0),
(195, 'ARDHENDU KR GHOSE', 'ardhendu@iitkgp.ac.in', '9876512345', 16, 'staff', '11005', 'Non-Veg', 'A+', '195.jpg', 'Ardhendu', 'Nil', 'M', 0, 000, 000, 000, 0),
(196, 'DR.GYAN SWAROOP', 'gyan@iitkgp.ac.in', '9786745532', 16, 'staff', '11007', 'Non-Veg', 'A+', '196.jpg', 'gyan', 'Nil', 'M', 0, 000, 000, 000, 0),
(197, 'ADRIB MITRA', 'adrib@iitkgp.ac.in', '97899998678', 16, 'staff', '16047', 'Non-Veg', 'A+', '197.jpg', 'Ardib', 'Nil', 'M', 0, 000, 000, 000, 0),
(198, 'SAMBA KAR', 'samba@iitkgp.ac.in', '9898998989', 16, 'staff', '16049', 'Non-Veg', 'A+', '198.jpg', 'samba', 'Nil', 'M', 0, 000, 000, 000, 0),
(199, 'PRANAB SARKAR', 'pranab@iitkgp.ac.in', '9132390000', 16, 'staff', '16051', 'Non-Veg', 'A+', '199.jpg', 'Pranab', 'Nil', 'M', 0, 000, 000, 000, 0),
(200, 'AMARESH MONDAL', 'amaresh@iitkgp.ac.in', '9876543219', 16, 'staff', '17159', 'Non-Veg', 'A+', '200.jpg', 'amaresh', 'Nil', 'M', 0, 000, 000, 000, 0),
(201, 'ASHOK DAS', 'ashok@iitkgp.ac.in', '9090980808', 16, 'staff', '89057', 'Non-Veg', 'A+', '201.jpg', 'Ashok', 'Nil', 'M', 0, 000, 000, 000, 0),
(202, 'MANGAL MANDI', 'mangal@iitkgp.ac.in', '9111111111', 16, 'staff', '90052', 'Non-Veg', 'A+', '202.jpg', 'Mangal', 'Nil', 'M', 0, 000, 000, 000, 0),
(203, 'CHAND KANTA ARI', 'chand@iitkgp.ac.in', '9090970707', 16, 'staff', '83062', 'Non-Veg', 'A+', '203.jpg', 'chand', 'Nil', 'M', 0, 000, 000, 000, 0),
(204, 'SHYAMAL ADHIKARI', 'shyamal@iitkgp.ac.in', '9898978778', 16, 'staff', '09062', 'Non-Veg', 'A+', '204.jpg', 'shyamal', 'Nil', 'M', 0, 000, 000, 000, 0),
(205, 'HATI ENKAT SWAMY', 'hatienkat@iitkgp.ac.in', '9876543218', 16, 'staff', '03035', 'Non-Veg', 'A+', '205.jpg', 'Hati', 'Nil', 'M', 0, 000, 000, 000, 0),
(206, 'PROF.PS BURADA', 'psburada@iitkgp.ac.in', '9112233215', 16, 'staff', '03034', 'Non-Veg', 'A+', '206.jpg', 'PS', 'Nil', 'M', 0, 000, 000, 000, 0),
(207, 'PROF.SK BHAKTA', 'skbhakta@iitkgp.ac.in', '91234423112', 16, 'staff', '03056', 'Non-Veg', 'A+', '207.jpg', 'SK', 'Nil', 'M', 0, 000, 000, 000, 0),
(208, 'SS JHA', 'ssjha@iitkgp.ac.in', '9125596885', 16, 'staff', '18998', 'Non-Veg', 'B-', '208.jpg', 'SS', 'Nil', 'M', 0, 000, 000, 000, 0),
(209, 'PROF. SHANTANU', 'shantanu@iitkgp.ac.in', '9898767654', 16, 'staff', '13324', 'Non-Veg', 'A+', '209.jpg', 'Shantanu', 'Nil', 'M', 0, 000, 000, 000, 0),
(213, 'ALOK KANTI DEB', 'alokkanti@ee.iitkgp.ernet.in', '9593128637', 16, 'staff', '46', 'Non-Veg', 'B+', '213.jpg', 'Alok', 'Nil', 'M', 0, 000, 000, 000, 0),
(214, 'PROF J KUMAR', 'jkumar@maths.iitkgp.ernet.in', '9547144078', 16, 'staff', '1234', 'Non-Veg', 'B+', '214.jpg', 'J Kumar', 'Nil', 'M', 0, 000, 000, 000, 0),
(226, 'JITENDRA MAHAKUD', 'jmahakud@hss.iitkgp.ernet.in', '5', 16, 'staff', '.', 'Veg', 'O+', '226.jpg', '.', 'Nil', 'M', 0, 000, 000, 000, 0),
(231, 'AMREESH CHANDRA', 'achandra@phy.iitkgp.ernet.in', '9734654714', 16, 'staff', '46', 'Non-Veg', 'B+', '231.jpg', 'Amreesh', 'Nil', 'M', 0, 000, 000, 000, 0),
(233, 'PROF J. K. JHA', 'jkjha@iem.iitkgp.ernet.in', '9123123123', 16, 'staff', '1234', 'Non-Veg', 'B+', '233.jpg', 'J.k. Jha', 'Nil', 'M', 0, 000, 000, 000, 0),
(236, 'TRILOK SINGH', 'trilok@iitkgp.ac.in', '7430911994', 16, 'staff', '46', 'Non-Veg', 'B+', '236.jpg', 'Trilok', 'Nil', 'M', 0, 000, 000, 000, 0),
(240, 'RAJENDRA SINGH', 'rsing@agfe.iitkgp.ernet.in', '3222283149', 16, 'staff', '46', 'Non-Veg', 'A+', '240.jpg', 'Rajendra', 'Nil', 'M', 0, 000, 000, 000, 0),
(243, 'ANANDROOP BHATTACHARYA', 'anandaroop@mech.iitkgp.ac.in', '9680659455', 16, 'staff', '46', 'Non-Veg', 'A+', '243.jpg', 'Anandroop', 'Nil', 'M', 0, 000, 000, 000, 0),
(244, 'ADRIJIT GOSWAMI', 'goswami@maths.iitkgp.ac.in', '9680649480', 16, 'staff', '46', 'Non-Veg', 'B+', '244.jpg', 'Adrijit', 'Nil', 'M', 0, 000, 000, 000, 0),
(245, 'PARTHA GOSWAMI', 'partha@cc.iitkgp.ac.in', '9680659980', 16, 'staff', '46', 'Non-Veg', 'A-', '245.jpg', 'Partha', 'Nil', 'M', 0, 000, 000, 000, 0),
(246, 'PRABINA RAJIB', 'prabina@vgsom.iitkgp.ac.in', '9680659433', 16, 'staff', '46', 'Non-Veg', 'A+', '246.jpg', 'Prabina', 'Nil', 'F', 0, 000, 000, 000, 0),
(248, 'NEERAJ KUMAR GOEL', 'ngoyal@hijli.iitkgp.ernet.in', '9434741267', 16, 'staff', '46', 'Non-Veg', 'A+', '248.jpg', 'Neeraj', 'Nil', 'M', 0, 000, 000, 000, 0),
(249, 'SOUMEN KUMAR MANDEL', 'suman@adm.iitkgp.ernet.in', '9434717496', 16, 'staff', '46', 'Non-Veg', 'A+', '249.jpg', 'Soumen', 'Nil', 'M', 0, 000, 000, 000, 0),
(251, 'KINGSHOOK BATTACHARYA', 'kingshook@gmail.com', '9434035894', 16, 'staff', '46', 'Non-Veg', 'A+', '251.jpg', 'Kingshiik', 'Nil', 'M', 0, 000, 000, 000, 0),
(252, 'UDAY SHANKAR', 'uday@rgsoipl.iitkgp.ernet.in', '9547144070', 16, 'staff', '46', 'Non-Veg', 'B+', '252.jpg', 'Uday', 'Nil', 'M', 0, 000, 000, 000, 0),
(253, 'SAMIR DASGUPTA', 'samiriitkgp@gamil.com', '7430911911', 16, 'staff', '46', 'Non-Veg', 'A+', '253.jpg', 'samir', 'Nil', 'M', 0, 000, 000, 000, 0),
(254, 'JOY SEN', 'joysen@iem.iitkgp.ernet.in', '7430911955', 16, 'staff', '46', 'Non-Veg', 'A+', '254.jpg', 'JOy', 'Nil', 'M', 0, 000, 000, 000, 0),
(257, 'BHARAT BHUSAN RAI', 'bbrai@adm.iitkgp.ernet.in', '4124578965', 16, 'staff', '120', 'Non-Veg', 'A+', '257.jpg', 'Bharat Bhusan Rai', 'Nil', 'M', 0, 000, 000, 000, 0),
(259, 'SOUMITRA GHOSH DOSTIDAR', 'qsskharagpur@gmail.com', '9933023104', 16, 'staff', '145215', 'Non-Veg', 'A+', '259.jpg', 'Soumitra', 'Nil', 'M', 0, 000, 000, 000, 0),
(260, 'SISIR KUMAR PAL', 'Sisirpa1968@gmail.com', '94344958956', 16, 'staff', '24844', 'Non-Veg', 'A+', '260.jpg', 'Sisir Kumar Pal', 'Nil', 'M', 0, 000, 000, 000, 0),
(265, 'NAND LAL', 'nandlal@iitkgp.ac.in', '9756188965', 16, 'staff', '1256', 'Non-Veg', 'B+', '265.jpg', 'Nandlal', 'Nil', 'M', 0, 000, 000, 000, 0),
(266, 'SANJOY BISWAS', 'sanjoybiswas@iitkgp.ac.in', '9745863215', 16, 'staff', '7895', 'Non-Veg', 'B+', '266.jpg', 'Sanjoy', 'Nil', 'M', 0, 000, 000, 000, 0),
(267, 'CH. SHRINU', 'shrinu@iitkgp.ac.in', '1597536985', 16, 'staff', '7895', 'Non-Veg', 'B+', '267.jpg', 'Shrinu', 'Nil', 'M', 0, 000, 000, 000, 0),
(268, 'BINOY BERA', 'binoybera@iitkgp.ac.in', '9542863785', 16, 'staff', '7569', 'Non-Veg', 'B-', '268.jpg', 'binoy', 'Nil', 'M', 0, 000, 000, 000, 0),
(269, 'ATISH MONDAL', 'atish@iitkgp.ac.in', '94528631789', 16, 'staff', '8569', 'Non-Veg', 'B-', '269.jpg', 'Atish', 'Nil', 'M', 0, 000, 000, 000, 0),
(270, 'GANESH ROUTH', 'ganesh@iitkgp.ac.in', '7583954826', 16, 'staff', '8564', 'Non-Veg', 'B+', '270.jpg', 'Ganesh', 'Nil', 'M', 0, 000, 000, 000, 0),
(271, 'JUDHISTHIR PRADHAN', 'Judhisthir@iitkgp.ac.in', '5869475846', 16, 'staff', '5967', 'Non-Veg', 'B+', '271.jpg', 'Judhisthir', 'Nil', 'M', 0, 000, 000, 000, 0),
(272, 'KARTIK SAREN', 'kartik@iitkgp.ac.in', '5987526348', 16, 'staff', '5963', 'Non-Veg', 'B+', '272.jpg', 'Kartik', 'Nil', 'M', 0, 000, 000, 000, 0),
(273, 'R RAVI KUMAR', 'ravi@iitkgp.ac.in', '9452698745', 16, 'staff', '8563', 'Non-Veg', 'B+', '273.jpg', 'Ravi', 'Nil', 'M', 0, 000, 000, 000, 0),
(274, 'KOUSHIK NAYEK', 'kaushik@iitkgp.ac.in', '7563489563', 16, 'staff', '8563', 'Non-Veg', 'B+', '274.jpg', 'Koushik', 'Nil', 'M', 0, 000, 000, 000, 0),
(275, 'MIHIR SEN', 'mihir@iitkgp.ac.in', '8563459867', 16, 'staff', '7589', 'Non-Veg', 'B+', '275.jpg', 'mihir', 'Nil', 'M', 0, 000, 000, 000, 0),
(276, 'C H MOHAN RAO', 'mohan@iitkgp.ac.in', '75986489675', 16, 'staff', '8697', 'Non-Veg', 'B-', '276.jpg', 'Mohan', 'Nil', 'M', 0, 000, 000, 000, 0),
(277, 'NEHA RAJ TIRKEY ', 'neha@iitbhu.ac.in', '9876543221', 1, '17', '17114014', 'Non-Veg', 'A+', '277.jpg', 'neha', 'Nil', 'F', 0, 000, 000, 000, 0),
(278, 'GAURAV KUMAR ', 'gaurav@iitr.ac.in', '5678986754', 21, '24', '180265', 'Non-Veg', 'A+', '278.jpg', 'Gaurav', 'Nil', 'M', 0, 000, 000, 000, 0),
(279, 'WRISHIK NASKAR', 'wrishik@iitr.ac.in', '08979695949', 21, '24', '160817', 'Non-Veg', 'B+', '279.jpg', 'Gaurav', 'Nil', 'M', 0, 000, 000, 000, 0),
(280, 'SIDHARTH BANKUPALLE', 'sid@iitg.ac.in', '6575859505', 10, '15', '180123047', 'Veg', 'A+', '280.jpg', 'Sid', 'Nil', 'M', 0, 000, 000, 000, 0),
(281, 'MANISH DHAKA', 'manish@iitr.ac.in', '9876987655', 21, '24', '18524008', 'Veg', 'B+', '281.jpg', 'Manish', 'Nil', 'M', 0, 000, 000, 000, 0),
(282, 'RITWIK SINGHAI', 'ritwik@iitkgp.ac.in', '8797079897', 16, '24', '18AE10023', 'Veg', 'A+', '282.jpg', 'RITS', 'Nil', 'M', 0, 000, 000, 000, 0),
(283, 'GAURAV KUMAR ', 'gaurav@iitk.ac.in', '9876543231', 15, '24', '180265', 'Veg', 'A+', '283.jpg', 'Gaurav', 'Nil', 'M', 0, 000, 000, 000, 0),
(284, 'WRISHIK NASKAR ', 'naskar@iitk.ac.in', '8979794567', 15, '24', '160817', 'Veg', 'A+', '284.jpg', 'naskar', 'Nil', 'M', 0, 000, 000, 000, 0),
(285, 'SRINIVAS RAO', 'srinivasrao@iitkgp.ac.in', '8906909242', 16, 'staff', 'f', 'Non-Veg', 'B-', '285.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(286, 'BASKAR RAO', 'Baskar@iitkgp.ac.in', '8436025452', 16, 'staff', 'f', 'Veg', 'A+', '286.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(287, 'MAKHAN BERA', 'makhan@iitkgp.ac.in', '9800595421', 16, 'staff', 'f', 'Non-Veg', 'A+', '287.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(288, 'SHATOBAN NAYEK', 'shatoban@iitkgp.ac.in', '8788214094', 16, 'staff', 'f', 'Non-Veg', 'A+', '288.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(289, 'N K GOYAL', 'goyaliitkgp@gmail.com', '960659488', 16, 'staff', '90', 'Non-Veg', 'A+', '289.jpg', 'Goyal', 'Nil', 'M', 0, 000, 000, 000, 0),
(290, 'BHIM NAYEK ', 'bhim@iitkgp.ac.in', '9732961914', 16, 'staff', 'd', 'Non-Veg', 'A+', '290.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(291, 'PROF. SOMESH KUMAR', 'somesgiitkgp@gmail.com', '09421630066', 16, 'staff', '46', 'Non-Veg', 'A+', '291.jpg', 'Somesh', 'Nil', 'M', 0, 000, 000, 000, 0),
(292, 'TAPAS BERA', 'tapas@iitkgp.ac.in', '9733622031', 16, 'staff', 'f', 'Non-Veg', 'A+', '292.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(293, 'SUKUMAR KAR', 'sukumar@iitkgp.ac.in', '9735717087', 16, 'staff', 'f', 'Non-Veg', 'A+', '293.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(294, 'PROF. UDAY SHANKER', 'udayiitkgp@gmail.com', '09421630067', 16, 'staff', '77', 'Non-Veg', 'A+', '294.jpg', 'Uday', 'Nil', 'M', 0, 000, 000, 000, 0),
(295, 'NIRMAL BERA', 'nirmal@iitkgp.ac.in', '8348435967', 16, 'staff', 'd', 'Non-Veg', 'A+', '295.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(296, 'BAGA ADINARAYAN', 'baga@iitkgp.ac.in', '8509679171', 16, 'staff', 'f', 'Non-Veg', 'A+', '296.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(297, 'S K VARSHNEY', 'varshneyiitkgp@gmail.com', '09421630055', 16, 'staff', '54', 'Non-Veg', 'A+', '297.jpg', 'Varshney', 'Nil', 'M', 0, 000, 000, 000, 0),
(298, 'RAJU RASUA', 'raju@iitkgp.ac.in', '7550900693', 16, 'staff', 'd', 'Non-Veg', 'A+', '298.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(299, 'BIDHAN CH. NAYEK ', 'bidhan@iitkgp.ac.in', '832087263', 16, 'staff', 'f', 'Non-Veg', 'A+', '299.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(300, 'KARTIK NAYEK', 'kartikn@iitkgp.ac.in', '9735213621', 16, 'staff', 's', 'Non-Veg', 'A+', '300.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(301, 'PINTU AUTTA', 'pintu@iitkgp.ac.in', '9775287641', 16, 'staff', 'd', 'Non-Veg', 'A+', '301.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(302, 'PRITHWI RAJ MAHATO', 'prithwi@iitkgp.ac.in', '7602735591', 16, 'staff', 'h', 'Non-Veg', 'A+', '302.jpg', 'j', 'Nil', 'M', 0, 000, 000, 000, 0),
(303, 'MANU SINGH', 'manu@iitkgp.ac.in', '8100398769', 16, 'staff', 'f', 'Non-Veg', 'A+', '303.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(304, 'BENUMOY BHANJA', 'benumoy@iitkgp.ac.in', '9126649323', 16, 'staff', 'f', 'Non-Veg', 'A+', '304.jpg', 'f', 'Nil', 'M', 0, 000, 000, 000, 0),
(305, 'SHYAM SUNDAR RAO', 'shyamsundar@iitkgp.ac.in', '8509575070', 16, 'staff', 'd', 'Non-Veg', 'A+', '305.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(306, 'SANJOY YADAV', 'sanjoyyadav@iitkgp.ac.in', '7384525693', 16, 'staff', 'd', 'Non-Veg', 'A+', '306.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(307, 'GANESH CHANDRA ROY', 'ganeshc@iitkgp.ac.in', '9933390352', 16, 'staff', 'd', 'Non-Veg', 'A+', '307.jpg', 'd', 'Nil', 'M', 0, 000, 000, 000, 0),
(308, 'MUKUL BHATTACHARYYA', 'mukulb@iitkgp.acin', '7063210112', 16, 'staff', 'g', 'Non-Veg', 'A+', '308.jpg', 'g', 'Nil', 'M', 0, 000, 000, 000, 0),
(309, 'SWAPAN ADAK', 'swapan@gmail.com', '09421630033', 16, 'staff', '55', 'Non-Veg', 'A+', '309.jpg', 'mj', 'Nil', 'M', 0, 000, 000, 000, 0),
(310, 'MANAS BISWAS', 'manas@gmail.com', '09421630076', 16, 'staff', '4', 'Non-Veg', 'A+', '310.jpg', 'M', 'Nil', 'M', 0, 000, 000, 000, 0),
(311, 'PROSENJIT CHAKRABORTY', 'cha@gmail.com', '09421637066', 16, 'staff', '64', 'Non-Veg', 'A+', '311.jpg', 'jj', 'Nil', 'M', 0, 000, 000, 000, 0),
(312, 'WRISHIK NASKAR ', 'wrishik@iitrkjip.ac.in', '7891234567', 15, '24', 'naskar', 'Non-Veg', 'A+', '312.jpg', 'Naskar', 'Nil', 'M', 0, 000, 000, 000, 0),
(313, 'PARTHA DAS', 'partha@gmail.com', '09421730066', 16, 'staff', '6', 'Non-Veg', 'A+', '313.jpg', 'h', 'Nil', 'M', 0, 000, 000, 000, 0),
(314, 'BIJOY DAS', 'das@gmail.co', '09427630066', 16, 'staff', '7', 'Non-Veg', 'A+', '314.jpg', 'b', 'Nil', 'M', 0, 000, 000, 000, 0),
(315, 'BISWAJIT ADGIRI', 'adgiri@gmail.com', '09421630766', 16, 'staff', '44', 'Non-Veg', 'A+', '315.jpg', 'B', 'Nil', 'M', 0, 000, 000, 000, 0),
(316, 'DEBASIS KUNDU', 'kundu@gmail.com', '09427430066', 16, 'staff', '997', 'Non-Veg', 'A+', '316.jpg', 'D', 'Nil', 'M', 0, 000, 000, 000, 0),
(317, 'BISWANATH ADHIKARI', 'adhikari@gmail.com', '09421635466', 16, 'staff', '45', 'Non-Veg', 'A+', '317.jpg', 'B', 'Nil', 'F', 0, 000, 000, 000, 0),
(318, 'SONJOY KOLEY', 'koley@gmail.com', '09421630016', 16, 'staff', '464', 'Non-Veg', 'A+', '318.jpg', 'J', 'Nil', 'M', 0, 000, 000, 000, 0),
(319, 'ILLA CHOUDHARY', 'Illa@gmail.com', '09421630566', 16, 'staff', '65', 'Non-Veg', 'A+', '319.jpg', 'illa', 'Nil', 'F', 0, 000, 000, 000, 0),
(320, 'ASIS BANERJEE', 'asis@gmail.com', '09421656066', 16, 'staff', '877', 'Non-Veg', 'A+', '320.jpg', 'A', 'Nil', 'M', 0, 000, 000, 000, 0),
(321, 'BULBUL SAHA', 'saha@gmail.com', '09421630266', 16, 'staff', '798', 'Non-Veg', 'A+', '321.jpg', 'B', 'Nil', 'M', 0, 000, 000, 000, 0),
(322, 'GANESH BANERJEE', 'g@gmail.com', '8', 16, 'staff', '6', 'Non-Veg', 'A+', '322.jpg', 'i', 'Nil', 'M', 0, 000, 000, 000, 0),
(323, 'TARAK HARDER', 'tarak@gmail.com', '7474', 16, 'staff', '76', 'Non-Veg', 'A+', '323.jpg', 'T', 'Nil', 'M', 0, 000, 000, 000, 0),
(324, 'TARAK NATH SHOW', 'nath@gmail.com', '2', 16, 'staff', '4', 'Non-Veg', 'A+', '324.jpg', 'T', 'Nil', 'M', 0, 000, 000, 000, 0),
(325, 'KHMENKAR DEY', 'dey@gmail.com', '41', 16, 'staff', '55', 'Non-Veg', 'A+', '325.jpg', 'k', 'Nil', 'M', 0, 000, 000, 000, 0),
(326, 'KANKAN PANIGRAHI', 'kankan@gmail.com', '32432', 16, 'staff', '3', 'Non-Veg', 'A-', '326.jpg', 'K', 'Nil', 'F', 0, 000, 000, 000, 0),
(327, 'KRISHNA DEBNATH', 'kri@gmail.com', '220', 16, 'staff', '5', 'Non-Veg', 'A+', '327.jpg', 'v', 'Nil', 'M', 0, 000, 000, 000, 0),
(328, 'SANTANU GHOSH', 'ghosh@gmail.com', '6', 16, 'staff', '5', 'Non-Veg', 'A+', '328.jpg', '7', 'Nil', 'M', 0, 000, 000, 000, 0),
(329, 'KUSHAL DAS', 'das@gmail.com', '799', 16, 'staff', '5', 'Veg', 'A+', '329.jpg', '5', 'Nil', 'M', 0, 000, 000, 000, 0),
(330, 'SUKRACHARYA SAHA', 'ssaha@gmail.com', '44944', 16, 'staff', '45 ', 'Veg', 'A+', '330.jpg', '43', 'Nil', 'M', 0, 000, 000, 000, 0),
(331, 'GANARANJAN PRAMANICK', 'gp@gmail.com', '5465464', 16, 'staff', '16', 'Veg', 'A+', '331.jpg', '54', 'Nil', 'M', 0, 000, 000, 000, 0),
(332, 'SITALA PATHAK', 'pathak@gmail.com', '45736', 16, 'staff', '999', 'Veg', 'A+', '332.jpg', '76', 'Nil', 'M', 0, 000, 000, 000, 0),
(333, 'MODAN MOHAN MARIK', 'marik@gmail.com', '457644', 16, 'staff', '44', 'Veg', 'A+', '333.jpg', '65', 'Nil', 'M', 0, 000, 000, 000, 0),
(334, 'SEKHAR SARKAR', 'sarkar@gmail.com', '65522253', 16, 'staff', '3666', 'Veg', 'A+', '334.jpg', '236', 'Nil', 'M', 0, 000, 000, 000, 0),
(335, 'SANJIT DEY', 'deyiitkgp@gmail.com', '4494654', 16, 'staff', '45', 'Veg', 'A+', '335.jpg', '4', 'Nil', 'M', 0, 000, 000, 000, 0),
(336, 'TAPAN GHOSH', 'ghoshiitkgp@gmail.com', '9885', 16, 'staff', '585', 'Veg', 'A+', '336.jpg', '2+2', 'Nil', 'M', 0, 000, 000, 000, 0),
(337, 'BARUN GHOSH', 'ghoshpiitkgp@gmail.com', '465464647', 16, 'staff', '465641', 'Veg', 'A+', '337.jpg', '44', 'Nil', 'M', 0, 000, 000, 000, 0),
(338, 'ASIT BOXI', 'boxiiitkgp@gmail.com', '644', 16, 'staff', '64', 'Veg', 'A+', '338.jpg', '44', 'Nil', 'M', 0, 000, 000, 000, 0),
(339, 'TARAKESWAR YADAV', 'yadaiitkgp@gmail.com', '555', 16, 'staff', '5454', 'Veg', 'A+', '339.jpg', '55', 'Nil', 'M', 0, 000, 000, 000, 0),
(340, 'PRODIP ROY', 'royiitkgp@gmail.com', '59764646', 16, 'staff', '466', 'Veg', 'A+', '340.jpg', '4646', 'Nil', 'M', 0, 000, 000, 000, 0),
(341, 'BASUDEV DEY', 'bdeyiitkgp@gmail.com', '5635635', 16, 'staff', '8645645', 'Veg', 'A+', '341.jpg', '9635', 'Nil', 'M', 0, 000, 000, 000, 0),
(342, 'PROBABLY DAS', 'dasiitkgp@gmail.com', '4875546', 16, 'staff', '6987', 'Veg', 'A+', '342.jpg', '45656', 'Nil', 'M', 0, 000, 000, 000, 0),
(343, 'SOVON GHOSH', 'sghoshiitkgp@gmail.com', '568755', 16, 'staff', '6645645', 'Veg', 'A+', '343.jpg', '842', 'Nil', 'M', 0, 000, 000, 000, 0),
(344, 'GOUTAMDAS', 'gdasiitkgp@gmail.com', '68645221', 16, 'staff', '4552', 'Veg', 'A+', '344.jpg', '8525545', 'Nil', 'M', 0, 000, 000, 000, 0),
(345, 'BABUN NATH', 'nathiitkgp@gmail.com', '854452', 16, 'staff', '68231', 'Veg', 'A+', '345.jpg', '835', 'Nil', 'M', 0, 000, 000, 000, 0),
(346, 'C H MOHAN RAO', 'raoiitkgp@gmail.com', '632', 16, 'staff', '653', 'Veg', 'A+', '346.jpg', '8232', 'Nil', 'M', 0, 000, 000, 000, 0),
(347, 'MIHIR SEN', 'seniitkgp@gmail.com', '86352', 16, 'staff', '65353', 'Veg', 'A+', '347.jpg', '352', 'Nil', 'M', 0, 000, 000, 000, 0),
(348, 'KAUSHIK NAYEK', 'nayekiitkgp@gmail.com', '832', 16, 'staff', '252', 'Veg', 'A+', '348.jpg', '862323', 'Nil', 'M', 0, 000, 000, 000, 0),
(349, 'R RAVI KUMAR', 'raviiitkgp@gmail.com', '6215', 16, 'staff', '63542', 'Veg', 'A+', '349.jpg', '8632', 'Nil', 'M', 0, 000, 000, 000, 0),
(350, 'KARTIK SAREN', 'sareniitkgp@gmail.com', '8335352', 16, 'staff', '63', 'Veg', 'A+', '350.jpg', '562.', 'Nil', 'M', 0, 000, 000, 000, 0),
(351, 'JUDHISTHIR PRADHAN', 'pradhaniitkgp@gmail.com', '5454', 16, 'staff', '654', 'Veg', 'A+', '351.jpg', '55', 'Nil', 'M', 0, 000, 000, 000, 0),
(352, 'GANESH ROUTH', 'routhiitkgp@gmail.com', '332', 16, 'staff', '655', 'Veg', 'A-', '352.jpg', '9632', 'Nil', 'M', 0, 000, 000, 000, 0),
(353, 'ATISH MONDEL', 'mondeliitkgp@gmail.com', '83523', 16, 'staff', '6835', 'Veg', 'A+', '353.jpg', '66523', 'Nil', 'M', 0, 000, 000, 000, 0),
(354, 'BINOY BERA', 'beraiitkgp@gmail.com', '6835231', 16, 'staff', '4535', 'Veg', 'A+', '354.jpg', '653223', 'Nil', 'M', 0, 000, 000, 000, 0),
(355, 'C H SRINU', 'srinuiitkgp@gmail.com', '65323', 16, 'staff', '65323', 'Veg', 'A+', '355.jpg', '65332', 'Nil', 'M', 0, 000, 000, 000, 0),
(356, 'SANJOY BISWAS', 'sbiswasiitkgp@gmail.com', '83523255', 16, 'staff', '6535231', 'Veg', 'A+', '356.jpg', '653', 'Nil', 'M', 0, 000, 000, 000, 0),
(357, 'NAND LAL', 'laliitkgp@gmail.com', '659556', 16, 'staff', '63', 'Veg', 'A+', '357.jpg', '853', 'Nil', 'M', 0, 000, 000, 000, 0),
(358, 'P DHARMA', 'dharmaiitkgp@gmail.com', '65565', 16, 'staff', '554', 'Veg', 'A+', '358.jpg', '65665', 'Nil', 'M', 0, 000, 000, 000, 0),
(359, 'KAMAL SIKDAR', 'sikdariitkgp@gmail.com', '55553535', 16, 'staff', '6556', 'Veg', 'A+', '359.jpg', '5655', 'Nil', 'M', 0, 000, 000, 000, 0),
(360, 'WRISHIK NASKAR', 'Wrishik@iitkgp.ac.in', '9876543210', 16, '24', '160817', 'Non-Veg', 'A+', '360.jpg', 'Wrishik', 'Nil', 'M', 0, 000, 000, 000, 0),
(361, 'KUSHAGRA RAMNANI', 'kush@iitr.ac.in', '9865329812', 16, 'staff', '1657876', 'Non-Veg', 'O+', '361.jpg', 'Abbinav', 'Nil', 'M', 0, 000, 000, 000, 0),
(362, 'AHANA KHANDELWAL', 'ahana@iitr.ac.in', '1239876540', 16, 'staff', '78975', 'Non-Veg', 'A+', '362.jpg', 'Ahana', 'Nil', 'F', 0, 000, 000, 000, 0),
(363, 'ABHINAV RAJ', 'abhinav@iitj.ac.in', '3699633333', 16, 'staff', 'Qwert', 'Non-Veg', 'O+', '363.jpg', 'Abbinav', 'Nil', 'M', 0, 000, 000, 000, 0),
(366, 'VIKASH MISHRA', 'ahana@iitjammu.ac.in', '3690030000', 16, 'staff', '12345', 'Non-Veg', 'A-', '366.jpg', 'Ahana', 'Nil', 'M', 0, 000, 000, 000, 0),
(367, 'SHASHI RANJAN', 'shashi@iitr.ac.in', '5656560000', 16, 'staff', '1234', 'Non-Veg', 'O+', '367.jpg', 'Shahi', 'Nil', 'M', 0, 000, 000, 000, 0),
(368, 'VISHAL KUMAR SINGH', 'vishal@iitkanpur.ac.in', '8095000012', 16, 'staff', '65758', 'Veg', 'O+', '368.jpg', 'VKS', 'Nil', 'M', 0, 000, 000, 000, 0),
(369, 'ABHISHEK SINGH', 'abhishek@iitj.ac.in', '6939258012', 16, 'staff', 'Asdftg', 'Non-Veg', 'O+', '369.jpg', 'Abhishek', 'Nil', 'M', 0, 000, 000, 000, 0);

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
(1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0),
(2, 2, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1, 0, 0),
(3, 3, 0, 0, 0, 3, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 2, 0, 0),
(6, 6, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 2, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 7, 0, 0, 0, 1, 0, 0),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 6, 0, 0, 0, 2, 0, 0),
(12, 12, 0, 0, 0, 2, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(13, 13, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0),
(14, 14, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 0, 0, 0, 0, 0, 0),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 4, 0, 0),
(17, 17, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1, 0, 0),
(18, 18, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0),
(19, 19, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 2, 0, 0),
(20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, 0, 0, 3, 0, 0),
(21, 21, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 10, 0, 0, 0, 0, 0, 0),
(23, 23, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 10, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 4, 0, 0, 0, 2, 0, 0),
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
(1, 1, 0),
(2, 2, 0),
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
(15, 15, 10),
(16, 16, 20),
(17, 17, 24),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 8),
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
  `clg_1st` int(5) NOT NULL,
  `clg_2nd` int(5) NOT NULL,
  `clg_3rd` int(5) NOT NULL,
  `clg_4th` int(5) NOT NULL,
  `clg_1st_player_id` int(5) NOT NULL,
  `clg_2nd_player_id` int(5) NOT NULL,
  `clg_3rd_player_id` int(5) NOT NULL,
  `clg_4th_player_id` int(5) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `comments` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_result_individual`
--

INSERT INTO `schedule_result_individual` (`id`, `sport_id`, `clgs_playing`, `players`, `date_time`, `venue`, `level`, `clg_1st`, `clg_2nd`, `clg_3rd`, `clg_4th`, `clg_1st_player_id`, `clg_2nd_player_id`, `clg_3rd_player_id`, `clg_4th_player_id`, `status`, `comments`) VALUES
(2, 13, '21,4,5,15', '28,10,73,112', '2019-10-01 08:00', 'Swimming Pool', 'Final', 21, 4, 15, 5, 73, 112, 10, 28, 'Awesome Race', ''),
(3, 17, '17,21,5', '174,56,172,81', '2019-10-01 07:30', 'Swimming Pool', 'Final', 17, 17, 5, 21, 174, 172, 56, 81, '', ''),
(4, 1, '9,21,5,17', '11,173,32,73', '2019-10-01 07:45', 'Swimming Pool', 'Final', 21, 17, 9, 5, 73, 173, 11, 32, '', ''),
(7, 18, '16,17,4', '188,174,118,172', '2019-10-02 07:30', 'Swimming Pool', 'Final', 17, 17, 4, 16, 174, 172, 118, 188, '', ''),
(8, 12, '9,21,4,5', '11,32,73,112', '2019-10-02 07:45', 'Swimming Pool', 'Final', 21, 9, 4, 5, 73, 11, 112, 32, '', ''),
(12, 4, '17,4', '164,163,100,111', '2019-09-29 07:00', 'Swimming Pool', 'Final', 17, 4, 17, 4, 164, 100, 163, 111, '', ''),
(13, 19, '16,17,4,21', '186,118,172,81', '2019-09-29 07:25', 'Swimming Pool', 'Final', 17, 4, 21, 16, 172, 118, 81, 186, '', ''),
(14, 10, '16,4,5', '50,142,141,371', '2019-09-29 07:40', 'Swimming Pool', 'Final', 16, 16, 5, 4, 142, 141, 50, 188, '', ''),
(15, 11, '17,21,15', '165,173,74,53', '2019-09-29 07:40', 'Swimming Pool', 'Final', 17, 15, 21, 17, 165, 53, 74, 173, '', ''),
(16, 3, '17,4,5,9', '164,11,100,18', '2019-09-30 07:00', 'Swimming Pool', 'Final', 17, 4, 9, 5, 164, 100, 11, 18, '', ''),
(17, 21, '16,4,15', '188,59,118,58', '2019-09-30 07:05', 'Swimming Pool', 'Final', 15, 16, 4, 15, 58, 188, 118, 59, '', ''),
(18, 14, '16,17,4', '181,141,161,112', '2019-09-30 07:30', 'Swimming Pool', 'Final', 17, 4, 16, 17, 161, 112, 141, 181, '', ''),
(19, 6, '16,21,4,5', '50,142,76,371', '2019-09-30 07:45', 'Swimming Pool', 'Final', 16, 5, 21, 4, 142, 50, 76, 188, '', ''),
(21, 5, '17,4,21', '164,76,163,100', '2019-10-03 14:20', 'Swimming Pool', 'Final', 17, 4, 21, 17, 164, 100, 76, 163, '', ''),
(22, 20, '17,21,15', '59,174,58,81', '2019-10-03 14:40', 'Swimming Pool', 'Final', 17, 21, 15, 15, 174, 81, 58, 59, '', ''),
(23, 10, '16,17,21', '165,140,173,74', '2019-10-03 14:50', 'Swimming Pool', 'Final', 17, 16, 17, 21, 165, 140, 173, 74, '', '');

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
-- Dumping data for table `schedule_result_relay`
--

INSERT INTO `schedule_result_relay` (`id`, `sport_id`, `clgs_playing`, `players`, `date_time`, `venue`, `level`, `clg_1st`, `clg_2nd`, `clg_3rd`, `clg_4th`, `status`, `comments`) VALUES
(1, 22, '', '', '2019-10-01 09:01:00', 'Swimming Pool', 'Final', 17, 16, 15, 4, 1, ''),
(3, 14, '', '', '2019-10-02 08:15:00', 'Swimming Pool', 'Final', 17, 5, 21, 4, 1, ''),
(4, 16, '', '', '2019-09-29 07:15:00', 'Swimming Pool', 'Final', 17, 4, 21, 16, 1, ''),
(5, 23, '', '', '2019-10-03 15:00:00', 'Swimming Pool', 'Final', 17, 16, 4, 15, 1, '');

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
(1, 24, 15, 21, '2019-09-29 03:00:00', 'Swimming Pool', 'League [P-B]', '15', '2', 15, 21, 'IIT Kanpur won by 15-2 against IIT Roorkee ', 'Looks like a one sided match!!!', NULL),
(2, 24, 6, 4, '2019-09-29 05:00:00', 'Swimming Pool', 'League [P-A]', '3', '10', 04, 06, 'IIT Bombay beat IIT(ISM) Dhanbad by 10-3', 'Late goal for Dhanbad and what a shoot from bombay but no goal given', NULL),
(3, 24, 16, 17, '2019-09-29 16:30:00', 'Swimming Pool', 'League [P-A]', '12', '3', 16, 17, 'IIT Kharagpur beats IIT Madras by 12-3', 'Over the top from Madras and whistle blows . TOTAL 12-3 Kharagpur beats Madras', NULL),
(4, 24, 5, 10, '2019-09-29 17:30:00', 'Swimming Pool', 'League [P-B]', '7', '10', 10, 05, 'IIT Guwahati beats IIT Delhi by 10-7', 'Whistle blows and Game won by Guwahati', NULL),
(5, 24, 16, 6, '2019-09-30 10:25:00', 'Swimming Pool', 'League [P-A]', '18 ', '0', 16, 06, 'IIT kharagpur won by 18-0', 'End of match ', NULL),
(6, 24, 15, 10, '2019-09-30 11:30:00', 'Swimming Pool', 'League [P-B]', '17', '10', 15, 10, 'IIT KANPUR WON BY 17-10', '', NULL),
(7, 24, 4, 17, '2019-09-30 16:30:00', 'Swimming Pool', 'League [P-A]', '2', '17', 17, 04, 'IIT Madras wins over IIT Bombay by 17-2', '', NULL),
(8, 24, 5, 21, '2019-09-30 17:30:00', 'Swimming Pool', 'League [P-B]', '6', '8', 21, 05, '', '', NULL),
(9, 24, 21, 10, '2019-10-01 10:00:00', 'Swimming Pool', 'League [P-B]', '7', '5', 21, 10, 'A breath taking game won by IIT roorkee', 'Quater 4 complete ', NULL),
(10, 24, 6, 17, '2019-10-01 11:40:00', 'Swimming Pool', 'League [P-A]', '2', '13', 17, 06, '', '', NULL),
(11, 24, 16, 4, '2019-10-01 16:40:00', 'Swimming Pool', 'League [P-A]', '15', '6', 16, 04, 'IIT Kharagpur beats IIT Bombay by 15-6', 'KGP Ka Tempo High Hain!', NULL),
(12, 24, 15, 5, '2019-10-01 17:40:00', 'Swimming Pool', 'League [P-B]', '11', '3', 15, 05, 'IIT Kanpur beats IIT Delhi by 11-3', 'Match ends', NULL),
(16, 24, 16, 21, '2019-10-02 09:01:00', 'Swimming Pool', 'Semi-Final 1', '13', '3', 16, 21, 'KGP goes to final with a glorious win', 'Whistle blows and match ends...kgp wins', NULL),
(17, 24, 15, 17, '2019-10-02 17:05:00', 'Swimming Pool', 'Semi-Final 2', '10', '9', 15, 17, 'IIT Kanpur won by 10-9 against IIT Madras', '', NULL),
(18, 24, 17, 21, '2019-10-03 10:40:00', 'Swimming Pool', '3rd Place', '7', '1', 17, 21, 'Madras secured the Bronze!', 'Madras won by 7-1', NULL),
(19, 24, 16, 15, '2019-10-03 16:00:00', 'Swimming Pool', 'Final', '11', '4', 16, 15, 'Kharagpur won the crown!', 'IIT Kharagpur won by 11-4 against IIT Kanpur', NULL);

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
(14, 'Swimming 200m Individual Medley', 'M', 2, 'i'),
(15, 'Swimming 4x100m Freestyle relay', 'M', 4, 't'),
(16, 'Swimming 4x100m Medley Relay', 'M', 4, 't'),
(17, 'Swimming 50m Freestyle', 'W', 2, 'i'),
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
(11, 1, 1),
(12, 8, 8),
(13, 13, 9),
(15, 44, 6),
(16, 45, 6),
(17, 63, 15),
(18, 64, 15),
(19, 65, 15),
(20, 68, 5),
(21, 69, 5),
(22, 70, 11),
(23, 83, 21),
(27, 128, 4),
(28, 129, 4),
(29, 131, 21),
(30, 136, 10),
(31, 137, 10),
(36, 182, 17),
(37, 183, 17),
(38, 184, 17),
(40, 189, 16),
(45, 190, 16),
(46, 191, 16),
(47, 192, 16),
(48, 193, 16),
(49, 194, 16),
(50, 195, 16),
(51, 196, 16),
(52, 197, 16),
(53, 198, 16),
(54, 199, 16),
(55, 200, 16),
(56, 201, 16),
(57, 202, 16),
(58, 203, 16),
(59, 204, 16),
(60, 205, 16),
(62, 206, 16),
(63, 207, 16),
(64, 208, 16),
(65, 209, 16),
(69, 213, 16),
(70, 214, 16),
(87, 226, 16),
(94, 231, 16),
(96, 233, 16),
(101, 236, 16),
(106, 240, 16),
(109, 243, 16),
(110, 244, 16),
(111, 245, 16),
(112, 246, 16),
(115, 248, 16),
(116, 249, 16),
(118, 251, 16),
(120, 252, 16),
(121, 253, 16),
(122, 254, 16),
(125, 257, 16),
(130, 259, 16),
(131, 260, 16),
(140, 265, 16),
(141, 266, 16),
(142, 267, 16),
(143, 268, 16),
(144, 269, 16),
(145, 270, 16),
(146, 271, 16),
(147, 272, 16),
(148, 273, 16),
(149, 274, 16),
(150, 275, 16),
(151, 276, 16),
(152, 285, 16),
(153, 286, 16),
(154, 287, 16),
(155, 288, 16),
(156, 289, 16),
(157, 290, 16),
(158, 291, 16),
(159, 292, 16),
(160, 293, 16),
(161, 294, 16),
(162, 295, 16),
(163, 296, 16),
(164, 297, 16),
(165, 298, 16),
(166, 299, 16),
(168, 300, 16),
(169, 301, 16),
(170, 302, 16),
(171, 303, 16),
(172, 304, 16),
(174, 305, 16),
(175, 306, 16),
(176, 307, 16),
(177, 308, 16),
(178, 309, 16),
(179, 310, 16),
(180, 311, 16),
(181, 313, 16),
(182, 314, 16),
(183, 315, 16),
(184, 316, 16),
(185, 317, 16),
(186, 318, 16),
(189, 319, 16),
(190, 320, 16),
(191, 321, 16),
(192, 322, 16),
(193, 323, 16),
(194, 324, 16),
(195, 325, 16),
(196, 326, 16),
(197, 327, 16),
(198, 328, 16),
(200, 329, 16),
(202, 330, 16),
(203, 331, 16),
(204, 332, 16),
(205, 333, 16),
(206, 334, 16),
(207, 335, 16),
(208, 336, 16),
(211, 337, 16),
(212, 338, 16),
(213, 339, 16),
(214, 340, 16),
(216, 341, 16),
(217, 342, 16),
(219, 343, 16),
(220, 344, 16),
(221, 345, 16),
(222, 346, 16),
(223, 347, 16),
(224, 348, 16),
(225, 349, 16),
(226, 350, 16),
(227, 351, 16),
(228, 352, 16),
(229, 353, 16),
(230, 354, 16),
(231, 355, 16),
(233, 356, 16),
(234, 357, 16),
(235, 358, 16),
(237, 359, 16),
(240, 361, 16),
(241, 362, 16),
(246, 363, 16),
(249, 366, 16),
(252, 367, 16),
(253, 368, 16),
(255, 369, 16);

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
-- Indexes for table `schedule_result_relay`
--
ALTER TABLE `schedule_result_relay`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=680;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `schedule_result_relay`
--
ALTER TABLE `schedule_result_relay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `schedule_result_team`
--
ALTER TABLE `schedule_result_team`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
