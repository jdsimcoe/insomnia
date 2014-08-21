-- MySQL dump 10.13  Distrib 5.6.13, for osx10.9 (x86_64)
--
-- Host: localhost    Database: saplings
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `sym_authors`
--

DROP TABLE IF EXISTS `sym_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '0000-00-00 00:00:00',
  `user_type` enum('author','manager','developer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_authors`
--

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;
INSERT INTO `sym_authors` VALUES (1,'jdsimcoe','PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==','Jonathan','Simcoe','jonathan@simko.io','2013-11-29 15:04:51','developer','yes','/blueprints/sections/','yes',NULL),(2,'jdirksen','PBKDF2v1|10000|f8e63824d306d7c454bd|7B9+m/ua8bW2zy+wEQ5yZ+JHjgPe72dhUp90GLoXlqfbdmtvlpSNCA==','James','Dirksen','james@dirksen.com',NULL,'author','no','15','yes',NULL),(3,'ddirksen','PBKDF2v1|10000|2a48d988afce2a3c0453|vVISWz2Lhj0xBgEUGPoS1Ed1wb+w5ysJ2t76oOBqBVeFaumYRvruJw==','Dana','Dirksen','dana@dirksen.com',NULL,'author','no','15','yes',NULL),(5,'jklein','PBKDF2v1|10000|23b43f9a8554efbd9ad2|+EtcczsjNO9ZusUwTCyCfm/39djp2UGae3Kq1/V1oV4GaOSvcVxWeA==','Jill','Klein','jill@songsforsaplings.com','2013-11-21 11:07:40','author','no','15','yes',NULL),(6,'brian','PBKDF2v1|10000|bff1cdcaf2aab4de4050|1zrXufAjV3JDqUMmGPrC95+VTlaQtnkemQBQGfq/YBYGKa4aI2vqfQ==','Brian','Zerangue','brian.zerangue@gmail.com','2013-11-20 09:40:14','developer','no','15','no',NULL);
/*!40000 ALTER TABLE `sym_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_cache`
--

DROP TABLE IF EXISTS `sym_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_cache`
--

LOCK TABLES `sym_cache` WRITE;
/*!40000 ALTER TABLE `sym_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries`
--

DROP TABLE IF EXISTS `sym_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `modification_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries`
--

LOCK TABLES `sym_entries` WRITE;
/*!40000 ALTER TABLE `sym_entries` DISABLE KEYS */;
INSERT INTO `sym_entries` VALUES (50,7,1,'2013-09-20 13:33:28','2013-09-20 20:33:28','2013-11-20 10:23:57','2013-11-20 18:23:57'),(53,13,1,'2013-09-20 14:04:39','2013-09-20 21:04:39','2013-11-20 20:04:52','2013-11-21 04:04:52'),(96,5,1,'2013-11-01 11:53:01','2013-11-01 18:53:01','2013-11-15 16:00:33','2013-11-16 00:00:33'),(80,5,1,'2013-10-28 22:05:31','2013-10-29 05:05:31','2013-11-15 16:00:26','2013-11-16 00:00:26'),(79,5,1,'2013-10-28 22:05:05','2013-10-29 05:05:05','2013-11-15 16:00:18','2013-11-16 00:00:18'),(78,7,1,'2013-10-28 15:43:44','2013-10-28 22:43:44','2013-10-28 15:43:44','2013-10-28 22:43:44'),(49,7,1,'2013-09-20 12:30:37','2013-09-20 19:30:37','2013-11-18 16:48:58','2013-11-19 00:48:58'),(48,7,1,'2013-09-20 12:19:58','2013-09-20 19:19:58','2013-11-18 16:57:07','2013-11-19 00:57:07'),(46,7,1,'2013-09-20 10:13:38','2013-09-20 17:13:38','2013-11-20 09:31:01','2013-11-20 17:31:01'),(52,13,1,'2013-09-20 14:02:48','2013-09-20 21:02:48','2013-11-20 20:01:21','2013-11-21 04:01:21'),(44,7,1,'2013-09-19 15:43:09','2013-09-19 22:43:09','2013-11-18 20:27:10','2013-11-19 04:27:10'),(113,7,1,'2013-11-18 20:21:37','2013-11-19 04:21:37','2013-11-20 09:33:46','2013-11-20 17:33:46'),(76,15,1,'2013-10-15 10:50:18','2013-10-15 17:50:18','2013-11-18 15:00:13','2013-11-18 23:00:13'),(75,5,1,'2013-10-15 10:49:41','2013-10-15 17:49:41','2013-11-15 16:00:07','2013-11-16 00:00:07'),(74,17,1,'2013-10-08 14:38:32','2013-10-08 21:38:32','2013-11-20 10:07:48','2013-11-20 18:07:48'),(100,5,1,'2013-11-14 12:29:33','2013-11-14 20:29:33','2013-11-14 12:29:33','2013-11-14 20:29:33'),(73,17,1,'2013-10-08 14:34:48','2013-10-08 21:34:48','2013-11-20 10:08:02','2013-11-20 18:08:02'),(91,15,1,'2013-11-01 10:24:53','2013-11-01 17:24:53','2013-11-18 15:00:29','2013-11-18 23:00:29'),(92,15,1,'2013-11-01 10:43:21','2013-11-01 17:43:21','2013-11-18 15:01:06','2013-11-18 23:01:06'),(93,15,1,'2013-11-01 10:54:32','2013-11-01 17:54:32','2013-11-18 15:01:23','2013-11-18 23:01:23'),(94,15,1,'2013-11-01 10:59:52','2013-11-01 17:59:52','2013-11-18 15:01:32','2013-11-18 23:01:32'),(68,15,1,'2013-10-07 13:55:51','2013-10-07 20:55:51','2013-11-19 11:23:14','2013-11-19 19:23:14'),(67,5,1,'2013-10-07 13:54:03','2013-10-07 20:54:03','2013-10-07 13:54:06','2013-10-07 20:54:06'),(66,15,1,'2013-10-03 11:30:18','2013-10-03 18:30:18','2013-11-19 11:23:00','2013-11-19 19:23:00'),(101,18,1,'2013-11-14 13:30:10','2013-11-14 21:30:10','2013-11-21 12:16:41','2013-11-21 20:16:41'),(64,5,1,'2013-09-23 11:03:23','2013-09-23 18:03:23','2013-10-02 20:00:35','2013-10-03 03:00:35'),(63,14,1,'2013-09-20 15:26:33','2013-09-20 22:26:33','2013-11-19 10:45:56','2013-11-19 18:45:56'),(51,5,1,'2013-09-20 14:00:04','2013-09-20 21:00:04','2013-09-20 14:00:04','2013-09-20 21:00:04'),(62,5,1,'2013-09-20 15:26:31','2013-09-20 22:26:31','2013-09-20 15:26:31','2013-09-20 22:26:31'),(61,14,1,'2013-09-20 15:26:06','2013-09-20 22:26:06','2013-11-19 10:45:38','2013-11-19 18:45:38'),(95,15,1,'2013-11-01 11:03:08','2013-11-01 18:03:08','2013-11-18 15:01:42','2013-11-18 23:01:42'),(82,5,1,'2013-10-28 22:06:11','2013-10-29 05:06:11','2013-11-15 16:00:40','2013-11-16 00:00:40'),(83,5,1,'2013-10-28 22:06:51','2013-10-29 05:06:51','2013-11-15 16:01:02','2013-11-16 00:01:02'),(84,17,1,'2013-10-28 22:48:35','2013-10-29 05:48:35','2013-11-20 10:08:31','2013-11-20 18:08:31'),(85,17,1,'2013-10-28 22:50:54','2013-10-29 05:50:54','2013-11-20 10:08:50','2013-11-20 18:08:50'),(86,17,1,'2013-10-28 22:52:18','2013-10-29 05:52:18','2013-11-20 10:09:08','2013-11-20 18:09:08'),(87,17,1,'2013-10-28 22:53:34','2013-10-29 05:53:34','2013-11-21 14:13:27','2013-11-21 22:13:27'),(88,17,1,'2013-10-29 13:07:09','2013-10-29 20:07:09','2013-11-20 10:09:42','2013-11-20 18:09:42'),(90,7,1,'2013-10-31 16:40:18','2013-10-31 23:40:18','2013-11-20 10:23:27','2013-11-20 18:23:27'),(97,7,1,'2013-11-13 16:03:08','2013-11-14 00:03:08','2013-11-20 09:53:36','2013-11-20 17:53:36'),(98,5,1,'2013-11-13 21:08:17','2013-11-14 05:08:17','2013-11-13 21:14:47','2013-11-14 05:14:47'),(102,18,1,'2013-11-14 13:33:31','2013-11-14 21:33:31','2013-11-19 16:26:17','2013-11-20 00:26:17'),(103,5,1,'2013-11-15 12:38:47','2013-11-15 20:38:47','2013-11-15 12:38:47','2013-11-15 20:38:47'),(104,5,1,'2013-11-15 16:39:05','2013-11-16 00:39:05','2013-11-18 16:48:55','2013-11-19 00:48:55'),(105,5,1,'2013-11-15 16:42:20','2013-11-16 00:42:20','2013-11-15 16:42:27','2013-11-16 00:42:27'),(106,5,1,'2013-11-15 16:46:06','2013-11-16 00:46:06','2013-11-15 16:46:06','2013-11-16 00:46:06'),(107,5,1,'2013-11-15 16:50:20','2013-11-16 00:50:20','2013-11-15 16:50:20','2013-11-16 00:50:20'),(108,5,1,'2013-11-15 16:59:41','2013-11-16 00:59:41','2013-11-15 16:59:41','2013-11-16 00:59:41'),(109,5,1,'2013-11-16 14:23:26','2013-11-16 22:23:26','2013-11-20 14:14:32','2013-11-20 22:14:32'),(110,5,1,'2013-11-16 14:28:58','2013-11-16 22:28:58','2013-11-16 14:28:58','2013-11-16 22:28:58'),(111,5,1,'2013-11-18 16:40:08','2013-11-19 00:40:08','2013-11-18 16:40:08','2013-11-19 00:40:08'),(112,5,1,'2013-11-18 16:59:03','2013-11-19 00:59:03','2013-11-18 16:59:03','2013-11-19 00:59:03'),(114,5,1,'2013-11-19 09:46:02','2013-11-19 17:46:02','2013-11-19 13:43:06','2013-11-19 21:43:06'),(115,7,1,'2013-11-19 09:47:04','2013-11-19 17:47:04','2013-11-20 10:09:18','2013-11-20 18:09:18'),(116,5,1,'2013-11-19 10:08:45','2013-11-19 18:08:45','2013-11-19 10:08:45','2013-11-19 18:08:45'),(117,14,1,'2013-11-19 10:08:49','2013-11-19 18:08:49','2013-11-19 10:45:12','2013-11-19 18:45:12'),(118,7,1,'2013-11-19 11:05:28','2013-11-19 19:05:28','2013-11-19 11:08:00','2013-11-19 19:08:00'),(119,5,1,'2013-11-20 11:16:36','2013-11-20 19:16:36','2013-11-21 14:48:21','2013-11-21 22:48:21'),(120,5,1,'2013-11-20 19:57:19','2013-11-21 03:57:19','2013-11-21 15:38:08','2013-11-21 23:38:08');
/*!40000 ALTER TABLE `sym_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_100`
--

DROP TABLE IF EXISTS `sym_entries_data_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_100` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_100`
--

LOCK TABLES `sym_entries_data_100` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_100` DISABLE KEYS */;
INSERT INTO `sym_entries_data_100` VALUES (89,73,'released','Released'),(90,84,'0','0'),(91,85,'unplanned','Unplanned'),(92,86,'unplanned','Unplanned'),(103,87,'unplanned','Unplanned'),(94,88,'unplanned','Unplanned'),(88,74,'0','0');
/*!40000 ALTER TABLE `sym_entries_data_100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_101`
--

DROP TABLE IF EXISTS `sym_entries_data_101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_101` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_101`
--

LOCK TABLES `sym_entries_data_101` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_101` DISABLE KEYS */;
INSERT INTO `sym_entries_data_101` VALUES (89,73,'released','Released'),(91,85,'unplanned','Unplanned'),(92,86,'unplanned','Unplanned'),(103,87,'unplanned','Unplanned'),(90,84,'unplanned','Unplanned'),(94,88,'unplanned','Unplanned'),(88,74,'unplanned','Unplanned');
/*!40000 ALTER TABLE `sym_entries_data_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_102`
--

DROP TABLE IF EXISTS `sym_entries_data_102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_102` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_102`
--

LOCK TABLES `sym_entries_data_102` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_102` DISABLE KEYS */;
INSERT INTO `sym_entries_data_102` VALUES (89,73,'released','Released'),(90,84,'unplanned','Unplanned'),(91,85,'unplanned','Unplanned'),(92,86,'unplanned','Unplanned'),(103,87,'unplanned','Unplanned'),(94,88,'unplanned','Unplanned'),(88,74,'unplanned','Unplanned');
/*!40000 ALTER TABLE `sym_entries_data_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_103`
--

DROP TABLE IF EXISTS `sym_entries_data_103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_103` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_103`
--

LOCK TABLES `sym_entries_data_103` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_103` DISABLE KEYS */;
INSERT INTO `sym_entries_data_103` VALUES (89,73,'released','Released'),(90,84,'unplanned','Unplanned'),(91,85,'unplanned','Unplanned'),(92,86,'unplanned','Unplanned'),(103,87,'unplanned','Unplanned'),(94,88,'unplanned','Unplanned'),(88,74,'unplanned','Unplanned');
/*!40000 ALTER TABLE `sym_entries_data_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_104`
--

DROP TABLE IF EXISTS `sym_entries_data_104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_104` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_104`
--

LOCK TABLES `sym_entries_data_104` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_104` DISABLE KEYS */;
INSERT INTO `sym_entries_data_104` VALUES (61,74,'http-musicsongsforsaplingscom-album-questions-et-r-ponses-vol-1-dieu-et-la-cr-ation','http://music.songsforsaplings.com/album/questions-et-r-ponses-vol-1-dieu-et-la-cr-ation'),(64,85,'http-musicsongsforsaplingscom-album-1','http://music.songsforsaplings.com/album/1'),(62,73,'music-volume-1-god-and-creation-content','/music/volume-1-god-and-creation/#content'),(63,84,'http-musicsongsforsaplingscom-album-mafunso-ndi-mayankho-vol-1-mulungu-ndi-chilengedwe-2','http://music.songsforsaplings.com/album/mafunso-ndi-mayankho-vol-1-mulungu-ndi-chilengedwe-2');
/*!40000 ALTER TABLE `sym_entries_data_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_105`
--

DROP TABLE IF EXISTS `sym_entries_data_105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_105` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_105`
--

LOCK TABLES `sym_entries_data_105` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_105` DISABLE KEYS */;
INSERT INTO `sym_entries_data_105` VALUES (31,73,'music-volume-2-fall-and-salvation-content','/music/volume-2-fall-and-salvation/#content');
/*!40000 ALTER TABLE `sym_entries_data_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_106`
--

DROP TABLE IF EXISTS `sym_entries_data_106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_106` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_106`
--

LOCK TABLES `sym_entries_data_106` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_106` DISABLE KEYS */;
INSERT INTO `sym_entries_data_106` VALUES (14,73,'music-volume-3-christ-and-his-work-content','/music/volume-3-christ-and-his-work/#content');
/*!40000 ALTER TABLE `sym_entries_data_106` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_107`
--

DROP TABLE IF EXISTS `sym_entries_data_107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_107` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_107`
--

LOCK TABLES `sym_entries_data_107` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_107` DISABLE KEYS */;
INSERT INTO `sym_entries_data_107` VALUES (14,73,'music-volume-4-the-word-of-god-content','/music/volume-4-the-word-of-god/#content');
/*!40000 ALTER TABLE `sym_entries_data_107` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_108`
--

DROP TABLE IF EXISTS `sym_entries_data_108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_108` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_108`
--

LOCK TABLES `sym_entries_data_108` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_108` DISABLE KEYS */;
INSERT INTO `sym_entries_data_108` VALUES (14,73,'music-volume-5-prayer-and-sacraments-content','/music/volume-5-prayer-and-sacraments/#content');
/*!40000 ALTER TABLE `sym_entries_data_108` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_109`
--

DROP TABLE IF EXISTS `sym_entries_data_109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_109` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_109`
--

LOCK TABLES `sym_entries_data_109` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_109` DISABLE KEYS */;
INSERT INTO `sym_entries_data_109` VALUES (14,73,'music-volume-6-christ-and-his-return-content','/music/volume-6-christ-and-his-return/#content');
/*!40000 ALTER TABLE `sym_entries_data_109` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_110`
--

DROP TABLE IF EXISTS `sym_entries_data_110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_110` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_110`
--

LOCK TABLES `sym_entries_data_110` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_110` DISABLE KEYS */;
INSERT INTO `sym_entries_data_110` VALUES (89,73,'no'),(88,74,'no'),(90,84,'no'),(91,85,'no'),(92,86,'no'),(103,87,'no'),(94,88,'no');
/*!40000 ALTER TABLE `sym_entries_data_110` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_111`
--

DROP TABLE IF EXISTS `sym_entries_data_111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_111` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_111`
--

LOCK TABLES `sym_entries_data_111` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_111` DISABLE KEYS */;
INSERT INTO `sym_entries_data_111` VALUES (89,73,'no'),(88,74,'no'),(90,84,'no'),(91,85,'no'),(92,86,'no'),(103,87,'no'),(94,88,'no');
/*!40000 ALTER TABLE `sym_entries_data_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_118`
--

DROP TABLE IF EXISTS `sym_entries_data_118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_118` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_118`
--

LOCK TABLES `sym_entries_data_118` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_118` DISABLE KEYS */;
INSERT INTO `sym_entries_data_118` VALUES (88,73,1),(87,74,2),(89,84,3),(90,85,4),(91,86,5),(102,87,6),(93,88,7);
/*!40000 ALTER TABLE `sym_entries_data_118` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_119`
--

DROP TABLE IF EXISTS `sym_entries_data_119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_119` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_119`
--

LOCK TABLES `sym_entries_data_119` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_119` DISABLE KEYS */;
INSERT INTO `sym_entries_data_119` VALUES (29,86,'scheduled-for-release-spring-2014','Scheduled for release Spring 2014'),(40,87,'scheduled-for-spring-2014','Scheduled for Spring 2014'),(31,88,'scheduled-for-spring-2014','Scheduled for Spring 2014');
/*!40000 ALTER TABLE `sym_entries_data_119` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_120`
--

DROP TABLE IF EXISTS `sym_entries_data_120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_120` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_120`
--

LOCK TABLES `sym_entries_data_120` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_120` DISABLE KEYS */;
INSERT INTO `sym_entries_data_120` VALUES (40,74,'scheduled-for-release-spring-2014','Scheduled for release Spring 2014'),(42,85,'tentatively-scheduled-for-2015','Tentatively scheduled for 2015'),(43,86,'scheduled-for-release-spring-2014','Scheduled for release Spring 2014'),(41,84,'scheduled-for-release-spring-2014','Scheduled for release Spring 2014');
/*!40000 ALTER TABLE `sym_entries_data_120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_121`
--

DROP TABLE IF EXISTS `sym_entries_data_121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_121` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_121`
--

LOCK TABLES `sym_entries_data_121` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_121` DISABLE KEYS */;
INSERT INTO `sym_entries_data_121` VALUES (33,74,'tentatively-scheduled-for-2015','Tentatively scheduled for 2015'),(34,84,'tentatively-scheduled-for-2016','Tentatively scheduled for 2016');
/*!40000 ALTER TABLE `sym_entries_data_121` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_122`
--

DROP TABLE IF EXISTS `sym_entries_data_122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_122` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_122`
--

LOCK TABLES `sym_entries_data_122` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_122` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_entries_data_122` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_123`
--

DROP TABLE IF EXISTS `sym_entries_data_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_123` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_123`
--

LOCK TABLES `sym_entries_data_123` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_123` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_entries_data_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_124`
--

DROP TABLE IF EXISTS `sym_entries_data_124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_124` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_124`
--

LOCK TABLES `sym_entries_data_124` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_124` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_entries_data_124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_125`
--

DROP TABLE IF EXISTS `sym_entries_data_125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_125` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_125`
--

LOCK TABLES `sym_entries_data_125` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_125` DISABLE KEYS */;
INSERT INTO `sym_entries_data_125` VALUES (27,63,'<iframe src=\"//player.vimeo.com/video/79730026\" width=\"500\" height=\"281\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href=\"http://vimeo.com/79730026\">He is the Lord: Recording in Malawi</a> from <a href=\"http://vimeo.com/saplings\">Songs for Saplings</a> on <a href=\"https://vimeo.com\">Vimeo</a>.</p>',NULL),(26,61,'<iframe src=\"//player.vimeo.com/video/79730115\" width=\"500\" height=\"283\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href=\"http://vimeo.com/79730115\">Singing the Gospel to the World</a> from <a href=\"http://vimeo.com/saplings\">Songs for Saplings</a> on <a href=\"https://vimeo.com\">Vimeo</a>.</p>',NULL),(24,117,'<iframe src=\"//player.vimeo.com/video/79800870\" width=\"500\" height=\"281\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href=\"http://vimeo.com/79800870\">The Lord\'s Prayer Lyrics</a> from <a href=\"http://vimeo.com/saplings\">Songs for Saplings</a> on <a href=\"https://vimeo.com\">Vimeo</a>.</p>',NULL);
/*!40000 ALTER TABLE `sym_entries_data_125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_126`
--

DROP TABLE IF EXISTS `sym_entries_data_126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_126` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_126`
--

LOCK TABLES `sym_entries_data_126` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_126` DISABLE KEYS */;
INSERT INTO `sym_entries_data_126` VALUES (69,85,NULL,'\n'),(68,84,NULL,'\n'),(67,73,NULL,'\n'),(70,86,NULL,'\n'),(72,88,NULL,'\n'),(66,74,NULL,'\n'),(81,87,NULL,'\n');
/*!40000 ALTER TABLE `sym_entries_data_126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_127`
--

DROP TABLE IF EXISTS `sym_entries_data_127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_127` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_127`
--

LOCK TABLES `sym_entries_data_127` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_127` DISABLE KEYS */;
INSERT INTO `sym_entries_data_127` VALUES (69,85,'yes'),(68,84,'yes'),(67,73,'no'),(66,74,'no'),(70,86,'no'),(81,87,'no'),(72,88,'no');
/*!40000 ALTER TABLE `sym_entries_data_127` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_128`
--

DROP TABLE IF EXISTS `sym_entries_data_128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_128` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_128`
--

LOCK TABLES `sym_entries_data_128` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_128` DISABLE KEYS */;
INSERT INTO `sym_entries_data_128` VALUES (65,73,75),(64,74,75),(66,84,75),(67,85,75),(68,86,75),(79,87,75),(70,88,75);
/*!40000 ALTER TABLE `sym_entries_data_128` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_129`
--

DROP TABLE IF EXISTS `sym_entries_data_129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_129` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_129`
--

LOCK TABLES `sym_entries_data_129` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_129` DISABLE KEYS */;
INSERT INTO `sym_entries_data_129` VALUES (65,73,79),(64,74,79),(66,84,79),(67,85,79),(68,86,79),(79,87,79),(70,88,79);
/*!40000 ALTER TABLE `sym_entries_data_129` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_130`
--

DROP TABLE IF EXISTS `sym_entries_data_130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_130` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_130`
--

LOCK TABLES `sym_entries_data_130` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_130` DISABLE KEYS */;
INSERT INTO `sym_entries_data_130` VALUES (65,73,80),(64,74,80),(66,84,80),(67,85,80),(68,86,80),(79,87,80),(70,88,80);
/*!40000 ALTER TABLE `sym_entries_data_130` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_131`
--

DROP TABLE IF EXISTS `sym_entries_data_131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_131` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_131`
--

LOCK TABLES `sym_entries_data_131` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_131` DISABLE KEYS */;
INSERT INTO `sym_entries_data_131` VALUES (65,73,96),(64,74,96),(66,84,96),(67,85,96),(68,86,96),(79,87,96),(70,88,96);
/*!40000 ALTER TABLE `sym_entries_data_131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_132`
--

DROP TABLE IF EXISTS `sym_entries_data_132`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_132` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_132`
--

LOCK TABLES `sym_entries_data_132` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_132` DISABLE KEYS */;
INSERT INTO `sym_entries_data_132` VALUES (65,73,82),(64,74,82),(66,84,82),(67,85,82),(68,86,82),(79,87,82),(70,88,82);
/*!40000 ALTER TABLE `sym_entries_data_132` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_133`
--

DROP TABLE IF EXISTS `sym_entries_data_133`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_133` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_133`
--

LOCK TABLES `sym_entries_data_133` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_133` DISABLE KEYS */;
INSERT INTO `sym_entries_data_133` VALUES (65,73,83),(64,74,83),(66,84,83),(67,85,83),(68,86,83),(79,87,83),(70,88,83);
/*!40000 ALTER TABLE `sym_entries_data_133` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_134`
--

DROP TABLE IF EXISTS `sym_entries_data_134`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_134` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_134`
--

LOCK TABLES `sym_entries_data_134` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_134` DISABLE KEYS */;
INSERT INTO `sym_entries_data_134` VALUES (18,101,'donation','Donation'),(17,102,'featured','Featured');
/*!40000 ALTER TABLE `sym_entries_data_134` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_135`
--

DROP TABLE IF EXISTS `sym_entries_data_135`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_135` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_135`
--

LOCK TABLES `sym_entries_data_135` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_135` DISABLE KEYS */;
INSERT INTO `sym_entries_data_135` VALUES (18,101,'<div class=\"donation-bar\">\r\n  <h4>Support Our Cause</h4>\r\n  <p class=\"sub-lead\">Help us bring rich, robust theology to the next generation of Christians through music. Our ministry is solely supported by the generous participation of those in the body of Christ.</p>\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      <div class=\"col-sm-4 col-sm-offset-4\">\r\n        <a href=\"/donate\" class=\"btn btn-large btn-block accent\">Donate Now</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>','<div class=\"donation-bar\">\n  <h4>Support Our Cause</h4>\n  <p class=\"sub-lead\">Help us bring rich, robust theology to the next generation of Christians through music. Our ministry is solely supported by the generous participation of those in the body of Christ.</p>\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-4 col-sm-offset-4\">\n        <a href=\"/donate\" class=\"btn btn-large btn-block accent\">Donate Now</a>\n      </div>\n    </div>\n  </div>\n</div>\n'),(17,102,'<div class=\"row\">\r\n  <div class=\"col-lg-12\">\r\n    <h4>Featured In:</h4>\r\n  </div>\r\n</div>\r\n<div class=\"row featured-links\">\r\n  <div class=\"col-sm-3 col-sm-offset-4\">\r\n    <a href=\"/ncc\" class=\"left ncc first\">\r\n      <img src=\"/workspace/assets/img/ncc_web.png\" alt=\"New City Catechism\" width=\"80%\" class=\"img-responsive\" />\r\n    </a>\r\n  </div>\r\n  <!--<div class=\"col-sm-3\">\r\n    <a href=\"http://thegospelcoalition.org/sfs\" class=\"right tgc\" target=\"_blank\">\r\n      <img src=\"/workspace/assets/img/tgc_web.png\" alt=\"The Gospel Coalition\" width=\"90%\" class=\"img-responsive\" />\r\n    </a>\r\n  </div> -->\r\n  <div class=\"col-sm-3\">\r\n    <a href=\"/occ\" class=\"occ last\">\r\n      <img src=\"/workspace/assets/img/occ_web.png\" alt=\"Operation Christmas Child\" width=\"45%\" class=\"img-responsive\" />\r\n    </a>\r\n  </div>\r\n</div>\r\n<hr/>','<div class=\"row\">\n  <div class=\"col-lg-12\">\n    <h4>Featured In:</h4>\n  </div>\n</div>\n\n<div class=\"row featured-links\">\n  <div class=\"col-sm-3 col-sm-offset-4\">\n    <a href=\"/ncc\" class=\"left ncc first\">\n      <img src=\"/workspace/assets/img/ncc_web.png\" alt=\"New City Catechism\" width=\"80%\" class=\"img-responsive\" />\n    </a>\n  </div>\n  <!--<div class=\"col-sm-3\">\n    <a href=\"http://thegospelcoalition.org/sfs\" class=\"right tgc\" target=\"_blank\">\n      <img src=\"/workspace/assets/img/tgc_web.png\" alt=\"The Gospel Coalition\" width=\"90%\" class=\"img-responsive\" />\n    </a>\n  </div> -->\n  <div class=\"col-sm-3\">\n    <a href=\"/occ\" class=\"occ last\">\n      <img src=\"/workspace/assets/img/occ_web.png\" alt=\"Operation Christmas Child\" width=\"45%\" class=\"img-responsive\" />\n    </a>\n  </div>\n</div>\n\n<hr/>\n');
/*!40000 ALTER TABLE `sym_entries_data_135` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_136`
--

DROP TABLE IF EXISTS `sym_entries_data_136`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_136` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_136`
--

LOCK TABLES `sym_entries_data_136` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_136` DISABLE KEYS */;
INSERT INTO `sym_entries_data_136` VALUES (18,101,'no'),(17,102,'no');
/*!40000 ALTER TABLE `sym_entries_data_136` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_137`
--

DROP TABLE IF EXISTS `sym_entries_data_137`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_137` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_137`
--

LOCK TABLES `sym_entries_data_137` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_137` DISABLE KEYS */;
INSERT INTO `sym_entries_data_137` VALUES (113,113,61),(43,49,NULL),(141,90,NULL),(142,50,NULL),(111,46,NULL),(56,44,NULL),(47,48,NULL),(112,113,63),(121,97,NULL),(135,115,NULL),(77,118,NULL);
/*!40000 ALTER TABLE `sym_entries_data_137` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_138`
--

DROP TABLE IF EXISTS `sym_entries_data_138`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_138` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_138`
--

LOCK TABLES `sym_entries_data_138` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_138` DISABLE KEYS */;
INSERT INTO `sym_entries_data_138` VALUES (58,73,NULL),(57,74,NULL),(59,84,NULL),(60,85,NULL),(61,86,NULL),(72,87,NULL),(63,88,NULL);
/*!40000 ALTER TABLE `sym_entries_data_138` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_139`
--

DROP TABLE IF EXISTS `sym_entries_data_139`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_139` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_139`
--

LOCK TABLES `sym_entries_data_139` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_139` DISABLE KEYS */;
INSERT INTO `sym_entries_data_139` VALUES (1,111,NULL,NULL),(2,104,NULL,NULL),(3,112,NULL,NULL),(8,114,NULL,NULL),(5,116,NULL,NULL),(13,109,NULL,NULL),(21,119,'2','2'),(22,120,'8','8');
/*!40000 ALTER TABLE `sym_entries_data_139` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_140`
--

DROP TABLE IF EXISTS `sym_entries_data_140`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_140` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_140`
--

LOCK TABLES `sym_entries_data_140` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_140` DISABLE KEYS */;
INSERT INTO `sym_entries_data_140` VALUES (1,76,'questions-with-answers','Questions With Answers'),(2,91,'questions-with-answers','Questions With Answers'),(3,92,'questions-with-answers','Questions With Answers'),(4,93,'questions-with-answers','Questions With Answers'),(5,94,'questions-with-answers','Questions With Answers'),(6,95,'questions-with-answers','Questions With Answers'),(14,68,'songs-for-saplings-abc','Songs for Saplings: ABC'),(13,66,'songs-for-saplings-123','Songs for Saplings: 123');
/*!40000 ALTER TABLE `sym_entries_data_140` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_141`
--

DROP TABLE IF EXISTS `sym_entries_data_141`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_141` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_141`
--

LOCK TABLES `sym_entries_data_141` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_141` DISABLE KEYS */;
INSERT INTO `sym_entries_data_141` VALUES (4,91,'questions-with-answers-vol-2-the-fall-and-salvation','Questions With Answers Vol. 2: The Fall and Salvation'),(3,111,'questions-with-answers-vol-1-god-and-creation','Questions With Answers Vol. 1: God and Creation'),(86,90,NULL,'yes'),(66,97,NULL,'no'),(80,115,NULL,'yes'),(25,118,NULL,'no'),(58,113,NULL,'no'),(87,50,NULL,'no'),(57,46,NULL,'no');
/*!40000 ALTER TABLE `sym_entries_data_141` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_142`
--

DROP TABLE IF EXISTS `sym_entries_data_142`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_142` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_142`
--

LOCK TABLES `sym_entries_data_142` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_142` DISABLE KEYS */;
INSERT INTO `sym_entries_data_142` VALUES (5,87,'<h5 style=\"margin-top:0;\">An Open Door in Ukraine</h5>\r\n\r\nThe Lord has opened up a wonderful opportunity to share the deep Bible truths presented in Songs for Saplings music with families in Ukraine through a partnership with a church in L\'viv.\r\n\r\nThis project means so much to native Ukrainians. Evangelical Christians make up less than 3 percent of the population, and qualityChristian resources for children are practically non-existent.\r\n\r\nOur prayer is for this theologically rich music to create bridges for communicating the Gospel and providing Biblical teaching resources to the Ukrainian Church for generation to come. \r\n\r\n##### Help Us Make Our Ukrainian Translation a Reality\r\n\r\nMajor costs associated with this translation include:\r\n\r\n- Translating: $1,200\r\n- Engineering: $750\r\n- Mixing and Editing: $1,200\r\n- Mastering: $1,200\r\n- CD Replication: $1,200\r\n\r\nWe ask that you prayerfully consider supporting this important project:\r\n\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-6 col-sm-offset-3\">\r\n    <form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">\r\n      <input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\" />\r\n      <input type=\"hidden\" name=\"hosted_button_id\" value=\"64VENCN22V39E\" />\r\n      <button type=\"submit\" class=\"btn btn-block btn-primary\">Donate Online</button>\r\n      <img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\" />\r\n    </form>\r\n  </div>\r\n</div>\r\n\r\nOr you can mail tax-deductible donation to:\r\n\r\n**Songs for Saplings**<br/>\r\n818 SW 3rd Ave, #1415<br/>\r\nPortland, OR 97204\r\n\r\nPlease make checks payable to “**Ascension Presbyterian Church**” with \"**Songs for Saplings: Ukraine**\" in the memo line.','<h5 style=\"margin-top:0;\">An Open Door in Ukraine</h5>\n\n<p>The Lord has opened up a wonderful opportunity to share the deep Bible truths presented in Songs for Saplings music with families in Ukraine through a partnership with a church in L&#8217;viv.</p>\n\n<p>This project means so much to native Ukrainians. Evangelical Christians make up less than 3 percent of the population, and qualityChristian resources for children are practically non-existent.</p>\n\n<p>Our prayer is for this theologically rich music to create bridges for communicating the Gospel and providing Biblical teaching resources to the Ukrainian Church for generation to come.</p>\n\n<h5>Help Us Make Our Ukrainian Translation a Reality</h5>\n\n<p>Major costs associated with this translation include:</p>\n\n<ul>\n<li>Translating: $1,200</li>\n<li>Engineering: $750</li>\n<li>Mixing and Editing: $1,200</li>\n<li>Mastering: $1,200</li>\n<li>CD Replication: $1,200</li>\n</ul>\n\n<p>We ask that you prayerfully consider supporting this important project:</p>\n\n<div class=\"row\">\n  <div class=\"col-sm-6 col-sm-offset-3\">\n    <form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">\n      <input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\" />\n      <input type=\"hidden\" name=\"hosted_button_id\" value=\"64VENCN22V39E\" />\n      <button type=\"submit\" class=\"btn btn-block btn-primary\">Donate Online</button>\n      <img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\" />\n    </form>\n  </div>\n</div>\n\n<p>Or you can mail tax-deductible donation to:</p>\n\n<p><strong>Songs for Saplings</strong><br/>\n818 SW 3rd Ave, #1415<br/>\nPortland, OR 97204</p>\n\n<p>Please make checks payable to “<strong>Ascension Presbyterian Church</strong>” with &#8220;<strong>Songs for Saplings: Ukraine</strong>&#8221; in the memo line.</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_142` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_24`
--

DROP TABLE IF EXISTS `sym_entries_data_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_24`
--

LOCK TABLES `sym_entries_data_24` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_24` DISABLE KEYS */;
INSERT INTO `sym_entries_data_24` VALUES (77,96,'questions-with-answers-vol-4-english','Questions with Answers - Vol. 4 (English)'),(78,82,'questions-with-answers-vol-5-english','Questions with Answers - Vol. 5 (English)'),(79,83,'questions-with-answers-vol-6-english','Questions with Answers - Vol. 6 (English)'),(76,80,'questions-with-answers-vol-3-english','Questions with Answers - Vol. 3 (English)'),(34,51,'some-drums','Some drums'),(39,62,'rooted-deep','Rooted deep'),(42,64,'saplings-123','Saplings: 123'),(44,67,'saplings-abcs','Saplings: ABCs'),(74,75,'questions-with-answers-vol-1-english','Questions with Answers - Vol. 1 (English)'),(75,79,'questions-with-answers-vol-2-english','Questions with Answers - Vol. 2 (English)'),(64,98,'new-city-catechism-background','New City Catechism background'),(65,100,'dana-dirksen-headshot','Dana Dirksen headshot'),(73,103,'a-taylor-guitar','A Taylor guitar'),(89,104,'dana-in-the-studio','Dana in the studio'),(82,105,'dana-and-the-dirksen-kids','Dana and the Dirksen kids'),(83,106,'let-the-waters','Let the waters'),(84,107,'donate-to-our-cause','Donate to our cause'),(85,108,'our-international-missions','Our international missions'),(100,109,'recording-our-music','Recording our music'),(87,110,'panorama-playing-music','Panorama playing music'),(88,111,'recording-in-malawi','Recording in Malawi'),(90,112,'singing-the-gospel-to-the-world','Singing the Gospel to the World'),(95,114,'operation-christmas-child','Operation Christmas Child'),(92,116,'the-lords-prayer','The Lord\'s Prayer'),(108,119,'ukraine','Ukraine'),(109,120,'girl-singing','Girl singing');
/*!40000 ALTER TABLE `sym_entries_data_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_26`
--

DROP TABLE IF EXISTS `sym_entries_data_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_26`
--

LOCK TABLES `sym_entries_data_26` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_26` DISABLE KEYS */;
INSERT INTO `sym_entries_data_26` VALUES (148,44,'our-music','Our Music'),(201,46,'missions','Missions'),(144,48,'contact-us','Contact Us'),(140,49,'resources','Resources'),(231,50,'partnership','Partnership'),(202,113,'donate','Donate'),(37,78,'videos','Videos'),(230,90,'about','About'),(210,97,'new-city-catechism','New City Catechism'),(224,115,'operation-christmas-child','Operation Christmas Child'),(169,118,'thank-you','Thank You');
/*!40000 ALTER TABLE `sym_entries_data_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_27`
--

DROP TABLE IF EXISTS `sym_entries_data_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_27`
--

LOCK TABLES `sym_entries_data_27` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_27` DISABLE KEYS */;
INSERT INTO `sym_entries_data_27` VALUES (144,48,NULL,'\n'),(140,49,'<p class=\"lead\">Free Resources</p>\r\n\r\nSongs for Saplings has free, downloadable content for you to make learning the music with your kids more fun and easier.\r\n\r\nFor most of our albums we have lyrics, chords, and sheet music available for you to download and print.\r\n\r\nJust click on the \"[**Get Resources**](http://store.songsforsaplings.com/collections/resources)\" link on the left and you’ll be taken to our shopping cart where you can download the resources at no cost.','<p class=\"lead\">Free Resources</p>\n\n<p>Songs for Saplings has free, downloadable content for you to make learning the music with your kids more fun and easier.</p>\n\n<p>For most of our albums we have lyrics, chords, and sheet music available for you to download and print.</p>\n\n<p>Just click on the &#8220;<a href=\"http://store.songsforsaplings.com/collections/resources\"><strong>Get Resources</strong></a>&#8221; link on the left and you’ll be taken to our shopping cart where you can download the resources at no cost.</p>\n'),(231,50,'<p class=\"lead\">Sharing Songs for Saplings Music with Your Church<br/>...and around the World!</p>\r\n\r\n**Our two goals with our music are:**\r\n\r\n**1. Get the music we\'ve already produced to as many children as possible**\r\n\r\n**2. Continue our work [translating the music into other languages](/missions)**\r\n\r\n#### In Your Church\r\n\r\nWe invite your church to partner with us to reach both of these goals.\r\n\r\nWhen you join our church partnership program, your church receives free, unlimited downloads of our music to use in your church\r\n\r\n**Prefer actual CDs?** Church Partners can purchase CDs for just $2.50 each plus shipping. This helps us cover our costs for CDs, but is more the 75% off retail price.\r\n\r\n#### Around the World\r\n\r\nSongs for Saplings works to translate and distribute our music for use by missionaries and ministries around the world, especially throughout the Global South and Eastern Europe. What we ask is that our Church Partners commit to regularly praying for our translation efforts.\r\n\r\n<p>We do not require any financial commitment from you to join our Church Partnership Program, but we will contact you from time to time to ask if your church might consider financially supporting our ministry. </p>\r\n\r\n> As for other matters, brothers and sisters, pray for us that the message of the Lord may spread rapidly and be honored, just as it was with you.\r\n>\r\n>—**2 Thessalonians 3:1**\r\n\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-8 col-sm-offset-2\">\r\n    <a href=\"/contact/?form=partnership\" class=\"btn btn-block btn-primary\">Sign up For Church Partnership</a>\r\n  </div>\r\n</div>','<p class=\"lead\">Sharing Songs for Saplings Music with Your Church<br/>&#8230;and around the World!</p>\n\n<p><strong>Our two goals with our music are:</strong></p>\n\n<p><strong>1. Get the music we&#8217;ve already produced to as many children as possible</strong></p>\n\n<p><strong>2. Continue our work <a href=\"/missions\">translating the music into other languages</a></strong></p>\n\n<h4>In Your Church</h4>\n\n<p>We invite your church to partner with us to reach both of these goals.</p>\n\n<p>When you join our church partnership program, your church receives free, unlimited downloads of our music to use in your church</p>\n\n<p><strong>Prefer actual CDs?</strong> Church Partners can purchase CDs for just $2.50 each plus shipping. This helps us cover our costs for CDs, but is more the 75% off retail price.</p>\n\n<h4>Around the World</h4>\n\n<p>Songs for Saplings works to translate and distribute our music for use by missionaries and ministries around the world, especially throughout the Global South and Eastern Europe. What we ask is that our Church Partners commit to regularly praying for our translation efforts.</p>\n\n<p>We do not require any financial commitment from you to join our Church Partnership Program, but we will contact you from time to time to ask if your church might consider financially supporting our ministry. </p>\n\n<blockquote>\n  <p>As for other matters, brothers and sisters, pray for us that the message of the Lord may spread rapidly and be honored, just as it was with you.</p>\n  \n  <p>—<strong>2 Thessalonians 3:1</strong></p>\n</blockquote>\n\n<div class=\"row\">\n  <div class=\"col-sm-8 col-sm-offset-2\">\n    <a href=\"/contact/?form=partnership\" class=\"btn btn-block btn-primary\">Sign up For Church Partnership</a>\n  </div>\n</div>\n'),(37,78,NULL,'\n'),(230,90,'<p class=\"lead\">Songs for Saplings is a ministry of the Dirksen family to you and your families.</p>\r\n\r\nGod has supplied us richly with His grace, with the great and deep truths of the Bible, and He has given us the gifts to be able to make and share this music with you.\r\n\r\nWe have found out what God wants us to do, and we are doing it. This is our small way to bring our Lord glory and be of the most service that we can be to His Church while we are here.\r\n  \r\nIt is our prayer that this music will work in the minds and hearts of your children so that they can daily hear the great truths from Scripture. We want them to learn about their God and how he cares for them; we want them to learn to love him more.\r\n\r\n_The Dirksens have six beautiful children, and live in Portland, Oregon in the United States._','<p class=\"lead\">Songs for Saplings is a ministry of the Dirksen family to you and your families.</p>\n\n<p>God has supplied us richly with His grace, with the great and deep truths of the Bible, and He has given us the gifts to be able to make and share this music with you.</p>\n\n<p>We have found out what God wants us to do, and we are doing it. This is our small way to bring our Lord glory and be of the most service that we can be to His Church while we are here.</p>\n\n<p>It is our prayer that this music will work in the minds and hearts of your children so that they can daily hear the great truths from Scripture. We want them to learn about their God and how he cares for them; we want them to learn to love him more.</p>\n\n<p><em>The Dirksens have six beautiful children, and live in Portland, Oregon in the United States.</em></p>\n'),(210,97,'<p class=\"lead\">The New City Catechism, now with Songs for Saplings music!</p>\r\n\r\nIn October of 2012, The Gospel Coalition in partnership with Tim Keller launched the _New City Catechism_—a joint adult and children\'s catechism consisting of 52 questions and answers adapted from the Reformation catechisms.\r\n\r\nA year later we were happy to announce that both the _New City Catechism_ website and the iPad application have been updated to include free music resources from the Songs for Saplings Questions with Answers series.\r\n\r\nEach question in the _New City Catechism_ now has one or more free songs that you can use with your children when learning the deep and rich truths in the _New City Catechism_.\r\n\r\nVisit the _New City Catechism_ website or download the iPad app for free today.\r\n\r\n#### Website Instructions\r\n\r\n1. Open <a href=\"http://www.newcitycatechism.com/home.php\" target=\"_blank\">http://www.newcitycatechism.com/home.php</a> in a web browser\r\n2. Click on the settings icon (it looks like this <img src=\"/workspace/assets/img/gear.jpg\" width=\"24px\" height=\"24px\" />) and select “Child Mode”.\r\n3. Close the settings box.\r\n4. Now click on any of the questions, and you should see three choices for each song: v:verse, p:prayer, and s:song. Click the song (it looks like this <img src=\"/workspace/assets/img/songs.jpg\" width=\"24px\" height=\"24px\" />) and now you can play the songs that go along with each _New City Catechism_ question.\r\n\r\n#### iPad App Instructions\r\n\r\n1. Download the <a href=\"http://itunes.apple.com/us/app/new-city-catechism/id564035762?ls=1&mt=8\" target=\"_blank\">iPad app from iTunes</a> \r\n2. Open the New City Catechism app\r\n3. Click on the home icon (it looks like this <img src=\"/workspace/assets/img/home.jpg\" width=\"24px\" height=\"24px\" />) to access the questions.\r\n4. Click on the settings icon (it looks like this <img src=\"/workspace/assets/img/gear.jpg\" width=\"24px\" height=\"24px\" />) and select “Child Mode.”\r\n5. Close the settings box by touching anywhere on your screen.\r\n6. Now click on any of the questions, and you should see three choices for each song: v:verse, p:prayer, and s:song. Click the song (it looks like this <img src=\"/workspace/assets/img/songs.jpg\" width=\"24px\" height=\"24px\" />) and now you can play the songs that go along with each _New City Catechism_ question.\r\n\r\nHere are the links again for your convenience:\r\n\r\n<div class=\"row\">\r\n  <br/>\r\n  <div class=\"col-sm-6\">\r\n    <a href=\"http://www.newcitycatechism.com/home.php\" class=\"btn btn-block btn-primary\" target=\"_blank\">New City Catechism Website</a>\r\n  </div>\r\n  <div class=\"col-sm-6\">\r\n    <a href=\"http://itunes.apple.com/us/app/new-city-catechism/id564035762?ls=1&mt=8\" class=\"btn btn-block btn-primary\" target=\"_blank\">New City Catechism iPad App</a>\r\n  </div>\r\n</div>','<p class=\"lead\">The New City Catechism, now with Songs for Saplings music!</p>\n\n<p>In October of 2012, The Gospel Coalition in partnership with Tim Keller launched the <em>New City Catechism</em>—a joint adult and children’s catechism consisting of 52 questions and answers adapted from the Reformation catechisms.</p>\n\n<p>A year later we were happy to announce that both the <em>New City Catechism</em> website and the iPad application have been updated to include free music resources from the Songs for Saplings Questions with Answers series.</p>\n\n<p>Each question in the <em>New City Catechism</em> now has one or more free songs that you can use with your children when learning the deep and rich truths in the <em>New City Catechism</em>.</p>\n\n<p>Visit the <em>New City Catechism</em> website or download the iPad app for free today.</p>\n\n<h4>Website Instructions</h4>\n\n<ol>\n<li>Open <a href=\"http://www.newcitycatechism.com/home.php\" target=\"_blank\">http://www.newcitycatechism.com/home.php</a> in a web browser</li>\n<li>Click on the settings icon (it looks like this <img src=\"/workspace/assets/img/gear.jpg\" width=\"24px\" height=\"24px\" />) and select “Child Mode”.</li>\n<li>Close the settings box.</li>\n<li>Now click on any of the questions, and you should see three choices for each song: v:verse, p:prayer, and s:song. Click the song (it looks like this <img src=\"/workspace/assets/img/songs.jpg\" width=\"24px\" height=\"24px\" />) and now you can play the songs that go along with each <em>New City Catechism</em> question.</li>\n</ol>\n\n<h4>iPad App Instructions</h4>\n\n<ol>\n<li>Download the <a href=\"http://itunes.apple.com/us/app/new-city-catechism/id564035762?ls=1&amp;mt=8\" target=\"_blank\">iPad app from iTunes</a> </li>\n<li>Open the New City Catechism app</li>\n<li>Click on the home icon (it looks like this <img src=\"/workspace/assets/img/home.jpg\" width=\"24px\" height=\"24px\" />) to access the questions.</li>\n<li>Click on the settings icon (it looks like this <img src=\"/workspace/assets/img/gear.jpg\" width=\"24px\" height=\"24px\" />) and select “Child Mode.”</li>\n<li>Close the settings box by touching anywhere on your screen.</li>\n<li>Now click on any of the questions, and you should see three choices for each song: v:verse, p:prayer, and s:song. Click the song (it looks like this <img src=\"/workspace/assets/img/songs.jpg\" width=\"24px\" height=\"24px\" />) and now you can play the songs that go along with each <em>New City Catechism</em> question.</li>\n</ol>\n\n<p>Here are the links again for your convenience:</p>\n\n<div class=\"row\">\n  <br/>\n  <div class=\"col-sm-6\">\n    <a href=\"http://www.newcitycatechism.com/home.php\" class=\"btn btn-block btn-primary\" target=\"_blank\">New City Catechism Website</a>\n  </div>\n  <div class=\"col-sm-6\">\n    <a href=\"http://itunes.apple.com/us/app/new-city-catechism/id564035762?ls=1&amp;mt=8\" class=\"btn btn-block btn-primary\" target=\"_blank\">New City Catechism iPad App</a>\n  </div>\n</div>'),(202,113,'<p class=\"lead\">Songs for Saplings Around the World.</p>\r\n\r\nThe deep, Biblical truths of our “Questions with Answers” series are being translated into other languages besides English. These translations provide much-needed, native-language resources to families, churches, and missionaries around the world.\r\n\r\nWe need your help. We keep our costs low, but it takes money to translate, record and publish these albums. Our goal is to provide these albums to our ministry partners around the world at no cost to them, so we need you to join us in this important mission!\r\n\r\nWe are generously sponsored by Ascension Presbyterian Church in Hillsboro, Oregon.\r\n\r\nYou can make a tax-deductible donation to online here:\r\n\r\n<form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">\r\n  <input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\" />\r\n  <input type=\"hidden\" name=\"hosted_button_id\" value=\"P2W73DB745BMY\" />\r\n  <button type=\"submit\" class=\"btn btn-large btn-block accent\">\r\n    <h4 class=\"list-group-item-heading\">Donate Now</h4>\r\n    <p class=\"list-group-item-text\" style=\"text-transform:none;font-weight:normal\">secure online payment→</p>\r\n  </button>\r\n  <img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\" />\r\n</form>\r\n\r\nOr you can mail tax-deductible donation to:\r\n\r\n**Songs for Saplings**<br/>\r\n818 SW 3rd Ave, #1415<br/>\r\nPortland, OR 97204\r\n\r\nPlease make checks payable to “**Ascension Presbyterian Church**” with \"**Songs for Saplings**\" in the memo line.\r\n\r\nOur prayer is for God’s truths to be shared with millions of children around the world. Another way you can be involved and help is to partner with us in prayer:\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-6 col-sm-offset-3\">\r\n    <br/>\r\n    <a href=\"http://visitor.r20.constantcontact.com/d.jsp?llr=6cxnvbkab&p=oi&m=1110305070173\" class=\"btn btn-block btn-primary\" target=\"_blank\">Join Our Prayer List*</a>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"center\">\r\n  <p><small><em>* Privacy provided by SafeSubscribe<sup>SM</sup></em></small></p>\r\n</div>','<p class=\"lead\">Songs for Saplings Around the World.</p>\n\n<p>The deep, Biblical truths of our “Questions with Answers” series are being translated into other languages besides English. These translations provide much-needed, native-language resources to families, churches, and missionaries around the world.</p>\n\n<p>We need your help. We keep our costs low, but it takes money to translate, record and publish these albums. Our goal is to provide these albums to our ministry partners around the world at no cost to them, so we need you to join us in this important mission!</p>\n\n<p>We are generously sponsored by Ascension Presbyterian Church in Hillsboro, Oregon.</p>\n\n<p>You can make a tax-deductible donation to online here:</p>\n\n<form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">\n  <input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\" />\n  <input type=\"hidden\" name=\"hosted_button_id\" value=\"P2W73DB745BMY\" />\n  <button type=\"submit\" class=\"btn btn-large btn-block accent\">\n    <h4 class=\"list-group-item-heading\">Donate Now</h4>\n    <p class=\"list-group-item-text\" style=\"text-transform:none;font-weight:normal\">secure online payment→</p>\n  </button>\n  <img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\" />\n</form>\n\n<p>Or you can mail tax-deductible donation to:</p>\n\n<p><strong>Songs for Saplings</strong><br/>\n818 SW 3rd Ave, #1415<br/>\nPortland, OR 97204</p>\n\n<p>Please make checks payable to “<strong>Ascension Presbyterian Church</strong>” with “<strong>Songs for Saplings</strong>” in the memo line.</p>\n\n<p>Our prayer is for God’s truths to be shared with millions of children around the world. Another way you can be involved and help is to partner with us in prayer:</p>\n\n<div class=\"row\">\n  <div class=\"col-sm-6 col-sm-offset-3\">\n    <br/>\n    <a href=\"http://visitor.r20.constantcontact.com/d.jsp?llr=6cxnvbkab&amp;p=oi&amp;m=1110305070173\" class=\"btn btn-block btn-primary\" target=\"_blank\">Join Our Prayer List*</a>\n  </div>\n</div>\n\n<div class=\"center\">\n  <p><small><em>* Privacy provided by SafeSubscribe<sup>SM</sup></em></small></p>\n</div>'),(148,44,'<p class=\"lead\">Welcome to Songs for Saplings!</p>\r\n\r\nSongs for Saplings makes music for kids. We want them to understand who God is and what He has done, as well as what He wants your children to do and to be. Our music is adapted from scripture and from classic works meant to teach our kids the deep and wonderful things taught in the Bible. \r\n\r\n> “The more the culture around us becomes post- and anti-Christian the more we discover church members in our midst, sitting under sound preaching, yet nonetheless holding half-pagan views of God, truth, and human nature…This is not the first time the church in the West has lived in such a deeply non-Christian cultural environment. In the first several centuries the church had to form and build new believers from the ground up, teaching them comprehensive new ways to think, feel, and live in every aspect of life. They did this not simply through preaching and lectures, but also through catechesis. Catechesis was not only for children, but also for adult converts and even for leaders.”\r\n>\r\n> —**Tim Keller**\r\n\r\nWe hope that you will benefit from this music and use it to teach your children about our great God and his great love for us.','<p class=\"lead\">Welcome to Songs for Saplings!</p>\n\n<p>Songs for Saplings makes music for kids. We want them to understand who God is and what He has done, as well as what He wants your children to do and to be. Our music is adapted from scripture and from classic works meant to teach our kids the deep and wonderful things taught in the Bible.</p>\n\n<blockquote>\n  <p>“The more the culture around us becomes post- and anti-Christian the more we discover church members in our midst, sitting under sound preaching, yet nonetheless holding half-pagan views of God, truth, and human nature…This is not the first time the church in the West has lived in such a deeply non-Christian cultural environment. In the first several centuries the church had to form and build new believers from the ground up, teaching them comprehensive new ways to think, feel, and live in every aspect of life. They did this not simply through preaching and lectures, but also through catechesis. Catechesis was not only for children, but also for adult converts and even for leaders.”</p>\n  \n  <p>—<strong>Tim Keller</strong></p>\n</blockquote>\n\n<p>We hope that you will benefit from this music and use it to teach your children about our great God and his great love for us.</p>\n'),(169,118,'<p class=\"lead\">Thank you so much for your donation!</p>\r\n\r\nYour donations and prayers are what make our work possible.\r\n\r\nIn the next week we will send you a confirmation of your donation. You will also receive a mailed letter that you can use for a receipt for tax purposes.\r\n\r\nThank you again for joining us in this important mission!\r\n\r\nYou can learn about all our translation projects here:\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-6 col-sm-offset-3\">\r\n    <br/>\r\n    <a href=\"/missions\" class=\"btn btn-block btn-primary\">View Our Projects</a>\r\n  </div>\r\n</div>','<p class=\"lead\">Thank you so much for your donation!</p>\n\n<p>Your donations and prayers are what make our work possible.</p>\n\n<p>In the next week we will send you a confirmation of your donation. You will also receive a mailed letter that you can use for a receipt for tax purposes.</p>\n\n<p>Thank you again for joining us in this important mission!</p>\n\n<p>You can learn about all our translation projects here:</p>\n\n<div class=\"row\">\n  <div class=\"col-sm-6 col-sm-offset-3\">\n    <br/>\n    <a href=\"/missions\" class=\"btn btn-block btn-primary\">View Our Projects</a>\n  </div>\n</div>\n'),(224,115,'<p class=\"lead\">Operation Christmas Child and Songs for Saplings</p>\r\n\r\nIn May of 2013 <a href=\"http://www.samaritanspurse.org/what-we-do/operation-christmas-child/\" target=\"_blank\">Operation Christmas Child</a> celebrated the delivery of the 100,000,000<sup>th</sup> (that’s 100 millionth) shoebox to a child in need.  These shoeboxes contain school supplies, toiletries, games, toys, and Christian materials. Operation Christmas Child has been working since 1995 to get these materials to the neediest children around the world. \r\n\r\nIn 2010 <a href=\"http://samaritanspurse.org\" target=\"_blank\">Samaritan\'s Purse</a> (the parent organization of Operation Christmas Child) made a bold and faithful decision to begin to invite all the children who receive the shoeboxes back to local churches to participate in a 12-week discipleship and evangelism course called _<a href=\"http://www.thegreatestjourney.org\" target=\"_blank\">The Greatest Journey</a>_.\r\n\r\nWe are now happy to announce that Operation Christmas Child is working with Songs for Saplings to integrate our _Questions with Answer_ series into _The Greatest Journey_ through a collection of songs called _The Plan of Salvation_.\r\n\r\n_The Plan of Salvation_ album is currently being produced in English, French, and Spanish to be offered a no cost to hundreds of thousands of children as they participate.\r\n\r\nAs a supplement to _The Greatest Journey_, children will learn 35 _Questions with Answers_ songs that will teach them who God is, what He has done, and how they can learn to love Him more.\r\n\r\nWe hope to produce _The Plan of Salvation_ in Arabic and Russian, but we need your help. Please join us in this exciting project and donate today to this work to bring the soul-changing word of God to children around the world through song.\r\n\r\nClick below to learn how to partner with us through your tax-deductible donation to our translation work:\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-6 col-sm-offset-3\">\r\n    <a href=\"/donate\" class=\"btn btn-block btn-primary\">Donate</a>\r\n  </div>\r\n</div>\r\n\r\n#### Status:\r\n\r\n- October 2012: Operation Christmas Child and Songs for Saplings begin discussion of creating music to accompany _The Greatest Journey_\r\n- February 2013: Operation Christmas Child teams with Songs for Saplings\r\n- May 2013: Operation Christmas Child celebrates 100 millionth shoebox\r\n- August 2013: Operation Christmas Child begins testing in the French language translation of _The Plan of Salvation_ in West-Central Africa\r\n- December 2013: Songs for Saplings travels to Ecuador to work with Operation Christmas Child teams to produce a Spanish language version of _The Plan of Salvation_','<p class=\"lead\">Operation Christmas Child and Songs for Saplings</p>\n\n<p>In May of 2013 <a href=\"http://www.samaritanspurse.org/what-we-do/operation-christmas-child/\" target=\"_blank\">Operation Christmas Child</a> celebrated the delivery of the 100,000,000<sup>th</sup> (that’s 100 millionth) shoebox to a child in need.  These shoeboxes contain school supplies, toiletries, games, toys, and Christian materials. Operation Christmas Child has been working since 1995 to get these materials to the neediest children around the world.</p>\n\n<p>In 2010 <a href=\"http://samaritanspurse.org\" target=\"_blank\">Samaritan&#8217;s Purse</a> (the parent organization of Operation Christmas Child) made a bold and faithful decision to begin to invite all the children who receive the shoeboxes back to local churches to participate in a 12-week discipleship and evangelism course called <em><a href=\"http://www.thegreatestjourney.org\" target=\"_blank\">The Greatest Journey</a></em>.</p>\n\n<p>We are now happy to announce that Operation Christmas Child is working with Songs for Saplings to integrate our <em>Questions with Answer</em> series into <em>The Greatest Journey</em> through a collection of songs called <em>The Plan of Salvation</em>.</p>\n\n<p><em>The Plan of Salvation</em> album is currently being produced in English, French, and Spanish to be offered a no cost to hundreds of thousands of children as they participate.</p>\n\n<p>As a supplement to <em>The Greatest Journey</em>, children will learn 35 <em>Questions with Answers</em> songs that will teach them who God is, what He has done, and how they can learn to love Him more.</p>\n\n<p>We hope to produce <em>The Plan of Salvation</em> in Arabic and Russian, but we need your help. Please join us in this exciting project and donate today to this work to bring the soul-changing word of God to children around the world through song.</p>\n\n<p>Click below to learn how to partner with us through your tax-deductible donation to our translation work:</p>\n\n<div class=\"row\">\n  <div class=\"col-sm-6 col-sm-offset-3\">\n    <a href=\"/donate\" class=\"btn btn-block btn-primary\">Donate</a>\n  </div>\n</div>\n\n<h4>Status:</h4>\n\n<ul>\n<li>October 2012: Operation Christmas Child and Songs for Saplings begin discussion of creating music to accompany <em>The Greatest Journey</em></li>\n<li>February 2013: Operation Christmas Child teams with Songs for Saplings</li>\n<li>May 2013: Operation Christmas Child celebrates 100 millionth shoebox</li>\n<li>August 2013: Operation Christmas Child begins testing in the French language translation of <em>The Plan of Salvation</em> in West-Central Africa</li>\n<li>December 2013: Songs for Saplings travels to Ecuador to work with Operation Christmas Child teams to produce a Spanish language version of <em>The Plan of Salvation</em></li>\n</ul>\n'),(201,46,'<p class=\"lead\">Songs for Saplings Mission Around the World</p>\r\n\r\nChildren in every culture love to sing. Many cultures teach their stories in songs. We are working with churches, families, ministries, and missionaries around the world to translate the deep truths taught in the _Questions with Answers_ series into the heart-languages of children so they can learn the deep truths of God and the Bible.\r\n\r\nThe deep, Biblical truths of our _Questions with Answers_ series are being translated and recorded in other languages to provide much-needed, native-language resources to families, churches, and missionaries around the world.\r\n\r\nClick on any of the languages to the left to learn more about these projects.\r\n\r\n**We need your help**. In most cases we provide this music to in-country ministries at no cost. Please help us by supporting this valuable work. You can learn how to support us by clicking below:\r\n\r\n<div class=\"row\">\r\n  <div class=\"col-sm-6 col-sm-offset-3\">\r\n    <br/>\r\n    <a href=\"/donate\" class=\"btn btn-block btn-primary accent\">Donate</a>\r\n  </div>\r\n</div>','<p class=\"lead\">Songs for Saplings Mission Around the World</p>\n\n<p>Children in every culture love to sing. Many cultures teach their stories in songs. We are working with churches, families, ministries, and missionaries around the world to translate the deep truths taught in the <em>Questions with Answers</em> series into the heart-languages of children so they can learn the deep truths of God and the Bible.</p>\n\n<p>The deep, Biblical truths of our <em>Questions with Answers</em> series are being translated and recorded in other languages to provide much-needed, native-language resources to families, churches, and missionaries around the world.</p>\n\n<p>Click on any of the languages to the left to learn more about these projects.</p>\n\n<p><strong>We need your help</strong>. In most cases we provide this music to in-country ministries at no cost. Please help us by supporting this valuable work. You can learn how to support us by clicking below:</p>\n\n<div class=\"row\">\n  <div class=\"col-sm-6 col-sm-offset-3\">\n    <br/>\n    <a href=\"/donate\" class=\"btn btn-block btn-primary accent\">Donate</a>\n  </div>\n</div>\n');
/*!40000 ALTER TABLE `sym_entries_data_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_29`
--

DROP TABLE IF EXISTS `sym_entries_data_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_29`
--

LOCK TABLES `sym_entries_data_29` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_29` DISABLE KEYS */;
INSERT INTO `sym_entries_data_29` VALUES (148,44,'listen now','<p>listen now</p>\n'),(201,46,'translation projects','<p>translation projects</p>\n'),(144,48,'we\'d love for you to get in touch with us','<p>we&#8217;d love for you to get in touch with us</p>\n'),(140,49,'lyrics, chords & more','<p>lyrics, chords &amp; more</p>\n'),(231,50,'church program','<p>church program</p>\n'),(37,78,NULL,'\n'),(202,113,'help support Saplings','<p>help support Saplings</p>\n'),(230,90,'help support Saplings','<p>help support Saplings</p>\n'),(210,97,NULL,'\n'),(224,115,NULL,'\n'),(169,118,NULL,'\n');
/*!40000 ALTER TABLE `sym_entries_data_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_46`
--

DROP TABLE IF EXISTS `sym_entries_data_46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_46`
--

LOCK TABLES `sym_entries_data_46` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_46` DISABLE KEYS */;
INSERT INTO `sym_entries_data_46` VALUES (71,79,'79','79','79'),(72,80,'80','80','80'),(73,96,'96','96','96'),(74,82,'82','82','82'),(75,83,'83','83','83'),(70,75,'75','75','75'),(30,51,'51','51','51'),(35,62,'62','62','62'),(38,64,'64','64','64'),(40,67,'67','67','67'),(60,98,'98','98','98'),(61,100,'100','100','100'),(69,103,'103','103','103'),(85,104,'104','104','104'),(78,105,'105','105','105'),(79,106,'106','106','106'),(80,107,'107','107','107'),(81,108,'108','108','108'),(96,109,'109','109','109'),(83,110,'110','110','110'),(84,111,'111','111','111'),(86,112,'112','112','112'),(91,114,'114','114','114'),(88,116,'116','116','116'),(104,119,'119','119','119'),(105,120,'120','120','120');
/*!40000 ALTER TABLE `sym_entries_data_46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_56`
--

DROP TABLE IF EXISTS `sym_entries_data_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_56`
--

LOCK TABLES `sym_entries_data_56` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_56` DISABLE KEYS */;
INSERT INTO `sym_entries_data_56` VALUES (146,44,78,'Music','music'),(199,46,83,'Missions','missions'),(142,48,77,'Contact','contact'),(138,49,80,'Resources','resources'),(229,50,81,'Partnership','partnership'),(200,113,85,'Donate','donate'),(35,78,82,'Videos','videos'),(228,90,66,'About','about'),(208,97,87,'New City Catechism','ncc'),(222,115,88,'OCC','occ'),(167,118,89,'Thank You','thank-you');
/*!40000 ALTER TABLE `sym_entries_data_56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_58`
--

DROP TABLE IF EXISTS `sym_entries_data_58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_58`
--

LOCK TABLES `sym_entries_data_58` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_58` DISABLE KEYS */;
INSERT INTO `sym_entries_data_58` VALUES (142,44,109),(195,46,108),(138,48,110),(134,49,104),(225,50,106),(196,113,107),(31,78,NULL),(224,90,105),(204,97,98),(218,115,114),(163,118,107);
/*!40000 ALTER TABLE `sym_entries_data_58` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_59`
--

DROP TABLE IF EXISTS `sym_entries_data_59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_59`
--

LOCK TABLES `sym_entries_data_59` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_59` DISABLE KEYS */;
INSERT INTO `sym_entries_data_59` VALUES (2,51,'drums.jpg',1065807,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-09-20T14:00:04-07:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(7,62,'rooted-deep.jpg',1422227,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-09-20T15:26:31-07:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(10,64,'sfs-123.jpg',942508,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-10-02T20:00:35-07:00\";s:5:\"width\";i:3000;s:6:\"height\";i:3000;}'),(12,67,'saplings-abcs.jpg',166249,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-10-07T13:54:02-07:00\";s:5:\"width\";i:600;s:6:\"height\";i:600;}'),(42,75,'danadirksen_qavol1-01_1.jpg',282765,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:00:07-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(43,79,'danadirksen_qavol2-01_1.jpg',243965,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:00:18-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(44,80,'danadirksen_qavol3-01_1.jpg',273655,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:00:25-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(45,96,'danadirksen_qavol4-01_1.jpg',266291,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:00:33-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(46,82,'danadirksen_qavol5-01_1.jpg',311264,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:00:40-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(47,83,'danadirksen_qavol6-01_1.jpg',312951,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:01:01-08:00\";s:5:\"width\";i:1708;s:6:\"height\";i:1516;}'),(32,98,'ncc_bg_1.jpg',892210,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-13T21:14:46-08:00\";s:5:\"width\";i:2560;s:6:\"height\";i:1440;}'),(33,100,'dd-sfs-26.jpg',4421201,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-14T12:29:33-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}'),(41,103,'a-taylor-guitar.jpg',936069,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T12:38:47-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(57,104,'dana-studio-small_1.jpg',552796,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-18T16:48:55-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:1570;}'),(50,105,'dirksen-4.jpg',401817,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:42:20-08:00\";s:5:\"width\";i:1800;s:6:\"height\";i:1200;}'),(51,106,'waters.jpg',661641,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:46:06-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2061;}'),(52,107,'donation-page.jpg',1489174,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:50:20-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:1000;}'),(53,108,'mission-page.jpg',442228,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-15T16:59:41-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:1000;}'),(68,109,'saplings-music-banner.jpg',458548,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-20T14:14:32-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:1200;}'),(55,110,'panorama.jpg',478979,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-16T14:28:58-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:651;}'),(56,111,'recording-in-malawi.jpeg',42439,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-18T16:40:08-08:00\";s:5:\"width\";i:640;s:6:\"height\";i:360;}'),(58,112,'singing-the-gospel.jpg',46988,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-18T16:59:03-08:00\";s:5:\"width\";i:640;s:6:\"height\";i:363;}'),(63,114,'occ-background.jpg',213266,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-19T13:43:06-08:00\";s:5:\"width\";i:2560;s:6:\"height\";i:800;}'),(60,116,'the-lord-s-prayer.jpg',102029,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-19T10:08:45-08:00\";s:5:\"width\";i:960;s:6:\"height\";i:540;}'),(76,119,'ukraine-plaza.jpg',495059,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-21T14:48:21-08:00\";s:5:\"width\";i:2000;s:6:\"height\";i:1333;}'),(77,120,'girl-singing.jpg',654618,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-21T15:38:08-08:00\";s:5:\"width\";i:2458;s:6:\"height\";i:2458;}');
/*!40000 ALTER TABLE `sym_entries_data_59` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_60`
--

DROP TABLE IF EXISTS `sym_entries_data_60`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_60`
--

LOCK TABLES `sym_entries_data_60` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_60` DISABLE KEYS */;
INSERT INTO `sym_entries_data_60` VALUES (21,52,'the-music','The Music'),(22,53,'the-mission','The Mission');
/*!40000 ALTER TABLE `sym_entries_data_60` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_61`
--

DROP TABLE IF EXISTS `sym_entries_data_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_61`
--

LOCK TABLES `sym_entries_data_61` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_61` DISABLE KEYS */;
INSERT INTO `sym_entries_data_61` VALUES (21,52,78,'Music','music'),(22,53,83,'Missions','missions');
/*!40000 ALTER TABLE `sym_entries_data_61` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_62`
--

DROP TABLE IF EXISTS `sym_entries_data_62`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_62`
--

LOCK TABLES `sym_entries_data_62` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_62` DISABLE KEYS */;
INSERT INTO `sym_entries_data_62` VALUES (21,52,120),(22,53,119);
/*!40000 ALTER TABLE `sym_entries_data_62` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_63`
--

DROP TABLE IF EXISTS `sym_entries_data_63`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  `word_count` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_63`
--

LOCK TABLES `sym_entries_data_63` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_63` DISABLE KEYS */;
INSERT INTO `sym_entries_data_63` VALUES (20,53,'equipping-the-global-church-with-robust-theological-music','Equipping the global church with robust, theological music','Equipping the global church with robust, theological music',8),(19,52,'gospel-centered-songs-for-children-families-and-the-church','Gospel-centered songs for children, families and the Church','Gospel-centered songs for children, families and the Church',8);
/*!40000 ALTER TABLE `sym_entries_data_63` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_64`
--

DROP TABLE IF EXISTS `sym_entries_data_64`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_64`
--

LOCK TABLES `sym_entries_data_64` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_64` DISABLE KEYS */;
INSERT INTO `sym_entries_data_64` VALUES (17,52,'no'),(18,53,'no');
/*!40000 ALTER TABLE `sym_entries_data_64` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_65`
--

DROP TABLE IF EXISTS `sym_entries_data_65`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_65`
--

LOCK TABLES `sym_entries_data_65` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_65` DISABLE KEYS */;
INSERT INTO `sym_entries_data_65` VALUES (19,52,2),(20,53,1);
/*!40000 ALTER TABLE `sym_entries_data_65` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_66`
--

DROP TABLE IF EXISTS `sym_entries_data_66`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_66`
--

LOCK TABLES `sym_entries_data_66` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_66` DISABLE KEYS */;
INSERT INTO `sym_entries_data_66` VALUES (32,63,'a-look-into-our-recording-process','A Look into our Recording Process'),(29,117,'the-lords-prayer-lyric-video','The Lord\'s Prayer - Lyric Video'),(31,61,'singing-the-gospel-in-malawi','Singing the Gospel in Malawi');
/*!40000 ALTER TABLE `sym_entries_data_66` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_67`
--

DROP TABLE IF EXISTS `sym_entries_data_67`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_67`
--

LOCK TABLES `sym_entries_data_67` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_67` DISABLE KEYS */;
INSERT INTO `sym_entries_data_67` VALUES (31,61,112),(32,63,111),(29,117,116);
/*!40000 ALTER TABLE `sym_entries_data_67` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_68`
--

DROP TABLE IF EXISTS `sym_entries_data_68`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_68`
--

LOCK TABLES `sym_entries_data_68` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_68` DISABLE KEYS */;
INSERT INTO `sym_entries_data_68` VALUES (31,61,'no'),(32,63,'no'),(29,117,'no');
/*!40000 ALTER TABLE `sym_entries_data_68` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_69`
--

DROP TABLE IF EXISTS `sym_entries_data_69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_69`
--

LOCK TABLES `sym_entries_data_69` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_69` DISABLE KEYS */;
INSERT INTO `sym_entries_data_69` VALUES (126,44,'our music helps children understand who God is, what He’s done, and how to live in fellowship with Him ','<p>our music helps children understand who God is, what He’s done, and how to live in fellowship with Him</p>\n'),(179,46,'we equip the Church worldwide with rich, Biblical music to help children learn their faith through song','<p>we equip the Church worldwide with rich, Biblical music to help children learn their faith through song</p>\n'),(118,49,'download our lyrics, chords, and<br/> sheet music at no cost to you','<p>download our lyrics, chords, and<br/> sheet music at no cost to you</p>\n'),(180,113,'your generous support allow us to bring our Gospel-centered music to hundreds of thousands around the world','<p>your generous support allow us to bring our Gospel-centered music to hundreds of thousands around the world</p>\n'),(209,50,'partner with us to bring Gospel-centered songs for families to the global Church','<p>partner with us to bring Gospel-centered songs for families to the global Church</p>\n'),(15,78,NULL,'\n'),(208,90,'Songs for Saplings is the work of James & Dana Dirksen from Portland, OR','<p>Songs for Saplings is the work of James &amp; Dana Dirksen from Portland, OR</p>\n'),(188,97,' ','\n'),(122,48,'we’d love to get to know you;<br/>please use the forms below to contact us','<p>we’d love to get to know you;<br/>please use the forms below to contact us</p>\n'),(202,115,NULL,'\n'),(147,118,'Thank You!','<p>Thank You!</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_69` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_70`
--

DROP TABLE IF EXISTS `sym_entries_data_70`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_70`
--

LOCK TABLES `sym_entries_data_70` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_70` DISABLE KEYS */;
INSERT INTO `sym_entries_data_70` VALUES (178,46,'no'),(121,48,'no'),(125,44,'yes'),(179,113,'no'),(208,50,'no'),(14,78,'no'),(117,49,'no'),(207,90,'no'),(187,97,'no'),(201,115,'no'),(146,118,'yes');
/*!40000 ALTER TABLE `sym_entries_data_70` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_71`
--

DROP TABLE IF EXISTS `sym_entries_data_71`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_71`
--

LOCK TABLES `sym_entries_data_71` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_71` DISABLE KEYS */;
INSERT INTO `sym_entries_data_71` VALUES (114,68,'songs-for-saplings-abc','Songs for Saplings: ABC'),(101,76,'volume-1-god-and-creation','Volume 1: God and Creation'),(102,91,'volume-2-fall-and-salvation','Volume 2: Fall and Salvation'),(103,92,'volume-3-christ-and-his-work','Volume 3: Christ and His Work'),(104,93,'volume-4-the-word-of-god','Volume 4: The Word of God'),(105,94,'volume-5-prayer-and-sacraments','Volume 5: Prayer and Sacraments'),(106,95,'volume-6-christ-and-his-return','Volume 6: Christ and His Return'),(113,66,'songs-for-saplings-123','Songs for Saplings: 123');
/*!40000 ALTER TABLE `sym_entries_data_71` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_72`
--

DROP TABLE IF EXISTS `sym_entries_data_72`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_72`
--

LOCK TABLES `sym_entries_data_72` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_72` DISABLE KEYS */;
INSERT INTO `sym_entries_data_72` VALUES (113,66,'teaching-gods-word-through-numbers','Teaching God\'s Word through Numbers'),(114,68,'learning-gods-word-with-letters','Learning God\'s Word with Letters'),(101,76,'volume-1-god-and-creation','Volume 1: God and Creation'),(103,92,'volume-3-christ-and-his-work','Volume 3: Christ and His Work'),(104,93,'volume-4-the-word-of-god','Volume 4: The Word of God'),(105,94,'volume-5-prayer-and-sacraments','Volume 5: Prayer and Sacraments'),(106,95,'volume-6-christ-and-his-return','Volume 6: Christ and His Return'),(102,91,'volume-2-fall-and-salvation','Volume 2: Fall and Salvation');
/*!40000 ALTER TABLE `sym_entries_data_72` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_73`
--

DROP TABLE IF EXISTS `sym_entries_data_73`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_73`
--

LOCK TABLES `sym_entries_data_73` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_73` DISABLE KEYS */;
INSERT INTO `sym_entries_data_73` VALUES (100,68,'http-storesongsforsaplingscom-collections-frontpage-products-songs-for-saplings-abc','http://store.songsforsaplings.com/collections/frontpage/products/songs-for-saplings-abc'),(99,66,'http-storesongsforsaplingscom-collections-frontpage-products-songs-for-saplings-123','http://store.songsforsaplings.com/collections/frontpage/products/songs-for-saplings-123'),(87,76,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-volume-1-god-and-creation','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-volume-1-god-and-creation'),(89,92,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-volume-3-christ-and-his-work','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-volume-3-christ-and-his-work'),(88,91,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-volume-2-the-fall-and-salvation','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-volume-2-the-fall-and-salvation'),(90,93,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-volume-4-the-word-of-god','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-volume-4-the-word-of-god'),(91,94,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-vol-5-prayer-and-the-sacraments','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-vol-5-prayer-and-the-sacraments'),(92,95,'http-storesongsforsaplingscom-collections-music-products-questions-with-answers-vol-6-christ-and-his-return','http://store.songsforsaplings.com/collections/music/products/questions-with-answers-vol-6-christ-and-his-return');
/*!40000 ALTER TABLE `sym_entries_data_73` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_74`
--

DROP TABLE IF EXISTS `sym_entries_data_74`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_74`
--

LOCK TABLES `sym_entries_data_74` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_74` DISABLE KEYS */;
INSERT INTO `sym_entries_data_74` VALUES (84,66,'https-itunesapplecom-us-album-songs-for-saplings-123-id427114790','https://itunes.apple.com/us/album/songs-for-saplings-123/id427114790'),(85,68,'https-itunesapplecom-us-album-songs-for-saplings-id250043684','https://itunes.apple.com/us/album/songs-for-saplings/id250043684'),(74,76,'https-itunesapplecom-us-album-questions-answers-vol-1-god-id216042390','https://itunes.apple.com/us/album/questions-answers-vol.-1-god/id216042390'),(75,91,'https-itunesapplecom-us-album-questions-answers-vol-2-fall-id251251669','https://itunes.apple.com/us/album/questions-answers-vol.-2-fall/id251251669'),(76,92,'https-itunesapplecom-us-album-questions-answers-vol-3-christ-id271011657','https://itunes.apple.com/us/album/questions-answers-vol.-3-christ/id271011657'),(77,93,'https-itunesapplecom-us-album-questions-answers-vol-4-word-id539708663','https://itunes.apple.com/us/album/questions-answers-vol.-4-word/id539708663');
/*!40000 ALTER TABLE `sym_entries_data_74` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_75`
--

DROP TABLE IF EXISTS `sym_entries_data_75`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_75`
--

LOCK TABLES `sym_entries_data_75` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_75` DISABLE KEYS */;
INSERT INTO `sym_entries_data_75` VALUES (82,66,'http-wwwamazoncom-songs-saplings-123-dana-dirksen-dp-b004r8s5vc','http://www.amazon.com/Songs-Saplings-123-Dana-Dirksen/dp/B004R8S5VC'),(83,68,'http-wwwamazoncom-songs-saplings-abc-dana-dirksen-dp-b000nq2a9u','http://www.amazon.com/Songs-Saplings-ABC-Dana-Dirksen/dp/B000NQ2A9U'),(72,76,'http-wwwamazoncom-questions-answers-vol-god-creation-dp-b000nq2a9k','http://www.amazon.com/Questions-Answers-Vol-God-Creation/dp/B000NQ2A9K'),(73,91,'http-wwwamazoncom-questions-answers-vol-fall-salvation-dp-b000oycaa0','http://www.amazon.com/Questions-Answers-Vol-Fall-Salvation/dp/B000OYCAA0'),(74,92,'http-wwwamazoncom-questions-with-answers-vol-christ-dp-b0011v9rtm','http://www.amazon.com/Questions-With-Answers-Vol-Christ/dp/B0011V9RTM'),(75,93,'http-wwwamazoncom-questions-answers-vol-the-word-dp-b0080m3tcg','http://www.amazon.com/Questions-Answers-Vol-The-Word/dp/B0080M3TCG');
/*!40000 ALTER TABLE `sym_entries_data_75` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_76`
--

DROP TABLE IF EXISTS `sym_entries_data_76`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_76`
--

LOCK TABLES `sym_entries_data_76` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_76` DISABLE KEYS */;
INSERT INTO `sym_entries_data_76` VALUES (99,66,'http-musicsongsforsaplingscom-album-songs-for-saplings-123','http://music.songsforsaplings.com/album/songs-for-saplings-123'),(100,68,'http-musicsongsforsaplingscom-album-songs-for-saplings-abc','http://music.songsforsaplings.com/album/songs-for-saplings-abc'),(87,76,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-1-god-and-creation','http://music.songsforsaplings.com/album/questions-with-answers-vol-1-god-and-creation'),(88,91,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-2-the-fall-and-salvation','http://music.songsforsaplings.com/album/questions-with-answers-vol-2-the-fall-and-salvation'),(89,92,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-3-christ-and-his-work','http://music.songsforsaplings.com/album/questions-with-answers-vol-3-christ-and-his-work'),(90,93,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-4-the-word-of-god','http://music.songsforsaplings.com/album/questions-with-answers-vol-4-the-word-of-god'),(91,94,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-5-prayer-and-the-sacraments','http://music.songsforsaplings.com/album/questions-with-answers-vol-5-prayer-and-the-sacraments'),(92,95,'http-musicsongsforsaplingscom-album-questions-with-answers-vol-6-christ-and-his-return','http://music.songsforsaplings.com/album/questions-with-answers-vol-6-christ-and-his-return');
/*!40000 ALTER TABLE `sym_entries_data_76` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_77`
--

DROP TABLE IF EXISTS `sym_entries_data_77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_77`
--

LOCK TABLES `sym_entries_data_77` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_77` DISABLE KEYS */;
INSERT INTO `sym_entries_data_77` VALUES (113,66,'_Songs for Saplings: 123_ is designed to teach your little ones the word of God as they study their numbers. Parents and teachers will enjoy singing these simple songs with the little \"saplings\" in their care, as you help your little ones grow in righteousness and become like the cedars of Lebanon. (Ps. 92:12)\r\n\r\n','<p><em>Songs for Saplings: 123</em> is designed to teach your little ones the word of God as they study their numbers. Parents and teachers will enjoy singing these simple songs with the little &#8220;saplings&#8221; in their care, as you help your little ones grow in righteousness and become like the cedars of Lebanon. (Ps. 92:12)</p>\n'),(114,68,'_Songs for Saplings: ABCs_ is designed to teach your little ones the word of God as they study their ABCs.\r\n\r\nParents and teachers will enjoy singing these simple songs with the little \"saplings\" in their care, as you help your little ones grow in righteousness and become like the cedars of Lebanon. (Ps. 92:12)\r\n','<p><em>Songs for Saplings: ABCs</em> is designed to teach your little ones the word of God as they study their ABCs.</p>\n\n<p>Parents and teachers will enjoy singing these simple songs with the little &#8220;saplings&#8221; in their care, as you help your little ones grow in righteousness and become like the cedars of Lebanon. (Ps. 92:12)</p>\n'),(101,76,'_Questions with Answers Vol. 1: God and Creation_ contains an overview of Scriptural truths about God and His creation. The songs teach who God is, what He did in creation, and why He did it. They also teach us who we are and how we should respond to Him.\r\n\r\nWe hope you enjoy singing these Biblical truths with your children!','<p><em>Questions with Answers Vol. 1: God and Creation</em> contains an overview of Scriptural truths about God and His creation. The songs teach who God is, what He did in creation, and why He did it. They also teach us who we are and how we should respond to Him.</p>\n\n<p>We hope you enjoy singing these Biblical truths with your children!</p>\n'),(102,91,'_Questions with Answers Vol. 2: The Fall and Salvation_ teaches what went wrong with the world and what God did to fix it. The songs give Scriptural explanations for where sin leads and how God saves.','<p><em>Questions with Answers Vol. 2: The Fall and Salvation</em> teaches what went wrong with the world and what God did to fix it. The songs give Scriptural explanations for where sin leads and how God saves.</p>\n'),(103,92,'_Questions with Answers Vol. 3: Christ and His Work_ explains why God sent Jesus, what work Jesus did to accomplish our salvation, and what He does still today. The songs teach Scriptural truths about Jesus’ nature, what his roles (offices) are, and how he reconciled us to God.','<p><em>Questions with Answers Vol. 3: Christ and His Work</em> explains why God sent Jesus, what work Jesus did to accomplish our salvation, and what He does still today. The songs teach Scriptural truths about Jesus’ nature, what his roles (offices) are, and how he reconciled us to God.</p>\n'),(104,93,'_Questions with Answers Vol. 4: The Word of God_ contains songs which help teach the Ten Commandments and the Greatest Commandment and why they are important. Additional songs explain how and why God gave us the Bible, why we should believe it, and why it is important for us.\r\n\r\nYour kids will thank you for playing this album.','<p><em>Questions with Answers Vol. 4: The Word of God</em> contains songs which help teach the Ten Commandments and the Greatest Commandment and why they are important. Additional songs explain how and why God gave us the Bible, why we should believe it, and why it is important for us.</p>\n\n<p>Your kids will thank you for playing this album.</p>\n'),(105,94,'_Questions with Answers Vol. 5: Prayer and the Sacraments_ takes listeners through the Scriptural basics of prayer, baptism and the Lord\'s Supper. The songs about prayer focus on what prayer is and to whom we should pray, along with examining the different parts of The Lord’s Prayer. The songs about the sacraments teach the meaning and administration of baptism and the Lord’s Supper.','<p><em>Questions with Answers Vol. 5: Prayer and the Sacraments</em> takes listeners through the Scriptural basics of prayer, baptism and the Lord&#8217;s Supper. The songs about prayer focus on what prayer is and to whom we should pray, along with examining the different parts of The Lord’s Prayer. The songs about the sacraments teach the meaning and administration of baptism and the Lord’s Supper.</p>\n'),(106,95,'_Questions with Answers Vol. 6: Christ and His Return_ teaches about the great joy and hope of our faith! These songs rejoice in the completed work of Christ and His promise to return and bring us into His eternal presence.\r\n\r\nHe is risen! He is risen indeed!','<p><em>Questions with Answers Vol. 6: Christ and His Return</em> teaches about the great joy and hope of our faith! These songs rejoice in the completed work of Christ and His promise to return and bring us into His eternal presence.</p>\n\n<p>He is risen! He is risen indeed!</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_77` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_78`
--

DROP TABLE IF EXISTS `sym_entries_data_78`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_78`
--

LOCK TABLES `sym_entries_data_78` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_78` DISABLE KEYS */;
INSERT INTO `sym_entries_data_78` VALUES (113,66,'no'),(114,68,'no'),(101,76,'yes'),(102,91,'yes'),(103,92,'yes'),(104,93,'yes'),(105,94,'yes'),(106,95,'yes');
/*!40000 ALTER TABLE `sym_entries_data_78` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_79`
--

DROP TABLE IF EXISTS `sym_entries_data_79`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_79`
--

LOCK TABLES `sym_entries_data_79` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_79` DISABLE KEYS */;
INSERT INTO `sym_entries_data_79` VALUES (113,66,'no'),(114,68,'no'),(101,76,'no'),(102,91,'no'),(103,92,'no'),(104,93,'no'),(105,94,'yes'),(106,95,'yes');
/*!40000 ALTER TABLE `sym_entries_data_79` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_80`
--

DROP TABLE IF EXISTS `sym_entries_data_80`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_80`
--

LOCK TABLES `sym_entries_data_80` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_80` DISABLE KEYS */;
INSERT INTO `sym_entries_data_80` VALUES (113,66,'no'),(114,68,'no'),(101,76,'no'),(102,91,'no'),(103,92,'no'),(104,93,'no'),(105,94,'no'),(106,95,'no');
/*!40000 ALTER TABLE `sym_entries_data_80` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_81`
--

DROP TABLE IF EXISTS `sym_entries_data_81`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_81`
--

LOCK TABLES `sym_entries_data_81` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_81` DISABLE KEYS */;
INSERT INTO `sym_entries_data_81` VALUES (104,93,'<iframe class=\"embed volume-4\" src=\"https://bandcamp.com/EmbeddedPlayer/album=3373066532/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-4\" src=\"https://bandcamp.com/EmbeddedPlayer/album=3373066532/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(101,76,'<iframe class=\"embed volume-1\" src=\"https://bandcamp.com/EmbeddedPlayer/album=956504998/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-1\" src=\"https://bandcamp.com/EmbeddedPlayer/album=956504998/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(113,66,'<iframe class=\"embed album-123\" src=\"https://bandcamp.com/EmbeddedPlayer/album=563239788/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed album-123\" src=\"https://bandcamp.com/EmbeddedPlayer/album=563239788/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(114,68,'<iframe class=\"embed album-abc\" src=\"https://bandcamp.com/EmbeddedPlayer/album=292689193/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed album-abc\" src=\"https://bandcamp.com/EmbeddedPlayer/album=292689193/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(102,91,'<iframe class=\"embed volume-2\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2304174901/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-2\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2304174901/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(103,92,'<iframe class=\"embed volume-3\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2269055652/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-3\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2269055652/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(105,94,'<iframe class=\"embed volume-5\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2551827258/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-5\" src=\"https://bandcamp.com/EmbeddedPlayer/album=2551827258/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n'),(106,95,'<iframe class=\"embed volume-6\" src=\"https://bandcamp.com/EmbeddedPlayer/album=3456780887/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>','<iframe class=\"embed volume-6\" src=\"https://bandcamp.com/EmbeddedPlayer/album=3456780887/size=large/bgcol=ffffff/linkcol=333333/transparent=true/\" seamless=\"seamless\"></iframe>\n');
/*!40000 ALTER TABLE `sym_entries_data_81` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_82`
--

DROP TABLE IF EXISTS `sym_entries_data_82`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_82`
--

LOCK TABLES `sym_entries_data_82` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_82` DISABLE KEYS */;
INSERT INTO `sym_entries_data_82` VALUES (113,66,64),(114,68,67),(101,76,75),(102,91,79),(103,92,80),(104,93,96),(105,94,82),(106,95,83);
/*!40000 ALTER TABLE `sym_entries_data_82` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_83`
--

DROP TABLE IF EXISTS `sym_entries_data_83`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_83` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_83`
--

LOCK TABLES `sym_entries_data_83` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_83` DISABLE KEYS */;
INSERT INTO `sym_entries_data_83` VALUES (113,66,NULL),(114,68,NULL),(101,76,NULL),(102,91,NULL),(103,92,NULL),(104,93,NULL),(105,94,NULL),(106,95,NULL);
/*!40000 ALTER TABLE `sym_entries_data_83` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_90`
--

DROP TABLE IF EXISTS `sym_entries_data_90`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_90` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_90`
--

LOCK TABLES `sym_entries_data_90` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_90` DISABLE KEYS */;
INSERT INTO `sym_entries_data_90` VALUES (112,68,7),(111,66,8),(99,76,1),(100,91,2),(101,92,3),(102,93,4),(103,94,5),(104,95,6);
/*!40000 ALTER TABLE `sym_entries_data_90` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_91`
--

DROP TABLE IF EXISTS `sym_entries_data_91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_91` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_91`
--

LOCK TABLES `sym_entries_data_91` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_91` DISABLE KEYS */;
INSERT INTO `sym_entries_data_91` VALUES (108,68,'songs-for-saplings-abc','Songs for Saplings: ABC'),(107,66,'songs-for-saplings-123','Songs for Saplings: 123'),(95,76,'questions-with-answers-vol-1-god-and-creation','Questions With Answers Vol. 1: God and Creation'),(96,91,'questions-with-answers-vol-2-the-fall-and-salvation','Questions With Answers Vol. 2: The Fall and Salvation'),(98,93,'questions-with-answers-vol-4-the-word-of-god','Questions With Answers Vol. 4: The Word of God'),(99,94,'questions-with-answers-vol-5-prayer-and-the-sacraments','Questions With Answers Vol. 5: Prayer and the Sacraments'),(97,92,'questions-with-answers-vol-3-christ-and-his-work','Questions With Answers Vol. 3: Christ and His Work'),(100,95,'questions-with-answers-vol-6-christ-and-his-return','Questions With Answers Vol. 6: Christ and His Return');
/*!40000 ALTER TABLE `sym_entries_data_91` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_93`
--

DROP TABLE IF EXISTS `sym_entries_data_93`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_93` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_93`
--

LOCK TABLES `sym_entries_data_93` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_93` DISABLE KEYS */;
INSERT INTO `sym_entries_data_93` VALUES (89,73,'english','English'),(88,74,'french','French'),(90,84,'chichewa','Chichewa'),(91,85,'russian','Russian'),(92,86,'spanish','Spanish'),(103,87,'ukrainian','Ukrainian'),(94,88,'polish','Polish');
/*!40000 ALTER TABLE `sym_entries_data_93` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_94`
--

DROP TABLE IF EXISTS `sym_entries_data_94`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_94` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_94`
--

LOCK TABLES `sym_entries_data_94` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_94` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_entries_data_94` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_95`
--

DROP TABLE IF EXISTS `sym_entries_data_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_95` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_95`
--

LOCK TABLES `sym_entries_data_95` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_95` DISABLE KEYS */;
INSERT INTO `sym_entries_data_95` VALUES (89,73,NULL,NULL),(91,85,NULL,NULL),(94,88,NULL,NULL),(88,74,NULL,NULL),(90,84,NULL,NULL),(92,86,NULL,NULL),(103,87,NULL,NULL);
/*!40000 ALTER TABLE `sym_entries_data_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_96`
--

DROP TABLE IF EXISTS `sym_entries_data_96`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_96` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_96`
--

LOCK TABLES `sym_entries_data_96` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_96` DISABLE KEYS */;
INSERT INTO `sym_entries_data_96` VALUES (91,85,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(94,88,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(103,87,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(92,86,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(89,73,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(90,84,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n'),(88,74,'Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:\r\n\r\n1. Faithful to the truth in Scripture\r\n2. Singable by your children\r\n3. Professional\r\n\r\nWe want to see the translations of the _Questions with Answers_ music used all over the world, and we want each recording to be the best it can be.\r\n\r\n If you are interested in using one of our translations, just click on the language to the left.\r\n\r\nIf you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click [here](/contact/?form=translation) to contact us to talk about your ideas.','<p>Over the last few years we have developed detailed translation procedures that help us ensure that at the end of any project we have an album that is:</p>\n\n<ol>\n<li>Faithful to the truth in Scripture</li>\n<li>Singable by your children</li>\n<li>Professional</li>\n</ol>\n\n<p>We want to see the translations of the <em>Questions with Answers</em> music used all over the world, and we want each recording to be the best it can be.</p>\n\n<p> If you are interested in using one of our translations, just click on the language to the left.</p>\n\n<p>If you are interested in exploring a new translation, please click <a href=\"https://dl.dropboxusercontent.com/u/403840/Translation%20Procedure.pdf\" target=\"_blank\">here to download</a> the latest version of our translation procedure document, and then click <a href=\"/contact/?form=translation\">here</a> to contact us to talk about your ideas.</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_96` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_97`
--

DROP TABLE IF EXISTS `sym_entries_data_97`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_97` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_97`
--

LOCK TABLES `sym_entries_data_97` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_97` DISABLE KEYS */;
INSERT INTO `sym_entries_data_97` VALUES (89,73,NULL),(88,74,NULL),(90,84,NULL),(91,85,NULL),(92,86,NULL),(103,87,NULL),(94,88,NULL);
/*!40000 ALTER TABLE `sym_entries_data_97` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_98`
--

DROP TABLE IF EXISTS `sym_entries_data_98`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_98` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_98`
--

LOCK TABLES `sym_entries_data_98` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_98` DISABLE KEYS */;
INSERT INTO `sym_entries_data_98` VALUES (89,73,'released','Released'),(90,84,'released','Released'),(88,74,'released','Released'),(91,85,'released','Released'),(92,86,'50','50'),(103,87,'70','70'),(94,88,'20','20');
/*!40000 ALTER TABLE `sym_entries_data_98` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_99`
--

DROP TABLE IF EXISTS `sym_entries_data_99`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_99` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_99`
--

LOCK TABLES `sym_entries_data_99` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_99` DISABLE KEYS */;
INSERT INTO `sym_entries_data_99` VALUES (89,73,'released','Released'),(90,84,'90','90'),(88,74,'90','90'),(91,85,'0','0'),(92,86,'50','50'),(103,87,'unplanned','Unplanned'),(94,88,'unplanned','Unplanned');
/*!40000 ALTER TABLE `sym_entries_data_99` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_extensions`
--

DROP TABLE IF EXISTS `sym_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_extensions`
--

LOCK TABLES `sym_extensions` WRITE;
/*!40000 ALTER TABLE `sym_extensions` DISABLE KEYS */;
INSERT INTO `sym_extensions` VALUES (129,'debugdevkit','enabled','1.2.4'),(130,'export_ensemble','enabled','2.0.3'),(131,'selectbox_link_field','enabled','1.28'),(132,'jit_image_manipulation','enabled','1.19'),(133,'maintenance_mode','enabled','1.7'),(134,'profiledevkit','enabled','1.3'),(135,'markdown','enabled','1.17'),(136,'xssfilter','enabled','1.2'),(137,'datetime','enabled','3.1'),(138,'globalparamloader','enabled','1.4'),(139,'globalresourceloader','enabled','1.1'),(140,'html5_doctype','enabled','1.3.1'),(146,'image_index_preview','enabled','1.4'),(142,'order_entries','enabled','1.10.1'),(143,'search_index','enabled','0.9.2'),(144,'subsectionmanager','enabled','3.5.1'),(145,'uniqueuploadfield','enabled','1.7'),(147,'pagesfield','enabled','1.6.1'),(148,'configuration','enabled','1.7.1'),(149,'admin_css_override','enabled','1.4'),(150,'logsdevkit','enabled','1.1'),(151,'conditionalizer','enabled','1.3'),(152,'duplicate_entry','enabled','1.3'),(153,'reflectionfield','enabled','1.3.1'),(154,'resave_entries','enabled','0.2'),(155,'save_and_return','enabled','1.8'),(156,'textboxfield','enabled','2.3.3'),(157,'xmlimporter','enabled','2.1'),(158,'markdown_editor','enabled','1.0');
/*!40000 ALTER TABLE `sym_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_extensions_delegates`
--

DROP TABLE IF EXISTS `sym_extensions_delegates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_extensions_delegates`
--

LOCK TABLES `sym_extensions_delegates` WRITE;
/*!40000 ALTER TABLE `sym_extensions_delegates` DISABLE KEYS */;
INSERT INTO `sym_extensions_delegates` VALUES (220,129,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),(219,129,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),(221,130,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(228,133,'/blueprints/pages/','AppendPageContent','__appendType'),(227,133,'/backend/','AppendPageAlert','__appendAlert'),(226,133,'/system/preferences/','CustomActions','__toggleMaintenanceMode'),(232,134,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),(231,134,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),(225,133,'/system/preferences/','Save','__SavePreferences'),(234,136,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),(222,132,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(224,133,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(233,136,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),(223,132,'/system/preferences/','Save','__SavePreferences'),(229,133,'/frontend/','FrontendPrePageResolve','__checkForMaintenanceMode'),(230,133,'/frontend/','FrontendParamsResolve','__addParam'),(235,136,'/frontend/','EventPreSaveFilter','eventPreSaveFilter'),(236,137,'/system/preferences/','AddCustomPreferenceFieldsets','__addPreferences'),(237,137,'/system/preferences/','Save','__savePreferences'),(238,138,'/frontend/','FrontendParamsResolve','addParam'),(239,138,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(240,139,'/frontend/','FrontendPageResolved','manipulatePageData'),(241,139,'/system/preferences/','AddCustomPreferenceFieldsets','preferences'),(242,140,'/frontend/','FrontendOutputPostGenerate','parse_html'),(243,140,'/frontend/','FrontendPageResolved','setRenderTrigger'),(244,140,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(259,146,'/backend/','InitaliseAdminPageHead','InitaliseAdminPageHead'),(246,142,'/backend/','InitaliseAdminPageHead','appendScriptToHead'),(247,143,'/publish/new/','EntryPostCreate','indexEntry'),(248,143,'/publish/edit/','EntryPostEdit','indexEntry'),(249,143,'/publish/','EntryPostDelete','deleteEntryIndex'),(250,143,'/frontend/','EventPostSaveFilter','indexEntry'),(251,143,'/backend/','DashboardPanelRender','renderPanel'),(252,143,'/backend/','DashboardPanelTypes','dashboardPanelTypes'),(292,144,'/blueprints/datasources/','DatasourcePostCreate','__clearSubsectionCache'),(293,144,'/blueprints/datasources/','DatasourcePostEdit','__clearSubsectionCache'),(294,144,'/blueprints/datasources/','DatasourcePreDelete','__clearSubsectionCache'),(295,144,'/frontend/','DataSourceEntriesBuilt','__prepareSubsection'),(285,147,'/blueprints/pages/','AppendPageContent','appendAssociationsDrawer'),(266,148,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),(267,148,'/system/preferences/','Save','__SavePreferences'),(268,149,'/backend/','InitaliseAdminPageHead','appendAssets'),(269,150,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),(270,150,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),(271,151,'/backend/','AdminPagePreGenerate','appendConditionalizer'),(272,151,'/blueprints/datasources/','DatasourcePreCreate','appendDataSourceConditions'),(273,151,'/blueprints/datasources/','DatasourcePreEdit','appendDataSourceConditions'),(274,151,'/frontend/','DataSourcePreExecute','conditionalize'),(275,152,'/backend/','InitaliseAdminPageHead','initaliseAdminPageHead'),(276,153,'/publish/new/','EntryPostCreate','compileBackendFields'),(277,153,'/publish/edit/','EntryPostEdit','compileBackendFields'),(278,153,'/frontend/','EventPostSaveFilter','compileFrontendFields'),(279,154,'/system/preferences/','AddCustomPreferenceFieldsets','AddCustomPreferenceFieldsets'),(280,154,'/backend/','InitaliseAdminPageHead','InitaliseAdminPageHead'),(281,155,'/backend/','InitaliseAdminPageHead','appendJS'),(282,155,'/backend/','AdminPagePreGenerate','appendElement'),(283,155,'/publish/edit/','EntryPostEdit','entryPostEdit'),(284,155,'/publish/new/','EntryPostCreate','entryPostEdit'),(291,144,'/backend/','AdminPagePreGenerate','__appendAssets'),(296,158,'/backend/','InitaliseAdminPageHead','initaliseAdminPageHead');
/*!40000 ALTER TABLE `sym_extensions_delegates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields`
--

DROP TABLE IF EXISTS `sym_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields`
--

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;
INSERT INTO `sym_fields` VALUES (76,'Bandcamp','bandcamp','input',15,'no',11,'sidebar','no'),(75,'Amazon','amazon','input',15,'no',10,'sidebar','no'),(70,'Simple','simple','checkbox',7,'no',7,'sidebar','yes'),(71,'Title','title','input',15,'yes',0,'main','yes'),(72,'Subtitle','subtitle','input',15,'yes',3,'main','yes'),(73,'Store','store','input',15,'no',8,'sidebar','no'),(74,'iTunes','itunes','input',15,'no',9,'sidebar','no'),(56,'Page','page','pages',7,'yes',2,'sidebar','yes'),(29,'Description','description','textarea',7,'no',6,'sidebar','yes'),(59,'Image','image','upload',5,'yes',1,'sidebar','yes'),(60,'Title','title','input',13,'yes',0,'main','yes'),(24,'Caption','caption','input',5,'no',0,'main','yes'),(46,'ID','id','reflection',5,'no',3,'sidebar','yes'),(58,'Image','image','subsectionmanager',7,'no',4,'sidebar','yes'),(27,'Content','content','textarea',7,'no',3,'main','no'),(26,'Title','title','input',7,'yes',0,'main','yes'),(69,'Tagline','tagline','textarea',7,'no',1,'main','no'),(68,'Hide','hide','checkbox',14,'no',3,'sidebar','yes'),(61,'Link','link','pages',13,'yes',2,'sidebar','yes'),(62,'Image','image','subsectionmanager',13,'yes',3,'sidebar','yes'),(63,'Tagline','tagline','textbox',13,'yes',1,'main','yes'),(64,'Hide','hide','checkbox',13,'no',4,'sidebar','yes'),(65,'Order','order','order_entries',13,'no',5,'sidebar','yes'),(66,'Title','title','input',14,'yes',0,'main','yes'),(67,'Placeholder','placeholder','subsectionmanager',14,'yes',2,'sidebar','yes'),(77,'Description','description','textarea',15,'yes',4,'main','no'),(78,'Featured','featured','checkbox',15,'no',13,'sidebar','yes'),(79,'New','new','checkbox',15,'no',12,'sidebar','yes'),(80,'Hide','hide','checkbox',15,'no',14,'sidebar','yes'),(81,'Embed','embed','textarea',15,'no',5,'main','no'),(82,'Artwork','artwork','subsectionmanager',15,'no',6,'sidebar','yes'),(83,'Videos','videos','subsectionmanager',15,'no',7,'sidebar','no'),(90,'Order','order','order_entries',15,'no',15,'sidebar','yes'),(91,'Full Title','full-title','input',15,'yes',1,'main','no'),(125,'Embed','embed','textarea',14,'yes',1,'main','no'),(93,'Title','title','input',17,'yes',0,'main','yes'),(94,'Subtitle','subtitle','input',17,'no',1,'sidebar','yes'),(95,'Tagline','tagline','textarea',17,'no',4,'sidebar','no'),(96,'Description','description','textarea',17,'yes',2,'main','no'),(97,'Images','images','subsectionmanager',17,'no',3,'sidebar','yes'),(98,'Q1: Progress','q1-progress','select',17,'yes',5,'sidebar','no'),(99,'Q2: Progress','q2-progress','select',17,'yes',6,'sidebar','no'),(100,'Q3: Progress','q3-progress','select',17,'yes',7,'sidebar','no'),(101,'Q4: Progress','q4-progress','select',17,'yes',8,'sidebar','no'),(102,'Q5: Progress','q5-progress','select',17,'yes',9,'sidebar','no'),(103,'Q6: Progress','q6-progress','select',17,'yes',10,'sidebar','no'),(104,'Q1: Link','q1-link','input',17,'no',17,'main','no'),(105,'Q2: Link','q2-link','input',17,'no',18,'main','no'),(106,'Q3: Link','q3-link','input',17,'no',19,'main','no'),(107,'Q4: Link','q4-link','input',17,'no',20,'main','no'),(108,'Q5: Link','q5-link','input',17,'no',21,'main','no'),(109,'Q6: Link','q6-link','input',17,'no',22,'main','no'),(110,'Featured','featured','checkbox',17,'no',33,'sidebar','yes'),(111,'Hide','hide','checkbox',17,'no',35,'sidebar','yes'),(123,'Q5: Schedule','q5-schedule','input',17,'no',15,'sidebar','no'),(122,'Q4: Schedule','q4-schedule','input',17,'no',14,'sidebar','no'),(121,'Q3: Schedule','q3-schedule','input',17,'no',13,'sidebar','no'),(120,'Q2: Schedule','q2-schedule','input',17,'no',12,'sidebar','no'),(119,'Q1: Schedule','q1-schedule','input',17,'no',11,'sidebar','no'),(118,'Order','order','order_entries',17,'no',34,'sidebar','yes'),(124,'Q6: Schedule','q6-schedule','input',17,'no',16,'sidebar','no'),(126,'Description: Progress','description-progress','textarea',17,'no',29,'main','no'),(127,'Free Download','free-download','checkbox',17,'no',32,'sidebar','yes'),(128,'Q1: Artwork','q1-artwork','subsectionmanager',17,'yes',23,'main','no'),(129,'Q2: Artwork','q2-artwork','subsectionmanager',17,'yes',24,'main','no'),(130,'Q3: Artwork','q3-artwork','subsectionmanager',17,'yes',25,'main','no'),(131,'Q4: Artwork','q4-artwork','subsectionmanager',17,'yes',26,'main','no'),(132,'Q5: Artwork','q5-artwork','subsectionmanager',17,'yes',27,'main','no'),(133,'Q6: Artwork','q6-artwork','subsectionmanager',17,'yes',28,'main','no'),(134,'Name','name','input',18,'yes',0,'main','yes'),(135,'Content','content','textarea',18,'yes',1,'main','yes'),(136,'Hide','hide','checkbox',18,'no',2,'sidebar','yes'),(137,'Videos','videos','subsectionmanager',7,'no',5,'sidebar','no'),(138,'Video','video','subsectionmanager',17,'no',31,'main','no'),(139,'Position','position','select',5,'no',2,'sidebar','yes'),(140,'Short Title','short-title','input',15,'no',2,'main','yes'),(141,'Standalone','standalone','checkbox',7,'no',8,'sidebar','yes'),(142,'Language Details','language-details','textarea',17,'no',30,'main','no');
/*!40000 ALTER TABLE `sym_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_author`
--

DROP TABLE IF EXISTS `sym_fields_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_author`
--

LOCK TABLES `sym_fields_author` WRITE;
/*!40000 ALTER TABLE `sym_fields_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_checkbox`
--

DROP TABLE IF EXISTS `sym_fields_checkbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_checkbox`
--

LOCK TABLES `sym_fields_checkbox` WRITE;
/*!40000 ALTER TABLE `sym_fields_checkbox` DISABLE KEYS */;
INSERT INTO `sym_fields_checkbox` VALUES (137,78,'off',NULL),(146,70,'off',NULL),(121,68,'off',NULL),(34,64,'off',NULL),(136,79,'off',NULL),(138,80,'off',NULL),(155,110,'off',NULL),(156,111,'off',NULL),(154,127,'off',NULL),(128,136,'off',NULL),(147,141,'off',NULL);
/*!40000 ALTER TABLE `sym_fields_checkbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_conditionalizer`
--

DROP TABLE IF EXISTS `sym_fields_conditionalizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_conditionalizer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `expression` text,
  `show_errors` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_conditionalizer`
--

LOCK TABLES `sym_fields_conditionalizer` WRITE;
/*!40000 ALTER TABLE `sym_fields_conditionalizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_conditionalizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_date`
--

DROP TABLE IF EXISTS `sym_fields_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_date`
--

LOCK TABLES `sym_fields_date` WRITE;
/*!40000 ALTER TABLE `sym_fields_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_datetime`
--

DROP TABLE IF EXISTS `sym_fields_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_datetime`
--

LOCK TABLES `sym_fields_datetime` WRITE;
/*!40000 ALTER TABLE `sym_fields_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_input`
--

DROP TABLE IF EXISTS `sym_fields_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=492 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_input`
--

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;
INSERT INTO `sym_fields_input` VALUES (449,26,NULL),(61,60,NULL),(352,66,NULL),(412,71,NULL),(415,72,NULL),(416,73,'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/'),(411,24,NULL),(417,74,'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/'),(418,75,'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/'),(419,76,'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/'),(413,91,NULL),(478,93,NULL),(479,94,NULL),(486,104,NULL),(487,105,NULL),(488,106,NULL),(489,107,NULL),(490,108,NULL),(491,109,NULL),(480,119,NULL),(481,120,NULL),(482,121,NULL),(483,122,NULL),(484,123,NULL),(485,124,NULL),(381,134,NULL),(414,140,NULL);
/*!40000 ALTER TABLE `sym_fields_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_order_entries`
--

DROP TABLE IF EXISTS `sym_fields_order_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_order_entries`
--

LOCK TABLES `sym_fields_order_entries` WRITE;
/*!40000 ALTER TABLE `sym_fields_order_entries` DISABLE KEYS */;
INSERT INTO `sym_fields_order_entries` VALUES (9,65,'yes','yes'),(24,90,'yes','yes'),(29,118,NULL,'yes');
/*!40000 ALTER TABLE `sym_fields_order_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_pages`
--

DROP TABLE IF EXISTS `sym_fields_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `page_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_pages`
--

LOCK TABLES `sym_fields_pages` WRITE;
/*!40000 ALTER TABLE `sym_fields_pages` DISABLE KEYS */;
INSERT INTO `sym_fields_pages` VALUES (19,56,'no',NULL),(12,61,'no',NULL);
/*!40000 ALTER TABLE `sym_fields_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_reflection`
--

DROP TABLE IF EXISTS `sym_fields_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `xsltfile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expression` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `fetch_associated_counts` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_reflection`
--

LOCK TABLES `sym_fields_reflection` WRITE;
/*!40000 ALTER TABLE `sym_fields_reflection` DISABLE KEYS */;
INSERT INTO `sym_fields_reflection` VALUES (3,46,NULL,'{entry/@id}','none',NULL,'yes','no');
/*!40000 ALTER TABLE `sym_fields_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_search_index`
--

DROP TABLE IF EXISTS `sym_fields_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_search_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_search_index`
--

LOCK TABLES `sym_fields_search_index` WRITE;
/*!40000 ALTER TABLE `sym_fields_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_select`
--

DROP TABLE IF EXISTS `sym_fields_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_select`
--

LOCK TABLES `sym_fields_select` WRITE;
/*!40000 ALTER TABLE `sym_fields_select` DISABLE KEYS */;
INSERT INTO `sym_fields_select` VALUES (171,98,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(172,99,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(173,100,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(174,101,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(175,102,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(176,103,'no','no','yes','Unplanned,0,10,20,30,40,50,60,70,80,90,100,Released',NULL),(146,139,'no','no','no','1,2,3,4,5,6,7,8,9',NULL);
/*!40000 ALTER TABLE `sym_fields_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_selectbox_link`
--

DROP TABLE IF EXISTS `sym_fields_selectbox_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_selectbox_link`
--

LOCK TABLES `sym_fields_selectbox_link` WRITE;
/*!40000 ALTER TABLE `sym_fields_selectbox_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_selectbox_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_subsectionmanager`
--

DROP TABLE IF EXISTS `sym_fields_subsectionmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_tags` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `droptext` text COLLATE utf8_unicode_ci,
  `create` tinyint(1) DEFAULT '1',
  `remove` tinyint(1) DEFAULT '1',
  `allow_multiple` tinyint(1) DEFAULT '1',
  `edit` tinyint(1) DEFAULT '1',
  `sort` tinyint(1) DEFAULT '1',
  `drop` tinyint(1) DEFAULT '1',
  `show_search` tinyint(1) DEFAULT '1',
  `show_preview` tinyint(1) DEFAULT '0',
  `recursion_levels` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_subsectionmanager`
--

LOCK TABLES `sym_fields_subsectionmanager` WRITE;
/*!40000 ALTER TABLE `sym_fields_subsectionmanager` DISABLE KEYS */;
INSERT INTO `sym_fields_subsectionmanager` VALUES (130,58,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(36,62,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(83,67,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(110,82,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(111,83,'14',NULL,'{$title}',NULL,1,1,1,1,1,1,1,1,0),(148,97,'5',NULL,'{$caption}',NULL,1,1,1,1,1,1,1,1,0),(149,128,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(150,129,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(151,130,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(152,131,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(153,132,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(154,133,'5',NULL,'{$caption}',NULL,0,0,0,0,0,1,1,1,0),(131,137,'14',NULL,'{$title}',NULL,0,0,1,0,1,1,1,1,0),(155,138,'14',NULL,'{$title}',NULL,0,0,0,0,0,1,1,1,0);
/*!40000 ALTER TABLE `sym_fields_subsectionmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_subsectiontabs`
--

DROP TABLE IF EXISTS `sym_fields_subsectiontabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_subsectiontabs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `static_tabs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_subsectiontabs`
--

LOCK TABLES `sym_fields_subsectiontabs` WRITE;
/*!40000 ALTER TABLE `sym_fields_subsectiontabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_subsectiontabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_taglist`
--

DROP TABLE IF EXISTS `sym_fields_taglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_taglist`
--

LOCK TABLES `sym_fields_taglist` WRITE;
/*!40000 ALTER TABLE `sym_fields_taglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_taglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_textarea`
--

DROP TABLE IF EXISTS `sym_fields_textarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_textarea`
--

LOCK TABLES `sym_fields_textarea` WRITE;
/*!40000 ALTER TABLE `sym_fields_textarea` DISABLE KEYS */;
INSERT INTO `sym_fields_textarea` VALUES (161,81,'markdown_extra_with_smartypants',10),(172,27,'markdown_extra_with_smartypants',15),(173,29,'markdown_extra_with_smartypants',5),(171,69,'markdown_extra_with_smartypants',5),(160,77,'markdown_extra_with_smartypants',15),(143,125,NULL,10),(183,95,NULL,6),(182,96,'markdown_extra_with_smartypants',10),(184,126,'markdown_extra_with_smartypants',5),(150,135,'markdown_extra_with_smartypants',15),(185,142,'markdown_extra_with_smartypants',15);
/*!40000 ALTER TABLE `sym_fields_textarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_textbox`
--

DROP TABLE IF EXISTS `sym_fields_textbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_textbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `column_length` int(11) unsigned DEFAULT '75',
  `text_size` enum('single','small','medium','large','huge') DEFAULT 'medium',
  `text_formatter` varchar(255) DEFAULT NULL,
  `text_validator` varchar(255) DEFAULT NULL,
  `text_length` int(11) unsigned DEFAULT '0',
  `text_cdata` enum('yes','no') DEFAULT 'no',
  `text_handle` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_textbox`
--

LOCK TABLES `sym_fields_textbox` WRITE;
/*!40000 ALTER TABLE `sym_fields_textbox` DISABLE KEYS */;
INSERT INTO `sym_fields_textbox` VALUES (4,63,75,'small','none',NULL,0,'no','yes');
/*!40000 ALTER TABLE `sym_fields_textbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_uniqueupload`
--

DROP TABLE IF EXISTS `sym_fields_uniqueupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_uniqueupload`
--

LOCK TABLES `sym_fields_uniqueupload` WRITE;
/*!40000 ALTER TABLE `sym_fields_uniqueupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_fields_uniqueupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_upload`
--

DROP TABLE IF EXISTS `sym_fields_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_upload`
--

LOCK TABLES `sym_fields_upload` WRITE;
/*!40000 ALTER TABLE `sym_fields_upload` DISABLE KEYS */;
INSERT INTO `sym_fields_upload` VALUES (7,59,'/workspace/uploads/images','/\\.(?:bmp|gif|jpe?g|png)$/i');
/*!40000 ALTER TABLE `sym_fields_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_forgotpass`
--

DROP TABLE IF EXISTS `sym_forgotpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_forgotpass`
--

LOCK TABLES `sym_forgotpass` WRITE;
/*!40000 ALTER TABLE `sym_forgotpass` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_forgotpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_gpl_params`
--

DROP TABLE IF EXISTS `sym_gpl_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_gpl_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `set_id` int(11) NOT NULL,
  `param` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `param` (`param`),
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_gpl_params`
--

LOCK TABLES `sym_gpl_params` WRITE;
/*!40000 ALTER TABLE `sym_gpl_params` DISABLE KEYS */;
INSERT INTO `sym_gpl_params` VALUES (1,1,'website-subtitle','Rich music and theology for families','Parameter definition',0),(2,1,'resources-link','http://store.songsforsaplings.com/collections/resources','Parameter definition',0);
/*!40000 ALTER TABLE `sym_gpl_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_gpl_sets`
--

DROP TABLE IF EXISTS `sym_gpl_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_gpl_sets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `params` int(11) unsigned DEFAULT NULL,
  `exclude_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_gpl_sets`
--

LOCK TABLES `sym_gpl_sets` WRITE;
/*!40000 ALTER TABLE `sym_gpl_sets` DISABLE KEYS */;
INSERT INTO `sym_gpl_sets` VALUES (1,'Main',2,'67,75');
/*!40000 ALTER TABLE `sym_gpl_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_pages`
--

DROP TABLE IF EXISTS `sym_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_pages`
--

LOCK TABLES `sym_pages` WRITE;
/*!40000 ALTER TABLE `sym_pages` DISABLE KEYS */;
INSERT INTO `sym_pages` VALUES (64,NULL,'Home','home',NULL,NULL,'feature_home,music_featured,videos_random',NULL,2),(66,NULL,'About','about',NULL,NULL,'logged_in_author,navigation,website_owner',NULL,8),(67,NULL,'RSS','rss',NULL,NULL,NULL,NULL,10),(78,NULL,'Music','music',NULL,'title','music_all,music_single',NULL,3),(75,NULL,'Maintenance','maintenance',NULL,NULL,NULL,NULL,11),(83,NULL,'Missions','missions',NULL,'title','languages_all,languages_single',NULL,4),(77,NULL,'Contact','contact',NULL,NULL,NULL,NULL,9),(80,NULL,'Resources','resources',NULL,NULL,NULL,NULL,5),(81,NULL,'Partnership','partnership',NULL,NULL,NULL,NULL,6),(82,NULL,'Videos','videos',NULL,NULL,'videos_all',NULL,7),(85,NULL,'Donate','donate',NULL,NULL,NULL,NULL,12),(86,NULL,'Error','error',NULL,NULL,'feature_home,music_featured,videos_random',NULL,13),(87,NULL,'New City Catechism','ncc',NULL,NULL,NULL,NULL,14),(88,NULL,'OCC','occ',NULL,NULL,NULL,NULL,15),(89,NULL,'Thank You','thank-you',NULL,NULL,NULL,NULL,16);
/*!40000 ALTER TABLE `sym_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_pages_types`
--

DROP TABLE IF EXISTS `sym_pages_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=738 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_pages_types`
--

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;
INSERT INTO `sym_pages_types` VALUES (715,85,'support'),(685,66,'support'),(656,75,'hidden'),(735,64,'index'),(703,78,'primary'),(463,67,'XML'),(462,67,'hidden'),(734,64,'hidden'),(657,75,'maintenance'),(736,86,'404'),(718,77,'support'),(714,83,'primary'),(689,80,'primary'),(690,81,'primary'),(710,82,'support'),(737,86,'hidden');
/*!40000 ALTER TABLE `sym_pages_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_search_index`
--

DROP TABLE IF EXISTS `sym_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_search_index`
--

LOCK TABLES `sym_search_index` WRITE;
/*!40000 ALTER TABLE `sym_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_search_index_entry_keywords`
--

DROP TABLE IF EXISTS `sym_search_index_entry_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_search_index_entry_keywords` (
  `entry_id` int(11) DEFAULT NULL,
  `keyword_id` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  KEY `entry_id` (`entry_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_search_index_entry_keywords`
--

LOCK TABLES `sym_search_index_entry_keywords` WRITE;
/*!40000 ALTER TABLE `sym_search_index_entry_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_search_index_entry_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_search_index_keywords`
--

DROP TABLE IF EXISTS `sym_search_index_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_search_index_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_search_index_keywords`
--

LOCK TABLES `sym_search_index_keywords` WRITE;
/*!40000 ALTER TABLE `sym_search_index_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_search_index_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_search_index_logs`
--

DROP TABLE IF EXISTS `sym_search_index_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_search_index_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `keywords_manipulated` varchar(255) DEFAULT NULL,
  `sections` varchar(255) DEFAULT NULL,
  `page` int(11) NOT NULL,
  `results` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_search_index_logs`
--

LOCK TABLES `sym_search_index_logs` WRITE;
/*!40000 ALTER TABLE `sym_search_index_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sym_search_index_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_sections`
--

DROP TABLE IF EXISTS `sym_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sections`
--

LOCK TABLES `sym_sections` WRITE;
/*!40000 ALTER TABLE `sym_sections` DISABLE KEYS */;
INSERT INTO `sym_sections` VALUES (15,'Music','music',1,'no','Content'),(14,'Videos','videos',2,'no','Content'),(5,'Images','images',5,'no','Admin'),(7,'Page Data','page-data',4,'no','Admin'),(13,'Feature','feature',3,'no','Content'),(17,'Languages','languages',6,'no','Content'),(18,'Misc','misc',7,'no','Admin');
/*!40000 ALTER TABLE `sym_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_sections_association`
--

DROP TABLE IF EXISTS `sym_sections_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sections_association`
--

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;
INSERT INTO `sym_sections_association` VALUES (98,14,67,5,67,'yes'),(126,15,83,14,83,'yes'),(125,15,82,5,82,'yes'),(51,13,62,5,62,'yes'),(145,7,58,5,58,'yes'),(163,17,97,5,97,'yes'),(164,17,128,5,128,'yes'),(165,17,129,5,129,'yes'),(166,17,130,5,130,'yes'),(167,17,131,5,131,'yes'),(168,17,132,5,132,'yes'),(169,17,133,5,133,'yes'),(146,7,137,14,137,'yes'),(170,17,138,14,138,'yes');
/*!40000 ALTER TABLE `sym_sections_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_sessions`
--

DROP TABLE IF EXISTS `sym_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_sessions` (
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sessions`
--

LOCK TABLES `sym_sessions` WRITE;
/*!40000 ALTER TABLE `sym_sessions` DISABLE KEYS */;
INSERT INTO `sym_sessions` VALUES ('p14r4f5bb47m1qon4m1b3bgce0',1385507314,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('d48qu1q74dng1jbgeij5k6ekk5',1384467645,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('lcjdensothg5v84jdfntg2f4k6',1384978247,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('k2fmrn5uet349cuusfspja6d00',1384800120,'sym-|a:2:{s:8:\"username\";s:6:\"jklein\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|23b43f9a8554efbd9ad2|+EtcczsjNO9ZusUwTCyCfm/39djp2UGae3Kq1/V1oV4GaOSvcVxWeA==\";}'),('2gvcdvb007ujokvdlvpcrct932',1384978243,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('51hno580a8auk7q8h38c6mgkm0',1384882784,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('v34e5h2tamv0ettdbk7djndtg5',1384990675,'sym-|a:2:{s:8:\"username\";s:6:\"jklein\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|23b43f9a8554efbd9ad2|+EtcczsjNO9ZusUwTCyCfm/39djp2UGae3Kq1/V1oV4GaOSvcVxWeA==\";}'),('oghtlutarjff9crpcbb6i84d64',1385060860,'sym-|a:2:{s:8:\"username\";s:6:\"jklein\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|23b43f9a8554efbd9ad2|+EtcczsjNO9ZusUwTCyCfm/39djp2UGae3Kq1/V1oV4GaOSvcVxWeA==\";}'),('6943bn9gm6651d0vaqe9gje9d5',1385060796,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('hkieltmkfuvhvj43995a2bknq0',1385006693,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('2dms5t7f9a7tr3tb3edggq60b1',1385070682,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('2b3kgb209913bmkkrc1airdvo5',1385766292,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}');
/*!40000 ALTER TABLE `sym_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-30 12:03:40
