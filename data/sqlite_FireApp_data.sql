-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('5500788ed080');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_request`
--

DROP TABLE IF EXISTS `asset_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_request` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) DEFAULT NULL,
  `title` varchar(29) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_request`
--

LOCK TABLES `asset_request` WRITE;
/*!40000 ALTER TABLE `asset_request` DISABLE KEYS */;
INSERT INTO `asset_request` VALUES (322,4,'Medium Tanker2','waiting','2021-09-27 08:38:28','2021-09-27 08:38:28'),(323,4,'Large Truck this weekend','waiting','2021-09-27 08:38:28','2021-09-27 08:38:28'),(326,4,'firetruck this weekend','un-submitted','2021-10-11 17:57:42','2021-10-11 17:57:42'),(331,4,'2022 Bushfire Request Example','waiting','2021-10-31 23:59:41','2021-10-31 23:59:41'),(332,4,'test1','waiting','2022-03-09 17:46:39','2022-03-09 17:46:39'),(333,4,'test','un-submitted','2022-03-18 23:41:41','2022-03-18 23:41:41'),(334,4,'test0318','waiting','2022-03-18 23:41:41','2022-03-18 23:41:41'),(337,4,'Test_Request','waiting','2022-04-30 18:31:18','2022-04-30 18:31:18'),(338,4,'Juren_Test','waiting','2022-04-10 13:01:37','2022-04-10 13:01:37'),(339,4,'Juren Test 2','waiting','2022-04-10 13:01:37','2022-04-10 13:01:37'),(341,4,'Medium Tanker Bushfire','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47'),(342,4,'Test Request','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47'),(347,4,'Gungahlin Fire','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47'),(348,4,'adsf','un-submitted','2022-04-10 13:01:37','2022-04-10 13:01:37'),(349,4,'camp fire','waiting','2022-05-09 13:54:56','2022-05-09 13:54:56'),(350,4,'Showcase','un-submitted','2022-05-15 16:04:14','2022-05-15 16:04:14'),(351,4,'new test','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(352,4,'new test2','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(354,4,'new test3','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(355,4,'new request4','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(356,4,'test4','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(359,4,'testrole','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(360,4,'testSupervisorAPI','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(361,4,'optimiastion-tute-08-2022','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11'),(362,4,'testHang','waiting','2022-09-02 09:09:40','2022-09-02 09:09:40'),(363,4,'Test','waiting','2023-05-07 06:35:11','2023-05-07 06:35:11');
/*!40000 ALTER TABLE `asset_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_request_vehicle`
--

DROP TABLE IF EXISTS `asset_request_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_request_vehicle` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `request_id` smallint(6) DEFAULT NULL,
  `from` DATETIME DEFAULT NULL,
  `to` DATETIME DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `asset_type_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_request_vehicle`
--

LOCK TABLES `asset_request_vehicle` WRITE;
/*!40000 ALTER TABLE `asset_request_vehicle` DISABLE KEYS */;
INSERT INTO `asset_request_vehicle` VALUES (369,322,'2021-10-12 17:02:36','2021-10-14 17:02:36','2021-09-27 08:38:28','2021-09-27 08:38:28',12),(370,323,'2021-10-08 17:03:09','2021-10-09 17:03:09','2021-09-27 08:38:28','2021-09-27 08:38:28',11),(371,323,'2021-10-08 17:03:09','2021-10-09 17:03:09','2021-09-27 08:38:28','2021-09-27 08:38:28',11),(374,326,'2021-10-15 18:31:33','2021-10-16 18:31:33','2021-10-11 17:57:42','2021-10-11 17:57:42',12),(379,331,'2022-02-28 22:00:00','2022-03-03 18:00:00','2021-10-31 23:59:41','2021-10-31 23:59:41',11),(380,331,'2022-02-28 22:00:00','2022-03-03 18:00:00','2021-10-31 23:59:41','2021-10-31 23:59:41',13),(381,332,'2022-03-10 17:47:53','2022-03-11 17:47:53','2022-03-09 17:46:39','2022-03-09 17:46:39',12),(382,334,'2022-03-19 23:42:20','2022-03-20 23:42:20','2022-03-18 23:41:41','2022-03-18 23:41:41',13),(383,337,'2022-05-09 18:38:10','2022-05-13 18:38:10','2022-04-30 18:31:18','2022-04-30 18:31:18',13),(384,338,'2022-04-30 20:00:00','2022-04-30 23:30:00','2022-04-10 13:01:37','2022-04-10 13:01:37',12),(385,339,'2022-05-01 17:00:00','2022-05-01 23:00:00','2022-04-10 13:01:37','2022-04-10 13:01:37',11),(387,341,'2022-05-10 07:00:00','2022-05-14 23:30:00','2022-05-02 08:55:47','2022-05-02 08:55:47',11),(388,342,'2022-05-18 18:08:18','2022-05-27 18:08:18','2022-05-02 08:55:47','2022-05-02 08:55:47',11),(389,342,'2022-05-18 18:13:06','2022-05-19 02:30:00','2022-05-02 08:55:47','2022-05-02 08:55:47',11),(394,347,'2022-05-06 12:00:01','2022-05-06 15:00:01','2022-05-02 08:55:47','2022-05-02 08:55:47',11),(395,349,'2022-05-12 16:34:59','2022-05-12 20:00:00','2022-05-09 13:54:56','2022-05-09 13:54:56',11),(396,351,'2022-08-19 16:00:40','2022-08-26 16:00:40','2022-07-10 16:04:11','2022-07-10 16:04:11',13),(397,352,'2022-08-27 12:29:52','2022-09-03 12:29:52','2022-07-10 16:04:11','2022-07-10 16:04:11',11),(398,354,'2022-08-27 12:31:17','2022-09-02 12:31:17','2022-07-10 16:04:11','2022-07-10 16:04:11',11),(399,355,'2022-09-01 12:48:29','2022-09-03 12:48:29','2022-07-10 16:04:11','2022-07-10 16:04:11',11),(400,356,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-07-10 16:04:11','2022-07-10 16:04:11',13),(404,356,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-08-21 16:32:04','2022-08-21 16:32:04',13),(407,356,'2022-09-11 00:35:02','2022-09-11 14:35:02','2022-08-21 17:07:28','2022-08-21 17:07:28',11),(409,359,'2022-08-24 17:53:29','2022-09-03 17:53:29','2022-07-10 16:04:11','2022-07-10 16:04:11',13),(410,360,'2022-08-23 15:03:03','2022-08-24 15:03:03','2022-07-10 16:04:11','2022-07-10 16:04:11',13),(412,360,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-08-22 15:00:06','2022-08-22 15:00:06',11),(413,360,'2022-09-27 13:35:02','2022-10-03 13:35:02','2022-08-22 15:00:06','2022-08-22 15:00:06',11),(414,361,'2022-08-25 16:00:00','2022-08-26 00:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',11),(415,361,'2022-08-26 00:00:00','2022-08-26 12:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',11),(416,361,'2022-09-17 20:00:00','2022-09-19 08:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',12),(417,362,'2022-09-30 13:00:00','2022-10-01 13:30:00','2022-09-02 09:09:40','2022-09-02 09:09:40',12),(418,322,'2022-09-27 13:35:02','2022-10-03 13:35:02','2022-09-17 07:23:01','2022-09-17 07:23:01',13),(419,363,'2023-06-30 19:54:06','2023-07-01 19:54:06','2023-05-07 06:35:11','2023-05-07 06:35:11',11);
/*!40000 ALTER TABLE `asset_request_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_request_volunteer`
--

DROP TABLE IF EXISTS `asset_request_volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_request_volunteer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(5) DEFAULT NULL,
  `vehicle_id` smallint(6) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `qualification_id` varchar(3) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_request_volunteer`
--

LOCK TABLES `asset_request_volunteer` WRITE;
/*!40000 ALTER TABLE `asset_request_volunteer` DISABLE KEYS */;
INSERT INTO `asset_request_volunteer` VALUES (720,'149.0',369,'pending','2021-09-27 08:38:28','2021-09-27 08:38:28',1,'2.0'),(721,'',369,'','2021-09-27 08:38:28','2021-09-27 08:38:28',2,'3.0'),(722,'',369,'','2021-09-27 08:38:28','2021-09-27 08:38:28',4,'1.0'),(750,'',379,'','2021-10-31 23:59:41','2021-10-31 23:59:41',1,'5.0'),(751,'',379,'','2021-10-31 23:59:41','2021-10-31 23:59:41',2,'6.0'),(753,'',379,'','2021-10-31 23:59:41','2021-10-31 23:59:41',4,'1.0'),(754,'',379,'','2021-10-31 23:59:41','2021-10-31 23:59:41',4,'2.0'),(755,'',380,'','2021-10-31 23:59:41','2021-10-31 23:59:41',3,'3.0'),(756,'',380,'','2021-10-31 23:59:41','2021-10-31 23:59:41',4,''),(757,'',381,'','2022-03-09 17:46:39','2022-03-09 17:46:39',1,''),(758,'',381,'','2022-03-09 17:46:39','2022-03-09 17:46:39',2,''),(759,'',381,'','2022-03-09 17:46:39','2022-03-09 17:46:39',4,''),(760,'',383,'','2022-04-30 18:31:18','2022-04-30 18:31:18',3,'1.0'),(761,'',383,'','2022-04-30 18:31:18','2022-04-30 18:31:18',4,'2.0'),(762,'',383,'','2022-04-30 18:31:18','2022-04-30 18:31:18',3,'2.0'),(763,'26.0',383,'rejected','2022-04-30 18:31:18','2022-04-30 18:31:18',4,'4.0'),(764,'4.0',384,'pending','2022-04-10 13:01:37','2022-04-10 13:01:37',1,'2.0'),(765,'26.0',384,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',2,'3.0'),(766,'26.0',384,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',4,'4.0'),(767,'32.0',385,'pending','2022-04-10 13:01:37','2022-04-10 13:01:37',2,'5.0'),(768,'26.0',385,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',3,'6.0'),(769,'26.0',385,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',4,'2.0'),(770,'',385,'','2022-04-10 13:01:37','2022-04-10 13:01:37',4,''),(774,'',387,'','2022-05-02 08:55:47','2022-05-02 08:55:47',2,'3.0'),(775,'',387,'','2022-05-02 08:55:47','2022-05-02 08:55:47',3,'2.0'),(776,'',387,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'0.0'),(777,'',387,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'3.0'),(778,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',2,'1.0'),(779,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',3,'1.0'),(780,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'3.0'),(781,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'2.0'),(782,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',2,'5.0'),(783,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',3,'6.0'),(784,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'4.0'),(785,'',388,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'2.0'),(786,'',389,'','2022-05-02 08:55:47','2022-05-02 08:55:47',2,'1.0'),(787,'',389,'','2022-05-02 08:55:47','2022-05-02 08:55:47',3,'2.0'),(788,'',389,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'3.0'),(789,'',389,'','2022-05-02 08:55:47','2022-05-02 08:55:47',4,'3.0'),(806,'',394,'','2022-05-02 08:55:47','2022-05-02 08:55:47',2,'4.0'),(807,'',394,'','2022-05-02 08:55:47','2022-05-02 08:55:47',3,''),(808,'21.0',394,'pending','2022-05-02 08:55:47','2022-05-02 08:55:47',4,''),(809,'26.0',394,'confirmed','2022-05-02 08:55:47','2022-05-02 08:55:47',4,''),(810,'',395,'','2022-05-09 13:54:56','2022-05-09 13:54:56',2,''),(811,'',395,'','2022-05-09 13:54:56','2022-05-09 13:54:56',3,''),(812,'21.0',395,'pending','2022-05-09 13:54:56','2022-05-09 13:54:56',4,''),(813,'26.0',395,'pending','2022-05-09 13:54:56','2022-05-09 13:54:56',4,''),(814,'',396,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,''),(815,'',396,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'5.0'),(816,'',397,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,'6.0'),(817,'',397,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'4.0'),(818,'',397,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'2.0'),(819,'',397,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'4.0'),(820,'',398,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,'3.0'),(821,'',398,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'1.0'),(822,'',398,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'2.0'),(823,'',398,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'5.0'),(824,'',370,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,'3.0'),(825,'',370,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'2.0'),(826,'',370,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'2.0'),(827,'',370,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'1.0'),(828,'',371,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,'5.0'),(829,'',371,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'3.0'),(830,'',371,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'4.0'),(831,'',371,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'6.0'),(832,'4.0',399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',2,'2.0'),(833,'8.0',399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'3.0'),(834,'26.0',399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'5.0'),(835,'21.0',399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'1.0'),(839,'',400,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'4.0'),(840,'',400,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'3.0'),(845,'',404,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'2.0'),(846,'7.0',407,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'3.0'),(854,'26.0',409,'pending','2021-09-27 08:38:28','2021-09-27 08:38:28',3,''),(855,'',409,'','2022-08-22 12:16:15','2022-08-22 12:16:15',3,''),(856,'',409,'','2022-08-22 12:16:15','2022-08-22 12:16:15',1,''),(858,'5.0',409,'pending','2022-08-22 12:16:15','2022-08-22 12:16:15',2,''),(859,'',409,'','2022-08-22 12:16:15','2022-08-22 12:16:15',1,''),(860,'',409,'','2022-08-22 12:16:15','2022-08-22 12:16:15',2,'3.0'),(861,'8.0',409,'pending','2022-08-22 12:16:15','2022-08-22 12:16:15',3,'6.0'),(862,'',409,'','2022-08-22 12:16:15','2022-08-22 12:16:15',4,'5.0'),(863,'5.0',410,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,'2.0'),(865,'5.0',410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',1,'3.0'),(866,'5.0',412,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',2,'2.0'),(867,'5.0',410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',3,'1.0'),(868,'5.0',410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',1,'4.0'),(869,'5.0',410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',2,'3.0'),(871,'',410,'','2022-08-22 15:00:06','2022-08-22 15:00:06',1,''),(872,'',412,'','2022-08-22 15:00:06','2022-08-22 15:00:06',4,''),(873,'',413,'','2022-08-22 15:00:06','2022-08-22 15:00:06',2,''),(874,'',413,'','2022-08-22 15:00:06','2022-08-22 15:00:06',3,''),(875,'',413,'','2022-08-22 15:00:06','2022-08-22 15:00:06',4,''),(876,'',414,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,''),(877,'',414,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,''),(878,'21.0',414,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'4.0'),(879,'26.0',414,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,''),(880,'',415,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,''),(881,'',415,'','2022-07-10 16:04:11','2022-07-10 16:04:11',3,''),(882,'',415,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'2.0'),(883,'',415,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,''),(884,'',416,'','2022-07-10 16:04:11','2022-07-10 16:04:11',1,''),(885,'',416,'','2022-07-10 16:04:11','2022-07-10 16:04:11',2,''),(886,'',416,'','2022-07-10 16:04:11','2022-07-10 16:04:11',4,'3.0'),(887,'49.0',417,'confirmed','2022-09-02 09:09:40','2022-09-02 09:09:40',1,''),(888,'26.0',417,'pending','2022-09-02 09:09:40','2022-09-02 09:09:40',2,''),(889,'50.0',417,'pending','2022-09-02 09:09:40','2022-09-02 09:09:40',4,'');
/*!40000 ALTER TABLE `asset_request_volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_type`
--

DROP TABLE IF EXISTS `asset_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) DEFAULT NULL,
  `name` varchar(13) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_type`
--

LOCK TABLES `asset_type` WRITE;
/*!40000 ALTER TABLE `asset_type` DISABLE KEYS */;
INSERT INTO `asset_type` VALUES (11,'heavyTanker','Heavy Tanker',0,'2021-04-04 10:22:41','2021-04-04 10:22:41'),(12,'mediumTanker','Medium Tanker',0,'2021-04-04 10:22:41','2021-04-04 10:22:41'),(13,'lightUnit','Light Unit',0,'2021-04-04 10:22:41','2021-04-04 10:22:41');
/*!40000 ALTER TABLE `asset_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_type_role`
--

DROP TABLE IF EXISTS `asset_type_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_type_role` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `asset_type_id` tinyint(4) DEFAULT NULL,
  `seat_number` tinyint(4) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_type_role`
--

LOCK TABLES `asset_type_role` WRITE;
/*!40000 ALTER TABLE `asset_type_role` DISABLE KEYS */;
INSERT INTO `asset_type_role` VALUES (1,13,1,3,'2021-04-10 16:33:22'),(2,13,2,4,'2021-04-10 16:33:22'),(3,12,1,2,'2021-09-27 08:38:28'),(4,12,2,1,'2021-04-10 16:33:22'),(6,11,1,2,'2021-04-10 16:33:22'),(7,11,2,3,'2021-04-10 16:33:22'),(8,11,3,4,'2021-04-10 16:33:22'),(17,11,4,4,'2021-04-11 12:56:07'),(22,12,3,4,'2021-04-11 02:59:37');
/*!40000 ALTER TABLE `asset_type_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_input`
--

DROP TABLE IF EXISTS `chatbot_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_input` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `created_time` DATETIME DEFAULT NULL,
  `user_email` varchar(19) DEFAULT NULL,
  `content` varchar(17) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_input`
--

LOCK TABLES `chatbot_input` WRITE;
/*!40000 ALTER TABLE `chatbot_input` DISABLE KEYS */;
INSERT INTO `chatbot_input` VALUES (1,'2022-05-09 07:12:27','dev1@test.com','Hello!'),(2,'2022-05-09 18:10:51','u7170234@anu.edu.au','Hello there!'),(3,'2022-05-09 18:15:39','u7170234@anu.edu.au','What\'s your name?'),(4,'2022-05-09 18:38:46','u7170234@anu.edu.au','Yes!'),(5,'2022-05-10 07:14:47','u7170234@anu.edu.au','What\'s your name?'),(6,'2022-08-17 20:46:52','u7170234@anu.edu.au','What\'s your name?');
/*!40000 ALTER TABLE `chatbot_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_requirement`
--

DROP TABLE IF EXISTS `diet_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet_requirement` (
  `diet_id` tinyint(4) DEFAULT NULL,
  `user_id` smallint(6) DEFAULT NULL,
  `halal` tinyint(4) DEFAULT NULL,
  `vegetarian` tinyint(4) DEFAULT NULL,
  `vegan` tinyint(4) DEFAULT NULL,
  `nut_allergy` tinyint(4) DEFAULT NULL,
  `shellfish_allergy` tinyint(4) DEFAULT NULL,
  `gluten_intolerance` tinyint(4) DEFAULT NULL,
  `kosher` tinyint(4) DEFAULT NULL,
  `lactose_intolerance` tinyint(4) DEFAULT NULL,
  `diabetic` tinyint(4) DEFAULT NULL,
  `egg_allergy` tinyint(4) DEFAULT NULL,
  `other` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_requirement`
--

LOCK TABLES `diet_requirement` WRITE;
/*!40000 ALTER TABLE `diet_requirement` DISABLE KEYS */;
INSERT INTO `diet_requirement` VALUES (41,3,0,0,1,0,1,0,0,0,0,0,'No oil'),(43,2,0,1,0,0,0,1,0,1,1,0,''),(53,1100,1,0,0,0,1,0,0,1,0,0,'No nuts, no dairy'),(54,25,1,0,0,0,1,0,0,1,0,0,'No nuts, no dairy'),(56,1000,0,1,0,0,0,1,0,0,0,0,'No dairy, no nuts'),(57,5,0,1,0,0,0,0,0,0,0,0,''),(83,8,0,1,0,0,0,1,0,0,0,0,'No dairy');
/*!40000 ALTER TABLE `diet_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_verify`
--

DROP TABLE IF EXISTS `password_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_verify` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(21) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `expired_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_verify`
--

LOCK TABLES `password_verify` WRITE;
/*!40000 ALTER TABLE `password_verify` DISABLE KEYS */;
INSERT INTO `password_verify` VALUES (1,'julia1412@163.com','AAAlSB','2022-12-21 10:54:38','2022-12-22 10:54:38'),(2,'James.Adina@gmail.com','OKijjp','2022-10-27 06:22:01','2022-10-28 06:22:01'),(3,'hsu950208@outlook.com','cNMxzS','2022-09-12 04:03:28','2022-09-13 04:03:28'),(4,'15265451396@163.com','6ObVla','2022-05-27 06:36:12','2022-05-28 06:36:12'),(5,'justweng19@gmail.com','mrvEuf','2022-08-24 07:09:34','2022-08-25 07:09:34');
/*!40000 ALTER TABLE `password_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (1,'Advanced Firefighting Qualification',0,'2021-04-10 10:03:32','2021-04-10 10:03:32'),(2,'Advanced Pumping Skills',0,'2021-04-10 10:03:32','2021-04-10 10:03:32'),(3,'Crew Leader Course',0,'2021-04-10 10:03:32','2021-04-10 10:03:32'),(4,'Heavy Rigid Vehicle License',0,'2021-04-10 10:03:32','2021-04-10 10:03:32'),(5,'Tanker Driving training',0,'2021-04-10 10:03:32','2021-04-10 10:03:32'),(6,'Urgent Duty Driving Training',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` tinyint(6) DEFAULT NULL,
  `created_time` DATETIME DEFAULT NULL,
  `update_time` DATETIME DEFAULT NULL,
  `question_type` varchar(6) DEFAULT NULL,
  `role` varchar(11) DEFAULT NULL,
  `description` varchar(105) DEFAULT NULL,
  `choice` text,
  `difficulty` tinyint(4) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `answered_time` tinyint(4) DEFAULT NULL,
  `correct_time` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (2,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Driver','[RdrD1S1Aa]Do you like playing games?','[{\"id\":\"A\",\"content\":\"Yes\",\"reason\":\"I like playing games\"},{\"id\":\"B\",\"content\":\"No\",\"reason\":\"I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.\"}]',1,'A',1,0,0),(4,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Driver','[RdrD2S1Aa]Where are you from?','[{\"id\":\"A\",\"content\":\"Australia\",\"reason\":\"I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.\"},{\"id\":\"B\",\"content\":\"China\",\"reason\":\"I\'m from China\"}]',2,'A',1,0,0),(5,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Driver','[RdrD1S1Ab]what is your favorite color?','[{\"id\":\"A\",\"content\":\"Red\",\"reason\":\"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.\"},{\"id\":\"B\",\"content\":\"Yellow\",\"reason\":\"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.\"}]',1,'B',1,0,0),(6,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Driver','[RdrD1S1Aa]What is your specialisation?','[{\"id\":\"A\",\"content\":\"Machine Learning\",\"reason\":\"I like ML\"},{\"id\":\"B\",\"content\":\"Data Science\",\"reason\":\"I like DS\"}]',1,'A',1,0,0),(7,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Driver','[RdrD1S1Aa]what is your gender?','[{\"id\":\"A\",\"content\":\"Male\",\"reason\":\"Male male male\"},{\"id\":\"B\",\"content\":\"Female\",\"reason\":\"Female Female Female\"}]',1,'A',1,0,0),(8,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Driver','[RdrD1S1Aa]Do you prefer football or basketball?','[{\"id\":\"A\",\"content\":\"Football\",\"reason\":\"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.\"},{\"id\":\"B\",\"content\":\"Basketball\",\"reason\":\"I prefer basketball\"}]',1,'A',1,0,0),(9,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Driver','[RdrD1S1Aa]Which type of movie do you prefer?','[{\"id\":\"A\",\"content\":\"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie\",\"reason\":\"I prefer action movie\"},{\"id\":\"B\",\"content\":\"Comedy\",\"reason\":\"I prefer comedy\"}]',1,'A',1,0,0),(10,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Driver','[RdrD1S1Aa]Can I get HD in COMP8715?','[{\"id\":\"A\",\"content\":\"Of course\",\"reason\":\"Nice Job\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"Pleas try again\"}]',1,'A',1,0,0),(11,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Driver','[RdrD1S1Aa]What is the best programming language?','[{\"id\":\"A\",\"content\":\"Java\",\"reason\":\"Congra\"},{\"id\":\"B\",\"content\":\"Python\",\"reason\":\"I don\'t agree!\"}]',1,'A',1,0,0),(12,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Driver','[RdrD1S1Ab]What games do you play?','[{\"id\":\"A\",\"content\":\"Elden Ring\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"Java\",\"reason\":\"This is not a game\"}]',1,'B',1,0,0),(13,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Driver','[RdrD1S1Ab]What\'s your favorite movie?','[{\"id\":\"A\",\"content\":\"The Shawshank Redemption\",\"reason\":\"I like The Shawshank Redemption\"},{\"id\":\"B\",\"content\":\"Braveheart\",\"reason\":\"I like Braveheart\"}]',1,'B',1,0,0),(15,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Driver','[RdrD1S1Ab]Which pet do you prefer, dog or cat?','[{\"id\":\"A\",\"content\":\"Cat\",\"reason\":\"I like cats\"},{\"id\":\"B\",\"content\":\"Dog\",\"reason\":\"I like dogs\"}]',1,'B',1,0,0),(16,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Driver','[RdrD1S1Aa]How many courses do you have?','[{\"id\":\"A\",\"content\":\"Four\",\"reason\":\"I have four courses\"},{\"id\":\"B\",\"content\":\"Five\",\"reason\":\"I have five courses\"}]',1,'A',1,0,0),(17,'2022-03-25 13:05:29','2022-03-25 13:59:29','SINGLE','Driver','[Test Status]This is the first object to test the status. If this quiz appears, it means there is a bug.','[{\"id\":\"A\",\"content\":\"Bug\",\"reason\":\"We have some bugs\"},{\"id\":\"B\",\"content\":\"No bug\",\"reason\":\"We don\'t have any bug\"}]',1,'B',0,0,0),(18,'2022-03-25 13:05:29','2022-03-25 13:06:29','SINGLE','Driver','[Test Status]This is the second object to test the status. If this quiz appears, it means there is a bug.','[{\"id\":\"A\",\"content\":\"Bug\",\"reason\":\"We have some bugs\"},{\"id\":\"B\",\"content\":\"No bug\",\"reason\":\"We don\'t have any bug\"}]',1,'B',0,0,0),(19,'2022-03-24 13:05:29','2022-03-25 13:05:29','SINGLE','Driver','[Test Status]This is the third object to test the status. If this quiz appears, it means there is a bug.','[{\"id\":\"A\",\"content\":\"Bug\",\"reason\":\"We have some bugs\"},{\"id\":\"B\",\"content\":\"No bug\",\"reason\":\"We don\'t have any bug\"}]',1,'B',0,0,0),(20,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Basic','[RbaD1S1Aa]What is your name','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"yesyesyes\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'A',1,0,0),(21,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Basic','[RbaD1S1Aa]Do you like playing games?','[{\"id\":\"A\",\"content\":\"Yes\",\"reason\":\"I like playing games\"},{\"id\":\"B\",\"content\":\"No\",\"reason\":\"I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.\"}]',1,'A',1,0,0),(22,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Basic','[RbaD2S1Aa]Where are you from?','[{\"id\":\"A\",\"content\":\"Australia\",\"reason\":\"I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.\"},{\"id\":\"B\",\"content\":\"China\",\"reason\":\"I\'m from China\"}]',2,'A',1,0,0),(23,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Basic','[RbaD1S1Ab]what is your favorite color?','[{\"id\":\"A\",\"content\":\"Red\",\"reason\":\"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.\"},{\"id\":\"B\",\"content\":\"Yellow\",\"reason\":\"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.\"}]',1,'B',1,0,0),(24,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Basic','[RbaD1S1Aa]What is your specialisation?','[{\"id\":\"A\",\"content\":\"Machine Learning\",\"reason\":\"I like ML\"},{\"id\":\"B\",\"content\":\"Data Science\",\"reason\":\"I like DS\"}]',1,'A',1,0,0),(25,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Basic','[RbaD1S1Aa]what is your gender?','[{\"id\":\"A\",\"content\":\"Male\",\"reason\":\"Male male male\"},{\"id\":\"B\",\"content\":\"Female\",\"reason\":\"Female Female Female\"}]',1,'A',1,0,0),(26,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Basic','[RbaD1S1Aa]Do you prefer football or basketball?','[{\"id\":\"A\",\"content\":\"Football\",\"reason\":\"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.\"},{\"id\":\"B\",\"content\":\"Basketball\",\"reason\":\"I prefer basketball\"}]',1,'A',1,0,0),(27,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Basic','[RbaD1S1Aa]Which type of movie do you prefer?','[{\"id\":\"A\",\"content\":\"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie\",\"reason\":\"I prefer action movie\"},{\"id\":\"B\",\"content\":\"Comedy\",\"reason\":\"I prefer comedy\"}]',1,'A',1,0,0),(28,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Basic','[RbaD1S1Aa]Can I get HD in COMP8715?','[{\"id\":\"A\",\"content\":\"Of course\",\"reason\":\"Nice Job\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"Pleas try again\"}]',1,'A',1,0,0),(29,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Basic','[RbaD1S1Aa]What is the best programming language?','[{\"id\":\"A\",\"content\":\"Java\",\"reason\":\"Congra\"},{\"id\":\"B\",\"content\":\"Python\",\"reason\":\"I don\'t agree!\"}]',1,'A',1,0,0),(30,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Basic','[RbaD1S1Ab]What games do you play?','[{\"id\":\"A\",\"content\":\"Elden Ring\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"Java\",\"reason\":\"This is not a game\"}]',1,'B',1,0,0),(31,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Basic','[RbaD1S1Ab]What\'s your favorite movie?','[{\"id\":\"A\",\"content\":\"The Shawshank Redemption\",\"reason\":\"I like The Shawshank Redemption\"},{\"id\":\"B\",\"content\":\"Braveheart\",\"reason\":\"I like Braveheart\"}]',1,'B',1,0,0),(32,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Basic','[RbaD1S1Ab]Which pet do you prefer, dog or cat?','[{\"id\":\"A\",\"content\":\"Cat\",\"reason\":\"I like cats\"},{\"id\":\"B\",\"content\":\"Dog\",\"reason\":\"I like dogs\"}]',1,'B',1,0,0),(33,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Basic','[RbaD1S1Aa]how many courses do you have?','[{\"id\":\"A\",\"content\":\"Four\",\"reason\":\"I have four courses\"},{\"id\":\"B\",\"content\":\"Five\",\"reason\":\"I have five courses\"}]',1,'A',1,0,0),(40,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Crew Leader','[RcrD1S1Aa]What is your name','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"yesyesyes\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'A',1,0,0),(41,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Crew Leader','[RcrD1S1Aa]Do you like playing games?','[{\"id\":\"A\",\"content\":\"Yes\",\"reason\":\"I like playing games\"},{\"id\":\"B\",\"content\":\"No\",\"reason\":\"I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.\"}]',1,'A',1,0,0),(42,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Crew Leader','[RcrD2S1Aa]Where are you from?','[{\"id\":\"A\",\"content\":\"Australia\",\"reason\":\"I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.\"},{\"id\":\"B\",\"content\":\"China\",\"reason\":\"I\'m from China\"}]',2,'A',1,0,0),(43,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Crew Leader','[RcrD1S1Ab]what is your favorite color?','[{\"id\":\"A\",\"content\":\"Red\",\"reason\":\"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.\"},{\"id\":\"B\",\"content\":\"Yellow\",\"reason\":\"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.\"}]',1,'B',1,0,0),(44,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Crew Leader','[RcrD1S1Aa]What is your specialisation?','[{\"id\":\"A\",\"content\":\"Machine Learning\",\"reason\":\"I like ML\"},{\"id\":\"B\",\"content\":\"Data Science\",\"reason\":\"I like DS\"}]',1,'A',1,0,0),(45,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Crew Leader','[RcrD1S1Aa]what is your gender?','[{\"id\":\"A\",\"content\":\"Male\",\"reason\":\"Male male male\"},{\"id\":\"B\",\"content\":\"Female\",\"reason\":\"Female Female Female\"}]',1,'A',1,0,0),(46,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Crew Leader','[RcrD1S1Aa]Do you prefer football or basketball?','[{\"id\":\"A\",\"content\":\"Football\",\"reason\":\"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.\"},{\"id\":\"B\",\"content\":\"Basketball\",\"reason\":\"I prefer basketball\"}]',1,'A',1,0,0),(47,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Crew Leader','[RcrD1S1Aa]Which type of movie do you prefer?','[{\"id\":\"A\",\"content\":\"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie\",\"reason\":\"I prefer action movie\"},{\"id\":\"B\",\"content\":\"Comedy\",\"reason\":\"I prefer comedy\"}]',1,'A',1,0,0),(48,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Crew Leader','[RcrD1S1Aa]Can I get HD in COMP8715?','[{\"id\":\"A\",\"content\":\"Of course\",\"reason\":\"Nice Job\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"Pleas try again\"}]',1,'A',1,0,0),(49,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Crew Leader','[RcrD1S1Aa]What is the best programming language?','[{\"id\":\"A\",\"content\":\"Java\",\"reason\":\"Congra\"},{\"id\":\"B\",\"content\":\"Python\",\"reason\":\"I don\'t agree!\"}]',1,'A',1,0,0),(50,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Crew Leader','[RcrD1S1Ab]What games do you play?','[{\"id\":\"A\",\"content\":\"Elden Ring\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"Java\",\"reason\":\"This is not a game\"}]',1,'B',1,0,0),(51,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Crew Leader','[RcrD1S1Ab]What\'s your favorite movie?','[{\"id\":\"A\",\"content\":\"The Shawshank Redemption\",\"reason\":\"I like The Shawshank Redemption\"},{\"id\":\"B\",\"content\":\"Braveheart\",\"reason\":\"I like Braveheart\"}]',1,'B',1,0,0),(52,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Crew Leader','[RcrD1S1Ab]Which pet do you prefer, dog or cat?','[{\"id\":\"A\",\"content\":\"Cat\",\"reason\":\"I like cats\"},{\"id\":\"B\",\"content\":\"Dog\",\"reason\":\"I like dogs\"}]',1,'B',1,0,0),(53,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Crew Leader','[RcrD1S1Aa]how many courses do you have?','[{\"id\":\"A\",\"content\":\"Four\",\"reason\":\"I have four courses\"},{\"id\":\"B\",\"content\":\"Five\",\"reason\":\"I have five courses\"}]',1,'A',1,0,0),(60,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Advanced','[RadD1S1Aa]What is your name','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"yesyesyes\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'A',1,0,0),(61,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Advanced','[RadD1S1Aa]Do you like playing games?','[{\"id\":\"A\",\"content\":\"Yes\",\"reason\":\"I like playing games\"},{\"id\":\"B\",\"content\":\"No\",\"reason\":\"I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.I don\'t like playing games.\"}]',1,'A',1,0,0),(62,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Advanced','[RadD2S1Aa]Where are you from?','[{\"id\":\"A\",\"content\":\"Australia\",\"reason\":\"I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.I\'m from Australia.\"},{\"id\":\"B\",\"content\":\"China\",\"reason\":\"I\'m from China\"}]',2,'A',1,0,0),(63,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Advanced','[RadD1S1Ab]what is your favorite color?','[{\"id\":\"A\",\"content\":\"Red\",\"reason\":\"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.\"},{\"id\":\"B\",\"content\":\"Yellow\",\"reason\":\"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.\"}]',1,'B',1,0,0),(64,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Advanced','[RadD1S1Aa]What is your specialisation?','[{\"id\":\"A\",\"content\":\"Machine Learning\",\"reason\":\"I like ML\"},{\"id\":\"B\",\"content\":\"Data Science\",\"reason\":\"I like DS\"}]',1,'A',1,0,0),(65,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Advanced','[RadD1S1Aa]what is your gender?','[{\"id\":\"A\",\"content\":\"Male\",\"reason\":\"Male male male\"},{\"id\":\"B\",\"content\":\"Female\",\"reason\":\"Female Female Female\"}]',1,'A',1,0,0),(66,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Advanced','[RadD1S1Aa]Do you prefer football or basketball?','[{\"id\":\"A\",\"content\":\"Football\",\"reason\":\"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.\"},{\"id\":\"B\",\"content\":\"Basketball\",\"reason\":\"I prefer basketball\"}]',1,'A',1,0,0),(67,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Advanced','[RadD1S1Aa]Which type of movie do you prefer?','[{\"id\":\"A\",\"content\":\"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie\",\"reason\":\"I prefer action movie\"},{\"id\":\"B\",\"content\":\"Comedy\",\"reason\":\"I prefer comedy\"}]',1,'A',1,0,0),(68,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Advanced','[RadD1S1Aa]Can I get HD in COMP8715?','[{\"id\":\"A\",\"content\":\"Of course\",\"reason\":\"Nice Job\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"Pleas try again\"}]',1,'A',1,0,0),(69,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Advanced','[RadD1S1Aa]What is the best programming language?','[{\"id\":\"A\",\"content\":\"Java\",\"reason\":\"Congra\"},{\"id\":\"B\",\"content\":\"Python\",\"reason\":\"I don\'t agree!\"}]',1,'A',1,0,0),(70,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Advanced','[RadD1S1Ab]What games do you play?','[{\"id\":\"A\",\"content\":\"Elden Ring\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"Java\",\"reason\":\"This is not a game\"}]',1,'B',1,0,0),(71,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Advanced','[RadD1S1Ab]What\'s your favorite movie?','[{\"id\":\"A\",\"content\":\"The Shawshank Redemption\",\"reason\":\"I like The Shawshank Redemption\"},{\"id\":\"B\",\"content\":\"Braveheart\",\"reason\":\"I like Braveheart\"}]',1,'B',1,0,0),(72,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Advanced','[RadD1S1Ab]Which pet do you prefer, dog or cat?','[{\"id\":\"A\",\"content\":\"Cat\",\"reason\":\"I like cats\"},{\"id\":\"B\",\"content\":\"Dog\",\"reason\":\"I like dogs\"}]',1,'B',1,0,0),(73,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Advanced','[RadD1S1Aa]how many courses do you have?','[{\"id\":\"A\",\"content\":\"Four\",\"reason\":\"I have four courses\"},{\"id\":\"B\",\"content\":\"Five\",\"reason\":\"I have five courses\"}]',1,'A',1,0,0),(83,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(84,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(85,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(86,'2022-03-28 16:44:59','2022-03-30 17:16:02','SINGLE','Volunteer','This is an updateTest','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',1,0,0),(87,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',0,0,0),(88,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',0,0,0),(89,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(90,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',0,0,0),(91,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(92,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',2,'B',1,0,0),(93,'2022-03-30 10:50:32','2022-03-30 14:50:21','SINGLE','Basic','This is an updateTest','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',0,0,0),(94,'2022-03-30 10:50:32','2022-03-30 14:50:18','SINGLE','Basic','This is an updateTest','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',0,0,0),(95,'2022-03-30 10:50:32','2022-03-30 14:50:12','SINGLE','Basic','This is an updateTest','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',0,0,0),(96,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(97,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(98,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(99,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(100,'2022-03-30 10:50:32','2022-03-30 16:25:13','SINGLE','Volunteer','This is an updateQuestion API Test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',0,0,0),(101,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(102,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(103,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(104,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(105,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(106,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(107,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(108,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(109,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(110,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(111,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(112,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(113,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(114,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(115,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(116,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(117,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(118,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(119,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(120,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(121,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(122,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(123,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(124,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(125,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(126,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(128,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(129,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(130,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(131,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(132,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(133,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(134,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(135,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',0,0,0),(136,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',5,'B',1,0,0),(137,'2022-04-10 13:01:37','2022-04-20 10:56:50','SINGLE','Volunteer','This is an https updateQuestion API Test','[{\"id\":\"A\",\"content\":\"yes\",\"reason\":\"Congratulation\"},{\"id\":\"B\",\"content\":\"no\",\"reason\":\"nonono\"}]',1,'B',0,0,0);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Basic',1,'2021-04-10 10:03:32','2021-04-10 10:03:32','basic'),(2,'Driver',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','driver'),(3,'Crew Leader',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','crewLeader'),(4,'Advanced',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','advanced');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenancy_config`
--

DROP TABLE IF EXISTS `tenancy_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenancy_config` (
  `id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(9) DEFAULT NULL,
  `title` varchar(9) DEFAULT NULL,
  `font` varchar(10) DEFAULT NULL,
  `logo` varchar(0) DEFAULT NULL,
  `navbar_colour` varchar(7) DEFAULT NULL,
  `background_colour` varchar(0) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `logo_mimetype` varchar(9) DEFAULT NULL,
  `logo_name` varchar(12) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenancy_config`
--

LOCK TABLES `tenancy_config` WRITE;
/*!40000 ALTER TABLE `tenancy_config` DISABLE KEYS */;
INSERT INTO `tenancy_config` VALUES (32,'Default','FireApp','Bebas Neue','','#eb2424','',1,'2021-10-11 11:43:44','2021-10-11 11:43:44','',''),(104,'Microsoft','Microsoft','Dosis','','#4a90e2','',1,'2021-10-18 18:07:28','2021-10-18 18:07:28','image/png','download.png');
/*!40000 ALTER TABLE `tenancy_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unavailability_time`
--

DROP TABLE IF EXISTS `unavailability_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unavailability_time` (
  `eventId` tinyint(6) NOT NULL AUTO_INCREMENT,
  `userId` tinyint(4) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `periodicity` tinyint(4) DEFAULT NULL,
  `start` DATETIME DEFAULT NULL,
  `end` DATETIME DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY(eventId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unavailability_time`
--

LOCK TABLES `unavailability_time` WRITE;
/*!40000 ALTER TABLE `unavailability_time` DISABLE KEYS */;
INSERT INTO `unavailability_time` VALUES (1,6,'study',1,'2022-05-06 11:28:00','2022-05-06 20:00:00',0);
/*!40000 ALTER TABLE `unavailability_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(10) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `incorrect_password_count` tinyint(4) DEFAULT NULL,
  `last_sign_in_datetime` DATETIME DEFAULT NULL,
  `first_name` varchar(12) DEFAULT NULL,
  `last_name` varchar(11) DEFAULT NULL,
  `mobile_number` varchar(23) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `preferred_hours` smallint(6) DEFAULT NULL,
  `experience_years` tinyint(4) DEFAULT NULL,
  `possible_roles` varchar(21) DEFAULT NULL,
  `qualifications` varchar(18) DEFAULT NULL,
  `availabilities` varchar(201) DEFAULT NULL,
  `last_update_datetime` DATETIME DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `diet` varchar(10) DEFAULT NULL,
  `allergy` varchar(117) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'ROOT_ADMIN','$2a$12$BEOqNVY7cHlMztWNra87nuHAHqvex/ZgFfPmq5ZNNi4DxFHyflHau',0,'2021-09-27 08:38:28','admin','mcAdmin','admin','admin',4,0,'[]','[1, 2, 3]','{\"Friday\": [], \"Monday\": [], \"Sunday\": [[11, 12.5]], \"Tuesday\": [], \"Saturday\": [], \"Thursday\": [], \"Wednesday\": []}','2021-03-20 15:56:59','2021-03-20 15:56:59','','meals','');
INSERT INTO `user` VALUES (6,'VOLUNTEER','$2a$12$BEOqNVY7cHlMztWNra87nuHAHqvex/ZgFfPmq5ZNNi4DxFHyflHau',0,'2021-09-27 08:38:28','volunteer1','volunteer1','volunteer1','volunteer1',4,0,'[]','[1, 2, 3]','{\"Friday\": [], \"Monday\": [], \"Sunday\": [[11, 12.5]], \"Tuesday\": [], \"Saturday\": [], \"Thursday\": [], \"Wednesday\": []}','2021-03-20 15:56:59','2021-03-20 15:56:59','','meals','');
INSERT INTO `user` VALUES (7,'VOLUNTEER','$2a$12$BEOqNVY7cHlMztWNra87nuHAHqvex/ZgFfPmq5ZNNi4DxFHyflHau',0,'2021-09-27 08:38:28','volunteer2','volunteer2','volunteer2','volunteer2',4,0,'[]','[1, 2, 3]','{\"Friday\": [], \"Monday\": [], \"Sunday\": [[11, 12.5]], \"Tuesday\": [], \"Saturday\": [], \"Thursday\": [], \"Wednesday\": []}','2021-03-20 15:56:59','2021-03-20 15:56:59','','meals','');
INSERT INTO `user` VALUES (8,'VOLUNTEER','$2a$12$BEOqNVY7cHlMztWNra87nuHAHqvex/ZgFfPmq5ZNNi4DxFHyflHau',0,'2021-09-27 08:38:28','Volunteer','McVolunteer','02191203123','volunteer',0,0,'[\"Basic\", \"Driver\"]','[1, 2, 3, 4, 5, 6]','{\"Friday\": [], \"Monday\": [], \"Sunday\": [], \"Tuesday\": [], \"Saturday\": [], \"Thursday\": [], \"Wednesday\": []}','2021-04-02 12:49:30','2021-04-02 12:49:30','','meals','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `created_datetime` DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (33,5,1,'2021-04-10 11:07:56'),(34,7,1,'2021-04-10 11:07:56'),(35,8,1,'2021-04-10 11:07:56'),(36,9,1,'2021-04-10 11:07:56'),(37,10,1,'2021-04-10 11:07:56'),(38,12,1,'2021-04-10 11:07:56'),(39,13,1,'2021-04-10 11:07:56'),(40,18,1,'2021-04-10 11:07:56'),(42,4,2,'2021-04-10 11:13:27'),(55,19,1,'2021-04-10 11:23:18'),(56,19,2,'2021-04-10 11:23:18'),(57,19,3,'2021-04-10 11:23:18'),(58,19,4,'2021-04-10 11:23:18'),(75,8,3,'2021-04-10 16:40:12'),(76,7,3,'2021-04-10 16:40:12'),(77,7,2,'2021-04-10 16:40:12'),(87,13,3,'2021-04-11 12:58:43'),(93,7,4,'2021-04-11 12:58:43'),(98,21,1,'2021-04-11 02:59:37'),(100,21,3,'2021-04-11 02:59:37'),(106,21,4,'2021-04-11 02:59:37'),(109,4,3,'2021-04-17 12:43:47'),(110,21,2,'2021-04-18 07:10:46'),(115,26,1,'2022-05-02 08:55:47'),(116,26,2,'2022-05-02 08:55:47'),(117,26,3,'2022-05-02 08:55:47'),(118,26,4,'2022-05-02 08:55:47'),(122,4,1,'2022-05-09 13:54:56'),(124,5,3,'2023-05-07 06:35:11');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_request`
--

DROP TABLE IF EXISTS `shift_request`;
CREATE TABLE `shift_request` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `title` VARCHAR(29) NOT NULL,
  `from` DATETIME NOT NULL,
  `to` DATETIME NOT NULL,
  `status` VARCHAR(12) NOT NULL DEFAULT 'waiting',
  `last_update_datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_shift_request_user` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `shift_request_volunteer`
--

DROP TABLE IF EXISTS `shift_request_volunteer`;
CREATE TABLE `shift_request_volunteer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `request_id` INT NOT NULL,
  `status` VARCHAR(12) NOT NULL DEFAULT 'pending',
  `last_update_datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_shift_request_volunteer_user` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`),
  CONSTRAINT `fk_shift_request_volunteer_request` FOREIGN KEY (`request_id`) REFERENCES `shift_request`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2022-12-29 11:52:14
