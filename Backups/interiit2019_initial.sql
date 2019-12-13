-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2019 at 07:22 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
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
(23, 'IIT@Tirupati', '5mUfm$c8Ye2?pwf7', 'IIT Tirupati Admin', 1, '23', ''),
(24, 'IIT@KGP', 'qr@scanner', 'QR Scanner', 2, '', ''),
(25, 'IIT@KGP1', 'score@update', 'Score Updater', 3, '', ''),
(26, 'IIT@KGP2', 'match@update', 'Match Updater', 4, '', ''),
(27, '@admin', 'auth@admin', 'Admin', 0, '', '');

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
(1, 'DIGANTA SAIKIA', 'ds@iitg.ac.in', '9706442453', 10, 'staff', '77', 'Veg', 'O+', 'DIGANTA SAIKIA - ds@iitg.ac.in.jpg', 'Diganta', '', 'M', 0, 000, 000, 000, 0),
(2, 'DIPUNJAY BRAHMA', 'dipunjaybrahma@iitg.ac.in', '7086597929', 10, 'staff', '1270', 'Non-Veg', 'O+', 'DIPUNJAY BRAHMA - dipunjaybrahma@iitg.ac.in.jpg', 'Dipu', '', 'M', 0, 000, 000, 000, 0),
(3, 'SUVANKAR GHOSH', 'svnkrgsh@iitg.ac.in', '9614641676', 10, '51', '166106105', 'Non-Veg', 'A+', 'SUVANKAR GHOSH - svnkrgsh@iitg.ac.in.jpg', 'SVNKR', '', 'M', 0, 000, 000, 000, 0),
(4, 'NEERAJ KUMAR RATHORE', 'neera170107042@iitg.ac.in', '6264009987', 10, '36', '170107042', 'Non-Veg', 'B+', 'NEERAJ KUMAR RATHORE - neera170107042@iitg.ac.in.jpg', 'Neeraj', '', 'M', 0, 000, 000, 000, 0),
(5, 'TULIKA BHARALI', 'tulikabharali@iitg.ac.in', '8721941060', 10, 'staff', '1273', 'Non-Veg', 'A+', 'TULIKA BHARALI - tulikabharali@iitg.ac.in.jpg', 'Tuli', '', 'F', 0, 000, 000, 000, 0),
(6, 'ASHISH KHOSHYA', 'ashish.khoshya1998@gmail.com', '7988721132', 10, '44', '170106014', 'Veg', 'O+', 'ASHISH KHOSHYA - ashish.khoshya1998@gmail.com.jpg', 'Ashish Khoshya', '', 'M', 0, 000, 000, 000, 0),
(7, 'KISHALAY CHAKRABORTY', 'kishalay@iitg.ac.in', '9774610750', 10, 'staff', '1274', 'Non-Veg', 'A+', 'KISHALAY CHAKRABORTY - kishalay@iitg.ac.in.jpg', 'Kishalay', '', 'M', 0, 000, 000, 000, 0),
(8, 'KADAVAKOLLU UDAY KIRAN', 'udaykadavakollu@iitg.ac.in', '9505932249', 10, '44', '160104034', 'Non-Veg', 'O+', 'KADAVAKOLLU UDAY KIRAN - udaykadavakollu@iitg.ac.in.jpg', '5', '', 'M', 0, 000, 000, 000, 0),
(9, 'NITIN KUMAR KHANDAL', 'khandalmarch@gmail.com', '8011992816', 10, '44', '170107043', 'Non-Veg', 'O+', 'NITIN KUMAR KHANDAL - khandalmarch@gmail.com.jpg', '7', '', 'M', 0, 000, 000, 000, 0),
(10, 'RAHUL KATARIYA', 'rahul170103049@iitg.ac.in', '7999964613', 10, '44', '170103049', 'Non-Veg', 'B+', 'RAHUL KATARIYA - rahul170103049@iitg.ac.in.jpg', 'KATARIYA', '', 'M', 0, 000, 000, 000, 0),
(11, 'ARVIND KUMAR ', 'arvin170102012@iitg.ac.in', '7733029736', 10, '44', '170102012', 'Non-Veg', 'A+', 'ARVIND KUMAR  - arvin170102012@iitg.ac.in.jpg', 'ARVIND ', '', 'M', 0, 000, 000, 000, 0),
(12, 'DESAI UTKARSH ULHAS', 'u.desai@iitg.ac.in', '7387891917', 10, '44', '194103310', 'Non-Veg', 'B+', 'DESAI UTKARSH ULHAS - u.desai@iitg.ac.in.jpg', 'UTKARSH', '', 'M', 0, 000, 000, 000, 0),
(13, 'DIVYANSHU SINGH CHAUHAN', 'singh170103024@iitg.ac.in', '7663931612', 10, '44', '170103024', 'Veg', 'B+', 'DIVYANSHU SINGH CHAUHAN - singh170103024@iitg.ac.in.jpg', 'Chauhan', '', 'M', 0, 000, 000, 000, 0),
(14, 'PRINCY ASAWA', 'princyasawa@gmail.com', '7425070339', 10, '45', '180122035', 'Veg', 'AB+', 'PRINCY ASAWA - princyasawa@gmail.com.jpg', 'PRINCY', '', 'F', 0, 000, 000, 000, 0),
(15, 'ANIL M', 'anil18a@iitg.ac.in', '6303989596', 10, '44', '180103010', 'Non-Veg', 'O+', 'ANIL M - anil18a@iitg.ac.in.jpg', 'ANIL', '', 'M', 0, 000, 000, 000, 0),
(16, 'NELAPATI LOKESH', 'nelapati18@iitg.ac.in', '6303123065', 10, '44', '180102045', 'Non-Veg', 'A+', 'NELAPATI LOKESH - nelapati18@iitg.ac.in.jpg', 'LOKI', '', 'M', 0, 000, 000, 000, 0),
(17, 'ARVIND CHANDRA', 'arvind.chandra@iitg.ac.in', '8876060064', 10, '44', '194101008', 'Non-Veg', 'B+', 'ARVIND CHANDRA - arvind.chandra@iitg.ac.in.jpg', 'ARVIND CHANDRA', '', 'M', 0, 000, 000, 000, 0),
(18, 'SHIVAM PANWAR', 'Panwar18@iitg.ac.in', '6900400746', 10, '32', '180103070', 'Non-Veg', 'B+', 'SHIVAM PANWAR - Panwar18@iitg.ac.in.jpg', 'PANWAR', '', 'M', 0, 000, 000, 000, 0),
(19, 'PRERNA VIMANIA', 'prernavimania2016@iitg.ac.in', '9957940437', 10, '45', '160205031', 'Non-Veg', 'B+', 'PRERNA VIMANIA - prernavimania2016@iitg.ac.in.jpg', 'Vimania', '', 'F', 0, 000, 000, 000, 0),
(21, 'PRIYAL SHARMA', 'priyal0917@gmail.com', '8968878713', 10, '45', '190101066', 'Veg', 'B+', 'PRIYAL SHARMA - priyal0917@gmail.com.jpg', 'PRIYAL', '', 'F', 0, 000, 000, 000, 0),
(22, 'T LHINGMINCHONG HAOKIP', 'tlhaokip195@gmail.com', '8119079844', 10, '45', '190103098', 'Non-Veg', 'A+', 'T LHINGMINCHONG HAOKIP - tlhaokip195@gmail.com.jpg', 'ChongBka', '', 'F', 0, 000, 000, 000, 0),
(23, 'PRATIKSHA YADAV', 'pratikshajnv2321@gmail.com', '9621005680', 10, '45', '190106042', 'Veg', 'A+', 'PRATIKSHA YADAV - pratikshajnv2321@gmail.com.jpg', 'Yadav', '', 'F', 0, 000, 000, 000, 0),
(24, 'ARVIND PATIDAR', 'arvind.patidar.33865@gmail.com', '7974878726', 10, '36', '170122005', 'Veg', 'B+', 'ARVIND PATIDAR - arvind.patidar.33865@gmail.com.jpg', 'PATIDAR', '', 'M', 0, 000, 000, 000, 0),
(25, 'POOJAN SANJAYKUMAR THUMAR', 'poojanthumar@gmail.com', '8171017931', 10, '36', '180121028', 'Veg', 'AB+', 'POOJAN SANJAYKUMAR THUMAR - poojanthumar@gmail.com.jpg', 'Thumar', '', 'M', 0, 000, 000, 000, 0),
(26, 'DHRITI', 'dhriti18@iitg.ac.in', '7030604114', 10, '45', '180103097', 'Non-Veg', 'A-', 'DHRITI - dhriti18@iitg.ac.in.jpg', 'Dhriti', '', 'F', 0, 000, 000, 000, 0),
(27, 'ABHISHEK KUMAR', 'anup09092001@gmail.com', '9835916255', 10, '36', '180101003', 'Non-Veg', 'B+', 'ABHISHEK KUMAR - anup09092001@gmail.com.jpg', 'ABHISHEK', '', 'M', 0, 000, 000, 000, 0),
(28, 'SHIVRAJ SINGH', 'shivr170106053@iitg.ac.in', '6901616021', 10, '36', '170106053', 'Non-Veg', 'O+', 'SHIVRAJ SINGH - shivr170106053@iitg.ac.in.jpg', 'SHIVRAJ', 'NO', 'M', 0, 000, 000, 000, 0),
(29, 'YASHVENDRA SINGH', '180104091@iitg.ac.in', '6377769101', 10, '36', '180104091', 'Non-Veg', 'B+', 'YASHVENDRA SINGH - 180104091@iitg.ac.in.jpg', 'YASH', '', 'M', 0, 000, 000, 000, 0),
(30, 'SWARUPA JADHAV', 'swarupajadhav50@gmail.com', '7997279907', 10, '45', '180107068', 'Non-Veg', 'B+', 'SWARUPA JADHAV - swarupajadhav50@gmail.com.jpg', 'JADHAV', '', 'F', 0, 000, 000, 000, 0),
(31, 'SUMAN PATEL', 'sumanpatel1005@gmail.com', '8827842108', 10, '45', '180103078', 'Veg', 'O+', 'SUMAN PATEL - sumanpatel1005@gmail.com.jpg', 'SUMAN', '', 'F', 0, 000, 000, 000, 0),
(32, 'BEETU MAAN', 'beetu@iitg.ac.in', '9306451487', 10, '36', '180122011', 'Non-Veg', 'B+', 'BEETU MAAN - beetu@iitg.ac.in.jpg', 'MAAN', '', 'M', 0, 000, 000, 000, 0),
(33, 'DEEPSHIKHA PEGU', 'deepshikha.pegu@iitg.ac.in', '8471840475', 10, '45', '160205012', 'Non-Veg', 'A+', 'DEEPSHIKHA PEGU - deepshikha.pegu@iitg.ac.in.jpg', 'PegD', '', 'F', 0, 000, 000, 000, 0),
(34, 'MANISH KUMAR', '180106027@iitg.ac.in', '6377675750', 10, '36', '180106027', 'Veg', 'O+', 'MANISH KUMAR - 180106027@iitg.ac.in.jpg', 'BHAMBHU', '', 'M', 0, 000, 000, 000, 0),
(35, 'KARAN GUPTA', 'karanguptadel@gmail.com', '9899052361', 10, '52', '180123064', 'Non-Veg', 'O+', 'KARAN GUPTA - karanguptadel@gmail.com.jpg', '10', 'Please make staying arrangements available from 10 Dec as we\'ll be arriving on that date.', 'M', 0, 000, 000, 000, 0),
(36, 'PRASURJYA DAS', 'prasurjya.das@iitg.ac.in', '6003323966', 10, '52', '190104063', 'Non-Veg', 'AB+', 'PRASURJYA DAS - prasurjya.das@iitg.ac.in.jpg', 'Das', '', 'M', 0, 000, 000, 000, 0),
(37, 'AHAAN SAMEER MALHOTRA', 's.ahaan@iitg.ac.in', '8696011111', 10, '52', '190102004', 'Non-Veg', 'O+', 'AHAAN SAMEER MALHOTRA - s.ahaan@iitg.ac.in.jpg', 'Ahaan', '', 'M', 0, 000, 000, 000, 0),
(38, 'SUSHIL MUNDA', 'mundasushil11@gmail.com', '7064621836', 10, '36', '180107067', 'Non-Veg', 'B+', 'SUSHIL MUNDA - mundasushil11@gmail.com.jpg', 'GundAA', '', 'M', 0, 000, 000, 000, 0),
(39, 'MOHIT SINGH', 'mohit18c@iitg.ac.in', '9306439233', 10, '36', '180122028', 'Veg', 'B+', 'MOHIT SINGH - mohit18c@iitg.ac.in.jpg', 'KALKANDHA', '', 'M', 0, 000, 000, 000, 0),
(40, 'SHAILENDRA SINGH', 'shailendrasingh579@gmail.com', '9687803298', 10, '52', '170122040', 'Veg', 'B+', 'SHAILENDRA SINGH - shailendrasingh579@gmail.com.jpg', 'SHAILOO', '', 'M', 0, 000, 000, 000, 0),
(41, 'RAMAVATAR KASWAN', 'kaswanramavatar@gmail.com', '8058928237', 10, '36', '180107042', 'Non-Veg', 'O+', 'RAMAVATAR KASWAN - kaswanramavatar@gmail.com.jpg', 'RAMAVATAR', '', 'M', 0, 000, 000, 000, 0),
(42, 'PIYUSHA JAISWAL', 'piyusha@iitg.ac.in', '6264141117', 10, '45', '180122032', 'Non-Veg', 'O+', 'PIYUSHA JAISWAL - piyusha@iitg.ac.in.jpg', 'Amy', '', 'F', 0, 000, 000, 000, 0),
(43, 'SHIVAM PANWAR', 'shivampanwar2020@gmail.com', '7056109042', 10, '52', '180103070', 'Veg', 'B+', 'SHIVAM PANWAR - shivampanwar2020@gmail.com.jpg', 'SHIVAM', '', 'M', 0, 000, 000, 000, 0),
(44, 'ASHUTOSH KUMAR', 'ashutosh18e@iitg.ac.in', '8386080512', 10, '36', '180104019', 'Non-Veg', 'A+', 'ASHUTOSH KUMAR - ashutosh18e@iitg.ac.in.jpg', 'AShutosh', 'Try to have proper availability of Mosquito repellents and Winter arrangements.', 'M', 0, 000, 000, 000, 0),
(45, 'REDDI SAI VAMSI', 'REDDI.ME16@IITP.AC.IN', '9491916025', 20, '44', '1601me30', 'Non-Veg', 'B+', 'REDDI SAI VAMSI - REDDI.ME16@IITP.AC.IN.jpg', 'REDDI', '', 'M', 0, 000, 000, 000, 0),
(47, 'DONKADA SAI MANOGNA', 'donkada.ee16@iitp.ac.in', '9955529053', 20, '22,23,28', '1601EE15', 'Non-Veg', 'AB+', 'DONKADA SAI MANOGNA - donkada.ee16@iitp.ac.in.jpg', 'MANOGNA', '', 'F', 0, 000, 000, 000, 0),
(48, 'DHAIRYASHIL PATIL', 'patil170106042@iitg.ac.in', '7896659813', 10, '44', '170106042', 'Non-Veg', 'B+', 'DHAIRYASHIL PATIL - patil170106042@iitg.ac.in.jpg', 'PATIL', '', 'M', 0, 000, 000, 000, 0),
(49, 'MUKESH RAYPURIYA', 'mukesh.me17@iitp.ac.in', '9685680512', 20, '52', '1701ME26', 'Veg', 'B+', 'MUKESH RAYPURIYA - mukesh.me17@iitp.ac.in.jpg', 'M.R.', '', 'M', 0, 000, 000, 000, 0),
(50, 'AMAN KUMAR JAIN', 'amaniitghy@gmail.com', '7566460904', 10, '34', '170104012', 'Veg', 'O+', 'AMAN KUMAR JAIN - amaniitghy@gmail.com.jpg', 'AMAN', '', 'M', 0, 000, 000, 000, 0),
(51, 'RUSHABH PARIKH', 'rushabhparikh10@gmail.com', '8511118759', 10, '34', '180103100', 'Veg', 'B+', 'RUSHABH PARIKH - rushabhparikh10@gmail.com.jpg', '34', '', 'M', 0, 000, 000, 000, 0),
(52, 'RUPESH NEEKHRA', 'rupesh.ch17@iitp.ac.in', '8349243453', 20, '52', '1701CB28', 'Veg', 'B+', 'RUPESH NEEKHRA - rupesh.ch17@iitp.ac.in.jpg', 'Mr. Neekhra', '', 'M', 0, 000, 000, 000, 0),
(53, 'SOURAV KUMAR', 'sourav.kumar@iitg.ac.in', '9897492831', 10, '34', '196104020', 'Veg', 'AB+', 'SOURAV KUMAR - sourav.kumar@iitg.ac.in.jpg', 'Chaudhary', '', 'M', 0, 000, 000, 000, 0),
(54, 'KAPIL GUPTA', 'kapil.cs17@iitp.ac.in', '6201465186', 20, '52', '1701CS25', 'Veg', 'B+', 'KAPIL GUPTA - kapil.cs17@iitp.ac.in.jpg', 'Kapil', '', 'M', 0, 000, 000, 000, 0),
(55, 'AKSHAI JAMES', 'ajames@iitg.ac.in', '9048598649', 10, '44', '194102301', 'Non-Veg', 'A+', 'AKSHAI JAMES - ajames@iitg.ac.in.jpg', 'AKSHAI', '', 'M', 0, 000, 000, 000, 0),
(57, 'SACHIT KALIA', 'sachit@iitg.ac.in', '8278838079', 10, '34', '180103063', 'Veg', 'B+', 'SACHIT KALIA - sachit@iitg.ac.in.jpg', 'SACHIT', '', 'M', 0, 000, 000, 000, 0),
(58, 'SIDDHARTH SANSKRITAYAN', 'siddharth_1901me60@iitp.ac.in', '8797913120', 20, '52', '1901ME60', 'Veg', 'B+', 'SIDDHARTH SANSKRITAYAN - siddharth_1901me60@iitp.ac.in.jpg', 'Siddharth', '', 'M', 0, 000, 000, 000, 0),
(60, 'LUTFOR RAHMAN', '1801ee67@iitp.ac.in', '7002482425', 20, '52', '1801ee67', 'Non-Veg', 'B+', 'LUTFOR RAHMAN - 1801ee67@iitp.ac.in.jpg', 'Lutfor', '', 'M', 0, 000, 000, 000, 0),
(62, 'AADARSH KHANDELWAL', 'aadarsh@iitg.ac.in', '7578990020', 10, '34', '180102001', 'Veg', 'B+', 'AADARSH KHANDELWAL - aadarsh@iitg.ac.in.jpg', 'AADARSH', '', 'M', 0, 000, 000, 000, 0),
(67, 'ADITYA KUMAR', 'aditya_1901mm04@iitp.ac.in', '8271603998', 20, '2,3', '1901mm04', 'Non-Veg', 'O+', 'ADITYA KUMAR - aditya_1901mm04@iitp.ac.in.jpg', 'ADITYA', '', 'M', 0, 000, 000, 000, 0),
(68, 'ABHAY TIWARI', 'abhay_1901mm01@iitp.ac.in', '8858288108', 20, '1,17', '1901mm01', 'Non-Veg', 'B+', 'ABHAY TIWARI - abhay_1901mm01@iitp.ac.in.jpg', 'ABHAY', '', 'M', 0, 000, 000, 000, 0),
(71, 'SACHIN', 'sachin.cb16@iitp.ac.in', '7782062886', 20, '52', '1601CB18', 'Veg', 'B+', 'SACHIN - sachin.cb16@iitp.ac.in.jpg', 'Sachin', '', 'M', 0, 000, 000, 000, 0),
(74, 'GOURAV SHARMA', '1801ce09@iitp.ac.in', '7240806313', 20, '1,2', '1801ce09', 'Non-Veg', 'A+', 'GOURAV SHARMA - 1801ce09@iitp.ac.in.jpg', 'gourav', '', 'M', 0, 000, 000, 000, 0),
(75, 'IMAM HUSSAIN AZAM', 'imam_1901cb18@iitp.ac.in', '7033438341', 20, '2,7', '1901cb18', 'Non-Veg', 'O+', 'IMAM HUSSAIN AZAM - imam_1901cb18@iitp.ac.in.jpg', 'IMAM', '', 'M', 0, 000, 000, 000, 0),
(77, 'AVINASH KUMAR', 'avinash_1901me12@iitp.ac.in', '9351832963', 20, '4,5', '1901me12', 'Non-Veg', 'O+', 'AVINASH KUMAR - avinash_1901me12@iitp.ac.in.jpg', 'AVINASH', '', 'M', 0, 000, 000, 000, 0),
(79, 'ANUJ KUMAR', 'anuj.ce17@iitp.ac.in', '9110066718', 20, '34', '1701CE04', 'Non-Veg', 'A+', 'ANUJ KUMAR - anuj.ce17@iitp.ac.in.jpg', 'ANUJ', 'no', 'M', 0, 000, 000, 000, 0),
(80, 'SIDDHARTH PRASAD', 'siddharth_1901ee60@iitp.acin', '7388914351', 20, '12', '1901ee60', 'Non-Veg', 'O+', 'SIDDHARTH PRASAD - siddharth_1901ee60@iitp.acin.jpg', 'SIDDHARTH', '', 'M', 0, 000, 000, 000, 0),
(81, 'AMAN DEEP', 'amandeep.me17@iitp.ac.in', '7568932715', 20, '40', '1701ME04', 'Veg', 'O+', 'AMAN DEEP - amandeep.me17@iitp.ac.in.jpg', 'Aman Deep', '', 'M', 0, 000, 000, 000, 0),
(82, 'DEVANSH', 'devansh_1901me20@iitp.ac.in', '9368321127', 20, '15,16', '1901me20', 'Non-Veg', 'B-', 'DEVANSH - devansh_1901me20@iitp.ac.in.jpg', 'VRSTSCD', '', 'M', 0, 000, 000, 000, 0),
(83, 'SAI SONAAL KYASA', '1801ee64@iitp.ac.in', '9989430169', 20, '40', '1801EE64', 'Veg', 'O+', 'SAI SONAAL KYASA - 1801ee64@iitp.ac.in.jpg', 'SONAAL', '', 'M', 0, 000, 000, 000, 0),
(84, 'NEMALIKANTI V M DHEERAJ', '1801me39@iitp.ac.in', '9059318736', 20, '40', '1801ME39', 'Veg', 'AB+', 'NEMALIKANTI V M DHEERAJ - 1801me39@iitp.ac.in.jpg', 'MANU NEM', '', 'M', 0, 000, 000, 000, 0),
(85, ' GRACY ', '1801cs57@iitp.ac.in', '9515252201', 20, '19,24,28', '1801cs57', 'Non-Veg', 'O+', ' GRACY  - 1801cs57@iitp.ac.in.jpg', 'GRACY', '', 'F', 0, 000, 000, 000, 0),
(87, 'RIYA KUMARI', 'riyathakur1935@gmail.com', '7488006796', 20, '45', '1801ee42', 'Non-Veg', 'A+', 'RIYA KUMARI - riyathakur1935@gmail.com.jpg', 'Riya', '', 'F', 0, 000, 000, 000, 0),
(88, 'YASH PALRIWAL', 'yash.cs16@iitp.ac.in', '9472537381', 20, '40', '1601CS50', 'Veg', 'B+', 'YASH PALRIWAL - yash.cs16@iitp.ac.in.jpg', 'Yash', '', 'M', 0, 000, 000, 000, 0),
(89, 'ABHISHEK BHARTI ', 'abhish.6158@gmail.com', '7541051888', 20, '32', '1601CE03', 'Veg', 'B+', 'ABHISHEK BHARTI  - abhish.6158@gmail.com.jpg', 'bharti', '', 'M', 0, 000, 000, 000, 0),
(90, 'PRIYA SINGH', 'priya_1901ce34@iitp.ac.in', '8081339696', 20, '20,21,24,28', '1901ce34', 'Non-Veg', 'B+', 'PRIYA SINGH - priya_1901ce34@iitp.ac.in.jpg', 'PRIYA', '', 'F', 0, 000, 000, 000, 0),
(91, 'SUDIP DAS', 'bulta0932@gmail.com', '8638915874', 10, '36', '170107063', 'Non-Veg', 'O+', 'SUDIP DAS - bulta0932@gmail.com.jpg', 'SUDIP', '', 'M', 0, 000, 000, 000, 0),
(92, 'AATHIRA SARATH CHANDRAN', 'aathira892001@gmail.com', '9447684966', 20, '33', '1901me01', 'Non-Veg', 'B+', 'AATHIRA SARATH CHANDRAN - aathira892001@gmail.com.jpg', 'Aathira', '', 'F', 0, 000, 000, 000, 0),
(93, 'B. J. TRIVIKRAM REDDY', '1801ce05@iitp.ac.in', '7995451973', 20, '32', '1801ce05', 'Non-Veg', 'B+', 'B. J. TRIVIKRAM REDDY - 1801ce05@iitp.ac.in.jpg', 'vikky', '', 'M', 0, 000, 000, 000, 0),
(94, 'NEELIMA SAROJ PANNA', 'neelimasarojpanna@gmail.com', '9516067875', 10, '45', '180107034', 'Non-Veg', 'O+', 'NEELIMA SAROJ PANNA - neelimasarojpanna@gmail.com.jpg', 'Panna', '', 'F', 0, 000, 000, 000, 0),
(96, 'SURAJ SHASHI CHETTIAR', 'suraj_1901cb53@iitp.ac.in', '9061418602', 20, '32', '1901CB53', 'Non-Veg', 'B+', 'SURAJ SHASHI CHETTIAR - suraj_1901cb53@iitp.ac.in.jpg', 'suraj', '', 'M', 0, 000, 000, 000, 0),
(97, 'ANSHU ANAND', 'anshu.anand.pat@gmail.com', '7424903099', 20, '45', '1901ce07', 'Non-Veg', 'B+', 'ANSHU ANAND - anshu.anand.pat@gmail.com.jpg', 'Anshu ', '', 'F', 0, 000, 000, 000, 0),
(98, 'ANSADH KUMAR SHAH', 'ansadhk45@gmail.com', '7294163327', 20, '32', '19INC10', 'Veg', 'O+', 'ANSADH KUMAR SHAH - ansadhk45@gmail.com.jpg', 'ansadh', '', 'M', 0, 000, 000, 000, 0),
(99, 'PRIYANKA WALUNJ', 'priyankawalunj2710@gmail.com', '8421557632', 20, '33', '1801me45', 'Veg', 'A+', 'PRIYANKA WALUNJ - priyankawalunj2710@gmail.com.jpg', 'Priyanka', '', 'F', 0, 000, 000, 000, 0),
(100, 'ISHU RAJ', 'Ishu_1901cb19@iitp.ac.in', '8051167228', 20, '5', '1901cb19', 'Non-Veg', 'O+', 'ISHU RAJ - Ishu_1901cb19@iitp.ac.in.jpg', 'ISHU', '', 'M', 0, 000, 000, 000, 0),
(101, 'PRAKASH KUMAR', 'prakash.cs16@iitp.ac.in', '8409147859', 20, '34', '1601CS33', 'Non-Veg', 'B+', 'PRAKASH KUMAR - prakash.cs16@iitp.ac.in.jpg', 'PRAKASH', 'no', 'M', 0, 000, 000, 000, 0),
(102, 'RAPELLI RAMA KRISHNA', 'rapelli.ee17@iitp.ac.in', '8985265942', 20, '44', '1701EE38', 'Non-Veg', 'A-', 'RAPELLI RAMA KRISHNA - rapelli.ee17@iitp.ac.in.jpg', 'RamaKrishna', '', 'M', 0, 000, 000, 000, 0),
(103, 'STUTI', 'stusans01@gmail.com', '9549213999', 10, '41', '180102076', 'Veg', 'B+', 'STUTI - stusans01@gmail.com.jpg', 'Stuti', '', 'F', 0, 000, 000, 000, 0),
(104, 'U PREETHAM VARMA', 'varma170104077@iitg.ac.in', '8011991487', 10, '40', '170104077', 'Non-Veg', 'B+', 'U PREETHAM VARMA - varma170104077@iitg.ac.in.jpg', 'UPV', '', 'M', 0, 000, 000, 000, 0),
(105, 'RAGHAV HEDA ', 'raghav.cb16@iitp.ac.in', '9958724205', 20, '32', '1601CB16', 'Non-Veg', 'B-', 'RAGHAV HEDA  - raghav.cb16@iitp.ac.in.jpg', 'RAGHAV', '', 'M', 0, 000, 000, 000, 0),
(106, 'ASHISH', 'ashish.ee17@iitp.ac.in', '9523876889', 20, '4,5,12', '1701EE10', 'Non-Veg', 'AB+', 'ASHISH - ashish.ee17@iitp.ac.in.jpg', 'ASHISH', '', 'M', 0, 000, 000, 000, 0),
(107, 'JAGAN MOHAN', '1801me34@iitp.ac.in', '9381587949', 20, '34', '1801me34', 'Non-Veg', 'O+', 'JAGAN MOHAN - 1801me34@iitp.ac.in.jpg', 'JAGAN', 'no', 'M', 0, 000, 000, 000, 0),
(108, 'NISHANT', 'bhatnishant67@gmail.com', '8080602188', 10, '40', '180106032', 'Veg', 'O+', 'NISHANT - bhatnishant67@gmail.com.jpg', 'Nishant', '', 'M', 0, 000, 000, 000, 0),
(109, 'RATHOD SRINIVAS', 'rathod.me17@iitp.ac.in', '8333088204', 20, '32', '1701ME31', 'Non-Veg', 'O+', 'RATHOD SRINIVAS - rathod.me17@iitp.ac.in.jpg', 'srinu', '', 'M', 0, 000, 000, 000, 0),
(111, 'ALLAGADDA DIKSHITA REDDY', 'allagadda_1901me07@iitp.ac.in', '7970382233', 20, '19,28', '1901me07', 'Non-Veg', 'AB+', 'ALLAGADDA DIKSHITA REDDY - allagadda_1901me07@iitp.ac.in.jpg', 'DIKSHITA', '', 'F', 0, 000, 000, 000, 0),
(112, 'DIVYA  SHEKHAR RAHANGDALE', 'rahangda@iitg.ac.in', '9075412766', 10, '41', '180107017', 'Veg', 'A+', 'DIVYA  SHEKHAR RAHANGDALE - rahangda@iitg.ac.in.jpg', 'Divya', '', 'F', 0, 000, 000, 000, 0),
(113, 'A.R.YOGESH', '1801cb05@iitp.ac.in', '9100589921', 20, '34', '1801cb05', 'Non-Veg', 'A+', 'A.R.YOGESH - 1801cb05@iitp.ac.in.jpg', 'YOGESH', '', 'M', 0, 000, 000, 000, 0),
(114, 'VIVEK KUMAR KUSHWAHA', 'kushwaha18@iitg.ac.in', '7289858542', 10, '34', '184103343', 'Non-Veg', 'B+', 'VIVEK KUMAR KUSHWAHA - kushwaha18@iitg.ac.in.jpg', '16', '', 'M', 0, 000, 000, 000, 0),
(115, 'NISHANT KULSHRESTHA', 'nishant.cb16@iitp.ac.in', '9958724206', 20, '32', '1601CB12', 'Non-Veg', 'O+', 'NISHANT KULSHRESTHA - nishant.cb16@iitp.ac.in.jpg', 'nishant', '', 'M', 0, 000, 000, 000, 0),
(116, 'AJEET KUMAR', 'ajeetk258@gmail.com', '7977105476', 20, '44', '1701CS02', 'Non-Veg', 'O+', 'AJEET KUMAR - ajeetk258@gmail.com.jpg', 'AJT', '', 'M', 0, 000, 000, 000, 0),
(117, 'NAVYA SREE AMARANENI', 'navyasree.8.2001@gmail.com', '9381218280', 20, '45', '1801cs06', 'Non-Veg', 'B+', 'NAVYA SREE AMARANENI - navyasree.8.2001@gmail.com.jpg', 'Sri', '', 'F', 0, 000, 000, 000, 0),
(118, 'HARSHIT KUMAR', '1801ee66@iitp.ac.in', '8873059744', 20, '34', '1801ee66', 'Non-Veg', 'B+', 'HARSHIT KUMAR - 1801ee66@iitp.ac.in.jpg', 'HARSHIT', 'no', 'M', 0, 000, 000, 000, 0),
(119, 'VIKASH PRASAD SONI ', 'vikash.ch17@iitp.ac.in', '9982693969', 20, '32', '1701CB26', 'Non-Veg', 'B+', 'VIKASH PRASAD SONI  - vikash.ch17@iitp.ac.in.jpg', 'vikash', '', 'M', 0, 000, 000, 000, 0),
(120, 'RAVEENA M', 'raveena.ammu123@gmail.com', '8113824652', 20, '45', '1912CH12', 'Non-Veg', 'O+', 'RAVEENA M - raveena.ammu123@gmail.com.jpg', 'RAVEENA', '', 'F', 0, 000, 000, 000, 0),
(122, 'ROOPESH PAL', '1801ce28@iitp.ac.in', '6397803787', 20, '32', '1801ce28', 'Veg', 'O+', 'ROOPESH PAL - 1801ce28@iitp.ac.in.jpg', 'roopesh', '', 'M', 0, 000, 000, 000, 0),
(123, 'SHUBHAM KUMAR', '1801cb23@iitp.ac.in', '7645988426', 20, '34', '1801cb23', 'Non-Veg', 'O+', 'SHUBHAM KUMAR - 1801cb23@iitp.ac.in.jpg', 'SHUBHAM', 'no', 'M', 0, 000, 000, 000, 0),
(124, 'THANMAI REDDY KUNTLA', 'thanmaireddy153@gmail.com', '9494540088', 20, '45', '1801me30', 'Non-Veg', 'O+', 'THANMAI REDDY KUNTLA - thanmaireddy153@gmail.com.jpg', 'Thani', '', 'F', 0, 000, 000, 000, 0),
(125, 'BHOLA KUMAR', 'bhola.cs17@iitp.ac.in', '7759953254', 20, '44', '1701CS14', 'Non-Veg', 'O+', 'BHOLA KUMAR - bhola.cs17@iitp.ac.in.jpg', 'B.K', '', 'M', 0, 000, 000, 000, 0),
(126, 'SAMARTH V. KOTAIAH', 'samarth0300@gmail.com', '7570868166', 10, '34', '180103064', 'Non-Veg', 'O+', 'SAMARTH V. KOTAIAH - samarth0300@gmail.com.jpg', 'Samarth', '', 'M', 0, 000, 000, 000, 0),
(127, 'DHEERAJ KUMAR ', 'dheeraj.cs17@iitp.ac.in', '8825243869', 20, '32', '1701CS18 ', 'Non-Veg', 'B+', 'DHEERAJ KUMAR  - dheeraj.cs17@iitp.ac.in.jpg', 'dheeraj', '', 'M', 0, 000, 000, 000, 0),
(128, 'SUNNY SHIVAM', 'sunny_1921cb03@iitp.ac.in', '6205088702', 20, '34', '1921cb03', 'Non-Veg', 'A+', 'SUNNY SHIVAM - sunny_1921cb03@iitp.ac.in.jpg', 'SUNNY', '', 'M', 0, 000, 000, 000, 0),
(129, 'TANMAY SHRESHTH', 'tanmay.shreshth@iitg.ac.in', '7004771430', 10, '40', '190108054', 'Veg', 'B+', 'TANMAY SHRESHTH - tanmay.shreshth@iitg.ac.in.jpg', 'Tanmay', '', 'M', 0, 000, 000, 000, 0),
(130, 'SAKSHI SINGH', 'sakshisingh04102001@gmail.com', '7985252114', 20, '33', '1901CB40', 'Non-Veg', 'B+', 'SAKSHI SINGH - sakshisingh04102001@gmail.com.jpg', 'Sakshi', '', 'F', 0, 000, 000, 000, 0),
(131, 'ADITYA RANJAN', 'adityaranjan.ee17@iitp.ac.in', '8271572990', 20, '32', '1701EE04', 'Non-Veg', 'A+', 'ADITYA RANJAN - adityaranjan.ee17@iitp.ac.in.jpg', 'aditya', '', 'M', 0, 000, 000, 000, 0),
(132, 'VARSHA TUMBURU', 'varsha_1901cs69@iitp.ac.in', '7337452495', 20, '33', '1901CS69', 'Non-Veg', 'O+', 'VARSHA TUMBURU - varsha_1901cs69@iitp.ac.in.jpg', 'Varsha', '', 'F', 0, 000, 000, 000, 0),
(133, 'GAURAV MEENA', '1801me24@iitp.ac.in', '8440971449', 20, '34', '1801me24', 'Non-Veg', 'A+', 'GAURAV MEENA - 1801me24@iitp.ac.in.jpg', 'GM', 'no', 'M', 0, 000, 000, 000, 0),
(134, 'AMBUJ SINGH', 'ambuj.ee16@iitp.ac.in', '9815223359', 20, '32', '1601EE06', 'Non-Veg', 'O+', 'AMBUJ SINGH - ambuj.ee16@iitp.ac.in.jpg', 'ambuj', '', 'M', 0, 000, 000, 000, 0),
(135, 'AYUSHI JAIN', 'ayushi221199jain@gmail.com', '9660573493', 20, '33', '1801cb07', 'Veg', 'B+', 'AYUSHI JAIN - ayushi221199jain@gmail.com.jpg', 'Ayushi', '', 'F', 0, 000, 000, 000, 0),
(136, 'ADITYA RAJ', 'aditya_1901mm05@iitp.ac.in', '8709420978', 20, '34', '1901MM05', 'Non-Veg', 'B+', 'ADITYA RAJ - aditya_1901mm05@iitp.ac.in.jpg', 'ADITYA', 'no', 'M', 0, 000, 000, 000, 0),
(137, 'SOHAM KHADILKAR', 'khadilka@iitg.ac.in', '9850837895', 10, '37', '180106051', 'Non-Veg', 'AB+', 'SOHAM KHADILKAR - khadilka@iitg.ac.in.jpg', 'SOHAM', '', 'M', 0, 000, 000, 000, 0),
(138, 'ABHISHEK ANAND', '1811CE01@iitp.ac.in', '7667651063', 20, '44', '1811CE01', 'Non-Veg', 'B+', 'ABHISHEK ANAND - 1811CE01@iitp.ac.in.jpg', 'ANAND', '', 'M', 0, 000, 000, 000, 0),
(139, 'RITWICK SINGH BAGHEL', 'ritwick_1901me52@iitp.ac.in', '7999429575', 20, '34', ' 1901me52', 'Non-Veg', 'B+', 'RITWICK SINGH BAGHEL - ritwick_1901me52@iitp.ac.in.jpg', 'RITWICK', 'no', 'M', 0, 000, 000, 000, 0),
(140, 'JIGYASHA', 'jigyasha2001@gmail.com', '8529731529', 20, '45', '1901ee29', 'Veg', 'A+', 'JIGYASHA - jigyasha2001@gmail.com.jpg', 'jigyasha', '', 'F', 0, 000, 000, 000, 0),
(141, 'M M TEJAS NAMBOODIRI', 'm.namboodiri@iitg.ac.in', '8486501112', 10, '40', '146106016', 'Non-Veg', 'O+', 'M M TEJAS NAMBOODIRI - m.namboodiri@iitg.ac.in.jpg', 'Tejas', '', 'M', 0, 000, 000, 000, 0),
(142, 'SAKSHI SINGH', 'sakshisingh7985252@gmail.com', '8454862331', 20, '33', '1901me54', 'Veg', 'B+', 'SAKSHI SINGH - sakshisingh7985252@gmail.com.jpg', 'Sakshi', '', 'F', 0, 000, 000, 000, 0),
(143, 'AMAN MISHRA', 'amanmishra.me17@iitp.ac.in', '9102379784', 20, '34', '1701ME05', 'Non-Veg', 'O-', 'AMAN MISHRA - amanmishra.me17@iitp.ac.in.jpg', 'AMAN', 'no', 'M', 0, 000, 000, 000, 0),
(144, 'SUDHANSHU CHAURASIA', 'sudhanshu_1901ce50@iitp.ac.in', '7070375005', 20, '44', '1901CE50', 'Non-Veg', 'B+', 'SUDHANSHU CHAURASIA - sudhanshu_1901ce50@iitp.ac.in.jpg', 'SCH', '', 'M', 0, 000, 000, 000, 0),
(145, 'RAJKUMAR YADAV', 'rajkumar.me17@iitp.ac.in', '9523868314', 20, '34', '1701ME57', 'Non-Veg', 'O+', 'RAJKUMAR YADAV - rajkumar.me17@iitp.ac.in.jpg', 'RK', '', 'M', 0, 000, 000, 000, 0),
(146, 'CHARISHMA GOGINENI', 'charishma5901@gmail.com', '9873762462', 20, '33', '1901me25', 'Non-Veg', 'B+', 'CHARISHMA GOGINENI - charishma5901@gmail.com.jpg', 'Charishma', '', 'F', 0, 000, 000, 000, 0),
(148, 'SHEKHAR JYOTI PATHAK', 'shekh176107008@iitg.ac.in', '7002294729', 10, '34', '176107008', 'Non-Veg', 'AB-', 'SHEKHAR JYOTI PATHAK - shekh176107008@iitg.ac.in.jpg', 'SHEKHAR', '', 'M', 0, 000, 000, 000, 0),
(150, 'ANUSHKA CHAKRABORTY', 'anushkachakra@gmail.com', '9140076745', 20, '33', '1901cb09', 'Non-Veg', 'B+', 'ANUSHKA CHAKRABORTY - anushkachakra@gmail.com.jpg', 'Anushka', '', 'F', 0, 000, 000, 000, 0),
(151, 'PABBATHI HAINDHAVI', 'haindhavi.p@gmail.com', '6303154339', 20, '45', '1801cs35', 'Non-Veg', 'O+', 'PABBATHI HAINDHAVI - haindhavi.p@gmail.com.jpg', 'Hain', '', 'F', 0, 000, 000, 000, 0),
(152, 'KUNDAN KUMAR', 'kundan.19ps@iitp.ac.in', '9649071490', 20, '44', '19PS27', 'Veg', 'B+', 'KUNDAN KUMAR - kundan.19ps@iitp.ac.in.jpg', 'Kundan', '', 'M', 0, 000, 000, 000, 0),
(153, 'KHUSHI GOUR', 'khushigour0301@gmail.com', '9958423570', 20, '33', '1801cb14', 'Veg', 'B+', 'KHUSHI GOUR - khushigour0301@gmail.com.jpg', 'Khushi', '', 'F', 0, 000, 000, 000, 0),
(154, 'PRIYA SIDDHARTH ', 'priyasiddharth71@gmail.com', '9005306834', 20, '45', '1912MA13', 'Veg', 'B+', 'PRIYA SIDDHARTH  - priyasiddharth71@gmail.com.jpg', 'priya', '', 'F', 0, 000, 000, 000, 0),
(155, 'SUMIT KUMAR NAYAK', 'sumit_1901ee62@iitp.ac.in', '6372481524', 20, '34', '1901EE62', 'Non-Veg', 'B+', 'SUMIT KUMAR NAYAK - sumit_1901ee62@iitp.ac.in.jpg', 'SUMIT', 'no', 'M', 0, 000, 000, 000, 0),
(156, 'SEPHALI SHRADHA KHAMARI', 'sephalishradha@gmail.com', '8114757985', 20, '33', '1901me57', 'Veg', 'B+', 'SEPHALI SHRADHA KHAMARI - sephalishradha@gmail.com.jpg', 'Sephali', '', 'F', 0, 000, 000, 000, 0),
(157, 'K.VAMSI', '1801cs28@iitp.ac.in', '8179662319', 20, '44', '1801CS28', 'Non-Veg', 'B+', 'K.VAMSI - 1801cs28@iitp.ac.in.jpg', 'VAMSI', '', 'M', 0, 000, 000, 000, 0),
(158, 'CHELSI RAWAT', 'chelzee.rawat@yahoo.in', '7637829029', 10, '43', '190101031', 'Veg', 'O+', 'CHELSI RAWAT - chelzee.rawat@yahoo.in.jpg', 'Chelsi', '', 'F', 0, 000, 000, 000, 0),
(159, 'ARCHANA AGRAWAL', 'archana2001@iitg.ac.in', '8409254270', 10, '41', '190108007', 'Veg', 'A+', 'ARCHANA AGRAWAL - archana2001@iitg.ac.in.jpg', 'Archana', '', 'F', 0, 000, 000, 000, 0),
(160, 'RISHIKA MANDHYAN', 'rishikamandhyan@gmail.com', '6307924039', 20, '45', '1901cb35', 'Veg', 'O+', 'RISHIKA MANDHYAN - rishikamandhyan@gmail.com.jpg', 'Rishika', '', 'F', 0, 000, 000, 000, 0),
(161, 'GARLAPATI DHRUTIMA', 'g.dhrutima126@gmail.com', '9505342191', 20, '45', '1901ME24', 'Non-Veg', 'O+', 'GARLAPATI DHRUTIMA - g.dhrutima126@gmail.com.jpg', 'Dhruti', '', 'F', 0, 000, 000, 000, 0),
(162, 'SAIKAT HALDER', '1801ee44@iitp.ac.in', '6296076277', 20, '44', '1801EE44', 'Non-Veg', 'B+', 'SAIKAT HALDER - 1801ee44@iitp.ac.in.jpg', 'Saikat', '', 'M', 0, 000, 000, 000, 0),
(163, 'AMAR RAJ', 'amar.me17@iitp.ac.in', '7762006306', 20, '34', '1701ME06', 'Veg', 'B+', 'AMAR RAJ - amar.me17@iitp.ac.in.jpg', 'AR', 'no', 'M', 0, 000, 000, 000, 0),
(164, 'RIYA RANJAN', 'riya.ranjan13@gmail.com', '9415926321', 20, '45', '1701CB22', 'Veg', 'B+', 'RIYA RANJAN - riya.ranjan13@gmail.com.jpg', 'Sam', '', 'F', 0, 000, 000, 000, 0),
(165, 'JITENDRA KUMAR SINGH', 'jitendra.pee16@iitp.ac.in', '9708594495', 20, '44', '1621EE19', 'Non-Veg', 'AB+', 'JITENDRA KUMAR SINGH - jitendra.pee16@iitp.ac.in.jpg', 'J.K.', '', 'M', 0, 000, 000, 000, 0),
(166, 'AMAN DEO', 'aman170121003@iitg.ac.in', '8473811815', 10, '42', '170121003', 'Non-Veg', 'A+', 'AMAN DEO - aman170121003@iitg.ac.in.jpg', 'Aman', '', 'M', 0, 000, 000, 000, 0),
(168, 'NITESH REDDY MUSUKULA', '1801cs32@iitp.ac.in', '8008828729', 20, '44', '1801CS32', 'Non-Veg', 'A+', 'NITESH REDDY MUSUKULA - 1801cs32@iitp.ac.in.jpg', 'Nitesh', '', 'M', 0, 000, 000, 000, 0),
(169, 'VIVEK SHARMA', 'sharma18@iitg.ac.in', '7727824836', 10, '37', '184102025', 'Veg', 'B+', 'VIVEK SHARMA - sharma18@iitg.ac.in.jpg', 'VIVEK', '', 'M', 0, 000, 000, 000, 0),
(170, 'RISHIKA RAI', 'rairishika.11@gmail.com', '8505828806', 10, '43', '192241034', 'Non-Veg', 'B+', 'RISHIKA RAI - rairishika.11@gmail.com.jpg', 'Rishika', '', 'F', 0, 000, 000, 000, 0),
(172, 'ANKIT KUMAR SINGH', 'ankit18f@iitg.ac.in', '6203903880', 10, '34', '180104014', 'Non-Veg', 'O+', 'ANKIT KUMAR SINGH - ankit18f@iitg.ac.in.jpg', 'Ankit', '', 'M', 0, 000, 000, 000, 0),
(173, 'YAVNIKA CHAUHAN', 'yavnika.chauhan.mec16@itbhu.ac.in', '9792923910', 1, '31', '16135110', 'Veg', 'AB+', 'YAVNIKA CHAUHAN - yavnika.chauhan.mec16@itbhu.ac.in.jpg', '18', '', 'F', 0, 000, 000, 000, 0),
(174, 'VAISHNAVI GOYAL', 'vaishnavigoyal4@gmail.com', '9017027151', 20, '33', '1801ee58', 'Veg', 'B+', 'VAISHNAVI GOYAL - vaishnavigoyal4@gmail.com.jpg', 'Vaishnavi', '', 'F', 0, 000, 000, 000, 0),
(175, 'JEEVANA ALLU', 'jeevana8f@gmail.com', '7995598954', 20, '33', '1801me27', 'Non-Veg', 'O+', 'JEEVANA ALLU - jeevana8f@gmail.com.jpg', 'Jeevana', '', 'F', 0, 000, 000, 000, 0),
(176, 'MANAK KASHYAP', 'manakkashyap98@gmail.com', '9999717497', 10, '42', '170104044', 'Non-Veg', 'O+', 'MANAK KASHYAP - manakkashyap98@gmail.com.jpg', 'Champion', '', 'M', 0, 000, 000, 000, 0),
(177, 'DIVYANSH BHARDWAJ', 'divyansh_1901me22@iitp.ac.in', '8318555634', 20, '34', '1901me22', 'Veg', 'A+', 'DIVYANSH BHARDWAJ - divyansh_1901me22@iitp.ac.in.jpg', 'jivyansh', 'no', 'M', 0, 000, 000, 000, 0),
(178, 'KUNAL BANSAL', 'bansal18@iitg.ac.in', '9871642025', 10, '37', '180103096', 'Veg', 'O+', 'KUNAL BANSAL - bansal18@iitg.ac.in.jpg', 'Kunal', 'Give good accommodation please.', 'M', 0, 000, 000, 000, 0),
(179, 'PIYUSH TIWARY', 'piyush.ee17@iitp.acin', '9834943057', 20, '30', '1701EE31', 'Veg', 'B+', 'PIYUSH TIWARY - piyush.ee17@iitp.acin.jpg', 'Piyush', '', 'M', 0, 000, 000, 000, 0),
(181, 'MADAKA SHIVA DURGA PRASAD ', 'madaka_1901ce22@iitp.ac.in', '8978707882', 20, '35', '1901ce22 ', 'Non-Veg', 'O+', 'MADAKA SHIVA DURGA PRASAD  - madaka_1901ce22@iitp.ac.in.jpg', '18', '', 'M', 0, 000, 000, 000, 0),
(182, 'KADUM PERME', 'kadum.cs16@iitp.acin', '9955539248', 20, '30', '1601CS17', 'Non-Veg', 'AB+', 'KADUM PERME - kadum.cs16@iitp.acin.jpg', 'Kadum', '', 'M', 0, 000, 000, 000, 0),
(183, 'KUSH GOSALIA', 'gosaliakush@gmail.com', '8291708978', 20, '35', '1901me37', 'Veg', 'B+', 'KUSH GOSALIA - gosaliakush@gmail.com.jpg', '11', '', 'M', 0, 000, 000, 000, 0),
(184, 'MANJUL BAMRARA', 'manjul_1901cs32@iitp.ac.in', '9927090036', 20, '35', '1901cs32', 'Non-Veg', 'B+', 'MANJUL BAMRARA - manjul_1901cs32@iitp.ac.in.jpg', '26', '', 'M', 0, 000, 000, 000, 0),
(185, 'SHUBHAM SINGH', 'SHUBHAM.EE17@IITP.A.CIN', '7414847426', 20, '44', '1701EE45', 'Non-Veg', 'O+', 'SHUBHAM SINGH - SHUBHAM.EE17@IITP.A.CIN.jpg', 'SUBBU', '', 'M', 0, 000, 000, 000, 0),
(186, 'ABHIJEET KHANDWE', 'abhikhandwe@gmail.com', '7218176287', 20, '30', '1801CS02', 'Veg', 'O+', 'ABHIJEET KHANDWE - abhikhandwe@gmail.com.jpg', 'Abhijeet', '', 'M', 0, 000, 000, 000, 0),
(188, 'TONMOY SHARMA', 'tonmoy_1911me17@iitp.ac.in', '7896075001', 20, '30', '1911ME17', 'Non-Veg', 'B+', 'TONMOY SHARMA - tonmoy_1911me17@iitp.ac.in.jpg', 'Tonmoy', '', 'M', 0, 000, 000, 000, 0),
(189, 'SURAJ SINGH PATWAL', 'patwalsuraj11@gmail.com', '8433093733', 20, '35', '1911mt12', 'Veg', 'B+', 'SURAJ SINGH PATWAL - patwalsuraj11@gmail.com.jpg', '21', '', 'M', 0, 000, 000, 000, 0),
(190, 'PRASHANT', '1801ee33@iitp.ac.in', '8107665144', 20, '35', '1801ee33', 'Non-Veg', 'AB+', 'PRASHANT - 1801ee33@iitp.ac.in.jpg', '3', '', 'M', 0, 000, 000, 000, 0),
(191, 'SHUBHOJIT DAS', '1801me53@iitp.ac.in', '9199405419', 20, '35', '1801me53', 'Non-Veg', 'O+', 'SHUBHOJIT DAS - 1801me53@iitp.ac.in.jpg', '7', '', 'M', 0, 000, 000, 000, 0),
(192, 'AARYA VARAT JOSHI', '1801cs01@iitp.ac.in', '7579246532', 20, '30', '1801CS01', 'Non-Veg', 'O+', 'AARYA VARAT JOSHI - 1801cs01@iitp.ac.in.jpg', 'Aarya Varat', '', 'M', 0, 000, 000, 000, 0),
(194, 'MOHIT KISHORE', 'kishoremohit07@gmail.com', '9570566557', 20, '35', '1701CS28', 'Non-Veg', 'A+', 'MOHIT KISHORE - kishoremohit07@gmail.com.jpg', '5', '', 'M', 0, 000, 000, 000, 0),
(195, 'AASHAY HARSHIT', 'aashay.ch17@iitp.ac.in', '9523865728', 20, '35', '1701CB01', 'Non-Veg', 'O+', 'AASHAY HARSHIT - aashay.ch17@iitp.ac.in.jpg', '23', '', 'M', 0, 000, 000, 000, 0),
(196, 'RITESH KUMAR', 'ritesh.me17@iitp.ac.in', '9065001243', 20, '35', '1701E33', 'Non-Veg', 'O+', 'RITESH KUMAR - ritesh.me17@iitp.ac.in.jpg', '2', '', 'M', 0, 000, 000, 000, 0),
(197, 'SATYENDRA KUMAR', 'satyendra.cb16@iitp.ac.in', '6302801188', 20, '35', '1601cb21', 'Veg', 'B+', 'SATYENDRA KUMAR - satyendra.cb16@iitp.ac.in.jpg', '17', '', 'M', 0, 000, 000, 000, 0),
(198, 'KAMA TADAR', 'tadar.cs16@iitp.ac.in', '9774936896', 20, '35', '1601cs47', 'Non-Veg', 'B+', 'KAMA TADAR - tadar.cs16@iitp.ac.in.jpg', '8', '', 'M', 0, 000, 000, 000, 0),
(199, 'ANKIT KUMAR MEENA', 'ankit.me16@iitp.ac.in', '8764367594', 20, '35', '1601ME05', 'Non-Veg', 'O+', 'ANKIT KUMAR MEENA - ankit.me16@iitp.ac.in.jpg', '28', '', 'M', 0, 000, 000, 000, 0),
(200, 'ABHISHEK NAUTIYAL', 'abhishek.cs16@iitp.ac.in', '8743890432', 20, '35', '1601CS02', 'Non-Veg', 'A+', 'ABHISHEK NAUTIYAL - abhishek.cs16@iitp.ac.in.jpg', '4', '', 'M', 0, 000, 000, 000, 0),
(201, 'MAYANK SHARMA', 'mayank18@iitg.ac.in', '7530832001', 10, '37', '184102204 ', 'Veg', 'O+', 'MAYANK SHARMA - mayank18@iitg.ac.in.jpg', '13', '', 'M', 0, 000, 000, 000, 0),
(202, 'AKARSH YADAV', 'akarsh_1901ee08@iitp.ac.in', '8278081216', 20, '35', '1901EE08', 'Non-Veg', 'A+', 'AKARSH YADAV - akarsh_1901ee08@iitp.ac.in.jpg', '13', '', 'M', 0, 000, 000, 000, 0),
(203, 'DEVANSH GUPTA', 'gupta170101022@iitg.ac.in', '8721001018', 10, '42', '170101022', 'Veg', 'B+', 'DEVANSH GUPTA - gupta170101022@iitg.ac.in.jpg', 'Champions', '', 'M', 0, 000, 000, 000, 0),
(204, 'ANSHUMAN KUMAR SINGH', 'anshuman18@iitg.ac.in', '9582854632', 10, '30', '180101011', 'Non-Veg', 'B+', 'ANSHUMAN KUMAR SINGH - anshuman18@iitg.ac.in.jpg', 'Anshuman', '', 'M', 0, 000, 000, 000, 0),
(205, 'BASTAV BORAH', 'bastav.borah@iitg.ac.in', '8918489096', 10, '30', '186103009', 'Non-Veg', 'A+', 'BASTAV BORAH - bastav.borah@iitg.ac.in.jpg', 'borah', '', 'M', 0, 000, 000, 000, 0),
(206, 'MOHD AKBAR', 'akbar@iith.ac.in', '9989660074', 11, 'staff', 'S039', 'Non-Veg', 'O+', 'MOHD AKBAR - akbar@iith.ac.in.jpg', '23', 'SR PTI', 'M', 0, 000, 000, 000, 0),
(207, 'AJIT SINGH', 'ajit18@iitg.ac.in', '9085534798', 10, '34', '186123002', 'Non-Veg', 'B+', 'AJIT SINGH - ajit18@iitg.ac.in.jpg', 'Ajit', '', 'M', 0, 000, 000, 000, 0),
(211, 'NIVED M R', 'ME16M18P000001@IITH.AC.IN', '8547670595', 11, '35', 'ME16M18P000001', 'Non-Veg', 'A+', 'NIVED M R - ME16M18P000001@IITH.AC.IN.jpg', 'NIVED', '', 'M', 0, 000, 000, 000, 0),
(213, 'SANDEEP KUMAR', 'CS18BTECH11041@IITH.AC.IN', '9446751130', 11, '35', 'CS18BTECH11041', 'Non-Veg', 'O+', 'SANDEEP KUMAR - CS18BTECH11041@IITH.AC.IN.jpg', 'SANDEEP', '', 'M', 0, 000, 000, 000, 0),
(214, 'ABHISHEK SHETKAR', 'EE18BTECH11002@IITH.AC.IN', '7483080984', 11, '35', 'EE18BTECH11002', 'Non-Veg', 'A+', 'ABHISHEK SHETKAR - EE18BTECH11002@IITH.AC.IN.jpg', 'ABHISHEK', '', 'M', 0, 000, 000, 000, 0),
(215, 'NILYPTAL DUTTA', 'CY19MSCST1102@IITH.AC.IN', '7575926723', 11, '35', 'CY19MSCST1102', 'Non-Veg', 'O+', 'NILYPTAL DUTTA - CY19MSCST1102@IITH.AC.IN.jpg', 'NILYPTAL', '', 'M', 0, 000, 000, 000, 0),
(216, 'KARTHIK PRABHAKAR', 'CE17BTECH11022@IITH.AC.IN', '9745713287', 11, '35', 'CE17BTECH11022', 'Non-Veg', 'O+', 'KARTHIK PRABHAKAR - CE17BTECH11022@IITH.AC.IN.jpg', 'KARTHI', '', 'M', 0, 000, 000, 000, 0),
(217, 'DASHANSKHEM NONGKYNRIH     ', 'PH19MSCST11004@IITH.AC.IN', '8014189457', 11, '9,35', 'PH19MSCST11004', 'Non-Veg', 'A+', 'DASHANSKHEM NONGKYNRIH      - PH19MSCST11004@IITH.AC.IN.jpg', 'DASHAN', '', 'M', 0, 000, 000, 000, 0),
(218, 'T SATYANARAYANA', 'satya@iith.ac.in', '9440712969', 11, 'staff', '016', 'Non-Veg', 'A+', 'T SATYANARAYANA - satya@iith.ac.in.jpg', 'satya', 'Sprts Officer incharge', 'M', 0, 000, 000, 000, 0),
(219, 'VISHWANATHAN VIVEK S', 'vvivek@iitg.ac.in', '8428173431', 10, '52', '190106073', 'Non-Veg', 'A+', 'VISHWANATHAN VIVEK S - vvivek@iitg.ac.in.jpg', 'Selvan', '', 'M', 0, 000, 000, 000, 0),
(220, 'VIKRAM PRATAP SINGH BUNDELA', 'vikram@iith.ac.in', '9494424953', 11, 'staff', 'S038', 'Non-Veg', 'A+', 'VIKRAM PRATAP SINGH BUNDELA - vikram@iith.ac.in.jpg', 'vikram', 'SR PTI', 'M', 0, 000, 000, 000, 0),
(221, 'MOHAMMED KALEEMUDDIN', 'kaleem@iith.ac.in', '9885345657', 11, 'staff', '069', 'Non-Veg', 'O+', 'MOHAMMED KALEEMUDDIN - kaleem@iith.ac.in.jpg', 'kaleem', 'PT Coach', 'M', 0, 000, 000, 000, 0),
(222, 'Y SRIKANTH', 'srikanthsonu@gmail.com', '8106759609', 11, 'staff', '895', 'Non-Veg', 'B+', 'Y SRIKANTH - srikanthsonu@gmail.com.jpg', 'Srikanth', 'Coach', 'M', 0, 000, 000, 000, 0),
(223, 'VAIBHAV JAISWAL', 'vjaiswal.vj@iitg.ac.in', '9827804912', 10, '34', '166103109', 'Non-Veg', 'A+', 'VAIBHAV JAISWAL - vjaiswal.vj@iitg.ac.in.jpg', 'Vaibhav', 'Please keep hot water for bath as well as for drinking.', 'M', 0, 000, 000, 000, 0),
(224, 'PROF SHIV GOVIND SINGH', 'sgsingh@iith.ac.in', '9959603640', 11, 'staff', 'F029', 'Non-Veg', 'B+', 'PROF SHIV GOVIND SINGH - sgsingh@iith.ac.in.jpg', 'shiv', 'Chairman sports', 'M', 0, 000, 000, 000, 0),
(225, 'SUDHAR SINGH CHAVAN', 'sudhar@iith.ac.in', '9951448751', 11, 'staff', '688', 'Non-Veg', 'A+', 'SUDHAR SINGH CHAVAN - sudhar@iith.ac.in.jpg', 'sudhar', 'Coach', 'M', 0, 000, 000, 000, 0),
(226, 'VALAVA SR', 'MS18MTECH11003@IITH.AC.IN', '9445796579', 11, '35', 'MS18MTECH11003', 'Non-Veg', 'A+', 'VALAVA SR - MS18MTECH11003@IITH.AC.IN.jpg', 'SR', '', 'M', 0, 000, 000, 000, 0),
(227, 'DHANANJAY SINGH', 'CE18BTECH11010@IITH.AC.IN', '8209039553', 11, '35', 'CE18BTECH11010', 'Veg', 'O+', 'DHANANJAY SINGH - CE18BTECH11010@IITH.AC.IN.jpg', 'DHANANJAY', '', 'M', 0, 000, 000, 000, 0),
(228, 'SHREYASH ANARASE', 'ES16BTECH11002@IITH.AC.IN', '9100273751', 11, '35', 'ES16BTECH11002', 'Non-Veg', 'B+', 'SHREYASH ANARASE - ES16BTECH11002@IITH.AC.IN.jpg', 'SHREYASH', '', 'M', 0, 000, 000, 000, 0),
(229, 'DEEPANSHU CHOUHAN', 'CS18BTECH11009@IITH.AC.IN', '9131786608', 11, '35', 'CS18BTECH11009', 'Non-Veg', 'O+', 'DEEPANSHU CHOUHAN - CS18BTECH11009@IITH.AC.IN.jpg', 'DEEP', '', 'M', 0, 000, 000, 000, 0),
(230, 'ADITYA JAYANT HALGEKAR', 'ME17BTECH11001@IITH.AC.IN', '8793190422', 11, '35', 'ME17BTECH11001', 'Non-Veg', 'A+', 'ADITYA JAYANT HALGEKAR - ME17BTECH11001@IITH.AC.IN.jpg', 'ADITYA', '', 'M', 0, 000, 000, 000, 0),
(231, 'NABARAJ SHARMA', 'naba123@iitg.ac.in', '9101496614', 10, 'staff', 'C-98', 'Non-Veg', 'B+', 'NABARAJ SHARMA - naba123@iitg.ac.in.jpg', 'Navoo', '', 'M', 0, 000, 000, 000, 0),
(232, 'CHETNA PAINKRA', 'chetna_1901cs16@iitp.ac.in', '9340786736', 20, '45', '1901CS16', 'Veg', 'A+', 'CHETNA PAINKRA - chetna_1901cs16@iitp.ac.in.jpg', 'Chi', '', 'F', 0, 000, 000, 000, 0),
(233, 'KUNAL SINGH', 'ee17btech11020@iith.ac.in', '8112258306', 11, '34', 'EE17BTECH11020', 'Veg', 'A+', 'KUNAL SINGH - ee17btech11020@iith.ac.in.jpg', 'kunnu', 'Sports Secretary', 'M', 0, 000, 000, 000, 0),
(234, 'RITESH YADAV', 'MA17BTECH11009@IITH.AC.IN', '7382204600', 11, '34', 'MA17BTECH11009', 'Veg', 'A+', 'RITESH YADAV - MA17BTECH11009@IITH.AC.IN.jpg', 'Gunyy', '', 'M', 0, 000, 000, 000, 0),
(235, 'ADARSH RAJ', 'CH19MTECH11013@IITH.AC.IN', '7063698962', 11, '34', 'CH19MTECH11013', 'Non-Veg', 'O+', 'ADARSH RAJ - CH19MTECH11013@IITH.AC.IN.jpg', 'Addy', '', 'M', 0, 000, 000, 000, 0),
(236, 'AVANEESH SINGH', 'EP18BTECH11002@IITH.AC.IN', '8957364150', 11, '34', 'EP18BTECH11002', 'Non-Veg', 'AB+', 'AVANEESH SINGH - EP18BTECH11002@IITH.AC.IN.jpg', 'Avi', '', 'M', 0, 000, 000, 000, 0),
(237, 'SAJAL MALOO', 'ME18BTECH11036@IITH.AC.IN', '7697717725', 11, '34', 'ME18BTECH11036', 'Non-Veg', 'O+', 'SAJAL MALOO - ME18BTECH11036@IITH.AC.IN.jpg', 'Sazzy', '', 'M', 0, 000, 000, 000, 0),
(238, 'SACHIN YADAV', 'BM18MTECH11001@IITH.AC.IN', '7703892961', 11, '34', 'BM18MTECH11001', 'Veg', 'A+', 'SACHIN YADAV - BM18MTECH11001@IITH.AC.IN.jpg', 'sachin', '', 'M', 0, 000, 000, 000, 0),
(239, 'CHARAN TEJ REDDY', 'EE18RESCH01010@IITH.AC.IN', '8985863425', 11, '34', 'EE18RESCH01010', 'Non-Veg', 'AB+', 'CHARAN TEJ REDDY - EE18RESCH01010@IITH.AC.IN.jpg', 'Cherry', '', 'M', 0, 000, 000, 000, 0),
(240, 'VINAY PAVAN', 'CS19MTECH11020@IITH.AC.IN', '9642437235', 11, '34', 'CS19MTECH11020', 'Veg', 'O+', 'VINAY PAVAN - CS19MTECH11020@IITH.AC.IN.jpg', 'BTV', '', 'M', 0, 000, 000, 000, 0),
(241, 'MOHIT CHUGH', 'mohit.chugh@iitg.ac.in', '7986097929', 10, '30', '194104508', 'Veg', 'B+', 'MOHIT CHUGH - mohit.chugh@iitg.ac.in.jpg', 'Mohit', '', 'M', 0, 000, 000, 000, 0),
(242, 'ABHISHEK MENDU', 'CH18BTECH11020@IITH.AC.IN', '6304356811', 11, '34', 'CH18BTECH11020', 'Non-Veg', 'O+', 'ABHISHEK MENDU - CH18BTECH11020@IITH.AC.IN.jpg', 'ABHI', '', 'M', 0, 000, 000, 000, 0),
(243, 'GAJANAN SHETKAR', 'CS17BTECH11016@IITH.AC.IN', '7483077565', 11, '35', 'CS17BTECH11016', 'Non-Veg', 'B+', 'GAJANAN SHETKAR - CS17BTECH11016@IITH.AC.IN.jpg', 'GAJANAN', '', 'M', 0, 000, 000, 000, 0),
(244, 'RAJNI CHOUDHARY', 'rajni@iitg.ac.in', '9521600817', 10, '31', '182123035', 'Veg', 'O+', 'RAJNI CHOUDHARY - rajni@iitg.ac.in.jpg', 'Rajni', '', 'F', 0, 000, 000, 000, 0),
(245, 'SHAMBHAVI PANDEY', 'shamb170106052@iitg.ac.in', '7414847998', 10, '31', '170106052', 'Veg', 'O+', 'SHAMBHAVI PANDEY - shamb170106052@iitg.ac.in.jpg', 'Shambhavi', '', 'F', 0, 000, 000, 000, 0),
(246, 'SWAPNIL HOTA', 'hota@iitg.ac.in', '8827256920', 10, '34', '180104075', 'Non-Veg', 'B+', 'SWAPNIL HOTA - hota@iitg.ac.in.jpg', 'Swapnil', '', 'M', 0, 000, 000, 000, 0),
(247, 'AMEY RAMBATLA', 'ameyrambatla@gmail.com', '8097073390', 10, '30', '190106011', 'Veg', 'AB+', 'AMEY RAMBATLA - ameyrambatla@gmail.com.jpg', 'Amey', '', 'M', 0, 000, 000, 000, 0),
(248, 'SHASHANK THOOL', 'shashank77thool@gmail.com', '8104627815', 10, '30', '180123043', 'Non-Veg', 'A+', 'SHASHANK THOOL - shashank77thool@gmail.com.jpg', 'Shashank', '', 'M', 0, 000, 000, 000, 0),
(249, 'SHIKHA SOLANKI', 'Shikhasolanki324@gmail.com', '9318427874', 10, '31', '194107018', 'Veg', 'A+', 'SHIKHA SOLANKI - Shikhasolanki324@gmail.com.jpg', 'Shikha', '', 'F', 0, 000, 000, 000, 0),
(250, 'RAKESH KUMAR', 'rakeshdangra00@gmail.com', '9992855474', 10, '36', '180121031', 'Veg', 'AB+', 'RAKESH KUMAR - rakeshdangra00@gmail.com.jpg', 'MEHRA', '', 'M', 0, 000, 000, 000, 0),
(251, 'OJAS PRAVIN RAHATE', 'ojas_1911me12@iitp.ac.in', '9545271417', 20, '12,35', '1911me12', 'Non-Veg', 'O+', 'OJAS PRAVIN RAHATE - ojas_1911me12@iitp.ac.in.jpg', 'OJAS', '', 'M', 0, 000, 000, 000, 0),
(252, 'PURANSHU', 'puranshussp@gmail.com', '7578845639', 10, '36', '180122036', 'Veg', 'O+', 'PURANSHU - puranshussp@gmail.com.jpg', 'Puranshu', '', 'M', 0, 000, 000, 000, 0),
(253, 'IBRAR ALI', 'ibrar170121020@iitg.ac.in', '9682589369', 10, '47', '170121020', 'Veg', 'B+', 'IBRAR ALI - ibrar170121020@iitg.ac.in.jpg', 'IBRAR', '', 'M', 0, 000, 000, 000, 0),
(254, 'KULDEEP ROY', 'kuldeepr@iitg.ac.in', '9954246995', 10, '49', '156107033', 'Non-Veg', 'A-', 'KULDEEP ROY - kuldeepr@iitg.ac.in.jpg', 'Kuldeep', '', 'M', 0, 000, 000, 000, 0),
(256, 'KOUSHIK MONDAL', 'koushik.ce17@iitp.ac.in', '9304632181', 20, '1,35', '1701ce12', 'Non-Veg', 'B+', 'KOUSHIK MONDAL - koushik.ce17@iitp.ac.in.jpg', 'K.M', '', 'M', 0, 000, 000, 000, 0),
(257, 'MOHAMMAD ABBAS', 'CE17BTECH11025@IITH.AC.IN', '8601541150', 11, '35', 'CE17BTECH11025', 'Non-Veg', 'O+', 'MOHAMMAD ABBAS - CE17BTECH11025@IITH.AC.IN.jpg', 'ABBAS', '', 'M', 0, 000, 000, 000, 0),
(258, 'JACOB KUNNATHOOR', 'CH17BTECH11012@IITH.AC.IN', '8289977647', 11, '35', 'CH17BTECH11012', 'Non-Veg', 'O+', 'JACOB KUNNATHOOR - CH17BTECH11012@IITH.AC.IN.jpg', 'JACOB', '', 'M', 0, 000, 000, 000, 0),
(259, 'SUVENDU PANDA', 'CY19MSCST11034@IITH.AC.IN', '9679956747', 11, '35', 'CY19MSCST11034', 'Non-Veg', 'O+', 'SUVENDU PANDA - CY19MSCST11034@IITH.AC.IN.jpg', 'SUVENDU', '', 'M', 0, 000, 000, 000, 0),
(260, 'MANN KHIVASARA', 'ME17BTECH11051@IITH.AC.IN', '9403909136', 11, '42', 'ME17BTECH11051', 'Veg', 'B+', 'MANN KHIVASARA - ME17BTECH11051@IITH.AC.IN.jpg', 'MANN', '', 'M', 0, 000, 000, 000, 0),
(261, 'SUMIT MEHTA', 'ME17RESCH11008@IITH.AC.IN', '9501705665', 11, '42', 'ME17RESCH11008', 'Veg', 'B+', 'SUMIT MEHTA - ME17RESCH11008@IITH.AC.IN.jpg', 'SUMIT', '', 'M', 0, 000, 000, 000, 0),
(262, 'K PRANAV', 'EP19BTECH11012@IITH.AC.IN', '8106205489', 11, '42', 'EP19BTECH11012', 'Veg', 'O+', 'K PRANAV - EP19BTECH11012@IITH.AC.IN.jpg', 'K PRANAV', '', 'M', 0, 000, 000, 000, 0),
(263, 'ABINASH BISWAL', 'ME14M16P000001@IITH.AC.IN', '9438309250', 11, '34', 'ME14M16P000001', 'Non-Veg', 'A+', 'ABINASH BISWAL - ME14M16P000001@IITH.AC.IN.jpg', 'Tanky', '', 'M', 0, 000, 000, 000, 0),
(264, 'PRABHU RAM', 'CH18MTECH11010@IITH.AC.IN', '9884643986', 11, '34', 'CH18MTECH11010', 'Non-Veg', 'B+', 'PRABHU RAM - CH18MTECH11010@IITH.AC.IN.jpg', 'Pabby', '', 'M', 0, 000, 000, 000, 0),
(265, 'RAHUL SHAH', 'CS18MTECH11009@IITH.AC.IN', '9033091921', 11, '34', 'CS18MTECH11009', 'Veg', 'A+', 'RAHUL SHAH - CS18MTECH11009@IITH.AC.IN.jpg', 'Shah', '', 'M', 0, 000, 000, 000, 0),
(266, 'MADAN CHAUDHARY', 'CH18BTECH11016@IITH.AC.IN', '8077360308', 11, '34', 'CH18BTECH11016', 'Veg', 'O+', 'MADAN CHAUDHARY - CH18BTECH11016@IITH.AC.IN.jpg', 'Maddy', '', 'M', 0, 000, 000, 000, 0),
(267, 'VISHAL SHARMA', 'ME18MTECH11030@IITH.AC.IN', '8894883770', 11, '34', 'ME18MTECH11030', 'Veg', 'B+', 'VISHAL SHARMA - ME18MTECH11030@IITH.AC.IN.jpg', 'Vishuu', '', 'M', 0, 000, 000, 000, 0),
(268, 'PAVAN DESAVATH', 'ME19BTECH11035@IITH.AC.IN', '9346247108', 11, '34', 'ME19BTECH11035', 'Non-Veg', 'O+', 'PAVAN DESAVATH - ME19BTECH11035@IITH.AC.IN.jpg', 'Pavan', '', 'M', 0, 000, 000, 000, 0),
(269, 'RISHABH BATRA', 'batra@iitk.ac.in', '9721874874', 15, '30', '170568', 'Veg', 'B+', 'RISHABH BATRA - batra@iitk.ac.in.jpg', 'Batra', '', 'M', 0, 000, 000, 000, 0),
(270, 'NITENDRA DHAKER', 'nitendra@iitk.ac.in', '9479468700', 15, '30', '160459', 'Non-Veg', 'O+', 'NITENDRA DHAKER - nitendra@iitk.ac.in.jpg', 'Nitendra', '', 'M', 0, 000, 000, 000, 0),
(271, 'ANURAG', 'anuragsh@iitk.ac.in', '8909679379', 15, '30', '16109264', 'Veg', 'B+', 'ANURAG - anuragsh@iitk.ac.in.jpg', 'Anurag', '', 'M', 0, 000, 000, 000, 0),
(272, 'KRISHNENDU DANDAPAT', 'krishnd@iitk.ac.in', '9378155021', 15, '30', '16209861', 'Non-Veg', 'B+', 'KRISHNENDU DANDAPAT - krishnd@iitk.ac.in.jpg', 'Krishnendu', '', 'M', 0, 000, 000, 000, 0),
(273, 'AJMIRA NAGESWARA RAO', 'azmiran@iitk.ac.in', '9794167749', 15, '30', '13101063', 'Non-Veg', 'O+', 'AJMIRA NAGESWARA RAO - azmiran@iitk.ac.in.jpg', 'Nagesh', '', 'M', 0, 000, 000, 000, 0),
(274, 'KALYANI BARMAN', 'kalyani@iitk.ac.in', '9151619478', 15, '31', '16109865', 'Non-Veg', 'O+', 'KALYANI BARMAN - kalyani@iitk.ac.in.jpg', 'Kalyani', '', 'F', 0, 000, 000, 000, 0),
(275, 'MRUNMAYEE SHILEDAR', 'mrunmaye@iitk.ac.in', '7694055641', 15, '31', '190514', 'Non-Veg', 'O+', 'MRUNMAYEE SHILEDAR - mrunmaye@iitk.ac.in.jpg', 'Mrunmayee', '', 'F', 0, 000, 000, 000, 0),
(276, 'GURUGUBELLI NAVYA', 'navyaa@iitk.ac.in', '9390172863', 15, '31', '190350', 'Non-Veg', 'O+', 'GURUGUBELLI NAVYA - navyaa@iitk.ac.in.jpg', 'Navya', '', 'F', 0, 000, 000, 000, 0),
(277, 'SHUBHANSHU KHANDELWAL', 'shubhke@iitk.ac.in', '8619464661', 15, '36', '15807705', 'Veg', 'A+', 'SHUBHANSHU KHANDELWAL - shubhke@iitk.ac.in.jpg', 'Shubhanshu', '', 'M', 0, 000, 000, 000, 0),
(278, 'HIMANSHU KUMAR', 'himanraj@iitk.ac.in', '6395127878', 15, '36', '160291', 'Non-Veg', 'B+', 'HIMANSHU KUMAR - himanraj@iitk.ac.in.jpg', 'Himanshu', '', 'M', 0, 000, 000, 000, 0),
(279, 'LAVISH ARORA', 'lavi@iitk.ac.in', '7042761800', 15, '36', '18204269', 'Non-Veg', 'A+', 'LAVISH ARORA - lavi@iitk.ac.in.jpg', 'Lavish', '', 'M', 0, 000, 000, 000, 0),
(280, 'AALOK RAJ', 'aalok@iitk.ac.in', '7737608285', 15, '36', '180005', 'Non-Veg', 'A+', 'AALOK RAJ - aalok@iitk.ac.in.jpg', 'Aalok', '', 'M', 0, 000, 000, 000, 0),
(281, 'PIYUSH SENWAR', 'psenwar@iitk.ac.in', '6377842032', 15, '36', '180512', 'Veg', 'B+', 'PIYUSH SENWAR - psenwar@iitk.ac.in.jpg', 'Piyush', '', 'M', 0, 000, 000, 000, 0),
(282, 'NISHCHAY DUBEY', 'nischay@iitk.ac.in', '8707698516', 15, '36', '170444', 'Non-Veg', 'O+', 'NISHCHAY DUBEY - nischay@iitk.ac.in.jpg', 'Nishchay', '', 'M', 0, 000, 000, 000, 0),
(283, 'LAKSHAY MIDDHA', 'lakshaym@iitk.ac.in', '8290829025', 15, '36', '180377', 'Veg', 'O+', 'LAKSHAY MIDDHA - lakshaym@iitk.ac.in.jpg', 'Lakshay', '', 'M', 0, 000, 000, 000, 0),
(284, 'RD VED PRAKASH', 'rdved@iitk.ac.in', '9559083977', 15, '36', '180603', 'Non-Veg', 'B+', 'RD VED PRAKASH - rdved@iitk.ac.in.jpg', 'Ved', '', 'M', 0, 000, 000, 000, 0),
(285, 'SANJEET ARYA', 'asanjeet@iitk.ac.in', '7372988574', 15, '36', '180670', 'Non-Veg', 'B-', 'SANJEET ARYA - asanjeet@iitk.ac.in.jpg', 'Arya', '', 'M', 0, 000, 000, 000, 0),
(286, 'SAM JOE', 'jcsam@iitk.ac.in', '9573580044', 15, '36', '19105102', 'Non-Veg', 'O+', 'SAM JOE - jcsam@iitk.ac.in.jpg', 'Sam', '', 'M', 0, 000, 000, 000, 0),
(287, 'KAILASH MEENA', 'skailash@iitk.ac.in', '9001162469', 15, '36', '160312', 'Non-Veg', 'B+', 'KAILASH MEENA - skailash@iitk.ac.in.jpg', 'Kailash', '', 'M', 0, 000, 000, 000, 0),
(288, 'DIVYANSHU BHATT', 'divss@iitk.ac.in', '7302453523', 15, '36', '180254', 'Veg', 'O+', 'DIVYANSHU BHATT - divss@iitk.ac.in.jpg', 'Divyanshu', '', 'M', 0, 000, 000, 000, 0),
(289, 'HARSHVARDHAN MUNDA', 'harshk@iitk.ac.in', '7318019048', 15, '36', '160295', 'Non-Veg', 'B+', 'HARSHVARDHAN MUNDA - harshk@iitk.ac.in.jpg', 'Munda', '', 'M', 0, 000, 000, 000, 0),
(290, 'RISHABH SINGH', 'rishabhr@iitk.ac.in', '9762817806', 15, '36', '19105100', 'Non-Veg', 'B+', 'RISHABH SINGH - rishabhr@iitk.ac.in.jpg', 'Rishabh', '', 'M', 0, 000, 000, 000, 0),
(291, 'VISWANATH P', 'viswan@iitk.ac.in', '8848621748', 15, '36', '14203267', 'Non-Veg', 'O-', 'VISWANATH P - viswan@iitk.ac.in.jpg', 'Viswa', '', 'M', 0, 000, 000, 000, 0);
INSERT INTO `players` (`id`, `name`, `email`, `mobile`, `college_id`, `selected_sports`, `roll_no`, `food`, `blood_group`, `profile_image_url`, `jursey_name`, `special_inst`, `gender`, `reg_status`, `game_gold`, `game_silver`, `game_bronze`, `feeded`) VALUES
(292, 'ANSHUMAN PAL', 'panshu@iitk.ac.in', '8005383990', 15, '36', '170134', 'Non-Veg', 'A+', 'ANSHUMAN PAL - panshu@iitk.ac.in.jpg', 'Anshu', '', 'M', 0, 000, 000, 000, 0),
(293, 'SUMADHVA SRIDHAR', 'ES18BTECH11018@IITH.AC.IN', '9741224098', 11, '32', 'ES18BTECH11018', 'Veg', 'B+', 'SUMADHVA SRIDHAR - ES18BTECH11018@IITH.AC.IN.jpg', 'SUMADHVA', '', 'M', 0, 000, 000, 000, 0),
(294, 'N JYOTHI SWAROOP', 'CS18BTECH11033@IITH.AC.IN', '9381875455', 11, '32', 'CS18BTECH11033', 'Non-Veg', 'O+', 'N JYOTHI SWAROOP - CS18BTECH11033@IITH.AC.IN.jpg', 'SWAROOP', '', 'M', 0, 000, 000, 000, 0),
(295, 'SHREYAS K B', 'BD19BDES11005@IITH.AC.IN', '9449880491', 11, '32', 'BD19BDES11005', 'Veg', 'A+', 'SHREYAS K B - BD19BDES11005@IITH.AC.IN.jpg', 'KB', '', 'M', 0, 000, 000, 000, 0),
(296, 'SUJEETH REDDY', 'ES19BTECH11022@IITH.AC.IN', '9490634438', 11, '32', 'ES19BTECH11022', 'Non-Veg', 'O+', 'SUJEETH REDDY - ES19BTECH11022@IITH.AC.IN.jpg', 'SUJEETH', '', 'M', 0, 000, 000, 000, 0),
(297, 'CHANDRA SHEKHAR KASAUDHAN', 'EE17BTECH11011@IITH.AC.IN', '7732000577', 11, '32', 'EE17BTECH11011', 'Non-Veg', 'O+', 'CHANDRA SHEKHAR KASAUDHAN - EE17BTECH11011@IITH.AC.IN.jpg', 'CSK', '', 'M', 0, 000, 000, 000, 0),
(298, 'SAURABH BAGRI', 'bsaurabh@iitk.ac.in', '7318018613', 15, '32', '160634', 'Non-Veg', 'A+', 'SAURABH BAGRI - bsaurabh@iitk.ac.in.jpg', 'Saurabh', '', 'M', 0, 000, 000, 000, 0),
(299, 'DHRUV GUPTA', 'EP17BTECH11006@IITH.AC.IN', '8411970205', 11, '32', 'EP17BTECH11006', 'Veg', 'B+', 'DHRUV GUPTA - EP17BTECH11006@IITH.AC.IN.jpg', 'DHRUV', '', 'M', 0, 000, 000, 000, 0),
(300, 'VINAYAK S KAMATH', 'vskamath@iitk.ac.in', '7318018611', 15, '32', '160789', 'Veg', 'O-', 'VINAYAK S KAMATH - vskamath@iitk.ac.in.jpg', 'vinayak', '', 'M', 0, 000, 000, 000, 0),
(301, 'AAYUSH ARORA', 'EE17BTECH11003@IITH.AC.IN', '8587087642', 11, '32', 'EE17BTECH11003', 'Veg', 'O+', 'AAYUSH ARORA - EE17BTECH11003@IITH.AC.IN.jpg', 'AAYUSH', '', 'M', 0, 000, 000, 000, 0),
(302, 'GAURAV RAWAT', 'gauravr@iitk.ac.in', '9179488638', 15, '32', '160267', 'Non-Veg', 'O+', 'GAURAV RAWAT - gauravr@iitk.ac.in.jpg', 'Gaurav', '', 'M', 0, 000, 000, 000, 0),
(303, 'P SHYAM RAM', 'CH19BTECH11012@IITH.AC.IN', '9502761789', 11, '32', 'CH19BTECH11012', 'Non-Veg', 'O+', 'P SHYAM RAM - CH19BTECH11012@IITH.AC.IN.jpg', 'SHYAM', '', 'M', 0, 000, 000, 000, 0),
(304, 'UJJWAL PRATAP SINGH', 'ujjwalps@iitk.ac.in', '7355503020', 15, '32', '170763', 'Non-Veg', 'AB+', 'UJJWAL PRATAP SINGH - ujjwalps@iitk.ac.in.jpg', 'Ujjwal', '', 'M', 0, 000, 000, 000, 0),
(305, 'ESHWAR ', 'CS19BTECH11040@IITH.AC.IN', '8331976808', 11, '32', 'CS19BTECH11040', 'Non-Veg', 'O+', 'ESHWAR  - CS19BTECH11040@IITH.AC.IN.jpg', 'ESHWAR', '', 'M', 0, 000, 000, 000, 0),
(306, 'PUSHPIT SACHAN', 'pushpit@iitk.ac.in', '6283356164', 15, '32', '180375', 'Non-Veg', 'O+', 'PUSHPIT SACHAN - pushpit@iitk.ac.in.jpg', 'Pushpit', '', 'M', 0, 000, 000, 000, 0),
(307, 'SAHIL RAJAN', 'rsahil@iitk.ac.in', '9695212464', 15, '32', '180649', 'Non-Veg', 'O+', 'SAHIL RAJAN - rsahil@iitk.ac.in.jpg', 'Sahil', '', 'M', 0, 000, 000, 000, 0),
(308, 'KONDURU SAI PRATHEEK  ', 'CE19MTECH11025@IITH.AC.IN', '9962937371', 11, '32', 'CE19MTECH11025', 'Non-Veg', 'AB+', 'KONDURU SAI PRATHEEK   - CE19MTECH11025@IITH.AC.IN.jpg', 'KSP', '', 'M', 0, 000, 000, 000, 0),
(309, 'RISHABH LAKHWANI', 'lakhwani@iitk.ac.in', '9358875486', 15, '32', '180611', 'Non-Veg', 'B+', 'RISHABH LAKHWANI - lakhwani@iitk.ac.in.jpg', 'Rishabh', '', 'M', 0, 000, 000, 000, 0),
(310, 'PRATHYUSH', 'CS19BTECH11043@IITH.AC.IN', '8688229366', 11, '32', 'CS19BTECH11043', 'Non-Veg', 'O+', 'PRATHYUSH - CS19BTECH11043@IITH.AC.IN.jpg', 'PRATY', '', 'M', 0, 000, 000, 000, 0),
(311, 'PRAYAS SHARMA', 'prayas@iitk.ac.in', '9511879409', 15, '32', '180549', 'Veg', 'B+', 'PRAYAS SHARMA - prayas@iitk.ac.in.jpg', 'Prayas', '', 'M', 0, 000, 000, 000, 0),
(312, 'YASH LADDHA', 'yladdha@iitk.ac.in', '9660029912', 15, '32', '190999', 'Veg', 'B+', 'YASH LADDHA - yladdha@iitk.ac.in.jpg', 'Yash', '', 'M', 0, 000, 000, 000, 0),
(313, 'VENKATA CHERAN DEEP PAMURU', 'ES19BTECH11012@IITH.AC.IN', '9390303349', 11, '32', 'ES19BTECH11012', 'Non-Veg', 'A+', 'VENKATA CHERAN DEEP PAMURU - ES19BTECH11012@IITH.AC.IN.jpg', 'CHARAN', '', 'M', 0, 000, 000, 000, 0),
(314, 'HARSHIT BALWADA', 'hbalwada@iitk.ac.in', '9575790953', 15, '32', '190367', 'Non-Veg', 'O+', 'HARSHIT BALWADA - hbalwada@iitk.ac.in.jpg', 'Harshit', '', 'M', 0, 000, 000, 000, 0),
(315, 'FAHAD SHEIKH', 'fahadshk@iitk.ac.in', '8374630104', 15, '32', '190799', 'Non-Veg', 'O+', 'FAHAD SHEIKH - fahadshk@iitk.ac.in.jpg', 'Fahad', '', 'M', 0, 000, 000, 000, 0),
(316, 'PARTH BHARADWAJ', 'parthb@iitk.ac.in', '8826730317', 15, '32', '190589', 'Veg', 'A+', 'PARTH BHARADWAJ - parthb@iitk.ac.in.jpg', 'Parth', '', 'M', 0, 000, 000, 000, 0),
(317, 'POONAM MEENA', 'CY19MSCST11024@IITH.AC.IN', '7568399576', 11, '19,20,24,33', 'CY19MSCST11024', 'Non-Veg', 'B+', 'POONAM MEENA - CY19MSCST11024@IITH.AC.IN.jpg', 'PM', '', 'F', 0, 000, 000, 000, 0),
(318, 'RASHI DUTT', 'EE16RESCH11014@IITH.AC.IN', '8974268993', 11, '33', 'EE16RESCH11014', 'Non-Veg', 'B+', 'RASHI DUTT - EE16RESCH11014@IITH.AC.IN.jpg', 'RASHI', '', 'F', 0, 000, 000, 000, 0),
(319, 'G NAMRATHA CHANDER', 'EP19BTECH11011@IITH.AC.IN', '9848422520', 11, '33', 'EP19BTECH11011', 'Non-Veg', 'A-', 'G NAMRATHA CHANDER - EP19BTECH11011@IITH.AC.IN.jpg', 'NC', '', 'F', 0, 000, 000, 000, 0),
(320, 'SACHI KAVITKE', 'MS19BTECH11019@IITH.AC.IN', '9511631183', 11, '33', 'MS19BTECH11019', 'Non-Veg', 'B+', 'SACHI KAVITKE - MS19BTECH11019@IITH.AC.IN.jpg', 'SACHI', '', 'F', 0, 000, 000, 000, 0),
(321, 'G SAI BHARGAVI', 'EP19BTECH11021@IITH.AC.IN', '9030971234', 11, '33', 'EP19BTECH11021', 'Non-Veg', 'O+', 'G SAI BHARGAVI - EP19BTECH11021@IITH.AC.IN.jpg', 'GSB', '', 'F', 0, 000, 000, 000, 0),
(322, 'PRADNYA CHAVAN ', 'CH19BTECH11020@IITH.AC.IN', '7387102799', 11, '33', 'CH19BTECH11020', 'Veg', 'B+', 'PRADNYA CHAVAN  - CH19BTECH11020@IITH.AC.IN.jpg', 'PC', '', 'F', 0, 000, 000, 000, 0),
(323, 'DHEEKSHITHA', 'CS18BTECH11006@IITH.AC.IN', '8074695656', 11, '33', 'CS18BTECH11006', 'Non-Veg', 'A+', 'DHEEKSHITHA - CS18BTECH11006@IITH.AC.IN.jpg', 'BD', '', 'F', 0, 000, 000, 000, 0),
(324, 'AISHWARYA', 'ES18BTECH11006@IITH.AC.IN', '9381101397', 11, '33', 'ES18BTECH11006', 'Veg', 'B+', 'AISHWARYA - ES18BTECH11006@IITH.AC.IN.jpg', 'AISH', '', 'F', 0, 000, 000, 000, 0),
(325, 'GANESH REDDY', 'CE16BTECH11010@IITH.AC.IN', '9398571168', 11, '34', 'CE16BTECH11010', 'Non-Veg', 'B+', 'GANESH REDDY - CE16BTECH11010@IITH.AC.IN.jpg', 'REDDY', '', 'M', 0, 000, 000, 000, 0),
(327, 'ROHITH GANTELA', 'CE17BTECH11016@IITH.AC.IN', '7901440311', 11, '3,4,9', 'CE17BTECH11016', 'Non-Veg', 'B+', 'ROHITH GANTELA - CE17BTECH11016@IITH.AC.IN.jpg', 'ROHITH', '', 'M', 0, 000, 000, 000, 0),
(328, 'LIKHITH K M', 'CE18BTECH11020@IITH.AC.IN', '7996062685', 11, '15,16,17', 'CE18BTECH11020', 'Non-Veg', 'A+', 'LIKHITH K M - CE18BTECH11020@IITH.AC.IN.jpg', 'LIKHITH', '', 'M', 0, 000, 000, 000, 0),
(329, 'CH GANESH', 'EE19RESCH11012@IITH.AC.IN', '8975667933', 11, '5,6,9,12', 'EE19RESCH11012', 'Non-Veg', 'O+', 'CH GANESH - EE19RESCH11012@IITH.AC.IN.jpg', 'GANESH', '', 'M', 0, 000, 000, 000, 0),
(330, 'LALNUNTLUANGA R', 'PH19RESCH11003@IITH.AC.IN', '9160526517', 11, '9,35', 'PH19RESCH11003', 'Non-Veg', 'B+', 'LALNUNTLUANGA R - PH19RESCH11003@IITH.AC.IN.jpg', 'RALTE', '', 'M', 0, 000, 000, 000, 0),
(331, 'AMRIT PARIMI', 'EE17BTECH11007@IITH.AC.IN', '8074673088', 11, '40', 'EE17BTECH11007', 'Veg', 'A+', 'AMRIT PARIMI - EE17BTECH11007@IITH.AC.IN.jpg', 'AMRIT', '', 'M', 0, 000, 000, 000, 0),
(332, 'KARAN BHUKAR', 'CS18BTECH11021@IITH.AC.IN', '6377766737', 11, '40', 'CS18BTECH11021', 'Non-Veg', 'AB+', 'KARAN BHUKAR - CS18BTECH11021@IITH.AC.IN.jpg', 'KARAN', '', 'M', 0, 000, 000, 000, 0),
(333, 'SHIVCHARAN SAINI', 'MA18MSCST11009@IITH.AC.IN', '9887822945', 11, '40', 'MA18MSCST11009', 'Veg', 'A+', 'SHIVCHARAN SAINI - MA18MSCST11009@IITH.AC.IN.jpg', 'SHIV', '', 'M', 0, 000, 000, 000, 0),
(334, 'RAGHU PISKA', 'RAGHUPISKA@IITH.AC.IN', '9494728796', 11, '40', 'RAGHUPISKA@IITH.AC.IN', 'Non-Veg', 'O+', 'RAGHU PISKA - RAGHUPISKA@IITH.AC.IN.jpg', 'RAGHUVEER', '', 'M', 0, 000, 000, 000, 0),
(335, 'SHRISTI GUPTA', 'AI19ACMTECH11002@IITH.AC.IN', '9996724996', 11, '41', 'AI19ACMTECH11002', 'Veg', 'AB+', 'SHRISTI GUPTA - AI19ACMTECH11002@IITH.AC.IN.jpg', 'SHRISTI', '', 'F', 0, 000, 000, 000, 0),
(336, 'MEGHA GUPTA', 'MA16M18P100001@IITH.AC.IN', '8800611968', 11, '41', 'MA16M18P100001', 'Veg', 'B+', 'MEGHA GUPTA - MA16M18P100001@IITH.AC.IN.jpg', 'MEGHA', '', 'F', 0, 000, 000, 000, 0),
(337, 'KULDEEP YADAV', 'kulydv@iitk.ac.in', '9264981962', 15, '34', '17105274', 'Non-Veg', 'O-', 'KULDEEP YADAV - kulydv@iitk.ac.in.jpg', 'kuldeep', '', 'M', 0, 000, 000, 000, 0),
(338, 'ABHISHEK ANAND', 'abhanand@iitk.ac.in', '9304028428', 15, '34', '170021', 'Non-Veg', 'O+', 'ABHISHEK ANAND - abhanand@iitk.ac.in.jpg', 'ANAND', '', 'M', 0, 000, 000, 000, 0),
(339, 'ANKUL KUMAR', 'ankulk@iitk.ac.in', '7318018831', 15, '34', '19103264', 'Non-Veg', 'O+', 'ANKUL KUMAR - ankulk@iitk.ac.in.jpg', 'ANKUL', '', 'M', 0, 000, 000, 000, 0),
(340, 'SAURABH JAYANT', 'sjayant@iitk.ac.in', '6398130810', 15, '34', '180683', 'Non-Veg', 'B+', 'SAURABH JAYANT - sjayant@iitk.ac.in.jpg', 'JAYANT', '', 'M', 0, 000, 000, 000, 0),
(341, 'ARYAN SINGH', 'arysingh@iitk.ac.in', '7318018950', 15, '34', '160157', 'Non-Veg', 'A+', 'ARYAN SINGH - arysingh@iitk.ac.in.jpg', 'ARYAN', '', 'M', 0, 000, 000, 000, 0),
(342, 'SANKET KATORE', 'skatore@iitk.ac.in', '9044028241', 15, '34', '15807324', 'Non-Veg', 'O+', 'SANKET KATORE - skatore@iitk.ac.in.jpg', 'SANKET', '', 'M', 0, 000, 000, 000, 0),
(343, 'AKSHIT SHARMA', 'ikakshit@iitk.ac.in', '7597551534', 15, '34', '170075', 'Non-Veg', 'O+', 'AKSHIT SHARMA - ikakshit@iitk.ac.in.jpg', 'AKSHIT', '', 'M', 0, 000, 000, 000, 0),
(344, 'KESHAV SONI', 'skeshav@iitk.ac.in', '7999704522', 15, '34', '170336', 'Non-Veg', 'B+', 'KESHAV SONI - skeshav@iitk.ac.in.jpg', 'SONI', '', 'M', 0, 000, 000, 000, 0),
(345, 'GULSHAN KUMAR', 'gulkk@iitk.ac.in', '8532892480', 15, '34', '18105035', 'Veg', 'B+', 'GULSHAN KUMAR - gulkk@iitk.ac.in.jpg', 'KATARIA', '', 'M', 0, 000, 000, 000, 0),
(346, 'REITHICK ANBARASU', 'reithick@iitk.ac.in', '9597221259', 15, '34', '170563', 'Non-Veg', 'O+', 'REITHICK ANBARASU - reithick@iitk.ac.in.jpg', 'REITHICK', '', 'M', 0, 000, 000, 000, 0),
(347, 'ASHISH KUMAR', 'ashiskmr@iitk.ac.in', '7380994885', 15, '34', '19109862', 'Non-Veg', 'B+', 'ASHISH KUMAR - ashiskmr@iitk.ac.in.jpg', 'AK', '', 'M', 0, 000, 000, 000, 0),
(348, 'SUYASH VERMA', 'suyashvr@iitk.ac.in', '8808908662', 15, '34', '180811', 'Non-Veg', 'B+', 'SUYASH VERMA - suyashvr@iitk.ac.in.jpg', 'SUYASH', '', 'M', 0, 000, 000, 000, 0),
(349, 'PRAVEEN', 'prave@iitk.ac.in', '7734085089', 15, '34', '180548', 'Non-Veg', 'O+', 'PRAVEEN - prave@iitk.ac.in.jpg', 'GURJAR', '', 'M', 0, 000, 000, 000, 0),
(350, 'ANUJ GAUTAM', 'anujkg@iitk.in', '9559185976', 15, '34', '180124', 'Non-Veg', 'B+', 'ANUJ GAUTAM - anujkg@iitk.in.jpg', 'GAUTAM', '', 'M', 0, 000, 000, 000, 0),
(351, 'DEEPAK KUMAR', 'krdeepak@iitk.ac.in', '9671580625', 15, '34', '17107268', 'Non-Veg', 'B+', 'DEEPAK KUMAR - krdeepak@iitk.ac.in.jpg', 'DEEPAK', '', 'M', 0, 000, 000, 000, 0),
(352, 'ATHARV MISHRA', 'atharvm@iitk.ac.in', '6387174497', 15, '34', '180158', 'Non-Veg', 'B+', 'ATHARV MISHRA - atharvm@iitk.ac.in.jpg', 'ATHARV', '', 'M', 0, 000, 000, 000, 0),
(353, 'RAJAK PRIYANSHU SUNIL', 'ME18BTECH11030@IITH.AC.IN', '9924034764', 11, '30', 'ME18BTECH11030', 'Non-Veg', 'A+', 'RAJAK PRIYANSHU SUNIL - ME18BTECH11030@IITH.AC.IN.jpg', 'PRIYANSHU', '', 'M', 0, 000, 000, 000, 0),
(354, 'MANUPATI KUNDAN', 'ME16BTECH11026@IITH.AC.IN', '7995351341', 11, '30', 'ME16BTECH11026', 'Non-Veg', 'B+', 'MANUPATI KUNDAN - ME16BTECH11026@IITH.AC.IN.jpg', 'KUNDAN', '', 'M', 0, 000, 000, 000, 0),
(355, 'RAVI VENKATA KRISHNA', 'CS17BTECH11032@IITH.AC.IN', '9963846015', 11, '30', 'CS17BTECH11032', 'Non-Veg', 'AB+', 'RAVI VENKATA KRISHNA - CS17BTECH11032@IITH.AC.IN.jpg', 'VENKAT', '', 'M', 0, 000, 000, 000, 0),
(356, 'SRINIVASA PAVAN KANCHARLA', 'ME17BTECH11025@IITH.AC.IN', '9121931867', 11, '30', 'ME17BTECH11025', 'Non-Veg', 'A+', 'SRINIVASA PAVAN KANCHARLA - ME17BTECH11025@IITH.AC.IN.jpg', 'PAVAN', '', 'M', 0, 000, 000, 000, 0),
(357, 'SAI ASHISH JANA', 'ME19BTECH11025@IITH.AC.IN', '9381599167', 11, '30', 'ME19BTECH11025', 'Non-Veg', 'B+', 'SAI ASHISH JANA - ME19BTECH11025@IITH.AC.IN.jpg', 'ASHISH', '', 'M', 0, 000, 000, 000, 0),
(358, 'TISHA RAJEEV PANTWANE', 'CH19BTECH11014@IITH.AC.IN', '8999428103', 11, '30', 'CH19BTECH11014', 'Non-Veg', 'B+', 'TISHA RAJEEV PANTWANE - CH19BTECH11014@IITH.AC.IN.jpg', 'TISHA', '', 'F', 0, 000, 000, 000, 0),
(359, 'VYSHNAVI VANGARI', 'EE19MTECH11024@IITH.AC.IN', '8330923207', 11, '31', 'EE19MTECH11024', 'Veg', 'A+', 'VYSHNAVI VANGARI - EE19MTECH11024@IITH.AC.IN.jpg', 'VYSHNAVI', '', 'F', 0, 000, 000, 000, 0),
(360, 'AVANTIKA URMALIYA', 'CE19BTECH11034@IITH.AC.IN', '6265855935', 11, '31', 'CE19BTECH11034', 'Veg', 'O+', 'AVANTIKA URMALIYA - CE19BTECH11034@IITH.AC.IN.jpg', 'AVANTIKA', '', 'F', 0, 000, 000, 000, 0),
(361, 'VISHWAJITH RATHOD', 'EE16BTECH11014@IITH.AC.IN', '8500526821', 11, '44', 'EE16BTECH11014', 'Veg', 'O+', 'VISHWAJITH RATHOD - EE16BTECH11014@IITH.AC.IN.jpg', 'VISHWA', '', 'M', 0, 000, 000, 000, 0),
(362, '	MAMIDI SURESH', 'CH14M16P000003@IITH.AC.IN', '7306222737', 11, '44', 'CH14M16P000003', 'Non-Veg', 'A+', '	MAMIDI SURESH - CH14M16P000003@IITH.AC.IN.jpg', 'MAMIDI', '', 'M', 0, 000, 000, 000, 0),
(363, 'SANTHOSH REDDY', 'CE17BTECH11035@IITH.AC.IN', '7382200558', 11, '44', 'CE17BTECH11035', 'Non-Veg', 'B+', 'SANTHOSH REDDY - CE17BTECH11035@IITH.AC.IN.jpg', 'SANTHOSH', '', 'M', 0, 000, 000, 000, 0),
(364, 'D KEERTHYKAUSHI', 'CE17BTECH11013@IITH.AC.IN', '8523026686', 11, '44', 'CE17BTECH11013', 'Non-Veg', 'A+', 'D KEERTHYKAUSHI - CE17BTECH11013@IITH.AC.IN.jpg', 'KK', '', 'M', 0, 000, 000, 000, 0),
(365, 'KRUTIK MEHTA', 'EE18BTECH11027@IITH.AC.IN', '9558056632', 11, '44', 'EE18BTECH11027', 'Veg', 'O+', 'KRUTIK MEHTA - EE18BTECH11027@IITH.AC.IN.jpg', 'KRUTIK', '', 'M', 0, 000, 000, 000, 0),
(366, 'C HEMANTH KUMAR', 'EE16RESCH01006@IITH.AC.IN', '9492690479', 11, '44', 'EE16RESCH01006', 'Non-Veg', 'O+', 'C HEMANTH KUMAR - EE16RESCH01006@IITH.AC.IN.jpg', 'HEMANTH', '', 'M', 0, 000, 000, 000, 0),
(367, 'SIDDHARTH PATIL', 'ME19BTECH11022@IITH.AC.IN', '9009930648', 11, '44', 'ME19BTECH11022', 'Veg', 'AB+', 'SIDDHARTH PATIL - ME19BTECH11022@IITH.AC.IN.jpg', 'SIDDHARTH', '', 'M', 0, 000, 000, 000, 0),
(368, 'RAKESH KUMAR YEMBADI', 'PH16RESCH01002@IITH.AC.IN', '9441854758', 11, '44', 'PH16RESCH01002', 'Veg', 'A+', 'RAKESH KUMAR YEMBADI - PH16RESCH01002@IITH.AC.IN.jpg', 'RAKESH', '', 'M', 0, 000, 000, 000, 0),
(369, 'RAJA ROHITH', 'CE19BTECH11040@IITH.AC.IN', '8688721582', 11, '44', 'CE19BTECH11040', 'Non-Veg', 'O+', 'RAJA ROHITH - CE19BTECH11040@IITH.AC.IN.jpg', 'RAJA', '', 'M', 0, 000, 000, 000, 0),
(370, 'MURALI DUDDI', 'CE18MTECH11023@IITH.AC.IN', '9010096157', 11, '44', 'CE18MTECH11023', 'Non-Veg', 'B+', 'MURALI DUDDI - CE18MTECH11023@IITH.AC.IN.jpg', 'MURALI', '', 'M', 0, 000, 000, 000, 0),
(371, 'JITENDRA TANGUTURI', 'EE18M19P100001@IITH.AC.IN', '8332937388', 11, '44', 'EE18M19P100001', 'Non-Veg', 'B+', 'JITENDRA TANGUTURI - EE18M19P100001@IITH.AC.IN.jpg', 'JITENDRA', '', 'M', 0, 000, 000, 000, 0),
(372, 'ABHISHEK SHARMA', 'CC19MTECH11002@IITH.AC.IN', '7023316267', 11, '44', 'CC19MTECH11002', 'Non-Veg', 'B+', 'ABHISHEK SHARMA - CC19MTECH11002@IITH.AC.IN.jpg', 'ABHISHEK', '', 'M', 0, 000, 000, 000, 0),
(373, 'RAJAN SINGH', 'rajans@iitk.ac.in', '7838006772', 15, '50', '170536', 'Non-Veg', 'B+', 'RAJAN SINGH - rajans@iitk.ac.in.jpg', 'RAJAN', '', 'M', 0, 000, 000, 000, 0),
(374, 'SAKSHI NAIK', 'Ch17btech11019@IITH.AC.IN', '9619268986', 11, '45', 'CH17BTECH11019', 'Non-Veg', 'A+', 'SAKSHI NAIK - Ch17btech11019@IITH.AC.IN.jpg', 'SAKSHI', '', 'F', 0, 000, 000, 000, 0),
(375, 'SHRUTI C', 'Ee18btech11006@iith.ac.in', '9912879814', 11, '45', 'EE18BTECH11006', 'Veg', 'O+', 'SHRUTI C - Ee18btech11006@iith.ac.in.jpg', 'SHRUTI', '', 'F', 0, 000, 000, 000, 0),
(376, 'SIREESHA BODDEPALLI', 'CH18BTECH11028@IITH.AC.IN', '6300602580', 11, '45', 'CH18BTECH11028', 'Non-Veg', 'O+', 'SIREESHA BODDEPALLI - CH18BTECH11028@IITH.AC.IN.jpg', 'SIRI', '', 'F', 0, 000, 000, 000, 0),
(377, 'ABHIGNYA PAMPATI', 'MA18BTECH11005@IITH.AC.IN', '9542246006', 11, '45', 'MA18BTECH11005', 'Non-Veg', 'AB+', 'ABHIGNYA PAMPATI - MA18BTECH11005@IITH.AC.IN.jpg', 'ABHI', '', 'F', 0, 000, 000, 000, 0),
(378, 'RUPA SRI METTU', 'MS18BTECH11016@IITH.AC.IN', '9381449848', 11, '45', 'MS18BTECH11016', 'Non-Veg', 'A+', 'RUPA SRI METTU - MS18BTECH11016@IITH.AC.IN.jpg', 'RUPA', '', 'F', 0, 000, 000, 000, 0),
(379, 'HAVYA KARUTURI', 'CS18BTECH11022@IITH.AC.IN', '9381571718', 11, '45', 'CS18BTECH11022', 'Non-Veg', 'AB-', 'HAVYA KARUTURI - CS18BTECH11022@IITH.AC.IN.jpg', 'HAVYA', '', 'F', 0, 000, 000, 000, 0),
(380, 'MANDIRA', 'BD19BDES11006@IITH.AC.IN', '9869203384', 11, '45', 'BD19BDES11006', 'Veg', 'A+', 'MANDIRA - BD19BDES11006@IITH.AC.IN.jpg', 'MANDIRA', '', 'F', 0, 000, 000, 000, 0),
(381, 'GOPIKA K.T', 'CE19BTECH11004@IITH.AC.IN', '9663365814', 11, '45', 'CE19BTECH11004', 'Veg', 'B+', 'GOPIKA K.T - CE19BTECH11004@IITH.AC.IN.jpg', 'K.T', '', 'F', 0, 000, 000, 000, 0),
(382, 'PRIYANKA KATHI', 'MS19BTECH11015@IITH.AC.IN', '8978369786', 11, '45', 'MS19BTECH11015', 'Non-Veg', 'O+', 'PRIYANKA KATHI - MS19BTECH11015@IITH.AC.IN.jpg', 'PRIYANKA', '', 'F', 0, 000, 000, 000, 0),
(383, 'AMIT TIWARI', 'amittr@iitk.ac.in', '9079848998', 15, '49', '170094', 'Non-Veg', 'B+', 'AMIT TIWARI - amittr@iitk.ac.in.jpg', 'AMIT', '', 'M', 0, 000, 000, 000, 0),
(384, 'SINDHUJA GRANDHI', 'CH19BTECH11013@IITH.AC.IN', '7032138897', 11, '45', 'CH19BTECH11013', 'Veg', 'O+', 'SINDHUJA GRANDHI - CH19BTECH11013@IITH.AC.IN.jpg', 'SINDHUJA', '', 'F', 0, 000, 000, 000, 0),
(385, 'KSHAMA SINGHAL', 'MA18MSCST11004@IITH.AC.IN', '9718587000', 11, '45', 'MA18MSCST11004', 'Veg', 'O+', 'KSHAMA SINGHAL - MA18MSCST11004@IITH.AC.IN.jpg', 'KSHAMA', '', 'F', 0, 000, 000, 000, 0),
(386, 'PRANJAL DESALE', 'EP19BTECH11006@IITH.AC.IN', '9307534849', 11, '45', 'EP19BTECH11006', 'Non-Veg', 'AB+', 'PRANJAL DESALE - EP19BTECH11006@IITH.AC.IN.jpg', 'PRANJAL', '', 'F', 0, 000, 000, 000, 0),
(387, ' DIGAMBER SINGH ', 'digmaber@iitk.ac.in', '8890601683', 15, '47', '180246', 'Non-Veg', 'A+', ' DIGAMBER SINGH  - digmaber@iitk.ac.in.jpg', 'DIGAMBER', '', 'M', 0, 000, 000, 000, 0),
(388, 'SOUMARUP BHATTACHARYYA ', 'soumarup@iitk.ac.in', '9005910555', 15, '48', '16101270', 'Non-Veg', 'A+', 'SOUMARUP BHATTACHARYYA  - soumarup@iitk.ac.in.jpg', 'RIKU', '', 'M', 0, 000, 000, 000, 0),
(389, 'DHARMENDRA MEENA', 'dhmeena@iitk.ac.in', '7275935066', 15, '48', '160238', 'Non-Veg', 'B+', 'DHARMENDRA MEENA - dhmeena@iitk.ac.in.jpg', 'DM', '', 'M', 0, 000, 000, 000, 0),
(390, 'GOURAV PATIR', 'gouravpatir123@gmail.com', '8812088822', 10, '35', '170104033', 'Non-Veg', 'B+', 'GOURAV PATIR - gouravpatir123@gmail.com.jpg', 'GOURAV', '', 'M', 0, 000, 000, 000, 0),
(391, 'SANDESH SANJEEV PHALKE ', 's.phalke@iitg.ac.in', '9552324069', 10, '35', '196105006', 'Non-Veg', 'O+', 'SANDESH SANJEEV PHALKE  - s.phalke@iitg.ac.in.jpg', 'Sandesh P.', '', 'M', 0, 000, 000, 000, 0),
(392, 'HEMANT SINGH ', 'hemantrj@iitk.ac.in', '9760451014', 15, '50', '170298', 'Non-Veg', 'O+', 'HEMANT SINGH  - hemantrj@iitk.ac.in.jpg', 'hemant', '', 'M', 0, 000, 000, 000, 0),
(393, 'PAWAN KALYAN', 'pawankal@iitk.ac.in', '8769913228', 15, '49', '180507', 'Non-Veg', 'B+', 'PAWAN KALYAN - pawankal@iitk.ac.in.jpg', 'pawan', '', 'M', 0, 000, 000, 000, 0),
(394, 'ADITYA SINGH ', 'adityasg@iitk.ac.in', '6388129762', 15, '51', '180041', 'Non-Veg', 'O+', 'ADITYA SINGH  - adityasg@iitk.ac.in.jpg', 'Aadi', '', 'M', 0, 000, 000, 000, 0),
(395, 'S T SHRI SATHAN ', 'sathan@iitk.ac.in', '7598816761', 15, '51', '190725', 'Non-Veg', 'B+', 'S T SHRI SATHAN  - sathan@iitk.ac.in.jpg', 'Sathan', '', 'M', 0, 000, 000, 000, 0),
(396, 'PARASPREET SINGH GILL', 'paras170104055@iitg.ac.in', '9720200015', 10, '36', '170104055', 'Non-Veg', 'O+', 'PARASPREET SINGH GILL - paras170104055@iitg.ac.in.jpg', 'Paras', '', 'M', 0, 000, 000, 000, 0),
(397, 'GAURAV KUMAR ', 'gauravank@iitk.ac.in', '9454287637', 15, '47', '14238', 'Non-Veg', 'B+', 'GAURAV KUMAR  - gauravank@iitk.ac.in.jpg', 'Gaurav', 'kindly note that this player is in para powerlifting category ( U 49 kg ) and add a category for parapowerlifting also.', 'M', 0, 000, 000, 000, 0),
(398, 'MANISH RANJAN OTTA', 'manishranjan@iitg.ac.in', '8763523023', 10, '35', '194102106', 'Non-Veg', 'B+', 'MANISH RANJAN OTTA - manishranjan@iitg.ac.in.jpg', 'Manish', '', 'M', 0, 000, 000, 000, 0),
(399, 'RATHOD SAINATH', 'sainath18@iitg.ac.in', '7288979512', 10, '35', '180101064', 'Non-Veg', 'O+', 'RATHOD SAINATH - sainath18@iitg.ac.in.jpg', 'SAINATHA', '', 'M', 0, 000, 000, 000, 0),
(400, 'NEELI AJAY CHANDRA', 'neeli@iitk.ac.in', '7318018819', 15, '2,3,8,9,10', '160438', 'Non-Veg', 'O+', 'NEELI AJAY CHANDRA - neeli@iitk.ac.in.jpg', 'AJAY', '', 'M', 0, 000, 000, 000, 0),
(401, 'MAHARI BERHE TSEGAY', 'mahari@iitg.ac.in', '7577023513', 10, '35', '156102021', 'Non-Veg', 'A+', 'MAHARI BERHE TSEGAY - mahari@iitg.ac.in.jpg', 'MahariB.', '', 'M', 0, 000, 000, 000, 0),
(403, 'BHASKAR LAMBA', 'bhaskarl@iitk.ac.in', '9306505417', 15, '1,2,3,9,10', '180193', 'Non-Veg', 'B+', 'BHASKAR LAMBA - bhaskarl@iitk.ac.in.jpg', 'BHASKAR', '', 'M', 0, 000, 000, 000, 0),
(404, 'MANDEFROT DUBALE', 'mandefro@iitg.ac.in', '7637837637', 10, '35', '186104020', 'Non-Veg', 'A+', 'MANDEFROT DUBALE - mandefro@iitg.ac.in.jpg', 'Mande', '', 'M', 0, 000, 000, 000, 0),
(405, 'SACHIN NEHRA', 'snehra@iitk.ac.in', '9306268004', 15, '7,8,9,10', '180638', 'Non-Veg', 'A-', 'SACHIN NEHRA - snehra@iitk.ac.in.jpg', 'NEHRA', '', 'M', 0, 000, 000, 000, 0),
(406, 'SACHIN THAKAN', 'thakan@iitk.ac.in', '9467020185', 15, '4,5,6,10', '180639', 'Non-Veg', 'O-', 'SACHIN THAKAN - thakan@iitk.ac.in.jpg', 'SACHIN', '', 'M', 0, 000, 000, 000, 0),
(408, 'LOKESH YADAV', 'ylokesh@iitk.ac.in', '8756760443', 15, '11,13', '15807362', 'Non-Veg', 'O+', 'LOKESH YADAV - ylokesh@iitk.ac.in.jpg', 'Lokesh', '', 'M', 0, 000, 000, 000, 0),
(409, 'SACHIN ARYA', 'sachinsa@iitk.ac.in', '7015271295', 15, '11,12,13', '170600', 'Non-Veg', 'B+', 'SACHIN ARYA - sachinsa@iitk.ac.in.jpg', 'SACHIN', '', 'M', 0, 000, 000, 000, 0),
(410, 'ABHISHEK POKHRIYA', 'abhipokh@iitk.ac.in', '7417911268', 15, '9,12', '18125002', 'Non-Veg', 'A+', 'ABHISHEK POKHRIYA - abhipokh@iitk.ac.in.jpg', 'Abhishek', '', 'M', 0, 000, 000, 000, 0),
(411, 'TAI GANGMU', '1920tg16@gmail.com', '7896659809', 10, '35', '170101069', 'Non-Veg', 'O+', 'TAI GANGMU - 1920tg16@gmail.com.jpg', 'Nagmug', '', 'M', 0, 000, 000, 000, 0),
(412, 'HITESH KUMAR', 'hiteshku@iitk.ac.in', '9079363068', 15, '14', '170305', 'Non-Veg', 'O-', 'HITESH KUMAR - hiteshku@iitk.ac.in.jpg', 'HITESH', '', 'M', 0, 000, 000, 000, 0),
(413, 'SUNJIT ABOH', 'sunjitaboh@gmail.com', '9612338623', 10, '35', '180205041', 'Non-Veg', 'B+', 'SUNJIT ABOH - sunjitaboh@gmail.com.jpg', 'aboh', '', 'M', 0, 000, 000, 000, 0),
(414, 'SHYAM SUNDHAR R', 'rsshyam@iitk.ac.in', '9444807571', 15, '18', '150709', 'Non-Veg', 'B+', 'SHYAM SUNDHAR R - rsshyam@iitk.ac.in.jpg', 'Shyam', '', 'M', 0, 000, 000, 000, 0),
(415, 'RAJ SINGH', 'rajsings@iitk.ac.in', '9112549823', 15, '15', '170535', 'Non-Veg', 'O+', 'RAJ SINGH - rajsings@iitk.ac.in.jpg', 'RAJ', '', 'M', 0, 000, 000, 000, 0),
(416, 'NARENDRA MATHURIYA', 'nrndra@iitk.ac.in', '8400198340', 15, '16', '170417', 'Non-Veg', 'O+', 'NARENDRA MATHURIYA - nrndra@iitk.ac.in.jpg', 'MATHURIYA', '', 'M', 0, 000, 000, 000, 0),
(417, 'ASHUTOSH DHARMENDRA SHARMA', 'ashudash@iitk.ac.in', '7020147078', 15, '17,18', '180154', 'Non-Veg', 'O+', 'ASHUTOSH DHARMENDRA SHARMA - ashudash@iitk.ac.in.jpg', 'ASHUTOSH', '', 'M', 0, 000, 000, 000, 0),
(418, 'ABHISHEK BHESANIA', 'abhisidd@iitk.ac.in', '8879188418', 15, '16', '15201261', 'Non-Veg', 'B+', 'ABHISHEK BHESANIA - abhisidd@iitk.ac.in.jpg', 'ABHI', '', 'M', 0, 000, 000, 000, 0),
(419, 'KAPIL DEV', 'kdev@iitk.ac.in', '9984170726', 15, '17', '19112261', 'Non-Veg', 'B+', 'KAPIL DEV - kdev@iitk.ac.in.jpg', 'Kapil Dev', '', 'M', 0, 000, 000, 000, 0),
(420, 'DHANANJOY DE', 'dhanude@iitk.ac.in', '8016966200', 15, '4,5,6', '19116261', 'Non-Veg', 'B+', 'DHANANJOY DE - dhanude@iitk.ac.in.jpg', 'DJ', '', 'M', 0, 000, 000, 000, 0),
(422, 'AASTHA RAMTEKE', 'aasthar@iitk.ac.in', '7489146248', 15, '19,20,21,28,29', '180009', 'Non-Veg', 'A+', 'AASTHA RAMTEKE - aasthar@iitk.ac.in.jpg', 'AASTHA', '', 'F', 0, 000, 000, 000, 0),
(423, 'ANSHIKA CHAUDHARY', 'canshika@iitk.ac.in', '8700552179', 15, '26,27,29', '180115', 'Non-Veg', 'O+', 'ANSHIKA CHAUDHARY - canshika@iitk.ac.in.jpg', 'ANSHIKA', '', 'F', 0, 000, 000, 000, 0),
(424, 'ASHA', 'ashab@iitk.ac.in', '7054127652', 15, '22,23,28,29', '15817144', 'Non-Veg', 'B+', 'ASHA - ashab@iitk.ac.in.jpg', 'ASHA', '', 'F', 0, 000, 000, 000, 0),
(425, 'BACHASPATIMAYUM SEVADAS SHARMA', 'sevadassharma@gmail.com', '6900400877', 10, '35', '184205008', 'Non-Veg', 'A+', 'BACHASPATIMAYUM SEVADAS SHARMA - sevadassharma@gmail.com.jpg', 'Sevadas', '', 'M', 0, 000, 000, 000, 0),
(426, 'AKANKSHA MANDOLIYA', 'akanksha@iitk.ac.in', '7398088867', 15, '25,28', '190078', 'Veg', 'A+', 'AKANKSHA MANDOLIYA - akanksha@iitk.ac.in.jpg', 'AKANKSHA', '', 'F', 0, 000, 000, 000, 0),
(427, 'MEGHNA JAKHAR', 'mjakhar@iitk.ac.in', '9468547101', 15, '21,22,23,28,29', '180417', 'Non-Veg', 'A-', 'MEGHNA JAKHAR - mjakhar@iitk.ac.in.jpg', 'MEGHNA', '', 'F', 0, 000, 000, 000, 0),
(428, 'DISHA SANJAY VIRMALWAR', 'dishavir@iitk.ac.in', '9198956899', 15, '26,27', '180250', 'Non-Veg', 'O+', 'DISHA SANJAY VIRMALWAR - dishavir@iitk.ac.in.jpg', 'DISHA', '', 'F', 0, 000, 000, 000, 0),
(429, 'RUBY MEHTA', 'rubysk@iitk.ac.in', '8429232184', 15, '24,25,28,29', '180632', 'Non-Veg', 'O+', 'RUBY MEHTA - rubysk@iitk.ac.in.jpg', 'RUBY', '', 'F', 0, 000, 000, 000, 0),
(430, 'SHREYA CHAUHAN', 'shreyac@iitk.ac.in', '8949784034', 15, '19,24,25,28,29', '180734', 'Non-Veg', 'B+', 'SHREYA CHAUHAN - shreyac@iitk.ac.in.jpg', 'SHREYA', '', 'F', 0, 000, 000, 000, 0),
(431, 'RS BANI', 'b.rs@iitg.ac.in', '6294463785', 10, '35', '194106034', 'Non-Veg', 'A+', 'RS BANI - b.rs@iitg.ac.in.jpg', 'Bani Rong', '', 'M', 0, 000, 000, 000, 0),
(432, 'DEEPSHIKHA MEENA', 'deepshik@iitk.ac.in', '9079917369', 15, '33', '170237', 'Non-Veg', 'A+', 'DEEPSHIKHA MEENA - deepshik@iitk.ac.in.jpg', 'Deepshikha', '', 'F', 0, 000, 000, 000, 0),
(433, 'NIDHI KANSAL', 'nidhik@iitk.ac.in', '9588144840', 15, '33', '190546', 'Veg', 'A+', 'NIDHI KANSAL - nidhik@iitk.ac.in.jpg', 'Nidhi', '', 'F', 0, 000, 000, 000, 0),
(434, 'CHANCHALA  NAAGAR', 'naagar@iitk.ac.in', '8218295317', 15, '33', '150200', 'Veg', 'B+', 'CHANCHALA  NAAGAR - naagar@iitk.ac.in.jpg', 'Naagar', '', 'F', 0, 000, 000, 000, 0),
(435, 'KHYATI KANAUJIYA', 'khyatik@iitk.ac.in', '9198993934', 15, '33', '180355', 'Veg', 'O+', 'KHYATI KANAUJIYA - khyatik@iitk.ac.in.jpg', 'Khyati', '', 'F', 0, 000, 000, 000, 0),
(436, 'MUFTI SUAIBA', 'suaibam@iitk.ac.in', '7006954657', 15, '33', '18103278', 'Non-Veg', 'O+', 'MUFTI SUAIBA - suaibam@iitk.ac.in.jpg', 'mufti', '', 'F', 0, 000, 000, 000, 0),
(437, 'SHREYANKA AV', 'shreyaav@iitk.ac.in', '8897432149', 15, '33', '180059', 'Veg', 'O+', 'SHREYANKA AV - shreyaav@iitk.ac.in.jpg', 'Shreyanka', '', 'F', 0, 000, 000, 000, 0),
(438, 'HINISHA BANSAL', 'hinisha@iitk.ac.in', '9460449843', 15, '33', '180297', 'Veg', 'B+', 'HINISHA BANSAL - hinisha@iitk.ac.in.jpg', 'Hina', '', 'F', 0, 000, 000, 000, 0),
(439, 'POOJA YADAV', 'poojaya@iitk.ac.in', '7340189404', 15, '33', '170473', 'Veg', 'O+', 'POOJA YADAV - poojaya@iitk.ac.in.jpg', 'pooja', '', 'F', 0, 000, 000, 000, 0),
(440, 'KASTURI GANGULY', 'kasturig@iitk.ac.in', '8721846590', 15, '33', '16107268', 'Non-Veg', 'AB+', 'KASTURI GANGULY - kasturig@iitk.ac.in.jpg', 'Kasturi', '', 'F', 0, 000, 000, 000, 0),
(441, 'DIKSHA KUMARI', 'dikshak@iitk.ac.in', '7205283487', 15, '33', '18112003', 'Veg', 'O+', 'DIKSHA KUMARI - dikshak@iitk.ac.in.jpg', 'Diksha', '', 'F', 0, 000, 000, 000, 0),
(442, 'MANISHA SHARMA', 'manishas@iitk.ac.in', '8264300685', 15, '33', '180408', 'Non-Veg', 'B+', 'MANISHA SHARMA - manishas@iitk.ac.in.jpg', 'Manisha', '', 'F', 0, 000, 000, 000, 0),
(443, 'SUPRIYA SHEKHAR', 'supriyas@iitk.ac.in', '9664378526', 15, '33', '190880', 'Non-Veg', 'O+', 'SUPRIYA SHEKHAR - supriyas@iitk.ac.in.jpg', 'Supriya', '', 'F', 0, 000, 000, 000, 0),
(444, 'PARAMESWAR PAL', 'parampal@iitk.ac.in', '9956234944', 15, '42', '15817477', 'Non-Veg', 'B+', 'PARAMESWAR PAL - parampal@iitk.ac.in.jpg', 'Parameswar', '', 'M', 0, 000, 000, 000, 0),
(445, 'AKSHAT AGRAWAL', 'akshatag@iitk.ac.in', '7007130362', 15, '42', '170071', 'Veg', 'B+', 'AKSHAT AGRAWAL - akshatag@iitk.ac.in.jpg', 'Akshat', '', 'M', 0, 000, 000, 000, 0),
(446, 'MANAS AGARWAL', 'manasag@iitk.ac.in', '9680588821', 15, '42', '180401', 'Veg', 'B+', 'MANAS AGARWAL - manasag@iitk.ac.in.jpg', 'Manas', '', 'M', 0, 000, 000, 000, 0),
(447, 'PRATEESH AWASTHI', 'prateesh@iitk.ac.in', '6398344496', 15, '42', '190636', 'Veg', 'A+', 'PRATEESH AWASTHI - prateesh@iitk.ac.in.jpg', 'Prateesh', '', 'M', 0, 000, 000, 000, 0),
(448, 'YASH SHARMA', 'yash_1901me71@iitp.ac.in', '8077545728', 20, '34', '1901ME71', 'Veg', 'A+', 'YASH SHARMA - yash_1901me71@iitp.ac.in.jpg', 'YASH', 'no', 'M', 0, 000, 000, 000, 0),
(449, 'MONAL GOEL', 'monal@iitk.ac.in', '7318020342', 15, '43', '160415', 'Non-Veg', 'B+', 'MONAL GOEL - monal@iitk.ac.in.jpg', 'Monal', '', 'F', 0, 000, 000, 000, 0),
(450, 'ANANYA', 'ananyars@iitk.ac.in', '9079274180', 15, '43', '190126', 'Veg', 'O+', 'ANANYA - ananyars@iitk.ac.in.jpg', 'Ananya', '', 'F', 0, 000, 000, 000, 0),
(451, 'THANYA B', 'thanya@iitk.ac.in', '7317744376', 15, '43', '170755', 'Non-Veg', 'B+', 'THANYA B - thanya@iitk.ac.in.jpg', 'Thanya', '', 'F', 0, 000, 000, 000, 0),
(452, 'NIKHIL SHARMA', 'nikhils@iitk.ac.in', '7014559023', 15, '40', '170433', 'Non-Veg', 'B+', 'NIKHIL SHARMA - nikhils@iitk.ac.in.jpg', 'Nikhil', '', 'M', 0, 000, 000, 000, 0),
(453, 'BAPAN SAHA', 'bapans@iitk.ac.in', '7839984186', 15, '40', '14107268', 'Non-Veg', 'B+', 'BAPAN SAHA - bapans@iitk.ac.in.jpg', 'Bapan', '', 'M', 0, 000, 000, 000, 0),
(454, 'PARTH PANDEY', 'pparth@iitk.ac.in', '7014299062', 15, '40', '170462', 'Veg', 'O+', 'PARTH PANDEY - pparth@iitk.ac.in.jpg', 'Pandey', '', 'M', 0, 000, 000, 000, 0),
(455, 'ASHWIN BHIDE', 'ashwinb@iitk.ac.in', '8149761825', 15, '40', '19125015', 'Non-Veg', 'O+', 'ASHWIN BHIDE - ashwinb@iitk.ac.in.jpg', 'Ashwin', '', 'M', 0, 000, 000, 000, 0),
(456, 'RADHIKA PRASAD', 'radhikap@iitk.ac.in', '9149160952', 15, '41', '181109', 'Veg', 'B+', 'RADHIKA PRASAD - radhikap@iitk.ac.in.jpg', 'Radhika', '', 'F', 0, 000, 000, 000, 0),
(457, 'KAVYA AGARWAL', 'kavya@iitk.ac.in', '9306034399', 15, '41', '190425', 'Veg', 'B+', 'KAVYA AGARWAL - kavya@iitk.ac.in.jpg', 'Kavya', '', 'F', 0, 000, 000, 000, 0),
(458, 'CHITRANSHI SINGH', 'chitra@iitk.ac.in', '8429171502', 15, '41', '170227', 'Non-Veg', 'B+', 'CHITRANSHI SINGH - chitra@iitk.ac.in.jpg', 'Chitranshi', '', 'F', 0, 000, 000, 000, 0),
(459, 'RAHUL CHOUDHARY', 'rahulrc@iitk.ac.in', '9664272426', 15, '44', '180577', 'Non-Veg', 'O+', 'RAHUL CHOUDHARY - rahulrc@iitk.ac.in.jpg', 'Rahul', '', 'M', 0, 000, 000, 000, 0),
(460, 'USHAM RANJANA DEVI', 'ushamranjana2016@gmail.com', '7005891708', 10, 'staff', 'NA', 'Non-Veg', 'O+', 'USHAM RANJANA DEVI - ushamranjana2016@gmail.com.jpg', 'Ranjana', '', 'F', 0, 000, 000, 000, 0),
(461, 'NEELESH KUMAR', 'neelk@iitk.ac.in', '9628059102', 15, '44', '160437', 'Non-Veg', 'B+', 'NEELESH KUMAR - neelk@iitk.ac.in.jpg', 'Neelesh', '', 'M', 0, 000, 000, 000, 0),
(462, 'JATIN RATHAUR', 'rjatin@iitk.ac.in', '9587115357', 15, '44', '170316', 'Non-Veg', 'AB+', 'JATIN RATHAUR - rjatin@iitk.ac.in.jpg', 'Jatin', '', 'M', 0, 000, 000, 000, 0),
(463, 'PANKAJ KUMAR', 'pankumar@iitk.ac.in', '7388771714', 15, '44', '15807476', 'Non-Veg', 'B+', 'PANKAJ KUMAR - pankumar@iitk.ac.in.jpg', 'Pankaj', '', 'M', 0, 000, 000, 000, 0),
(464, 'DARSHIT TALAVIA', 'darshitt@iitk.ac.in', '8005470725', 15, '44', '15907211', 'Non-Veg', 'B+', 'DARSHIT TALAVIA - darshitt@iitk.ac.in.jpg', 'Darshit', '', 'M', 0, 000, 000, 000, 0),
(465, 'RAMAN LAMBA', 'rraman@iitk.ac.in', '9680536342', 15, '44', '170550', 'Veg', 'A-', 'RAMAN LAMBA - rraman@iitk.ac.in.jpg', 'Lamba', '', 'M', 0, 000, 000, 000, 0),
(466, 'AKSHAY KUMAR ARYA', 'akshayka@iitk.ac.in', '7610835033', 15, '44', '170074', 'Non-Veg', 'A+', 'AKSHAY KUMAR ARYA - akshayka@iitk.ac.in.jpg', 'Arya', '', 'M', 0, 000, 000, 000, 0),
(467, 'AMRITANSHU MANU', 'manusmhs@iitk.ac.in', '9472257364', 15, '44', '160101', 'Non-Veg', 'B+', 'AMRITANSHU MANU - manusmhs@iitk.ac.in.jpg', 'Manu', '', 'M', 0, 000, 000, 000, 0),
(468, 'UMESH PATIDAR', 'patidaru@iitk.ac.in', '7318019063', 15, '44', '160756', 'Non-Veg', 'B+', 'UMESH PATIDAR - patidaru@iitk.ac.in.jpg', 'Umesh', '', 'M', 0, 000, 000, 000, 0),
(469, 'KULDEEP KUSHWAHA', 'kuldip@iitk.ac.in', '8528069059', 15, '44', '160349', 'Non-Veg', 'B+', 'KULDEEP KUSHWAHA - kuldip@iitk.ac.in.jpg', 'Kuldeep', '', 'M', 0, 000, 000, 000, 0),
(470, 'IRFAN AHMAD GANIE', 'iganie@iitk.ac.in', '7006376482', 15, '44', '19102009', 'Non-Veg', 'O+', 'IRFAN AHMAD GANIE - iganie@iitk.ac.in.jpg', 'Irfan', '', 'M', 0, 000, 000, 000, 0),
(471, 'SRINIVASU S', 'ssrinu@iitk.ac.in', '9573708086', 15, '44', '17116262', 'Non-Veg', 'B+', 'SRINIVASU S - ssrinu@iitk.ac.in.jpg', 'Srini', '', 'M', 0, 000, 000, 000, 0),
(472, 'SAHIL GAUTAM', 'sahil18@iitg.ac.in', '8848426162', 10, '35', '180107050', 'Non-Veg', 'O+', 'SAHIL GAUTAM - sahil18@iitg.ac.in.jpg', 'Sahil', '', 'M', 0, 000, 000, 000, 0),
(473, 'ABHISHEK KUMAR PANDEY', 'iaf.avishekmini@gmail.com', '9334095271', 6, 'staff', '106', 'Non-Veg', 'B+', 'ABHISHEK KUMAR PANDEY - iaf.avishekmini@gmail.com.jpg', 'COACH', '', 'M', 0, 000, 000, 000, 0),
(474, 'CHOUDHARY RAJESH SINGH', 'rajeshchaudharyhockey@gmail.com', '7002189831', 6, 'staff', '246', 'Non-Veg', 'O+', 'CHOUDHARY RAJESH SINGH - rajeshchaudharyhockey@gmail.com.jpg', 'COACH', '', 'M', 0, 000, 000, 000, 0),
(475, 'DIVYANSHU AGRAWAL', 'divyanshua@iitbhilai.ac.in', '9399942778', 2, '30', '11840450', 'Veg', 'B+', 'DIVYANSHU AGRAWAL - divyanshua@iitbhilai.ac.in.jpg', 'Divyanshu ', '', 'M', 0, 000, 000, 000, 0),
(476, ' PORASH CHAUHAN', 'Porashc@iitbhilai.ac.in', '9464335503', 2, '30', '11940840', 'Non-Veg', 'O+', ' PORASH CHAUHAN - Porashc@iitbhilai.ac.in.jpg', 'Porash', '', 'M', 0, 000, 000, 000, 0),
(477, 'POTHUKUCHI SIDDHARTHA', 'pothukuchis@iitbhilai.ac.in', '9550964805', 2, '30', ' 11840800', 'Non-Veg', 'O+', 'POTHUKUCHI SIDDHARTHA - pothukuchis@iitbhilai.ac.in.jpg', 'Siddhartha', '', 'M', 0, 000, 000, 000, 0),
(478, ' DEVARSH RANDERIA', 'devarshr@iitbhilai.ac.in', '9537321207', 2, '30', '11840420', 'Veg', 'A+', ' DEVARSH RANDERIA - devarshr@iitbhilai.ac.in.jpg', 'Devarsh', '', 'M', 0, 000, 000, 000, 0),
(479, ' AJITH VIGNESH  R V S', 'ajithv@iitbhilai.ac.in', '9344460181', 2, '30', '11840100', 'Non-Veg', 'A+', ' AJITH VIGNESH  R V S - ajithv@iitbhilai.ac.in.jpg', 'Ajith', 'blood group is A2+', 'M', 0, 000, 000, 000, 0),
(480, 'RUCHI KUSHWAHA', 'ruchik@iitbhilai.ac.in', '7869293651', 2, '31', '11910250', 'Veg', 'B+', 'RUCHI KUSHWAHA - ruchik@iitbhilai.ac.in.jpg', 'Ruchi', '', 'F', 0, 000, 000, 000, 0),
(481, 'MANSI MITTAL', 'mansim@iitbhilai.ac.in', '7470730066', 2, '31', '11740530', 'Veg', 'O+', 'MANSI MITTAL - mansim@iitbhilai.ac.in.jpg', 'Mansi', '', 'F', 0, 000, 000, 000, 0),
(482, 'SHIVANI TRIPATHI', 'shivanit@iitbhilai.ac.in', '8949667919', 2, '31', '11740970', 'Veg', 'O+', 'SHIVANI TRIPATHI - shivanit@iitbhilai.ac.in.jpg', 'Shivani', '', 'F', 0, 000, 000, 000, 0),
(483, 'SAKSHAM MAHAJAN', 'sakshamm@iitbhilai.ac.in', '9882730441', 2, '52', '11941050', 'Veg', 'B+', 'SAKSHAM MAHAJAN - sakshamm@iitbhilai.ac.in.jpg', 'Saksham', '', 'M', 0, 000, 000, 000, 0),
(484, ' SWANINDA GHOSH', 'swanindag@iitbhilai.ac.in', '8927217220', 2, '52', ' 11941210', 'Non-Veg', 'O+', ' SWANINDA GHOSH - swanindag@iitbhilai.ac.in.jpg', 'Swaninda', '', 'M', 0, 000, 000, 000, 0),
(485, 'PRASHANT KUMAR GAUTAM', 'prashantg@iitbhilai.ac.in', '8802586746', 2, '52', '11820140', 'Non-Veg', 'A+', 'PRASHANT KUMAR GAUTAM - prashantg@iitbhilai.ac.in.jpg', 'Prashant', '', 'M', 0, 000, 000, 000, 0),
(486, 'GAGANDEEP SINGH', 'gagans@iitbhilai.ac.in', '7535993702', 2, '52', '1184048', 'Veg', 'O+', 'GAGANDEEP SINGH - gagans@iitbhilai.ac.in.jpg', 'Gagan', '', 'M', 0, 000, 000, 000, 0),
(487, ' ADITYA KANDYA', 'adityak@iitbhilai.ac.in', '7389584007', 2, '52', '11740050', 'Veg', 'A+', ' ADITYA KANDYA - adityak@iitbhilai.ac.in.jpg', 'Aditya', '', 'M', 0, 000, 000, 000, 0),
(488, 'SARANJIT SARKAR', 'saranjits@iitbhilai.ac.in', '6264968707', 2, '35,52', '11740870', 'Non-Veg', 'A+', 'SARANJIT SARKAR - saranjits@iitbhilai.ac.in.jpg', 'Saranjit', 'Plays 2 games( chess and football)', 'M', 0, 000, 000, 000, 0),
(489, ' G. HEMANTHU SAI KIRAN', 'gantak@iitbhilai.ac.in', '7036077596', 2, '1,2,3', '11840500', 'Non-Veg', 'O+', ' G. HEMANTHU SAI KIRAN - gantak@iitbhilai.ac.in.jpg', 'Hemanth', '', 'M', 0, 000, 000, 000, 0),
(490, 'HARSHIL SINGHAL', 'harshils@iitbhilai.ac.in', '9413886465', 2, '4,5', '11940470', 'Veg', 'AB+', 'HARSHIL SINGHAL - harshils@iitbhilai.ac.in.jpg', 'Harshil', '', 'M', 0, 000, 000, 000, 0),
(492, 'DEVENDER RATHOD', 'MS16BTECH11003@IITH.AC.IN', '8897353503', 11, '36', 'MS16BTECH11003', 'Non-Veg', 'AB+', 'DEVENDER RATHOD - MS16BTECH11003@IITH.AC.IN.jpg', 'SINGH', '', 'M', 0, 000, 000, 000, 0),
(493, 'AJAY MEENA', 'CE17BTECH11002@IITH.AC.IN', '9057228154', 11, '36', 'CE17BTECH11002', 'Veg', 'B+', 'AJAY MEENA - CE17BTECH11002@IITH.AC.IN.jpg', 'AJAY', '', 'M', 0, 000, 000, 000, 0),
(494, 'RAJ KUMAR CHAVAN ', 'CS17BTECH11030@IITH.AC.IN', '9505832021', 11, '36', 'CS17BTECH11030', 'Non-Veg', 'O+', 'RAJ KUMAR CHAVAN  - CS17BTECH11030@IITH.AC.IN.jpg', 'RAJ', '', 'M', 0, 000, 000, 000, 0),
(495, 'AMAR MANDAL', 'CE17BTECH11005@IITH.AC.IN', '9660748347', 11, '36', 'CE17BTECH11005', 'Non-Veg', 'O+', 'AMAR MANDAL - CE17BTECH11005@IITH.AC.IN.jpg', 'AMAR', '', 'M', 0, 000, 000, 000, 0),
(496, 'RAVI LAL MARKAM ', 'MA17BTECH11008@IITH.AC.IN', '8839897176', 11, '36', 'MA17BTECH11008', 'Non-Veg', 'A+', 'RAVI LAL MARKAM  - MA17BTECH11008@IITH.AC.IN.jpg', 'RAVI', '', 'M', 0, 000, 000, 000, 0),
(497, 'SUNIL VARMA', 'EE17BTECH11026@IITH.AC.IN', '8317682299', 11, '36', 'EE17BTECH11026', 'Non-Veg', 'B+', 'SUNIL VARMA - EE17BTECH11026@IITH.AC.IN.jpg', 'PANDUU', '', 'M', 0, 000, 000, 000, 0),
(498, 'R SAI DINESH', 'MA18BTECH11008@IITH.AC.IN', '6303513845', 11, '36', 'MA18BTECH11008', 'Non-Veg', 'O+', 'R SAI DINESH - MA18BTECH11008@IITH.AC.IN.jpg', 'DINESH', '', 'M', 0, 000, 000, 000, 0),
(499, 'N DIWAKAR', 'ES18BTECH11004@IITH.AC.IN', '9100164114', 11, '36', 'ES18BTECH11004', 'Non-Veg', 'O+', 'N DIWAKAR - ES18BTECH11004@IITH.AC.IN.jpg', 'NAMBI', '', 'M', 0, 000, 000, 000, 0),
(500, 'ADITHYA VARDHAN', 'EE18BTECH11008@IITH.AC.IN', '9573166062', 11, '36', 'EE18BTECH11008', 'Veg', 'O+', 'ADITHYA VARDHAN - EE18BTECH11008@IITH.AC.IN.jpg', 'CHINTA', '', 'M', 0, 000, 000, 000, 0),
(501, 'VENU REVANTH ', 'CH19RESCH11004@IITH.AC.IN', '9866963881', 11, '36', 'CH19RESCH11004', 'Non-Veg', 'B+', 'VENU REVANTH  - CH19RESCH11004@IITH.AC.IN.jpg', 'REVS', '', 'M', 0, 000, 000, 000, 0),
(502, 'CHANDER SHEKAR', 'CE19RESCH11007@IITH.AC.IN', '9491870321', 11, '36', 'CE19RESCH11007', 'Non-Veg', 'O+', 'CHANDER SHEKAR - CE19RESCH11007@IITH.AC.IN.jpg', 'CHANDU', '', 'M', 0, 000, 000, 000, 0),
(503, 'AVSP NAIDU', 'ES19BTECH11019@IITH.AC.IN', '9848438242', 11, '36', 'ES19BTECH11019', 'Non-Veg', 'AB+', 'AVSP NAIDU - ES19BTECH11019@IITH.AC.IN.jpg', 'PHANI', '', 'M', 0, 000, 000, 000, 0),
(504, 'ARUN SHAKTI ANAND', 'EE19BTECH11009@IITH.AC.IN', '9843965600', 11, '36', 'EE19BTECH11009', 'Non-Veg', 'O+', 'ARUN SHAKTI ANAND - EE19BTECH11009@IITH.AC.IN.jpg', 'ARUN', '', 'M', 0, 000, 000, 000, 0),
(505, 'N SAI KRISHI ', 'CE19BTECH11031@IITH.AC.IN', '8790340249', 11, '36', 'CE19BTECH11031', 'Non-Veg', 'O+', 'N SAI KRISHI  - CE19BTECH11031@IITH.AC.IN.jpg', 'KRISHI', '', 'M', 0, 000, 000, 000, 0),
(506, 'YASHWANT GUGULOTH', 'EE18BTECH11017@IITH.AC.IN', '9381443259', 11, '36', 'EE18BTECH11017', 'Non-Veg', 'A+', 'YASHWANT GUGULOTH - EE18BTECH11017@IITH.AC.IN.jpg', 'YAHSWANT', '', 'M', 0, 000, 000, 000, 0),
(507, 'RICKY ROMIN', 'rickyrominrkm@gmail.com', '7085398713', 10, '35', '160104062', 'Non-Veg', 'O+', 'RICKY ROMIN - rickyrominrkm@gmail.com.jpg', 'RICKY', 'Single room if possible', 'M', 0, 000, 000, 000, 0),
(508, 'PRAGYANSHU KHARE', 'pragyanshuk@iitbhilai.ac.in', '6264644865', 2, '40', ' 11840810', 'Non-Veg', 'AB+', 'PRAGYANSHU KHARE - pragyanshuk@iitbhilai.ac.in.jpg', 'Pragyanshu', '', 'M', 0, 000, 000, 000, 0),
(509, 'AYUSH GUPTA', 'ayushg@iitbhilai.ac.in', '6265574485', 2, '40', ' 11840290', 'Veg', 'A+', 'AYUSH GUPTA - ayushg@iitbhilai.ac.in.jpg', 'Ayush', '', 'M', 0, 000, 000, 000, 0),
(510, 'RISHABH KUMAR', 'Rishabhku@iitbhilai.ac.in', '9205268799', 2, '40', ' 11941010', 'Non-Veg', 'B+', 'RISHABH KUMAR - Rishabhku@iitbhilai.ac.in.jpg', 'Rishabh', '', 'M', 0, 000, 000, 000, 0),
(511, 'GAURAV VERMA', 'gauravv@iitbhilai.ac.in', '7976521104', 2, '40', ' 11740350', 'Non-Veg', 'B+', 'GAURAV VERMA - gauravv@iitbhilai.ac.in.jpg', 'Gaurav', '', 'M', 0, 000, 000, 000, 0),
(512, 'PREETI MEENA', 'preetim@iitbhilai.ac.in', '9929629697', 2, '41', ' 11740690', 'Veg', 'B+', 'PREETI MEENA - preetim@iitbhilai.ac.in.jpg', 'Preeti', '', 'F', 0, 000, 000, 000, 0),
(513, 'ARYASOMAYAJULA SRI KOUMUDI', 'aryasomayajulas@iitbhilai.ac.in', '8919559221', 2, '41', ' 11940180', 'Veg', 'AB+', 'ARYASOMAYAJULA SRI KOUMUDI - aryasomayajulas@iitbhilai.ac.in.jpg', 'Aryasomayajula', '', 'F', 0, 000, 000, 000, 0),
(514, ' AREPALLY NAGESHWAR', 'arepallyn@iitbhilai.ac.in', '7893302234', 2, '44', '11740180', 'Non-Veg', 'A+', ' AREPALLY NAGESHWAR - arepallyn@iitbhilai.ac.in.jpg', 'Nageshwar', '', 'M', 0, 000, 000, 000, 0),
(515, 'SUMIT SHEORAN', 'sumits@iitbhilai.ac.in', '9080652631', 2, '44', '11741040', 'Non-Veg', 'B+', 'SUMIT SHEORAN - sumits@iitbhilai.ac.in.jpg', 'Sumit', '', 'M', 0, 000, 000, 000, 0),
(516, 'PRATIK SANJAY PATIL', 'pratikp@iitbhilai.ac.in', '9672773769', 2, '44', ' 11840850', 'Veg', 'O+', 'PRATIK SANJAY PATIL - pratikp@iitbhilai.ac.in.jpg', 'Pratik', '', 'M', 0, 000, 000, 000, 0),
(517, ' AMBATIPUDI ABHIRAM', 'ambatipudia@iitbhilai.ac.in', '6265685239', 2, '44', ' 11840170', 'Veg', 'O+', ' AMBATIPUDI ABHIRAM - ambatipudia@iitbhilai.ac.in.jpg', 'Abhiram', '', 'M', 0, 000, 000, 000, 0),
(518, 'GOOLLA ABHIJITH', 'goollaa@iitbhilai.ac.in', '8555922879', 2, '44', ' 11840510', 'Non-Veg', 'A+', 'GOOLLA ABHIJITH - goollaa@iitbhilai.ac.in.jpg', 'Abhijith', '', 'M', 0, 000, 000, 000, 0),
(519, 'SARANSH PUSHKAR', 'saranshp@iitbhilai.ac.in', '9304580656', 2, '44', ' 11841000', 'Veg', 'O+', 'SARANSH PUSHKAR - saranshp@iitbhilai.ac.in.jpg', 'Saransh', '', 'M', 0, 000, 000, 000, 0),
(520, ' AKHILESH KUMAR VERMA', 'akhileshv@iitbhilai.ac.in', '8285492609', 2, '44', ' 11840130', 'Non-Veg', 'B+', ' AKHILESH KUMAR VERMA - akhileshv@iitbhilai.ac.in.jpg', 'Akhilesh', '', 'M', 0, 000, 000, 000, 0),
(521, ' ROHIT JAIN', 'rohitj@iitbhilai.ac.in', '6265473825', 2, '44', ' 11840940', 'Veg', 'O+', ' ROHIT JAIN - rohitj@iitbhilai.ac.in.jpg', 'Rohit', '', 'M', 0, 000, 000, 000, 0),
(522, 'AWANISH KUMAR', 'awanishk@iitbhilai.ac.in', '7081625161', 2, '44', ' 11840280', 'Non-Veg', 'B+', 'AWANISH KUMAR - awanishk@iitbhilai.ac.in.jpg', 'Awanish', '', 'M', 0, 000, 000, 000, 0),
(523, 'CHITTALURI GOPI', 'chittalurig@iitbhilai.ac.in', '9381581494', 2, '44', ' 11840360', 'Non-Veg', 'O+', 'CHITTALURI GOPI - chittalurig@iitbhilai.ac.in.jpg', 'Gopi', '', 'M', 0, 000, 000, 000, 0),
(524, ' KONATHAM YASWANTHKUMAR', 'Konathamy@iitbhilai.acin', '9515447963', 2, '44', '11940580', 'Non-Veg', 'B+', ' KONATHAM YASWANTHKUMAR - Konathamy@iitbhilai.acin.jpg', 'Yaswanth', '', 'M', 0, 000, 000, 000, 0),
(526, 'SUDARSHAN BIRLA', 'sbirla@iitg.ac.in', '7840916398', 10, '34', '190104085', 'Non-Veg', 'O+', 'SUDARSHAN BIRLA - sbirla@iitg.ac.in.jpg', 'BIRLA', '', 'M', 0, 000, 000, 000, 0),
(527, 'RANGESH P', 'ES16BTECH11017@IITH.AC.IN', '7845913259', 11, '52', 'ES16BTECH11017', 'Non-Veg', 'A+', 'RANGESH P - ES16BTECH11017@IITH.AC.IN.jpg', 'RANGESH', '', 'M', 0, 000, 000, 000, 0),
(528, 'M JABEZ AGAPE', 'CE18BTECH11023@IITH.AC.IN', '8096765306', 11, '52', 'CE18BTECH11023', 'Non-Veg', 'B+', 'M JABEZ AGAPE - CE18BTECH11023@IITH.AC.IN.jpg', 'Jabez', '', 'M', 0, 000, 000, 000, 0),
(529, 'J PRABHAT LAKSHMINARAYANA', 'EE18BTECH11013@IITH.AC.IN', '8008513171', 11, '52', 'EE18BTECH11013', 'Veg', 'O+', 'J PRABHAT LAKSHMINARAYANA - EE18BTECH11013@IITH.AC.IN.jpg', 'Prabhat', '', 'M', 0, 000, 000, 000, 0),
(530, 'RONAK ARORA', 'ME17BTECH11041@IITH.AC.IN', '9521208984', 11, '52', 'ME17BTECH11041', 'Non-Veg', 'B+', 'RONAK ARORA - ME17BTECH11041@IITH.AC.IN.jpg', 'Ronak', '', 'M', 0, 000, 000, 000, 0),
(531, 'DEEPTESH DEEPAK KARMALKAR', 'ES16BTECH11013@IITH.AC.IN', '8407989480', 11, '36,52', 'ES16BTECH11013', 'Non-Veg', 'A+', 'DEEPTESH DEEPAK KARMALKAR - ES16BTECH11013@IITH.AC.IN.jpg', 'DEEPTESH', '', 'M', 0, 000, 000, 000, 0),
(532, 'DEEPAK KUMAR SHARMA', 'd.sharma271295@gmail.com', '7007983780', 6, 'staff', '300', 'Veg', 'B+', 'DEEPAK KUMAR SHARMA - d.sharma271295@gmail.com.jpg', 'COACH', '', 'M', 0, 000, 000, 000, 0),
(533, 'ANKITA JAISWAL', 'ankitajaiswal334455@gmail.com', '9424559356', 6, '33', '18JE0135', 'Non-Veg', 'O+', 'ANKITA JAISWAL - ankitajaiswal334455@gmail.com.jpg', 'JAISWAL', '', 'F', 0, 000, 000, 000, 0),
(534, 'NIMMAGADDA SRAVANI ', 'sravani.18je0547@me.iitism.ac.in', '6303938716', 6, '33', '18JE0547', 'Non-Veg', 'B+', 'NIMMAGADDA SRAVANI  - sravani.18je0547@me.iitism.ac.in.jpg', 'SRAVANI', '', 'F', 0, 000, 000, 000, 0),
(535, 'SNEHAL VED', 'snehal04.ved@gmail.com', '6264393628', 6, '33', '19JE0808', 'Veg', 'O+', 'SNEHAL VED - snehal04.ved@gmail.com.jpg', 'V.Snehal', '', 'F', 0, 000, 000, 000, 0),
(536, 'SHIVANGI PATEL', 'sonuasha8878@gmail.com', '7627073913', 6, '33', '19JE0779', 'Veg', 'A+', 'SHIVANGI PATEL - sonuasha8878@gmail.com.jpg', 'P@tel', '', 'F', 0, 000, 000, 000, 0),
(537, 'SUDHA REDDY TOODI', 'sudha.reddy594@gmailcom', '9281052205', 6, '33', '18JE0882', 'Non-Veg', 'O+', 'SUDHA REDDY TOODI - sudha.reddy594@gmailcom.jpg', 'SUDHA REDDY ', '', 'F', 0, 000, 000, 000, 0),
(539, 'KEDASU BALA TEJASWI', 'balatejaswi2001@gmail.com', '9381092748', 6, '33', '18JE0409', 'Non-Veg', 'O+', 'KEDASU BALA TEJASWI - balatejaswi2001@gmail.com.jpg', 'Bala', '', 'F', 0, 000, 000, 000, 0),
(541, 'SHRAMANA BATABYAL', 'shramanabatabyal@gmail.com', '6297013020', 6, '33', '19JE0787', 'Non-Veg', 'O+', 'SHRAMANA BATABYAL - shramanabatabyal@gmail.com.jpg', 'SHRAMANA', '', 'F', 0, 000, 000, 000, 0),
(542, 'KALIKIRI NAVYA ', 'navyakalikiri2000@gmail.com', '6303619893', 6, '33', '18JE0386', 'Non-Veg', 'O+', 'KALIKIRI NAVYA  - navyakalikiri2000@gmail.com.jpg', 'NAVYA KALIKIRI', '', 'F', 0, 000, 000, 000, 0),
(543, 'SRIDHAR PRANITHA', 'pranithas2001@gmail.com', '9600021114', 6, '33', '19JE0725', 'Veg', 'B+', 'SRIDHAR PRANITHA - pranithas2001@gmail.com.jpg', 'Pranitha', '', 'F', 0, 000, 000, 000, 0),
(544, 'AVINASH GAUTAM', 'avinashsharmaguru901@gmail.com', '7255933717', 6, '32', '17JE003015', 'Veg', 'A-', 'AVINASH GAUTAM - avinashsharmaguru901@gmail.com.jpg', 'Avinash', '', 'M', 0, 000, 000, 000, 0),
(546, 'VIPIN SONI', 'vipinsoni38@gmail.com', '9602497536', 6, '32', '17JE003204', 'Veg', 'B+', 'VIPIN SONI - vipinsoni38@gmail.com.jpg', 'Vipin', '', 'M', 0, 000, 000, 000, 0),
(547, 'RISHABH SABLE', 'rishabh9039741355@gmail.com', '9039741355', 6, '32', '18JE0677', 'Non-Veg', 'AB+', 'RISHABH SABLE - rishabh9039741355@gmail.com.jpg', 'RISHABH', '', 'M', 0, 000, 000, 000, 0),
(548, 'VINAYAK ACHARJEE', 'vinayakacharjee@gmail.com', '9977959727', 6, '32', '18JE0929', 'Non-Veg', 'B+', 'VINAYAK ACHARJEE - vinayakacharjee@gmail.com.jpg', 'ACHARJEE', '', 'M', 0, 000, 000, 000, 0),
(549, 'DANIEL SIMON CHOL', 'aguekchol@gmail.com', '7360842533', 6, '32', '16IB000057', 'Non-Veg', 'AB+', 'DANIEL SIMON CHOL - aguekchol@gmail.com.jpg', 'DANIEL', '', 'M', 0, 000, 000, 000, 0),
(550, 'MAYANK SHEKHAR', 'mayankshekhar951@gmail.com', '7766881132', 6, '32', '18JE0483', 'Veg', 'B+', 'MAYANK SHEKHAR - mayankshekhar951@gmail.com.jpg', 'MAVERICK', '', 'M', 0, 000, 000, 000, 0),
(552, 'DEV ARYAN RAWAT', 'devaryanrawat29@gmail.com', '9370020318', 6, '32', '19JE0283', 'Veg', 'B+', 'DEV ARYAN RAWAT - devaryanrawat29@gmail.com.jpg', 'DEV', '', 'M', 0, 000, 000, 000, 0),
(553, 'KARAN', 'im.karan23@gmail.com', '7027713591', 6, '32', '18JE0395', 'Non-Veg', 'O+', 'KARAN - im.karan23@gmail.com.jpg', 'KARAN', '', 'M', 0, 000, 000, 000, 0),
(554, 'KAMAL KISHORE', 'kamalkishore6146@gmail.com', '7631102527', 6, '32', '16JE002677', 'Veg', 'O+', 'KAMAL KISHORE - kamalkishore6146@gmail.com.jpg', 'KAMAL', '', 'M', 0, 000, 000, 000, 0),
(555, 'ROHIT KUMAR SONKAR', 'rohit7763.rs@gmail.com', '7070016660', 6, '32', '17JE003002', 'Non-Veg', 'O+', 'ROHIT KUMAR SONKAR - rohit7763.rs@gmail.com.jpg', 'ROHIT', '', 'M', 0, 000, 000, 000, 0),
(556, 'KAMAKSHI MEENA', 'kamakshim41298@gmail.com', '9414001797', 6, '33', '18JE0387', 'Veg', 'O+', 'KAMAKSHI MEENA - kamakshim41298@gmail.com.jpg', 'KAMAKSHI', '', 'F', 0, 000, 000, 000, 0),
(557, 'FATEMA KAPADIA', 'fatemakapadia2000@gmail.com', '9373456377', 6, '33', '19JE0320', 'Non-Veg', 'B-', 'FATEMA KAPADIA - fatemakapadia2000@gmail.com.jpg', 'KAPADIA', '', 'F', 0, 000, 000, 000, 0),
(558, 'BANOTU GAYATHRI', 'gayathri.banoth027@gmail.com', '7702082372', 6, '33', '19JE0227', 'Non-Veg', 'O+', 'BANOTU GAYATHRI - gayathri.banoth027@gmail.com.jpg', 'GAYATHRI', '', 'F', 0, 000, 000, 000, 0),
(560, 'AMOL JAGGI', '2019ume0189@iitjammu.ac.in', '9906293894', 13, '19,20,26', '2019ume0189', 'Non-Veg', 'O+', 'AMOL JAGGI - 2019ume0189@iitjammu.ac.in.jpg', 'JAGGI', '', 'F', 0, 000, 000, 000, 0),
(561, 'NISHITA PHILLIP', '2019umt0154@iitjammu.ac.in', '9622009841', 13, '19,20,24', '2019umt0154', 'Non-Veg', 'B+', 'NISHITA PHILLIP - 2019umt0154@iitjammu.ac.in.jpg', 'Phillip', '', 'F', 0, 000, 000, 000, 0);
INSERT INTO `players` (`id`, `name`, `email`, `mobile`, `college_id`, `selected_sports`, `roll_no`, `food`, `blood_group`, `profile_image_url`, `jursey_name`, `special_inst`, `gender`, `reg_status`, `game_gold`, `game_silver`, `game_bronze`, `feeded`) VALUES
(562, 'SHREYAS CHATTERJEE', '2019ucs0097@iitjammu.ac.in', '7000172797', 13, '32', '2019ucs0097', 'Non-Veg', 'B+', 'SHREYAS CHATTERJEE - 2019ucs0097@iitjammu.ac.in.jpg', 'Shreyas', '', 'M', 0, 000, 000, 000, 0),
(563, 'ANURAG KUMAR SINGH', '2018UCS0069@iitjammu.ac.in', '8082431879', 13, '32', '2018UCS0069', 'Non-Veg', 'B+', 'ANURAG KUMAR SINGH - 2018UCS0069@iitjammu.ac.in.jpg', 'ANURAG', '', 'M', 0, 000, 000, 000, 0),
(564, 'PIYUSH RAI', '2018ume0143@iitjammu.ac.in', '6005044517', 13, '32', '2018ume0143', 'Non-Veg', 'O+', 'PIYUSH RAI - 2018ume0143@iitjammu.ac.in.jpg', 'PIYUSH', '', 'M', 0, 000, 000, 000, 0),
(565, 'AMIT KUMAR SINGH', '2019UMT0156@iitjammu.ac.in', '9305508054', 13, '32', '2019UMT0156', 'Veg', 'B+', 'AMIT KUMAR SINGH - 2019UMT0156@iitjammu.ac.in.jpg', 'Amit', '', 'M', 0, 000, 000, 000, 0),
(566, 'MUKUL ANAND ', '2018ume0151@iitjammu.ac.in', '8800541131', 13, '32', '2018ume0151', 'Non-Veg', 'B+', 'MUKUL ANAND  - 2018ume0151@iitjammu.ac.in.jpg', 'Mukul ', '', 'M', 0, 000, 000, 000, 0),
(567, 'MUKESH KUMAR ', '2019UME0190@iitjammu.ac.in', '8102322500', 13, '32', '2019UME0190', 'Non-Veg', 'O+', 'MUKESH KUMAR  - 2019UME0190@iitjammu.ac.in.jpg', 'Mukesh', '', 'M', 0, 000, 000, 000, 0),
(568, 'VIKRANT VIJAY', '2019ume0207@iitjammu.ac.in', '9906083187', 13, '32', '2019ume0207', 'Non-Veg', 'A-', 'VIKRANT VIJAY - 2019ume0207@iitjammu.ac.in.jpg', 'Vicky', '', 'M', 0, 000, 000, 000, 0),
(569, 'SHREYAS ARVIND GORE', '2017uce0028@iitjammu.ac.in', '9797721763', 13, '32', '2017uce0028', 'Non-Veg', 'B+', 'SHREYAS ARVIND GORE - 2017uce0028@iitjammu.ac.in.jpg', 'Shreyas', '', 'M', 0, 000, 000, 000, 0),
(570, 'YASH JAIN', '2019ume0203@iitjammu.ac.in', '9810052275', 13, '32', '2019ume0203', 'Veg', 'O+', 'YASH JAIN - 2019ume0203@iitjammu.ac.in.jpg', 'Yash', '', 'M', 0, 000, 000, 000, 0),
(571, 'SHIVANK KAPILA', '2019ume0201@iitjammu.ac.in', '9797711244', 13, '30', '2019ume0201', 'Non-Veg', 'A+', 'SHIVANK KAPILA - 2019ume0201@iitjammu.ac.in.jpg', 'S.KAPILA', '', 'M', 0, 000, 000, 000, 0),
(572, 'RISHIKA JAISWAL ', '2018ume0147@iitjammu.ac.in', '6205317535', 13, '31', '2018ume0147', 'Non-Veg', 'B-', 'RISHIKA JAISWAL  - 2018ume0147@iitjammu.ac.in.jpg', 'Rishika', '', 'F', 0, 000, 000, 000, 0),
(573, 'VISHWAS KUSHWAHA', '2018ume0141@iitjammu.ac.in', '6005067099', 13, '30', '2018ume0141', 'Non-Veg', 'O+', 'VISHWAS KUSHWAHA - 2018ume0141@iitjammu.ac.in.jpg', 'VK', '', 'M', 0, 000, 000, 000, 0),
(574, 'PARIDHI MAYANDE', '2019umt0177@iitjammu.ac.in', '7051786809', 13, '31', '2019umt0177', 'Veg', 'B+', 'PARIDHI MAYANDE - 2019umt0177@iitjammu.ac.in.jpg', 'Paridhi ', '', 'F', 0, 000, 000, 000, 0),
(575, 'PRASHANT KUMAR SAGAR', '2018uce0055@iitjammu.ac.in', '9027261818', 13, '30', '2018uce0055@iitjammu.ac.in', 'Veg', 'O-', 'PRASHANT KUMAR SAGAR - 2018uce0055@iitjammu.ac.in.jpg', 'Prashant', '', 'M', 0, 000, 000, 000, 0),
(576, 'AYUSHI VERMA', '2018ucs0086@iitjammu.ac.in', '8887898475', 13, '31', '2018ucs0086', 'Non-Veg', 'A+', 'AYUSHI VERMA - 2018ucs0086@iitjammu.ac.in.jpg', 'IYOUSHE', '', 'F', 0, 000, 000, 000, 0),
(578, 'SUMANT KUMAR', '2018uce0049@iitjammu.ac.in', '6005049362', 13, '34', '2018uce0049', 'Non-Veg', 'O+', 'SUMANT KUMAR - 2018uce0049@iitjammu.ac.in.jpg', 'Sumant', '', 'M', 0, 000, 000, 000, 0),
(579, 'SHARAN KUMAR', '2019uee0136@iitjammu.ac.in', '9818713571', 13, '34', '2019uee0136', 'Non-Veg', 'B+', 'SHARAN KUMAR - 2019uee0136@iitjammu.ac.in.jpg', 'Sharan', '', 'M', 0, 000, 000, 000, 0),
(580, 'NITESH KUMAR DOSHODIYA', '2018uee0121@iitjammu.ac.in', '6005002285', 13, '34', '2018uee0121', 'Non-Veg', 'B+', 'NITESH KUMAR DOSHODIYA - 2018uee0121@iitjammu.ac.in.jpg', 'NITESH', '', 'M', 0, 000, 000, 000, 0),
(581, 'VANSH RAI SAINI', '2019ume0200@iitjammu.ac.in', '9654458060', 13, '34', '2019ume0200', 'Non-Veg', 'B+', 'VANSH RAI SAINI - 2019ume0200@iitjammu.ac.in.jpg', 'Vansh', '', 'M', 0, 000, 000, 000, 0),
(582, 'AIJAZ A BHAT', '2019pee0029@iitjammu.ac.in', '7006428585', 13, '34', '2019pee0029', 'Non-Veg', 'B+', 'AIJAZ A BHAT - 2019pee0029@iitjammu.ac.in.jpg', 'AIJAZ', '', 'M', 0, 000, 000, 000, 0),
(583, 'DEVENDRA KUMAR GAUTAM', '2018uch0026@iitjammu.ac.in', '8899232286', 13, '34', '2018uch0026@iitjammu.ac.in', 'Non-Veg', 'AB+', 'DEVENDRA KUMAR GAUTAM - 2018uch0026@iitjammu.ac.in.jpg', 'Devendra', '', 'M', 0, 000, 000, 000, 0),
(584, 'ADARSH SINGH', '2017uce0002@iitjammu.ac.in', '9453265485', 13, '34', '2017uce0002', 'Non-Veg', 'O+', 'ADARSH SINGH - 2017uce0002@iitjammu.ac.in.jpg', 'Adarsh', '', 'M', 0, 000, 000, 000, 0),
(585, 'SUMIT SINGH', '2017ume0115@iitjammu.ac.in', '9149416180', 13, '34', '2017ume0115', 'Non-Veg', 'B+', 'SUMIT SINGH - 2017ume0115@iitjammu.ac.in.jpg', 'Sumit ', '', 'M', 0, 000, 000, 000, 0),
(586, 'NITIN RAJ', '2017ume0108@iitjammu.ac.in', '7023755372', 13, '34', '2017ume0108', 'Non-Veg', 'O+', 'NITIN RAJ - 2017ume0108@iitjammu.ac.in.jpg', 'Nitin', '', 'M', 0, 000, 000, 000, 0),
(587, 'AVINASH DUBEY', '2017uce0006@iitjammu.ac.in', '7889375565', 13, '34', '2017uce0006', 'Veg', 'B+', 'AVINASH DUBEY - 2017uce0006@iitjammu.ac.in.jpg', 'Avinash', '', 'M', 0, 000, 000, 000, 0),
(588, 'AMARDEEP', '2019UME0192@iitjammu.ac.in', '9888685741', 13, '34', '2019UME0192', 'Veg', 'O+', 'AMARDEEP - 2019UME0192@iitjammu.ac.in.jpg', 'Amardeep', '', 'M', 0, 000, 000, 000, 0),
(590, 'HARSHDEV SINGH', '2018uee0097@iitjammu.ac.in', '9682594185', 13, '34', '2018uee0097', 'Non-Veg', 'O+', 'HARSHDEV SINGH - 2018uee0097@iitjammu.ac.in.jpg', 'HARSH', '', 'M', 0, 000, 000, 000, 0),
(591, 'AHAAN DABHOLKAR', 'ahaand@iitbhilai.ac.in', '9473751641', 2, '32', '11640070', 'Non-Veg', 'AB+', 'AHAAN DABHOLKAR - ahaand@iitbhilai.ac.in.jpg', 'Ahaan', '', 'M', 0, 000, 000, 000, 0),
(592, 'AMIAY NARAYAN', 'amiayn@iitbhilai.ac.in', '9407758539', 2, '32', '11640140', 'Non-Veg', 'A+', 'AMIAY NARAYAN - amiayn@iitbhilai.ac.in.jpg', 'Amiay', '', 'M', 0, 000, 000, 000, 0),
(593, 'SHIVAM YADAV', 'shivamy@iitbhilai.ac.in', '9179665159', 2, '32', '11640950', 'Non-Veg', 'AB+', 'SHIVAM YADAV - shivamy@iitbhilai.ac.in.jpg', 'Shivam', '', 'M', 0, 000, 000, 000, 0),
(594, 'ROHIT KAR', 'rohitk@gmail.com', '8697336359', 2, '32', '11640860', 'Non-Veg', 'O+', 'ROHIT KAR - rohitk@gmail.com.jpg', 'Rohit', '', 'M', 0, 000, 000, 000, 0),
(595, ' DEEPJYOTI MUCHAHARY', 'deepjyotim@iitbhilai.ac.in', '7638863371', 2, '32', '11840400', 'Non-Veg', 'A+', ' DEEPJYOTI MUCHAHARY - deepjyotim@iitbhilai.ac.in.jpg', 'Deepjyoti', '', 'M', 0, 000, 000, 000, 0),
(596, ' RAHUL KUMAR MINA', 'rahulm@iitbhilai.ac.in', '9958019385', 2, '32', ' 11840890', 'Veg', 'A-', ' RAHUL KUMAR MINA - rahulm@iitbhilai.ac.in.jpg', 'Rahul', '', 'M', 0, 000, 000, 000, 0),
(597, ' VATSALYA MEENA', 'vatsalyam@iitbhilai.ac.in', '8426840603', 2, '32', '11941320', 'Veg', 'B+', ' VATSALYA MEENA - vatsalyam@iitbhilai.ac.in.jpg', 'Vatsalya', '', 'M', 0, 000, 000, 000, 0),
(598, ' SHUBHAM PATEL', 'Shubhamp@iitbhilai.ac.in', '6392809994', 2, '32', ' 11941150', 'Non-Veg', 'A+', ' SHUBHAM PATEL - Shubhamp@iitbhilai.ac.in.jpg', 'Shubham', '', 'M', 0, 000, 000, 000, 0),
(599, ' DEEPAK KUMAR', 'deepakkumar@iitbhilai.ac.in', '8409011246', 2, '32', '11940340', 'Non-Veg', 'O+', ' DEEPAK KUMAR - deepakkumar@iitbhilai.ac.in.jpg', 'Deepak', '', 'M', 0, 000, 000, 000, 0),
(600, 'GITANK', 'gitank@iitbhilai.ac.in', '7678562238', 2, '32', '11940430', 'Non-Veg', 'AB+', 'GITANK - gitank@iitbhilai.ac.in.jpg', 'Gitank', '', 'M', 0, 000, 000, 000, 0),
(601, 'RAMAVATH ABHI NAIK', 'ramavatha@iitbhilai.ac.in', '9390094040', 2, '32', ' 11940990', 'Non-Veg', 'A+', 'RAMAVATH ABHI NAIK - ramavatha@iitbhilai.ac.in.jpg', 'Abhi', '', 'M', 0, 000, 000, 000, 0),
(603, 'SANJANA MEENA', 'sanjanam@iitbhilai.ac.in', '9799794661', 2, '33', '11740840', 'Non-Veg', 'B+', 'SANJANA MEENA - sanjanam@iitbhilai.ac.in.jpg', 'Sanjana', '', 'F', 0, 000, 000, 000, 0),
(604, 'PRASHANSA DADU', 'pdadu@iitk.ac.in', '9598021203', 15, '45', '170491', 'Veg', 'B+', 'PRASHANSA DADU - pdadu@iitk.ac.in.jpg', 'Prashansa', '', 'F', 0, 000, 000, 000, 0),
(605, 'RAJ NANDINI', 'rnandini@iitk.ac.in', '9113386985', 15, '45', '170534', 'Non-Veg', 'B+', 'RAJ NANDINI - rnandini@iitk.ac.in.jpg', 'Nandini', '', 'F', 0, 000, 000, 000, 0),
(606, 'NIMA ANGMO', 'nima@iitk.ac.in', '9559025705', 15, '45', '170439', 'Non-Veg', 'A+', 'NIMA ANGMO - nima@iitk.ac.in.jpg', 'Nima', '', 'F', 0, 000, 000, 000, 0),
(607, 'NEHA CHAUHAN', 'chneha@iitk.ac.in', '9456540669', 15, '45', '170428', 'Veg', 'B+', 'NEHA CHAUHAN - chneha@iitk.ac.in.jpg', 'Neha', '', 'F', 0, 000, 000, 000, 0),
(608, 'SHWETA SUKHDEVE', 'shwetas@iitk.ac.in', '6387580949', 15, '45', '170694', 'Non-Veg', 'B+', 'SHWETA SUKHDEVE - shwetas@iitk.ac.in.jpg', 'Shweta', '', 'F', 0, 000, 000, 000, 0),
(609, 'AYUSHI MAHESWARI', 'ayushim@iitk.ac.in', '7302547099', 15, '45', '180184', 'Veg', 'AB+', 'AYUSHI MAHESWARI - ayushim@iitk.ac.in.jpg', 'Ayushi', '', 'F', 0, 000, 000, 000, 0),
(610, 'DIVYA ADIL', 'adil@iitk.ac.in', '7400210342', 15, '45', '180252', 'Veg', 'O+', 'DIVYA ADIL - adil@iitk.ac.in.jpg', 'Divya', '', 'F', 0, 000, 000, 000, 0),
(611, 'SAUMYA SINGH', 'saumyas@iitk.ac.in', '6392210249', 15, '45', '180682', 'Veg', 'AB+', 'SAUMYA SINGH - saumyas@iitk.ac.in.jpg', 'Saumya', '', 'F', 0, 000, 000, 000, 0),
(612, 'KRITI RAJ', 'kritir@iitk.ac.in', '6205059997', 15, '45', '180364', 'Non-Veg', 'O+', 'KRITI RAJ - kritir@iitk.ac.in.jpg', 'Kriti', '', 'F', 0, 000, 000, 000, 0),
(613, 'TANUJA SUNDA', 'tanuja@iitk.ac.in', '8107574599', 15, '45', '180818', 'Non-Veg', 'A+', 'TANUJA SUNDA - tanuja@iitk.ac.in.jpg', 'Tanuja', '', 'F', 0, 000, 000, 000, 0),
(614, 'EKTA SURENDER', 'sekta@iitk.ac.in', '9621143377', 15, '45', '15119264', 'Non-Veg', 'B+', 'EKTA SURENDER - sekta@iitk.ac.in.jpg', 'Ekta', '', 'F', 0, 000, 000, 000, 0),
(615, 'NAMRATA PACHAURI', 'namratap@iitk.ac.in', '9560329881', 15, '45', '18212264', 'Non-Veg', 'A+', 'NAMRATA PACHAURI - namratap@iitk.ac.in.jpg', 'Namrata', '', 'F', 0, 000, 000, 000, 0),
(616, 'QUADEER REHMAN', '2019umt0170@iitjmmu.ac.in', '9644055055', 13, '35', '2019umt0170', 'Veg', 'B+', 'QUADEER REHMAN - 2019umt0170@iitjmmu.ac.in.jpg', 'REHMAN', '', 'M', 0, 000, 000, 000, 0),
(617, 'ABHINAV PRATAP SINGH ', '2018uce0037@iitjammu.ac.in', '8511507692', 13, '35', '2018uce0037', 'Non-Veg', 'O+', 'ABHINAV PRATAP SINGH  - 2018uce0037@iitjammu.ac.in.jpg', 'ABHINAV ', '', 'M', 0, 000, 000, 000, 0),
(618, 'SHUBHAM GUPTA', '2018ume0001@iitjammu.ac.in', '8082437683', 13, '35', '2018ume0001', 'Veg', 'O+', 'SHUBHAM GUPTA - 2018ume0001@iitjammu.ac.in.jpg', 'GUPTA', '', 'M', 0, 000, 000, 000, 0),
(619, 'ATHARVA TEKAWADE', '2018uee0137@iitjammu.ac.in', '9637369119', 13, '35', '2018uee0137', 'Non-Veg', 'B+', 'ATHARVA TEKAWADE - 2018uee0137@iitjammu.ac.in.jpg', 'Tekawade', '', 'M', 0, 000, 000, 000, 0),
(620, 'RUTVIK GUPTA', 'guptarutvik.3@gmail.com', '8899107478', 13, '35', '2018UEE0106', 'Non-Veg', 'O+', 'RUTVIK GUPTA - guptarutvik.3@gmail.com.jpg', 'Rutvik', '', 'M', 0, 000, 000, 000, 0),
(621, 'NANDEESH VIRDI', '2017uce0016@iitjammu.ac.in', '7006977225', 13, '35', '2017uce0016', 'Non-Veg', 'O+', 'NANDEESH VIRDI - 2017uce0016@iitjammu.ac.in.jpg', 'Virdi', '', 'M', 0, 000, 000, 000, 0),
(622, 'SUMAN RAJ SHIT ', '2019UEE0122@iitjammu.ac.in', '9797503144', 13, '35', '2019UEE0122 ', 'Non-Veg', 'O+', 'SUMAN RAJ SHIT  - 2019UEE0122@iitjammu.ac.in.jpg', 'Raj', '', 'M', 0, 000, 000, 000, 0),
(623, 'ISHANK', '2018UCS0088@iitjammu.ac.in', '6005586533', 13, '35', '2018UCS0088', 'Veg', 'B+', 'ISHANK - 2018UCS0088@iitjammu.ac.in.jpg', 'ISHANK', '', 'M', 0, 000, 000, 000, 0),
(624, 'NILAY NAHARAS ', '2019uee0112@iitjammu.ac.in', '9622244340', 13, '35', '2019uee0112', 'Non-Veg', 'O+', 'NILAY NAHARAS  - 2019uee0112@iitjammu.ac.in.jpg', 'NILAY', '', 'M', 0, 000, 000, 000, 0),
(625, 'SUFYAN KHAN', '2019umt0149@iitjammu.ac.in', '6397929124', 13, '35', '2019umt0149', 'Veg', 'AB+', 'SUFYAN KHAN - 2019umt0149@iitjammu.ac.in.jpg', 'SUFY', '', 'M', 0, 000, 000, 000, 0),
(626, 'RUSHI PARDESHI', '2019UCS0105@iitjammu.ac.in', '9307352119', 13, '35', '2019UCS0105', 'Non-Veg', 'B+', 'RUSHI PARDESHI - 2019UCS0105@iitjammu.ac.in.jpg', 'Rushi', '', 'M', 0, 000, 000, 000, 0),
(627, 'DHIRAJ PIMPARKAR', '2019UME0199@iitjammu.ac.in', '9850192860', 13, '35', '2019UME0199', 'Non-Veg', 'A+', 'DHIRAJ PIMPARKAR - 2019UME0199@iitjammu.ac.in.jpg', 'DHIRAJ', '', 'M', 0, 000, 000, 000, 0),
(628, 'ROBIN SHARMA', '2018ume0012@iitjammu.ac.in', '9821105218', 13, '35', '2018ume0012@iitjammu.ac.in', 'Veg', 'A+', 'ROBIN SHARMA - 2018ume0012@iitjammu.ac.in.jpg', 'Robi', '', 'M', 0, 000, 000, 000, 0),
(630, 'RISHABH RANJAN', '2018uee0102@iitjammu.ac.in', '9622804256', 13, '35', '2018uee0102', 'Non-Veg', 'A+', 'RISHABH RANJAN - 2018uee0102@iitjammu.ac.in.jpg', 'RISHABH', '', 'M', 0, 000, 000, 000, 0),
(631, 'ACHARYA J JAYANT CHIRANJEEV', '2017uee0062@iitjammu.ac.in', '9665329677', 13, '40', '2017uee0062@iitjammu.ac.in', 'Non-Veg', 'O+', 'ACHARYA J JAYANT CHIRANJEEV - 2017uee0062@iitjammu.ac.in.jpg', 'Jayant', '', 'M', 0, 000, 000, 000, 0),
(632, 'MUKESH SINGH POKHARIA', '2018UCS0062@iitjammu.ac.in', '6005047812', 13, '40', '2018UCS0062', 'Non-Veg', 'A+', 'MUKESH SINGH POKHARIA - 2018UCS0062@iitjammu.ac.in.jpg', 'MARK_E', '', 'M', 0, 000, 000, 000, 0),
(633, 'JISHNU', '2019UCS0081@iitjammu.ac.in', '9350206161', 13, '40', '2019UCS0081', 'Non-Veg', 'A+', 'JISHNU - 2019UCS0081@iitjammu.ac.in.jpg', 'Jugnu', '', 'M', 0, 000, 000, 000, 0),
(634, 'KESHAV VYAS', '2017uee0074@iitjammu.ac.in', '9166969436', 13, '40', '2017uee0074', 'Veg', 'B+', 'KESHAV VYAS - 2017uee0074@iitjammu.ac.in.jpg', 'VYAS', '', 'M', 0, 000, 000, 000, 0),
(635, 'SUMIT', '2017ume0114@iitjammu.ac.in', '7889756362', 13, '44', '2017ume0114', 'Veg', 'B+', 'SUMIT - 2017ume0114@iitjammu.ac.in.jpg', 'Krishan', '', 'M', 0, 000, 000, 000, 0),
(636, 'LALIT', '2018ume0144@iitjammu.ac.in', '6005018731', 13, '44', '2018ume0144', 'Non-Veg', 'B+', 'LALIT - 2018ume0144@iitjammu.ac.in.jpg', 'LALIT', '', 'M', 0, 000, 000, 000, 0),
(637, 'JASWANT PATEL', '2018uee0116@iitjammu.ac.in', '9796477336', 13, '44', '2018uee0116', 'Veg', 'B+', 'JASWANT PATEL - 2018uee0116@iitjammu.ac.in.jpg', 'JASWANT', '', 'M', 0, 000, 000, 000, 0),
(638, 'ABHINAV ', '2019uce0053@iitjammu.ac.in', '8899432351', 13, '44', '2019uce0053', 'Veg', 'AB+', 'ABHINAV  - 2019uce0053@iitjammu.ac.in.jpg', 'ABHI', '', 'M', 0, 000, 000, 000, 0),
(639, 'PARTH SINGH', '2018uch0002@iitjammu.ac.in', '9596068450', 13, '44', '2018uch0002', 'Non-Veg', 'O+', 'PARTH SINGH - 2018uch0002@iitjammu.ac.in.jpg', 'Parth', '', 'M', 0, 000, 000, 000, 0),
(640, 'PREM BHARTI', '2019umt0152@iitjammu.ac.in', '8899598836', 13, '44', '2019umt0152', 'Non-Veg', 'O+', 'PREM BHARTI - 2019umt0152@iitjammu.ac.in.jpg', 'PRINCE', '', 'M', 0, 000, 000, 000, 0),
(641, 'AKHILESH SHARMA', '2017uee0064@iitjammu.ac.in', '9419274425', 13, '44', '2017uee0064', 'Non-Veg', 'B+', 'AKHILESH SHARMA - 2017uee0064@iitjammu.ac.in.jpg', 'AK', '', 'M', 0, 000, 000, 000, 0),
(642, 'AADRSH', '2018UCE0056@IITJAMMU.AC.IN', '8082435098', 13, '44', '2018UCE0056', 'Non-Veg', 'B+', 'AADRSH - 2018UCE0056@IITJAMMU.AC.IN.jpg', 'ADARSH', '', 'M', 0, 000, 000, 000, 0),
(643, 'AASHISH RANJAN', '2016ume0077@iitjammu.ac.in', '9107632910', 13, '34', '2016ume0077', 'Non-Veg', 'B+', 'AASHISH RANJAN - 2016ume0077@iitjammu.ac.in.jpg', 'Aashish', '', 'M', 0, 000, 000, 000, 0),
(645, 'VENKATESSAN JANAKIRAMAN', '2018ume0132@iitjammu.ac.in', '8056070984', 13, '32,35', '2018ume0132', 'Veg', 'O+', 'VENKATESSAN JANAKIRAMAN - 2018ume0132@iitjammu.ac.in.jpg', 'Venkat', '', 'M', 0, 000, 000, 000, 0),
(646, 'DEVID YADAV', '2017uee0068@iitjammu.ac.in', '7051374684', 13, '12,34', '2017uee0068', 'Veg', 'O+', 'DEVID YADAV - 2017uee0068@iitjammu.ac.in.jpg', 'DEVID', '', 'M', 0, 000, 000, 000, 0),
(647, 'RAJAT KUMAR', '2017uce0021@iitjammu.ac.in', '7006135976', 13, '1,34', '2017uce0021', 'Non-Veg', 'A+', 'RAJAT KUMAR - 2017uce0021@iitjammu.ac.in.jpg', 'Defaulter', '', 'M', 0, 000, 000, 000, 0),
(648, 'SHIVANG VIJAY', 'shivangvijay@gmail.com', '9079896145', 13, '52', '2017UME0113', 'Veg', 'A+', 'SHIVANG VIJAY - shivangvijay@gmail.com.jpg', 'Shivang', '', 'M', 0, 000, 000, 000, 0),
(649, 'RISHABH KUMAR', 'krishabha101@gmail.com', '7292908777', 13, '52', '2019ume0183', 'Veg', 'B+', 'RISHABH KUMAR - krishabha101@gmail.com.jpg', 'Rishhh', '', 'M', 0, 000, 000, 000, 0),
(650, 'PUNIT KUMAWAT', '2018uch0020@iitjammu.ac.in', '7742778954', 13, '52', '2018uch0020', 'Veg', 'B+', 'PUNIT KUMAWAT - 2018uch0020@iitjammu.ac.in.jpg', 'PUNIT ', '', 'M', 0, 000, 000, 000, 0),
(651, 'YASH KATIYAR', '2017ucs0060@iitjammu.ac.in', '9149382270', 13, '52', '2017ucs0060', 'Veg', 'AB+', 'YASH KATIYAR - 2017ucs0060@iitjammu.ac.in.jpg', 'Katiyar', '', 'M', 0, 000, 000, 000, 0),
(654, 'AMAN CHAIN', '2018uce0046@iitjammu.ac.in', '6005025488', 13, '30,44', '2018uce0046', 'Non-Veg', 'AB+', 'AMAN CHAIN - 2018uce0046@iitjammu.ac.in.jpg', 'Aman', '', 'M', 0, 000, 000, 000, 0),
(655, 'PRATEEK SINHA', '2019uee0127@iitjammu.ac.in', '9682368574', 13, '52', '2019uee0127', 'Non-Veg', 'O+', 'PRATEEK SINHA - 2019uee0127@iitjammu.ac.in.jpg', 'Prateek', '', 'M', 0, 000, 000, 000, 0),
(656, 'J SAITEJA VARMA', 'jsv10@iitbbs.ac.in', '9449384289', 3, '35', '18CS01017', 'Non-Veg', 'O+', 'J SAITEJA VARMA - jsv10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(657, 'AUSAF AHMAD TK', 'aak10@iitbbs.ac.in', '9188766436', 3, '35', '18EE02006', 'Non-Veg', 'O+', 'AUSAF AHMAD TK - aak10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(658, 'DHRUV AJAY RAY', 'dar10@iitbbs.ac.in', '8008407777', 3, '35', '18EE01056', 'Non-Veg', 'O+', 'DHRUV AJAY RAY - dar10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(659, 'DWIPJYOTI SARKAR', 'djs12@iitbbs.ac.in', '9101258743', 3, '35', '17EE01046', 'Non-Veg', 'O+', 'DWIPJYOTI SARKAR - djs12@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(660, 'ASHISH DUBEY', 'ashishdubey1556277@gmail.com', '9719693442', 6, 'staff', '258', 'Veg', 'A+', 'ASHISH DUBEY - ashishdubey1556277@gmail.com.jpg', 'COACH', '', 'M', 0, 000, 000, 000, 0),
(661, 'KULDEEP BAGHEL', 'kb22@iitbbs.ac.in', '8959209084', 3, '35', '18ME01052', 'Non-Veg', 'O+', 'KULDEEP BAGHEL - kb22@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(662, 'NITISH KUMAR', 'nk20@iitbbs.ac.in', '8289008608', 3, '35', '18CS01042', 'Non-Veg', 'B+', 'NITISH KUMAR - nk20@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(663, 'PIYUSH KUMAR SAHU', 'pks20@iitbbs.ac.in', '7089998705', 3, '35', '18EE01036', 'Veg', 'O+', 'PIYUSH KUMAR SAHU - pks20@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(664, 'RAHUL R', 'rr21@iitbbs.ac.in', '9447577224', 3, '35', '17ME01005', 'Non-Veg', 'B+', 'RAHUL R - rr21@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(665, 'ADITYA YOGESH SANGANI', 'ays12@iitbbs.ac.in', '9324213114', 3, '35', '19ME02029', 'Veg', 'O-', 'ADITYA YOGESH SANGANI - ays12@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(666, 'ASHUTOSH KESHARWANI', 'ak52@iitbbs.ac.in', '9399503377', 3, '35', '17MM01009', 'Non-Veg', 'O+', 'ASHUTOSH KESHARWANI - ak52@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(667, 'NAWAZ NM', 'mn20@iitbbs.ac.in', '8847854835', 3, '35', '17ME02002', 'Non-Veg', 'A+', 'NAWAZ NM - mn20@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(668, 'AKARSH BALACHANDRAN', 'ab34@iitbbs.ac.in', '8317446929', 3, '35', '17ME01019', 'Non-Veg', 'O+', 'AKARSH BALACHANDRAN - ab34@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(669, 'DIVESH DIGAMBER SHET', 'dds12@iitbbs.ac.in', '8806481058', 3, '35', '19ME02008', 'Non-Veg', 'O+', 'DIVESH DIGAMBER SHET - dds12@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(670, 'RAVI GUPTA', 'raviguptarptng@gmail.com', '7052627320', 6, '34', '17JE003366', 'Non-Veg', 'B+', 'RAVI GUPTA - raviguptarptng@gmail.com.jpg', 'RAVI', '', 'M', 0, 000, 000, 000, 0),
(671, 'HORTHING VASHAI ZIMIK', 'hv11@iitbbs.ac.in', '7377095732', 3, '35', '14ES090135', 'Non-Veg', 'O+', 'HORTHING VASHAI ZIMIK - hv11@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(672, 'YASH VARDHAN SINGH RAGHUWANSHI', 'ysr13@iitbbs.ac.in', '9407496249', 3, '35', '19EE02003', 'Veg', 'O+', 'YASH VARDHAN SINGH RAGHUWANSHI - ysr13@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(673, 'ARPIT RAJORIA', 'arpitrajoria2000@gmail.com', '7585903691', 6, '34', '18JE0158', 'Veg', 'O+', 'ARPIT RAJORIA - arpitrajoria2000@gmail.com.jpg', 'ARPIT', '', 'M', 0, 000, 000, 000, 0),
(674, 'SHUBHAM KUMAR SINGH', 'ss.iitism@gmail.com', '8400606121', 6, '34', '16JE002427', 'Non-Veg', 'A+', 'SHUBHAM KUMAR SINGH - ss.iitism@gmail.com.jpg', 'SHUBHAM', '', 'M', 0, 000, 000, 000, 0),
(675, 'BISWAJIT PEGU', 'biswajitpegu@iitbbs.ac.in', '7000302897', 3, 'staff', '170011', 'Non-Veg', 'B+', 'BISWAJIT PEGU - biswajitpegu@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(676, 'AYUSH SINGH', '2019uee0119@iitjammu.ac.in', '9560921010', 13, '52', '2019uee0119', 'Non-Veg', 'B+', 'AYUSH SINGH - 2019uee0119@iitjammu.ac.in.jpg', 'AYUSH', '', 'M', 0, 000, 000, 000, 0),
(677, 'SUNITA VERMA', 'sunitav@iitbbs.ac.in', '9479630698', 3, 'staff', '170009', 'Veg', 'A+', 'SUNITA VERMA - sunitav@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'F', 0, 000, 000, 000, 0),
(678, 'NEERAJ NARWAL', 'nj10@iitbbs.ac.in', '9992614745', 3, '1,2,9', '18PS06009', 'Veg', 'A+', 'NEERAJ NARWAL - nj10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(679, ' RAHUL R ', 'rr30@iitbbs.ac.in', '8978907002', 3, '1,2,9', '18ME01044', 'Non-Veg', 'A+', ' RAHUL R  - rr30@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(680, 'PRAVEEN', 'pr31@iitbbs.ac.in', '8109140501', 3, '1,2,9', '19CE01050', 'Non-Veg', 'O+', 'PRAVEEN - pr31@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(681, 'LALIT KUMAR', 'lk14@iitbbs.ac.in', '7496815253', 3, '3,4,5,9', '18CE01016', 'Veg', 'AB+', 'LALIT KUMAR - lk14@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(682, 'TANMAY KHADSAN', 'tpk10@iitbbs.ac.in', '7977612747', 3, '4,5,6', '17MM01006', 'Non-Veg', 'O+', 'TANMAY KHADSAN - tpk10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(683, 'PARYUL SINGHAI', 'ps39@iitbbs.ac.in', '8318897504', 3, '5,6,9', '19EE01012', 'Veg', 'A+', 'PARYUL SINGHAI - ps39@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(684, 'DEEPAK MAHALIK', 'dm16@iitbbs.ac.in', '7008248735', 3, '16', '18MM01018', 'Non-Veg', 'B+', 'DEEPAK MAHALIK - dm16@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(685, 'KAUSTAV BHATTACHARYA', 'kb20@iitbbs.ac.in', '8910088131', 3, '52', '16EE01010', 'Non-Veg', 'O-', 'KAUSTAV BHATTACHARYA - kb20@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(686, 'AMLAN SWAIN', 'as78@iitbbs.ac.in', '9437602637', 3, '52', '17EE02005', 'Non-Veg', 'O+', 'AMLAN SWAIN - as78@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(687, 'PRAJWAL V SANGAM', 'pvs10@iitbbs.ac.in', '7259378479', 3, '52', '18EC01041', 'Non-Veg', 'B+', 'PRAJWAL V SANGAM - pvs10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(688, 'ANMOL SURANA', 'as82@iitbbs.ac.in', '7587799006', 3, '52', '18EC01016', 'Veg', 'B+', 'ANMOL SURANA - as82@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(689, 'DHIREN TRIPURAMALLU', 'dtm11@iitbbs.ac.in', '9100853699', 3, '52', '19CS02002', 'Non-Veg', 'B-', 'DHIREN TRIPURAMALLU - dtm11@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(690, 'S BALA YOGESH', 'sby@iitbbs.ac.in', '7558813514', 3, '52', '18ME01031', 'Non-Veg', 'AB+', 'S BALA YOGESH - sby@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(691, 'PRIYANSHU BHARDWAJ', 'priyanshubhardwajjpr@gmail.com', '7260944222', 6, '34', '16JE002086', 'Veg', 'B+', 'PRIYANSHU BHARDWAJ - priyanshubhardwajjpr@gmail.com.jpg', 'PRIYANSHU', '', 'M', 0, 000, 000, 000, 0),
(692, 'AVINASH KUMAR', '1166avinash@gmail.com', '8400093446', 6, '34', '18JE0194', 'Non-Veg', 'B-', 'AVINASH KUMAR - 1166avinash@gmail.com.jpg', 'AVINASH', '', 'M', 0, 000, 000, 000, 0),
(693, 'DEVJYOTI ROY', 'devjyoti.devjyoti.roy@gmail.com', '8116526240', 6, '34', '18MT0422', 'Non-Veg', 'O+', 'DEVJYOTI ROY - devjyoti.devjyoti.roy@gmail.com.jpg', 'DEV', '', 'M', 0, 000, 000, 000, 0),
(694, 'ABHISHEK SHARMA', 'abdadhich001@gmail.com', '7791050301', 6, '34', '17JE003153', 'Veg', 'B-', 'ABHISHEK SHARMA - abdadhich001@gmail.com.jpg', 'ABHISHEK', '', 'M', 0, 000, 000, 000, 0),
(695, 'RAJIV NAYAN', 'rajeevnayan5055@gmail.com', '7987598940', 6, '34', '18JE0660', 'Veg', 'O+', 'RAJIV NAYAN - rajeevnayan5055@gmail.com.jpg', 'RAJIV', '', 'M', 0, 000, 000, 000, 0),
(696, 'AADESH MISHRA', 'aadeshmishra246@gmail.com', '9871278744', 6, '34', '17JE003486', 'Non-Veg', 'B+', 'AADESH MISHRA - aadeshmishra246@gmail.com.jpg', 'Aadesh', '', 'M', 0, 000, 000, 000, 0),
(697, 'SOURAV KUMAR', 'souravarya1329@gmail.com', '9708305767', 6, '34', '17JE003527 ', 'Non-Veg', 'O+', 'SOURAV KUMAR - souravarya1329@gmail.com.jpg', 'Sourav', '', 'M', 0, 000, 000, 000, 0),
(698, 'HIMANSHU SHIVHARE', 'Hshivhare83@gmail.com', '9131651265', 6, '34', '17JE003494', 'Non-Veg', 'A+', 'HIMANSHU SHIVHARE - Hshivhare83@gmail.com.jpg', 'HIMANSHU', '', 'M', 0, 000, 000, 000, 0),
(699, 'BALA PRASAD PATEL ', 'balaprasadp6@gmail.com', '9199054283', 6, '34', '16JE002663', 'Non-Veg', 'A+', 'BALA PRASAD PATEL  - balaprasadp6@gmail.com.jpg', 'Patel ', '', 'M', 0, 000, 000, 000, 0),
(700, 'SHUBHAM KUMAR', 'shubham.17je003259@mech.iitism.ac.in', '7903645137', 6, '48', '17JE003259', 'Non-Veg', 'B+', 'SHUBHAM KUMAR - shubham.17je003259@mech.iitism.ac.in.jpg', 'SHUBHAM', '', 'M', 0, 000, 000, 000, 0),
(701, 'PRASHANT KAUSHIK', 'prashant.17je003016@mech.iitism.ac.in', '8708246443', 6, '49', '17JE003016', 'Veg', 'B+', 'PRASHANT KAUSHIK - prashant.17je003016@mech.iitism.ac.in.jpg', 'PRASHANT', '', 'M', 0, 000, 000, 000, 0),
(702, 'MANJEET', 'manjeet.sheoran7@gmail.com', '9991948754', 6, '32', '18JE0470', 'Veg', 'B+', 'MANJEET - manjeet.sheoran7@gmail.com.jpg', 'ANUBHAV', '', 'M', 0, 000, 000, 000, 0),
(703, 'MANVENDRA', '1manvendra1@gmail.com', '9660688396', 6, '51', '19je0504', 'Non-Veg', 'B+', 'MANVENDRA - 1manvendra1@gmail.com.jpg', 'MANVENDRA', '', 'M', 0, 000, 000, 000, 0),
(704, 'APURV SHANDILYA', 'apurvshandilya2001@gmail.com', '9334241142', 6, '47', '19JE0173', 'Non-Veg', 'B+', 'APURV SHANDILYA - apurvshandilya2001@gmail.com.jpg', 'APURV', '', 'M', 0, 000, 000, 000, 0),
(705, 'ANUJ GUPTA', 'anujgupt15@gmail.com', '9425434343', 6, '49', '19JE0166', 'Veg', 'B+', 'ANUJ GUPTA - anujgupt15@gmail.com.jpg', 'ANUJ', '', 'M', 0, 000, 000, 000, 0),
(706, 'MANISH KUMAR', 'manishdayalsingh@gmail.com', '8875426710', 6, '51', '16JE002415', 'Veg', 'B+', 'MANISH KUMAR - manishdayalsingh@gmail.com.jpg', 'Dhayal', '', 'M', 0, 000, 000, 000, 0),
(707, 'MANOJ KUMAR', 'Manojbhichchhar8@gmail.com', '9602964298', 6, '50', '17JE003191', 'Veg', 'A-', 'MANOJ KUMAR - Manojbhichchhar8@gmail.com.jpg', 'MANOJ', '', 'M', 0, 000, 000, 000, 0),
(708, 'KARMVEER SINGH', 'karmakaswan@gmail.com', '8696803488', 6, '50', '17JE003361', 'Veg', 'A+', 'KARMVEER SINGH - karmakaswan@gmail.com.jpg', 'KASWAN', '', 'M', 0, 000, 000, 000, 0),
(709, 'SUMAN DAS', 'sumandas021998@gmail.com', '9101061747', 6, '34', '17je003047', 'Non-Veg', 'A+', 'SUMAN DAS - sumandas021998@gmail.com.jpg', 'S.DAS', '', 'M', 0, 000, 000, 000, 0),
(710, 'BAIBHAV KUMAR', 'buddybaibhav12@gmail.com', '7739667661', 6, '34', '16je001962', 'Non-Veg', 'B+', 'BAIBHAV KUMAR - buddybaibhav12@gmail.com.jpg', 'Benoy', '', 'M', 0, 000, 000, 000, 0),
(711, 'SAURABH SINGH', 'saurabhgaharwar@hotmail.com', '8210771616', 6, '34', '16je002374', 'Non-Veg', 'B+', 'SAURABH SINGH - saurabhgaharwar@hotmail.com.jpg', 'SAURABH', '', 'M', 0, 000, 000, 000, 0),
(712, 'VISHAL PANDEY', 'Vk010300@gmail.com', '9599370708', 6, '35', '17je002784', 'Non-Veg', 'B+', 'VISHAL PANDEY - Vk010300@gmail.com.jpg', 'V.Mane', '', 'M', 0, 000, 000, 000, 0),
(713, 'MIRINSING ANGKANG', 'ameisingak@gmail.com', '7780076659', 6, '35', '17MC000396', 'Non-Veg', 'B+', 'MIRINSING ANGKANG - ameisingak@gmail.com.jpg', 'Mirin', '', 'M', 0, 000, 000, 000, 0),
(714, 'PRADEEP PAWAR', 'pawarpradeep1357@gmail.com', '7760609482', 6, '35', '18JE0605', 'Non-Veg', 'O+', 'PRADEEP PAWAR - pawarpradeep1357@gmail.com.jpg', 'PAWAR', '', 'M', 0, 000, 000, 000, 0),
(715, 'HASSAN HEMED MKUMBA', 'mkumbahassan457@gmail.com', '9534187709', 6, '35', '17IM000020', 'Non-Veg', 'O+', 'HASSAN HEMED MKUMBA - mkumbahassan457@gmail.com.jpg', 'Hassan', '', 'M', 0, 000, 000, 000, 0),
(716, 'AKSHAT SINGH', 'akshatsingh048@gmail.com', '9631710604', 6, '35', '17je002863', 'Non-Veg', 'O+', 'AKSHAT SINGH - akshatsingh048@gmail.com.jpg', 'Akshat', '', 'M', 0, 000, 000, 000, 0),
(717, 'OHISA JOHNSON KALU   ONGUAJA', 'Onguaja19@gmail.com', '7360842641', 6, '35', '16IB000051', 'Non-Veg', 'O+', 'OHISA JOHNSON KALU   ONGUAJA - Onguaja19@gmail.com.jpg', 'Kalu', '', 'M', 0, 000, 000, 000, 0),
(718, 'AARON ANTONIO DIAS BARRETO ', 'aaronadb@gmail.com', '8007602700', 6, '35', '18JE0003', 'Non-Veg', 'O+', 'AARON ANTONIO DIAS BARRETO  - aaronadb@gmail.com.jpg', 'Barreto', '', 'M', 0, 000, 000, 000, 0),
(719, 'GAURAV RAJ', 'graj31g@gmail.com', '9507510195', 6, '34', '16JE002154', 'Non-Veg', 'A+', 'GAURAV RAJ - graj31g@gmail.com.jpg', 'Gaurav', '', 'M', 0, 000, 000, 000, 0),
(720, 'KAUSHIK BHOWMIK', 'Kbhowmik488@gmail.com', '7005274257', 6, 'staff', '250', 'Non-Veg', 'B+', 'KAUSHIK BHOWMIK - Kbhowmik488@gmail.com.jpg', 'Coach', '', 'M', 0, 000, 000, 000, 0),
(721, 'GODFRED OPPONG KESSE', 'gokesse1@gmail.com', '7485060016', 6, '35', '16ID000003', 'Non-Veg', 'O+', 'GODFRED OPPONG KESSE - gokesse1@gmail.com.jpg', 'AFALABI JNR', '', 'M', 0, 000, 000, 000, 0),
(722, 'BIKRAM KUMAR SINGH', 'bikramsingh1071989@gmail.com', '9911769011', 6, 'staff', '248', 'Non-Veg', 'AB+', 'BIKRAM KUMAR SINGH - bikramsingh1071989@gmail.com.jpg', 'Coach', '', 'M', 0, 000, 000, 000, 0),
(723, 'NAGA SAI MANIKANTA NANDHIKOLLA', 'nsmn10@iitbbs.ac.in', '7799523317', 3, '34', '16ME01012', 'Non-Veg', 'O+', 'NAGA SAI MANIKANTA NANDHIKOLLA - nsmn10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(724, 'PRAVEEN GARA', 'gp13@iitbbs.ac.in', '7337216290', 3, '34', '16ME01032', 'Non-Veg', 'O+', 'PRAVEEN GARA - gp13@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(725, 'ABHISHEK NEGI', 'an25@iitbbs.ac.in', '7668138088', 3, '34', '18MM01005', 'Non-Veg', 'O+', 'ABHISHEK NEGI - an25@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(726, 'SATISH KUMAR ASIPI', 'ska13@iitbbs.ac.in', '9875423252', 3, '34', '18EE02010', 'Non-Veg', 'O+', 'SATISH KUMAR ASIPI - ska13@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(727, 'JYOTI RANJAN SAHOO', 'jrs10@iitbbs.ac.in', '9583220785', 3, '34', '18MM06019', 'Non-Veg', 'A+', 'JYOTI RANJAN SAHOO - jrs10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(728, 'BORADE ABHISHEK', 'bar11@iitbbs.ac.in', '7447353829', 3, '34', '17CE01008', 'Veg', 'O+', 'BORADE ABHISHEK - bar11@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(729, 'SANDEEP KUMAR TANTY', 'skt12@iitbbs.ac.in', '9668689491', 3, '34', '19CE01051', 'Non-Veg', 'AB+', 'SANDEEP KUMAR TANTY - skt12@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(730, 'RAHUL KETHIRI', 'kr23@iitbbs.ac.in', '8555911819', 3, '34', '17EC01039', 'Non-Veg', 'B+', 'RAHUL KETHIRI - kr23@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(731, 'K.HRUSHIKESH NAIDU', 'kh11@iitbbs.ac.in', '9494547639', 3, '34', '18EC01027', 'Non-Veg', 'O+', 'K.HRUSHIKESH NAIDU - kh11@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(732, 'ROHIT GAIKWAD', 'rg24@iitbbs.ac.in', '7796375230', 3, '34', '18CE02002', 'Veg', 'A+', 'ROHIT GAIKWAD - rg24@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(733, 'MARSHAL PEGU', 'polopegu7@gmail.com', '7002839982', 6, '35', '18MC0075', 'Non-Veg', 'B+', 'MARSHAL PEGU - polopegu7@gmail.com.jpg', 'Pegu M', '', 'M', 0, 000, 000, 000, 0),
(734, 'GYAMAR PUNUNG', 'gyamarpunung13579@gmail.com', '9402240662', 6, '35', '18JE0988', 'Non-Veg', 'O+', 'GYAMAR PUNUNG - gyamarpunung13579@gmail.com.jpg', 'G.Punung', '', 'M', 0, 000, 000, 000, 0),
(735, 'M VENKAT SAI DEV', 'msd12@iitbbs.ac.in', '9490817647', 3, '34', '18ME01030', 'Non-Veg', 'O+', 'M VENKAT SAI DEV - msd12@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(736, 'SAPTARSHI DAS', 'saptarshi.das1998@gmail.com', '9264416474', 6, '35', '16JE002672', 'Non-Veg', 'A+', 'SAPTARSHI DAS - saptarshi.das1998@gmail.com.jpg', 'Saptarshi', '', 'M', 0, 000, 000, 000, 0),
(737, 'MAHAMMAD NOOR', 'mahammadnoor122333@gmail.com', '8847864976', 6, '35', '17JE003406', 'Non-Veg', 'AB+', 'MAHAMMAD NOOR - mahammadnoor122333@gmail.com.jpg', 'NOOR', '', 'M', 0, 000, 000, 000, 0),
(738, 'P THANGLENMANG HAOKIP', 'haokip.iitism@gmail.com', '6205021118', 6, '35', '17je002947', 'Non-Veg', 'O+', 'P THANGLENMANG HAOKIP - haokip.iitism@gmail.com.jpg', 'Mang', '', 'M', 0, 000, 000, 000, 0),
(739, 'JASHWANTH REDDY', 'jjr10@iitbbs.ac.in', '9381421896', 3, '34', '18ME01024', 'Non-Veg', 'O+', 'JASHWANTH REDDY - jjr10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(740, 'NGANAOMI KHANGRAH', 'nkhangrah12@gmail.com', '7834822543', 6, '35', '17MC000323', 'Non-Veg', 'O+', 'NGANAOMI KHANGRAH - nkhangrah12@gmail.com.jpg', 'Khangrah', '', 'M', 0, 000, 000, 000, 0),
(741, 'EDNILSON MBURINE ', 'Ednilson.figueredo@gmail.com', '9709354344', 6, '35', '16IB000061', 'Non-Veg', 'O+', 'EDNILSON MBURINE  - Ednilson.figueredo@gmail.com.jpg', 'MBURINE', '', 'M', 0, 000, 000, 000, 0),
(742, 'SHAIK ABDUL ARSHAD', 'saa10@iitbbs.ac.in', '7093806406', 3, '34', '18CE01004', 'Non-Veg', 'O+', 'SHAIK ABDUL ARSHAD - saa10@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(743, 'ATUL SOLANKI ', 'atulkgn1000@gmail.com', '9479400587', 6, '35', '16je002208', 'Non-Veg', 'O+', 'ATUL SOLANKI  - atulkgn1000@gmail.com.jpg', 'Solanki ', '', 'M', 0, 000, 000, 000, 0),
(744, 'RAHUL KOTHA', 'kr25@iitbbs.ac.in', '8340064999', 3, '34', '18CS02004', 'Non-Veg', 'O+', 'RAHUL KOTHA - kr25@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(745, 'KUCHURU VIJAY SIMHA REDDY', 'kvr11@iitbbs.ac.in', '9440139218', 3, '34', '18CE01009', 'Non-Veg', 'B+', 'KUCHURU VIJAY SIMHA REDDY - kvr11@iitbbs.ac.in.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(746, 'AKASHRANJAN SAHU', 'akashranjan89.ars@gmail.com', '9938405428', 3, 'staff', '405428', 'Non-Veg', 'AB-', 'AKASHRANJAN SAHU - akashranjan89.ars@gmail.com.jpg', 'IIT Bhubaneswar', 'No', 'M', 0, 000, 000, 000, 0),
(747, 'VIKRAMADITYA SINGH KADIAN', 'vikramadityasinghkadian8@gmail.com', '9463452123', 6, '42', '18JE0924', 'Veg', 'O+', 'VIKRAMADITYA SINGH KADIAN - vikramadityasinghkadian8@gmail.com.jpg', 'VSK', '', 'M', 0, 000, 000, 000, 0),
(748, 'KUSHAGRA TRIPATHI', 'kishgailgaon@gmail.com', '9837015331', 6, '42', '17JE002715', 'Veg', 'O+', 'KUSHAGRA TRIPATHI - kishgailgaon@gmail.com.jpg', 'KUSH', '', 'M', 0, 000, 000, 000, 0),
(749, 'ADARSH PANDEY', 'adarshpandey12032000@gmail.com', '9939113673', 6, '42', '18JE0034', 'Non-Veg', 'B+', 'ADARSH PANDEY - adarshpandey12032000@gmail.com.jpg', 'Adarsh', '', 'M', 0, 000, 000, 000, 0),
(750, 'D KOVID SAI NAIK', 'kovidsai2002@gmail.com', '6301736556', 6, '42', '19JE0296', 'Non-Veg', 'O+', 'D KOVID SAI NAIK - kovidsai2002@gmail.com.jpg', 'KOVID', '', 'M', 0, 000, 000, 000, 0),
(751, 'P.SRIYA SAMEERA', 'sriyasameera@gmail.com', '6303092523', 6, '43', '18JE0601', 'Non-Veg', 'B+', 'P.SRIYA SAMEERA - sriyasameera@gmail.com.jpg', 'Sameera', '', 'F', 0, 000, 000, 000, 0),
(752, 'RANI KUMARI', 'rani.mfp@gmail.com', '8757015615', 6, '43', '19DR0123', 'Non-Veg', 'A+', 'RANI KUMARI - rani.mfp@gmail.com.jpg', 'Rani', '', 'F', 0, 000, 000, 000, 0),
(753, 'TEJASWI YADAMREDDY', 'tejaswiy99@gmail.com', '9550261034', 6, '43', '18JE0876', 'Non-Veg', 'O+', 'TEJASWI YADAMREDDY - tejaswiy99@gmail.com.jpg', 'Tejaswi', '', 'F', 0, 000, 000, 000, 0),
(754, 'AJAY GOVIND BHAVE', 'ajaybhave109@gmail.com', '7355982667', 6, '37', '17JE002912', 'Veg', 'A+', 'AJAY GOVIND BHAVE - ajaybhave109@gmail.com.jpg', 'Bhave', '', 'M', 0, 000, 000, 000, 0),
(755, 'AVINASH', 'avinash21997@gmail.com', '9794723866', 6, '37', '18JE0192', 'Non-Veg', 'B+', 'AVINASH - avinash21997@gmail.com.jpg', 'Avinash', '', 'M', 0, 000, 000, 000, 0),
(756, 'APARNA SAHARE', 'aparnasahare25@gmail.com', '8718848196', 6, '38', '18JE0978', 'Non-Veg', 'O+', 'APARNA SAHARE - aparnasahare25@gmail.com.jpg', 'Aparna', '', 'F', 0, 000, 000, 000, 0),
(757, 'BHARGAVI ANAND', 'bhargavianand99t@gmail.com', '8271471108', 6, '38', '18JE0981', 'Non-Veg', 'O+', 'BHARGAVI ANAND - bhargavianand99t@gmail.com.jpg', 'BHARGAVI', '', 'F', 0, 000, 000, 000, 0),
(759, 'SHASHANK DROLIA', 'shashankdrolia@gmail.com', '8340193185', 6, '37', '18JE0763', 'Non-Veg', 'O+', 'SHASHANK DROLIA - shashankdrolia@gmail.com.jpg', 'Drolia', '', 'M', 0, 000, 000, 000, 0),
(760, 'ANIMESH SHARMA', 'animesh.sharma.17003@iitgoa.ac.in', '8178490807', 9, '35', '170030011', 'Veg', 'B+', 'ANIMESH SHARMA - animesh.sharma.17003@iitgoa.ac.in.jpg', 'Animesh', '', 'M', 0, 000, 000, 000, 0),
(761, 'BHAGATRAM LABANA', 'bhagatram.labana.16002@iitgoa.ac.in', '8696363465', 9, '34', '160020016', 'Veg', 'A+', 'BHAGATRAM LABANA - bhagatram.labana.16002@iitgoa.ac.in.jpg', 'LABANA', '', 'M', 0, 000, 000, 000, 0),
(762, 'ADWAIT AGASHE', 'adwait.agashe.19031@iitgoa.ac.in', '9172924802', 9, '34', '1903103', 'Non-Veg', 'O+', 'ADWAIT AGASHE - adwait.agashe.19031@iitgoa.ac.in.jpg', 'Adwait', '', 'M', 0, 000, 000, 000, 0),
(763, 'RAGHUNATH', 'gopavaram.raghunath.17002@iitgoa.ac.in', '9182989790', 9, '34', '170020025', 'Non-Veg', 'B+', 'RAGHUNATH - gopavaram.raghunath.17002@iitgoa.ac.in.jpg', 'Raghunath', '', 'M', 0, 000, 000, 000, 0),
(764, 'SHIVANSH AADITTYA', 'shivansh.aadittya.16002@iitgoa.ac.in', '9410116640', 9, '34', '160020021', 'Non-Veg', 'A+', 'SHIVANSH AADITTYA - shivansh.aadittya.16002@iitgoa.ac.in.jpg', 'SHUBH', '', 'M', 0, 000, 000, 000, 0),
(765, 'MUKUL KUMAR', 'mukul.kumar.17003@iitgoa.ac.in', '7017449617', 9, '34', '170030030', 'Veg', 'O+', 'MUKUL KUMAR - mukul.kumar.17003@iitgoa.ac.in.jpg', 'Mukul', '', 'M', 0, 000, 000, 000, 0),
(766, 'AJIT SINGH YADAV', 'ajit.yadav.18003@iitgoa.ac.in', '9680535685', 9, '34', '180030001', 'Veg', 'A-', 'AJIT SINGH YADAV - ajit.yadav.18003@iitgoa.ac.in.jpg', 'Ajit', '', 'M', 0, 000, 000, 000, 0),
(767, 'MAKHAN SINGH', 'makhan.singh.18003@iitgoa.ac.in', '9009313637', 9, '34', '180030015', 'Non-Veg', 'B+', 'MAKHAN SINGH - makhan.singh.18003@iitgoa.ac.in.jpg', 'MS KEVAT', '', 'M', 0, 000, 000, 000, 0),
(768, 'HIMADEEP ', 'nukathoti.deep.17003@iitgoa.ac.in', '9492048011', 9, '34', '170030022', 'Non-Veg', 'AB+', 'HIMADEEP  - nukathoti.deep.17003@iitgoa.ac.in.jpg', 'Himadeep', '', 'M', 0, 000, 000, 000, 0),
(769, 'AKSHAY', 'akshay.kumar.17002@iitgoa.ac.in', '7011364489', 9, '30', '170020015', 'Non-Veg', 'A+', 'AKSHAY - akshay.kumar.17002@iitgoa.ac.in.jpg', 'purush', '', 'M', 0, 000, 000, 000, 0),
(770, 'ANURAG GUPTA', 'anurag.gupta.18003@iitgoa.ac.in', '9676380875', 9, '30', '180030005', 'Non-Veg', 'A+', 'ANURAG GUPTA - anurag.gupta.18003@iitgoa.ac.in.jpg', 'anurag', '', 'M', 0, 000, 000, 000, 0),
(771, 'ABHISHEK BOURAH', 'abhishek.bourah.19063@iitgoa.ac.in', '7086463557', 9, '30', '19060303', 'Non-Veg', 'A+', 'ABHISHEK BOURAH - abhishek.bourah.19063@iitgoa.ac.in.jpg', 'Abhishek', '', 'M', 0, 000, 000, 000, 0),
(772, 'V.V.POORNA SEKHAR', 'Poorna.sekhar.16002@iitgoa.ac.in', '7032119033', 9, '30', '160020025', 'Non-Veg', 'A+', 'V.V.POORNA SEKHAR - Poorna.sekhar.16002@iitgoa.ac.in.jpg', 'poorna', '', 'M', 0, 000, 000, 000, 0),
(773, 'ANKIT JAISWAL  ', 'ankit.jaiswal.18001@iitgoa.ac.in', '9429576674', 9, '52', '180010004', 'Veg', 'AB+', 'ANKIT JAISWAL   - ankit.jaiswal.18001@iitgoa.ac.in.jpg', 'ANKIT', '', 'M', 0, 000, 000, 000, 0),
(774, 'KAUSHAL KISHOR GAGAN', 'kaushal.gagan.18001@iitgoa.ac.in', '6204861934', 9, '52', '180010014', 'Non-Veg', 'O+', 'KAUSHAL KISHOR GAGAN - kaushal.gagan.18001@iitgoa.ac.in.jpg', 'Kaushal', '', 'M', 0, 000, 000, 000, 0),
(775, 'ABHISHEK VARGHESE', 'abhishek.varghese.16001@iitgoa.ac.in', '8839093169', 9, '52', '160010018', 'Non-Veg', 'O+', 'ABHISHEK VARGHESE - abhishek.varghese.16001@iitgoa.ac.in.jpg', 'Abhishek', '', 'M', 0, 000, 000, 000, 0),
(776, 'REVANTH SHARMA', 'revanth.sharma.16003@iitgoa.ac.in', '9036103825', 9, '52', '160030027', 'Veg', 'B+', 'REVANTH SHARMA - revanth.sharma.16003@iitgoa.ac.in.jpg', 'Revanth', '', 'M', 0, 000, 000, 000, 0),
(777, 'SIDDHARTH SINGH SOLANKI', 'siddharth.solanki.18002@iitgoa.ac.in', '8818882132', 9, '32,52', '180020025', 'Non-Veg', 'B+', 'SIDDHARTH SINGH SOLANKI - siddharth.solanki.18002@iitgoa.ac.in.jpg', 'SIddharth', '', 'M', 0, 000, 000, 000, 0),
(778, 'TEJAS A. MAYEKAR', 'tejas.mayekar.17001@iitgoa.ac.in', '9082337956', 9, '35,52', '170010001', 'Non-Veg', 'O+', 'TEJAS A. MAYEKAR - tejas.mayekar.17001@iitgoa.ac.in.jpg', 'TEJAS', '', 'M', 0, 000, 000, 000, 0),
(779, 'RAJEEV SINGH RAWAT', 'Rajeev.rawat.16002@iitgoa.ac.in', '8302010971', 9, '32', '160020005', 'Non-Veg', 'B+', 'RAJEEV SINGH RAWAT - Rajeev.rawat.16002@iitgoa.ac.in.jpg', 'RAWAT', '', 'M', 0, 000, 000, 000, 0),
(780, 'PRABAL BHATNAGAR', 'Prabal.bhatnagar.16002@iitgoa.ac.in', '7768006567', 9, '32', '160020007', 'Non-Veg', 'O+', 'PRABAL BHATNAGAR - Prabal.bhatnagar.16002@iitgoa.ac.in.jpg', 'PRABAL', '', 'M', 0, 000, 000, 000, 0),
(781, 'HARSH DUBEY', 'Harsh.dubey.17001@iitgoa.ac.in', '8989179600', 9, '32', '170010016', 'Veg', 'O+', 'HARSH DUBEY - Harsh.dubey.17001@iitgoa.ac.in.jpg', 'HARSH', '', 'M', 0, 000, 000, 000, 0),
(782, 'VISHRUT MAHESHWARI', 'Vishrut.maheshwari.17002@iitgoa.ac.in', '8949420797', 9, '32', '170020011', 'Non-Veg', 'A-', 'VISHRUT MAHESHWARI - Vishrut.maheshwari.17002@iitgoa.ac.in.jpg', 'VISHRUT', '', 'M', 0, 000, 000, 000, 0),
(783, 'ROHIT NAIR', 'Rohit.nair.17002@iitgoa.ac.in', '8080650344', 9, '32', '170020006', 'Non-Veg', 'B+', 'ROHIT NAIR - Rohit.nair.17002@iitgoa.ac.in.jpg', 'NAIR', '', 'M', 0, 000, 000, 000, 0),
(784, 'ANMOLDEEP SINGH', 'Anmoldeep.singh.18003@iitgoa.ac.in', '9682118778', 9, '32', '180030002', 'Non-Veg', 'O+', 'ANMOLDEEP SINGH - Anmoldeep.singh.18003@iitgoa.ac.in.jpg', 'ANMOL', '', 'M', 0, 000, 000, 000, 0),
(785, 'RAHUL KUMAR', 'Rahul.kumar.18003@iitgoa.ac.in', '9929695657', 9, '32', '180030024', 'Veg', 'O+', 'RAHUL KUMAR - Rahul.kumar.18003@iitgoa.ac.in.jpg', 'R@HUL', '', 'M', 0, 000, 000, 000, 0),
(786, 'MOHD SAQUIB KHAN', 'saquin.khan.16002@iitgoa.ac.in', '9455492077', 9, '35', '160020017', 'Non-Veg', 'B+', 'MOHD SAQUIB KHAN - saquin.khan.16002@iitgoa.ac.in.jpg', 'SAQUIB', '', 'M', 0, 000, 000, 000, 0),
(787, 'SAJAL YADAV', 'sajal.yadav.16002@iitgoa.ac.in', '7768006566', 9, '35', '160020013', 'Non-Veg', 'O+', 'SAJAL YADAV - sajal.yadav.16002@iitgoa.ac.in.jpg', 'SAJAL', '', 'M', 0, 000, 000, 000, 0),
(788, 'ANKIT DUBEY', 'ankit.dubey.16003@iitgoa.ac.in', '7066485769', 9, '35', '160030024', 'Non-Veg', 'B+', 'ANKIT DUBEY - ankit.dubey.16003@iitgoa.ac.in.jpg', 'DUBEY', '', 'M', 0, 000, 000, 000, 0),
(789, 'APOORVA UPLAP', 'apoorva.udlap.16003@iitgoa.ac.in', '7774031914', 9, '35', '160030008', 'Non-Veg', 'O+', 'APOORVA UPLAP - apoorva.udlap.16003@iitgoa.ac.in.jpg', 'APO', '', 'M', 0, 000, 000, 000, 0),
(790, 'HARSHIT PARAMHANS', 'harshit.paramhans.17003@iitgoa.ac.in', '9039284408', 9, '35', '170030018', 'Non-Veg', 'A+', 'HARSHIT PARAMHANS - harshit.paramhans.17003@iitgoa.ac.in.jpg', 'HARSHIT', '', 'M', 0, 000, 000, 000, 0),
(791, 'HARI KRISHNA', 'hari.katta.18002@iitgoa.ac.in', '9959734855', 9, '35', '180020009', 'Non-Veg', 'B+', 'HARI KRISHNA - hari.katta.18002@iitgoa.ac.in.jpg', 'HARI', '', 'M', 0, 000, 000, 000, 0),
(792, 'ROHIT RAJORA', 'rohit.rajora.18001@iitgoa.ac.in', '8447854413', 9, '35', '180010024', 'Non-Veg', 'B+', 'ROHIT RAJORA - rohit.rajora.18001@iitgoa.ac.in.jpg', 'RAJORA', '', 'M', 0, 000, 000, 000, 0),
(793, 'KARAN GOTHWAL', 'karan.gothwal.17003@iitgoa.ac.in', '9694269917', 9, '35', '170030007', 'Non-Veg', 'O+', 'KARAN GOTHWAL - karan.gothwal.17003@iitgoa.ac.in.jpg', 'KARAN', '', 'M', 0, 000, 000, 000, 0),
(794, 'ASWIN B.', 'aswin.b.17003@iitgoa.ac.in', '7560896869', 9, '35', '170030025 ', 'Non-Veg', 'A+', 'ASWIN B. - aswin.b.17003@iitgoa.ac.in.jpg', 'ASWIN', '', 'M', 0, 000, 000, 000, 0),
(795, 'ARIJIT P.S.', 'arijit.p.17003@iitgoa.ac.in', '9400310028', 9, '35', '170030024 ', 'Non-Veg', 'B+', 'ARIJIT P.S. - arijit.p.17003@iitgoa.ac.in.jpg', 'ARIJIT', '', 'M', 0, 000, 000, 000, 0),
(796, 'DEVRAJ MOGAVEERA', 'devraj.mogaveera.17002@iitgoa.ac.in', '8169509571', 9, '35', '170020003', 'Non-Veg', 'A+', 'DEVRAJ MOGAVEERA - devraj.mogaveera.17002@iitgoa.ac.in.jpg', 'DEVRAJ', '', 'M', 0, 000, 000, 000, 0),
(797, 'AYAN ADHYA', 'ayan.adhya.18003@iitgoa.ac.in', '8320653959', 9, '35', '180030007', 'Non-Veg', 'B+', 'AYAN ADHYA - ayan.adhya.18003@iitgoa.ac.in.jpg', 'ADHYA', '', 'M', 0, 000, 000, 000, 0),
(798, 'MONISH LOKHANDE', 'monish.lokhande.16003@iitgoa.ac.in', '7798365927', 9, '35', '160030007', 'Non-Veg', 'O+', 'MONISH LOKHANDE - monish.lokhande.16003@iitgoa.ac.in.jpg', 'MONISH', '', 'M', 0, 000, 000, 000, 0),
(800, 'AAYUSH AMILDUKE', 'aayush.amilduke.19041@iitgoa.ac.in', '7972803665', 9, '34', '1904101', 'Veg', 'B+', 'AAYUSH AMILDUKE - aayush.amilduke.19041@iitgoa.ac.in.jpg', 'AAYUSH', '', 'M', 0, 000, 000, 000, 0),
(801, 'OM PATIL', 'om.patil.19041@iitgoa.ac.in', '8850444351', 9, '34', '1904125', 'Veg', 'A+', 'OM PATIL - om.patil.19041@iitgoa.ac.in.jpg', 'OM', '', 'M', 0, 000, 000, 000, 0),
(802, 'SUNIL KUMAR JONWAL', 'sunil.jonwal.16002@iitgoa.ac.in', '7558682453', 9, '34', '160020010', 'Veg', 'B+', 'SUNIL KUMAR JONWAL - sunil.jonwal.16002@iitgoa.ac.in.jpg', 'JONWAL', '', 'M', 0, 000, 000, 000, 0),
(803, 'ABHISH KUMAR', 'abhish.kumar.16003@iitgoa.ac.in', '7030082411', 9, '4,5,6,34', '160030022', 'Non-Veg', 'O+', 'ABHISH KUMAR - abhish.kumar.16003@iitgoa.ac.in.jpg', 'AK', '', 'M', 0, 000, 000, 000, 0),
(804, 'SAKET KOHINKAR', 'kohinkar.kailas.19063@iitgoa.ac.in', '7499136037', 9, '34', '1906316', 'Non-Veg', 'A+', 'SAKET KOHINKAR - kohinkar.kailas.19063@iitgoa.ac.in.jpg', 'Saket', '', 'M', 0, 000, 000, 000, 0),
(805, 'VEMULAPALLI PRAKHYATH SREE HARSHA', 'vemulapalli.prakhyath.17001@iitgoa.ac.in', '7337053124', 9, '34', '170010023', 'Non-Veg', 'AB+', 'VEMULAPALLI PRAKHYATH SREE HARSHA - vemulapalli.prakhyath.17001@iitgoa.ac.in.jpg', 'prakhyath', '', 'M', 0, 000, 000, 000, 0),
(806, 'MAHIPAL SINGH RATHORE', 'Mahipal.rathore.17003@iitgoa.ac.in', '9079797429', 9, '32', '170030015', 'Non-Veg', 'O+', 'MAHIPAL SINGH RATHORE - Mahipal.rathore.17003@iitgoa.ac.in.jpg', 'MAHIPAL', '', 'M', 0, 000, 000, 000, 0),
(807, 'MOHIT GARG', 'gmohit@iitk.ac.in', '7772971504', 15, '1,9', '160409', 'Non-Veg', 'O+', 'MOHIT GARG - gmohit@iitk.ac.in.jpg', 'Mohit', '', 'M', 0, 000, 000, 000, 0),
(808, 'RAMAVATH KALYAN ', 'kalyanrk@iitk.ac.in', '7702658108', 15, '9,10,12,17', '190685', 'Non-Veg', 'B+', 'RAMAVATH KALYAN  - kalyanrk@iitk.ac.in.jpg', 'Kalyan', '', 'M', 0, 000, 000, 000, 0),
(809, 'ABHIJEET', 'abhinir@iitk.ac.in', '9931025496', 15, '4,5,6,10', '170015', 'Non-Veg', 'B+', 'ABHIJEET - abhinir@iitk.ac.in.jpg', 'Abhijeet', '', 'M', 0, 000, 000, 000, 0);

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
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
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

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(10) NOT NULL,
  `sports_name` varchar(200) NOT NULL,
  `category` varchar(10) NOT NULL,
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
(33, 'Basketball', 'W', 12, 't'),
(34, 'Cricket', 'M', 16, 't'),
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
(51, 'Weightlifting Above 77 Kg\r\n', 'M', 2, 'i'),
(52, 'Chess', 'M or W', 6, 'i');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule_result_relay`
--
ALTER TABLE `schedule_result_relay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule_result_team`
--
ALTER TABLE `schedule_result_team`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
