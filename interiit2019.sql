-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: interiit2019
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `privilege` int(10) NOT NULL,
  `college_id` varchar(10) NOT NULL,
  `sports_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'iiitjgp_representative','hjhgjgjm','IITKGP Representative',2,'16',''),(2,'kgp staff','ghjghgjg','Cricket score updater',3,'','35');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clg_name` varchar(400) NOT NULL,
  `clg_nickname` varchar(200) NOT NULL,
  `logo_url` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'IIT BHU','BHU','img/clg/bhu.jpg'),(2,'IIT Bhilai','',''),(3,'IIT Bhubaneshwar','',''),(4,'IIT Bombay','',''),(5,'IIT Delhi','',''),(6,'IIT Dhanbad','',''),(7,'IIT Dharwad','',''),(8,'IIT Gandhinagar','',''),(9,'IIT Goa','',''),(10,'IIT Guwahati','',''),(11,'IIT Hyderabad','',''),(12,'IIT Indore','',''),(13,'IIT Jammu','',''),(14,'IIT Jodhpur','',''),(15,'IIT Kanpur','',''),(16,'IIT Kharagpur','',''),(17,'IIT Madras','',''),(18,'IIT Mandi','',''),(19,'IIT Palakkad ','',''),(20,'IIT Patna ','',''),(21,'IIT Roorkee','',''),(22,'IIT Ropar','',''),(23,'IIT Tirupati','','');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sports_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participation`
--

LOCK TABLES `participation` WRITE;
/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
INSERT INTO `participation` VALUES (1,1,4,16),(2,1,15,16);
/*!40000 ALTER TABLE `participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `college_id` int(2) NOT NULL,
  `password` varchar(150) NOT NULL,
  `food` varchar(10) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `profile_image_url` varchar(200) NOT NULL,
  `jursey_name` varchar(50) NOT NULL,
  `biggest_motivator` varchar(400) NOT NULL,
  `fav_athelete` varchar(100) NOT NULL,
  `fitness_mantra` varchar(400) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `reg_status` int(1) unsigned zerofill NOT NULL,
  `game_gold` int(3) unsigned zerofill NOT NULL,
  `game_silver` int(3) unsigned zerofill NOT NULL,
  `game_bronze` int(3) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Shashi','shashi1iitk@gmail.com','7477797333',16,'password','veg','A+','image/static/shashi.jpg','test','test','test','test','M',1,004,005,010);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_main`
--

DROP TABLE IF EXISTS `point_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sports_id` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `13` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `16` int(11) NOT NULL,
  `17` int(11) NOT NULL,
  `18` int(11) NOT NULL,
  `19` int(11) NOT NULL,
  `20` int(11) NOT NULL,
  `21` int(11) NOT NULL,
  `22` int(11) NOT NULL,
  `23` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_main`
--

LOCK TABLES `point_main` WRITE;
/*!40000 ALTER TABLE `point_main` DISABLE KEYS */;
INSERT INTO `point_main` VALUES (1,1,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(15,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0),(16,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(17,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(18,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(19,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(21,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(22,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(23,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(24,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(25,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(26,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(27,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(29,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(30,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(31,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(32,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(33,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(34,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(35,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(36,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(37,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(38,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(39,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(40,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(41,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(42,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(43,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(44,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(45,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(46,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(47,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(48,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(49,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(50,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(51,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `point_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_master`
--

DROP TABLE IF EXISTS `point_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clg_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_master`
--

LOCK TABLES `point_master` WRITE;
/*!40000 ALTER TABLE `point_master` DISABLE KEYS */;
INSERT INTO `point_master` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0);
/*!40000 ALTER TABLE `point_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_result_individual`
--

DROP TABLE IF EXISTS `schedule_result_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_result_individual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `comments` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_result_individual`
--

LOCK TABLES `schedule_result_individual` WRITE;
/*!40000 ALTER TABLE `schedule_result_individual` DISABLE KEYS */;
INSERT INTO `schedule_result_individual` VALUES (1,14,'All','1,12,15,16,12,41,42,48,46','521642','jnan ghosh','heats','','','','','','','','','','');
/*!40000 ALTER TABLE `schedule_result_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_result_team`
--

DROP TABLE IF EXISTS `schedule_result_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `winner_clg_id` int(2) unsigned zerofill DEFAULT '00',
  `runner_clg_id` int(2) unsigned zerofill DEFAULT '00',
  `status` varchar(2000) DEFAULT NULL,
  `commentry` varchar(10000) DEFAULT NULL,
  `lineup1` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_result_team`
--

LOCK TABLES `schedule_result_team` WRITE;
/*!40000 ALTER TABLE `schedule_result_team` DISABLE KEYS */;
INSERT INTO `schedule_result_team` VALUES (1,1,5,10,'2019-06-09 06:57:32','gymkhana','final','216/5','215/10',05,10,'KGP won by 5 wickets','ghhfyhjgmhm','img/scorecard/1.jpg'),(2,4,2,10,'2019-06-09 06:57:32','Tata steel playground','3rd place','','',00,00,'','','');
/*!40000 ALTER TABLE `schedule_result_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sports` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sports_name` varchar(200) NOT NULL,
  `category` varchar(1) NOT NULL,
  `max_player` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Athletics 100 M','M',2,'individual'),(2,'Athletics 200 M','M',2,'individual'),(3,'Athletics 400 M','M',2,'individual'),(4,'Athletics 800 M','M',2,'individual'),(5,'Athletics 1500 M','M',2,'individual'),(6,'Athletics 5000 M','M',2,'individual'),(7,'Athletics 110 M Hurdles','M',2,'individual'),(8,'Athletics 400 M Hurdles','M',2,'individual'),(9,'Athletics 4X100 M Relay','M',2,'team'),(10,'Athletics 4X400 M Relay','M',2,'team'),(11,'Athletics High Jump','M',2,'individual'),(12,'Athletics Long Jump','M',2,'individual'),(13,'Athletics Triple Jump','M',2,'individual'),(14,'Athletics Pole Vault','M',2,'individual'),(15,'Athletics Shot Put','M',2,'individual'),(16,'Athletics Discus Throw','M',2,'individual'),(17,'Athletics Javelin Throw','M',2,'individual'),(18,'Athletics Hammer Throw','M',2,'individual'),(19,'Athletics 100 M','W',2,'individual'),(20,'Athletics 200 M','W',2,'individual'),(21,'Athletics 400 M','W',2,'individual'),(22,'Athletics 800 M','W',2,'individual'),(23,'Athletics 1500 M','W',2,'individual'),(24,'Athletics Long Jump','W',2,'individual'),(25,'Athletics High Jump','W',2,'individual'),(26,'Athletics Shotput','W',2,'individual'),(27,'Athletics Discus Throw','W',2,'individual'),(28,'Athletics 4 X 100M Relay','W',2,'team'),(29,'Athletics 4 X 400M Relay','W',2,'team'),(30,'Badminton','M',5,'team'),(31,'Badminton','W',3,'team'),(32,'Basketball','M',12,'team'),(33,'Basketball','W',11,'team'),(34,'Cricket','M',15,'team'),(35,'Football','M',16,'team'),(36,'Hockey','M',16,'team'),(37,'Squash','M',4,'team'),(38,'Swimming','M',2,'individual'),(39,'Swimming','W',2,'individual'),(40,'Table Tennis','M',3,'team'),(41,'Table Tennis','W',3,'team'),(42,'Tennis','M',4,'team'),(43,'Tennis','W',4,'team'),(44,'Volleyball','M',12,'team'),(45,'Volleyball','W',12,'team'),(46,'Water Polo','M',13,'team'),(47,'Weightlifting Up to 56 Kg','M',1,'individual'),(48,'Weightlifting Up to 62 Kg','M',1,'individual'),(49,'Weightlifting Up to 69 Kg','M',1,'individual'),(50,'Weightlifting Up to 77 Kg','M',1,'individual'),(51,'Weightlifting Above 77 Kg\r\n','M',1,'Individual');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-07 15:24:53
